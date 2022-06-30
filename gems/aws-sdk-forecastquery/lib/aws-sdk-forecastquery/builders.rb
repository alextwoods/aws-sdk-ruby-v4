# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Forecastquery
  module Builders

    # Operation Builder for QueryForecast
    class QueryForecast
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonForecastRuntime.QueryForecast'
        data = {}
        data['ForecastArn'] = input[:forecast_arn] unless input[:forecast_arn].nil?
        data['StartDate'] = input[:start_date] unless input[:start_date].nil?
        data['EndDate'] = input[:end_date] unless input[:end_date].nil?
        data['Filters'] = Builders::Filters.build(input[:filters]) unless input[:filters].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for Filters
    class Filters
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end
  end
end
