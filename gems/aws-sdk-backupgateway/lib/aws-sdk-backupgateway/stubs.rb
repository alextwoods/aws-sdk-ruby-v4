# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::BackupGateway
  module Stubs

    # Operation Stubber for AssociateGatewayToServer
    class AssociateGatewayToServer
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayArn'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateGateway
    class CreateGateway
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayArn'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteGateway
    class DeleteGateway
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayArn'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteHypervisor
    class DeleteHypervisor
      def self.default(visited=[])
        {
          hypervisor_arn: 'hypervisor_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['HypervisorArn'] = stub[:hypervisor_arn] unless stub[:hypervisor_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateGatewayFromServer
    class DisassociateGatewayFromServer
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayArn'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetGateway
    class GetGateway
      def self.default(visited=[])
        {
          gateway: GatewayDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Gateway'] = GatewayDetails.stub(stub[:gateway]) unless stub[:gateway].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for GatewayDetails
    class GatewayDetails
      def self.default(visited=[])
        return nil if visited.include?('GatewayDetails')
        visited = visited + ['GatewayDetails']
        {
          gateway_arn: 'gateway_arn',
          gateway_display_name: 'gateway_display_name',
          gateway_type: 'gateway_type',
          hypervisor_id: 'hypervisor_id',
          last_seen_time: Time.now,
          next_update_availability_time: Time.now,
          vpc_endpoint: 'vpc_endpoint',
        }
      end

      def self.stub(stub)
        stub ||= Types::GatewayDetails.new
        data = {}
        data['GatewayArn'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        data['GatewayDisplayName'] = stub[:gateway_display_name] unless stub[:gateway_display_name].nil?
        data['GatewayType'] = stub[:gateway_type] unless stub[:gateway_type].nil?
        data['HypervisorId'] = stub[:hypervisor_id] unless stub[:hypervisor_id].nil?
        data['LastSeenTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_seen_time]).to_i unless stub[:last_seen_time].nil?
        data['NextUpdateAvailabilityTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:next_update_availability_time]).to_i unless stub[:next_update_availability_time].nil?
        data['VpcEndpoint'] = stub[:vpc_endpoint] unless stub[:vpc_endpoint].nil?
        data
      end
    end

    # Operation Stubber for ImportHypervisorConfiguration
    class ImportHypervisorConfiguration
      def self.default(visited=[])
        {
          hypervisor_arn: 'hypervisor_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['HypervisorArn'] = stub[:hypervisor_arn] unless stub[:hypervisor_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListGateways
    class ListGateways
      def self.default(visited=[])
        {
          gateways: Gateways.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Gateways'] = Gateways.stub(stub[:gateways]) unless stub[:gateways].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Gateways
    class Gateways
      def self.default(visited=[])
        return nil if visited.include?('Gateways')
        visited = visited + ['Gateways']
        [
          Gateway.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Gateway.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Gateway
    class Gateway
      def self.default(visited=[])
        return nil if visited.include?('Gateway')
        visited = visited + ['Gateway']
        {
          gateway_arn: 'gateway_arn',
          gateway_display_name: 'gateway_display_name',
          gateway_type: 'gateway_type',
          hypervisor_id: 'hypervisor_id',
          last_seen_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Gateway.new
        data = {}
        data['GatewayArn'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        data['GatewayDisplayName'] = stub[:gateway_display_name] unless stub[:gateway_display_name].nil?
        data['GatewayType'] = stub[:gateway_type] unless stub[:gateway_type].nil?
        data['HypervisorId'] = stub[:hypervisor_id] unless stub[:hypervisor_id].nil?
        data['LastSeenTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_seen_time]).to_i unless stub[:last_seen_time].nil?
        data
      end
    end

    # Operation Stubber for ListHypervisors
    class ListHypervisors
      def self.default(visited=[])
        {
          hypervisors: Hypervisors.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Hypervisors'] = Hypervisors.stub(stub[:hypervisors]) unless stub[:hypervisors].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Hypervisors
    class Hypervisors
      def self.default(visited=[])
        return nil if visited.include?('Hypervisors')
        visited = visited + ['Hypervisors']
        [
          Hypervisor.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Hypervisor.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Hypervisor
    class Hypervisor
      def self.default(visited=[])
        return nil if visited.include?('Hypervisor')
        visited = visited + ['Hypervisor']
        {
          host: 'host',
          hypervisor_arn: 'hypervisor_arn',
          kms_key_arn: 'kms_key_arn',
          name: 'name',
          state: 'state',
        }
      end

      def self.stub(stub)
        stub ||= Types::Hypervisor.new
        data = {}
        data['Host'] = stub[:host] unless stub[:host].nil?
        data['HypervisorArn'] = stub[:hypervisor_arn] unless stub[:hypervisor_arn].nil?
        data['KmsKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          resource_arn: 'resource_arn',
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['Tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
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

    # Operation Stubber for ListVirtualMachines
    class ListVirtualMachines
      def self.default(visited=[])
        {
          virtual_machines: VirtualMachines.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['VirtualMachines'] = VirtualMachines.stub(stub[:virtual_machines]) unless stub[:virtual_machines].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for VirtualMachines
    class VirtualMachines
      def self.default(visited=[])
        return nil if visited.include?('VirtualMachines')
        visited = visited + ['VirtualMachines']
        [
          VirtualMachine.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << VirtualMachine.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VirtualMachine
    class VirtualMachine
      def self.default(visited=[])
        return nil if visited.include?('VirtualMachine')
        visited = visited + ['VirtualMachine']
        {
          host_name: 'host_name',
          hypervisor_id: 'hypervisor_id',
          name: 'name',
          path: 'path',
          resource_arn: 'resource_arn',
          last_backup_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::VirtualMachine.new
        data = {}
        data['HostName'] = stub[:host_name] unless stub[:host_name].nil?
        data['HypervisorId'] = stub[:hypervisor_id] unless stub[:hypervisor_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Path'] = stub[:path] unless stub[:path].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['LastBackupDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_backup_date]).to_i unless stub[:last_backup_date].nil?
        data
      end
    end

    # Operation Stubber for PutMaintenanceStartTime
    class PutMaintenanceStartTime
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayArn'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
          resource_arn: 'resource_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourceARN'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TestHypervisorConfiguration
    class TestHypervisorConfiguration
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
          resource_arn: 'resource_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourceARN'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateGatewayInformation
    class UpdateGatewayInformation
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayArn'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateGatewaySoftwareNow
    class UpdateGatewaySoftwareNow
      def self.default(visited=[])
        {
          gateway_arn: 'gateway_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GatewayArn'] = stub[:gateway_arn] unless stub[:gateway_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateHypervisor
    class UpdateHypervisor
      def self.default(visited=[])
        {
          hypervisor_arn: 'hypervisor_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['HypervisorArn'] = stub[:hypervisor_arn] unless stub[:hypervisor_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
