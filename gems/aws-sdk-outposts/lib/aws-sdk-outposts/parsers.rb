# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Outposts
  module Parsers

    # Operation Parser for CancelOrder
    class CancelOrder
      def self.parse(http_resp)
        data = Types::CancelOrderOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateOrder
    class CreateOrder
      def self.parse(http_resp)
        data = Types::CreateOrderOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.order = (Parsers::Order.parse(map['Order']) unless map['Order'].nil?)
        data
      end
    end

    class Order
      def self.parse(map)
        data = Types::Order.new
        data.outpost_id = map['OutpostId']
        data.order_id = map['OrderId']
        data.status = map['Status']
        data.line_items = (Parsers::LineItemListDefinition.parse(map['LineItems']) unless map['LineItems'].nil?)
        data.payment_option = map['PaymentOption']
        data.order_submission_date = Time.at(map['OrderSubmissionDate'].to_i) if map['OrderSubmissionDate']
        data.order_fulfilled_date = Time.at(map['OrderFulfilledDate'].to_i) if map['OrderFulfilledDate']
        return data
      end
    end

    class LineItemListDefinition
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::LineItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class LineItem
      def self.parse(map)
        data = Types::LineItem.new
        data.catalog_item_id = map['CatalogItemId']
        data.line_item_id = map['LineItemId']
        data.quantity = map['Quantity']
        data.status = map['Status']
        return data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateOutpost
    class CreateOutpost
      def self.parse(http_resp)
        data = Types::CreateOutpostOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.outpost = (Parsers::Outpost.parse(map['Outpost']) unless map['Outpost'].nil?)
        data
      end
    end

    class Outpost
      def self.parse(map)
        data = Types::Outpost.new
        data.outpost_id = map['OutpostId']
        data.owner_id = map['OwnerId']
        data.outpost_arn = map['OutpostArn']
        data.site_id = map['SiteId']
        data.name = map['Name']
        data.description = map['Description']
        data.life_cycle_status = map['LifeCycleStatus']
        data.availability_zone = map['AvailabilityZone']
        data.availability_zone_id = map['AvailabilityZoneId']
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.site_arn = map['SiteArn']
        data.supported_hardware_type = map['SupportedHardwareType']
        return data
      end
    end

    class TagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateSite
    class CreateSite
      def self.parse(http_resp)
        data = Types::CreateSiteOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.site = (Parsers::Site.parse(map['Site']) unless map['Site'].nil?)
        data
      end
    end

    class Site
      def self.parse(map)
        data = Types::Site.new
        data.site_id = map['SiteId']
        data.account_id = map['AccountId']
        data.name = map['Name']
        data.description = map['Description']
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.site_arn = map['SiteArn']
        data.notes = map['Notes']
        data.operating_address_country_code = map['OperatingAddressCountryCode']
        data.operating_address_state_or_region = map['OperatingAddressStateOrRegion']
        data.operating_address_city = map['OperatingAddressCity']
        data.rack_physical_properties = (Parsers::RackPhysicalProperties.parse(map['RackPhysicalProperties']) unless map['RackPhysicalProperties'].nil?)
        return data
      end
    end

    class RackPhysicalProperties
      def self.parse(map)
        data = Types::RackPhysicalProperties.new
        data.power_draw_kva = map['PowerDrawKva']
        data.power_phase = map['PowerPhase']
        data.power_connector = map['PowerConnector']
        data.power_feed_drop = map['PowerFeedDrop']
        data.uplink_gbps = map['UplinkGbps']
        data.uplink_count = map['UplinkCount']
        data.fiber_optic_cable_type = map['FiberOpticCableType']
        data.optical_standard = map['OpticalStandard']
        data.maximum_supported_weight_lbs = map['MaximumSupportedWeightLbs']
        return data
      end
    end

    # Operation Parser for DeleteOutpost
    class DeleteOutpost
      def self.parse(http_resp)
        data = Types::DeleteOutpostOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteSite
    class DeleteSite
      def self.parse(http_resp)
        data = Types::DeleteSiteOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetCatalogItem
    class GetCatalogItem
      def self.parse(http_resp)
        data = Types::GetCatalogItemOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.catalog_item = (Parsers::CatalogItem.parse(map['CatalogItem']) unless map['CatalogItem'].nil?)
        data
      end
    end

    class CatalogItem
      def self.parse(map)
        data = Types::CatalogItem.new
        data.catalog_item_id = map['CatalogItemId']
        data.item_status = map['ItemStatus']
        data.ec2_capacities = (Parsers::EC2CapacityListDefinition.parse(map['EC2Capacities']) unless map['EC2Capacities'].nil?)
        data.power_kva = Hearth::NumberHelper.deserialize(map['PowerKva'])
        data.weight_lbs = map['WeightLbs']
        data.supported_uplink_gbps = (Parsers::SupportedUplinkGbpsListDefinition.parse(map['SupportedUplinkGbps']) unless map['SupportedUplinkGbps'].nil?)
        data.supported_storage = (Parsers::SupportedStorageList.parse(map['SupportedStorage']) unless map['SupportedStorage'].nil?)
        return data
      end
    end

    class SupportedStorageList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class SupportedUplinkGbpsListDefinition
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class EC2CapacityListDefinition
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::EC2Capacity.parse(value) unless value.nil?
        end
        data
      end
    end

    class EC2Capacity
      def self.parse(map)
        data = Types::EC2Capacity.new
        data.family = map['Family']
        data.max_size = map['MaxSize']
        data.quantity = map['Quantity']
        return data
      end
    end

    # Operation Parser for GetConnection
    class GetConnection
      def self.parse(http_resp)
        data = Types::GetConnectionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connection_id = map['ConnectionId']
        data.connection_details = (Parsers::ConnectionDetails.parse(map['ConnectionDetails']) unless map['ConnectionDetails'].nil?)
        data
      end
    end

    class ConnectionDetails
      def self.parse(map)
        data = Types::ConnectionDetails.new
        data.client_public_key = map['ClientPublicKey']
        data.server_public_key = map['ServerPublicKey']
        data.server_endpoint = map['ServerEndpoint']
        data.client_tunnel_address = map['ClientTunnelAddress']
        data.server_tunnel_address = map['ServerTunnelAddress']
        data.allowed_ips = (Parsers::CIDRList.parse(map['AllowedIps']) unless map['AllowedIps'].nil?)
        return data
      end
    end

    class CIDRList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetOrder
    class GetOrder
      def self.parse(http_resp)
        data = Types::GetOrderOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.order = (Parsers::Order.parse(map['Order']) unless map['Order'].nil?)
        data
      end
    end

    # Operation Parser for GetOutpost
    class GetOutpost
      def self.parse(http_resp)
        data = Types::GetOutpostOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.outpost = (Parsers::Outpost.parse(map['Outpost']) unless map['Outpost'].nil?)
        data
      end
    end

    # Operation Parser for GetOutpostInstanceTypes
    class GetOutpostInstanceTypes
      def self.parse(http_resp)
        data = Types::GetOutpostInstanceTypesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.instance_types = (Parsers::InstanceTypeListDefinition.parse(map['InstanceTypes']) unless map['InstanceTypes'].nil?)
        data.next_token = map['NextToken']
        data.outpost_id = map['OutpostId']
        data.outpost_arn = map['OutpostArn']
        data
      end
    end

    class InstanceTypeListDefinition
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::InstanceTypeItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class InstanceTypeItem
      def self.parse(map)
        data = Types::InstanceTypeItem.new
        data.instance_type = map['InstanceType']
        return data
      end
    end

    # Operation Parser for GetSite
    class GetSite
      def self.parse(http_resp)
        data = Types::GetSiteOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.site = (Parsers::Site.parse(map['Site']) unless map['Site'].nil?)
        data
      end
    end

    # Operation Parser for GetSiteAddress
    class GetSiteAddress
      def self.parse(http_resp)
        data = Types::GetSiteAddressOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.site_id = map['SiteId']
        data.address_type = map['AddressType']
        data.address = (Parsers::Address.parse(map['Address']) unless map['Address'].nil?)
        data
      end
    end

    class Address
      def self.parse(map)
        data = Types::Address.new
        data.contact_name = map['ContactName']
        data.contact_phone_number = map['ContactPhoneNumber']
        data.address_line1 = map['AddressLine1']
        data.address_line2 = map['AddressLine2']
        data.address_line3 = map['AddressLine3']
        data.city = map['City']
        data.state_or_region = map['StateOrRegion']
        data.district_or_county = map['DistrictOrCounty']
        data.postal_code = map['PostalCode']
        data.country_code = map['CountryCode']
        data.municipality = map['Municipality']
        return data
      end
    end

    # Operation Parser for ListAssets
    class ListAssets
      def self.parse(http_resp)
        data = Types::ListAssetsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.assets = (Parsers::AssetListDefinition.parse(map['Assets']) unless map['Assets'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AssetListDefinition
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AssetInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    class AssetInfo
      def self.parse(map)
        data = Types::AssetInfo.new
        data.asset_id = map['AssetId']
        data.rack_id = map['RackId']
        data.asset_type = map['AssetType']
        data.compute_attributes = (Parsers::ComputeAttributes.parse(map['ComputeAttributes']) unless map['ComputeAttributes'].nil?)
        return data
      end
    end

    class ComputeAttributes
      def self.parse(map)
        data = Types::ComputeAttributes.new
        data.host_id = map['HostId']
        return data
      end
    end

    # Operation Parser for ListCatalogItems
    class ListCatalogItems
      def self.parse(http_resp)
        data = Types::ListCatalogItemsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.catalog_items = (Parsers::CatalogItemListDefinition.parse(map['CatalogItems']) unless map['CatalogItems'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class CatalogItemListDefinition
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CatalogItem.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListOrders
    class ListOrders
      def self.parse(http_resp)
        data = Types::ListOrdersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.orders = (Parsers::OrderSummaryListDefinition.parse(map['Orders']) unless map['Orders'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class OrderSummaryListDefinition
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::OrderSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class OrderSummary
      def self.parse(map)
        data = Types::OrderSummary.new
        data.outpost_id = map['OutpostId']
        data.order_id = map['OrderId']
        data.order_type = map['OrderType']
        data.status = map['Status']
        data.line_item_counts_by_status = (Parsers::LineItemStatusCounts.parse(map['LineItemCountsByStatus']) unless map['LineItemCountsByStatus'].nil?)
        data.order_submission_date = Time.at(map['OrderSubmissionDate'].to_i) if map['OrderSubmissionDate']
        data.order_fulfilled_date = Time.at(map['OrderFulfilledDate'].to_i) if map['OrderFulfilledDate']
        return data
      end
    end

    class LineItemStatusCounts
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListOutposts
    class ListOutposts
      def self.parse(http_resp)
        data = Types::ListOutpostsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.outposts = (Parsers::OutpostListDefinition.parse(map['Outposts']) unless map['Outposts'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class OutpostListDefinition
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Outpost.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListSites
    class ListSites
      def self.parse(http_resp)
        data = Types::ListSitesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.sites = (Parsers::SiteListDefinition.parse(map['Sites']) unless map['Sites'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class SiteListDefinition
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Site.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for StartConnection
    class StartConnection
      def self.parse(http_resp)
        data = Types::StartConnectionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connection_id = map['ConnectionId']
        data.underlay_ip_address = map['UnderlayIpAddress']
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateOutpost
    class UpdateOutpost
      def self.parse(http_resp)
        data = Types::UpdateOutpostOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.outpost = (Parsers::Outpost.parse(map['Outpost']) unless map['Outpost'].nil?)
        data
      end
    end

    # Operation Parser for UpdateSite
    class UpdateSite
      def self.parse(http_resp)
        data = Types::UpdateSiteOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.site = (Parsers::Site.parse(map['Site']) unless map['Site'].nil?)
        data
      end
    end

    # Operation Parser for UpdateSiteAddress
    class UpdateSiteAddress
      def self.parse(http_resp)
        data = Types::UpdateSiteAddressOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.address_type = map['AddressType']
        data.address = (Parsers::Address.parse(map['Address']) unless map['Address'].nil?)
        data
      end
    end

    # Operation Parser for UpdateSiteRackPhysicalProperties
    class UpdateSiteRackPhysicalProperties
      def self.parse(http_resp)
        data = Types::UpdateSiteRackPhysicalPropertiesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.site = (Parsers::Site.parse(map['Site']) unless map['Site'].nil?)
        data
      end
    end
  end
end
