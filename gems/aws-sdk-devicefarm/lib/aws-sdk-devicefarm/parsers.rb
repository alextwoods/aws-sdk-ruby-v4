# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::DeviceFarm
  module Parsers

    # Operation Parser for CreateDevicePool
    class CreateDevicePool
      def self.parse(http_resp)
        data = Types::CreateDevicePoolOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.device_pool = (Parsers::DevicePool.parse(map['devicePool']) unless map['devicePool'].nil?)
        data
      end
    end

    class DevicePool
      def self.parse(map)
        data = Types::DevicePool.new
        data.arn = map['arn']
        data.name = map['name']
        data.description = map['description']
        data.type = map['type']
        data.rules = (Parsers::Rules.parse(map['rules']) unless map['rules'].nil?)
        data.max_devices = map['maxDevices']
        return data
      end
    end

    class Rules
      def self.parse(list)
        list.map do |value|
          Parsers::Rule.parse(value) unless value.nil?
        end
      end
    end

    class Rule
      def self.parse(map)
        data = Types::Rule.new
        data.attribute = map['attribute']
        data.operator = map['operator']
        data.value = map['value']
        return data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ArgumentException
    class ArgumentException
      def self.parse(http_resp)
        data = Types::ArgumentException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ServiceAccountException
    class ServiceAccountException
      def self.parse(http_resp)
        data = Types::ServiceAccountException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateInstanceProfile
    class CreateInstanceProfile
      def self.parse(http_resp)
        data = Types::CreateInstanceProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.instance_profile = (Parsers::InstanceProfile.parse(map['instanceProfile']) unless map['instanceProfile'].nil?)
        data
      end
    end

    class InstanceProfile
      def self.parse(map)
        data = Types::InstanceProfile.new
        data.arn = map['arn']
        data.package_cleanup = map['packageCleanup']
        data.exclude_app_packages_from_cleanup = (Parsers::PackageIds.parse(map['excludeAppPackagesFromCleanup']) unless map['excludeAppPackagesFromCleanup'].nil?)
        data.reboot_after_use = map['rebootAfterUse']
        data.name = map['name']
        data.description = map['description']
        return data
      end
    end

    class PackageIds
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for CreateNetworkProfile
    class CreateNetworkProfile
      def self.parse(http_resp)
        data = Types::CreateNetworkProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.network_profile = (Parsers::NetworkProfile.parse(map['networkProfile']) unless map['networkProfile'].nil?)
        data
      end
    end

    class NetworkProfile
      def self.parse(map)
        data = Types::NetworkProfile.new
        data.arn = map['arn']
        data.name = map['name']
        data.description = map['description']
        data.type = map['type']
        data.uplink_bandwidth_bits = map['uplinkBandwidthBits']
        data.downlink_bandwidth_bits = map['downlinkBandwidthBits']
        data.uplink_delay_ms = map['uplinkDelayMs']
        data.downlink_delay_ms = map['downlinkDelayMs']
        data.uplink_jitter_ms = map['uplinkJitterMs']
        data.downlink_jitter_ms = map['downlinkJitterMs']
        data.uplink_loss_percent = map['uplinkLossPercent']
        data.downlink_loss_percent = map['downlinkLossPercent']
        return data
      end
    end

    # Operation Parser for CreateProject
    class CreateProject
      def self.parse(http_resp)
        data = Types::CreateProjectOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.project = (Parsers::Project.parse(map['project']) unless map['project'].nil?)
        data
      end
    end

    class Project
      def self.parse(map)
        data = Types::Project.new
        data.arn = map['arn']
        data.name = map['name']
        data.default_job_timeout_minutes = map['defaultJobTimeoutMinutes']
        data.created = Time.at(map['created'].to_i) if map['created']
        return data
      end
    end

    # Error Parser for TagOperationException
    class TagOperationException
      def self.parse(http_resp)
        data = Types::TagOperationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.resource_name = map['resourceName']
        data
      end
    end

    # Operation Parser for CreateRemoteAccessSession
    class CreateRemoteAccessSession
      def self.parse(http_resp)
        data = Types::CreateRemoteAccessSessionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.remote_access_session = (Parsers::RemoteAccessSession.parse(map['remoteAccessSession']) unless map['remoteAccessSession'].nil?)
        data
      end
    end

    class RemoteAccessSession
      def self.parse(map)
        data = Types::RemoteAccessSession.new
        data.arn = map['arn']
        data.name = map['name']
        data.created = Time.at(map['created'].to_i) if map['created']
        data.status = map['status']
        data.result = map['result']
        data.message = map['message']
        data.started = Time.at(map['started'].to_i) if map['started']
        data.stopped = Time.at(map['stopped'].to_i) if map['stopped']
        data.device = (Parsers::Device.parse(map['device']) unless map['device'].nil?)
        data.instance_arn = map['instanceArn']
        data.remote_debug_enabled = map['remoteDebugEnabled']
        data.remote_record_enabled = map['remoteRecordEnabled']
        data.remote_record_app_arn = map['remoteRecordAppArn']
        data.host_address = map['hostAddress']
        data.client_id = map['clientId']
        data.billing_method = map['billingMethod']
        data.device_minutes = (Parsers::DeviceMinutes.parse(map['deviceMinutes']) unless map['deviceMinutes'].nil?)
        data.endpoint = map['endpoint']
        data.device_udid = map['deviceUdid']
        data.interaction_mode = map['interactionMode']
        data.skip_app_resign = map['skipAppResign']
        return data
      end
    end

    class DeviceMinutes
      def self.parse(map)
        data = Types::DeviceMinutes.new
        data.total = Hearth::NumberHelper.deserialize(map['total'])
        data.metered = Hearth::NumberHelper.deserialize(map['metered'])
        data.unmetered = Hearth::NumberHelper.deserialize(map['unmetered'])
        return data
      end
    end

    class Device
      def self.parse(map)
        data = Types::Device.new
        data.arn = map['arn']
        data.name = map['name']
        data.manufacturer = map['manufacturer']
        data.model = map['model']
        data.model_id = map['modelId']
        data.form_factor = map['formFactor']
        data.platform = map['platform']
        data.os = map['os']
        data.cpu = (Parsers::CPU.parse(map['cpu']) unless map['cpu'].nil?)
        data.resolution = (Parsers::Resolution.parse(map['resolution']) unless map['resolution'].nil?)
        data.heap_size = map['heapSize']
        data.memory = map['memory']
        data.image = map['image']
        data.carrier = map['carrier']
        data.radio = map['radio']
        data.remote_access_enabled = map['remoteAccessEnabled']
        data.remote_debug_enabled = map['remoteDebugEnabled']
        data.fleet_type = map['fleetType']
        data.fleet_name = map['fleetName']
        data.instances = (Parsers::DeviceInstances.parse(map['instances']) unless map['instances'].nil?)
        data.availability = map['availability']
        return data
      end
    end

    class DeviceInstances
      def self.parse(list)
        list.map do |value|
          Parsers::DeviceInstance.parse(value) unless value.nil?
        end
      end
    end

    class DeviceInstance
      def self.parse(map)
        data = Types::DeviceInstance.new
        data.arn = map['arn']
        data.device_arn = map['deviceArn']
        data.labels = (Parsers::InstanceLabels.parse(map['labels']) unless map['labels'].nil?)
        data.status = map['status']
        data.udid = map['udid']
        data.instance_profile = (Parsers::InstanceProfile.parse(map['instanceProfile']) unless map['instanceProfile'].nil?)
        return data
      end
    end

    class InstanceLabels
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class Resolution
      def self.parse(map)
        data = Types::Resolution.new
        data.width = map['width']
        data.height = map['height']
        return data
      end
    end

    class CPU
      def self.parse(map)
        data = Types::CPU.new
        data.frequency = map['frequency']
        data.architecture = map['architecture']
        data.clock = Hearth::NumberHelper.deserialize(map['clock'])
        return data
      end
    end

    # Operation Parser for CreateTestGridProject
    class CreateTestGridProject
      def self.parse(http_resp)
        data = Types::CreateTestGridProjectOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.test_grid_project = (Parsers::TestGridProject.parse(map['testGridProject']) unless map['testGridProject'].nil?)
        data
      end
    end

    class TestGridProject
      def self.parse(map)
        data = Types::TestGridProject.new
        data.arn = map['arn']
        data.name = map['name']
        data.description = map['description']
        data.vpc_config = (Parsers::TestGridVpcConfig.parse(map['vpcConfig']) unless map['vpcConfig'].nil?)
        data.created = Time.at(map['created'].to_i) if map['created']
        return data
      end
    end

    class TestGridVpcConfig
      def self.parse(map)
        data = Types::TestGridVpcConfig.new
        data.security_group_ids = (Parsers::SecurityGroupIds.parse(map['securityGroupIds']) unless map['securityGroupIds'].nil?)
        data.subnet_ids = (Parsers::SubnetIds.parse(map['subnetIds']) unless map['subnetIds'].nil?)
        data.vpc_id = map['vpcId']
        return data
      end
    end

    class SubnetIds
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class SecurityGroupIds
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for InternalServiceException
    class InternalServiceException
      def self.parse(http_resp)
        data = Types::InternalServiceException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateTestGridUrl
    class CreateTestGridUrl
      def self.parse(http_resp)
        data = Types::CreateTestGridUrlOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.url = map['url']
        data.expires = Time.at(map['expires'].to_i) if map['expires']
        data
      end
    end

    # Operation Parser for CreateUpload
    class CreateUpload
      def self.parse(http_resp)
        data = Types::CreateUploadOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.upload = (Parsers::Upload.parse(map['upload']) unless map['upload'].nil?)
        data
      end
    end

    class Upload
      def self.parse(map)
        data = Types::Upload.new
        data.arn = map['arn']
        data.name = map['name']
        data.created = Time.at(map['created'].to_i) if map['created']
        data.type = map['type']
        data.status = map['status']
        data.url = map['url']
        data.metadata = map['metadata']
        data.content_type = map['contentType']
        data.message = map['message']
        data.category = map['category']
        return data
      end
    end

    # Operation Parser for CreateVPCEConfiguration
    class CreateVPCEConfiguration
      def self.parse(http_resp)
        data = Types::CreateVPCEConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.vpce_configuration = (Parsers::VPCEConfiguration.parse(map['vpceConfiguration']) unless map['vpceConfiguration'].nil?)
        data
      end
    end

    class VPCEConfiguration
      def self.parse(map)
        data = Types::VPCEConfiguration.new
        data.arn = map['arn']
        data.vpce_configuration_name = map['vpceConfigurationName']
        data.vpce_service_name = map['vpceServiceName']
        data.service_dns_name = map['serviceDnsName']
        data.vpce_configuration_description = map['vpceConfigurationDescription']
        return data
      end
    end

    # Operation Parser for DeleteDevicePool
    class DeleteDevicePool
      def self.parse(http_resp)
        data = Types::DeleteDevicePoolOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteInstanceProfile
    class DeleteInstanceProfile
      def self.parse(http_resp)
        data = Types::DeleteInstanceProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteNetworkProfile
    class DeleteNetworkProfile
      def self.parse(http_resp)
        data = Types::DeleteNetworkProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteProject
    class DeleteProject
      def self.parse(http_resp)
        data = Types::DeleteProjectOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteRemoteAccessSession
    class DeleteRemoteAccessSession
      def self.parse(http_resp)
        data = Types::DeleteRemoteAccessSessionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteRun
    class DeleteRun
      def self.parse(http_resp)
        data = Types::DeleteRunOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteTestGridProject
    class DeleteTestGridProject
      def self.parse(http_resp)
        data = Types::DeleteTestGridProjectOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for CannotDeleteException
    class CannotDeleteException
      def self.parse(http_resp)
        data = Types::CannotDeleteException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteUpload
    class DeleteUpload
      def self.parse(http_resp)
        data = Types::DeleteUploadOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteVPCEConfiguration
    class DeleteVPCEConfiguration
      def self.parse(http_resp)
        data = Types::DeleteVPCEConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidOperationException
    class InvalidOperationException
      def self.parse(http_resp)
        data = Types::InvalidOperationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for GetAccountSettings
    class GetAccountSettings
      def self.parse(http_resp)
        data = Types::GetAccountSettingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.account_settings = (Parsers::AccountSettings.parse(map['accountSettings']) unless map['accountSettings'].nil?)
        data
      end
    end

    class AccountSettings
      def self.parse(map)
        data = Types::AccountSettings.new
        data.aws_account_number = map['awsAccountNumber']
        data.unmetered_devices = (Parsers::PurchasedDevicesMap.parse(map['unmeteredDevices']) unless map['unmeteredDevices'].nil?)
        data.unmetered_remote_access_devices = (Parsers::PurchasedDevicesMap.parse(map['unmeteredRemoteAccessDevices']) unless map['unmeteredRemoteAccessDevices'].nil?)
        data.max_job_timeout_minutes = map['maxJobTimeoutMinutes']
        data.trial_minutes = (Parsers::TrialMinutes.parse(map['trialMinutes']) unless map['trialMinutes'].nil?)
        data.max_slots = (Parsers::MaxSlotMap.parse(map['maxSlots']) unless map['maxSlots'].nil?)
        data.default_job_timeout_minutes = map['defaultJobTimeoutMinutes']
        data.skip_app_resign = map['skipAppResign']
        return data
      end
    end

    class MaxSlotMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class TrialMinutes
      def self.parse(map)
        data = Types::TrialMinutes.new
        data.total = Hearth::NumberHelper.deserialize(map['total'])
        data.remaining = Hearth::NumberHelper.deserialize(map['remaining'])
        return data
      end
    end

    class PurchasedDevicesMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetDevice
    class GetDevice
      def self.parse(http_resp)
        data = Types::GetDeviceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.device = (Parsers::Device.parse(map['device']) unless map['device'].nil?)
        data
      end
    end

    # Operation Parser for GetDeviceInstance
    class GetDeviceInstance
      def self.parse(http_resp)
        data = Types::GetDeviceInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.device_instance = (Parsers::DeviceInstance.parse(map['deviceInstance']) unless map['deviceInstance'].nil?)
        data
      end
    end

    # Operation Parser for GetDevicePool
    class GetDevicePool
      def self.parse(http_resp)
        data = Types::GetDevicePoolOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.device_pool = (Parsers::DevicePool.parse(map['devicePool']) unless map['devicePool'].nil?)
        data
      end
    end

    # Operation Parser for GetDevicePoolCompatibility
    class GetDevicePoolCompatibility
      def self.parse(http_resp)
        data = Types::GetDevicePoolCompatibilityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.compatible_devices = (Parsers::DevicePoolCompatibilityResults.parse(map['compatibleDevices']) unless map['compatibleDevices'].nil?)
        data.incompatible_devices = (Parsers::DevicePoolCompatibilityResults.parse(map['incompatibleDevices']) unless map['incompatibleDevices'].nil?)
        data
      end
    end

    class DevicePoolCompatibilityResults
      def self.parse(list)
        list.map do |value|
          Parsers::DevicePoolCompatibilityResult.parse(value) unless value.nil?
        end
      end
    end

    class DevicePoolCompatibilityResult
      def self.parse(map)
        data = Types::DevicePoolCompatibilityResult.new
        data.device = (Parsers::Device.parse(map['device']) unless map['device'].nil?)
        data.compatible = map['compatible']
        data.incompatibility_messages = (Parsers::IncompatibilityMessages.parse(map['incompatibilityMessages']) unless map['incompatibilityMessages'].nil?)
        return data
      end
    end

    class IncompatibilityMessages
      def self.parse(list)
        list.map do |value|
          Parsers::IncompatibilityMessage.parse(value) unless value.nil?
        end
      end
    end

    class IncompatibilityMessage
      def self.parse(map)
        data = Types::IncompatibilityMessage.new
        data.message = map['message']
        data.type = map['type']
        return data
      end
    end

    # Operation Parser for GetInstanceProfile
    class GetInstanceProfile
      def self.parse(http_resp)
        data = Types::GetInstanceProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.instance_profile = (Parsers::InstanceProfile.parse(map['instanceProfile']) unless map['instanceProfile'].nil?)
        data
      end
    end

    # Operation Parser for GetJob
    class GetJob
      def self.parse(http_resp)
        data = Types::GetJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job = (Parsers::Job.parse(map['job']) unless map['job'].nil?)
        data
      end
    end

    class Job
      def self.parse(map)
        data = Types::Job.new
        data.arn = map['arn']
        data.name = map['name']
        data.type = map['type']
        data.created = Time.at(map['created'].to_i) if map['created']
        data.status = map['status']
        data.result = map['result']
        data.started = Time.at(map['started'].to_i) if map['started']
        data.stopped = Time.at(map['stopped'].to_i) if map['stopped']
        data.counters = (Parsers::Counters.parse(map['counters']) unless map['counters'].nil?)
        data.message = map['message']
        data.device = (Parsers::Device.parse(map['device']) unless map['device'].nil?)
        data.instance_arn = map['instanceArn']
        data.device_minutes = (Parsers::DeviceMinutes.parse(map['deviceMinutes']) unless map['deviceMinutes'].nil?)
        data.video_endpoint = map['videoEndpoint']
        data.video_capture = map['videoCapture']
        return data
      end
    end

    class Counters
      def self.parse(map)
        data = Types::Counters.new
        data.total = map['total']
        data.passed = map['passed']
        data.failed = map['failed']
        data.warned = map['warned']
        data.errored = map['errored']
        data.stopped = map['stopped']
        data.skipped = map['skipped']
        return data
      end
    end

    # Operation Parser for GetNetworkProfile
    class GetNetworkProfile
      def self.parse(http_resp)
        data = Types::GetNetworkProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.network_profile = (Parsers::NetworkProfile.parse(map['networkProfile']) unless map['networkProfile'].nil?)
        data
      end
    end

    # Operation Parser for GetOfferingStatus
    class GetOfferingStatus
      def self.parse(http_resp)
        data = Types::GetOfferingStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.current = (Parsers::OfferingStatusMap.parse(map['current']) unless map['current'].nil?)
        data.next_period = (Parsers::OfferingStatusMap.parse(map['nextPeriod']) unless map['nextPeriod'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class OfferingStatusMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::OfferingStatus.parse(value) unless value.nil?
        end
        data
      end
    end

    class OfferingStatus
      def self.parse(map)
        data = Types::OfferingStatus.new
        data.type = map['type']
        data.offering = (Parsers::Offering.parse(map['offering']) unless map['offering'].nil?)
        data.quantity = map['quantity']
        data.effective_on = Time.at(map['effectiveOn'].to_i) if map['effectiveOn']
        return data
      end
    end

    class Offering
      def self.parse(map)
        data = Types::Offering.new
        data.id = map['id']
        data.description = map['description']
        data.type = map['type']
        data.platform = map['platform']
        data.recurring_charges = (Parsers::RecurringCharges.parse(map['recurringCharges']) unless map['recurringCharges'].nil?)
        return data
      end
    end

    class RecurringCharges
      def self.parse(list)
        list.map do |value|
          Parsers::RecurringCharge.parse(value) unless value.nil?
        end
      end
    end

    class RecurringCharge
      def self.parse(map)
        data = Types::RecurringCharge.new
        data.cost = (Parsers::MonetaryAmount.parse(map['cost']) unless map['cost'].nil?)
        data.frequency = map['frequency']
        return data
      end
    end

    class MonetaryAmount
      def self.parse(map)
        data = Types::MonetaryAmount.new
        data.amount = Hearth::NumberHelper.deserialize(map['amount'])
        data.currency_code = map['currencyCode']
        return data
      end
    end

    # Error Parser for NotEligibleException
    class NotEligibleException
      def self.parse(http_resp)
        data = Types::NotEligibleException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for GetProject
    class GetProject
      def self.parse(http_resp)
        data = Types::GetProjectOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.project = (Parsers::Project.parse(map['project']) unless map['project'].nil?)
        data
      end
    end

    # Operation Parser for GetRemoteAccessSession
    class GetRemoteAccessSession
      def self.parse(http_resp)
        data = Types::GetRemoteAccessSessionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.remote_access_session = (Parsers::RemoteAccessSession.parse(map['remoteAccessSession']) unless map['remoteAccessSession'].nil?)
        data
      end
    end

    # Operation Parser for GetRun
    class GetRun
      def self.parse(http_resp)
        data = Types::GetRunOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.run = (Parsers::Run.parse(map['run']) unless map['run'].nil?)
        data
      end
    end

    class Run
      def self.parse(map)
        data = Types::Run.new
        data.arn = map['arn']
        data.name = map['name']
        data.type = map['type']
        data.platform = map['platform']
        data.created = Time.at(map['created'].to_i) if map['created']
        data.status = map['status']
        data.result = map['result']
        data.started = Time.at(map['started'].to_i) if map['started']
        data.stopped = Time.at(map['stopped'].to_i) if map['stopped']
        data.counters = (Parsers::Counters.parse(map['counters']) unless map['counters'].nil?)
        data.message = map['message']
        data.total_jobs = map['totalJobs']
        data.completed_jobs = map['completedJobs']
        data.billing_method = map['billingMethod']
        data.device_minutes = (Parsers::DeviceMinutes.parse(map['deviceMinutes']) unless map['deviceMinutes'].nil?)
        data.network_profile = (Parsers::NetworkProfile.parse(map['networkProfile']) unless map['networkProfile'].nil?)
        data.parsing_result_url = map['parsingResultUrl']
        data.result_code = map['resultCode']
        data.seed = map['seed']
        data.app_upload = map['appUpload']
        data.event_count = map['eventCount']
        data.job_timeout_minutes = map['jobTimeoutMinutes']
        data.device_pool_arn = map['devicePoolArn']
        data.locale = map['locale']
        data.radios = (Parsers::Radios.parse(map['radios']) unless map['radios'].nil?)
        data.location = (Parsers::Location.parse(map['location']) unless map['location'].nil?)
        data.customer_artifact_paths = (Parsers::CustomerArtifactPaths.parse(map['customerArtifactPaths']) unless map['customerArtifactPaths'].nil?)
        data.web_url = map['webUrl']
        data.skip_app_resign = map['skipAppResign']
        data.test_spec_arn = map['testSpecArn']
        data.device_selection_result = (Parsers::DeviceSelectionResult.parse(map['deviceSelectionResult']) unless map['deviceSelectionResult'].nil?)
        return data
      end
    end

    class DeviceSelectionResult
      def self.parse(map)
        data = Types::DeviceSelectionResult.new
        data.filters = (Parsers::DeviceFilters.parse(map['filters']) unless map['filters'].nil?)
        data.matched_devices_count = map['matchedDevicesCount']
        data.max_devices = map['maxDevices']
        return data
      end
    end

    class DeviceFilters
      def self.parse(list)
        list.map do |value|
          Parsers::DeviceFilter.parse(value) unless value.nil?
        end
      end
    end

    class DeviceFilter
      def self.parse(map)
        data = Types::DeviceFilter.new
        data.attribute = map['attribute']
        data.operator = map['operator']
        data.values = (Parsers::DeviceFilterValues.parse(map['values']) unless map['values'].nil?)
        return data
      end
    end

    class DeviceFilterValues
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class CustomerArtifactPaths
      def self.parse(map)
        data = Types::CustomerArtifactPaths.new
        data.ios_paths = (Parsers::IosPaths.parse(map['iosPaths']) unless map['iosPaths'].nil?)
        data.android_paths = (Parsers::AndroidPaths.parse(map['androidPaths']) unless map['androidPaths'].nil?)
        data.device_host_paths = (Parsers::DeviceHostPaths.parse(map['deviceHostPaths']) unless map['deviceHostPaths'].nil?)
        return data
      end
    end

    class DeviceHostPaths
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class AndroidPaths
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class IosPaths
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class Location
      def self.parse(map)
        data = Types::Location.new
        data.latitude = Hearth::NumberHelper.deserialize(map['latitude'])
        data.longitude = Hearth::NumberHelper.deserialize(map['longitude'])
        return data
      end
    end

    class Radios
      def self.parse(map)
        data = Types::Radios.new
        data.wifi = map['wifi']
        data.bluetooth = map['bluetooth']
        data.nfc = map['nfc']
        data.gps = map['gps']
        return data
      end
    end

    # Operation Parser for GetSuite
    class GetSuite
      def self.parse(http_resp)
        data = Types::GetSuiteOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.suite = (Parsers::Suite.parse(map['suite']) unless map['suite'].nil?)
        data
      end
    end

    class Suite
      def self.parse(map)
        data = Types::Suite.new
        data.arn = map['arn']
        data.name = map['name']
        data.type = map['type']
        data.created = Time.at(map['created'].to_i) if map['created']
        data.status = map['status']
        data.result = map['result']
        data.started = Time.at(map['started'].to_i) if map['started']
        data.stopped = Time.at(map['stopped'].to_i) if map['stopped']
        data.counters = (Parsers::Counters.parse(map['counters']) unless map['counters'].nil?)
        data.message = map['message']
        data.device_minutes = (Parsers::DeviceMinutes.parse(map['deviceMinutes']) unless map['deviceMinutes'].nil?)
        return data
      end
    end

    # Operation Parser for GetTest
    class GetTest
      def self.parse(http_resp)
        data = Types::GetTestOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.test = (Parsers::Test.parse(map['test']) unless map['test'].nil?)
        data
      end
    end

    class Test
      def self.parse(map)
        data = Types::Test.new
        data.arn = map['arn']
        data.name = map['name']
        data.type = map['type']
        data.created = Time.at(map['created'].to_i) if map['created']
        data.status = map['status']
        data.result = map['result']
        data.started = Time.at(map['started'].to_i) if map['started']
        data.stopped = Time.at(map['stopped'].to_i) if map['stopped']
        data.counters = (Parsers::Counters.parse(map['counters']) unless map['counters'].nil?)
        data.message = map['message']
        data.device_minutes = (Parsers::DeviceMinutes.parse(map['deviceMinutes']) unless map['deviceMinutes'].nil?)
        return data
      end
    end

    # Operation Parser for GetTestGridProject
    class GetTestGridProject
      def self.parse(http_resp)
        data = Types::GetTestGridProjectOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.test_grid_project = (Parsers::TestGridProject.parse(map['testGridProject']) unless map['testGridProject'].nil?)
        data
      end
    end

    # Operation Parser for GetTestGridSession
    class GetTestGridSession
      def self.parse(http_resp)
        data = Types::GetTestGridSessionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.test_grid_session = (Parsers::TestGridSession.parse(map['testGridSession']) unless map['testGridSession'].nil?)
        data
      end
    end

    class TestGridSession
      def self.parse(map)
        data = Types::TestGridSession.new
        data.arn = map['arn']
        data.status = map['status']
        data.created = Time.at(map['created'].to_i) if map['created']
        data.ended = Time.at(map['ended'].to_i) if map['ended']
        data.billing_minutes = Hearth::NumberHelper.deserialize(map['billingMinutes'])
        data.selenium_properties = map['seleniumProperties']
        return data
      end
    end

    # Operation Parser for GetUpload
    class GetUpload
      def self.parse(http_resp)
        data = Types::GetUploadOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.upload = (Parsers::Upload.parse(map['upload']) unless map['upload'].nil?)
        data
      end
    end

    # Operation Parser for GetVPCEConfiguration
    class GetVPCEConfiguration
      def self.parse(http_resp)
        data = Types::GetVPCEConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.vpce_configuration = (Parsers::VPCEConfiguration.parse(map['vpceConfiguration']) unless map['vpceConfiguration'].nil?)
        data
      end
    end

    # Operation Parser for InstallToRemoteAccessSession
    class InstallToRemoteAccessSession
      def self.parse(http_resp)
        data = Types::InstallToRemoteAccessSessionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.app_upload = (Parsers::Upload.parse(map['appUpload']) unless map['appUpload'].nil?)
        data
      end
    end

    # Operation Parser for ListArtifacts
    class ListArtifacts
      def self.parse(http_resp)
        data = Types::ListArtifactsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.artifacts = (Parsers::Artifacts.parse(map['artifacts']) unless map['artifacts'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Artifacts
      def self.parse(list)
        list.map do |value|
          Parsers::Artifact.parse(value) unless value.nil?
        end
      end
    end

    class Artifact
      def self.parse(map)
        data = Types::Artifact.new
        data.arn = map['arn']
        data.name = map['name']
        data.type = map['type']
        data.extension = map['extension']
        data.url = map['url']
        return data
      end
    end

    # Operation Parser for ListDeviceInstances
    class ListDeviceInstances
      def self.parse(http_resp)
        data = Types::ListDeviceInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.device_instances = (Parsers::DeviceInstances.parse(map['deviceInstances']) unless map['deviceInstances'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListDevicePools
    class ListDevicePools
      def self.parse(http_resp)
        data = Types::ListDevicePoolsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.device_pools = (Parsers::DevicePools.parse(map['devicePools']) unless map['devicePools'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DevicePools
      def self.parse(list)
        list.map do |value|
          Parsers::DevicePool.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListDevices
    class ListDevices
      def self.parse(http_resp)
        data = Types::ListDevicesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.devices = (Parsers::Devices.parse(map['devices']) unless map['devices'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Devices
      def self.parse(list)
        list.map do |value|
          Parsers::Device.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListInstanceProfiles
    class ListInstanceProfiles
      def self.parse(http_resp)
        data = Types::ListInstanceProfilesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.instance_profiles = (Parsers::InstanceProfiles.parse(map['instanceProfiles']) unless map['instanceProfiles'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class InstanceProfiles
      def self.parse(list)
        list.map do |value|
          Parsers::InstanceProfile.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListJobs
    class ListJobs
      def self.parse(http_resp)
        data = Types::ListJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.jobs = (Parsers::Jobs.parse(map['jobs']) unless map['jobs'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Jobs
      def self.parse(list)
        list.map do |value|
          Parsers::Job.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListNetworkProfiles
    class ListNetworkProfiles
      def self.parse(http_resp)
        data = Types::ListNetworkProfilesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.network_profiles = (Parsers::NetworkProfiles.parse(map['networkProfiles']) unless map['networkProfiles'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class NetworkProfiles
      def self.parse(list)
        list.map do |value|
          Parsers::NetworkProfile.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListOfferingPromotions
    class ListOfferingPromotions
      def self.parse(http_resp)
        data = Types::ListOfferingPromotionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.offering_promotions = (Parsers::OfferingPromotions.parse(map['offeringPromotions']) unless map['offeringPromotions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class OfferingPromotions
      def self.parse(list)
        list.map do |value|
          Parsers::OfferingPromotion.parse(value) unless value.nil?
        end
      end
    end

    class OfferingPromotion
      def self.parse(map)
        data = Types::OfferingPromotion.new
        data.id = map['id']
        data.description = map['description']
        return data
      end
    end

    # Operation Parser for ListOfferingTransactions
    class ListOfferingTransactions
      def self.parse(http_resp)
        data = Types::ListOfferingTransactionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.offering_transactions = (Parsers::OfferingTransactions.parse(map['offeringTransactions']) unless map['offeringTransactions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class OfferingTransactions
      def self.parse(list)
        list.map do |value|
          Parsers::OfferingTransaction.parse(value) unless value.nil?
        end
      end
    end

    class OfferingTransaction
      def self.parse(map)
        data = Types::OfferingTransaction.new
        data.offering_status = (Parsers::OfferingStatus.parse(map['offeringStatus']) unless map['offeringStatus'].nil?)
        data.transaction_id = map['transactionId']
        data.offering_promotion_id = map['offeringPromotionId']
        data.created_on = Time.at(map['createdOn'].to_i) if map['createdOn']
        data.cost = (Parsers::MonetaryAmount.parse(map['cost']) unless map['cost'].nil?)
        return data
      end
    end

    # Operation Parser for ListOfferings
    class ListOfferings
      def self.parse(http_resp)
        data = Types::ListOfferingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.offerings = (Parsers::Offerings.parse(map['offerings']) unless map['offerings'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Offerings
      def self.parse(list)
        list.map do |value|
          Parsers::Offering.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListProjects
    class ListProjects
      def self.parse(http_resp)
        data = Types::ListProjectsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.projects = (Parsers::Projects.parse(map['projects']) unless map['projects'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Projects
      def self.parse(list)
        list.map do |value|
          Parsers::Project.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListRemoteAccessSessions
    class ListRemoteAccessSessions
      def self.parse(http_resp)
        data = Types::ListRemoteAccessSessionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.remote_access_sessions = (Parsers::RemoteAccessSessions.parse(map['remoteAccessSessions']) unless map['remoteAccessSessions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class RemoteAccessSessions
      def self.parse(list)
        list.map do |value|
          Parsers::RemoteAccessSession.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListRuns
    class ListRuns
      def self.parse(http_resp)
        data = Types::ListRunsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.runs = (Parsers::Runs.parse(map['runs']) unless map['runs'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Runs
      def self.parse(list)
        list.map do |value|
          Parsers::Run.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListSamples
    class ListSamples
      def self.parse(http_resp)
        data = Types::ListSamplesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.samples = (Parsers::Samples.parse(map['samples']) unless map['samples'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Samples
      def self.parse(list)
        list.map do |value|
          Parsers::Sample.parse(value) unless value.nil?
        end
      end
    end

    class Sample
      def self.parse(map)
        data = Types::Sample.new
        data.arn = map['arn']
        data.type = map['type']
        data.url = map['url']
        return data
      end
    end

    # Operation Parser for ListSuites
    class ListSuites
      def self.parse(http_resp)
        data = Types::ListSuitesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.suites = (Parsers::Suites.parse(map['suites']) unless map['suites'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Suites
      def self.parse(list)
        list.map do |value|
          Parsers::Suite.parse(value) unless value.nil?
        end
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

    # Operation Parser for ListTestGridProjects
    class ListTestGridProjects
      def self.parse(http_resp)
        data = Types::ListTestGridProjectsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.test_grid_projects = (Parsers::TestGridProjects.parse(map['testGridProjects']) unless map['testGridProjects'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class TestGridProjects
      def self.parse(list)
        list.map do |value|
          Parsers::TestGridProject.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListTestGridSessionActions
    class ListTestGridSessionActions
      def self.parse(http_resp)
        data = Types::ListTestGridSessionActionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.actions = (Parsers::TestGridSessionActions.parse(map['actions']) unless map['actions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class TestGridSessionActions
      def self.parse(list)
        list.map do |value|
          Parsers::TestGridSessionAction.parse(value) unless value.nil?
        end
      end
    end

    class TestGridSessionAction
      def self.parse(map)
        data = Types::TestGridSessionAction.new
        data.action = map['action']
        data.started = Time.at(map['started'].to_i) if map['started']
        data.duration = map['duration']
        data.status_code = map['statusCode']
        data.request_method = map['requestMethod']
        return data
      end
    end

    # Operation Parser for ListTestGridSessionArtifacts
    class ListTestGridSessionArtifacts
      def self.parse(http_resp)
        data = Types::ListTestGridSessionArtifactsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.artifacts = (Parsers::TestGridSessionArtifacts.parse(map['artifacts']) unless map['artifacts'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class TestGridSessionArtifacts
      def self.parse(list)
        list.map do |value|
          Parsers::TestGridSessionArtifact.parse(value) unless value.nil?
        end
      end
    end

    class TestGridSessionArtifact
      def self.parse(map)
        data = Types::TestGridSessionArtifact.new
        data.filename = map['filename']
        data.type = map['type']
        data.url = map['url']
        return data
      end
    end

    # Operation Parser for ListTestGridSessions
    class ListTestGridSessions
      def self.parse(http_resp)
        data = Types::ListTestGridSessionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.test_grid_sessions = (Parsers::TestGridSessions.parse(map['testGridSessions']) unless map['testGridSessions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class TestGridSessions
      def self.parse(list)
        list.map do |value|
          Parsers::TestGridSession.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListTests
    class ListTests
      def self.parse(http_resp)
        data = Types::ListTestsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tests = (Parsers::Tests.parse(map['tests']) unless map['tests'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Tests
      def self.parse(list)
        list.map do |value|
          Parsers::Test.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListUniqueProblems
    class ListUniqueProblems
      def self.parse(http_resp)
        data = Types::ListUniqueProblemsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.unique_problems = (Parsers::UniqueProblemsByExecutionResultMap.parse(map['uniqueProblems']) unless map['uniqueProblems'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class UniqueProblemsByExecutionResultMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::UniqueProblems.parse(value) unless value.nil?
        end
        data
      end
    end

    class UniqueProblems
      def self.parse(list)
        list.map do |value|
          Parsers::UniqueProblem.parse(value) unless value.nil?
        end
      end
    end

    class UniqueProblem
      def self.parse(map)
        data = Types::UniqueProblem.new
        data.message = map['message']
        data.problems = (Parsers::Problems.parse(map['problems']) unless map['problems'].nil?)
        return data
      end
    end

    class Problems
      def self.parse(list)
        list.map do |value|
          Parsers::Problem.parse(value) unless value.nil?
        end
      end
    end

    class Problem
      def self.parse(map)
        data = Types::Problem.new
        data.run = (Parsers::ProblemDetail.parse(map['run']) unless map['run'].nil?)
        data.job = (Parsers::ProblemDetail.parse(map['job']) unless map['job'].nil?)
        data.suite = (Parsers::ProblemDetail.parse(map['suite']) unless map['suite'].nil?)
        data.test = (Parsers::ProblemDetail.parse(map['test']) unless map['test'].nil?)
        data.device = (Parsers::Device.parse(map['device']) unless map['device'].nil?)
        data.result = map['result']
        data.message = map['message']
        return data
      end
    end

    class ProblemDetail
      def self.parse(map)
        data = Types::ProblemDetail.new
        data.arn = map['arn']
        data.name = map['name']
        return data
      end
    end

    # Operation Parser for ListUploads
    class ListUploads
      def self.parse(http_resp)
        data = Types::ListUploadsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.uploads = (Parsers::Uploads.parse(map['uploads']) unless map['uploads'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Uploads
      def self.parse(list)
        list.map do |value|
          Parsers::Upload.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListVPCEConfigurations
    class ListVPCEConfigurations
      def self.parse(http_resp)
        data = Types::ListVPCEConfigurationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.vpce_configurations = (Parsers::VPCEConfigurations.parse(map['vpceConfigurations']) unless map['vpceConfigurations'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class VPCEConfigurations
      def self.parse(list)
        list.map do |value|
          Parsers::VPCEConfiguration.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for PurchaseOffering
    class PurchaseOffering
      def self.parse(http_resp)
        data = Types::PurchaseOfferingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.offering_transaction = (Parsers::OfferingTransaction.parse(map['offeringTransaction']) unless map['offeringTransaction'].nil?)
        data
      end
    end

    # Operation Parser for RenewOffering
    class RenewOffering
      def self.parse(http_resp)
        data = Types::RenewOfferingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.offering_transaction = (Parsers::OfferingTransaction.parse(map['offeringTransaction']) unless map['offeringTransaction'].nil?)
        data
      end
    end

    # Operation Parser for ScheduleRun
    class ScheduleRun
      def self.parse(http_resp)
        data = Types::ScheduleRunOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.run = (Parsers::Run.parse(map['run']) unless map['run'].nil?)
        data
      end
    end

    # Error Parser for IdempotencyException
    class IdempotencyException
      def self.parse(http_resp)
        data = Types::IdempotencyException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for StopJob
    class StopJob
      def self.parse(http_resp)
        data = Types::StopJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job = (Parsers::Job.parse(map['job']) unless map['job'].nil?)
        data
      end
    end

    # Operation Parser for StopRemoteAccessSession
    class StopRemoteAccessSession
      def self.parse(http_resp)
        data = Types::StopRemoteAccessSessionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.remote_access_session = (Parsers::RemoteAccessSession.parse(map['remoteAccessSession']) unless map['remoteAccessSession'].nil?)
        data
      end
    end

    # Operation Parser for StopRun
    class StopRun
      def self.parse(http_resp)
        data = Types::StopRunOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.run = (Parsers::Run.parse(map['run']) unless map['run'].nil?)
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

    # Error Parser for TooManyTagsException
    class TooManyTagsException
      def self.parse(http_resp)
        data = Types::TooManyTagsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.resource_name = map['resourceName']
        data
      end
    end

    # Error Parser for TagPolicyException
    class TagPolicyException
      def self.parse(http_resp)
        data = Types::TagPolicyException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.resource_name = map['resourceName']
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

    # Operation Parser for UpdateDeviceInstance
    class UpdateDeviceInstance
      def self.parse(http_resp)
        data = Types::UpdateDeviceInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.device_instance = (Parsers::DeviceInstance.parse(map['deviceInstance']) unless map['deviceInstance'].nil?)
        data
      end
    end

    # Operation Parser for UpdateDevicePool
    class UpdateDevicePool
      def self.parse(http_resp)
        data = Types::UpdateDevicePoolOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.device_pool = (Parsers::DevicePool.parse(map['devicePool']) unless map['devicePool'].nil?)
        data
      end
    end

    # Operation Parser for UpdateInstanceProfile
    class UpdateInstanceProfile
      def self.parse(http_resp)
        data = Types::UpdateInstanceProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.instance_profile = (Parsers::InstanceProfile.parse(map['instanceProfile']) unless map['instanceProfile'].nil?)
        data
      end
    end

    # Operation Parser for UpdateNetworkProfile
    class UpdateNetworkProfile
      def self.parse(http_resp)
        data = Types::UpdateNetworkProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.network_profile = (Parsers::NetworkProfile.parse(map['networkProfile']) unless map['networkProfile'].nil?)
        data
      end
    end

    # Operation Parser for UpdateProject
    class UpdateProject
      def self.parse(http_resp)
        data = Types::UpdateProjectOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.project = (Parsers::Project.parse(map['project']) unless map['project'].nil?)
        data
      end
    end

    # Operation Parser for UpdateTestGridProject
    class UpdateTestGridProject
      def self.parse(http_resp)
        data = Types::UpdateTestGridProjectOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.test_grid_project = (Parsers::TestGridProject.parse(map['testGridProject']) unless map['testGridProject'].nil?)
        data
      end
    end

    # Operation Parser for UpdateUpload
    class UpdateUpload
      def self.parse(http_resp)
        data = Types::UpdateUploadOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.upload = (Parsers::Upload.parse(map['upload']) unless map['upload'].nil?)
        data
      end
    end

    # Operation Parser for UpdateVPCEConfiguration
    class UpdateVPCEConfiguration
      def self.parse(http_resp)
        data = Types::UpdateVPCEConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.vpce_configuration = (Parsers::VPCEConfiguration.parse(map['vpceConfiguration']) unless map['vpceConfiguration'].nil?)
        data
      end
    end
  end
end
