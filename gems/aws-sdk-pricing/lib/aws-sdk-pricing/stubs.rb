# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Pricing
  module Stubs

    # Operation Stubber for DescribeServices
    class DescribeServices
      def self.default(visited=[])
        {
          services: Stubs::ServiceList.default(visited),
          format_version: 'format_version',
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Services'] = Stubs::ServiceList.stub(stub[:services]) unless stub[:services].nil?
        data['FormatVersion'] = stub[:format_version] unless stub[:format_version].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ServiceList
    class ServiceList
      def self.default(visited=[])
        return nil if visited.include?('ServiceList')
        visited = visited + ['ServiceList']
        [
          Stubs::Service.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Service.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Service
    class Service
      def self.default(visited=[])
        return nil if visited.include?('Service')
        visited = visited + ['Service']
        {
          service_code: 'service_code',
          attribute_names: Stubs::AttributeNameList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Service.new
        data = {}
        data['ServiceCode'] = stub[:service_code] unless stub[:service_code].nil?
        data['AttributeNames'] = Stubs::AttributeNameList.stub(stub[:attribute_names]) unless stub[:attribute_names].nil?
        data
      end
    end

    # List Stubber for AttributeNameList
    class AttributeNameList
      def self.default(visited=[])
        return nil if visited.include?('AttributeNameList')
        visited = visited + ['AttributeNameList']
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

    # Operation Stubber for GetAttributeValues
    class GetAttributeValues
      def self.default(visited=[])
        {
          attribute_values: Stubs::AttributeValueList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AttributeValues'] = Stubs::AttributeValueList.stub(stub[:attribute_values]) unless stub[:attribute_values].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AttributeValueList
    class AttributeValueList
      def self.default(visited=[])
        return nil if visited.include?('AttributeValueList')
        visited = visited + ['AttributeValueList']
        [
          Stubs::AttributeValue.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AttributeValue.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AttributeValue
    class AttributeValue
      def self.default(visited=[])
        return nil if visited.include?('AttributeValue')
        visited = visited + ['AttributeValue']
        {
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::AttributeValue.new
        data = {}
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for GetProducts
    class GetProducts
      def self.default(visited=[])
        {
          format_version: 'format_version',
          price_list: Stubs::PriceList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FormatVersion'] = stub[:format_version] unless stub[:format_version].nil?
        data['PriceList'] = Stubs::PriceList.stub(stub[:price_list]) unless stub[:price_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PriceList
    class PriceList
      def self.default(visited=[])
        return nil if visited.include?('PriceList')
        visited = visited + ['PriceList']
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
  end
end
