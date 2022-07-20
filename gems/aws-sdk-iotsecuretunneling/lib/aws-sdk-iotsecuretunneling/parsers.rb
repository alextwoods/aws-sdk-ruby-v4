# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTSecureTunneling
  module Parsers

    # Operation Parser for CloseTunnel
    class CloseTunnel
      def self.parse(http_resp)
        data = Types::CloseTunnelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DescribeTunnel
    class DescribeTunnel
      def self.parse(http_resp)
        data = Types::DescribeTunnelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tunnel = (Tunnel.parse(map['tunnel']) unless map['tunnel'].nil?)
        data
      end
    end

    class Tunnel
      def self.parse(map)
        data = Types::Tunnel.new
        data.tunnel_id = map['tunnelId']
        data.tunnel_arn = map['tunnelArn']
        data.status = map['status']
        data.source_connection_state = (ConnectionState.parse(map['sourceConnectionState']) unless map['sourceConnectionState'].nil?)
        data.destination_connection_state = (ConnectionState.parse(map['destinationConnectionState']) unless map['destinationConnectionState'].nil?)
        data.description = map['description']
        data.destination_config = (DestinationConfig.parse(map['destinationConfig']) unless map['destinationConfig'].nil?)
        data.timeout_config = (TimeoutConfig.parse(map['timeoutConfig']) unless map['timeoutConfig'].nil?)
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        return data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['key']
        data.value = map['value']
        return data
      end
    end

    class TimeoutConfig
      def self.parse(map)
        data = Types::TimeoutConfig.new
        data.max_lifetime_timeout_minutes = map['maxLifetimeTimeoutMinutes']
        return data
      end
    end

    class DestinationConfig
      def self.parse(map)
        data = Types::DestinationConfig.new
        data.thing_name = map['thingName']
        data.services = (ServiceList.parse(map['services']) unless map['services'].nil?)
        return data
      end
    end

    class ServiceList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ConnectionState
      def self.parse(map)
        data = Types::ConnectionState.new
        data.status = map['status']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (TagList.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for ListTunnels
    class ListTunnels
      def self.parse(http_resp)
        data = Types::ListTunnelsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tunnel_summaries = (TunnelSummaryList.parse(map['tunnelSummaries']) unless map['tunnelSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class TunnelSummaryList
      def self.parse(list)
        list.map do |value|
          TunnelSummary.parse(value) unless value.nil?
        end
      end
    end

    class TunnelSummary
      def self.parse(map)
        data = Types::TunnelSummary.new
        data.tunnel_id = map['tunnelId']
        data.tunnel_arn = map['tunnelArn']
        data.status = map['status']
        data.description = map['description']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        return data
      end
    end

    # Operation Parser for OpenTunnel
    class OpenTunnel
      def self.parse(http_resp)
        data = Types::OpenTunnelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tunnel_id = map['tunnelId']
        data.tunnel_arn = map['tunnelArn']
        data.source_access_token = map['sourceAccessToken']
        data.destination_access_token = map['destinationAccessToken']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for RotateTunnelAccessToken
    class RotateTunnelAccessToken
      def self.parse(http_resp)
        data = Types::RotateTunnelAccessTokenOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tunnel_arn = map['tunnelArn']
        data.source_access_token = map['sourceAccessToken']
        data.destination_access_token = map['destinationAccessToken']
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
