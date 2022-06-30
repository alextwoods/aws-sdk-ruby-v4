# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::IoTSecureTunneling
  module Builders

    # Operation Builder for CloseTunnel
    class CloseTunnel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IoTSecuredTunneling.CloseTunnel'
        data = {}
        data['tunnelId'] = input[:tunnel_id] unless input[:tunnel_id].nil?
        data['delete'] = input[:delete] unless input[:delete].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeTunnel
    class DescribeTunnel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IoTSecuredTunneling.DescribeTunnel'
        data = {}
        data['tunnelId'] = input[:tunnel_id] unless input[:tunnel_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IoTSecuredTunneling.ListTagsForResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTunnels
    class ListTunnels
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IoTSecuredTunneling.ListTunnels'
        data = {}
        data['thingName'] = input[:thing_name] unless input[:thing_name].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for OpenTunnel
    class OpenTunnel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IoTSecuredTunneling.OpenTunnel'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['destinationConfig'] = Builders::DestinationConfig.build(input[:destination_config]) unless input[:destination_config].nil?
        data['timeoutConfig'] = Builders::TimeoutConfig.build(input[:timeout_config]) unless input[:timeout_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TimeoutConfig
    class TimeoutConfig
      def self.build(input)
        data = {}
        data['maxLifetimeTimeoutMinutes'] = input[:max_lifetime_timeout_minutes] unless input[:max_lifetime_timeout_minutes].nil?
        data
      end
    end

    # Structure Builder for DestinationConfig
    class DestinationConfig
      def self.build(input)
        data = {}
        data['thingName'] = input[:thing_name] unless input[:thing_name].nil?
        data['services'] = Builders::ServiceList.build(input[:services]) unless input[:services].nil?
        data
      end
    end

    # List Builder for ServiceList
    class ServiceList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for RotateTunnelAccessToken
    class RotateTunnelAccessToken
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IoTSecuredTunneling.RotateTunnelAccessToken'
        data = {}
        data['tunnelId'] = input[:tunnel_id] unless input[:tunnel_id].nil?
        data['clientMode'] = input[:client_mode] unless input[:client_mode].nil?
        data['destinationConfig'] = Builders::DestinationConfig.build(input[:destination_config]) unless input[:destination_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IoTSecuredTunneling.TagResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IoTSecuredTunneling.UntagResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['tagKeys'] = Builders::TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
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
