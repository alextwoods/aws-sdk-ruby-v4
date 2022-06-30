# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Pricing
  module Parsers

    # Operation Parser for DescribeServices
    class DescribeServices
      def self.parse(http_resp)
        data = Types::DescribeServicesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.services = (Parsers::ServiceList.parse(map['Services']) unless map['Services'].nil?)
        data.format_version = map['FormatVersion']
        data.next_token = map['NextToken']
        data
      end
    end

    class ServiceList
      def self.parse(list)
        list.map do |value|
          Parsers::Service.parse(value) unless value.nil?
        end
      end
    end

    class Service
      def self.parse(map)
        data = Types::Service.new
        data.service_code = map['ServiceCode']
        data.attribute_names = (Parsers::AttributeNameList.parse(map['AttributeNames']) unless map['AttributeNames'].nil?)
        return data
      end
    end

    class AttributeNameList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidParameterException
    class InvalidParameterException
      def self.parse(http_resp)
        data = Types::InvalidParameterException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalErrorException
    class InternalErrorException
      def self.parse(http_resp)
        data = Types::InternalErrorException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ExpiredNextTokenException
    class ExpiredNextTokenException
      def self.parse(http_resp)
        data = Types::ExpiredNextTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidNextTokenException
    class InvalidNextTokenException
      def self.parse(http_resp)
        data = Types::InvalidNextTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for GetAttributeValues
    class GetAttributeValues
      def self.parse(http_resp)
        data = Types::GetAttributeValuesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.attribute_values = (Parsers::AttributeValueList.parse(map['AttributeValues']) unless map['AttributeValues'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AttributeValueList
      def self.parse(list)
        list.map do |value|
          Parsers::AttributeValue.parse(value) unless value.nil?
        end
      end
    end

    class AttributeValue
      def self.parse(map)
        data = Types::AttributeValue.new
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for GetProducts
    class GetProducts
      def self.parse(http_resp)
        data = Types::GetProductsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.format_version = map['FormatVersion']
        data.price_list = (Parsers::PriceList.parse(map['PriceList']) unless map['PriceList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PriceList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end
  end
end
