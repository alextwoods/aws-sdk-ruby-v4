# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::MarketplaceEntitlementService
  module Stubs

    # Operation Stubber for GetEntitlements
    class GetEntitlements
      def self.default(visited=[])
        {
          entitlements: EntitlementList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Entitlements'] = EntitlementList.stub(stub[:entitlements]) unless stub[:entitlements].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EntitlementList
    class EntitlementList
      def self.default(visited=[])
        return nil if visited.include?('EntitlementList')
        visited = visited + ['EntitlementList']
        [
          Entitlement.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Entitlement.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Entitlement
    class Entitlement
      def self.default(visited=[])
        return nil if visited.include?('Entitlement')
        visited = visited + ['Entitlement']
        {
          product_code: 'product_code',
          dimension: 'dimension',
          customer_identifier: 'customer_identifier',
          value: EntitlementValue.default(visited),
          expiration_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Entitlement.new
        data = {}
        data['ProductCode'] = stub[:product_code] unless stub[:product_code].nil?
        data['Dimension'] = stub[:dimension] unless stub[:dimension].nil?
        data['CustomerIdentifier'] = stub[:customer_identifier] unless stub[:customer_identifier].nil?
        data['Value'] = EntitlementValue.stub(stub[:value]) unless stub[:value].nil?
        data['ExpirationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expiration_date]).to_i unless stub[:expiration_date].nil?
        data
      end
    end

    # Union Stubber for EntitlementValue
    class EntitlementValue
      def self.default(visited=[])
        return nil if visited.include?('EntitlementValue')
        visited = visited + ['EntitlementValue']
        {
          integer_value: 1,
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::EntitlementValue::IntegerValue
          data['IntegerValue'] = stub.__getobj__
        when Types::EntitlementValue::DoubleValue
          data['DoubleValue'] = Hearth::NumberHelper.serialize(stub.__getobj__)
        when Types::EntitlementValue::BooleanValue
          data['BooleanValue'] = stub.__getobj__
        when Types::EntitlementValue::StringValue
          data['StringValue'] = stub.__getobj__
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::EntitlementValue"
        end

        data
      end
    end
  end
end
