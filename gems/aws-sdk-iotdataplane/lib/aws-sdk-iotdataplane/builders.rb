# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::IoTDataPlane
  module Builders

    # Operation Builder for DeleteThingShadow
    class DeleteThingShadow
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:thing_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/things/%<thingName>s/shadow',
            thingName: Hearth::HTTP.uri_escape(input[:thing_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['name'] = input[:shadow_name].to_s unless input[:shadow_name].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetRetainedMessage
    class GetRetainedMessage
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:topic].to_s.empty?
          raise ArgumentError, "HTTP label :topic cannot be nil or empty."
        end
        http_req.append_path(format(
            '/retainedMessage/%<topic>s',
            topic: Hearth::HTTP.uri_escape(input[:topic].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetThingShadow
    class GetThingShadow
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:thing_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/things/%<thingName>s/shadow',
            thingName: Hearth::HTTP.uri_escape(input[:thing_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['name'] = input[:shadow_name].to_s unless input[:shadow_name].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListNamedShadowsForThing
    class ListNamedShadowsForThing
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:thing_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/api/things/shadow/ListNamedShadowsForThing/%<thingName>s',
            thingName: Hearth::HTTP.uri_escape(input[:thing_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['pageSize'] = input[:page_size].to_s unless input[:page_size].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListRetainedMessages
    class ListRetainedMessages
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/retainedMessage')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for Publish
    class Publish
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:topic].to_s.empty?
          raise ArgumentError, "HTTP label :topic cannot be nil or empty."
        end
        http_req.append_path(format(
            '/topics/%<topic>s',
            topic: Hearth::HTTP.uri_escape(input[:topic].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['qos'] = input[:qos].to_s unless input[:qos].nil?
        params['retain'] = input[:retain].to_s unless input[:retain].nil?
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/octet-stream'
        http_req.body = StringIO.new(input[:payload] || '')
      end
    end

    # Operation Builder for UpdateThingShadow
    class UpdateThingShadow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:thing_name].to_s.empty?
          raise ArgumentError, "HTTP label :thing_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/things/%<thingName>s/shadow',
            thingName: Hearth::HTTP.uri_escape(input[:thing_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['name'] = input[:shadow_name].to_s unless input[:shadow_name].nil?
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/octet-stream'
        http_req.body = StringIO.new(input[:payload] || '')
      end
    end
  end
end
