# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Pricing
  module Builders

    # Operation Builder for DescribeServices
    class DescribeServices
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSPriceListService.DescribeServices'
        data = {}
        data['ServiceCode'] = input[:service_code] unless input[:service_code].nil?
        data['FormatVersion'] = input[:format_version] unless input[:format_version].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetAttributeValues
    class GetAttributeValues
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSPriceListService.GetAttributeValues'
        data = {}
        data['ServiceCode'] = input[:service_code] unless input[:service_code].nil?
        data['AttributeName'] = input[:attribute_name] unless input[:attribute_name].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetProducts
    class GetProducts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSPriceListService.GetProducts'
        data = {}
        data['ServiceCode'] = input[:service_code] unless input[:service_code].nil?
        data['Filters'] = Builders::Filters.build(input[:filters]) unless input[:filters].nil?
        data['FormatVersion'] = input[:format_version] unless input[:format_version].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Filters
    class Filters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Filter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Filter
    class Filter
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['Field'] = input[:field] unless input[:field].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end
  end
end
