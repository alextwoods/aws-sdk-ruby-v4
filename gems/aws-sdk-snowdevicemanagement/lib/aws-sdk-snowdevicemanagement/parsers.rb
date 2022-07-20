# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SnowDeviceManagement
  module Parsers

    # Operation Parser for CancelTask
    class CancelTask
      def self.parse(http_resp)
        data = Types::CancelTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.task_id = map['taskId']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateTask
    class CreateTask
      def self.parse(http_resp)
        data = Types::CreateTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.task_id = map['taskId']
        data.task_arn = map['taskArn']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for DescribeDevice
    class DescribeDevice
      def self.parse(http_resp)
        data = Types::DescribeDeviceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.last_reached_out_at = Time.at(map['lastReachedOutAt'].to_i) if map['lastReachedOutAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.managed_device_id = map['managedDeviceId']
        data.managed_device_arn = map['managedDeviceArn']
        data.device_type = map['deviceType']
        data.associated_with_job = map['associatedWithJob']
        data.device_state = map['deviceState']
        data.physical_network_interfaces = (Parsers::PhysicalNetworkInterfaceList.parse(map['physicalNetworkInterfaces']) unless map['physicalNetworkInterfaces'].nil?)
        data.device_capacities = (Parsers::CapacityList.parse(map['deviceCapacities']) unless map['deviceCapacities'].nil?)
        data.software = (Parsers::SoftwareInformation.parse(map['software']) unless map['software'].nil?)
        data
      end
    end

    class SoftwareInformation
      def self.parse(map)
        data = Types::SoftwareInformation.new
        data.installed_version = map['installedVersion']
        data.installing_version = map['installingVersion']
        data.install_state = map['installState']
        return data
      end
    end

    class CapacityList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Capacity.parse(value) unless value.nil?
        end
        data
      end
    end

    class Capacity
      def self.parse(map)
        data = Types::Capacity.new
        data.name = map['name']
        data.unit = map['unit']
        data.total = map['total']
        data.used = map['used']
        data.available = map['available']
        return data
      end
    end

    class PhysicalNetworkInterfaceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PhysicalNetworkInterface.parse(value) unless value.nil?
        end
        data
      end
    end

    class PhysicalNetworkInterface
      def self.parse(map)
        data = Types::PhysicalNetworkInterface.new
        data.physical_network_interface_id = map['physicalNetworkInterfaceId']
        data.physical_connector_type = map['physicalConnectorType']
        data.ip_address_assignment = map['ipAddressAssignment']
        data.ip_address = map['ipAddress']
        data.netmask = map['netmask']
        data.default_gateway = map['defaultGateway']
        data.mac_address = map['macAddress']
        return data
      end
    end

    class TagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeDeviceEc2Instances
    class DescribeDeviceEc2Instances
      def self.parse(http_resp)
        data = Types::DescribeDeviceEc2InstancesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.instances = (Parsers::InstanceSummaryList.parse(map['instances']) unless map['instances'].nil?)
        data
      end
    end

    class InstanceSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::InstanceSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class InstanceSummary
      def self.parse(map)
        data = Types::InstanceSummary.new
        data.instance = (Parsers::Instance.parse(map['instance']) unless map['instance'].nil?)
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        return data
      end
    end

    class Instance
      def self.parse(map)
        data = Types::Instance.new
        data.image_id = map['imageId']
        data.ami_launch_index = map['amiLaunchIndex']
        data.instance_id = map['instanceId']
        data.state = (Parsers::InstanceState.parse(map['state']) unless map['state'].nil?)
        data.instance_type = map['instanceType']
        data.private_ip_address = map['privateIpAddress']
        data.public_ip_address = map['publicIpAddress']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.updated_at = Time.at(map['updatedAt'].to_i) if map['updatedAt']
        data.block_device_mappings = (Parsers::InstanceBlockDeviceMappingList.parse(map['blockDeviceMappings']) unless map['blockDeviceMappings'].nil?)
        data.security_groups = (Parsers::SecurityGroupIdentifierList.parse(map['securityGroups']) unless map['securityGroups'].nil?)
        data.cpu_options = (Parsers::CpuOptions.parse(map['cpuOptions']) unless map['cpuOptions'].nil?)
        data.root_device_name = map['rootDeviceName']
        return data
      end
    end

    class CpuOptions
      def self.parse(map)
        data = Types::CpuOptions.new
        data.core_count = map['coreCount']
        data.threads_per_core = map['threadsPerCore']
        return data
      end
    end

    class SecurityGroupIdentifierList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SecurityGroupIdentifier.parse(value) unless value.nil?
        end
        data
      end
    end

    class SecurityGroupIdentifier
      def self.parse(map)
        data = Types::SecurityGroupIdentifier.new
        data.group_id = map['groupId']
        data.group_name = map['groupName']
        return data
      end
    end

    class InstanceBlockDeviceMappingList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::InstanceBlockDeviceMapping.parse(value) unless value.nil?
        end
        data
      end
    end

    class InstanceBlockDeviceMapping
      def self.parse(map)
        data = Types::InstanceBlockDeviceMapping.new
        data.device_name = map['deviceName']
        data.ebs = (Parsers::EbsInstanceBlockDevice.parse(map['ebs']) unless map['ebs'].nil?)
        return data
      end
    end

    class EbsInstanceBlockDevice
      def self.parse(map)
        data = Types::EbsInstanceBlockDevice.new
        data.attach_time = Time.at(map['attachTime'].to_i) if map['attachTime']
        data.delete_on_termination = map['deleteOnTermination']
        data.status = map['status']
        data.volume_id = map['volumeId']
        return data
      end
    end

    class InstanceState
      def self.parse(map)
        data = Types::InstanceState.new
        data.code = map['code']
        data.name = map['name']
        return data
      end
    end

    # Operation Parser for DescribeExecution
    class DescribeExecution
      def self.parse(http_resp)
        data = Types::DescribeExecutionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.task_id = map['taskId']
        data.execution_id = map['executionId']
        data.managed_device_id = map['managedDeviceId']
        data.state = map['state']
        data.started_at = Time.at(map['startedAt'].to_i) if map['startedAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data
      end
    end

    # Operation Parser for DescribeTask
    class DescribeTask
      def self.parse(http_resp)
        data = Types::DescribeTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.task_id = map['taskId']
        data.task_arn = map['taskArn']
        data.targets = (Parsers::TargetList.parse(map['targets']) unless map['targets'].nil?)
        data.state = map['state']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.completed_at = Time.at(map['completedAt'].to_i) if map['completedAt']
        data.description = map['description']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class TargetList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListDeviceResources
    class ListDeviceResources
      def self.parse(http_resp)
        data = Types::ListDeviceResourcesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resources = (Parsers::ResourceSummaryList.parse(map['resources']) unless map['resources'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ResourceSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ResourceSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ResourceSummary
      def self.parse(map)
        data = Types::ResourceSummary.new
        data.resource_type = map['resourceType']
        data.arn = map['arn']
        data.id = map['id']
        return data
      end
    end

    # Operation Parser for ListDevices
    class ListDevices
      def self.parse(http_resp)
        data = Types::ListDevicesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.devices = (Parsers::DeviceSummaryList.parse(map['devices']) unless map['devices'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DeviceSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DeviceSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class DeviceSummary
      def self.parse(map)
        data = Types::DeviceSummary.new
        data.managed_device_id = map['managedDeviceId']
        data.managed_device_arn = map['managedDeviceArn']
        data.associated_with_job = map['associatedWithJob']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListExecutions
    class ListExecutions
      def self.parse(http_resp)
        data = Types::ListExecutionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.executions = (Parsers::ExecutionSummaryList.parse(map['executions']) unless map['executions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ExecutionSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ExecutionSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ExecutionSummary
      def self.parse(map)
        data = Types::ExecutionSummary.new
        data.task_id = map['taskId']
        data.execution_id = map['executionId']
        data.managed_device_id = map['managedDeviceId']
        data.state = map['state']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for ListTasks
    class ListTasks
      def self.parse(http_resp)
        data = Types::ListTasksOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tasks = (Parsers::TaskSummaryList.parse(map['tasks']) unless map['tasks'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class TaskSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::TaskSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class TaskSummary
      def self.parse(map)
        data = Types::TaskSummary.new
        data.task_id = map['taskId']
        data.task_arn = map['taskArn']
        data.state = map['state']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
