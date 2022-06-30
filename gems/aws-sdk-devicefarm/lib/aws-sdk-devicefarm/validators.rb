# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DeviceFarm
  module Validators

    class AccountSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountSettings, context: context)
        Hearth::Validator.validate!(input[:aws_account_number], ::String, context: "#{context}[:aws_account_number]")
        Validators::PurchasedDevicesMap.validate!(input[:unmetered_devices], context: "#{context}[:unmetered_devices]") unless input[:unmetered_devices].nil?
        Validators::PurchasedDevicesMap.validate!(input[:unmetered_remote_access_devices], context: "#{context}[:unmetered_remote_access_devices]") unless input[:unmetered_remote_access_devices].nil?
        Hearth::Validator.validate!(input[:max_job_timeout_minutes], ::Integer, context: "#{context}[:max_job_timeout_minutes]")
        Validators::TrialMinutes.validate!(input[:trial_minutes], context: "#{context}[:trial_minutes]") unless input[:trial_minutes].nil?
        Validators::MaxSlotMap.validate!(input[:max_slots], context: "#{context}[:max_slots]") unless input[:max_slots].nil?
        Hearth::Validator.validate!(input[:default_job_timeout_minutes], ::Integer, context: "#{context}[:default_job_timeout_minutes]")
        Hearth::Validator.validate!(input[:skip_app_resign], ::TrueClass, ::FalseClass, context: "#{context}[:skip_app_resign]")
      end
    end

    class AmazonResourceNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AndroidPaths
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ArgumentException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ArgumentException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Artifact
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Artifact, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:extension], ::String, context: "#{context}[:extension]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class Artifacts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Artifact.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CPU
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CPU, context: context)
        Hearth::Validator.validate!(input[:frequency], ::String, context: "#{context}[:frequency]")
        Hearth::Validator.validate!(input[:architecture], ::String, context: "#{context}[:architecture]")
        Hearth::Validator.validate!(input[:clock], ::Float, context: "#{context}[:clock]")
      end
    end

    class CannotDeleteException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CannotDeleteException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Counters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Counters, context: context)
        Hearth::Validator.validate!(input[:total], ::Integer, context: "#{context}[:total]")
        Hearth::Validator.validate!(input[:passed], ::Integer, context: "#{context}[:passed]")
        Hearth::Validator.validate!(input[:failed], ::Integer, context: "#{context}[:failed]")
        Hearth::Validator.validate!(input[:warned], ::Integer, context: "#{context}[:warned]")
        Hearth::Validator.validate!(input[:errored], ::Integer, context: "#{context}[:errored]")
        Hearth::Validator.validate!(input[:stopped], ::Integer, context: "#{context}[:stopped]")
        Hearth::Validator.validate!(input[:skipped], ::Integer, context: "#{context}[:skipped]")
      end
    end

    class CreateDevicePoolInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDevicePoolInput, context: context)
        Hearth::Validator.validate!(input[:project_arn], ::String, context: "#{context}[:project_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::Rules.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
        Hearth::Validator.validate!(input[:max_devices], ::Integer, context: "#{context}[:max_devices]")
      end
    end

    class CreateDevicePoolOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDevicePoolOutput, context: context)
        Validators::DevicePool.validate!(input[:device_pool], context: "#{context}[:device_pool]") unless input[:device_pool].nil?
      end
    end

    class CreateInstanceProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInstanceProfileInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:package_cleanup], ::TrueClass, ::FalseClass, context: "#{context}[:package_cleanup]")
        Validators::PackageIds.validate!(input[:exclude_app_packages_from_cleanup], context: "#{context}[:exclude_app_packages_from_cleanup]") unless input[:exclude_app_packages_from_cleanup].nil?
        Hearth::Validator.validate!(input[:reboot_after_use], ::TrueClass, ::FalseClass, context: "#{context}[:reboot_after_use]")
      end
    end

    class CreateInstanceProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInstanceProfileOutput, context: context)
        Validators::InstanceProfile.validate!(input[:instance_profile], context: "#{context}[:instance_profile]") unless input[:instance_profile].nil?
      end
    end

    class CreateNetworkProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNetworkProfileInput, context: context)
        Hearth::Validator.validate!(input[:project_arn], ::String, context: "#{context}[:project_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:uplink_bandwidth_bits], ::Integer, context: "#{context}[:uplink_bandwidth_bits]")
        Hearth::Validator.validate!(input[:downlink_bandwidth_bits], ::Integer, context: "#{context}[:downlink_bandwidth_bits]")
        Hearth::Validator.validate!(input[:uplink_delay_ms], ::Integer, context: "#{context}[:uplink_delay_ms]")
        Hearth::Validator.validate!(input[:downlink_delay_ms], ::Integer, context: "#{context}[:downlink_delay_ms]")
        Hearth::Validator.validate!(input[:uplink_jitter_ms], ::Integer, context: "#{context}[:uplink_jitter_ms]")
        Hearth::Validator.validate!(input[:downlink_jitter_ms], ::Integer, context: "#{context}[:downlink_jitter_ms]")
        Hearth::Validator.validate!(input[:uplink_loss_percent], ::Integer, context: "#{context}[:uplink_loss_percent]")
        Hearth::Validator.validate!(input[:downlink_loss_percent], ::Integer, context: "#{context}[:downlink_loss_percent]")
      end
    end

    class CreateNetworkProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNetworkProfileOutput, context: context)
        Validators::NetworkProfile.validate!(input[:network_profile], context: "#{context}[:network_profile]") unless input[:network_profile].nil?
      end
    end

    class CreateProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProjectInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:default_job_timeout_minutes], ::Integer, context: "#{context}[:default_job_timeout_minutes]")
      end
    end

    class CreateProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProjectOutput, context: context)
        Validators::Project.validate!(input[:project], context: "#{context}[:project]") unless input[:project].nil?
      end
    end

    class CreateRemoteAccessSessionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRemoteAccessSessionConfiguration, context: context)
        Hearth::Validator.validate!(input[:billing_method], ::String, context: "#{context}[:billing_method]")
        Validators::AmazonResourceNames.validate!(input[:vpce_configuration_arns], context: "#{context}[:vpce_configuration_arns]") unless input[:vpce_configuration_arns].nil?
      end
    end

    class CreateRemoteAccessSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRemoteAccessSessionInput, context: context)
        Hearth::Validator.validate!(input[:project_arn], ::String, context: "#{context}[:project_arn]")
        Hearth::Validator.validate!(input[:device_arn], ::String, context: "#{context}[:device_arn]")
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
        Hearth::Validator.validate!(input[:ssh_public_key], ::String, context: "#{context}[:ssh_public_key]")
        Hearth::Validator.validate!(input[:remote_debug_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:remote_debug_enabled]")
        Hearth::Validator.validate!(input[:remote_record_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:remote_record_enabled]")
        Hearth::Validator.validate!(input[:remote_record_app_arn], ::String, context: "#{context}[:remote_record_app_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Validators::CreateRemoteAccessSessionConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        Hearth::Validator.validate!(input[:interaction_mode], ::String, context: "#{context}[:interaction_mode]")
        Hearth::Validator.validate!(input[:skip_app_resign], ::TrueClass, ::FalseClass, context: "#{context}[:skip_app_resign]")
      end
    end

    class CreateRemoteAccessSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRemoteAccessSessionOutput, context: context)
        Validators::RemoteAccessSession.validate!(input[:remote_access_session], context: "#{context}[:remote_access_session]") unless input[:remote_access_session].nil?
      end
    end

    class CreateTestGridProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTestGridProjectInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TestGridVpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
      end
    end

    class CreateTestGridProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTestGridProjectOutput, context: context)
        Validators::TestGridProject.validate!(input[:test_grid_project], context: "#{context}[:test_grid_project]") unless input[:test_grid_project].nil?
      end
    end

    class CreateTestGridUrlInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTestGridUrlInput, context: context)
        Hearth::Validator.validate!(input[:project_arn], ::String, context: "#{context}[:project_arn]")
        Hearth::Validator.validate!(input[:expires_in_seconds], ::Integer, context: "#{context}[:expires_in_seconds]")
      end
    end

    class CreateTestGridUrlOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTestGridUrlOutput, context: context)
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Hearth::Validator.validate!(input[:expires], ::Time, context: "#{context}[:expires]")
      end
    end

    class CreateUploadInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUploadInput, context: context)
        Hearth::Validator.validate!(input[:project_arn], ::String, context: "#{context}[:project_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
      end
    end

    class CreateUploadOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUploadOutput, context: context)
        Validators::Upload.validate!(input[:upload], context: "#{context}[:upload]") unless input[:upload].nil?
      end
    end

    class CreateVPCEConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVPCEConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:vpce_configuration_name], ::String, context: "#{context}[:vpce_configuration_name]")
        Hearth::Validator.validate!(input[:vpce_service_name], ::String, context: "#{context}[:vpce_service_name]")
        Hearth::Validator.validate!(input[:service_dns_name], ::String, context: "#{context}[:service_dns_name]")
        Hearth::Validator.validate!(input[:vpce_configuration_description], ::String, context: "#{context}[:vpce_configuration_description]")
      end
    end

    class CreateVPCEConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVPCEConfigurationOutput, context: context)
        Validators::VPCEConfiguration.validate!(input[:vpce_configuration], context: "#{context}[:vpce_configuration]") unless input[:vpce_configuration].nil?
      end
    end

    class CustomerArtifactPaths
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomerArtifactPaths, context: context)
        Validators::IosPaths.validate!(input[:ios_paths], context: "#{context}[:ios_paths]") unless input[:ios_paths].nil?
        Validators::AndroidPaths.validate!(input[:android_paths], context: "#{context}[:android_paths]") unless input[:android_paths].nil?
        Validators::DeviceHostPaths.validate!(input[:device_host_paths], context: "#{context}[:device_host_paths]") unless input[:device_host_paths].nil?
      end
    end

    class DeleteDevicePoolInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDevicePoolInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeleteDevicePoolOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDevicePoolOutput, context: context)
      end
    end

    class DeleteInstanceProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInstanceProfileInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeleteInstanceProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInstanceProfileOutput, context: context)
      end
    end

    class DeleteNetworkProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNetworkProfileInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeleteNetworkProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNetworkProfileOutput, context: context)
      end
    end

    class DeleteProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProjectInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeleteProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProjectOutput, context: context)
      end
    end

    class DeleteRemoteAccessSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRemoteAccessSessionInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeleteRemoteAccessSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRemoteAccessSessionOutput, context: context)
      end
    end

    class DeleteRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRunInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeleteRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRunOutput, context: context)
      end
    end

    class DeleteTestGridProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTestGridProjectInput, context: context)
        Hearth::Validator.validate!(input[:project_arn], ::String, context: "#{context}[:project_arn]")
      end
    end

    class DeleteTestGridProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTestGridProjectOutput, context: context)
      end
    end

    class DeleteUploadInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUploadInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeleteUploadOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUploadOutput, context: context)
      end
    end

    class DeleteVPCEConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVPCEConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeleteVPCEConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVPCEConfigurationOutput, context: context)
      end
    end

    class Device
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Device, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:manufacturer], ::String, context: "#{context}[:manufacturer]")
        Hearth::Validator.validate!(input[:model], ::String, context: "#{context}[:model]")
        Hearth::Validator.validate!(input[:model_id], ::String, context: "#{context}[:model_id]")
        Hearth::Validator.validate!(input[:form_factor], ::String, context: "#{context}[:form_factor]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:os], ::String, context: "#{context}[:os]")
        Validators::CPU.validate!(input[:cpu], context: "#{context}[:cpu]") unless input[:cpu].nil?
        Validators::Resolution.validate!(input[:resolution], context: "#{context}[:resolution]") unless input[:resolution].nil?
        Hearth::Validator.validate!(input[:heap_size], ::Integer, context: "#{context}[:heap_size]")
        Hearth::Validator.validate!(input[:memory], ::Integer, context: "#{context}[:memory]")
        Hearth::Validator.validate!(input[:image], ::String, context: "#{context}[:image]")
        Hearth::Validator.validate!(input[:carrier], ::String, context: "#{context}[:carrier]")
        Hearth::Validator.validate!(input[:radio], ::String, context: "#{context}[:radio]")
        Hearth::Validator.validate!(input[:remote_access_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:remote_access_enabled]")
        Hearth::Validator.validate!(input[:remote_debug_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:remote_debug_enabled]")
        Hearth::Validator.validate!(input[:fleet_type], ::String, context: "#{context}[:fleet_type]")
        Hearth::Validator.validate!(input[:fleet_name], ::String, context: "#{context}[:fleet_name]")
        Validators::DeviceInstances.validate!(input[:instances], context: "#{context}[:instances]") unless input[:instances].nil?
        Hearth::Validator.validate!(input[:availability], ::String, context: "#{context}[:availability]")
      end
    end

    class DeviceFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceFilter, context: context)
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
        Validators::DeviceFilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class DeviceFilterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DeviceFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DeviceFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeviceHostPaths
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DeviceInstance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceInstance, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:device_arn], ::String, context: "#{context}[:device_arn]")
        Validators::InstanceLabels.validate!(input[:labels], context: "#{context}[:labels]") unless input[:labels].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:udid], ::String, context: "#{context}[:udid]")
        Validators::InstanceProfile.validate!(input[:instance_profile], context: "#{context}[:instance_profile]") unless input[:instance_profile].nil?
      end
    end

    class DeviceInstances
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DeviceInstance.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeviceMinutes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceMinutes, context: context)
        Hearth::Validator.validate!(input[:total], ::Float, context: "#{context}[:total]")
        Hearth::Validator.validate!(input[:metered], ::Float, context: "#{context}[:metered]")
        Hearth::Validator.validate!(input[:unmetered], ::Float, context: "#{context}[:unmetered]")
      end
    end

    class DevicePool
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DevicePool, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::Rules.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
        Hearth::Validator.validate!(input[:max_devices], ::Integer, context: "#{context}[:max_devices]")
      end
    end

    class DevicePoolCompatibilityResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DevicePoolCompatibilityResult, context: context)
        Validators::Device.validate!(input[:device], context: "#{context}[:device]") unless input[:device].nil?
        Hearth::Validator.validate!(input[:compatible], ::TrueClass, ::FalseClass, context: "#{context}[:compatible]")
        Validators::IncompatibilityMessages.validate!(input[:incompatibility_messages], context: "#{context}[:incompatibility_messages]") unless input[:incompatibility_messages].nil?
      end
    end

    class DevicePoolCompatibilityResults
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DevicePoolCompatibilityResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DevicePools
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DevicePool.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeviceSelectionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceSelectionConfiguration, context: context)
        Validators::DeviceFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_devices], ::Integer, context: "#{context}[:max_devices]")
      end
    end

    class DeviceSelectionResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceSelectionResult, context: context)
        Validators::DeviceFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:matched_devices_count], ::Integer, context: "#{context}[:matched_devices_count]")
        Hearth::Validator.validate!(input[:max_devices], ::Integer, context: "#{context}[:max_devices]")
      end
    end

    class Devices
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Device.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExecutionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecutionConfiguration, context: context)
        Hearth::Validator.validate!(input[:job_timeout_minutes], ::Integer, context: "#{context}[:job_timeout_minutes]")
        Hearth::Validator.validate!(input[:accounts_cleanup], ::TrueClass, ::FalseClass, context: "#{context}[:accounts_cleanup]")
        Hearth::Validator.validate!(input[:app_packages_cleanup], ::TrueClass, ::FalseClass, context: "#{context}[:app_packages_cleanup]")
        Hearth::Validator.validate!(input[:video_capture], ::TrueClass, ::FalseClass, context: "#{context}[:video_capture]")
        Hearth::Validator.validate!(input[:skip_app_resign], ::TrueClass, ::FalseClass, context: "#{context}[:skip_app_resign]")
      end
    end

    class GetAccountSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccountSettingsInput, context: context)
      end
    end

    class GetAccountSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccountSettingsOutput, context: context)
        Validators::AccountSettings.validate!(input[:account_settings], context: "#{context}[:account_settings]") unless input[:account_settings].nil?
      end
    end

    class GetDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeviceInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetDeviceInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeviceInstanceInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetDeviceInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeviceInstanceOutput, context: context)
        Validators::DeviceInstance.validate!(input[:device_instance], context: "#{context}[:device_instance]") unless input[:device_instance].nil?
      end
    end

    class GetDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeviceOutput, context: context)
        Validators::Device.validate!(input[:device], context: "#{context}[:device]") unless input[:device].nil?
      end
    end

    class GetDevicePoolCompatibilityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDevicePoolCompatibilityInput, context: context)
        Hearth::Validator.validate!(input[:device_pool_arn], ::String, context: "#{context}[:device_pool_arn]")
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
        Hearth::Validator.validate!(input[:test_type], ::String, context: "#{context}[:test_type]")
        Validators::ScheduleRunTest.validate!(input[:test], context: "#{context}[:test]") unless input[:test].nil?
        Validators::ScheduleRunConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
      end
    end

    class GetDevicePoolCompatibilityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDevicePoolCompatibilityOutput, context: context)
        Validators::DevicePoolCompatibilityResults.validate!(input[:compatible_devices], context: "#{context}[:compatible_devices]") unless input[:compatible_devices].nil?
        Validators::DevicePoolCompatibilityResults.validate!(input[:incompatible_devices], context: "#{context}[:incompatible_devices]") unless input[:incompatible_devices].nil?
      end
    end

    class GetDevicePoolInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDevicePoolInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetDevicePoolOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDevicePoolOutput, context: context)
        Validators::DevicePool.validate!(input[:device_pool], context: "#{context}[:device_pool]") unless input[:device_pool].nil?
      end
    end

    class GetInstanceProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInstanceProfileInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetInstanceProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInstanceProfileOutput, context: context)
        Validators::InstanceProfile.validate!(input[:instance_profile], context: "#{context}[:instance_profile]") unless input[:instance_profile].nil?
      end
    end

    class GetJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobOutput, context: context)
        Validators::Job.validate!(input[:job], context: "#{context}[:job]") unless input[:job].nil?
      end
    end

    class GetNetworkProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetNetworkProfileInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetNetworkProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetNetworkProfileOutput, context: context)
        Validators::NetworkProfile.validate!(input[:network_profile], context: "#{context}[:network_profile]") unless input[:network_profile].nil?
      end
    end

    class GetOfferingStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOfferingStatusInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetOfferingStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOfferingStatusOutput, context: context)
        Validators::OfferingStatusMap.validate!(input[:current], context: "#{context}[:current]") unless input[:current].nil?
        Validators::OfferingStatusMap.validate!(input[:next_period], context: "#{context}[:next_period]") unless input[:next_period].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetProjectInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetProjectOutput, context: context)
        Validators::Project.validate!(input[:project], context: "#{context}[:project]") unless input[:project].nil?
      end
    end

    class GetRemoteAccessSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRemoteAccessSessionInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetRemoteAccessSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRemoteAccessSessionOutput, context: context)
        Validators::RemoteAccessSession.validate!(input[:remote_access_session], context: "#{context}[:remote_access_session]") unless input[:remote_access_session].nil?
      end
    end

    class GetRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRunInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRunOutput, context: context)
        Validators::Run.validate!(input[:run], context: "#{context}[:run]") unless input[:run].nil?
      end
    end

    class GetSuiteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSuiteInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetSuiteOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSuiteOutput, context: context)
        Validators::Suite.validate!(input[:suite], context: "#{context}[:suite]") unless input[:suite].nil?
      end
    end

    class GetTestGridProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTestGridProjectInput, context: context)
        Hearth::Validator.validate!(input[:project_arn], ::String, context: "#{context}[:project_arn]")
      end
    end

    class GetTestGridProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTestGridProjectOutput, context: context)
        Validators::TestGridProject.validate!(input[:test_grid_project], context: "#{context}[:test_grid_project]") unless input[:test_grid_project].nil?
      end
    end

    class GetTestGridSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTestGridSessionInput, context: context)
        Hearth::Validator.validate!(input[:project_arn], ::String, context: "#{context}[:project_arn]")
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Hearth::Validator.validate!(input[:session_arn], ::String, context: "#{context}[:session_arn]")
      end
    end

    class GetTestGridSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTestGridSessionOutput, context: context)
        Validators::TestGridSession.validate!(input[:test_grid_session], context: "#{context}[:test_grid_session]") unless input[:test_grid_session].nil?
      end
    end

    class GetTestInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTestInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetTestOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTestOutput, context: context)
        Validators::Test.validate!(input[:test], context: "#{context}[:test]") unless input[:test].nil?
      end
    end

    class GetUploadInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUploadInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetUploadOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUploadOutput, context: context)
        Validators::Upload.validate!(input[:upload], context: "#{context}[:upload]") unless input[:upload].nil?
      end
    end

    class GetVPCEConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVPCEConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetVPCEConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVPCEConfigurationOutput, context: context)
        Validators::VPCEConfiguration.validate!(input[:vpce_configuration], context: "#{context}[:vpce_configuration]") unless input[:vpce_configuration].nil?
      end
    end

    class IdempotencyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IdempotencyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IncompatibilityMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IncompatibilityMessage, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class IncompatibilityMessages
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::IncompatibilityMessage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstallToRemoteAccessSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstallToRemoteAccessSessionInput, context: context)
        Hearth::Validator.validate!(input[:remote_access_session_arn], ::String, context: "#{context}[:remote_access_session_arn]")
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
      end
    end

    class InstallToRemoteAccessSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstallToRemoteAccessSessionOutput, context: context)
        Validators::Upload.validate!(input[:app_upload], context: "#{context}[:app_upload]") unless input[:app_upload].nil?
      end
    end

    class InstanceLabels
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InstanceProfile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceProfile, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:package_cleanup], ::TrueClass, ::FalseClass, context: "#{context}[:package_cleanup]")
        Validators::PackageIds.validate!(input[:exclude_app_packages_from_cleanup], context: "#{context}[:exclude_app_packages_from_cleanup]") unless input[:exclude_app_packages_from_cleanup].nil?
        Hearth::Validator.validate!(input[:reboot_after_use], ::TrueClass, ::FalseClass, context: "#{context}[:reboot_after_use]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class InstanceProfiles
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InstanceProfile.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalServiceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServiceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidOperationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidOperationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IosPaths
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Job
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Job, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:result], ::String, context: "#{context}[:result]")
        Hearth::Validator.validate!(input[:started], ::Time, context: "#{context}[:started]")
        Hearth::Validator.validate!(input[:stopped], ::Time, context: "#{context}[:stopped]")
        Validators::Counters.validate!(input[:counters], context: "#{context}[:counters]") unless input[:counters].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Validators::Device.validate!(input[:device], context: "#{context}[:device]") unless input[:device].nil?
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
        Validators::DeviceMinutes.validate!(input[:device_minutes], context: "#{context}[:device_minutes]") unless input[:device_minutes].nil?
        Hearth::Validator.validate!(input[:video_endpoint], ::String, context: "#{context}[:video_endpoint]")
        Hearth::Validator.validate!(input[:video_capture], ::TrueClass, ::FalseClass, context: "#{context}[:video_capture]")
      end
    end

    class Jobs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Job.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListArtifactsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListArtifactsInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListArtifactsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListArtifactsOutput, context: context)
        Validators::Artifacts.validate!(input[:artifacts], context: "#{context}[:artifacts]") unless input[:artifacts].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDeviceInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeviceInstancesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDeviceInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeviceInstancesOutput, context: context)
        Validators::DeviceInstances.validate!(input[:device_instances], context: "#{context}[:device_instances]") unless input[:device_instances].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDevicePoolsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDevicePoolsInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDevicePoolsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDevicePoolsOutput, context: context)
        Validators::DevicePools.validate!(input[:device_pools], context: "#{context}[:device_pools]") unless input[:device_pools].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDevicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDevicesInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::DeviceFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListDevicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDevicesOutput, context: context)
        Validators::Devices.validate!(input[:devices], context: "#{context}[:devices]") unless input[:devices].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListInstanceProfilesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInstanceProfilesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListInstanceProfilesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInstanceProfilesOutput, context: context)
        Validators::InstanceProfiles.validate!(input[:instance_profiles], context: "#{context}[:instance_profiles]") unless input[:instance_profiles].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobsInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobsOutput, context: context)
        Validators::Jobs.validate!(input[:jobs], context: "#{context}[:jobs]") unless input[:jobs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListNetworkProfilesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNetworkProfilesInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListNetworkProfilesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNetworkProfilesOutput, context: context)
        Validators::NetworkProfiles.validate!(input[:network_profiles], context: "#{context}[:network_profiles]") unless input[:network_profiles].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOfferingPromotionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOfferingPromotionsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOfferingPromotionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOfferingPromotionsOutput, context: context)
        Validators::OfferingPromotions.validate!(input[:offering_promotions], context: "#{context}[:offering_promotions]") unless input[:offering_promotions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOfferingTransactionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOfferingTransactionsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOfferingTransactionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOfferingTransactionsOutput, context: context)
        Validators::OfferingTransactions.validate!(input[:offering_transactions], context: "#{context}[:offering_transactions]") unless input[:offering_transactions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOfferingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOfferingsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOfferingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOfferingsOutput, context: context)
        Validators::Offerings.validate!(input[:offerings], context: "#{context}[:offerings]") unless input[:offerings].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListProjectsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProjectsInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListProjectsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProjectsOutput, context: context)
        Validators::Projects.validate!(input[:projects], context: "#{context}[:projects]") unless input[:projects].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRemoteAccessSessionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRemoteAccessSessionsInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRemoteAccessSessionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRemoteAccessSessionsOutput, context: context)
        Validators::RemoteAccessSessions.validate!(input[:remote_access_sessions], context: "#{context}[:remote_access_sessions]") unless input[:remote_access_sessions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRunsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRunsInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRunsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRunsOutput, context: context)
        Validators::Runs.validate!(input[:runs], context: "#{context}[:runs]") unless input[:runs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSamplesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSamplesInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSamplesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSamplesOutput, context: context)
        Validators::Samples.validate!(input[:samples], context: "#{context}[:samples]") unless input[:samples].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSuitesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSuitesInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSuitesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSuitesOutput, context: context)
        Validators::Suites.validate!(input[:suites], context: "#{context}[:suites]") unless input[:suites].nil?
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
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListTestGridProjectsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTestGridProjectsInput, context: context)
        Hearth::Validator.validate!(input[:max_result], ::Integer, context: "#{context}[:max_result]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTestGridProjectsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTestGridProjectsOutput, context: context)
        Validators::TestGridProjects.validate!(input[:test_grid_projects], context: "#{context}[:test_grid_projects]") unless input[:test_grid_projects].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTestGridSessionActionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTestGridSessionActionsInput, context: context)
        Hearth::Validator.validate!(input[:session_arn], ::String, context: "#{context}[:session_arn]")
        Hearth::Validator.validate!(input[:max_result], ::Integer, context: "#{context}[:max_result]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTestGridSessionActionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTestGridSessionActionsOutput, context: context)
        Validators::TestGridSessionActions.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTestGridSessionArtifactsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTestGridSessionArtifactsInput, context: context)
        Hearth::Validator.validate!(input[:session_arn], ::String, context: "#{context}[:session_arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:max_result], ::Integer, context: "#{context}[:max_result]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTestGridSessionArtifactsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTestGridSessionArtifactsOutput, context: context)
        Validators::TestGridSessionArtifacts.validate!(input[:artifacts], context: "#{context}[:artifacts]") unless input[:artifacts].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTestGridSessionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTestGridSessionsInput, context: context)
        Hearth::Validator.validate!(input[:project_arn], ::String, context: "#{context}[:project_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:end_time_after], ::Time, context: "#{context}[:end_time_after]")
        Hearth::Validator.validate!(input[:end_time_before], ::Time, context: "#{context}[:end_time_before]")
        Hearth::Validator.validate!(input[:max_result], ::Integer, context: "#{context}[:max_result]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTestGridSessionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTestGridSessionsOutput, context: context)
        Validators::TestGridSessions.validate!(input[:test_grid_sessions], context: "#{context}[:test_grid_sessions]") unless input[:test_grid_sessions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTestsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTestsInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTestsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTestsOutput, context: context)
        Validators::Tests.validate!(input[:tests], context: "#{context}[:tests]") unless input[:tests].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListUniqueProblemsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUniqueProblemsInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListUniqueProblemsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUniqueProblemsOutput, context: context)
        Validators::UniqueProblemsByExecutionResultMap.validate!(input[:unique_problems], context: "#{context}[:unique_problems]") unless input[:unique_problems].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListUploadsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUploadsInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListUploadsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUploadsOutput, context: context)
        Validators::Uploads.validate!(input[:uploads], context: "#{context}[:uploads]") unless input[:uploads].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListVPCEConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVPCEConfigurationsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListVPCEConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVPCEConfigurationsOutput, context: context)
        Validators::VPCEConfigurations.validate!(input[:vpce_configurations], context: "#{context}[:vpce_configurations]") unless input[:vpce_configurations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class Location
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Location, context: context)
        Hearth::Validator.validate!(input[:latitude], ::Float, context: "#{context}[:latitude]")
        Hearth::Validator.validate!(input[:longitude], ::Float, context: "#{context}[:longitude]")
      end
    end

    class MaxSlotMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::Integer, context: "#{context}[:#{key}]")
        end
      end
    end

    class MonetaryAmount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonetaryAmount, context: context)
        Hearth::Validator.validate!(input[:amount], ::Float, context: "#{context}[:amount]")
        Hearth::Validator.validate!(input[:currency_code], ::String, context: "#{context}[:currency_code]")
      end
    end

    class NetworkProfile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkProfile, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:uplink_bandwidth_bits], ::Integer, context: "#{context}[:uplink_bandwidth_bits]")
        Hearth::Validator.validate!(input[:downlink_bandwidth_bits], ::Integer, context: "#{context}[:downlink_bandwidth_bits]")
        Hearth::Validator.validate!(input[:uplink_delay_ms], ::Integer, context: "#{context}[:uplink_delay_ms]")
        Hearth::Validator.validate!(input[:downlink_delay_ms], ::Integer, context: "#{context}[:downlink_delay_ms]")
        Hearth::Validator.validate!(input[:uplink_jitter_ms], ::Integer, context: "#{context}[:uplink_jitter_ms]")
        Hearth::Validator.validate!(input[:downlink_jitter_ms], ::Integer, context: "#{context}[:downlink_jitter_ms]")
        Hearth::Validator.validate!(input[:uplink_loss_percent], ::Integer, context: "#{context}[:uplink_loss_percent]")
        Hearth::Validator.validate!(input[:downlink_loss_percent], ::Integer, context: "#{context}[:downlink_loss_percent]")
      end
    end

    class NetworkProfiles
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::NetworkProfile.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NotEligibleException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotEligibleException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Offering
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Offering, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Validators::RecurringCharges.validate!(input[:recurring_charges], context: "#{context}[:recurring_charges]") unless input[:recurring_charges].nil?
      end
    end

    class OfferingPromotion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OfferingPromotion, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class OfferingPromotions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OfferingPromotion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OfferingStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OfferingStatus, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::Offering.validate!(input[:offering], context: "#{context}[:offering]") unless input[:offering].nil?
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Hearth::Validator.validate!(input[:effective_on], ::Time, context: "#{context}[:effective_on]")
      end
    end

    class OfferingStatusMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::OfferingStatus.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class OfferingTransaction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OfferingTransaction, context: context)
        Validators::OfferingStatus.validate!(input[:offering_status], context: "#{context}[:offering_status]") unless input[:offering_status].nil?
        Hearth::Validator.validate!(input[:transaction_id], ::String, context: "#{context}[:transaction_id]")
        Hearth::Validator.validate!(input[:offering_promotion_id], ::String, context: "#{context}[:offering_promotion_id]")
        Hearth::Validator.validate!(input[:created_on], ::Time, context: "#{context}[:created_on]")
        Validators::MonetaryAmount.validate!(input[:cost], context: "#{context}[:cost]") unless input[:cost].nil?
      end
    end

    class OfferingTransactions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OfferingTransaction.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Offerings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Offering.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PackageIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Problem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Problem, context: context)
        Validators::ProblemDetail.validate!(input[:run], context: "#{context}[:run]") unless input[:run].nil?
        Validators::ProblemDetail.validate!(input[:job], context: "#{context}[:job]") unless input[:job].nil?
        Validators::ProblemDetail.validate!(input[:suite], context: "#{context}[:suite]") unless input[:suite].nil?
        Validators::ProblemDetail.validate!(input[:test], context: "#{context}[:test]") unless input[:test].nil?
        Validators::Device.validate!(input[:device], context: "#{context}[:device]") unless input[:device].nil?
        Hearth::Validator.validate!(input[:result], ::String, context: "#{context}[:result]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ProblemDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProblemDetail, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class Problems
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Problem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Project
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Project, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:default_job_timeout_minutes], ::Integer, context: "#{context}[:default_job_timeout_minutes]")
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
      end
    end

    class Projects
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Project.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PurchaseOfferingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PurchaseOfferingInput, context: context)
        Hearth::Validator.validate!(input[:offering_id], ::String, context: "#{context}[:offering_id]")
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Hearth::Validator.validate!(input[:offering_promotion_id], ::String, context: "#{context}[:offering_promotion_id]")
      end
    end

    class PurchaseOfferingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PurchaseOfferingOutput, context: context)
        Validators::OfferingTransaction.validate!(input[:offering_transaction], context: "#{context}[:offering_transaction]") unless input[:offering_transaction].nil?
      end
    end

    class PurchasedDevicesMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::Integer, context: "#{context}[:#{key}]")
        end
      end
    end

    class Radios
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Radios, context: context)
        Hearth::Validator.validate!(input[:wifi], ::TrueClass, ::FalseClass, context: "#{context}[:wifi]")
        Hearth::Validator.validate!(input[:bluetooth], ::TrueClass, ::FalseClass, context: "#{context}[:bluetooth]")
        Hearth::Validator.validate!(input[:nfc], ::TrueClass, ::FalseClass, context: "#{context}[:nfc]")
        Hearth::Validator.validate!(input[:gps], ::TrueClass, ::FalseClass, context: "#{context}[:gps]")
      end
    end

    class RecurringCharge
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecurringCharge, context: context)
        Validators::MonetaryAmount.validate!(input[:cost], context: "#{context}[:cost]") unless input[:cost].nil?
        Hearth::Validator.validate!(input[:frequency], ::String, context: "#{context}[:frequency]")
      end
    end

    class RecurringCharges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RecurringCharge.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RemoteAccessSession
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoteAccessSession, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:result], ::String, context: "#{context}[:result]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:started], ::Time, context: "#{context}[:started]")
        Hearth::Validator.validate!(input[:stopped], ::Time, context: "#{context}[:stopped]")
        Validators::Device.validate!(input[:device], context: "#{context}[:device]") unless input[:device].nil?
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
        Hearth::Validator.validate!(input[:remote_debug_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:remote_debug_enabled]")
        Hearth::Validator.validate!(input[:remote_record_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:remote_record_enabled]")
        Hearth::Validator.validate!(input[:remote_record_app_arn], ::String, context: "#{context}[:remote_record_app_arn]")
        Hearth::Validator.validate!(input[:host_address], ::String, context: "#{context}[:host_address]")
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:billing_method], ::String, context: "#{context}[:billing_method]")
        Validators::DeviceMinutes.validate!(input[:device_minutes], context: "#{context}[:device_minutes]") unless input[:device_minutes].nil?
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
        Hearth::Validator.validate!(input[:device_udid], ::String, context: "#{context}[:device_udid]")
        Hearth::Validator.validate!(input[:interaction_mode], ::String, context: "#{context}[:interaction_mode]")
        Hearth::Validator.validate!(input[:skip_app_resign], ::TrueClass, ::FalseClass, context: "#{context}[:skip_app_resign]")
      end
    end

    class RemoteAccessSessions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RemoteAccessSession.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RenewOfferingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RenewOfferingInput, context: context)
        Hearth::Validator.validate!(input[:offering_id], ::String, context: "#{context}[:offering_id]")
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
      end
    end

    class RenewOfferingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RenewOfferingOutput, context: context)
        Validators::OfferingTransaction.validate!(input[:offering_transaction], context: "#{context}[:offering_transaction]") unless input[:offering_transaction].nil?
      end
    end

    class Resolution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Resolution, context: context)
        Hearth::Validator.validate!(input[:width], ::Integer, context: "#{context}[:width]")
        Hearth::Validator.validate!(input[:height], ::Integer, context: "#{context}[:height]")
      end
    end

    class Rule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Rule, context: context)
        Hearth::Validator.validate!(input[:attribute], ::String, context: "#{context}[:attribute]")
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class Rules
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Rule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Run
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Run, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:result], ::String, context: "#{context}[:result]")
        Hearth::Validator.validate!(input[:started], ::Time, context: "#{context}[:started]")
        Hearth::Validator.validate!(input[:stopped], ::Time, context: "#{context}[:stopped]")
        Validators::Counters.validate!(input[:counters], context: "#{context}[:counters]") unless input[:counters].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:total_jobs], ::Integer, context: "#{context}[:total_jobs]")
        Hearth::Validator.validate!(input[:completed_jobs], ::Integer, context: "#{context}[:completed_jobs]")
        Hearth::Validator.validate!(input[:billing_method], ::String, context: "#{context}[:billing_method]")
        Validators::DeviceMinutes.validate!(input[:device_minutes], context: "#{context}[:device_minutes]") unless input[:device_minutes].nil?
        Validators::NetworkProfile.validate!(input[:network_profile], context: "#{context}[:network_profile]") unless input[:network_profile].nil?
        Hearth::Validator.validate!(input[:parsing_result_url], ::String, context: "#{context}[:parsing_result_url]")
        Hearth::Validator.validate!(input[:result_code], ::String, context: "#{context}[:result_code]")
        Hearth::Validator.validate!(input[:seed], ::Integer, context: "#{context}[:seed]")
        Hearth::Validator.validate!(input[:app_upload], ::String, context: "#{context}[:app_upload]")
        Hearth::Validator.validate!(input[:event_count], ::Integer, context: "#{context}[:event_count]")
        Hearth::Validator.validate!(input[:job_timeout_minutes], ::Integer, context: "#{context}[:job_timeout_minutes]")
        Hearth::Validator.validate!(input[:device_pool_arn], ::String, context: "#{context}[:device_pool_arn]")
        Hearth::Validator.validate!(input[:locale], ::String, context: "#{context}[:locale]")
        Validators::Radios.validate!(input[:radios], context: "#{context}[:radios]") unless input[:radios].nil?
        Validators::Location.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Validators::CustomerArtifactPaths.validate!(input[:customer_artifact_paths], context: "#{context}[:customer_artifact_paths]") unless input[:customer_artifact_paths].nil?
        Hearth::Validator.validate!(input[:web_url], ::String, context: "#{context}[:web_url]")
        Hearth::Validator.validate!(input[:skip_app_resign], ::TrueClass, ::FalseClass, context: "#{context}[:skip_app_resign]")
        Hearth::Validator.validate!(input[:test_spec_arn], ::String, context: "#{context}[:test_spec_arn]")
        Validators::DeviceSelectionResult.validate!(input[:device_selection_result], context: "#{context}[:device_selection_result]") unless input[:device_selection_result].nil?
      end
    end

    class Runs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Run.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Sample
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Sample, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class Samples
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Sample.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ScheduleRunConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduleRunConfiguration, context: context)
        Hearth::Validator.validate!(input[:extra_data_package_arn], ::String, context: "#{context}[:extra_data_package_arn]")
        Hearth::Validator.validate!(input[:network_profile_arn], ::String, context: "#{context}[:network_profile_arn]")
        Hearth::Validator.validate!(input[:locale], ::String, context: "#{context}[:locale]")
        Validators::Location.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Validators::AmazonResourceNames.validate!(input[:vpce_configuration_arns], context: "#{context}[:vpce_configuration_arns]") unless input[:vpce_configuration_arns].nil?
        Validators::CustomerArtifactPaths.validate!(input[:customer_artifact_paths], context: "#{context}[:customer_artifact_paths]") unless input[:customer_artifact_paths].nil?
        Validators::Radios.validate!(input[:radios], context: "#{context}[:radios]") unless input[:radios].nil?
        Validators::AmazonResourceNames.validate!(input[:auxiliary_apps], context: "#{context}[:auxiliary_apps]") unless input[:auxiliary_apps].nil?
        Hearth::Validator.validate!(input[:billing_method], ::String, context: "#{context}[:billing_method]")
      end
    end

    class ScheduleRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduleRunInput, context: context)
        Hearth::Validator.validate!(input[:project_arn], ::String, context: "#{context}[:project_arn]")
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
        Hearth::Validator.validate!(input[:device_pool_arn], ::String, context: "#{context}[:device_pool_arn]")
        Validators::DeviceSelectionConfiguration.validate!(input[:device_selection_configuration], context: "#{context}[:device_selection_configuration]") unless input[:device_selection_configuration].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::ScheduleRunTest.validate!(input[:test], context: "#{context}[:test]") unless input[:test].nil?
        Validators::ScheduleRunConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        Validators::ExecutionConfiguration.validate!(input[:execution_configuration], context: "#{context}[:execution_configuration]") unless input[:execution_configuration].nil?
      end
    end

    class ScheduleRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduleRunOutput, context: context)
        Validators::Run.validate!(input[:run], context: "#{context}[:run]") unless input[:run].nil?
      end
    end

    class ScheduleRunTest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduleRunTest, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:test_package_arn], ::String, context: "#{context}[:test_package_arn]")
        Hearth::Validator.validate!(input[:test_spec_arn], ::String, context: "#{context}[:test_spec_arn]")
        Hearth::Validator.validate!(input[:filter], ::String, context: "#{context}[:filter]")
        Validators::TestParameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class SecurityGroupIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ServiceAccountException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceAccountException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StopJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopJobInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class StopJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopJobOutput, context: context)
        Validators::Job.validate!(input[:job], context: "#{context}[:job]") unless input[:job].nil?
      end
    end

    class StopRemoteAccessSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopRemoteAccessSessionInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class StopRemoteAccessSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopRemoteAccessSessionOutput, context: context)
        Validators::RemoteAccessSession.validate!(input[:remote_access_session], context: "#{context}[:remote_access_session]") unless input[:remote_access_session].nil?
      end
    end

    class StopRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopRunInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class StopRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopRunOutput, context: context)
        Validators::Run.validate!(input[:run], context: "#{context}[:run]") unless input[:run].nil?
      end
    end

    class SubnetIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Suite
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Suite, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:result], ::String, context: "#{context}[:result]")
        Hearth::Validator.validate!(input[:started], ::Time, context: "#{context}[:started]")
        Hearth::Validator.validate!(input[:stopped], ::Time, context: "#{context}[:stopped]")
        Validators::Counters.validate!(input[:counters], context: "#{context}[:counters]") unless input[:counters].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Validators::DeviceMinutes.validate!(input[:device_minutes], context: "#{context}[:device_minutes]") unless input[:device_minutes].nil?
      end
    end

    class Suites
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Suite.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagOperationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagOperationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class TagPolicyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagPolicyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Test
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Test, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:result], ::String, context: "#{context}[:result]")
        Hearth::Validator.validate!(input[:started], ::Time, context: "#{context}[:started]")
        Hearth::Validator.validate!(input[:stopped], ::Time, context: "#{context}[:stopped]")
        Validators::Counters.validate!(input[:counters], context: "#{context}[:counters]") unless input[:counters].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Validators::DeviceMinutes.validate!(input[:device_minutes], context: "#{context}[:device_minutes]") unless input[:device_minutes].nil?
      end
    end

    class TestGridProject
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestGridProject, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TestGridVpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
      end
    end

    class TestGridProjects
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TestGridProject.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TestGridSession
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestGridSession, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:ended], ::Time, context: "#{context}[:ended]")
        Hearth::Validator.validate!(input[:billing_minutes], ::Float, context: "#{context}[:billing_minutes]")
        Hearth::Validator.validate!(input[:selenium_properties], ::String, context: "#{context}[:selenium_properties]")
      end
    end

    class TestGridSessionAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestGridSessionAction, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:started], ::Time, context: "#{context}[:started]")
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:request_method], ::String, context: "#{context}[:request_method]")
      end
    end

    class TestGridSessionActions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TestGridSessionAction.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TestGridSessionArtifact
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestGridSessionArtifact, context: context)
        Hearth::Validator.validate!(input[:filename], ::String, context: "#{context}[:filename]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class TestGridSessionArtifacts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TestGridSessionArtifact.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TestGridSessions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TestGridSession.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TestGridVpcConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestGridVpcConfig, context: context)
        Validators::SecurityGroupIds.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Validators::SubnetIds.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
      end
    end

    class TestParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class Tests
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Test.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TooManyTagsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTagsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class TrialMinutes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrialMinutes, context: context)
        Hearth::Validator.validate!(input[:total], ::Float, context: "#{context}[:total]")
        Hearth::Validator.validate!(input[:remaining], ::Float, context: "#{context}[:remaining]")
      end
    end

    class UniqueProblem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UniqueProblem, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Validators::Problems.validate!(input[:problems], context: "#{context}[:problems]") unless input[:problems].nil?
      end
    end

    class UniqueProblems
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::UniqueProblem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UniqueProblemsByExecutionResultMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::UniqueProblems.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateDeviceInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDeviceInstanceInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:profile_arn], ::String, context: "#{context}[:profile_arn]")
        Validators::InstanceLabels.validate!(input[:labels], context: "#{context}[:labels]") unless input[:labels].nil?
      end
    end

    class UpdateDeviceInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDeviceInstanceOutput, context: context)
        Validators::DeviceInstance.validate!(input[:device_instance], context: "#{context}[:device_instance]") unless input[:device_instance].nil?
      end
    end

    class UpdateDevicePoolInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDevicePoolInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::Rules.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
        Hearth::Validator.validate!(input[:max_devices], ::Integer, context: "#{context}[:max_devices]")
        Hearth::Validator.validate!(input[:clear_max_devices], ::TrueClass, ::FalseClass, context: "#{context}[:clear_max_devices]")
      end
    end

    class UpdateDevicePoolOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDevicePoolOutput, context: context)
        Validators::DevicePool.validate!(input[:device_pool], context: "#{context}[:device_pool]") unless input[:device_pool].nil?
      end
    end

    class UpdateInstanceProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateInstanceProfileInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:package_cleanup], ::TrueClass, ::FalseClass, context: "#{context}[:package_cleanup]")
        Validators::PackageIds.validate!(input[:exclude_app_packages_from_cleanup], context: "#{context}[:exclude_app_packages_from_cleanup]") unless input[:exclude_app_packages_from_cleanup].nil?
        Hearth::Validator.validate!(input[:reboot_after_use], ::TrueClass, ::FalseClass, context: "#{context}[:reboot_after_use]")
      end
    end

    class UpdateInstanceProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateInstanceProfileOutput, context: context)
        Validators::InstanceProfile.validate!(input[:instance_profile], context: "#{context}[:instance_profile]") unless input[:instance_profile].nil?
      end
    end

    class UpdateNetworkProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateNetworkProfileInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:uplink_bandwidth_bits], ::Integer, context: "#{context}[:uplink_bandwidth_bits]")
        Hearth::Validator.validate!(input[:downlink_bandwidth_bits], ::Integer, context: "#{context}[:downlink_bandwidth_bits]")
        Hearth::Validator.validate!(input[:uplink_delay_ms], ::Integer, context: "#{context}[:uplink_delay_ms]")
        Hearth::Validator.validate!(input[:downlink_delay_ms], ::Integer, context: "#{context}[:downlink_delay_ms]")
        Hearth::Validator.validate!(input[:uplink_jitter_ms], ::Integer, context: "#{context}[:uplink_jitter_ms]")
        Hearth::Validator.validate!(input[:downlink_jitter_ms], ::Integer, context: "#{context}[:downlink_jitter_ms]")
        Hearth::Validator.validate!(input[:uplink_loss_percent], ::Integer, context: "#{context}[:uplink_loss_percent]")
        Hearth::Validator.validate!(input[:downlink_loss_percent], ::Integer, context: "#{context}[:downlink_loss_percent]")
      end
    end

    class UpdateNetworkProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateNetworkProfileOutput, context: context)
        Validators::NetworkProfile.validate!(input[:network_profile], context: "#{context}[:network_profile]") unless input[:network_profile].nil?
      end
    end

    class UpdateProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProjectInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:default_job_timeout_minutes], ::Integer, context: "#{context}[:default_job_timeout_minutes]")
      end
    end

    class UpdateProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProjectOutput, context: context)
        Validators::Project.validate!(input[:project], context: "#{context}[:project]") unless input[:project].nil?
      end
    end

    class UpdateTestGridProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTestGridProjectInput, context: context)
        Hearth::Validator.validate!(input[:project_arn], ::String, context: "#{context}[:project_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TestGridVpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
      end
    end

    class UpdateTestGridProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTestGridProjectOutput, context: context)
        Validators::TestGridProject.validate!(input[:test_grid_project], context: "#{context}[:test_grid_project]") unless input[:test_grid_project].nil?
      end
    end

    class UpdateUploadInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUploadInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:edit_content], ::TrueClass, ::FalseClass, context: "#{context}[:edit_content]")
      end
    end

    class UpdateUploadOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUploadOutput, context: context)
        Validators::Upload.validate!(input[:upload], context: "#{context}[:upload]") unless input[:upload].nil?
      end
    end

    class UpdateVPCEConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVPCEConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:vpce_configuration_name], ::String, context: "#{context}[:vpce_configuration_name]")
        Hearth::Validator.validate!(input[:vpce_service_name], ::String, context: "#{context}[:vpce_service_name]")
        Hearth::Validator.validate!(input[:service_dns_name], ::String, context: "#{context}[:service_dns_name]")
        Hearth::Validator.validate!(input[:vpce_configuration_description], ::String, context: "#{context}[:vpce_configuration_description]")
      end
    end

    class UpdateVPCEConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVPCEConfigurationOutput, context: context)
        Validators::VPCEConfiguration.validate!(input[:vpce_configuration], context: "#{context}[:vpce_configuration]") unless input[:vpce_configuration].nil?
      end
    end

    class Upload
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Upload, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Hearth::Validator.validate!(input[:metadata], ::String, context: "#{context}[:metadata]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
      end
    end

    class Uploads
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Upload.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VPCEConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VPCEConfiguration, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:vpce_configuration_name], ::String, context: "#{context}[:vpce_configuration_name]")
        Hearth::Validator.validate!(input[:vpce_service_name], ::String, context: "#{context}[:vpce_service_name]")
        Hearth::Validator.validate!(input[:service_dns_name], ::String, context: "#{context}[:service_dns_name]")
        Hearth::Validator.validate!(input[:vpce_configuration_description], ::String, context: "#{context}[:vpce_configuration_description]")
      end
    end

    class VPCEConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::VPCEConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
