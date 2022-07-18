# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodeStarConnections
  module Parsers

    # Operation Parser for CreateConnection
    class CreateConnection
      def self.parse(http_resp)
        data = Types::CreateConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.connection_arn = map['ConnectionArn']
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
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
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceUnavailableException
    class ResourceUnavailableException
      def self.parse(http_resp)
        data = Types::ResourceUnavailableException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateHost
    class CreateHost
      def self.parse(http_resp)
        data = Types::CreateHostOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.host_arn = map['HostArn']
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for DeleteConnection
    class DeleteConnection
      def self.parse(http_resp)
        data = Types::DeleteConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteHost
    class DeleteHost
      def self.parse(http_resp)
        data = Types::DeleteHostOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for GetConnection
    class GetConnection
      def self.parse(http_resp)
        data = Types::GetConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.connection = (Parsers::Connection.parse(map['Connection']) unless map['Connection'].nil?)
        data
      end
    end

    class Connection
      def self.parse(map)
        data = Types::Connection.new
        data.connection_name = map['ConnectionName']
        data.connection_arn = map['ConnectionArn']
        data.provider_type = map['ProviderType']
        data.owner_account_id = map['OwnerAccountId']
        data.connection_status = map['ConnectionStatus']
        data.host_arn = map['HostArn']
        return data
      end
    end

    # Operation Parser for GetHost
    class GetHost
      def self.parse(http_resp)
        data = Types::GetHostOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.name = map['Name']
        data.status = map['Status']
        data.provider_type = map['ProviderType']
        data.provider_endpoint = map['ProviderEndpoint']
        data.vpc_configuration = (Parsers::VpcConfiguration.parse(map['VpcConfiguration']) unless map['VpcConfiguration'].nil?)
        data
      end
    end

    class VpcConfiguration
      def self.parse(map)
        data = Types::VpcConfiguration.new
        data.vpc_id = map['VpcId']
        data.subnet_ids = (Parsers::SubnetIds.parse(map['SubnetIds']) unless map['SubnetIds'].nil?)
        data.security_group_ids = (Parsers::SecurityGroupIds.parse(map['SecurityGroupIds']) unless map['SecurityGroupIds'].nil?)
        data.tls_certificate = map['TlsCertificate']
        return data
      end
    end

    class SecurityGroupIds
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class SubnetIds
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListConnections
    class ListConnections
      def self.parse(http_resp)
        data = Types::ListConnectionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.connections = (Parsers::ConnectionList.parse(map['Connections']) unless map['Connections'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ConnectionList
      def self.parse(list)
        list.map do |value|
          Parsers::Connection.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListHosts
    class ListHosts
      def self.parse(http_resp)
        data = Types::ListHostsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.hosts = (Parsers::HostList.parse(map['Hosts']) unless map['Hosts'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class HostList
      def self.parse(list)
        list.map do |value|
          Parsers::Host.parse(value) unless value.nil?
        end
      end
    end

    class Host
      def self.parse(map)
        data = Types::Host.new
        data.name = map['Name']
        data.host_arn = map['HostArn']
        data.provider_type = map['ProviderType']
        data.provider_endpoint = map['ProviderEndpoint']
        data.vpc_configuration = (Parsers::VpcConfiguration.parse(map['VpcConfiguration']) unless map['VpcConfiguration'].nil?)
        data.status = map['Status']
        data.status_message = map['StatusMessage']
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
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
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

    # Operation Parser for UpdateHost
    class UpdateHost
      def self.parse(http_resp)
        data = Types::UpdateHostOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for UnsupportedOperationException
    class UnsupportedOperationException
      def self.parse(http_resp)
        data = Types::UnsupportedOperationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end
  end
end
