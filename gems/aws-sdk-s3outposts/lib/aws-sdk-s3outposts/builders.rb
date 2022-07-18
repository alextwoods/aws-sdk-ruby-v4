# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::S3Outposts
  module Builders

    # Operation Builder for CreateEndpoint
    class CreateEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/S3Outposts/CreateEndpoint')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['OutpostId'] = input[:outpost_id] unless input[:outpost_id].nil?
        data['SubnetId'] = input[:subnet_id] unless input[:subnet_id].nil?
        data['SecurityGroupId'] = input[:security_group_id] unless input[:security_group_id].nil?
        data['AccessType'] = input[:access_type] unless input[:access_type].nil?
        data['CustomerOwnedIpv4Pool'] = input[:customer_owned_ipv4_pool] unless input[:customer_owned_ipv4_pool].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteEndpoint
    class DeleteEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path('/S3Outposts/DeleteEndpoint')
        params = Hearth::Query::ParamList.new
        params['endpointId'] = input[:endpoint_id].to_s unless input[:endpoint_id].nil?
        params['outpostId'] = input[:outpost_id].to_s unless input[:outpost_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListEndpoints
    class ListEndpoints
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/S3Outposts/ListEndpoints')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListSharedEndpoints
    class ListSharedEndpoints
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/S3Outposts/ListSharedEndpoints')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['outpostId'] = input[:outpost_id].to_s unless input[:outpost_id].nil?
        http_req.append_query_params(params)
      end
    end
  end
end
