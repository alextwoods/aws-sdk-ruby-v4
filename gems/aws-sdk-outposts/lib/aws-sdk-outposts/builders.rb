# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Outposts
  module Builders

    # Operation Builder for CancelOrder
    class CancelOrder
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:order_id].to_s.empty?
          raise ArgumentError, "HTTP label :order_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/orders/%<OrderId>s/cancel',
            OrderId: Hearth::HTTP.uri_escape(input[:order_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for CreateOrder
    class CreateOrder
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/orders')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['OutpostIdentifier'] = input[:outpost_identifier] unless input[:outpost_identifier].nil?
        data['LineItems'] = LineItemRequestListDefinition.build(input[:line_items]) unless input[:line_items].nil?
        data['PaymentOption'] = input[:payment_option] unless input[:payment_option].nil?
        data['PaymentTerm'] = input[:payment_term] unless input[:payment_term].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for LineItemRequestListDefinition
    class LineItemRequestListDefinition
      def self.build(input)
        data = []
        input.each do |element|
          data << LineItemRequest.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for LineItemRequest
    class LineItemRequest
      def self.build(input)
        data = {}
        data['CatalogItemId'] = input[:catalog_item_id] unless input[:catalog_item_id].nil?
        data['Quantity'] = input[:quantity] unless input[:quantity].nil?
        data
      end
    end

    # Operation Builder for CreateOutpost
    class CreateOutpost
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/outposts')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['SiteId'] = input[:site_id] unless input[:site_id].nil?
        data['AvailabilityZone'] = input[:availability_zone] unless input[:availability_zone].nil?
        data['AvailabilityZoneId'] = input[:availability_zone_id] unless input[:availability_zone_id].nil?
        data['Tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        data['SupportedHardwareType'] = input[:supported_hardware_type] unless input[:supported_hardware_type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagMap
    class TagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateSite
    class CreateSite
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/sites')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Notes'] = input[:notes] unless input[:notes].nil?
        data['Tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        data['OperatingAddress'] = Address.build(input[:operating_address]) unless input[:operating_address].nil?
        data['ShippingAddress'] = Address.build(input[:shipping_address]) unless input[:shipping_address].nil?
        data['RackPhysicalProperties'] = RackPhysicalProperties.build(input[:rack_physical_properties]) unless input[:rack_physical_properties].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for RackPhysicalProperties
    class RackPhysicalProperties
      def self.build(input)
        data = {}
        data['PowerDrawKva'] = input[:power_draw_kva] unless input[:power_draw_kva].nil?
        data['PowerPhase'] = input[:power_phase] unless input[:power_phase].nil?
        data['PowerConnector'] = input[:power_connector] unless input[:power_connector].nil?
        data['PowerFeedDrop'] = input[:power_feed_drop] unless input[:power_feed_drop].nil?
        data['UplinkGbps'] = input[:uplink_gbps] unless input[:uplink_gbps].nil?
        data['UplinkCount'] = input[:uplink_count] unless input[:uplink_count].nil?
        data['FiberOpticCableType'] = input[:fiber_optic_cable_type] unless input[:fiber_optic_cable_type].nil?
        data['OpticalStandard'] = input[:optical_standard] unless input[:optical_standard].nil?
        data['MaximumSupportedWeightLbs'] = input[:maximum_supported_weight_lbs] unless input[:maximum_supported_weight_lbs].nil?
        data
      end
    end

    # Structure Builder for Address
    class Address
      def self.build(input)
        data = {}
        data['ContactName'] = input[:contact_name] unless input[:contact_name].nil?
        data['ContactPhoneNumber'] = input[:contact_phone_number] unless input[:contact_phone_number].nil?
        data['AddressLine1'] = input[:address_line1] unless input[:address_line1].nil?
        data['AddressLine2'] = input[:address_line2] unless input[:address_line2].nil?
        data['AddressLine3'] = input[:address_line3] unless input[:address_line3].nil?
        data['City'] = input[:city] unless input[:city].nil?
        data['StateOrRegion'] = input[:state_or_region] unless input[:state_or_region].nil?
        data['DistrictOrCounty'] = input[:district_or_county] unless input[:district_or_county].nil?
        data['PostalCode'] = input[:postal_code] unless input[:postal_code].nil?
        data['CountryCode'] = input[:country_code] unless input[:country_code].nil?
        data['Municipality'] = input[:municipality] unless input[:municipality].nil?
        data
      end
    end

    # Operation Builder for DeleteOutpost
    class DeleteOutpost
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:outpost_id].to_s.empty?
          raise ArgumentError, "HTTP label :outpost_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/outposts/%<OutpostId>s',
            OutpostId: Hearth::HTTP.uri_escape(input[:outpost_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteSite
    class DeleteSite
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:site_id].to_s.empty?
          raise ArgumentError, "HTTP label :site_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/sites/%<SiteId>s',
            SiteId: Hearth::HTTP.uri_escape(input[:site_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetCatalogItem
    class GetCatalogItem
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:catalog_item_id].to_s.empty?
          raise ArgumentError, "HTTP label :catalog_item_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/catalog/item/%<CatalogItemId>s',
            CatalogItemId: Hearth::HTTP.uri_escape(input[:catalog_item_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetConnection
    class GetConnection
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:connection_id].to_s.empty?
          raise ArgumentError, "HTTP label :connection_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/connections/%<ConnectionId>s',
            ConnectionId: Hearth::HTTP.uri_escape(input[:connection_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetOrder
    class GetOrder
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:order_id].to_s.empty?
          raise ArgumentError, "HTTP label :order_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/orders/%<OrderId>s',
            OrderId: Hearth::HTTP.uri_escape(input[:order_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetOutpost
    class GetOutpost
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:outpost_id].to_s.empty?
          raise ArgumentError, "HTTP label :outpost_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/outposts/%<OutpostId>s',
            OutpostId: Hearth::HTTP.uri_escape(input[:outpost_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetOutpostInstanceTypes
    class GetOutpostInstanceTypes
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:outpost_id].to_s.empty?
          raise ArgumentError, "HTTP label :outpost_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/outposts/%<OutpostId>s/instanceTypes',
            OutpostId: Hearth::HTTP.uri_escape(input[:outpost_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSite
    class GetSite
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:site_id].to_s.empty?
          raise ArgumentError, "HTTP label :site_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/sites/%<SiteId>s',
            SiteId: Hearth::HTTP.uri_escape(input[:site_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSiteAddress
    class GetSiteAddress
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:site_id].to_s.empty?
          raise ArgumentError, "HTTP label :site_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/sites/%<SiteId>s/address',
            SiteId: Hearth::HTTP.uri_escape(input[:site_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['AddressType'] = input[:address_type].to_s unless input[:address_type].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAssets
    class ListAssets
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:outpost_identifier].to_s.empty?
          raise ArgumentError, "HTTP label :outpost_identifier cannot be nil or empty."
        end
        http_req.append_path(format(
            '/outposts/%<OutpostIdentifier>s/assets',
            OutpostIdentifier: Hearth::HTTP.uri_escape(input[:outpost_identifier].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:host_id_filter].nil? || input[:host_id_filter].empty?
          params['HostIdFilter'] = input[:host_id_filter].map do |value|
            value.to_s unless value.nil?
          end
        end
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # List Builder for HostIdList
    class HostIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListCatalogItems
    class ListCatalogItems
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/catalog/items')
        params = Hearth::Query::ParamList.new
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        unless input[:item_class_filter].nil? || input[:item_class_filter].empty?
          params['ItemClassFilter'] = input[:item_class_filter].map do |value|
            value.to_s unless value.nil?
          end
        end
        unless input[:supported_storage_filter].nil? || input[:supported_storage_filter].empty?
          params['SupportedStorageFilter'] = input[:supported_storage_filter].map do |value|
            value.to_s unless value.nil?
          end
        end
        unless input[:ec2_family_filter].nil? || input[:ec2_family_filter].empty?
          params['EC2FamilyFilter'] = input[:ec2_family_filter].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for EC2FamilyList
    class EC2FamilyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SupportedStorageList
    class SupportedStorageList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for CatalogItemClassList
    class CatalogItemClassList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListOrders
    class ListOrders
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/list-orders')
        params = Hearth::Query::ParamList.new
        params['OutpostIdentifierFilter'] = input[:outpost_identifier_filter].to_s unless input[:outpost_identifier_filter].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListOutposts
    class ListOutposts
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/outposts')
        params = Hearth::Query::ParamList.new
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        unless input[:life_cycle_status_filter].nil? || input[:life_cycle_status_filter].empty?
          params['LifeCycleStatusFilter'] = input[:life_cycle_status_filter].map do |value|
            value.to_s unless value.nil?
          end
        end
        unless input[:availability_zone_filter].nil? || input[:availability_zone_filter].empty?
          params['AvailabilityZoneFilter'] = input[:availability_zone_filter].map do |value|
            value.to_s unless value.nil?
          end
        end
        unless input[:availability_zone_id_filter].nil? || input[:availability_zone_id_filter].empty?
          params['AvailabilityZoneIdFilter'] = input[:availability_zone_id_filter].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for AvailabilityZoneIdList
    class AvailabilityZoneIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for AvailabilityZoneList
    class AvailabilityZoneList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for LifeCycleStatusList
    class LifeCycleStatusList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListSites
    class ListSites
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/sites')
        params = Hearth::Query::ParamList.new
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        unless input[:operating_address_country_code_filter].nil? || input[:operating_address_country_code_filter].empty?
          params['OperatingAddressCountryCodeFilter'] = input[:operating_address_country_code_filter].map do |value|
            value.to_s unless value.nil?
          end
        end
        unless input[:operating_address_state_or_region_filter].nil? || input[:operating_address_state_or_region_filter].empty?
          params['OperatingAddressStateOrRegionFilter'] = input[:operating_address_state_or_region_filter].map do |value|
            value.to_s unless value.nil?
          end
        end
        unless input[:operating_address_city_filter].nil? || input[:operating_address_city_filter].empty?
          params['OperatingAddressCityFilter'] = input[:operating_address_city_filter].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for CityList
    class CityList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for StateOrRegionList
    class StateOrRegionList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for CountryCodeList
    class CountryCodeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for StartConnection
    class StartConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/connections')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DeviceSerialNumber'] = input[:device_serial_number] unless input[:device_serial_number].nil?
        data['AssetId'] = input[:asset_id] unless input[:asset_id].nil?
        data['ClientPublicKey'] = input[:client_public_key] unless input[:client_public_key].nil?
        data['NetworkInterfaceDeviceIndex'] = input[:network_interface_device_index] unless input[:network_interface_device_index].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
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

    # Operation Builder for UpdateOutpost
    class UpdateOutpost
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:outpost_id].to_s.empty?
          raise ArgumentError, "HTTP label :outpost_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/outposts/%<OutpostId>s',
            OutpostId: Hearth::HTTP.uri_escape(input[:outpost_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['SupportedHardwareType'] = input[:supported_hardware_type] unless input[:supported_hardware_type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateSite
    class UpdateSite
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:site_id].to_s.empty?
          raise ArgumentError, "HTTP label :site_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/sites/%<SiteId>s',
            SiteId: Hearth::HTTP.uri_escape(input[:site_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Notes'] = input[:notes] unless input[:notes].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateSiteAddress
    class UpdateSiteAddress
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:site_id].to_s.empty?
          raise ArgumentError, "HTTP label :site_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/sites/%<SiteId>s/address',
            SiteId: Hearth::HTTP.uri_escape(input[:site_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AddressType'] = input[:address_type] unless input[:address_type].nil?
        data['Address'] = Address.build(input[:address]) unless input[:address].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateSiteRackPhysicalProperties
    class UpdateSiteRackPhysicalProperties
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:site_id].to_s.empty?
          raise ArgumentError, "HTTP label :site_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/sites/%<SiteId>s/rackPhysicalProperties',
            SiteId: Hearth::HTTP.uri_escape(input[:site_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['PowerDrawKva'] = input[:power_draw_kva] unless input[:power_draw_kva].nil?
        data['PowerPhase'] = input[:power_phase] unless input[:power_phase].nil?
        data['PowerConnector'] = input[:power_connector] unless input[:power_connector].nil?
        data['PowerFeedDrop'] = input[:power_feed_drop] unless input[:power_feed_drop].nil?
        data['UplinkGbps'] = input[:uplink_gbps] unless input[:uplink_gbps].nil?
        data['UplinkCount'] = input[:uplink_count] unless input[:uplink_count].nil?
        data['FiberOpticCableType'] = input[:fiber_optic_cable_type] unless input[:fiber_optic_cable_type].nil?
        data['OpticalStandard'] = input[:optical_standard] unless input[:optical_standard].nil?
        data['MaximumSupportedWeightLbs'] = input[:maximum_supported_weight_lbs] unless input[:maximum_supported_weight_lbs].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
