# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::BackupGateway
  module Parsers

    # Operation Parser for AssociateGatewayToServer
    class AssociateGatewayToServer
      def self.parse(http_resp)
        data = Types::AssociateGatewayToServerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayArn']
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
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateGateway
    class CreateGateway
      def self.parse(http_resp)
        data = Types::CreateGatewayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayArn']
        data
      end
    end

    # Operation Parser for DeleteGateway
    class DeleteGateway
      def self.parse(http_resp)
        data = Types::DeleteGatewayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayArn']
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
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteHypervisor
    class DeleteHypervisor
      def self.parse(http_resp)
        data = Types::DeleteHypervisorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.hypervisor_arn = map['HypervisorArn']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DisassociateGatewayFromServer
    class DisassociateGatewayFromServer
      def self.parse(http_resp)
        data = Types::DisassociateGatewayFromServerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayArn']
        data
      end
    end

    # Operation Parser for GetGateway
    class GetGateway
      def self.parse(http_resp)
        data = Types::GetGatewayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway = (Parsers::GatewayDetails.parse(map['Gateway']) unless map['Gateway'].nil?)
        data
      end
    end

    class GatewayDetails
      def self.parse(map)
        data = Types::GatewayDetails.new
        data.gateway_arn = map['GatewayArn']
        data.gateway_display_name = map['GatewayDisplayName']
        data.gateway_type = map['GatewayType']
        data.hypervisor_id = map['HypervisorId']
        data.last_seen_time = Time.at(map['LastSeenTime'].to_i) if map['LastSeenTime']
        data.next_update_availability_time = Time.at(map['NextUpdateAvailabilityTime'].to_i) if map['NextUpdateAvailabilityTime']
        data.vpc_endpoint = map['VpcEndpoint']
        return data
      end
    end

    # Operation Parser for ImportHypervisorConfiguration
    class ImportHypervisorConfiguration
      def self.parse(http_resp)
        data = Types::ImportHypervisorConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.hypervisor_arn = map['HypervisorArn']
        data
      end
    end

    # Operation Parser for ListGateways
    class ListGateways
      def self.parse(http_resp)
        data = Types::ListGatewaysOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateways = (Parsers::Gateways.parse(map['Gateways']) unless map['Gateways'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Gateways
      def self.parse(list)
        list.map do |value|
          Parsers::Gateway.parse(value) unless value.nil?
        end
      end
    end

    class Gateway
      def self.parse(map)
        data = Types::Gateway.new
        data.gateway_arn = map['GatewayArn']
        data.gateway_display_name = map['GatewayDisplayName']
        data.gateway_type = map['GatewayType']
        data.hypervisor_id = map['HypervisorId']
        data.last_seen_time = Time.at(map['LastSeenTime'].to_i) if map['LastSeenTime']
        return data
      end
    end

    # Operation Parser for ListHypervisors
    class ListHypervisors
      def self.parse(http_resp)
        data = Types::ListHypervisorsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.hypervisors = (Parsers::Hypervisors.parse(map['Hypervisors']) unless map['Hypervisors'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Hypervisors
      def self.parse(list)
        list.map do |value|
          Parsers::Hypervisor.parse(value) unless value.nil?
        end
      end
    end

    class Hypervisor
      def self.parse(map)
        data = Types::Hypervisor.new
        data.host = map['Host']
        data.hypervisor_arn = map['HypervisorArn']
        data.kms_key_arn = map['KmsKeyArn']
        data.name = map['Name']
        data.state = map['State']
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
        data.resource_arn = map['ResourceArn']
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class Tags
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

    # Operation Parser for ListVirtualMachines
    class ListVirtualMachines
      def self.parse(http_resp)
        data = Types::ListVirtualMachinesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.virtual_machines = (Parsers::VirtualMachines.parse(map['VirtualMachines']) unless map['VirtualMachines'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class VirtualMachines
      def self.parse(list)
        list.map do |value|
          Parsers::VirtualMachine.parse(value) unless value.nil?
        end
      end
    end

    class VirtualMachine
      def self.parse(map)
        data = Types::VirtualMachine.new
        data.host_name = map['HostName']
        data.hypervisor_id = map['HypervisorId']
        data.name = map['Name']
        data.path = map['Path']
        data.resource_arn = map['ResourceArn']
        data.last_backup_date = Time.at(map['LastBackupDate'].to_i) if map['LastBackupDate']
        return data
      end
    end

    # Operation Parser for PutMaintenanceStartTime
    class PutMaintenanceStartTime
      def self.parse(http_resp)
        data = Types::PutMaintenanceStartTimeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayArn']
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
        data.resource_arn = map['ResourceARN']
        data
      end
    end

    # Operation Parser for TestHypervisorConfiguration
    class TestHypervisorConfiguration
      def self.parse(http_resp)
        data = Types::TestHypervisorConfigurationOutput.new
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
        data.resource_arn = map['ResourceARN']
        data
      end
    end

    # Operation Parser for UpdateGatewayInformation
    class UpdateGatewayInformation
      def self.parse(http_resp)
        data = Types::UpdateGatewayInformationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayArn']
        data
      end
    end

    # Operation Parser for UpdateGatewaySoftwareNow
    class UpdateGatewaySoftwareNow
      def self.parse(http_resp)
        data = Types::UpdateGatewaySoftwareNowOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.gateway_arn = map['GatewayArn']
        data
      end
    end

    # Operation Parser for UpdateHypervisor
    class UpdateHypervisor
      def self.parse(http_resp)
        data = Types::UpdateHypervisorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.hypervisor_arn = map['HypervisorArn']
        data
      end
    end
  end
end
