# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Outposts
  module Stubs

    # Operation Stubber for CancelOrder
    class CancelOrder
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateOrder
    class CreateOrder
      def self.default(visited=[])
        {
          order: Order.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Order'] = Order.stub(stub[:order]) unless stub[:order].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Order
    class Order
      def self.default(visited=[])
        return nil if visited.include?('Order')
        visited = visited + ['Order']
        {
          outpost_id: 'outpost_id',
          order_id: 'order_id',
          status: 'status',
          line_items: LineItemListDefinition.default(visited),
          payment_option: 'payment_option',
          order_submission_date: Time.now,
          order_fulfilled_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Order.new
        data = {}
        data['OutpostId'] = stub[:outpost_id] unless stub[:outpost_id].nil?
        data['OrderId'] = stub[:order_id] unless stub[:order_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['LineItems'] = LineItemListDefinition.stub(stub[:line_items]) unless stub[:line_items].nil?
        data['PaymentOption'] = stub[:payment_option] unless stub[:payment_option].nil?
        data['OrderSubmissionDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:order_submission_date]).to_i unless stub[:order_submission_date].nil?
        data['OrderFulfilledDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:order_fulfilled_date]).to_i unless stub[:order_fulfilled_date].nil?
        data
      end
    end

    # List Stubber for LineItemListDefinition
    class LineItemListDefinition
      def self.default(visited=[])
        return nil if visited.include?('LineItemListDefinition')
        visited = visited + ['LineItemListDefinition']
        [
          LineItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LineItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LineItem
    class LineItem
      def self.default(visited=[])
        return nil if visited.include?('LineItem')
        visited = visited + ['LineItem']
        {
          catalog_item_id: 'catalog_item_id',
          line_item_id: 'line_item_id',
          quantity: 1,
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::LineItem.new
        data = {}
        data['CatalogItemId'] = stub[:catalog_item_id] unless stub[:catalog_item_id].nil?
        data['LineItemId'] = stub[:line_item_id] unless stub[:line_item_id].nil?
        data['Quantity'] = stub[:quantity] unless stub[:quantity].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for CreateOutpost
    class CreateOutpost
      def self.default(visited=[])
        {
          outpost: Outpost.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Outpost'] = Outpost.stub(stub[:outpost]) unless stub[:outpost].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Outpost
    class Outpost
      def self.default(visited=[])
        return nil if visited.include?('Outpost')
        visited = visited + ['Outpost']
        {
          outpost_id: 'outpost_id',
          owner_id: 'owner_id',
          outpost_arn: 'outpost_arn',
          site_id: 'site_id',
          name: 'name',
          description: 'description',
          life_cycle_status: 'life_cycle_status',
          availability_zone: 'availability_zone',
          availability_zone_id: 'availability_zone_id',
          tags: TagMap.default(visited),
          site_arn: 'site_arn',
          supported_hardware_type: 'supported_hardware_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Outpost.new
        data = {}
        data['OutpostId'] = stub[:outpost_id] unless stub[:outpost_id].nil?
        data['OwnerId'] = stub[:owner_id] unless stub[:owner_id].nil?
        data['OutpostArn'] = stub[:outpost_arn] unless stub[:outpost_arn].nil?
        data['SiteId'] = stub[:site_id] unless stub[:site_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['LifeCycleStatus'] = stub[:life_cycle_status] unless stub[:life_cycle_status].nil?
        data['AvailabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['AvailabilityZoneId'] = stub[:availability_zone_id] unless stub[:availability_zone_id].nil?
        data['Tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['SiteArn'] = stub[:site_arn] unless stub[:site_arn].nil?
        data['SupportedHardwareType'] = stub[:supported_hardware_type] unless stub[:supported_hardware_type].nil?
        data
      end
    end

    # Map Stubber for TagMap
    class TagMap
      def self.default(visited=[])
        return nil if visited.include?('TagMap')
        visited = visited + ['TagMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for CreateSite
    class CreateSite
      def self.default(visited=[])
        {
          site: Site.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Site'] = Site.stub(stub[:site]) unless stub[:site].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Site
    class Site
      def self.default(visited=[])
        return nil if visited.include?('Site')
        visited = visited + ['Site']
        {
          site_id: 'site_id',
          account_id: 'account_id',
          name: 'name',
          description: 'description',
          tags: TagMap.default(visited),
          site_arn: 'site_arn',
          notes: 'notes',
          operating_address_country_code: 'operating_address_country_code',
          operating_address_state_or_region: 'operating_address_state_or_region',
          operating_address_city: 'operating_address_city',
          rack_physical_properties: RackPhysicalProperties.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Site.new
        data = {}
        data['SiteId'] = stub[:site_id] unless stub[:site_id].nil?
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['SiteArn'] = stub[:site_arn] unless stub[:site_arn].nil?
        data['Notes'] = stub[:notes] unless stub[:notes].nil?
        data['OperatingAddressCountryCode'] = stub[:operating_address_country_code] unless stub[:operating_address_country_code].nil?
        data['OperatingAddressStateOrRegion'] = stub[:operating_address_state_or_region] unless stub[:operating_address_state_or_region].nil?
        data['OperatingAddressCity'] = stub[:operating_address_city] unless stub[:operating_address_city].nil?
        data['RackPhysicalProperties'] = RackPhysicalProperties.stub(stub[:rack_physical_properties]) unless stub[:rack_physical_properties].nil?
        data
      end
    end

    # Structure Stubber for RackPhysicalProperties
    class RackPhysicalProperties
      def self.default(visited=[])
        return nil if visited.include?('RackPhysicalProperties')
        visited = visited + ['RackPhysicalProperties']
        {
          power_draw_kva: 'power_draw_kva',
          power_phase: 'power_phase',
          power_connector: 'power_connector',
          power_feed_drop: 'power_feed_drop',
          uplink_gbps: 'uplink_gbps',
          uplink_count: 'uplink_count',
          fiber_optic_cable_type: 'fiber_optic_cable_type',
          optical_standard: 'optical_standard',
          maximum_supported_weight_lbs: 'maximum_supported_weight_lbs',
        }
      end

      def self.stub(stub)
        stub ||= Types::RackPhysicalProperties.new
        data = {}
        data['PowerDrawKva'] = stub[:power_draw_kva] unless stub[:power_draw_kva].nil?
        data['PowerPhase'] = stub[:power_phase] unless stub[:power_phase].nil?
        data['PowerConnector'] = stub[:power_connector] unless stub[:power_connector].nil?
        data['PowerFeedDrop'] = stub[:power_feed_drop] unless stub[:power_feed_drop].nil?
        data['UplinkGbps'] = stub[:uplink_gbps] unless stub[:uplink_gbps].nil?
        data['UplinkCount'] = stub[:uplink_count] unless stub[:uplink_count].nil?
        data['FiberOpticCableType'] = stub[:fiber_optic_cable_type] unless stub[:fiber_optic_cable_type].nil?
        data['OpticalStandard'] = stub[:optical_standard] unless stub[:optical_standard].nil?
        data['MaximumSupportedWeightLbs'] = stub[:maximum_supported_weight_lbs] unless stub[:maximum_supported_weight_lbs].nil?
        data
      end
    end

    # Operation Stubber for DeleteOutpost
    class DeleteOutpost
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSite
    class DeleteSite
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetCatalogItem
    class GetCatalogItem
      def self.default(visited=[])
        {
          catalog_item: CatalogItem.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CatalogItem'] = CatalogItem.stub(stub[:catalog_item]) unless stub[:catalog_item].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for CatalogItem
    class CatalogItem
      def self.default(visited=[])
        return nil if visited.include?('CatalogItem')
        visited = visited + ['CatalogItem']
        {
          catalog_item_id: 'catalog_item_id',
          item_status: 'item_status',
          ec2_capacities: EC2CapacityListDefinition.default(visited),
          power_kva: 1.0,
          weight_lbs: 1,
          supported_uplink_gbps: SupportedUplinkGbpsListDefinition.default(visited),
          supported_storage: SupportedStorageList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CatalogItem.new
        data = {}
        data['CatalogItemId'] = stub[:catalog_item_id] unless stub[:catalog_item_id].nil?
        data['ItemStatus'] = stub[:item_status] unless stub[:item_status].nil?
        data['EC2Capacities'] = EC2CapacityListDefinition.stub(stub[:ec2_capacities]) unless stub[:ec2_capacities].nil?
        data['PowerKva'] = Hearth::NumberHelper.serialize(stub[:power_kva])
        data['WeightLbs'] = stub[:weight_lbs] unless stub[:weight_lbs].nil?
        data['SupportedUplinkGbps'] = SupportedUplinkGbpsListDefinition.stub(stub[:supported_uplink_gbps]) unless stub[:supported_uplink_gbps].nil?
        data['SupportedStorage'] = SupportedStorageList.stub(stub[:supported_storage]) unless stub[:supported_storage].nil?
        data
      end
    end

    # List Stubber for SupportedStorageList
    class SupportedStorageList
      def self.default(visited=[])
        return nil if visited.include?('SupportedStorageList')
        visited = visited + ['SupportedStorageList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for SupportedUplinkGbpsListDefinition
    class SupportedUplinkGbpsListDefinition
      def self.default(visited=[])
        return nil if visited.include?('SupportedUplinkGbpsListDefinition')
        visited = visited + ['SupportedUplinkGbpsListDefinition']
        [
          1
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for EC2CapacityListDefinition
    class EC2CapacityListDefinition
      def self.default(visited=[])
        return nil if visited.include?('EC2CapacityListDefinition')
        visited = visited + ['EC2CapacityListDefinition']
        [
          EC2Capacity.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EC2Capacity.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EC2Capacity
    class EC2Capacity
      def self.default(visited=[])
        return nil if visited.include?('EC2Capacity')
        visited = visited + ['EC2Capacity']
        {
          family: 'family',
          max_size: 'max_size',
          quantity: 'quantity',
        }
      end

      def self.stub(stub)
        stub ||= Types::EC2Capacity.new
        data = {}
        data['Family'] = stub[:family] unless stub[:family].nil?
        data['MaxSize'] = stub[:max_size] unless stub[:max_size].nil?
        data['Quantity'] = stub[:quantity] unless stub[:quantity].nil?
        data
      end
    end

    # Operation Stubber for GetConnection
    class GetConnection
      def self.default(visited=[])
        {
          connection_id: 'connection_id',
          connection_details: ConnectionDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ConnectionId'] = stub[:connection_id] unless stub[:connection_id].nil?
        data['ConnectionDetails'] = ConnectionDetails.stub(stub[:connection_details]) unless stub[:connection_details].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ConnectionDetails
    class ConnectionDetails
      def self.default(visited=[])
        return nil if visited.include?('ConnectionDetails')
        visited = visited + ['ConnectionDetails']
        {
          client_public_key: 'client_public_key',
          server_public_key: 'server_public_key',
          server_endpoint: 'server_endpoint',
          client_tunnel_address: 'client_tunnel_address',
          server_tunnel_address: 'server_tunnel_address',
          allowed_ips: CIDRList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectionDetails.new
        data = {}
        data['ClientPublicKey'] = stub[:client_public_key] unless stub[:client_public_key].nil?
        data['ServerPublicKey'] = stub[:server_public_key] unless stub[:server_public_key].nil?
        data['ServerEndpoint'] = stub[:server_endpoint] unless stub[:server_endpoint].nil?
        data['ClientTunnelAddress'] = stub[:client_tunnel_address] unless stub[:client_tunnel_address].nil?
        data['ServerTunnelAddress'] = stub[:server_tunnel_address] unless stub[:server_tunnel_address].nil?
        data['AllowedIps'] = CIDRList.stub(stub[:allowed_ips]) unless stub[:allowed_ips].nil?
        data
      end
    end

    # List Stubber for CIDRList
    class CIDRList
      def self.default(visited=[])
        return nil if visited.include?('CIDRList')
        visited = visited + ['CIDRList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetOrder
    class GetOrder
      def self.default(visited=[])
        {
          order: Order.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Order'] = Order.stub(stub[:order]) unless stub[:order].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetOutpost
    class GetOutpost
      def self.default(visited=[])
        {
          outpost: Outpost.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Outpost'] = Outpost.stub(stub[:outpost]) unless stub[:outpost].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetOutpostInstanceTypes
    class GetOutpostInstanceTypes
      def self.default(visited=[])
        {
          instance_types: InstanceTypeListDefinition.default(visited),
          next_token: 'next_token',
          outpost_id: 'outpost_id',
          outpost_arn: 'outpost_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['InstanceTypes'] = InstanceTypeListDefinition.stub(stub[:instance_types]) unless stub[:instance_types].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['OutpostId'] = stub[:outpost_id] unless stub[:outpost_id].nil?
        data['OutpostArn'] = stub[:outpost_arn] unless stub[:outpost_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for InstanceTypeListDefinition
    class InstanceTypeListDefinition
      def self.default(visited=[])
        return nil if visited.include?('InstanceTypeListDefinition')
        visited = visited + ['InstanceTypeListDefinition']
        [
          InstanceTypeItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << InstanceTypeItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InstanceTypeItem
    class InstanceTypeItem
      def self.default(visited=[])
        return nil if visited.include?('InstanceTypeItem')
        visited = visited + ['InstanceTypeItem']
        {
          instance_type: 'instance_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceTypeItem.new
        data = {}
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data
      end
    end

    # Operation Stubber for GetSite
    class GetSite
      def self.default(visited=[])
        {
          site: Site.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Site'] = Site.stub(stub[:site]) unless stub[:site].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetSiteAddress
    class GetSiteAddress
      def self.default(visited=[])
        {
          site_id: 'site_id',
          address_type: 'address_type',
          address: Address.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SiteId'] = stub[:site_id] unless stub[:site_id].nil?
        data['AddressType'] = stub[:address_type] unless stub[:address_type].nil?
        data['Address'] = Address.stub(stub[:address]) unless stub[:address].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Address
    class Address
      def self.default(visited=[])
        return nil if visited.include?('Address')
        visited = visited + ['Address']
        {
          contact_name: 'contact_name',
          contact_phone_number: 'contact_phone_number',
          address_line1: 'address_line1',
          address_line2: 'address_line2',
          address_line3: 'address_line3',
          city: 'city',
          state_or_region: 'state_or_region',
          district_or_county: 'district_or_county',
          postal_code: 'postal_code',
          country_code: 'country_code',
          municipality: 'municipality',
        }
      end

      def self.stub(stub)
        stub ||= Types::Address.new
        data = {}
        data['ContactName'] = stub[:contact_name] unless stub[:contact_name].nil?
        data['ContactPhoneNumber'] = stub[:contact_phone_number] unless stub[:contact_phone_number].nil?
        data['AddressLine1'] = stub[:address_line1] unless stub[:address_line1].nil?
        data['AddressLine2'] = stub[:address_line2] unless stub[:address_line2].nil?
        data['AddressLine3'] = stub[:address_line3] unless stub[:address_line3].nil?
        data['City'] = stub[:city] unless stub[:city].nil?
        data['StateOrRegion'] = stub[:state_or_region] unless stub[:state_or_region].nil?
        data['DistrictOrCounty'] = stub[:district_or_county] unless stub[:district_or_county].nil?
        data['PostalCode'] = stub[:postal_code] unless stub[:postal_code].nil?
        data['CountryCode'] = stub[:country_code] unless stub[:country_code].nil?
        data['Municipality'] = stub[:municipality] unless stub[:municipality].nil?
        data
      end
    end

    # Operation Stubber for ListAssets
    class ListAssets
      def self.default(visited=[])
        {
          assets: AssetListDefinition.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Assets'] = AssetListDefinition.stub(stub[:assets]) unless stub[:assets].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AssetListDefinition
    class AssetListDefinition
      def self.default(visited=[])
        return nil if visited.include?('AssetListDefinition')
        visited = visited + ['AssetListDefinition']
        [
          AssetInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AssetInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssetInfo
    class AssetInfo
      def self.default(visited=[])
        return nil if visited.include?('AssetInfo')
        visited = visited + ['AssetInfo']
        {
          asset_id: 'asset_id',
          rack_id: 'rack_id',
          asset_type: 'asset_type',
          compute_attributes: ComputeAttributes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AssetInfo.new
        data = {}
        data['AssetId'] = stub[:asset_id] unless stub[:asset_id].nil?
        data['RackId'] = stub[:rack_id] unless stub[:rack_id].nil?
        data['AssetType'] = stub[:asset_type] unless stub[:asset_type].nil?
        data['ComputeAttributes'] = ComputeAttributes.stub(stub[:compute_attributes]) unless stub[:compute_attributes].nil?
        data
      end
    end

    # Structure Stubber for ComputeAttributes
    class ComputeAttributes
      def self.default(visited=[])
        return nil if visited.include?('ComputeAttributes')
        visited = visited + ['ComputeAttributes']
        {
          host_id: 'host_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ComputeAttributes.new
        data = {}
        data['HostId'] = stub[:host_id] unless stub[:host_id].nil?
        data
      end
    end

    # Operation Stubber for ListCatalogItems
    class ListCatalogItems
      def self.default(visited=[])
        {
          catalog_items: CatalogItemListDefinition.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CatalogItems'] = CatalogItemListDefinition.stub(stub[:catalog_items]) unless stub[:catalog_items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for CatalogItemListDefinition
    class CatalogItemListDefinition
      def self.default(visited=[])
        return nil if visited.include?('CatalogItemListDefinition')
        visited = visited + ['CatalogItemListDefinition']
        [
          CatalogItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CatalogItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListOrders
    class ListOrders
      def self.default(visited=[])
        {
          orders: OrderSummaryListDefinition.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Orders'] = OrderSummaryListDefinition.stub(stub[:orders]) unless stub[:orders].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for OrderSummaryListDefinition
    class OrderSummaryListDefinition
      def self.default(visited=[])
        return nil if visited.include?('OrderSummaryListDefinition')
        visited = visited + ['OrderSummaryListDefinition']
        [
          OrderSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << OrderSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OrderSummary
    class OrderSummary
      def self.default(visited=[])
        return nil if visited.include?('OrderSummary')
        visited = visited + ['OrderSummary']
        {
          outpost_id: 'outpost_id',
          order_id: 'order_id',
          order_type: 'order_type',
          status: 'status',
          line_item_counts_by_status: LineItemStatusCounts.default(visited),
          order_submission_date: Time.now,
          order_fulfilled_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::OrderSummary.new
        data = {}
        data['OutpostId'] = stub[:outpost_id] unless stub[:outpost_id].nil?
        data['OrderId'] = stub[:order_id] unless stub[:order_id].nil?
        data['OrderType'] = stub[:order_type] unless stub[:order_type].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['LineItemCountsByStatus'] = LineItemStatusCounts.stub(stub[:line_item_counts_by_status]) unless stub[:line_item_counts_by_status].nil?
        data['OrderSubmissionDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:order_submission_date]).to_i unless stub[:order_submission_date].nil?
        data['OrderFulfilledDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:order_fulfilled_date]).to_i unless stub[:order_fulfilled_date].nil?
        data
      end
    end

    # Map Stubber for LineItemStatusCounts
    class LineItemStatusCounts
      def self.default(visited=[])
        return nil if visited.include?('LineItemStatusCounts')
        visited = visited + ['LineItemStatusCounts']
        {
          test_key: 1
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for ListOutposts
    class ListOutposts
      def self.default(visited=[])
        {
          outposts: OutpostListDefinition.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Outposts'] = OutpostListDefinition.stub(stub[:outposts]) unless stub[:outposts].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for outpostListDefinition
    class OutpostListDefinition
      def self.default(visited=[])
        return nil if visited.include?('OutpostListDefinition')
        visited = visited + ['OutpostListDefinition']
        [
          Outpost.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Outpost.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListSites
    class ListSites
      def self.default(visited=[])
        {
          sites: SiteListDefinition.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Sites'] = SiteListDefinition.stub(stub[:sites]) unless stub[:sites].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for siteListDefinition
    class SiteListDefinition
      def self.default(visited=[])
        return nil if visited.include?('SiteListDefinition')
        visited = visited + ['SiteListDefinition']
        [
          Site.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Site.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartConnection
    class StartConnection
      def self.default(visited=[])
        {
          connection_id: 'connection_id',
          underlay_ip_address: 'underlay_ip_address',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ConnectionId'] = stub[:connection_id] unless stub[:connection_id].nil?
        data['UnderlayIpAddress'] = stub[:underlay_ip_address] unless stub[:underlay_ip_address].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateOutpost
    class UpdateOutpost
      def self.default(visited=[])
        {
          outpost: Outpost.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Outpost'] = Outpost.stub(stub[:outpost]) unless stub[:outpost].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateSite
    class UpdateSite
      def self.default(visited=[])
        {
          site: Site.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Site'] = Site.stub(stub[:site]) unless stub[:site].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateSiteAddress
    class UpdateSiteAddress
      def self.default(visited=[])
        {
          address_type: 'address_type',
          address: Address.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AddressType'] = stub[:address_type] unless stub[:address_type].nil?
        data['Address'] = Address.stub(stub[:address]) unless stub[:address].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateSiteRackPhysicalProperties
    class UpdateSiteRackPhysicalProperties
      def self.default(visited=[])
        {
          site: Site.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Site'] = Site.stub(stub[:site]) unless stub[:site].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
