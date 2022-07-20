# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::S3Outposts
  module Stubs

    # Operation Stubber for CreateEndpoint
    class CreateEndpoint
      def self.default(visited=[])
        {
          endpoint_arn: 'endpoint_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['EndpointArn'] = stub[:endpoint_arn] unless stub[:endpoint_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteEndpoint
    class DeleteEndpoint
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListEndpoints
    class ListEndpoints
      def self.default(visited=[])
        {
          endpoints: Endpoints.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Endpoints'] = Stubs::Endpoints.stub(stub[:endpoints]) unless stub[:endpoints].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Endpoints
    class Endpoints
      def self.default(visited=[])
        return nil if visited.include?('Endpoints')
        visited = visited + ['Endpoints']
        [
          Endpoint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Endpoint.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Endpoint
    class Endpoint
      def self.default(visited=[])
        return nil if visited.include?('Endpoint')
        visited = visited + ['Endpoint']
        {
          endpoint_arn: 'endpoint_arn',
          outposts_id: 'outposts_id',
          cidr_block: 'cidr_block',
          status: 'status',
          creation_time: Time.now,
          network_interfaces: NetworkInterfaces.default(visited),
          vpc_id: 'vpc_id',
          subnet_id: 'subnet_id',
          security_group_id: 'security_group_id',
          access_type: 'access_type',
          customer_owned_ipv4_pool: 'customer_owned_ipv4_pool',
        }
      end

      def self.stub(stub)
        stub ||= Types::Endpoint.new
        data = {}
        data['EndpointArn'] = stub[:endpoint_arn] unless stub[:endpoint_arn].nil?
        data['OutpostsId'] = stub[:outposts_id] unless stub[:outposts_id].nil?
        data['CidrBlock'] = stub[:cidr_block] unless stub[:cidr_block].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['NetworkInterfaces'] = Stubs::NetworkInterfaces.stub(stub[:network_interfaces]) unless stub[:network_interfaces].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['SubnetId'] = stub[:subnet_id] unless stub[:subnet_id].nil?
        data['SecurityGroupId'] = stub[:security_group_id] unless stub[:security_group_id].nil?
        data['AccessType'] = stub[:access_type] unless stub[:access_type].nil?
        data['CustomerOwnedIpv4Pool'] = stub[:customer_owned_ipv4_pool] unless stub[:customer_owned_ipv4_pool].nil?
        data
      end
    end

    # List Stubber for NetworkInterfaces
    class NetworkInterfaces
      def self.default(visited=[])
        return nil if visited.include?('NetworkInterfaces')
        visited = visited + ['NetworkInterfaces']
        [
          NetworkInterface.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::NetworkInterface.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NetworkInterface
    class NetworkInterface
      def self.default(visited=[])
        return nil if visited.include?('NetworkInterface')
        visited = visited + ['NetworkInterface']
        {
          network_interface_id: 'network_interface_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkInterface.new
        data = {}
        data['NetworkInterfaceId'] = stub[:network_interface_id] unless stub[:network_interface_id].nil?
        data
      end
    end

    # Operation Stubber for ListSharedEndpoints
    class ListSharedEndpoints
      def self.default(visited=[])
        {
          endpoints: Endpoints.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Endpoints'] = Stubs::Endpoints.stub(stub[:endpoints]) unless stub[:endpoints].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
