# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::DeviceFarm
  module Builders

    # Operation Builder for CreateDevicePool
    class CreateDevicePool
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.CreateDevicePool'
        data = {}
        data['projectArn'] = input[:project_arn] unless input[:project_arn].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['rules'] = Rules.build(input[:rules]) unless input[:rules].nil?
        data['maxDevices'] = input[:max_devices] unless input[:max_devices].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Rules
    class Rules
      def self.build(input)
        data = []
        input.each do |element|
          data << Rule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Rule
    class Rule
      def self.build(input)
        data = {}
        data['attribute'] = input[:attribute] unless input[:attribute].nil?
        data['operator'] = input[:operator] unless input[:operator].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateInstanceProfile
    class CreateInstanceProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.CreateInstanceProfile'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['packageCleanup'] = input[:package_cleanup] unless input[:package_cleanup].nil?
        data['excludeAppPackagesFromCleanup'] = PackageIds.build(input[:exclude_app_packages_from_cleanup]) unless input[:exclude_app_packages_from_cleanup].nil?
        data['rebootAfterUse'] = input[:reboot_after_use] unless input[:reboot_after_use].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PackageIds
    class PackageIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateNetworkProfile
    class CreateNetworkProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.CreateNetworkProfile'
        data = {}
        data['projectArn'] = input[:project_arn] unless input[:project_arn].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['uplinkBandwidthBits'] = input[:uplink_bandwidth_bits] unless input[:uplink_bandwidth_bits].nil?
        data['downlinkBandwidthBits'] = input[:downlink_bandwidth_bits] unless input[:downlink_bandwidth_bits].nil?
        data['uplinkDelayMs'] = input[:uplink_delay_ms] unless input[:uplink_delay_ms].nil?
        data['downlinkDelayMs'] = input[:downlink_delay_ms] unless input[:downlink_delay_ms].nil?
        data['uplinkJitterMs'] = input[:uplink_jitter_ms] unless input[:uplink_jitter_ms].nil?
        data['downlinkJitterMs'] = input[:downlink_jitter_ms] unless input[:downlink_jitter_ms].nil?
        data['uplinkLossPercent'] = input[:uplink_loss_percent] unless input[:uplink_loss_percent].nil?
        data['downlinkLossPercent'] = input[:downlink_loss_percent] unless input[:downlink_loss_percent].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateProject
    class CreateProject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.CreateProject'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['defaultJobTimeoutMinutes'] = input[:default_job_timeout_minutes] unless input[:default_job_timeout_minutes].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateRemoteAccessSession
    class CreateRemoteAccessSession
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.CreateRemoteAccessSession'
        data = {}
        data['projectArn'] = input[:project_arn] unless input[:project_arn].nil?
        data['deviceArn'] = input[:device_arn] unless input[:device_arn].nil?
        data['instanceArn'] = input[:instance_arn] unless input[:instance_arn].nil?
        data['sshPublicKey'] = input[:ssh_public_key] unless input[:ssh_public_key].nil?
        data['remoteDebugEnabled'] = input[:remote_debug_enabled] unless input[:remote_debug_enabled].nil?
        data['remoteRecordEnabled'] = input[:remote_record_enabled] unless input[:remote_record_enabled].nil?
        data['remoteRecordAppArn'] = input[:remote_record_app_arn] unless input[:remote_record_app_arn].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['clientId'] = input[:client_id] unless input[:client_id].nil?
        data['configuration'] = CreateRemoteAccessSessionConfiguration.build(input[:configuration]) unless input[:configuration].nil?
        data['interactionMode'] = input[:interaction_mode] unless input[:interaction_mode].nil?
        data['skipAppResign'] = input[:skip_app_resign] unless input[:skip_app_resign].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CreateRemoteAccessSessionConfiguration
    class CreateRemoteAccessSessionConfiguration
      def self.build(input)
        data = {}
        data['billingMethod'] = input[:billing_method] unless input[:billing_method].nil?
        data['vpceConfigurationArns'] = AmazonResourceNames.build(input[:vpce_configuration_arns]) unless input[:vpce_configuration_arns].nil?
        data
      end
    end

    # List Builder for AmazonResourceNames
    class AmazonResourceNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateTestGridProject
    class CreateTestGridProject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.CreateTestGridProject'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['vpcConfig'] = TestGridVpcConfig.build(input[:vpc_config]) unless input[:vpc_config].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TestGridVpcConfig
    class TestGridVpcConfig
      def self.build(input)
        data = {}
        data['securityGroupIds'] = SecurityGroupIds.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data['subnetIds'] = SubnetIds.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data['vpcId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data
      end
    end

    # List Builder for SubnetIds
    class SubnetIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SecurityGroupIds
    class SecurityGroupIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateTestGridUrl
    class CreateTestGridUrl
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.CreateTestGridUrl'
        data = {}
        data['projectArn'] = input[:project_arn] unless input[:project_arn].nil?
        data['expiresInSeconds'] = input[:expires_in_seconds] unless input[:expires_in_seconds].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateUpload
    class CreateUpload
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.CreateUpload'
        data = {}
        data['projectArn'] = input[:project_arn] unless input[:project_arn].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['contentType'] = input[:content_type] unless input[:content_type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateVPCEConfiguration
    class CreateVPCEConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.CreateVPCEConfiguration'
        data = {}
        data['vpceConfigurationName'] = input[:vpce_configuration_name] unless input[:vpce_configuration_name].nil?
        data['vpceServiceName'] = input[:vpce_service_name] unless input[:vpce_service_name].nil?
        data['serviceDnsName'] = input[:service_dns_name] unless input[:service_dns_name].nil?
        data['vpceConfigurationDescription'] = input[:vpce_configuration_description] unless input[:vpce_configuration_description].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDevicePool
    class DeleteDevicePool
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.DeleteDevicePool'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteInstanceProfile
    class DeleteInstanceProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.DeleteInstanceProfile'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteNetworkProfile
    class DeleteNetworkProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.DeleteNetworkProfile'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteProject
    class DeleteProject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.DeleteProject'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRemoteAccessSession
    class DeleteRemoteAccessSession
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.DeleteRemoteAccessSession'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRun
    class DeleteRun
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.DeleteRun'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteTestGridProject
    class DeleteTestGridProject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.DeleteTestGridProject'
        data = {}
        data['projectArn'] = input[:project_arn] unless input[:project_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteUpload
    class DeleteUpload
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.DeleteUpload'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteVPCEConfiguration
    class DeleteVPCEConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.DeleteVPCEConfiguration'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetAccountSettings
    class GetAccountSettings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.GetAccountSettings'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDevice
    class GetDevice
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.GetDevice'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDeviceInstance
    class GetDeviceInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.GetDeviceInstance'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDevicePool
    class GetDevicePool
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.GetDevicePool'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDevicePoolCompatibility
    class GetDevicePoolCompatibility
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.GetDevicePoolCompatibility'
        data = {}
        data['devicePoolArn'] = input[:device_pool_arn] unless input[:device_pool_arn].nil?
        data['appArn'] = input[:app_arn] unless input[:app_arn].nil?
        data['testType'] = input[:test_type] unless input[:test_type].nil?
        data['test'] = ScheduleRunTest.build(input[:test]) unless input[:test].nil?
        data['configuration'] = ScheduleRunConfiguration.build(input[:configuration]) unless input[:configuration].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ScheduleRunConfiguration
    class ScheduleRunConfiguration
      def self.build(input)
        data = {}
        data['extraDataPackageArn'] = input[:extra_data_package_arn] unless input[:extra_data_package_arn].nil?
        data['networkProfileArn'] = input[:network_profile_arn] unless input[:network_profile_arn].nil?
        data['locale'] = input[:locale] unless input[:locale].nil?
        data['location'] = Location.build(input[:location]) unless input[:location].nil?
        data['vpceConfigurationArns'] = AmazonResourceNames.build(input[:vpce_configuration_arns]) unless input[:vpce_configuration_arns].nil?
        data['customerArtifactPaths'] = CustomerArtifactPaths.build(input[:customer_artifact_paths]) unless input[:customer_artifact_paths].nil?
        data['radios'] = Radios.build(input[:radios]) unless input[:radios].nil?
        data['auxiliaryApps'] = AmazonResourceNames.build(input[:auxiliary_apps]) unless input[:auxiliary_apps].nil?
        data['billingMethod'] = input[:billing_method] unless input[:billing_method].nil?
        data
      end
    end

    # Structure Builder for Radios
    class Radios
      def self.build(input)
        data = {}
        data['wifi'] = input[:wifi] unless input[:wifi].nil?
        data['bluetooth'] = input[:bluetooth] unless input[:bluetooth].nil?
        data['nfc'] = input[:nfc] unless input[:nfc].nil?
        data['gps'] = input[:gps] unless input[:gps].nil?
        data
      end
    end

    # Structure Builder for CustomerArtifactPaths
    class CustomerArtifactPaths
      def self.build(input)
        data = {}
        data['iosPaths'] = IosPaths.build(input[:ios_paths]) unless input[:ios_paths].nil?
        data['androidPaths'] = AndroidPaths.build(input[:android_paths]) unless input[:android_paths].nil?
        data['deviceHostPaths'] = DeviceHostPaths.build(input[:device_host_paths]) unless input[:device_host_paths].nil?
        data
      end
    end

    # List Builder for DeviceHostPaths
    class DeviceHostPaths
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for AndroidPaths
    class AndroidPaths
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for IosPaths
    class IosPaths
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Location
    class Location
      def self.build(input)
        data = {}
        data['latitude'] = Hearth::NumberHelper.serialize(input[:latitude]) unless input[:latitude].nil?
        data['longitude'] = Hearth::NumberHelper.serialize(input[:longitude]) unless input[:longitude].nil?
        data
      end
    end

    # Structure Builder for ScheduleRunTest
    class ScheduleRunTest
      def self.build(input)
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['testPackageArn'] = input[:test_package_arn] unless input[:test_package_arn].nil?
        data['testSpecArn'] = input[:test_spec_arn] unless input[:test_spec_arn].nil?
        data['filter'] = input[:filter] unless input[:filter].nil?
        data['parameters'] = TestParameters.build(input[:parameters]) unless input[:parameters].nil?
        data
      end
    end

    # Map Builder for TestParameters
    class TestParameters
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for GetInstanceProfile
    class GetInstanceProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.GetInstanceProfile'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetJob
    class GetJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.GetJob'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetNetworkProfile
    class GetNetworkProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.GetNetworkProfile'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetOfferingStatus
    class GetOfferingStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.GetOfferingStatus'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetProject
    class GetProject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.GetProject'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRemoteAccessSession
    class GetRemoteAccessSession
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.GetRemoteAccessSession'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRun
    class GetRun
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.GetRun'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetSuite
    class GetSuite
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.GetSuite'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetTest
    class GetTest
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.GetTest'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetTestGridProject
    class GetTestGridProject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.GetTestGridProject'
        data = {}
        data['projectArn'] = input[:project_arn] unless input[:project_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetTestGridSession
    class GetTestGridSession
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.GetTestGridSession'
        data = {}
        data['projectArn'] = input[:project_arn] unless input[:project_arn].nil?
        data['sessionId'] = input[:session_id] unless input[:session_id].nil?
        data['sessionArn'] = input[:session_arn] unless input[:session_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetUpload
    class GetUpload
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.GetUpload'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetVPCEConfiguration
    class GetVPCEConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.GetVPCEConfiguration'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for InstallToRemoteAccessSession
    class InstallToRemoteAccessSession
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.InstallToRemoteAccessSession'
        data = {}
        data['remoteAccessSessionArn'] = input[:remote_access_session_arn] unless input[:remote_access_session_arn].nil?
        data['appArn'] = input[:app_arn] unless input[:app_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListArtifacts
    class ListArtifacts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.ListArtifacts'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDeviceInstances
    class ListDeviceInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.ListDeviceInstances'
        data = {}
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDevicePools
    class ListDevicePools
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.ListDevicePools'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDevices
    class ListDevices
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.ListDevices'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['filters'] = DeviceFilters.build(input[:filters]) unless input[:filters].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DeviceFilters
    class DeviceFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << DeviceFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DeviceFilter
    class DeviceFilter
      def self.build(input)
        data = {}
        data['attribute'] = input[:attribute] unless input[:attribute].nil?
        data['operator'] = input[:operator] unless input[:operator].nil?
        data['values'] = DeviceFilterValues.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for DeviceFilterValues
    class DeviceFilterValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListInstanceProfiles
    class ListInstanceProfiles
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.ListInstanceProfiles'
        data = {}
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListJobs
    class ListJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.ListJobs'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListNetworkProfiles
    class ListNetworkProfiles
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.ListNetworkProfiles'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListOfferingPromotions
    class ListOfferingPromotions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.ListOfferingPromotions'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListOfferingTransactions
    class ListOfferingTransactions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.ListOfferingTransactions'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListOfferings
    class ListOfferings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.ListOfferings'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListProjects
    class ListProjects
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.ListProjects'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListRemoteAccessSessions
    class ListRemoteAccessSessions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.ListRemoteAccessSessions'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListRuns
    class ListRuns
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.ListRuns'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListSamples
    class ListSamples
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.ListSamples'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListSuites
    class ListSuites
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.ListSuites'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.ListTagsForResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTestGridProjects
    class ListTestGridProjects
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.ListTestGridProjects'
        data = {}
        data['maxResult'] = input[:max_result] unless input[:max_result].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTestGridSessionActions
    class ListTestGridSessionActions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.ListTestGridSessionActions'
        data = {}
        data['sessionArn'] = input[:session_arn] unless input[:session_arn].nil?
        data['maxResult'] = input[:max_result] unless input[:max_result].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTestGridSessionArtifacts
    class ListTestGridSessionArtifacts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.ListTestGridSessionArtifacts'
        data = {}
        data['sessionArn'] = input[:session_arn] unless input[:session_arn].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['maxResult'] = input[:max_result] unless input[:max_result].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTestGridSessions
    class ListTestGridSessions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.ListTestGridSessions'
        data = {}
        data['projectArn'] = input[:project_arn] unless input[:project_arn].nil?
        data['status'] = input[:status] unless input[:status].nil?
        data['creationTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_after]).to_i unless input[:creation_time_after].nil?
        data['creationTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:creation_time_before]).to_i unless input[:creation_time_before].nil?
        data['endTimeAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time_after]).to_i unless input[:end_time_after].nil?
        data['endTimeBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time_before]).to_i unless input[:end_time_before].nil?
        data['maxResult'] = input[:max_result] unless input[:max_result].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTests
    class ListTests
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.ListTests'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListUniqueProblems
    class ListUniqueProblems
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.ListUniqueProblems'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListUploads
    class ListUploads
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.ListUploads'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListVPCEConfigurations
    class ListVPCEConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.ListVPCEConfigurations'
        data = {}
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PurchaseOffering
    class PurchaseOffering
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.PurchaseOffering'
        data = {}
        data['offeringId'] = input[:offering_id] unless input[:offering_id].nil?
        data['quantity'] = input[:quantity] unless input[:quantity].nil?
        data['offeringPromotionId'] = input[:offering_promotion_id] unless input[:offering_promotion_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RenewOffering
    class RenewOffering
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.RenewOffering'
        data = {}
        data['offeringId'] = input[:offering_id] unless input[:offering_id].nil?
        data['quantity'] = input[:quantity] unless input[:quantity].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ScheduleRun
    class ScheduleRun
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.ScheduleRun'
        data = {}
        data['projectArn'] = input[:project_arn] unless input[:project_arn].nil?
        data['appArn'] = input[:app_arn] unless input[:app_arn].nil?
        data['devicePoolArn'] = input[:device_pool_arn] unless input[:device_pool_arn].nil?
        data['deviceSelectionConfiguration'] = DeviceSelectionConfiguration.build(input[:device_selection_configuration]) unless input[:device_selection_configuration].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['test'] = ScheduleRunTest.build(input[:test]) unless input[:test].nil?
        data['configuration'] = ScheduleRunConfiguration.build(input[:configuration]) unless input[:configuration].nil?
        data['executionConfiguration'] = ExecutionConfiguration.build(input[:execution_configuration]) unless input[:execution_configuration].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ExecutionConfiguration
    class ExecutionConfiguration
      def self.build(input)
        data = {}
        data['jobTimeoutMinutes'] = input[:job_timeout_minutes] unless input[:job_timeout_minutes].nil?
        data['accountsCleanup'] = input[:accounts_cleanup] unless input[:accounts_cleanup].nil?
        data['appPackagesCleanup'] = input[:app_packages_cleanup] unless input[:app_packages_cleanup].nil?
        data['videoCapture'] = input[:video_capture] unless input[:video_capture].nil?
        data['skipAppResign'] = input[:skip_app_resign] unless input[:skip_app_resign].nil?
        data
      end
    end

    # Structure Builder for DeviceSelectionConfiguration
    class DeviceSelectionConfiguration
      def self.build(input)
        data = {}
        data['filters'] = DeviceFilters.build(input[:filters]) unless input[:filters].nil?
        data['maxDevices'] = input[:max_devices] unless input[:max_devices].nil?
        data
      end
    end

    # Operation Builder for StopJob
    class StopJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.StopJob'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopRemoteAccessSession
    class StopRemoteAccessSession
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.StopRemoteAccessSession'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopRun
    class StopRun
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.StopRun'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.TagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.UntagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateDeviceInstance
    class UpdateDeviceInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.UpdateDeviceInstance'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        data['profileArn'] = input[:profile_arn] unless input[:profile_arn].nil?
        data['labels'] = InstanceLabels.build(input[:labels]) unless input[:labels].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for InstanceLabels
    class InstanceLabels
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateDevicePool
    class UpdateDevicePool
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.UpdateDevicePool'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['rules'] = Rules.build(input[:rules]) unless input[:rules].nil?
        data['maxDevices'] = input[:max_devices] unless input[:max_devices].nil?
        data['clearMaxDevices'] = input[:clear_max_devices] unless input[:clear_max_devices].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateInstanceProfile
    class UpdateInstanceProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.UpdateInstanceProfile'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['packageCleanup'] = input[:package_cleanup] unless input[:package_cleanup].nil?
        data['excludeAppPackagesFromCleanup'] = PackageIds.build(input[:exclude_app_packages_from_cleanup]) unless input[:exclude_app_packages_from_cleanup].nil?
        data['rebootAfterUse'] = input[:reboot_after_use] unless input[:reboot_after_use].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateNetworkProfile
    class UpdateNetworkProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.UpdateNetworkProfile'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['uplinkBandwidthBits'] = input[:uplink_bandwidth_bits] unless input[:uplink_bandwidth_bits].nil?
        data['downlinkBandwidthBits'] = input[:downlink_bandwidth_bits] unless input[:downlink_bandwidth_bits].nil?
        data['uplinkDelayMs'] = input[:uplink_delay_ms] unless input[:uplink_delay_ms].nil?
        data['downlinkDelayMs'] = input[:downlink_delay_ms] unless input[:downlink_delay_ms].nil?
        data['uplinkJitterMs'] = input[:uplink_jitter_ms] unless input[:uplink_jitter_ms].nil?
        data['downlinkJitterMs'] = input[:downlink_jitter_ms] unless input[:downlink_jitter_ms].nil?
        data['uplinkLossPercent'] = input[:uplink_loss_percent] unless input[:uplink_loss_percent].nil?
        data['downlinkLossPercent'] = input[:downlink_loss_percent] unless input[:downlink_loss_percent].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateProject
    class UpdateProject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.UpdateProject'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['defaultJobTimeoutMinutes'] = input[:default_job_timeout_minutes] unless input[:default_job_timeout_minutes].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateTestGridProject
    class UpdateTestGridProject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.UpdateTestGridProject'
        data = {}
        data['projectArn'] = input[:project_arn] unless input[:project_arn].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['vpcConfig'] = TestGridVpcConfig.build(input[:vpc_config]) unless input[:vpc_config].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateUpload
    class UpdateUpload
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.UpdateUpload'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['contentType'] = input[:content_type] unless input[:content_type].nil?
        data['editContent'] = input[:edit_content] unless input[:edit_content].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateVPCEConfiguration
    class UpdateVPCEConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DeviceFarm_20150623.UpdateVPCEConfiguration'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        data['vpceConfigurationName'] = input[:vpce_configuration_name] unless input[:vpce_configuration_name].nil?
        data['vpceServiceName'] = input[:vpce_service_name] unless input[:vpce_service_name].nil?
        data['serviceDnsName'] = input[:service_dns_name] unless input[:service_dns_name].nil?
        data['vpceConfigurationDescription'] = input[:vpce_configuration_description] unless input[:vpce_configuration_description].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
