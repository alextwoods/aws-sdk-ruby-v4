# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ApiGatewayManagementApi
  module Builders

    # Operation Builder for DeleteConnection
    class DeleteConnection
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:connection_id].to_s.empty?
          raise ArgumentError, "HTTP label :connection_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/@connections/%<ConnectionId>s',
            ConnectionId: Hearth::HTTP.uri_escape(input[:connection_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetConnection
    class GetConnection
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:connection_id].to_s.empty?
          raise ArgumentError, "HTTP label :connection_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/@connections/%<ConnectionId>s',
            ConnectionId: Hearth::HTTP.uri_escape(input[:connection_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PostToConnection
    class PostToConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:connection_id].to_s.empty?
          raise ArgumentError, "HTTP label :connection_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/@connections/%<ConnectionId>s',
            ConnectionId: Hearth::HTTP.uri_escape(input[:connection_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/octet-stream'
        http_req.body = StringIO.new(input[:data] || '')
      end
    end
  end
end
