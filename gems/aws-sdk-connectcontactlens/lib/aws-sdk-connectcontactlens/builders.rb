# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::ConnectContactLens
  module Builders

    # Operation Builder for ListRealtimeContactAnalysisSegments
    class ListRealtimeContactAnalysisSegments
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/realtime-contact-analysis/analysis-segments')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['ContactId'] = input[:contact_id] unless input[:contact_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
