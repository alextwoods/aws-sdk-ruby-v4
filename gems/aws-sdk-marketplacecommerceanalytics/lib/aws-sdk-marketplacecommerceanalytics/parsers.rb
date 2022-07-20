# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MarketplaceCommerceAnalytics
  module Parsers

    # Operation Parser for GenerateDataSet
    class GenerateDataSet
      def self.parse(http_resp)
        data = Types::GenerateDataSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.data_set_request_id = map['dataSetRequestId']
        data
      end
    end

    # Error Parser for MarketplaceCommerceAnalyticsException
    class MarketplaceCommerceAnalyticsException
      def self.parse(http_resp)
        data = Types::MarketplaceCommerceAnalyticsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for StartSupportDataExport
    class StartSupportDataExport
      def self.parse(http_resp)
        data = Types::StartSupportDataExportOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.data_set_request_id = map['dataSetRequestId']
        data
      end
    end
  end
end
