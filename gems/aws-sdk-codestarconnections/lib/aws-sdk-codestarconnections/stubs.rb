# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::CodeStarConnections
  module Stubs

    # Operation Stubber for CreateConnection
    class CreateConnection
      def self.default(visited=[])
        {
          connection_arn: 'connection_arn',
          tags: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConnectionArn'] = stub[:connection_arn] unless stub[:connection_arn].nil?
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for CreateHost
    class CreateHost
      def self.default(visited=[])
        {
          host_arn: 'host_arn',
          tags: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['HostArn'] = stub[:host_arn] unless stub[:host_arn].nil?
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteConnection
    class DeleteConnection
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

    # Operation Stubber for DeleteHost
    class DeleteHost
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

    # Operation Stubber for GetConnection
    class GetConnection
      def self.default(visited=[])
        {
          connection: Connection.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Connection'] = Connection.stub(stub[:connection]) unless stub[:connection].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Connection
    class Connection
      def self.default(visited=[])
        return nil if visited.include?('Connection')
        visited = visited + ['Connection']
        {
          connection_name: 'connection_name',
          connection_arn: 'connection_arn',
          provider_type: 'provider_type',
          owner_account_id: 'owner_account_id',
          connection_status: 'connection_status',
          host_arn: 'host_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Connection.new
        data = {}
        data['ConnectionName'] = stub[:connection_name] unless stub[:connection_name].nil?
        data['ConnectionArn'] = stub[:connection_arn] unless stub[:connection_arn].nil?
        data['ProviderType'] = stub[:provider_type] unless stub[:provider_type].nil?
        data['OwnerAccountId'] = stub[:owner_account_id] unless stub[:owner_account_id].nil?
        data['ConnectionStatus'] = stub[:connection_status] unless stub[:connection_status].nil?
        data['HostArn'] = stub[:host_arn] unless stub[:host_arn].nil?
        data
      end
    end

    # Operation Stubber for GetHost
    class GetHost
      def self.default(visited=[])
        {
          name: 'name',
          status: 'status',
          provider_type: 'provider_type',
          provider_endpoint: 'provider_endpoint',
          vpc_configuration: VpcConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['ProviderType'] = stub[:provider_type] unless stub[:provider_type].nil?
        data['ProviderEndpoint'] = stub[:provider_endpoint] unless stub[:provider_endpoint].nil?
        data['VpcConfiguration'] = VpcConfiguration.stub(stub[:vpc_configuration]) unless stub[:vpc_configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for VpcConfiguration
    class VpcConfiguration
      def self.default(visited=[])
        return nil if visited.include?('VpcConfiguration')
        visited = visited + ['VpcConfiguration']
        {
          vpc_id: 'vpc_id',
          subnet_ids: SubnetIds.default(visited),
          security_group_ids: SecurityGroupIds.default(visited),
          tls_certificate: 'tls_certificate',
        }
      end

      def self.stub(stub)
        stub ||= Types::VpcConfiguration.new
        data = {}
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['SubnetIds'] = SubnetIds.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['SecurityGroupIds'] = SecurityGroupIds.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data['TlsCertificate'] = stub[:tls_certificate] unless stub[:tls_certificate].nil?
        data
      end
    end

    # List Stubber for SecurityGroupIds
    class SecurityGroupIds
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupIds')
        visited = visited + ['SecurityGroupIds']
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

    # List Stubber for SubnetIds
    class SubnetIds
      def self.default(visited=[])
        return nil if visited.include?('SubnetIds')
        visited = visited + ['SubnetIds']
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

    # Operation Stubber for ListConnections
    class ListConnections
      def self.default(visited=[])
        {
          connections: ConnectionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Connections'] = ConnectionList.stub(stub[:connections]) unless stub[:connections].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ConnectionList
    class ConnectionList
      def self.default(visited=[])
        return nil if visited.include?('ConnectionList')
        visited = visited + ['ConnectionList']
        [
          Connection.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Connection.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListHosts
    class ListHosts
      def self.default(visited=[])
        {
          hosts: HostList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Hosts'] = HostList.stub(stub[:hosts]) unless stub[:hosts].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for HostList
    class HostList
      def self.default(visited=[])
        return nil if visited.include?('HostList')
        visited = visited + ['HostList']
        [
          Host.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Host.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Host
    class Host
      def self.default(visited=[])
        return nil if visited.include?('Host')
        visited = visited + ['Host']
        {
          name: 'name',
          host_arn: 'host_arn',
          provider_type: 'provider_type',
          provider_endpoint: 'provider_endpoint',
          vpc_configuration: VpcConfiguration.default(visited),
          status: 'status',
          status_message: 'status_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::Host.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['HostArn'] = stub[:host_arn] unless stub[:host_arn].nil?
        data['ProviderType'] = stub[:provider_type] unless stub[:provider_type].nil?
        data['ProviderEndpoint'] = stub[:provider_endpoint] unless stub[:provider_endpoint].nil?
        data['VpcConfiguration'] = VpcConfiguration.stub(stub[:vpc_configuration]) unless stub[:vpc_configuration].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
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
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
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

    # Operation Stubber for UpdateHost
    class UpdateHost
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
