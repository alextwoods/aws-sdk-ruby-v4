# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::S3Outposts
  module Parsers

    # Operation Parser for CreateEndpoint
    class CreateEndpoint
      def self.parse(http_resp)
        data = Types::CreateEndpointOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.endpoint_arn = map['EndpointArn']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteEndpoint
    class DeleteEndpoint
      def self.parse(http_resp)
        data = Types::DeleteEndpointOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for ListEndpoints
    class ListEndpoints
      def self.parse(http_resp)
        data = Types::ListEndpointsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.endpoints = (Endpoints.parse(map['Endpoints']) unless map['Endpoints'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Endpoints
      def self.parse(list)
        data = []
        list.map do |value|
          data << Endpoint.parse(value) unless value.nil?
        end
        data
      end
    end

    class Endpoint
      def self.parse(map)
        data = Types::Endpoint.new
        data.endpoint_arn = map['EndpointArn']
        data.outposts_id = map['OutpostsId']
        data.cidr_block = map['CidrBlock']
        data.status = map['Status']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.network_interfaces = (NetworkInterfaces.parse(map['NetworkInterfaces']) unless map['NetworkInterfaces'].nil?)
        data.vpc_id = map['VpcId']
        data.subnet_id = map['SubnetId']
        data.security_group_id = map['SecurityGroupId']
        data.access_type = map['AccessType']
        data.customer_owned_ipv4_pool = map['CustomerOwnedIpv4Pool']
        return data
      end
    end

    class NetworkInterfaces
      def self.parse(list)
        data = []
        list.map do |value|
          data << NetworkInterface.parse(value) unless value.nil?
        end
        data
      end
    end

    class NetworkInterface
      def self.parse(map)
        data = Types::NetworkInterface.new
        data.network_interface_id = map['NetworkInterfaceId']
        return data
      end
    end

    # Operation Parser for ListSharedEndpoints
    class ListSharedEndpoints
      def self.parse(http_resp)
        data = Types::ListSharedEndpointsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.endpoints = (Endpoints.parse(map['Endpoints']) unless map['Endpoints'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end
  end
end
