# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::SnowDeviceManagement
  module Stubs

    # Operation Stubber for CancelTask
    class CancelTask
      def self.default(visited=[])
        {
          task_id: 'task_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['taskId'] = stub[:task_id] unless stub[:task_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateTask
    class CreateTask
      def self.default(visited=[])
        {
          task_id: 'task_id',
          task_arn: 'task_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['taskId'] = stub[:task_id] unless stub[:task_id].nil?
        data['taskArn'] = stub[:task_arn] unless stub[:task_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeDevice
    class DescribeDevice
      def self.default(visited=[])
        {
          last_reached_out_at: Time.now,
          last_updated_at: Time.now,
          tags: TagMap.default(visited),
          managed_device_id: 'managed_device_id',
          managed_device_arn: 'managed_device_arn',
          device_type: 'device_type',
          associated_with_job: 'associated_with_job',
          device_state: 'device_state',
          physical_network_interfaces: PhysicalNetworkInterfaceList.default(visited),
          device_capacities: CapacityList.default(visited),
          software: SoftwareInformation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['lastReachedOutAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_reached_out_at]).to_i unless stub[:last_reached_out_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['managedDeviceId'] = stub[:managed_device_id] unless stub[:managed_device_id].nil?
        data['managedDeviceArn'] = stub[:managed_device_arn] unless stub[:managed_device_arn].nil?
        data['deviceType'] = stub[:device_type] unless stub[:device_type].nil?
        data['associatedWithJob'] = stub[:associated_with_job] unless stub[:associated_with_job].nil?
        data['deviceState'] = stub[:device_state] unless stub[:device_state].nil?
        data['physicalNetworkInterfaces'] = PhysicalNetworkInterfaceList.stub(stub[:physical_network_interfaces]) unless stub[:physical_network_interfaces].nil?
        data['deviceCapacities'] = CapacityList.stub(stub[:device_capacities]) unless stub[:device_capacities].nil?
        data['software'] = SoftwareInformation.stub(stub[:software]) unless stub[:software].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for SoftwareInformation
    class SoftwareInformation
      def self.default(visited=[])
        return nil if visited.include?('SoftwareInformation')
        visited = visited + ['SoftwareInformation']
        {
          installed_version: 'installed_version',
          installing_version: 'installing_version',
          install_state: 'install_state',
        }
      end

      def self.stub(stub)
        stub ||= Types::SoftwareInformation.new
        data = {}
        data['installedVersion'] = stub[:installed_version] unless stub[:installed_version].nil?
        data['installingVersion'] = stub[:installing_version] unless stub[:installing_version].nil?
        data['installState'] = stub[:install_state] unless stub[:install_state].nil?
        data
      end
    end

    # List Stubber for CapacityList
    class CapacityList
      def self.default(visited=[])
        return nil if visited.include?('CapacityList')
        visited = visited + ['CapacityList']
        [
          Capacity.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Capacity.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Capacity
    class Capacity
      def self.default(visited=[])
        return nil if visited.include?('Capacity')
        visited = visited + ['Capacity']
        {
          name: 'name',
          unit: 'unit',
          total: 1,
          used: 1,
          available: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Capacity.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['unit'] = stub[:unit] unless stub[:unit].nil?
        data['total'] = stub[:total] unless stub[:total].nil?
        data['used'] = stub[:used] unless stub[:used].nil?
        data['available'] = stub[:available] unless stub[:available].nil?
        data
      end
    end

    # List Stubber for PhysicalNetworkInterfaceList
    class PhysicalNetworkInterfaceList
      def self.default(visited=[])
        return nil if visited.include?('PhysicalNetworkInterfaceList')
        visited = visited + ['PhysicalNetworkInterfaceList']
        [
          PhysicalNetworkInterface.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PhysicalNetworkInterface.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PhysicalNetworkInterface
    class PhysicalNetworkInterface
      def self.default(visited=[])
        return nil if visited.include?('PhysicalNetworkInterface')
        visited = visited + ['PhysicalNetworkInterface']
        {
          physical_network_interface_id: 'physical_network_interface_id',
          physical_connector_type: 'physical_connector_type',
          ip_address_assignment: 'ip_address_assignment',
          ip_address: 'ip_address',
          netmask: 'netmask',
          default_gateway: 'default_gateway',
          mac_address: 'mac_address',
        }
      end

      def self.stub(stub)
        stub ||= Types::PhysicalNetworkInterface.new
        data = {}
        data['physicalNetworkInterfaceId'] = stub[:physical_network_interface_id] unless stub[:physical_network_interface_id].nil?
        data['physicalConnectorType'] = stub[:physical_connector_type] unless stub[:physical_connector_type].nil?
        data['ipAddressAssignment'] = stub[:ip_address_assignment] unless stub[:ip_address_assignment].nil?
        data['ipAddress'] = stub[:ip_address] unless stub[:ip_address].nil?
        data['netmask'] = stub[:netmask] unless stub[:netmask].nil?
        data['defaultGateway'] = stub[:default_gateway] unless stub[:default_gateway].nil?
        data['macAddress'] = stub[:mac_address] unless stub[:mac_address].nil?
        data
      end
    end

    # Map Stubber for TagMap
    class TagMap
      def self.default(visited=[])
        return nil if visited.include?('TagMap')
        visited = visited + ['TagMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeDeviceEc2Instances
    class DescribeDeviceEc2Instances
      def self.default(visited=[])
        {
          instances: InstanceSummaryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['instances'] = InstanceSummaryList.stub(stub[:instances]) unless stub[:instances].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for InstanceSummaryList
    class InstanceSummaryList
      def self.default(visited=[])
        return nil if visited.include?('InstanceSummaryList')
        visited = visited + ['InstanceSummaryList']
        [
          InstanceSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << InstanceSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InstanceSummary
    class InstanceSummary
      def self.default(visited=[])
        return nil if visited.include?('InstanceSummary')
        visited = visited + ['InstanceSummary']
        {
          instance: Instance.default(visited),
          last_updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceSummary.new
        data = {}
        data['instance'] = Instance.stub(stub[:instance]) unless stub[:instance].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data
      end
    end

    # Structure Stubber for Instance
    class Instance
      def self.default(visited=[])
        return nil if visited.include?('Instance')
        visited = visited + ['Instance']
        {
          image_id: 'image_id',
          ami_launch_index: 1,
          instance_id: 'instance_id',
          state: InstanceState.default(visited),
          instance_type: 'instance_type',
          private_ip_address: 'private_ip_address',
          public_ip_address: 'public_ip_address',
          created_at: Time.now,
          updated_at: Time.now,
          block_device_mappings: InstanceBlockDeviceMappingList.default(visited),
          security_groups: SecurityGroupIdentifierList.default(visited),
          cpu_options: CpuOptions.default(visited),
          root_device_name: 'root_device_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::Instance.new
        data = {}
        data['imageId'] = stub[:image_id] unless stub[:image_id].nil?
        data['amiLaunchIndex'] = stub[:ami_launch_index] unless stub[:ami_launch_index].nil?
        data['instanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['state'] = InstanceState.stub(stub[:state]) unless stub[:state].nil?
        data['instanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['privateIpAddress'] = stub[:private_ip_address] unless stub[:private_ip_address].nil?
        data['publicIpAddress'] = stub[:public_ip_address] unless stub[:public_ip_address].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['updatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data['blockDeviceMappings'] = InstanceBlockDeviceMappingList.stub(stub[:block_device_mappings]) unless stub[:block_device_mappings].nil?
        data['securityGroups'] = SecurityGroupIdentifierList.stub(stub[:security_groups]) unless stub[:security_groups].nil?
        data['cpuOptions'] = CpuOptions.stub(stub[:cpu_options]) unless stub[:cpu_options].nil?
        data['rootDeviceName'] = stub[:root_device_name] unless stub[:root_device_name].nil?
        data
      end
    end

    # Structure Stubber for CpuOptions
    class CpuOptions
      def self.default(visited=[])
        return nil if visited.include?('CpuOptions')
        visited = visited + ['CpuOptions']
        {
          core_count: 1,
          threads_per_core: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::CpuOptions.new
        data = {}
        data['coreCount'] = stub[:core_count] unless stub[:core_count].nil?
        data['threadsPerCore'] = stub[:threads_per_core] unless stub[:threads_per_core].nil?
        data
      end
    end

    # List Stubber for SecurityGroupIdentifierList
    class SecurityGroupIdentifierList
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupIdentifierList')
        visited = visited + ['SecurityGroupIdentifierList']
        [
          SecurityGroupIdentifier.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SecurityGroupIdentifier.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SecurityGroupIdentifier
    class SecurityGroupIdentifier
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupIdentifier')
        visited = visited + ['SecurityGroupIdentifier']
        {
          group_id: 'group_id',
          group_name: 'group_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::SecurityGroupIdentifier.new
        data = {}
        data['groupId'] = stub[:group_id] unless stub[:group_id].nil?
        data['groupName'] = stub[:group_name] unless stub[:group_name].nil?
        data
      end
    end

    # List Stubber for InstanceBlockDeviceMappingList
    class InstanceBlockDeviceMappingList
      def self.default(visited=[])
        return nil if visited.include?('InstanceBlockDeviceMappingList')
        visited = visited + ['InstanceBlockDeviceMappingList']
        [
          InstanceBlockDeviceMapping.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << InstanceBlockDeviceMapping.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InstanceBlockDeviceMapping
    class InstanceBlockDeviceMapping
      def self.default(visited=[])
        return nil if visited.include?('InstanceBlockDeviceMapping')
        visited = visited + ['InstanceBlockDeviceMapping']
        {
          device_name: 'device_name',
          ebs: EbsInstanceBlockDevice.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceBlockDeviceMapping.new
        data = {}
        data['deviceName'] = stub[:device_name] unless stub[:device_name].nil?
        data['ebs'] = EbsInstanceBlockDevice.stub(stub[:ebs]) unless stub[:ebs].nil?
        data
      end
    end

    # Structure Stubber for EbsInstanceBlockDevice
    class EbsInstanceBlockDevice
      def self.default(visited=[])
        return nil if visited.include?('EbsInstanceBlockDevice')
        visited = visited + ['EbsInstanceBlockDevice']
        {
          attach_time: Time.now,
          delete_on_termination: false,
          status: 'status',
          volume_id: 'volume_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::EbsInstanceBlockDevice.new
        data = {}
        data['attachTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:attach_time]).to_i unless stub[:attach_time].nil?
        data['deleteOnTermination'] = stub[:delete_on_termination] unless stub[:delete_on_termination].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['volumeId'] = stub[:volume_id] unless stub[:volume_id].nil?
        data
      end
    end

    # Structure Stubber for InstanceState
    class InstanceState
      def self.default(visited=[])
        return nil if visited.include?('InstanceState')
        visited = visited + ['InstanceState']
        {
          code: 1,
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceState.new
        data = {}
        data['code'] = stub[:code] unless stub[:code].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for DescribeExecution
    class DescribeExecution
      def self.default(visited=[])
        {
          task_id: 'task_id',
          execution_id: 'execution_id',
          managed_device_id: 'managed_device_id',
          state: 'state',
          started_at: Time.now,
          last_updated_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['taskId'] = stub[:task_id] unless stub[:task_id].nil?
        data['executionId'] = stub[:execution_id] unless stub[:execution_id].nil?
        data['managedDeviceId'] = stub[:managed_device_id] unless stub[:managed_device_id].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['startedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started_at]).to_i unless stub[:started_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeTask
    class DescribeTask
      def self.default(visited=[])
        {
          task_id: 'task_id',
          task_arn: 'task_arn',
          targets: TargetList.default(visited),
          state: 'state',
          created_at: Time.now,
          last_updated_at: Time.now,
          completed_at: Time.now,
          description: 'description',
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['taskId'] = stub[:task_id] unless stub[:task_id].nil?
        data['taskArn'] = stub[:task_arn] unless stub[:task_arn].nil?
        data['targets'] = TargetList.stub(stub[:targets]) unless stub[:targets].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['completedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completed_at]).to_i unless stub[:completed_at].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TargetList
    class TargetList
      def self.default(visited=[])
        return nil if visited.include?('TargetList')
        visited = visited + ['TargetList']
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

    # Operation Stubber for ListDeviceResources
    class ListDeviceResources
      def self.default(visited=[])
        {
          resources: ResourceSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['resources'] = ResourceSummaryList.stub(stub[:resources]) unless stub[:resources].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ResourceSummaryList
    class ResourceSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ResourceSummaryList')
        visited = visited + ['ResourceSummaryList']
        [
          ResourceSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ResourceSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceSummary
    class ResourceSummary
      def self.default(visited=[])
        return nil if visited.include?('ResourceSummary')
        visited = visited + ['ResourceSummary']
        {
          resource_type: 'resource_type',
          arn: 'arn',
          id: 'id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceSummary.new
        data = {}
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data
      end
    end

    # Operation Stubber for ListDevices
    class ListDevices
      def self.default(visited=[])
        {
          devices: DeviceSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['devices'] = DeviceSummaryList.stub(stub[:devices]) unless stub[:devices].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DeviceSummaryList
    class DeviceSummaryList
      def self.default(visited=[])
        return nil if visited.include?('DeviceSummaryList')
        visited = visited + ['DeviceSummaryList']
        [
          DeviceSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DeviceSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DeviceSummary
    class DeviceSummary
      def self.default(visited=[])
        return nil if visited.include?('DeviceSummary')
        visited = visited + ['DeviceSummary']
        {
          managed_device_id: 'managed_device_id',
          managed_device_arn: 'managed_device_arn',
          associated_with_job: 'associated_with_job',
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DeviceSummary.new
        data = {}
        data['managedDeviceId'] = stub[:managed_device_id] unless stub[:managed_device_id].nil?
        data['managedDeviceArn'] = stub[:managed_device_arn] unless stub[:managed_device_arn].nil?
        data['associatedWithJob'] = stub[:associated_with_job] unless stub[:associated_with_job].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListExecutions
    class ListExecutions
      def self.default(visited=[])
        {
          executions: ExecutionSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['executions'] = ExecutionSummaryList.stub(stub[:executions]) unless stub[:executions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ExecutionSummaryList
    class ExecutionSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ExecutionSummaryList')
        visited = visited + ['ExecutionSummaryList']
        [
          ExecutionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ExecutionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ExecutionSummary
    class ExecutionSummary
      def self.default(visited=[])
        return nil if visited.include?('ExecutionSummary')
        visited = visited + ['ExecutionSummary']
        {
          task_id: 'task_id',
          execution_id: 'execution_id',
          managed_device_id: 'managed_device_id',
          state: 'state',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExecutionSummary.new
        data = {}
        data['taskId'] = stub[:task_id] unless stub[:task_id].nil?
        data['executionId'] = stub[:execution_id] unless stub[:execution_id].nil?
        data['managedDeviceId'] = stub[:managed_device_id] unless stub[:managed_device_id].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListTasks
    class ListTasks
      def self.default(visited=[])
        {
          tasks: TaskSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tasks'] = TaskSummaryList.stub(stub[:tasks]) unless stub[:tasks].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TaskSummaryList
    class TaskSummaryList
      def self.default(visited=[])
        return nil if visited.include?('TaskSummaryList')
        visited = visited + ['TaskSummaryList']
        [
          TaskSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TaskSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TaskSummary
    class TaskSummary
      def self.default(visited=[])
        return nil if visited.include?('TaskSummary')
        visited = visited + ['TaskSummary']
        {
          task_id: 'task_id',
          task_arn: 'task_arn',
          state: 'state',
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TaskSummary.new
        data = {}
        data['taskId'] = stub[:task_id] unless stub[:task_id].nil?
        data['taskArn'] = stub[:task_arn] unless stub[:task_arn].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
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
        http_resp.status = 200
      end
    end
  end
end
