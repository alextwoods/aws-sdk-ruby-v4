# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::DeviceFarm
  module Params

    module AccountSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountSettings, context: context)
        type = Types::AccountSettings.new
        type.aws_account_number = params[:aws_account_number]
        type.unmetered_devices = PurchasedDevicesMap.build(params[:unmetered_devices], context: "#{context}[:unmetered_devices]") unless params[:unmetered_devices].nil?
        type.unmetered_remote_access_devices = PurchasedDevicesMap.build(params[:unmetered_remote_access_devices], context: "#{context}[:unmetered_remote_access_devices]") unless params[:unmetered_remote_access_devices].nil?
        type.max_job_timeout_minutes = params[:max_job_timeout_minutes]
        type.trial_minutes = TrialMinutes.build(params[:trial_minutes], context: "#{context}[:trial_minutes]") unless params[:trial_minutes].nil?
        type.max_slots = MaxSlotMap.build(params[:max_slots], context: "#{context}[:max_slots]") unless params[:max_slots].nil?
        type.default_job_timeout_minutes = params[:default_job_timeout_minutes]
        type.skip_app_resign = params[:skip_app_resign]
        type
      end
    end

    module AmazonResourceNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AndroidPaths
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ArgumentException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ArgumentException, context: context)
        type = Types::ArgumentException.new
        type.message = params[:message]
        type
      end
    end

    module Artifact
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Artifact, context: context)
        type = Types::Artifact.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.type = params[:type]
        type.extension = params[:extension]
        type.url = params[:url]
        type
      end
    end

    module Artifacts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Artifact.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CPU
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CPU, context: context)
        type = Types::CPU.new
        type.frequency = params[:frequency]
        type.architecture = params[:architecture]
        type.clock = params[:clock]
        type
      end
    end

    module CannotDeleteException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CannotDeleteException, context: context)
        type = Types::CannotDeleteException.new
        type.message = params[:message]
        type
      end
    end

    module Counters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Counters, context: context)
        type = Types::Counters.new
        type.total = params[:total]
        type.passed = params[:passed]
        type.failed = params[:failed]
        type.warned = params[:warned]
        type.errored = params[:errored]
        type.stopped = params[:stopped]
        type.skipped = params[:skipped]
        type
      end
    end

    module CreateDevicePoolInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDevicePoolInput, context: context)
        type = Types::CreateDevicePoolInput.new
        type.project_arn = params[:project_arn]
        type.name = params[:name]
        type.description = params[:description]
        type.rules = Rules.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type.max_devices = params[:max_devices]
        type
      end
    end

    module CreateDevicePoolOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDevicePoolOutput, context: context)
        type = Types::CreateDevicePoolOutput.new
        type.device_pool = DevicePool.build(params[:device_pool], context: "#{context}[:device_pool]") unless params[:device_pool].nil?
        type
      end
    end

    module CreateInstanceProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInstanceProfileInput, context: context)
        type = Types::CreateInstanceProfileInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.package_cleanup = params[:package_cleanup]
        type.exclude_app_packages_from_cleanup = PackageIds.build(params[:exclude_app_packages_from_cleanup], context: "#{context}[:exclude_app_packages_from_cleanup]") unless params[:exclude_app_packages_from_cleanup].nil?
        type.reboot_after_use = params[:reboot_after_use]
        type
      end
    end

    module CreateInstanceProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInstanceProfileOutput, context: context)
        type = Types::CreateInstanceProfileOutput.new
        type.instance_profile = InstanceProfile.build(params[:instance_profile], context: "#{context}[:instance_profile]") unless params[:instance_profile].nil?
        type
      end
    end

    module CreateNetworkProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNetworkProfileInput, context: context)
        type = Types::CreateNetworkProfileInput.new
        type.project_arn = params[:project_arn]
        type.name = params[:name]
        type.description = params[:description]
        type.type = params[:type]
        type.uplink_bandwidth_bits = params[:uplink_bandwidth_bits]
        type.downlink_bandwidth_bits = params[:downlink_bandwidth_bits]
        type.uplink_delay_ms = params[:uplink_delay_ms]
        type.downlink_delay_ms = params[:downlink_delay_ms]
        type.uplink_jitter_ms = params[:uplink_jitter_ms]
        type.downlink_jitter_ms = params[:downlink_jitter_ms]
        type.uplink_loss_percent = params[:uplink_loss_percent]
        type.downlink_loss_percent = params[:downlink_loss_percent]
        type
      end
    end

    module CreateNetworkProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNetworkProfileOutput, context: context)
        type = Types::CreateNetworkProfileOutput.new
        type.network_profile = NetworkProfile.build(params[:network_profile], context: "#{context}[:network_profile]") unless params[:network_profile].nil?
        type
      end
    end

    module CreateProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProjectInput, context: context)
        type = Types::CreateProjectInput.new
        type.name = params[:name]
        type.default_job_timeout_minutes = params[:default_job_timeout_minutes]
        type
      end
    end

    module CreateProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProjectOutput, context: context)
        type = Types::CreateProjectOutput.new
        type.project = Project.build(params[:project], context: "#{context}[:project]") unless params[:project].nil?
        type
      end
    end

    module CreateRemoteAccessSessionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRemoteAccessSessionConfiguration, context: context)
        type = Types::CreateRemoteAccessSessionConfiguration.new
        type.billing_method = params[:billing_method]
        type.vpce_configuration_arns = AmazonResourceNames.build(params[:vpce_configuration_arns], context: "#{context}[:vpce_configuration_arns]") unless params[:vpce_configuration_arns].nil?
        type
      end
    end

    module CreateRemoteAccessSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRemoteAccessSessionInput, context: context)
        type = Types::CreateRemoteAccessSessionInput.new
        type.project_arn = params[:project_arn]
        type.device_arn = params[:device_arn]
        type.instance_arn = params[:instance_arn]
        type.ssh_public_key = params[:ssh_public_key]
        type.remote_debug_enabled = params[:remote_debug_enabled]
        type.remote_record_enabled = params[:remote_record_enabled]
        type.remote_record_app_arn = params[:remote_record_app_arn]
        type.name = params[:name]
        type.client_id = params[:client_id]
        type.configuration = CreateRemoteAccessSessionConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.interaction_mode = params[:interaction_mode]
        type.skip_app_resign = params[:skip_app_resign]
        type
      end
    end

    module CreateRemoteAccessSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRemoteAccessSessionOutput, context: context)
        type = Types::CreateRemoteAccessSessionOutput.new
        type.remote_access_session = RemoteAccessSession.build(params[:remote_access_session], context: "#{context}[:remote_access_session]") unless params[:remote_access_session].nil?
        type
      end
    end

    module CreateTestGridProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTestGridProjectInput, context: context)
        type = Types::CreateTestGridProjectInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.vpc_config = TestGridVpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type
      end
    end

    module CreateTestGridProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTestGridProjectOutput, context: context)
        type = Types::CreateTestGridProjectOutput.new
        type.test_grid_project = TestGridProject.build(params[:test_grid_project], context: "#{context}[:test_grid_project]") unless params[:test_grid_project].nil?
        type
      end
    end

    module CreateTestGridUrlInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTestGridUrlInput, context: context)
        type = Types::CreateTestGridUrlInput.new
        type.project_arn = params[:project_arn]
        type.expires_in_seconds = params[:expires_in_seconds]
        type
      end
    end

    module CreateTestGridUrlOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTestGridUrlOutput, context: context)
        type = Types::CreateTestGridUrlOutput.new
        type.url = params[:url]
        type.expires = params[:expires]
        type
      end
    end

    module CreateUploadInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUploadInput, context: context)
        type = Types::CreateUploadInput.new
        type.project_arn = params[:project_arn]
        type.name = params[:name]
        type.type = params[:type]
        type.content_type = params[:content_type]
        type
      end
    end

    module CreateUploadOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUploadOutput, context: context)
        type = Types::CreateUploadOutput.new
        type.upload = Upload.build(params[:upload], context: "#{context}[:upload]") unless params[:upload].nil?
        type
      end
    end

    module CreateVPCEConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVPCEConfigurationInput, context: context)
        type = Types::CreateVPCEConfigurationInput.new
        type.vpce_configuration_name = params[:vpce_configuration_name]
        type.vpce_service_name = params[:vpce_service_name]
        type.service_dns_name = params[:service_dns_name]
        type.vpce_configuration_description = params[:vpce_configuration_description]
        type
      end
    end

    module CreateVPCEConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVPCEConfigurationOutput, context: context)
        type = Types::CreateVPCEConfigurationOutput.new
        type.vpce_configuration = VPCEConfiguration.build(params[:vpce_configuration], context: "#{context}[:vpce_configuration]") unless params[:vpce_configuration].nil?
        type
      end
    end

    module CustomerArtifactPaths
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomerArtifactPaths, context: context)
        type = Types::CustomerArtifactPaths.new
        type.ios_paths = IosPaths.build(params[:ios_paths], context: "#{context}[:ios_paths]") unless params[:ios_paths].nil?
        type.android_paths = AndroidPaths.build(params[:android_paths], context: "#{context}[:android_paths]") unless params[:android_paths].nil?
        type.device_host_paths = DeviceHostPaths.build(params[:device_host_paths], context: "#{context}[:device_host_paths]") unless params[:device_host_paths].nil?
        type
      end
    end

    module DeleteDevicePoolInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDevicePoolInput, context: context)
        type = Types::DeleteDevicePoolInput.new
        type.arn = params[:arn]
        type
      end
    end

    module DeleteDevicePoolOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDevicePoolOutput, context: context)
        type = Types::DeleteDevicePoolOutput.new
        type
      end
    end

    module DeleteInstanceProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInstanceProfileInput, context: context)
        type = Types::DeleteInstanceProfileInput.new
        type.arn = params[:arn]
        type
      end
    end

    module DeleteInstanceProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInstanceProfileOutput, context: context)
        type = Types::DeleteInstanceProfileOutput.new
        type
      end
    end

    module DeleteNetworkProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNetworkProfileInput, context: context)
        type = Types::DeleteNetworkProfileInput.new
        type.arn = params[:arn]
        type
      end
    end

    module DeleteNetworkProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNetworkProfileOutput, context: context)
        type = Types::DeleteNetworkProfileOutput.new
        type
      end
    end

    module DeleteProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProjectInput, context: context)
        type = Types::DeleteProjectInput.new
        type.arn = params[:arn]
        type
      end
    end

    module DeleteProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProjectOutput, context: context)
        type = Types::DeleteProjectOutput.new
        type
      end
    end

    module DeleteRemoteAccessSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRemoteAccessSessionInput, context: context)
        type = Types::DeleteRemoteAccessSessionInput.new
        type.arn = params[:arn]
        type
      end
    end

    module DeleteRemoteAccessSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRemoteAccessSessionOutput, context: context)
        type = Types::DeleteRemoteAccessSessionOutput.new
        type
      end
    end

    module DeleteRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRunInput, context: context)
        type = Types::DeleteRunInput.new
        type.arn = params[:arn]
        type
      end
    end

    module DeleteRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRunOutput, context: context)
        type = Types::DeleteRunOutput.new
        type
      end
    end

    module DeleteTestGridProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTestGridProjectInput, context: context)
        type = Types::DeleteTestGridProjectInput.new
        type.project_arn = params[:project_arn]
        type
      end
    end

    module DeleteTestGridProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTestGridProjectOutput, context: context)
        type = Types::DeleteTestGridProjectOutput.new
        type
      end
    end

    module DeleteUploadInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUploadInput, context: context)
        type = Types::DeleteUploadInput.new
        type.arn = params[:arn]
        type
      end
    end

    module DeleteUploadOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUploadOutput, context: context)
        type = Types::DeleteUploadOutput.new
        type
      end
    end

    module DeleteVPCEConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVPCEConfigurationInput, context: context)
        type = Types::DeleteVPCEConfigurationInput.new
        type.arn = params[:arn]
        type
      end
    end

    module DeleteVPCEConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVPCEConfigurationOutput, context: context)
        type = Types::DeleteVPCEConfigurationOutput.new
        type
      end
    end

    module Device
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Device, context: context)
        type = Types::Device.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.manufacturer = params[:manufacturer]
        type.model = params[:model]
        type.model_id = params[:model_id]
        type.form_factor = params[:form_factor]
        type.platform = params[:platform]
        type.os = params[:os]
        type.cpu = CPU.build(params[:cpu], context: "#{context}[:cpu]") unless params[:cpu].nil?
        type.resolution = Resolution.build(params[:resolution], context: "#{context}[:resolution]") unless params[:resolution].nil?
        type.heap_size = params[:heap_size]
        type.memory = params[:memory]
        type.image = params[:image]
        type.carrier = params[:carrier]
        type.radio = params[:radio]
        type.remote_access_enabled = params[:remote_access_enabled]
        type.remote_debug_enabled = params[:remote_debug_enabled]
        type.fleet_type = params[:fleet_type]
        type.fleet_name = params[:fleet_name]
        type.instances = DeviceInstances.build(params[:instances], context: "#{context}[:instances]") unless params[:instances].nil?
        type.availability = params[:availability]
        type
      end
    end

    module DeviceFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceFilter, context: context)
        type = Types::DeviceFilter.new
        type.attribute = params[:attribute]
        type.operator = params[:operator]
        type.values = DeviceFilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module DeviceFilterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DeviceFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeviceFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeviceHostPaths
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DeviceInstance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceInstance, context: context)
        type = Types::DeviceInstance.new
        type.arn = params[:arn]
        type.device_arn = params[:device_arn]
        type.labels = InstanceLabels.build(params[:labels], context: "#{context}[:labels]") unless params[:labels].nil?
        type.status = params[:status]
        type.udid = params[:udid]
        type.instance_profile = InstanceProfile.build(params[:instance_profile], context: "#{context}[:instance_profile]") unless params[:instance_profile].nil?
        type
      end
    end

    module DeviceInstances
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeviceInstance.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeviceMinutes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceMinutes, context: context)
        type = Types::DeviceMinutes.new
        type.total = params[:total]
        type.metered = params[:metered]
        type.unmetered = params[:unmetered]
        type
      end
    end

    module DevicePool
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DevicePool, context: context)
        type = Types::DevicePool.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.type = params[:type]
        type.rules = Rules.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type.max_devices = params[:max_devices]
        type
      end
    end

    module DevicePoolCompatibilityResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DevicePoolCompatibilityResult, context: context)
        type = Types::DevicePoolCompatibilityResult.new
        type.device = Device.build(params[:device], context: "#{context}[:device]") unless params[:device].nil?
        type.compatible = params[:compatible]
        type.incompatibility_messages = IncompatibilityMessages.build(params[:incompatibility_messages], context: "#{context}[:incompatibility_messages]") unless params[:incompatibility_messages].nil?
        type
      end
    end

    module DevicePoolCompatibilityResults
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DevicePoolCompatibilityResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DevicePools
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DevicePool.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeviceSelectionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceSelectionConfiguration, context: context)
        type = Types::DeviceSelectionConfiguration.new
        type.filters = DeviceFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_devices = params[:max_devices]
        type
      end
    end

    module DeviceSelectionResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceSelectionResult, context: context)
        type = Types::DeviceSelectionResult.new
        type.filters = DeviceFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.matched_devices_count = params[:matched_devices_count]
        type.max_devices = params[:max_devices]
        type
      end
    end

    module Devices
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Device.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExecutionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecutionConfiguration, context: context)
        type = Types::ExecutionConfiguration.new
        type.job_timeout_minutes = params[:job_timeout_minutes]
        type.accounts_cleanup = params[:accounts_cleanup]
        type.app_packages_cleanup = params[:app_packages_cleanup]
        type.video_capture = params[:video_capture]
        type.skip_app_resign = params[:skip_app_resign]
        type
      end
    end

    module GetAccountSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccountSettingsInput, context: context)
        type = Types::GetAccountSettingsInput.new
        type
      end
    end

    module GetAccountSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccountSettingsOutput, context: context)
        type = Types::GetAccountSettingsOutput.new
        type.account_settings = AccountSettings.build(params[:account_settings], context: "#{context}[:account_settings]") unless params[:account_settings].nil?
        type
      end
    end

    module GetDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeviceInput, context: context)
        type = Types::GetDeviceInput.new
        type.arn = params[:arn]
        type
      end
    end

    module GetDeviceInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeviceInstanceInput, context: context)
        type = Types::GetDeviceInstanceInput.new
        type.arn = params[:arn]
        type
      end
    end

    module GetDeviceInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeviceInstanceOutput, context: context)
        type = Types::GetDeviceInstanceOutput.new
        type.device_instance = DeviceInstance.build(params[:device_instance], context: "#{context}[:device_instance]") unless params[:device_instance].nil?
        type
      end
    end

    module GetDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeviceOutput, context: context)
        type = Types::GetDeviceOutput.new
        type.device = Device.build(params[:device], context: "#{context}[:device]") unless params[:device].nil?
        type
      end
    end

    module GetDevicePoolCompatibilityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDevicePoolCompatibilityInput, context: context)
        type = Types::GetDevicePoolCompatibilityInput.new
        type.device_pool_arn = params[:device_pool_arn]
        type.app_arn = params[:app_arn]
        type.test_type = params[:test_type]
        type.test = ScheduleRunTest.build(params[:test], context: "#{context}[:test]") unless params[:test].nil?
        type.configuration = ScheduleRunConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type
      end
    end

    module GetDevicePoolCompatibilityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDevicePoolCompatibilityOutput, context: context)
        type = Types::GetDevicePoolCompatibilityOutput.new
        type.compatible_devices = DevicePoolCompatibilityResults.build(params[:compatible_devices], context: "#{context}[:compatible_devices]") unless params[:compatible_devices].nil?
        type.incompatible_devices = DevicePoolCompatibilityResults.build(params[:incompatible_devices], context: "#{context}[:incompatible_devices]") unless params[:incompatible_devices].nil?
        type
      end
    end

    module GetDevicePoolInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDevicePoolInput, context: context)
        type = Types::GetDevicePoolInput.new
        type.arn = params[:arn]
        type
      end
    end

    module GetDevicePoolOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDevicePoolOutput, context: context)
        type = Types::GetDevicePoolOutput.new
        type.device_pool = DevicePool.build(params[:device_pool], context: "#{context}[:device_pool]") unless params[:device_pool].nil?
        type
      end
    end

    module GetInstanceProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInstanceProfileInput, context: context)
        type = Types::GetInstanceProfileInput.new
        type.arn = params[:arn]
        type
      end
    end

    module GetInstanceProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInstanceProfileOutput, context: context)
        type = Types::GetInstanceProfileOutput.new
        type.instance_profile = InstanceProfile.build(params[:instance_profile], context: "#{context}[:instance_profile]") unless params[:instance_profile].nil?
        type
      end
    end

    module GetJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobInput, context: context)
        type = Types::GetJobInput.new
        type.arn = params[:arn]
        type
      end
    end

    module GetJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobOutput, context: context)
        type = Types::GetJobOutput.new
        type.job = Job.build(params[:job], context: "#{context}[:job]") unless params[:job].nil?
        type
      end
    end

    module GetNetworkProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetNetworkProfileInput, context: context)
        type = Types::GetNetworkProfileInput.new
        type.arn = params[:arn]
        type
      end
    end

    module GetNetworkProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetNetworkProfileOutput, context: context)
        type = Types::GetNetworkProfileOutput.new
        type.network_profile = NetworkProfile.build(params[:network_profile], context: "#{context}[:network_profile]") unless params[:network_profile].nil?
        type
      end
    end

    module GetOfferingStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOfferingStatusInput, context: context)
        type = Types::GetOfferingStatusInput.new
        type.next_token = params[:next_token]
        type
      end
    end

    module GetOfferingStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOfferingStatusOutput, context: context)
        type = Types::GetOfferingStatusOutput.new
        type.current = OfferingStatusMap.build(params[:current], context: "#{context}[:current]") unless params[:current].nil?
        type.next_period = OfferingStatusMap.build(params[:next_period], context: "#{context}[:next_period]") unless params[:next_period].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetProjectInput, context: context)
        type = Types::GetProjectInput.new
        type.arn = params[:arn]
        type
      end
    end

    module GetProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetProjectOutput, context: context)
        type = Types::GetProjectOutput.new
        type.project = Project.build(params[:project], context: "#{context}[:project]") unless params[:project].nil?
        type
      end
    end

    module GetRemoteAccessSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRemoteAccessSessionInput, context: context)
        type = Types::GetRemoteAccessSessionInput.new
        type.arn = params[:arn]
        type
      end
    end

    module GetRemoteAccessSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRemoteAccessSessionOutput, context: context)
        type = Types::GetRemoteAccessSessionOutput.new
        type.remote_access_session = RemoteAccessSession.build(params[:remote_access_session], context: "#{context}[:remote_access_session]") unless params[:remote_access_session].nil?
        type
      end
    end

    module GetRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRunInput, context: context)
        type = Types::GetRunInput.new
        type.arn = params[:arn]
        type
      end
    end

    module GetRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRunOutput, context: context)
        type = Types::GetRunOutput.new
        type.run = Run.build(params[:run], context: "#{context}[:run]") unless params[:run].nil?
        type
      end
    end

    module GetSuiteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSuiteInput, context: context)
        type = Types::GetSuiteInput.new
        type.arn = params[:arn]
        type
      end
    end

    module GetSuiteOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSuiteOutput, context: context)
        type = Types::GetSuiteOutput.new
        type.suite = Suite.build(params[:suite], context: "#{context}[:suite]") unless params[:suite].nil?
        type
      end
    end

    module GetTestGridProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTestGridProjectInput, context: context)
        type = Types::GetTestGridProjectInput.new
        type.project_arn = params[:project_arn]
        type
      end
    end

    module GetTestGridProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTestGridProjectOutput, context: context)
        type = Types::GetTestGridProjectOutput.new
        type.test_grid_project = TestGridProject.build(params[:test_grid_project], context: "#{context}[:test_grid_project]") unless params[:test_grid_project].nil?
        type
      end
    end

    module GetTestGridSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTestGridSessionInput, context: context)
        type = Types::GetTestGridSessionInput.new
        type.project_arn = params[:project_arn]
        type.session_id = params[:session_id]
        type.session_arn = params[:session_arn]
        type
      end
    end

    module GetTestGridSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTestGridSessionOutput, context: context)
        type = Types::GetTestGridSessionOutput.new
        type.test_grid_session = TestGridSession.build(params[:test_grid_session], context: "#{context}[:test_grid_session]") unless params[:test_grid_session].nil?
        type
      end
    end

    module GetTestInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTestInput, context: context)
        type = Types::GetTestInput.new
        type.arn = params[:arn]
        type
      end
    end

    module GetTestOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTestOutput, context: context)
        type = Types::GetTestOutput.new
        type.test = Test.build(params[:test], context: "#{context}[:test]") unless params[:test].nil?
        type
      end
    end

    module GetUploadInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUploadInput, context: context)
        type = Types::GetUploadInput.new
        type.arn = params[:arn]
        type
      end
    end

    module GetUploadOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUploadOutput, context: context)
        type = Types::GetUploadOutput.new
        type.upload = Upload.build(params[:upload], context: "#{context}[:upload]") unless params[:upload].nil?
        type
      end
    end

    module GetVPCEConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVPCEConfigurationInput, context: context)
        type = Types::GetVPCEConfigurationInput.new
        type.arn = params[:arn]
        type
      end
    end

    module GetVPCEConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVPCEConfigurationOutput, context: context)
        type = Types::GetVPCEConfigurationOutput.new
        type.vpce_configuration = VPCEConfiguration.build(params[:vpce_configuration], context: "#{context}[:vpce_configuration]") unless params[:vpce_configuration].nil?
        type
      end
    end

    module IdempotencyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IdempotencyException, context: context)
        type = Types::IdempotencyException.new
        type.message = params[:message]
        type
      end
    end

    module IncompatibilityMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IncompatibilityMessage, context: context)
        type = Types::IncompatibilityMessage.new
        type.message = params[:message]
        type.type = params[:type]
        type
      end
    end

    module IncompatibilityMessages
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IncompatibilityMessage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstallToRemoteAccessSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstallToRemoteAccessSessionInput, context: context)
        type = Types::InstallToRemoteAccessSessionInput.new
        type.remote_access_session_arn = params[:remote_access_session_arn]
        type.app_arn = params[:app_arn]
        type
      end
    end

    module InstallToRemoteAccessSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstallToRemoteAccessSessionOutput, context: context)
        type = Types::InstallToRemoteAccessSessionOutput.new
        type.app_upload = Upload.build(params[:app_upload], context: "#{context}[:app_upload]") unless params[:app_upload].nil?
        type
      end
    end

    module InstanceLabels
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InstanceProfile
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceProfile, context: context)
        type = Types::InstanceProfile.new
        type.arn = params[:arn]
        type.package_cleanup = params[:package_cleanup]
        type.exclude_app_packages_from_cleanup = PackageIds.build(params[:exclude_app_packages_from_cleanup], context: "#{context}[:exclude_app_packages_from_cleanup]") unless params[:exclude_app_packages_from_cleanup].nil?
        type.reboot_after_use = params[:reboot_after_use]
        type.name = params[:name]
        type.description = params[:description]
        type
      end
    end

    module InstanceProfiles
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceProfile.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InternalServiceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServiceException, context: context)
        type = Types::InternalServiceException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidOperationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidOperationException, context: context)
        type = Types::InvalidOperationException.new
        type.message = params[:message]
        type
      end
    end

    module IosPaths
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Job
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Job, context: context)
        type = Types::Job.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.type = params[:type]
        type.created = params[:created]
        type.status = params[:status]
        type.result = params[:result]
        type.started = params[:started]
        type.stopped = params[:stopped]
        type.counters = Counters.build(params[:counters], context: "#{context}[:counters]") unless params[:counters].nil?
        type.message = params[:message]
        type.device = Device.build(params[:device], context: "#{context}[:device]") unless params[:device].nil?
        type.instance_arn = params[:instance_arn]
        type.device_minutes = DeviceMinutes.build(params[:device_minutes], context: "#{context}[:device_minutes]") unless params[:device_minutes].nil?
        type.video_endpoint = params[:video_endpoint]
        type.video_capture = params[:video_capture]
        type
      end
    end

    module Jobs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Job.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListArtifactsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListArtifactsInput, context: context)
        type = Types::ListArtifactsInput.new
        type.arn = params[:arn]
        type.type = params[:type]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListArtifactsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListArtifactsOutput, context: context)
        type = Types::ListArtifactsOutput.new
        type.artifacts = Artifacts.build(params[:artifacts], context: "#{context}[:artifacts]") unless params[:artifacts].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDeviceInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeviceInstancesInput, context: context)
        type = Types::ListDeviceInstancesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDeviceInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeviceInstancesOutput, context: context)
        type = Types::ListDeviceInstancesOutput.new
        type.device_instances = DeviceInstances.build(params[:device_instances], context: "#{context}[:device_instances]") unless params[:device_instances].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDevicePoolsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDevicePoolsInput, context: context)
        type = Types::ListDevicePoolsInput.new
        type.arn = params[:arn]
        type.type = params[:type]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDevicePoolsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDevicePoolsOutput, context: context)
        type = Types::ListDevicePoolsOutput.new
        type.device_pools = DevicePools.build(params[:device_pools], context: "#{context}[:device_pools]") unless params[:device_pools].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDevicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDevicesInput, context: context)
        type = Types::ListDevicesInput.new
        type.arn = params[:arn]
        type.next_token = params[:next_token]
        type.filters = DeviceFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListDevicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDevicesOutput, context: context)
        type = Types::ListDevicesOutput.new
        type.devices = Devices.build(params[:devices], context: "#{context}[:devices]") unless params[:devices].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListInstanceProfilesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInstanceProfilesInput, context: context)
        type = Types::ListInstanceProfilesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListInstanceProfilesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInstanceProfilesOutput, context: context)
        type = Types::ListInstanceProfilesOutput.new
        type.instance_profiles = InstanceProfiles.build(params[:instance_profiles], context: "#{context}[:instance_profiles]") unless params[:instance_profiles].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobsInput, context: context)
        type = Types::ListJobsInput.new
        type.arn = params[:arn]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobsOutput, context: context)
        type = Types::ListJobsOutput.new
        type.jobs = Jobs.build(params[:jobs], context: "#{context}[:jobs]") unless params[:jobs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListNetworkProfilesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNetworkProfilesInput, context: context)
        type = Types::ListNetworkProfilesInput.new
        type.arn = params[:arn]
        type.type = params[:type]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListNetworkProfilesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNetworkProfilesOutput, context: context)
        type = Types::ListNetworkProfilesOutput.new
        type.network_profiles = NetworkProfiles.build(params[:network_profiles], context: "#{context}[:network_profiles]") unless params[:network_profiles].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOfferingPromotionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOfferingPromotionsInput, context: context)
        type = Types::ListOfferingPromotionsInput.new
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOfferingPromotionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOfferingPromotionsOutput, context: context)
        type = Types::ListOfferingPromotionsOutput.new
        type.offering_promotions = OfferingPromotions.build(params[:offering_promotions], context: "#{context}[:offering_promotions]") unless params[:offering_promotions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOfferingTransactionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOfferingTransactionsInput, context: context)
        type = Types::ListOfferingTransactionsInput.new
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOfferingTransactionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOfferingTransactionsOutput, context: context)
        type = Types::ListOfferingTransactionsOutput.new
        type.offering_transactions = OfferingTransactions.build(params[:offering_transactions], context: "#{context}[:offering_transactions]") unless params[:offering_transactions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOfferingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOfferingsInput, context: context)
        type = Types::ListOfferingsInput.new
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOfferingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOfferingsOutput, context: context)
        type = Types::ListOfferingsOutput.new
        type.offerings = Offerings.build(params[:offerings], context: "#{context}[:offerings]") unless params[:offerings].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListProjectsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProjectsInput, context: context)
        type = Types::ListProjectsInput.new
        type.arn = params[:arn]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListProjectsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProjectsOutput, context: context)
        type = Types::ListProjectsOutput.new
        type.projects = Projects.build(params[:projects], context: "#{context}[:projects]") unless params[:projects].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRemoteAccessSessionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRemoteAccessSessionsInput, context: context)
        type = Types::ListRemoteAccessSessionsInput.new
        type.arn = params[:arn]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRemoteAccessSessionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRemoteAccessSessionsOutput, context: context)
        type = Types::ListRemoteAccessSessionsOutput.new
        type.remote_access_sessions = RemoteAccessSessions.build(params[:remote_access_sessions], context: "#{context}[:remote_access_sessions]") unless params[:remote_access_sessions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRunsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRunsInput, context: context)
        type = Types::ListRunsInput.new
        type.arn = params[:arn]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRunsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRunsOutput, context: context)
        type = Types::ListRunsOutput.new
        type.runs = Runs.build(params[:runs], context: "#{context}[:runs]") unless params[:runs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSamplesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSamplesInput, context: context)
        type = Types::ListSamplesInput.new
        type.arn = params[:arn]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSamplesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSamplesOutput, context: context)
        type = Types::ListSamplesOutput.new
        type.samples = Samples.build(params[:samples], context: "#{context}[:samples]") unless params[:samples].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSuitesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSuitesInput, context: context)
        type = Types::ListSuitesInput.new
        type.arn = params[:arn]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSuitesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSuitesOutput, context: context)
        type = Types::ListSuitesOutput.new
        type.suites = Suites.build(params[:suites], context: "#{context}[:suites]") unless params[:suites].nil?
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
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListTestGridProjectsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTestGridProjectsInput, context: context)
        type = Types::ListTestGridProjectsInput.new
        type.max_result = params[:max_result]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTestGridProjectsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTestGridProjectsOutput, context: context)
        type = Types::ListTestGridProjectsOutput.new
        type.test_grid_projects = TestGridProjects.build(params[:test_grid_projects], context: "#{context}[:test_grid_projects]") unless params[:test_grid_projects].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTestGridSessionActionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTestGridSessionActionsInput, context: context)
        type = Types::ListTestGridSessionActionsInput.new
        type.session_arn = params[:session_arn]
        type.max_result = params[:max_result]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTestGridSessionActionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTestGridSessionActionsOutput, context: context)
        type = Types::ListTestGridSessionActionsOutput.new
        type.actions = TestGridSessionActions.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTestGridSessionArtifactsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTestGridSessionArtifactsInput, context: context)
        type = Types::ListTestGridSessionArtifactsInput.new
        type.session_arn = params[:session_arn]
        type.type = params[:type]
        type.max_result = params[:max_result]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTestGridSessionArtifactsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTestGridSessionArtifactsOutput, context: context)
        type = Types::ListTestGridSessionArtifactsOutput.new
        type.artifacts = TestGridSessionArtifacts.build(params[:artifacts], context: "#{context}[:artifacts]") unless params[:artifacts].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTestGridSessionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTestGridSessionsInput, context: context)
        type = Types::ListTestGridSessionsInput.new
        type.project_arn = params[:project_arn]
        type.status = params[:status]
        type.creation_time_after = params[:creation_time_after]
        type.creation_time_before = params[:creation_time_before]
        type.end_time_after = params[:end_time_after]
        type.end_time_before = params[:end_time_before]
        type.max_result = params[:max_result]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTestGridSessionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTestGridSessionsOutput, context: context)
        type = Types::ListTestGridSessionsOutput.new
        type.test_grid_sessions = TestGridSessions.build(params[:test_grid_sessions], context: "#{context}[:test_grid_sessions]") unless params[:test_grid_sessions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTestsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTestsInput, context: context)
        type = Types::ListTestsInput.new
        type.arn = params[:arn]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTestsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTestsOutput, context: context)
        type = Types::ListTestsOutput.new
        type.tests = Tests.build(params[:tests], context: "#{context}[:tests]") unless params[:tests].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListUniqueProblemsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUniqueProblemsInput, context: context)
        type = Types::ListUniqueProblemsInput.new
        type.arn = params[:arn]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListUniqueProblemsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUniqueProblemsOutput, context: context)
        type = Types::ListUniqueProblemsOutput.new
        type.unique_problems = UniqueProblemsByExecutionResultMap.build(params[:unique_problems], context: "#{context}[:unique_problems]") unless params[:unique_problems].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListUploadsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUploadsInput, context: context)
        type = Types::ListUploadsInput.new
        type.arn = params[:arn]
        type.type = params[:type]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListUploadsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUploadsOutput, context: context)
        type = Types::ListUploadsOutput.new
        type.uploads = Uploads.build(params[:uploads], context: "#{context}[:uploads]") unless params[:uploads].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListVPCEConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVPCEConfigurationsInput, context: context)
        type = Types::ListVPCEConfigurationsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListVPCEConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVPCEConfigurationsOutput, context: context)
        type = Types::ListVPCEConfigurationsOutput.new
        type.vpce_configurations = VPCEConfigurations.build(params[:vpce_configurations], context: "#{context}[:vpce_configurations]") unless params[:vpce_configurations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module Location
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Location, context: context)
        type = Types::Location.new
        type.latitude = params[:latitude]
        type.longitude = params[:longitude]
        type
      end
    end

    module MaxSlotMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module MonetaryAmount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MonetaryAmount, context: context)
        type = Types::MonetaryAmount.new
        type.amount = params[:amount]
        type.currency_code = params[:currency_code]
        type
      end
    end

    module NetworkProfile
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkProfile, context: context)
        type = Types::NetworkProfile.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.type = params[:type]
        type.uplink_bandwidth_bits = params[:uplink_bandwidth_bits]
        type.downlink_bandwidth_bits = params[:downlink_bandwidth_bits]
        type.uplink_delay_ms = params[:uplink_delay_ms]
        type.downlink_delay_ms = params[:downlink_delay_ms]
        type.uplink_jitter_ms = params[:uplink_jitter_ms]
        type.downlink_jitter_ms = params[:downlink_jitter_ms]
        type.uplink_loss_percent = params[:uplink_loss_percent]
        type.downlink_loss_percent = params[:downlink_loss_percent]
        type
      end
    end

    module NetworkProfiles
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NetworkProfile.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NotEligibleException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotEligibleException, context: context)
        type = Types::NotEligibleException.new
        type.message = params[:message]
        type
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module Offering
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Offering, context: context)
        type = Types::Offering.new
        type.id = params[:id]
        type.description = params[:description]
        type.type = params[:type]
        type.platform = params[:platform]
        type.recurring_charges = RecurringCharges.build(params[:recurring_charges], context: "#{context}[:recurring_charges]") unless params[:recurring_charges].nil?
        type
      end
    end

    module OfferingPromotion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OfferingPromotion, context: context)
        type = Types::OfferingPromotion.new
        type.id = params[:id]
        type.description = params[:description]
        type
      end
    end

    module OfferingPromotions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OfferingPromotion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OfferingStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OfferingStatus, context: context)
        type = Types::OfferingStatus.new
        type.type = params[:type]
        type.offering = Offering.build(params[:offering], context: "#{context}[:offering]") unless params[:offering].nil?
        type.quantity = params[:quantity]
        type.effective_on = params[:effective_on]
        type
      end
    end

    module OfferingStatusMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = OfferingStatus.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module OfferingTransaction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OfferingTransaction, context: context)
        type = Types::OfferingTransaction.new
        type.offering_status = OfferingStatus.build(params[:offering_status], context: "#{context}[:offering_status]") unless params[:offering_status].nil?
        type.transaction_id = params[:transaction_id]
        type.offering_promotion_id = params[:offering_promotion_id]
        type.created_on = params[:created_on]
        type.cost = MonetaryAmount.build(params[:cost], context: "#{context}[:cost]") unless params[:cost].nil?
        type
      end
    end

    module OfferingTransactions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OfferingTransaction.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Offerings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Offering.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PackageIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Problem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Problem, context: context)
        type = Types::Problem.new
        type.run = ProblemDetail.build(params[:run], context: "#{context}[:run]") unless params[:run].nil?
        type.job = ProblemDetail.build(params[:job], context: "#{context}[:job]") unless params[:job].nil?
        type.suite = ProblemDetail.build(params[:suite], context: "#{context}[:suite]") unless params[:suite].nil?
        type.test = ProblemDetail.build(params[:test], context: "#{context}[:test]") unless params[:test].nil?
        type.device = Device.build(params[:device], context: "#{context}[:device]") unless params[:device].nil?
        type.result = params[:result]
        type.message = params[:message]
        type
      end
    end

    module ProblemDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProblemDetail, context: context)
        type = Types::ProblemDetail.new
        type.arn = params[:arn]
        type.name = params[:name]
        type
      end
    end

    module Problems
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Problem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Project
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Project, context: context)
        type = Types::Project.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.default_job_timeout_minutes = params[:default_job_timeout_minutes]
        type.created = params[:created]
        type
      end
    end

    module Projects
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Project.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PurchaseOfferingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PurchaseOfferingInput, context: context)
        type = Types::PurchaseOfferingInput.new
        type.offering_id = params[:offering_id]
        type.quantity = params[:quantity]
        type.offering_promotion_id = params[:offering_promotion_id]
        type
      end
    end

    module PurchaseOfferingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PurchaseOfferingOutput, context: context)
        type = Types::PurchaseOfferingOutput.new
        type.offering_transaction = OfferingTransaction.build(params[:offering_transaction], context: "#{context}[:offering_transaction]") unless params[:offering_transaction].nil?
        type
      end
    end

    module PurchasedDevicesMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Radios
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Radios, context: context)
        type = Types::Radios.new
        type.wifi = params[:wifi]
        type.bluetooth = params[:bluetooth]
        type.nfc = params[:nfc]
        type.gps = params[:gps]
        type
      end
    end

    module RecurringCharge
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecurringCharge, context: context)
        type = Types::RecurringCharge.new
        type.cost = MonetaryAmount.build(params[:cost], context: "#{context}[:cost]") unless params[:cost].nil?
        type.frequency = params[:frequency]
        type
      end
    end

    module RecurringCharges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecurringCharge.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RemoteAccessSession
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoteAccessSession, context: context)
        type = Types::RemoteAccessSession.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.created = params[:created]
        type.status = params[:status]
        type.result = params[:result]
        type.message = params[:message]
        type.started = params[:started]
        type.stopped = params[:stopped]
        type.device = Device.build(params[:device], context: "#{context}[:device]") unless params[:device].nil?
        type.instance_arn = params[:instance_arn]
        type.remote_debug_enabled = params[:remote_debug_enabled]
        type.remote_record_enabled = params[:remote_record_enabled]
        type.remote_record_app_arn = params[:remote_record_app_arn]
        type.host_address = params[:host_address]
        type.client_id = params[:client_id]
        type.billing_method = params[:billing_method]
        type.device_minutes = DeviceMinutes.build(params[:device_minutes], context: "#{context}[:device_minutes]") unless params[:device_minutes].nil?
        type.endpoint = params[:endpoint]
        type.device_udid = params[:device_udid]
        type.interaction_mode = params[:interaction_mode]
        type.skip_app_resign = params[:skip_app_resign]
        type
      end
    end

    module RemoteAccessSessions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RemoteAccessSession.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RenewOfferingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RenewOfferingInput, context: context)
        type = Types::RenewOfferingInput.new
        type.offering_id = params[:offering_id]
        type.quantity = params[:quantity]
        type
      end
    end

    module RenewOfferingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RenewOfferingOutput, context: context)
        type = Types::RenewOfferingOutput.new
        type.offering_transaction = OfferingTransaction.build(params[:offering_transaction], context: "#{context}[:offering_transaction]") unless params[:offering_transaction].nil?
        type
      end
    end

    module Resolution
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Resolution, context: context)
        type = Types::Resolution.new
        type.width = params[:width]
        type.height = params[:height]
        type
      end
    end

    module Rule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Rule, context: context)
        type = Types::Rule.new
        type.attribute = params[:attribute]
        type.operator = params[:operator]
        type.value = params[:value]
        type
      end
    end

    module Rules
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Rule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Run
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Run, context: context)
        type = Types::Run.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.type = params[:type]
        type.platform = params[:platform]
        type.created = params[:created]
        type.status = params[:status]
        type.result = params[:result]
        type.started = params[:started]
        type.stopped = params[:stopped]
        type.counters = Counters.build(params[:counters], context: "#{context}[:counters]") unless params[:counters].nil?
        type.message = params[:message]
        type.total_jobs = params[:total_jobs]
        type.completed_jobs = params[:completed_jobs]
        type.billing_method = params[:billing_method]
        type.device_minutes = DeviceMinutes.build(params[:device_minutes], context: "#{context}[:device_minutes]") unless params[:device_minutes].nil?
        type.network_profile = NetworkProfile.build(params[:network_profile], context: "#{context}[:network_profile]") unless params[:network_profile].nil?
        type.parsing_result_url = params[:parsing_result_url]
        type.result_code = params[:result_code]
        type.seed = params[:seed]
        type.app_upload = params[:app_upload]
        type.event_count = params[:event_count]
        type.job_timeout_minutes = params[:job_timeout_minutes]
        type.device_pool_arn = params[:device_pool_arn]
        type.locale = params[:locale]
        type.radios = Radios.build(params[:radios], context: "#{context}[:radios]") unless params[:radios].nil?
        type.location = Location.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.customer_artifact_paths = CustomerArtifactPaths.build(params[:customer_artifact_paths], context: "#{context}[:customer_artifact_paths]") unless params[:customer_artifact_paths].nil?
        type.web_url = params[:web_url]
        type.skip_app_resign = params[:skip_app_resign]
        type.test_spec_arn = params[:test_spec_arn]
        type.device_selection_result = DeviceSelectionResult.build(params[:device_selection_result], context: "#{context}[:device_selection_result]") unless params[:device_selection_result].nil?
        type
      end
    end

    module Runs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Run.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Sample
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Sample, context: context)
        type = Types::Sample.new
        type.arn = params[:arn]
        type.type = params[:type]
        type.url = params[:url]
        type
      end
    end

    module Samples
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Sample.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ScheduleRunConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduleRunConfiguration, context: context)
        type = Types::ScheduleRunConfiguration.new
        type.extra_data_package_arn = params[:extra_data_package_arn]
        type.network_profile_arn = params[:network_profile_arn]
        type.locale = params[:locale]
        type.location = Location.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.vpce_configuration_arns = AmazonResourceNames.build(params[:vpce_configuration_arns], context: "#{context}[:vpce_configuration_arns]") unless params[:vpce_configuration_arns].nil?
        type.customer_artifact_paths = CustomerArtifactPaths.build(params[:customer_artifact_paths], context: "#{context}[:customer_artifact_paths]") unless params[:customer_artifact_paths].nil?
        type.radios = Radios.build(params[:radios], context: "#{context}[:radios]") unless params[:radios].nil?
        type.auxiliary_apps = AmazonResourceNames.build(params[:auxiliary_apps], context: "#{context}[:auxiliary_apps]") unless params[:auxiliary_apps].nil?
        type.billing_method = params[:billing_method]
        type
      end
    end

    module ScheduleRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduleRunInput, context: context)
        type = Types::ScheduleRunInput.new
        type.project_arn = params[:project_arn]
        type.app_arn = params[:app_arn]
        type.device_pool_arn = params[:device_pool_arn]
        type.device_selection_configuration = DeviceSelectionConfiguration.build(params[:device_selection_configuration], context: "#{context}[:device_selection_configuration]") unless params[:device_selection_configuration].nil?
        type.name = params[:name]
        type.test = ScheduleRunTest.build(params[:test], context: "#{context}[:test]") unless params[:test].nil?
        type.configuration = ScheduleRunConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.execution_configuration = ExecutionConfiguration.build(params[:execution_configuration], context: "#{context}[:execution_configuration]") unless params[:execution_configuration].nil?
        type
      end
    end

    module ScheduleRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduleRunOutput, context: context)
        type = Types::ScheduleRunOutput.new
        type.run = Run.build(params[:run], context: "#{context}[:run]") unless params[:run].nil?
        type
      end
    end

    module ScheduleRunTest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduleRunTest, context: context)
        type = Types::ScheduleRunTest.new
        type.type = params[:type]
        type.test_package_arn = params[:test_package_arn]
        type.test_spec_arn = params[:test_spec_arn]
        type.filter = params[:filter]
        type.parameters = TestParameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module SecurityGroupIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ServiceAccountException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceAccountException, context: context)
        type = Types::ServiceAccountException.new
        type.message = params[:message]
        type
      end
    end

    module StopJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopJobInput, context: context)
        type = Types::StopJobInput.new
        type.arn = params[:arn]
        type
      end
    end

    module StopJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopJobOutput, context: context)
        type = Types::StopJobOutput.new
        type.job = Job.build(params[:job], context: "#{context}[:job]") unless params[:job].nil?
        type
      end
    end

    module StopRemoteAccessSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopRemoteAccessSessionInput, context: context)
        type = Types::StopRemoteAccessSessionInput.new
        type.arn = params[:arn]
        type
      end
    end

    module StopRemoteAccessSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopRemoteAccessSessionOutput, context: context)
        type = Types::StopRemoteAccessSessionOutput.new
        type.remote_access_session = RemoteAccessSession.build(params[:remote_access_session], context: "#{context}[:remote_access_session]") unless params[:remote_access_session].nil?
        type
      end
    end

    module StopRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopRunInput, context: context)
        type = Types::StopRunInput.new
        type.arn = params[:arn]
        type
      end
    end

    module StopRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopRunOutput, context: context)
        type = Types::StopRunOutput.new
        type.run = Run.build(params[:run], context: "#{context}[:run]") unless params[:run].nil?
        type
      end
    end

    module SubnetIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Suite
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Suite, context: context)
        type = Types::Suite.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.type = params[:type]
        type.created = params[:created]
        type.status = params[:status]
        type.result = params[:result]
        type.started = params[:started]
        type.stopped = params[:stopped]
        type.counters = Counters.build(params[:counters], context: "#{context}[:counters]") unless params[:counters].nil?
        type.message = params[:message]
        type.device_minutes = DeviceMinutes.build(params[:device_minutes], context: "#{context}[:device_minutes]") unless params[:device_minutes].nil?
        type
      end
    end

    module Suites
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Suite.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagOperationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagOperationException, context: context)
        type = Types::TagOperationException.new
        type.message = params[:message]
        type.resource_name = params[:resource_name]
        type
      end
    end

    module TagPolicyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagPolicyException, context: context)
        type = Types::TagPolicyException.new
        type.message = params[:message]
        type.resource_name = params[:resource_name]
        type
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module Test
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Test, context: context)
        type = Types::Test.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.type = params[:type]
        type.created = params[:created]
        type.status = params[:status]
        type.result = params[:result]
        type.started = params[:started]
        type.stopped = params[:stopped]
        type.counters = Counters.build(params[:counters], context: "#{context}[:counters]") unless params[:counters].nil?
        type.message = params[:message]
        type.device_minutes = DeviceMinutes.build(params[:device_minutes], context: "#{context}[:device_minutes]") unless params[:device_minutes].nil?
        type
      end
    end

    module TestGridProject
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestGridProject, context: context)
        type = Types::TestGridProject.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.vpc_config = TestGridVpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.created = params[:created]
        type
      end
    end

    module TestGridProjects
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TestGridProject.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TestGridSession
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestGridSession, context: context)
        type = Types::TestGridSession.new
        type.arn = params[:arn]
        type.status = params[:status]
        type.created = params[:created]
        type.ended = params[:ended]
        type.billing_minutes = params[:billing_minutes]
        type.selenium_properties = params[:selenium_properties]
        type
      end
    end

    module TestGridSessionAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestGridSessionAction, context: context)
        type = Types::TestGridSessionAction.new
        type.action = params[:action]
        type.started = params[:started]
        type.duration = params[:duration]
        type.status_code = params[:status_code]
        type.request_method = params[:request_method]
        type
      end
    end

    module TestGridSessionActions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TestGridSessionAction.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TestGridSessionArtifact
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestGridSessionArtifact, context: context)
        type = Types::TestGridSessionArtifact.new
        type.filename = params[:filename]
        type.type = params[:type]
        type.url = params[:url]
        type
      end
    end

    module TestGridSessionArtifacts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TestGridSessionArtifact.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TestGridSessions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TestGridSession.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TestGridVpcConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestGridVpcConfig, context: context)
        type = Types::TestGridVpcConfig.new
        type.security_group_ids = SecurityGroupIds.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.subnet_ids = SubnetIds.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.vpc_id = params[:vpc_id]
        type
      end
    end

    module TestParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Tests
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Test.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TooManyTagsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTagsException, context: context)
        type = Types::TooManyTagsException.new
        type.message = params[:message]
        type.resource_name = params[:resource_name]
        type
      end
    end

    module TrialMinutes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrialMinutes, context: context)
        type = Types::TrialMinutes.new
        type.total = params[:total]
        type.remaining = params[:remaining]
        type
      end
    end

    module UniqueProblem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UniqueProblem, context: context)
        type = Types::UniqueProblem.new
        type.message = params[:message]
        type.problems = Problems.build(params[:problems], context: "#{context}[:problems]") unless params[:problems].nil?
        type
      end
    end

    module UniqueProblems
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UniqueProblem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UniqueProblemsByExecutionResultMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = UniqueProblems.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module UpdateDeviceInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDeviceInstanceInput, context: context)
        type = Types::UpdateDeviceInstanceInput.new
        type.arn = params[:arn]
        type.profile_arn = params[:profile_arn]
        type.labels = InstanceLabels.build(params[:labels], context: "#{context}[:labels]") unless params[:labels].nil?
        type
      end
    end

    module UpdateDeviceInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDeviceInstanceOutput, context: context)
        type = Types::UpdateDeviceInstanceOutput.new
        type.device_instance = DeviceInstance.build(params[:device_instance], context: "#{context}[:device_instance]") unless params[:device_instance].nil?
        type
      end
    end

    module UpdateDevicePoolInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDevicePoolInput, context: context)
        type = Types::UpdateDevicePoolInput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.rules = Rules.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type.max_devices = params[:max_devices]
        type.clear_max_devices = params[:clear_max_devices]
        type
      end
    end

    module UpdateDevicePoolOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDevicePoolOutput, context: context)
        type = Types::UpdateDevicePoolOutput.new
        type.device_pool = DevicePool.build(params[:device_pool], context: "#{context}[:device_pool]") unless params[:device_pool].nil?
        type
      end
    end

    module UpdateInstanceProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateInstanceProfileInput, context: context)
        type = Types::UpdateInstanceProfileInput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.package_cleanup = params[:package_cleanup]
        type.exclude_app_packages_from_cleanup = PackageIds.build(params[:exclude_app_packages_from_cleanup], context: "#{context}[:exclude_app_packages_from_cleanup]") unless params[:exclude_app_packages_from_cleanup].nil?
        type.reboot_after_use = params[:reboot_after_use]
        type
      end
    end

    module UpdateInstanceProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateInstanceProfileOutput, context: context)
        type = Types::UpdateInstanceProfileOutput.new
        type.instance_profile = InstanceProfile.build(params[:instance_profile], context: "#{context}[:instance_profile]") unless params[:instance_profile].nil?
        type
      end
    end

    module UpdateNetworkProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateNetworkProfileInput, context: context)
        type = Types::UpdateNetworkProfileInput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.type = params[:type]
        type.uplink_bandwidth_bits = params[:uplink_bandwidth_bits]
        type.downlink_bandwidth_bits = params[:downlink_bandwidth_bits]
        type.uplink_delay_ms = params[:uplink_delay_ms]
        type.downlink_delay_ms = params[:downlink_delay_ms]
        type.uplink_jitter_ms = params[:uplink_jitter_ms]
        type.downlink_jitter_ms = params[:downlink_jitter_ms]
        type.uplink_loss_percent = params[:uplink_loss_percent]
        type.downlink_loss_percent = params[:downlink_loss_percent]
        type
      end
    end

    module UpdateNetworkProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateNetworkProfileOutput, context: context)
        type = Types::UpdateNetworkProfileOutput.new
        type.network_profile = NetworkProfile.build(params[:network_profile], context: "#{context}[:network_profile]") unless params[:network_profile].nil?
        type
      end
    end

    module UpdateProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProjectInput, context: context)
        type = Types::UpdateProjectInput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.default_job_timeout_minutes = params[:default_job_timeout_minutes]
        type
      end
    end

    module UpdateProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProjectOutput, context: context)
        type = Types::UpdateProjectOutput.new
        type.project = Project.build(params[:project], context: "#{context}[:project]") unless params[:project].nil?
        type
      end
    end

    module UpdateTestGridProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTestGridProjectInput, context: context)
        type = Types::UpdateTestGridProjectInput.new
        type.project_arn = params[:project_arn]
        type.name = params[:name]
        type.description = params[:description]
        type.vpc_config = TestGridVpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type
      end
    end

    module UpdateTestGridProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTestGridProjectOutput, context: context)
        type = Types::UpdateTestGridProjectOutput.new
        type.test_grid_project = TestGridProject.build(params[:test_grid_project], context: "#{context}[:test_grid_project]") unless params[:test_grid_project].nil?
        type
      end
    end

    module UpdateUploadInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUploadInput, context: context)
        type = Types::UpdateUploadInput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.content_type = params[:content_type]
        type.edit_content = params[:edit_content]
        type
      end
    end

    module UpdateUploadOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUploadOutput, context: context)
        type = Types::UpdateUploadOutput.new
        type.upload = Upload.build(params[:upload], context: "#{context}[:upload]") unless params[:upload].nil?
        type
      end
    end

    module UpdateVPCEConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVPCEConfigurationInput, context: context)
        type = Types::UpdateVPCEConfigurationInput.new
        type.arn = params[:arn]
        type.vpce_configuration_name = params[:vpce_configuration_name]
        type.vpce_service_name = params[:vpce_service_name]
        type.service_dns_name = params[:service_dns_name]
        type.vpce_configuration_description = params[:vpce_configuration_description]
        type
      end
    end

    module UpdateVPCEConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVPCEConfigurationOutput, context: context)
        type = Types::UpdateVPCEConfigurationOutput.new
        type.vpce_configuration = VPCEConfiguration.build(params[:vpce_configuration], context: "#{context}[:vpce_configuration]") unless params[:vpce_configuration].nil?
        type
      end
    end

    module Upload
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Upload, context: context)
        type = Types::Upload.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.created = params[:created]
        type.type = params[:type]
        type.status = params[:status]
        type.url = params[:url]
        type.metadata = params[:metadata]
        type.content_type = params[:content_type]
        type.message = params[:message]
        type.category = params[:category]
        type
      end
    end

    module Uploads
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Upload.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VPCEConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VPCEConfiguration, context: context)
        type = Types::VPCEConfiguration.new
        type.arn = params[:arn]
        type.vpce_configuration_name = params[:vpce_configuration_name]
        type.vpce_service_name = params[:vpce_service_name]
        type.service_dns_name = params[:service_dns_name]
        type.vpce_configuration_description = params[:vpce_configuration_description]
        type
      end
    end

    module VPCEConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VPCEConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
