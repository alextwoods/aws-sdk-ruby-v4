# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::SnowDeviceManagement
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module CancelTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelTaskInput, context: context)
        type = Types::CancelTaskInput.new
        type.task_id = params[:task_id]
        type
      end
    end

    module CancelTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelTaskOutput, context: context)
        type = Types::CancelTaskOutput.new
        type.task_id = params[:task_id]
        type
      end
    end

    module Capacity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Capacity, context: context)
        type = Types::Capacity.new
        type.name = params[:name]
        type.unit = params[:unit]
        type.total = params[:total]
        type.used = params[:used]
        type.available = params[:available]
        type
      end
    end

    module CapacityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Capacity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Command
      def self.build(params, context: '')
        return params if params.is_a?(Types::Command)
        Hearth::Validator.validate!(params, ::Hash, Types::Command, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :unlock
          Types::Command::Unlock.new(
            (Unlock.build(params[:unlock], context: "#{context}[:unlock]") unless params[:unlock].nil?)
          )
        when :reboot
          Types::Command::Reboot.new(
            (Reboot.build(params[:reboot], context: "#{context}[:reboot]") unless params[:reboot].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :unlock, :reboot set"
        end
      end
    end

    module CpuOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CpuOptions, context: context)
        type = Types::CpuOptions.new
        type.core_count = params[:core_count]
        type.threads_per_core = params[:threads_per_core]
        type
      end
    end

    module CreateTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTaskInput, context: context)
        type = Types::CreateTaskInput.new
        type.targets = TargetList.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.command = Command.build(params[:command], context: "#{context}[:command]") unless params[:command].nil?
        type.description = params[:description]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreateTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTaskOutput, context: context)
        type = Types::CreateTaskOutput.new
        type.task_id = params[:task_id]
        type.task_arn = params[:task_arn]
        type
      end
    end

    module DescribeDeviceEc2InstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDeviceEc2InstancesInput, context: context)
        type = Types::DescribeDeviceEc2InstancesInput.new
        type.managed_device_id = params[:managed_device_id]
        type.instance_ids = InstanceIdsList.build(params[:instance_ids], context: "#{context}[:instance_ids]") unless params[:instance_ids].nil?
        type
      end
    end

    module DescribeDeviceEc2InstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDeviceEc2InstancesOutput, context: context)
        type = Types::DescribeDeviceEc2InstancesOutput.new
        type.instances = InstanceSummaryList.build(params[:instances], context: "#{context}[:instances]") unless params[:instances].nil?
        type
      end
    end

    module DescribeDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDeviceInput, context: context)
        type = Types::DescribeDeviceInput.new
        type.managed_device_id = params[:managed_device_id]
        type
      end
    end

    module DescribeDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDeviceOutput, context: context)
        type = Types::DescribeDeviceOutput.new
        type.last_reached_out_at = params[:last_reached_out_at]
        type.last_updated_at = params[:last_updated_at]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.managed_device_id = params[:managed_device_id]
        type.managed_device_arn = params[:managed_device_arn]
        type.device_type = params[:device_type]
        type.associated_with_job = params[:associated_with_job]
        type.device_state = params[:device_state]
        type.physical_network_interfaces = PhysicalNetworkInterfaceList.build(params[:physical_network_interfaces], context: "#{context}[:physical_network_interfaces]") unless params[:physical_network_interfaces].nil?
        type.device_capacities = CapacityList.build(params[:device_capacities], context: "#{context}[:device_capacities]") unless params[:device_capacities].nil?
        type.software = SoftwareInformation.build(params[:software], context: "#{context}[:software]") unless params[:software].nil?
        type
      end
    end

    module DescribeExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeExecutionInput, context: context)
        type = Types::DescribeExecutionInput.new
        type.task_id = params[:task_id]
        type.managed_device_id = params[:managed_device_id]
        type
      end
    end

    module DescribeExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeExecutionOutput, context: context)
        type = Types::DescribeExecutionOutput.new
        type.task_id = params[:task_id]
        type.execution_id = params[:execution_id]
        type.managed_device_id = params[:managed_device_id]
        type.state = params[:state]
        type.started_at = params[:started_at]
        type.last_updated_at = params[:last_updated_at]
        type
      end
    end

    module DescribeTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTaskInput, context: context)
        type = Types::DescribeTaskInput.new
        type.task_id = params[:task_id]
        type
      end
    end

    module DescribeTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTaskOutput, context: context)
        type = Types::DescribeTaskOutput.new
        type.task_id = params[:task_id]
        type.task_arn = params[:task_arn]
        type.targets = TargetList.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.state = params[:state]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.completed_at = params[:completed_at]
        type.description = params[:description]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DeviceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceSummary, context: context)
        type = Types::DeviceSummary.new
        type.managed_device_id = params[:managed_device_id]
        type.managed_device_arn = params[:managed_device_arn]
        type.associated_with_job = params[:associated_with_job]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DeviceSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeviceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EbsInstanceBlockDevice
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EbsInstanceBlockDevice, context: context)
        type = Types::EbsInstanceBlockDevice.new
        type.attach_time = params[:attach_time]
        type.delete_on_termination = params[:delete_on_termination]
        type.status = params[:status]
        type.volume_id = params[:volume_id]
        type
      end
    end

    module ExecutionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecutionSummary, context: context)
        type = Types::ExecutionSummary.new
        type.task_id = params[:task_id]
        type.execution_id = params[:execution_id]
        type.managed_device_id = params[:managed_device_id]
        type.state = params[:state]
        type
      end
    end

    module ExecutionSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExecutionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Instance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Instance, context: context)
        type = Types::Instance.new
        type.image_id = params[:image_id]
        type.ami_launch_index = params[:ami_launch_index]
        type.instance_id = params[:instance_id]
        type.state = InstanceState.build(params[:state], context: "#{context}[:state]") unless params[:state].nil?
        type.instance_type = params[:instance_type]
        type.private_ip_address = params[:private_ip_address]
        type.public_ip_address = params[:public_ip_address]
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type.block_device_mappings = InstanceBlockDeviceMappingList.build(params[:block_device_mappings], context: "#{context}[:block_device_mappings]") unless params[:block_device_mappings].nil?
        type.security_groups = SecurityGroupIdentifierList.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.cpu_options = CpuOptions.build(params[:cpu_options], context: "#{context}[:cpu_options]") unless params[:cpu_options].nil?
        type.root_device_name = params[:root_device_name]
        type
      end
    end

    module InstanceBlockDeviceMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceBlockDeviceMapping, context: context)
        type = Types::InstanceBlockDeviceMapping.new
        type.device_name = params[:device_name]
        type.ebs = EbsInstanceBlockDevice.build(params[:ebs], context: "#{context}[:ebs]") unless params[:ebs].nil?
        type
      end
    end

    module InstanceBlockDeviceMappingList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceBlockDeviceMapping.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstanceIdsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InstanceState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceState, context: context)
        type = Types::InstanceState.new
        type.code = params[:code]
        type.name = params[:name]
        type
      end
    end

    module InstanceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceSummary, context: context)
        type = Types::InstanceSummary.new
        type.instance = Instance.build(params[:instance], context: "#{context}[:instance]") unless params[:instance].nil?
        type.last_updated_at = params[:last_updated_at]
        type
      end
    end

    module InstanceSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module ListDeviceResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeviceResourcesInput, context: context)
        type = Types::ListDeviceResourcesInput.new
        type.managed_device_id = params[:managed_device_id]
        type.type = params[:type]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDeviceResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeviceResourcesOutput, context: context)
        type = Types::ListDeviceResourcesOutput.new
        type.resources = ResourceSummaryList.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDevicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDevicesInput, context: context)
        type = Types::ListDevicesInput.new
        type.job_id = params[:job_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDevicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDevicesOutput, context: context)
        type = Types::ListDevicesOutput.new
        type.devices = DeviceSummaryList.build(params[:devices], context: "#{context}[:devices]") unless params[:devices].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListExecutionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListExecutionsInput, context: context)
        type = Types::ListExecutionsInput.new
        type.task_id = params[:task_id]
        type.state = params[:state]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListExecutionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListExecutionsOutput, context: context)
        type = Types::ListExecutionsOutput.new
        type.executions = ExecutionSummaryList.build(params[:executions], context: "#{context}[:executions]") unless params[:executions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListTasksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTasksInput, context: context)
        type = Types::ListTasksInput.new
        type.state = params[:state]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTasksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTasksOutput, context: context)
        type = Types::ListTasksOutput.new
        type.tasks = TaskSummaryList.build(params[:tasks], context: "#{context}[:tasks]") unless params[:tasks].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module PhysicalNetworkInterface
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PhysicalNetworkInterface, context: context)
        type = Types::PhysicalNetworkInterface.new
        type.physical_network_interface_id = params[:physical_network_interface_id]
        type.physical_connector_type = params[:physical_connector_type]
        type.ip_address_assignment = params[:ip_address_assignment]
        type.ip_address = params[:ip_address]
        type.netmask = params[:netmask]
        type.default_gateway = params[:default_gateway]
        type.mac_address = params[:mac_address]
        type
      end
    end

    module PhysicalNetworkInterfaceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PhysicalNetworkInterface.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Reboot
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Reboot, context: context)
        type = Types::Reboot.new
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceSummary, context: context)
        type = Types::ResourceSummary.new
        type.resource_type = params[:resource_type]
        type.arn = params[:arn]
        type.id = params[:id]
        type
      end
    end

    module ResourceSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SecurityGroupIdentifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SecurityGroupIdentifier, context: context)
        type = Types::SecurityGroupIdentifier.new
        type.group_id = params[:group_id]
        type.group_name = params[:group_name]
        type
      end
    end

    module SecurityGroupIdentifierList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SecurityGroupIdentifier.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type
      end
    end

    module SoftwareInformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SoftwareInformation, context: context)
        type = Types::SoftwareInformation.new
        type.installed_version = params[:installed_version]
        type.installing_version = params[:installing_version]
        type.install_state = params[:install_state]
        type
      end
    end

    module TagKeys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module TargetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TaskSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskSummary, context: context)
        type = Types::TaskSummary.new
        type.task_id = params[:task_id]
        type.task_arn = params[:task_arn]
        type.state = params[:state]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TaskSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TaskSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module Unlock
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Unlock, context: context)
        type = Types::Unlock.new
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeys.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

  end
end
