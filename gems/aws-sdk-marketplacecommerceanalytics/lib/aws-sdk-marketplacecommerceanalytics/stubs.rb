# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MarketplaceCommerceAnalytics
  module Stubs

    # Operation Stubber for GenerateDataSet
    class GenerateDataSet
      def self.default(visited=[])
        {
          data_set_request_id: 'data_set_request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['dataSetRequestId'] = stub[:data_set_request_id] unless stub[:data_set_request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartSupportDataExport
    class StartSupportDataExport
      def self.default(visited=[])
        {
          data_set_request_id: 'data_set_request_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['dataSetRequestId'] = stub[:data_set_request_id] unless stub[:data_set_request_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
