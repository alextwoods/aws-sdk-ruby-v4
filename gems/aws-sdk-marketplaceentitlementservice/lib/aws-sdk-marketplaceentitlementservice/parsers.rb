# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MarketplaceEntitlementService
  module Parsers

    # Operation Parser for GetEntitlements
    class GetEntitlements
      def self.parse(http_resp)
        data = Types::GetEntitlementsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.entitlements = (Parsers::EntitlementList.parse(map['Entitlements']) unless map['Entitlements'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class EntitlementList
      def self.parse(list)
        list.map do |value|
          Parsers::Entitlement.parse(value) unless value.nil?
        end
      end
    end

    class Entitlement
      def self.parse(map)
        data = Types::Entitlement.new
        data.product_code = map['ProductCode']
        data.dimension = map['Dimension']
        data.customer_identifier = map['CustomerIdentifier']
        data.value = (Parsers::EntitlementValue.parse(map['Value']) unless map['Value'].nil?)
        data.expiration_date = Time.at(map['ExpirationDate'].to_i) if map['ExpirationDate']
        return data
      end
    end

    class EntitlementValue
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'IntegerValue'
          value = value
          Types::EntitlementValue::IntegerValue.new(value) if value
        when 'DoubleValue'
          value = Hearth::NumberHelper.deserialize(value)
          Types::EntitlementValue::DoubleValue.new(value) if value
        when 'BooleanValue'
          value = value
          Types::EntitlementValue::BooleanValue.new(value) if value
        when 'StringValue'
          value = value
          Types::EntitlementValue::StringValue.new(value) if value
        else
          Types::EntitlementValue::Unknown.new({name: key, value: value})
        end
      end
    end

    # Error Parser for InvalidParameterException
    class InvalidParameterException
      def self.parse(http_resp)
        data = Types::InvalidParameterException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InternalServiceErrorException
    class InternalServiceErrorException
      def self.parse(http_resp)
        data = Types::InternalServiceErrorException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end
  end
end
