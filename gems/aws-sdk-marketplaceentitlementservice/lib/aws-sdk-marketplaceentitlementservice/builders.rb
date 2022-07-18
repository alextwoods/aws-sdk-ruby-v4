# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MarketplaceEntitlementService
  module Builders

    # Operation Builder for GetEntitlements
    class GetEntitlements
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSMPEntitlementService.GetEntitlements'
        data = {}
        data['ProductCode'] = input[:product_code] unless input[:product_code].nil?
        data['Filter'] = Builders::GetEntitlementFilters.build(input[:filter]) unless input[:filter].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for GetEntitlementFilters
    class GetEntitlementFilters
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::FilterValueList.build(value) unless value.nil?
        end
        data
      end
    end

    # List Builder for FilterValueList
    class FilterValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end
  end
end
