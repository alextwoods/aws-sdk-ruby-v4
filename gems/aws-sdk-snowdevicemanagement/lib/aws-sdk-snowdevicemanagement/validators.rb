# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::SnowDeviceManagement
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CancelTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelTaskInput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
      end
    end

    class CancelTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelTaskOutput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
      end
    end

    class Capacity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Capacity, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
        Hearth::Validator.validate!(input[:total], ::Integer, context: "#{context}[:total]")
        Hearth::Validator.validate!(input[:used], ::Integer, context: "#{context}[:used]")
        Hearth::Validator.validate!(input[:available], ::Integer, context: "#{context}[:available]")
      end
    end

    class CapacityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Capacity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Command
      def self.validate!(input, context:)
        case input
        when Types::Command::Unlock
          Unlock.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::Command::Reboot
          Reboot.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::Command, got #{input.class}."
        end
      end

      class Unlock
        def self.validate!(input, context:)
          Validators::Unlock.validate!(input, context: context) unless input.nil?
        end
      end

      class Reboot
        def self.validate!(input, context:)
          Validators::Reboot.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class CpuOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CpuOptions, context: context)
        Hearth::Validator.validate!(input[:core_count], ::Integer, context: "#{context}[:core_count]")
        Hearth::Validator.validate!(input[:threads_per_core], ::Integer, context: "#{context}[:threads_per_core]")
      end
    end

    class CreateTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTaskInput, context: context)
        TargetList.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Command.validate!(input[:command], context: "#{context}[:command]") unless input[:command].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTaskOutput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
        Hearth::Validator.validate!(input[:task_arn], ::String, context: "#{context}[:task_arn]")
      end
    end

    class DescribeDeviceEc2InstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDeviceEc2InstancesInput, context: context)
        Hearth::Validator.validate!(input[:managed_device_id], ::String, context: "#{context}[:managed_device_id]")
        InstanceIdsList.validate!(input[:instance_ids], context: "#{context}[:instance_ids]") unless input[:instance_ids].nil?
      end
    end

    class DescribeDeviceEc2InstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDeviceEc2InstancesOutput, context: context)
        InstanceSummaryList.validate!(input[:instances], context: "#{context}[:instances]") unless input[:instances].nil?
      end
    end

    class DescribeDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDeviceInput, context: context)
        Hearth::Validator.validate!(input[:managed_device_id], ::String, context: "#{context}[:managed_device_id]")
      end
    end

    class DescribeDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDeviceOutput, context: context)
        Hearth::Validator.validate!(input[:last_reached_out_at], ::Time, context: "#{context}[:last_reached_out_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:managed_device_id], ::String, context: "#{context}[:managed_device_id]")
        Hearth::Validator.validate!(input[:managed_device_arn], ::String, context: "#{context}[:managed_device_arn]")
        Hearth::Validator.validate!(input[:device_type], ::String, context: "#{context}[:device_type]")
        Hearth::Validator.validate!(input[:associated_with_job], ::String, context: "#{context}[:associated_with_job]")
        Hearth::Validator.validate!(input[:device_state], ::String, context: "#{context}[:device_state]")
        PhysicalNetworkInterfaceList.validate!(input[:physical_network_interfaces], context: "#{context}[:physical_network_interfaces]") unless input[:physical_network_interfaces].nil?
        CapacityList.validate!(input[:device_capacities], context: "#{context}[:device_capacities]") unless input[:device_capacities].nil?
        SoftwareInformation.validate!(input[:software], context: "#{context}[:software]") unless input[:software].nil?
      end
    end

    class DescribeExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeExecutionInput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
        Hearth::Validator.validate!(input[:managed_device_id], ::String, context: "#{context}[:managed_device_id]")
      end
    end

    class DescribeExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeExecutionOutput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
        Hearth::Validator.validate!(input[:execution_id], ::String, context: "#{context}[:execution_id]")
        Hearth::Validator.validate!(input[:managed_device_id], ::String, context: "#{context}[:managed_device_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:started_at], ::Time, context: "#{context}[:started_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
      end
    end

    class DescribeTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTaskInput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
      end
    end

    class DescribeTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTaskOutput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
        Hearth::Validator.validate!(input[:task_arn], ::String, context: "#{context}[:task_arn]")
        TargetList.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:completed_at], ::Time, context: "#{context}[:completed_at]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DeviceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceSummary, context: context)
        Hearth::Validator.validate!(input[:managed_device_id], ::String, context: "#{context}[:managed_device_id]")
        Hearth::Validator.validate!(input[:managed_device_arn], ::String, context: "#{context}[:managed_device_arn]")
        Hearth::Validator.validate!(input[:associated_with_job], ::String, context: "#{context}[:associated_with_job]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DeviceSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DeviceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EbsInstanceBlockDevice
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EbsInstanceBlockDevice, context: context)
        Hearth::Validator.validate!(input[:attach_time], ::Time, context: "#{context}[:attach_time]")
        Hearth::Validator.validate!(input[:delete_on_termination], ::TrueClass, ::FalseClass, context: "#{context}[:delete_on_termination]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:volume_id], ::String, context: "#{context}[:volume_id]")
      end
    end

    class ExecutionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecutionSummary, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
        Hearth::Validator.validate!(input[:execution_id], ::String, context: "#{context}[:execution_id]")
        Hearth::Validator.validate!(input[:managed_device_id], ::String, context: "#{context}[:managed_device_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class ExecutionSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ExecutionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Instance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Instance, context: context)
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
        Hearth::Validator.validate!(input[:ami_launch_index], ::Integer, context: "#{context}[:ami_launch_index]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        InstanceState.validate!(input[:state], context: "#{context}[:state]") unless input[:state].nil?
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:private_ip_address], ::String, context: "#{context}[:private_ip_address]")
        Hearth::Validator.validate!(input[:public_ip_address], ::String, context: "#{context}[:public_ip_address]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        InstanceBlockDeviceMappingList.validate!(input[:block_device_mappings], context: "#{context}[:block_device_mappings]") unless input[:block_device_mappings].nil?
        SecurityGroupIdentifierList.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        CpuOptions.validate!(input[:cpu_options], context: "#{context}[:cpu_options]") unless input[:cpu_options].nil?
        Hearth::Validator.validate!(input[:root_device_name], ::String, context: "#{context}[:root_device_name]")
      end
    end

    class InstanceBlockDeviceMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceBlockDeviceMapping, context: context)
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
        EbsInstanceBlockDevice.validate!(input[:ebs], context: "#{context}[:ebs]") unless input[:ebs].nil?
      end
    end

    class InstanceBlockDeviceMappingList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InstanceBlockDeviceMapping.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstanceIdsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InstanceState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceState, context: context)
        Hearth::Validator.validate!(input[:code], ::Integer, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class InstanceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceSummary, context: context)
        Instance.validate!(input[:instance], context: "#{context}[:instance]") unless input[:instance].nil?
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
      end
    end

    class InstanceSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InstanceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListDeviceResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeviceResourcesInput, context: context)
        Hearth::Validator.validate!(input[:managed_device_id], ::String, context: "#{context}[:managed_device_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDeviceResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeviceResourcesOutput, context: context)
        ResourceSummaryList.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDevicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDevicesInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDevicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDevicesOutput, context: context)
        DeviceSummaryList.validate!(input[:devices], context: "#{context}[:devices]") unless input[:devices].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListExecutionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExecutionsInput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListExecutionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExecutionsOutput, context: context)
        ExecutionSummaryList.validate!(input[:executions], context: "#{context}[:executions]") unless input[:executions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListTasksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTasksInput, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTasksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTasksOutput, context: context)
        TaskSummaryList.validate!(input[:tasks], context: "#{context}[:tasks]") unless input[:tasks].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class PhysicalNetworkInterface
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PhysicalNetworkInterface, context: context)
        Hearth::Validator.validate!(input[:physical_network_interface_id], ::String, context: "#{context}[:physical_network_interface_id]")
        Hearth::Validator.validate!(input[:physical_connector_type], ::String, context: "#{context}[:physical_connector_type]")
        Hearth::Validator.validate!(input[:ip_address_assignment], ::String, context: "#{context}[:ip_address_assignment]")
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
        Hearth::Validator.validate!(input[:netmask], ::String, context: "#{context}[:netmask]")
        Hearth::Validator.validate!(input[:default_gateway], ::String, context: "#{context}[:default_gateway]")
        Hearth::Validator.validate!(input[:mac_address], ::String, context: "#{context}[:mac_address]")
      end
    end

    class PhysicalNetworkInterfaceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PhysicalNetworkInterface.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Reboot
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Reboot, context: context)
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceSummary, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class ResourceSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResourceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SecurityGroupIdentifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SecurityGroupIdentifier, context: context)
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
      end
    end

    class SecurityGroupIdentifierList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SecurityGroupIdentifier.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SoftwareInformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SoftwareInformation, context: context)
        Hearth::Validator.validate!(input[:installed_version], ::String, context: "#{context}[:installed_version]")
        Hearth::Validator.validate!(input[:installing_version], ::String, context: "#{context}[:installing_version]")
        Hearth::Validator.validate!(input[:install_state], ::String, context: "#{context}[:install_state]")
      end
    end

    class TagKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TargetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TaskSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskSummary, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
        Hearth::Validator.validate!(input[:task_arn], ::String, context: "#{context}[:task_arn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TaskSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TaskSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Unlock
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Unlock, context: context)
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeys.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
