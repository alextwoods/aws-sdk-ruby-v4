# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::IoTSecureTunneling
  module Stubs

    # Operation Stubber for CloseTunnel
    class CloseTunnel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeTunnel
    class DescribeTunnel
      def self.default(visited=[])
        {
          tunnel: Tunnel.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['tunnel'] = Tunnel.stub(stub[:tunnel]) unless stub[:tunnel].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Tunnel
    class Tunnel
      def self.default(visited=[])
        return nil if visited.include?('Tunnel')
        visited = visited + ['Tunnel']
        {
          tunnel_id: 'tunnel_id',
          tunnel_arn: 'tunnel_arn',
          status: 'status',
          source_connection_state: ConnectionState.default(visited),
          destination_connection_state: ConnectionState.default(visited),
          description: 'description',
          destination_config: DestinationConfig.default(visited),
          timeout_config: TimeoutConfig.default(visited),
          tags: TagList.default(visited),
          created_at: Time.now,
          last_updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Tunnel.new
        data = {}
        data['tunnelId'] = stub[:tunnel_id] unless stub[:tunnel_id].nil?
        data['tunnelArn'] = stub[:tunnel_arn] unless stub[:tunnel_arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['sourceConnectionState'] = ConnectionState.stub(stub[:source_connection_state]) unless stub[:source_connection_state].nil?
        data['destinationConnectionState'] = ConnectionState.stub(stub[:destination_connection_state]) unless stub[:destination_connection_state].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['destinationConfig'] = DestinationConfig.stub(stub[:destination_config]) unless stub[:destination_config].nil?
        data['timeoutConfig'] = TimeoutConfig.stub(stub[:timeout_config]) unless stub[:timeout_config].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for TimeoutConfig
    class TimeoutConfig
      def self.default(visited=[])
        return nil if visited.include?('TimeoutConfig')
        visited = visited + ['TimeoutConfig']
        {
          max_lifetime_timeout_minutes: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::TimeoutConfig.new
        data = {}
        data['maxLifetimeTimeoutMinutes'] = stub[:max_lifetime_timeout_minutes] unless stub[:max_lifetime_timeout_minutes].nil?
        data
      end
    end

    # Structure Stubber for DestinationConfig
    class DestinationConfig
      def self.default(visited=[])
        return nil if visited.include?('DestinationConfig')
        visited = visited + ['DestinationConfig']
        {
          thing_name: 'thing_name',
          services: ServiceList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DestinationConfig.new
        data = {}
        data['thingName'] = stub[:thing_name] unless stub[:thing_name].nil?
        data['services'] = ServiceList.stub(stub[:services]) unless stub[:services].nil?
        data
      end
    end

    # List Stubber for ServiceList
    class ServiceList
      def self.default(visited=[])
        return nil if visited.include?('ServiceList')
        visited = visited + ['ServiceList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConnectionState
    class ConnectionState
      def self.default(visited=[])
        return nil if visited.include?('ConnectionState')
        visited = visited + ['ConnectionState']
        {
          status: 'status',
          last_updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectionState.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListTunnels
    class ListTunnels
      def self.default(visited=[])
        {
          tunnel_summaries: TunnelSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['tunnelSummaries'] = TunnelSummaryList.stub(stub[:tunnel_summaries]) unless stub[:tunnel_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TunnelSummaryList
    class TunnelSummaryList
      def self.default(visited=[])
        return nil if visited.include?('TunnelSummaryList')
        visited = visited + ['TunnelSummaryList']
        [
          TunnelSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TunnelSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TunnelSummary
    class TunnelSummary
      def self.default(visited=[])
        return nil if visited.include?('TunnelSummary')
        visited = visited + ['TunnelSummary']
        {
          tunnel_id: 'tunnel_id',
          tunnel_arn: 'tunnel_arn',
          status: 'status',
          description: 'description',
          created_at: Time.now,
          last_updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::TunnelSummary.new
        data = {}
        data['tunnelId'] = stub[:tunnel_id] unless stub[:tunnel_id].nil?
        data['tunnelArn'] = stub[:tunnel_arn] unless stub[:tunnel_arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data
      end
    end

    # Operation Stubber for OpenTunnel
    class OpenTunnel
      def self.default(visited=[])
        {
          tunnel_id: 'tunnel_id',
          tunnel_arn: 'tunnel_arn',
          source_access_token: 'source_access_token',
          destination_access_token: 'destination_access_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['tunnelId'] = stub[:tunnel_id] unless stub[:tunnel_id].nil?
        data['tunnelArn'] = stub[:tunnel_arn] unless stub[:tunnel_arn].nil?
        data['sourceAccessToken'] = stub[:source_access_token] unless stub[:source_access_token].nil?
        data['destinationAccessToken'] = stub[:destination_access_token] unless stub[:destination_access_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RotateTunnelAccessToken
    class RotateTunnelAccessToken
      def self.default(visited=[])
        {
          tunnel_arn: 'tunnel_arn',
          source_access_token: 'source_access_token',
          destination_access_token: 'destination_access_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['tunnelArn'] = stub[:tunnel_arn] unless stub[:tunnel_arn].nil?
        data['sourceAccessToken'] = stub[:source_access_token] unless stub[:source_access_token].nil?
        data['destinationAccessToken'] = stub[:destination_access_token] unless stub[:destination_access_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
