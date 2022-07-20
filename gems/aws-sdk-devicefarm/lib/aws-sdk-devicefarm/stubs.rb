# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::DeviceFarm
  module Stubs

    # Operation Stubber for CreateDevicePool
    class CreateDevicePool
      def self.default(visited=[])
        {
          device_pool: DevicePool.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['devicePool'] = DevicePool.stub(stub[:device_pool]) unless stub[:device_pool].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DevicePool
    class DevicePool
      def self.default(visited=[])
        return nil if visited.include?('DevicePool')
        visited = visited + ['DevicePool']
        {
          arn: 'arn',
          name: 'name',
          description: 'description',
          type: 'type',
          rules: Rules.default(visited),
          max_devices: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DevicePool.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['rules'] = Rules.stub(stub[:rules]) unless stub[:rules].nil?
        data['maxDevices'] = stub[:max_devices] unless stub[:max_devices].nil?
        data
      end
    end

    # List Stubber for Rules
    class Rules
      def self.default(visited=[])
        return nil if visited.include?('Rules')
        visited = visited + ['Rules']
        [
          Rule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Rule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Rule
    class Rule
      def self.default(visited=[])
        return nil if visited.include?('Rule')
        visited = visited + ['Rule']
        {
          attribute: 'attribute',
          operator: 'operator',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Rule.new
        data = {}
        data['attribute'] = stub[:attribute] unless stub[:attribute].nil?
        data['operator'] = stub[:operator] unless stub[:operator].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for CreateInstanceProfile
    class CreateInstanceProfile
      def self.default(visited=[])
        {
          instance_profile: InstanceProfile.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['instanceProfile'] = InstanceProfile.stub(stub[:instance_profile]) unless stub[:instance_profile].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for InstanceProfile
    class InstanceProfile
      def self.default(visited=[])
        return nil if visited.include?('InstanceProfile')
        visited = visited + ['InstanceProfile']
        {
          arn: 'arn',
          package_cleanup: false,
          exclude_app_packages_from_cleanup: PackageIds.default(visited),
          reboot_after_use: false,
          name: 'name',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceProfile.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['packageCleanup'] = stub[:package_cleanup] unless stub[:package_cleanup].nil?
        data['excludeAppPackagesFromCleanup'] = PackageIds.stub(stub[:exclude_app_packages_from_cleanup]) unless stub[:exclude_app_packages_from_cleanup].nil?
        data['rebootAfterUse'] = stub[:reboot_after_use] unless stub[:reboot_after_use].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # List Stubber for PackageIds
    class PackageIds
      def self.default(visited=[])
        return nil if visited.include?('PackageIds')
        visited = visited + ['PackageIds']
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

    # Operation Stubber for CreateNetworkProfile
    class CreateNetworkProfile
      def self.default(visited=[])
        {
          network_profile: NetworkProfile.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['networkProfile'] = NetworkProfile.stub(stub[:network_profile]) unless stub[:network_profile].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for NetworkProfile
    class NetworkProfile
      def self.default(visited=[])
        return nil if visited.include?('NetworkProfile')
        visited = visited + ['NetworkProfile']
        {
          arn: 'arn',
          name: 'name',
          description: 'description',
          type: 'type',
          uplink_bandwidth_bits: 1,
          downlink_bandwidth_bits: 1,
          uplink_delay_ms: 1,
          downlink_delay_ms: 1,
          uplink_jitter_ms: 1,
          downlink_jitter_ms: 1,
          uplink_loss_percent: 1,
          downlink_loss_percent: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkProfile.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['uplinkBandwidthBits'] = stub[:uplink_bandwidth_bits] unless stub[:uplink_bandwidth_bits].nil?
        data['downlinkBandwidthBits'] = stub[:downlink_bandwidth_bits] unless stub[:downlink_bandwidth_bits].nil?
        data['uplinkDelayMs'] = stub[:uplink_delay_ms] unless stub[:uplink_delay_ms].nil?
        data['downlinkDelayMs'] = stub[:downlink_delay_ms] unless stub[:downlink_delay_ms].nil?
        data['uplinkJitterMs'] = stub[:uplink_jitter_ms] unless stub[:uplink_jitter_ms].nil?
        data['downlinkJitterMs'] = stub[:downlink_jitter_ms] unless stub[:downlink_jitter_ms].nil?
        data['uplinkLossPercent'] = stub[:uplink_loss_percent] unless stub[:uplink_loss_percent].nil?
        data['downlinkLossPercent'] = stub[:downlink_loss_percent] unless stub[:downlink_loss_percent].nil?
        data
      end
    end

    # Operation Stubber for CreateProject
    class CreateProject
      def self.default(visited=[])
        {
          project: Project.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['project'] = Project.stub(stub[:project]) unless stub[:project].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Project
    class Project
      def self.default(visited=[])
        return nil if visited.include?('Project')
        visited = visited + ['Project']
        {
          arn: 'arn',
          name: 'name',
          default_job_timeout_minutes: 1,
          created: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Project.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['defaultJobTimeoutMinutes'] = stub[:default_job_timeout_minutes] unless stub[:default_job_timeout_minutes].nil?
        data['created'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created]).to_i unless stub[:created].nil?
        data
      end
    end

    # Operation Stubber for CreateRemoteAccessSession
    class CreateRemoteAccessSession
      def self.default(visited=[])
        {
          remote_access_session: RemoteAccessSession.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['remoteAccessSession'] = RemoteAccessSession.stub(stub[:remote_access_session]) unless stub[:remote_access_session].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for RemoteAccessSession
    class RemoteAccessSession
      def self.default(visited=[])
        return nil if visited.include?('RemoteAccessSession')
        visited = visited + ['RemoteAccessSession']
        {
          arn: 'arn',
          name: 'name',
          created: Time.now,
          status: 'status',
          result: 'result',
          message: 'message',
          started: Time.now,
          stopped: Time.now,
          device: Device.default(visited),
          instance_arn: 'instance_arn',
          remote_debug_enabled: false,
          remote_record_enabled: false,
          remote_record_app_arn: 'remote_record_app_arn',
          host_address: 'host_address',
          client_id: 'client_id',
          billing_method: 'billing_method',
          device_minutes: DeviceMinutes.default(visited),
          endpoint: 'endpoint',
          device_udid: 'device_udid',
          interaction_mode: 'interaction_mode',
          skip_app_resign: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::RemoteAccessSession.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['created'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created]).to_i unless stub[:created].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['result'] = stub[:result] unless stub[:result].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data['started'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started]).to_i unless stub[:started].nil?
        data['stopped'] = Hearth::TimeHelper.to_epoch_seconds(stub[:stopped]).to_i unless stub[:stopped].nil?
        data['device'] = Device.stub(stub[:device]) unless stub[:device].nil?
        data['instanceArn'] = stub[:instance_arn] unless stub[:instance_arn].nil?
        data['remoteDebugEnabled'] = stub[:remote_debug_enabled] unless stub[:remote_debug_enabled].nil?
        data['remoteRecordEnabled'] = stub[:remote_record_enabled] unless stub[:remote_record_enabled].nil?
        data['remoteRecordAppArn'] = stub[:remote_record_app_arn] unless stub[:remote_record_app_arn].nil?
        data['hostAddress'] = stub[:host_address] unless stub[:host_address].nil?
        data['clientId'] = stub[:client_id] unless stub[:client_id].nil?
        data['billingMethod'] = stub[:billing_method] unless stub[:billing_method].nil?
        data['deviceMinutes'] = DeviceMinutes.stub(stub[:device_minutes]) unless stub[:device_minutes].nil?
        data['endpoint'] = stub[:endpoint] unless stub[:endpoint].nil?
        data['deviceUdid'] = stub[:device_udid] unless stub[:device_udid].nil?
        data['interactionMode'] = stub[:interaction_mode] unless stub[:interaction_mode].nil?
        data['skipAppResign'] = stub[:skip_app_resign] unless stub[:skip_app_resign].nil?
        data
      end
    end

    # Structure Stubber for DeviceMinutes
    class DeviceMinutes
      def self.default(visited=[])
        return nil if visited.include?('DeviceMinutes')
        visited = visited + ['DeviceMinutes']
        {
          total: 1.0,
          metered: 1.0,
          unmetered: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::DeviceMinutes.new
        data = {}
        data['total'] = Hearth::NumberHelper.serialize(stub[:total])
        data['metered'] = Hearth::NumberHelper.serialize(stub[:metered])
        data['unmetered'] = Hearth::NumberHelper.serialize(stub[:unmetered])
        data
      end
    end

    # Structure Stubber for Device
    class Device
      def self.default(visited=[])
        return nil if visited.include?('Device')
        visited = visited + ['Device']
        {
          arn: 'arn',
          name: 'name',
          manufacturer: 'manufacturer',
          model: 'model',
          model_id: 'model_id',
          form_factor: 'form_factor',
          platform: 'platform',
          os: 'os',
          cpu: CPU.default(visited),
          resolution: Resolution.default(visited),
          heap_size: 1,
          memory: 1,
          image: 'image',
          carrier: 'carrier',
          radio: 'radio',
          remote_access_enabled: false,
          remote_debug_enabled: false,
          fleet_type: 'fleet_type',
          fleet_name: 'fleet_name',
          instances: DeviceInstances.default(visited),
          availability: 'availability',
        }
      end

      def self.stub(stub)
        stub ||= Types::Device.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['manufacturer'] = stub[:manufacturer] unless stub[:manufacturer].nil?
        data['model'] = stub[:model] unless stub[:model].nil?
        data['modelId'] = stub[:model_id] unless stub[:model_id].nil?
        data['formFactor'] = stub[:form_factor] unless stub[:form_factor].nil?
        data['platform'] = stub[:platform] unless stub[:platform].nil?
        data['os'] = stub[:os] unless stub[:os].nil?
        data['cpu'] = CPU.stub(stub[:cpu]) unless stub[:cpu].nil?
        data['resolution'] = Resolution.stub(stub[:resolution]) unless stub[:resolution].nil?
        data['heapSize'] = stub[:heap_size] unless stub[:heap_size].nil?
        data['memory'] = stub[:memory] unless stub[:memory].nil?
        data['image'] = stub[:image] unless stub[:image].nil?
        data['carrier'] = stub[:carrier] unless stub[:carrier].nil?
        data['radio'] = stub[:radio] unless stub[:radio].nil?
        data['remoteAccessEnabled'] = stub[:remote_access_enabled] unless stub[:remote_access_enabled].nil?
        data['remoteDebugEnabled'] = stub[:remote_debug_enabled] unless stub[:remote_debug_enabled].nil?
        data['fleetType'] = stub[:fleet_type] unless stub[:fleet_type].nil?
        data['fleetName'] = stub[:fleet_name] unless stub[:fleet_name].nil?
        data['instances'] = DeviceInstances.stub(stub[:instances]) unless stub[:instances].nil?
        data['availability'] = stub[:availability] unless stub[:availability].nil?
        data
      end
    end

    # List Stubber for DeviceInstances
    class DeviceInstances
      def self.default(visited=[])
        return nil if visited.include?('DeviceInstances')
        visited = visited + ['DeviceInstances']
        [
          DeviceInstance.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DeviceInstance.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DeviceInstance
    class DeviceInstance
      def self.default(visited=[])
        return nil if visited.include?('DeviceInstance')
        visited = visited + ['DeviceInstance']
        {
          arn: 'arn',
          device_arn: 'device_arn',
          labels: InstanceLabels.default(visited),
          status: 'status',
          udid: 'udid',
          instance_profile: InstanceProfile.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DeviceInstance.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['deviceArn'] = stub[:device_arn] unless stub[:device_arn].nil?
        data['labels'] = InstanceLabels.stub(stub[:labels]) unless stub[:labels].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['udid'] = stub[:udid] unless stub[:udid].nil?
        data['instanceProfile'] = InstanceProfile.stub(stub[:instance_profile]) unless stub[:instance_profile].nil?
        data
      end
    end

    # List Stubber for InstanceLabels
    class InstanceLabels
      def self.default(visited=[])
        return nil if visited.include?('InstanceLabels')
        visited = visited + ['InstanceLabels']
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

    # Structure Stubber for Resolution
    class Resolution
      def self.default(visited=[])
        return nil if visited.include?('Resolution')
        visited = visited + ['Resolution']
        {
          width: 1,
          height: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Resolution.new
        data = {}
        data['width'] = stub[:width] unless stub[:width].nil?
        data['height'] = stub[:height] unless stub[:height].nil?
        data
      end
    end

    # Structure Stubber for CPU
    class CPU
      def self.default(visited=[])
        return nil if visited.include?('CPU')
        visited = visited + ['CPU']
        {
          frequency: 'frequency',
          architecture: 'architecture',
          clock: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::CPU.new
        data = {}
        data['frequency'] = stub[:frequency] unless stub[:frequency].nil?
        data['architecture'] = stub[:architecture] unless stub[:architecture].nil?
        data['clock'] = Hearth::NumberHelper.serialize(stub[:clock])
        data
      end
    end

    # Operation Stubber for CreateTestGridProject
    class CreateTestGridProject
      def self.default(visited=[])
        {
          test_grid_project: TestGridProject.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['testGridProject'] = TestGridProject.stub(stub[:test_grid_project]) unless stub[:test_grid_project].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for TestGridProject
    class TestGridProject
      def self.default(visited=[])
        return nil if visited.include?('TestGridProject')
        visited = visited + ['TestGridProject']
        {
          arn: 'arn',
          name: 'name',
          description: 'description',
          vpc_config: TestGridVpcConfig.default(visited),
          created: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::TestGridProject.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['vpcConfig'] = TestGridVpcConfig.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        data['created'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created]).to_i unless stub[:created].nil?
        data
      end
    end

    # Structure Stubber for TestGridVpcConfig
    class TestGridVpcConfig
      def self.default(visited=[])
        return nil if visited.include?('TestGridVpcConfig')
        visited = visited + ['TestGridVpcConfig']
        {
          security_group_ids: SecurityGroupIds.default(visited),
          subnet_ids: SubnetIds.default(visited),
          vpc_id: 'vpc_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::TestGridVpcConfig.new
        data = {}
        data['securityGroupIds'] = SecurityGroupIds.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data['subnetIds'] = SubnetIds.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['vpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data
      end
    end

    # List Stubber for SubnetIds
    class SubnetIds
      def self.default(visited=[])
        return nil if visited.include?('SubnetIds')
        visited = visited + ['SubnetIds']
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

    # List Stubber for SecurityGroupIds
    class SecurityGroupIds
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupIds')
        visited = visited + ['SecurityGroupIds']
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

    # Operation Stubber for CreateTestGridUrl
    class CreateTestGridUrl
      def self.default(visited=[])
        {
          url: 'url',
          expires: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['url'] = stub[:url] unless stub[:url].nil?
        data['expires'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expires]).to_i unless stub[:expires].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateUpload
    class CreateUpload
      def self.default(visited=[])
        {
          upload: Upload.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['upload'] = Upload.stub(stub[:upload]) unless stub[:upload].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Upload
    class Upload
      def self.default(visited=[])
        return nil if visited.include?('Upload')
        visited = visited + ['Upload']
        {
          arn: 'arn',
          name: 'name',
          created: Time.now,
          type: 'type',
          status: 'status',
          url: 'url',
          metadata: 'metadata',
          content_type: 'content_type',
          message: 'message',
          category: 'category',
        }
      end

      def self.stub(stub)
        stub ||= Types::Upload.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['created'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created]).to_i unless stub[:created].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['url'] = stub[:url] unless stub[:url].nil?
        data['metadata'] = stub[:metadata] unless stub[:metadata].nil?
        data['contentType'] = stub[:content_type] unless stub[:content_type].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data['category'] = stub[:category] unless stub[:category].nil?
        data
      end
    end

    # Operation Stubber for CreateVPCEConfiguration
    class CreateVPCEConfiguration
      def self.default(visited=[])
        {
          vpce_configuration: VPCEConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['vpceConfiguration'] = VPCEConfiguration.stub(stub[:vpce_configuration]) unless stub[:vpce_configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for VPCEConfiguration
    class VPCEConfiguration
      def self.default(visited=[])
        return nil if visited.include?('VPCEConfiguration')
        visited = visited + ['VPCEConfiguration']
        {
          arn: 'arn',
          vpce_configuration_name: 'vpce_configuration_name',
          vpce_service_name: 'vpce_service_name',
          service_dns_name: 'service_dns_name',
          vpce_configuration_description: 'vpce_configuration_description',
        }
      end

      def self.stub(stub)
        stub ||= Types::VPCEConfiguration.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['vpceConfigurationName'] = stub[:vpce_configuration_name] unless stub[:vpce_configuration_name].nil?
        data['vpceServiceName'] = stub[:vpce_service_name] unless stub[:vpce_service_name].nil?
        data['serviceDnsName'] = stub[:service_dns_name] unless stub[:service_dns_name].nil?
        data['vpceConfigurationDescription'] = stub[:vpce_configuration_description] unless stub[:vpce_configuration_description].nil?
        data
      end
    end

    # Operation Stubber for DeleteDevicePool
    class DeleteDevicePool
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

    # Operation Stubber for DeleteInstanceProfile
    class DeleteInstanceProfile
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

    # Operation Stubber for DeleteNetworkProfile
    class DeleteNetworkProfile
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

    # Operation Stubber for DeleteProject
    class DeleteProject
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

    # Operation Stubber for DeleteRemoteAccessSession
    class DeleteRemoteAccessSession
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

    # Operation Stubber for DeleteRun
    class DeleteRun
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

    # Operation Stubber for DeleteTestGridProject
    class DeleteTestGridProject
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

    # Operation Stubber for DeleteUpload
    class DeleteUpload
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

    # Operation Stubber for DeleteVPCEConfiguration
    class DeleteVPCEConfiguration
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

    # Operation Stubber for GetAccountSettings
    class GetAccountSettings
      def self.default(visited=[])
        {
          account_settings: AccountSettings.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['accountSettings'] = AccountSettings.stub(stub[:account_settings]) unless stub[:account_settings].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for AccountSettings
    class AccountSettings
      def self.default(visited=[])
        return nil if visited.include?('AccountSettings')
        visited = visited + ['AccountSettings']
        {
          aws_account_number: 'aws_account_number',
          unmetered_devices: PurchasedDevicesMap.default(visited),
          unmetered_remote_access_devices: PurchasedDevicesMap.default(visited),
          max_job_timeout_minutes: 1,
          trial_minutes: TrialMinutes.default(visited),
          max_slots: MaxSlotMap.default(visited),
          default_job_timeout_minutes: 1,
          skip_app_resign: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AccountSettings.new
        data = {}
        data['awsAccountNumber'] = stub[:aws_account_number] unless stub[:aws_account_number].nil?
        data['unmeteredDevices'] = PurchasedDevicesMap.stub(stub[:unmetered_devices]) unless stub[:unmetered_devices].nil?
        data['unmeteredRemoteAccessDevices'] = PurchasedDevicesMap.stub(stub[:unmetered_remote_access_devices]) unless stub[:unmetered_remote_access_devices].nil?
        data['maxJobTimeoutMinutes'] = stub[:max_job_timeout_minutes] unless stub[:max_job_timeout_minutes].nil?
        data['trialMinutes'] = TrialMinutes.stub(stub[:trial_minutes]) unless stub[:trial_minutes].nil?
        data['maxSlots'] = MaxSlotMap.stub(stub[:max_slots]) unless stub[:max_slots].nil?
        data['defaultJobTimeoutMinutes'] = stub[:default_job_timeout_minutes] unless stub[:default_job_timeout_minutes].nil?
        data['skipAppResign'] = stub[:skip_app_resign] unless stub[:skip_app_resign].nil?
        data
      end
    end

    # Map Stubber for MaxSlotMap
    class MaxSlotMap
      def self.default(visited=[])
        return nil if visited.include?('MaxSlotMap')
        visited = visited + ['MaxSlotMap']
        {
          test_key: 1
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

    # Structure Stubber for TrialMinutes
    class TrialMinutes
      def self.default(visited=[])
        return nil if visited.include?('TrialMinutes')
        visited = visited + ['TrialMinutes']
        {
          total: 1.0,
          remaining: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::TrialMinutes.new
        data = {}
        data['total'] = Hearth::NumberHelper.serialize(stub[:total])
        data['remaining'] = Hearth::NumberHelper.serialize(stub[:remaining])
        data
      end
    end

    # Map Stubber for PurchasedDevicesMap
    class PurchasedDevicesMap
      def self.default(visited=[])
        return nil if visited.include?('PurchasedDevicesMap')
        visited = visited + ['PurchasedDevicesMap']
        {
          test_key: 1
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

    # Operation Stubber for GetDevice
    class GetDevice
      def self.default(visited=[])
        {
          device: Device.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['device'] = Device.stub(stub[:device]) unless stub[:device].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetDeviceInstance
    class GetDeviceInstance
      def self.default(visited=[])
        {
          device_instance: DeviceInstance.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['deviceInstance'] = DeviceInstance.stub(stub[:device_instance]) unless stub[:device_instance].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetDevicePool
    class GetDevicePool
      def self.default(visited=[])
        {
          device_pool: DevicePool.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['devicePool'] = DevicePool.stub(stub[:device_pool]) unless stub[:device_pool].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetDevicePoolCompatibility
    class GetDevicePoolCompatibility
      def self.default(visited=[])
        {
          compatible_devices: DevicePoolCompatibilityResults.default(visited),
          incompatible_devices: DevicePoolCompatibilityResults.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['compatibleDevices'] = DevicePoolCompatibilityResults.stub(stub[:compatible_devices]) unless stub[:compatible_devices].nil?
        data['incompatibleDevices'] = DevicePoolCompatibilityResults.stub(stub[:incompatible_devices]) unless stub[:incompatible_devices].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DevicePoolCompatibilityResults
    class DevicePoolCompatibilityResults
      def self.default(visited=[])
        return nil if visited.include?('DevicePoolCompatibilityResults')
        visited = visited + ['DevicePoolCompatibilityResults']
        [
          DevicePoolCompatibilityResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DevicePoolCompatibilityResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DevicePoolCompatibilityResult
    class DevicePoolCompatibilityResult
      def self.default(visited=[])
        return nil if visited.include?('DevicePoolCompatibilityResult')
        visited = visited + ['DevicePoolCompatibilityResult']
        {
          device: Device.default(visited),
          compatible: false,
          incompatibility_messages: IncompatibilityMessages.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DevicePoolCompatibilityResult.new
        data = {}
        data['device'] = Device.stub(stub[:device]) unless stub[:device].nil?
        data['compatible'] = stub[:compatible] unless stub[:compatible].nil?
        data['incompatibilityMessages'] = IncompatibilityMessages.stub(stub[:incompatibility_messages]) unless stub[:incompatibility_messages].nil?
        data
      end
    end

    # List Stubber for IncompatibilityMessages
    class IncompatibilityMessages
      def self.default(visited=[])
        return nil if visited.include?('IncompatibilityMessages')
        visited = visited + ['IncompatibilityMessages']
        [
          IncompatibilityMessage.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << IncompatibilityMessage.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for IncompatibilityMessage
    class IncompatibilityMessage
      def self.default(visited=[])
        return nil if visited.include?('IncompatibilityMessage')
        visited = visited + ['IncompatibilityMessage']
        {
          message: 'message',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::IncompatibilityMessage.new
        data = {}
        data['message'] = stub[:message] unless stub[:message].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Operation Stubber for GetInstanceProfile
    class GetInstanceProfile
      def self.default(visited=[])
        {
          instance_profile: InstanceProfile.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['instanceProfile'] = InstanceProfile.stub(stub[:instance_profile]) unless stub[:instance_profile].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetJob
    class GetJob
      def self.default(visited=[])
        {
          job: Job.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['job'] = Job.stub(stub[:job]) unless stub[:job].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Job
    class Job
      def self.default(visited=[])
        return nil if visited.include?('Job')
        visited = visited + ['Job']
        {
          arn: 'arn',
          name: 'name',
          type: 'type',
          created: Time.now,
          status: 'status',
          result: 'result',
          started: Time.now,
          stopped: Time.now,
          counters: Counters.default(visited),
          message: 'message',
          device: Device.default(visited),
          instance_arn: 'instance_arn',
          device_minutes: DeviceMinutes.default(visited),
          video_endpoint: 'video_endpoint',
          video_capture: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::Job.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['created'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created]).to_i unless stub[:created].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['result'] = stub[:result] unless stub[:result].nil?
        data['started'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started]).to_i unless stub[:started].nil?
        data['stopped'] = Hearth::TimeHelper.to_epoch_seconds(stub[:stopped]).to_i unless stub[:stopped].nil?
        data['counters'] = Counters.stub(stub[:counters]) unless stub[:counters].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data['device'] = Device.stub(stub[:device]) unless stub[:device].nil?
        data['instanceArn'] = stub[:instance_arn] unless stub[:instance_arn].nil?
        data['deviceMinutes'] = DeviceMinutes.stub(stub[:device_minutes]) unless stub[:device_minutes].nil?
        data['videoEndpoint'] = stub[:video_endpoint] unless stub[:video_endpoint].nil?
        data['videoCapture'] = stub[:video_capture] unless stub[:video_capture].nil?
        data
      end
    end

    # Structure Stubber for Counters
    class Counters
      def self.default(visited=[])
        return nil if visited.include?('Counters')
        visited = visited + ['Counters']
        {
          total: 1,
          passed: 1,
          failed: 1,
          warned: 1,
          errored: 1,
          stopped: 1,
          skipped: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Counters.new
        data = {}
        data['total'] = stub[:total] unless stub[:total].nil?
        data['passed'] = stub[:passed] unless stub[:passed].nil?
        data['failed'] = stub[:failed] unless stub[:failed].nil?
        data['warned'] = stub[:warned] unless stub[:warned].nil?
        data['errored'] = stub[:errored] unless stub[:errored].nil?
        data['stopped'] = stub[:stopped] unless stub[:stopped].nil?
        data['skipped'] = stub[:skipped] unless stub[:skipped].nil?
        data
      end
    end

    # Operation Stubber for GetNetworkProfile
    class GetNetworkProfile
      def self.default(visited=[])
        {
          network_profile: NetworkProfile.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['networkProfile'] = NetworkProfile.stub(stub[:network_profile]) unless stub[:network_profile].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetOfferingStatus
    class GetOfferingStatus
      def self.default(visited=[])
        {
          current: OfferingStatusMap.default(visited),
          next_period: OfferingStatusMap.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['current'] = OfferingStatusMap.stub(stub[:current]) unless stub[:current].nil?
        data['nextPeriod'] = OfferingStatusMap.stub(stub[:next_period]) unless stub[:next_period].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Map Stubber for OfferingStatusMap
    class OfferingStatusMap
      def self.default(visited=[])
        return nil if visited.include?('OfferingStatusMap')
        visited = visited + ['OfferingStatusMap']
        {
          test_key: OfferingStatus.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = OfferingStatus.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for OfferingStatus
    class OfferingStatus
      def self.default(visited=[])
        return nil if visited.include?('OfferingStatus')
        visited = visited + ['OfferingStatus']
        {
          type: 'type',
          offering: Offering.default(visited),
          quantity: 1,
          effective_on: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::OfferingStatus.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['offering'] = Offering.stub(stub[:offering]) unless stub[:offering].nil?
        data['quantity'] = stub[:quantity] unless stub[:quantity].nil?
        data['effectiveOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:effective_on]).to_i unless stub[:effective_on].nil?
        data
      end
    end

    # Structure Stubber for Offering
    class Offering
      def self.default(visited=[])
        return nil if visited.include?('Offering')
        visited = visited + ['Offering']
        {
          id: 'id',
          description: 'description',
          type: 'type',
          platform: 'platform',
          recurring_charges: RecurringCharges.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Offering.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['platform'] = stub[:platform] unless stub[:platform].nil?
        data['recurringCharges'] = RecurringCharges.stub(stub[:recurring_charges]) unless stub[:recurring_charges].nil?
        data
      end
    end

    # List Stubber for RecurringCharges
    class RecurringCharges
      def self.default(visited=[])
        return nil if visited.include?('RecurringCharges')
        visited = visited + ['RecurringCharges']
        [
          RecurringCharge.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RecurringCharge.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecurringCharge
    class RecurringCharge
      def self.default(visited=[])
        return nil if visited.include?('RecurringCharge')
        visited = visited + ['RecurringCharge']
        {
          cost: MonetaryAmount.default(visited),
          frequency: 'frequency',
        }
      end

      def self.stub(stub)
        stub ||= Types::RecurringCharge.new
        data = {}
        data['cost'] = MonetaryAmount.stub(stub[:cost]) unless stub[:cost].nil?
        data['frequency'] = stub[:frequency] unless stub[:frequency].nil?
        data
      end
    end

    # Structure Stubber for MonetaryAmount
    class MonetaryAmount
      def self.default(visited=[])
        return nil if visited.include?('MonetaryAmount')
        visited = visited + ['MonetaryAmount']
        {
          amount: 1.0,
          currency_code: 'currency_code',
        }
      end

      def self.stub(stub)
        stub ||= Types::MonetaryAmount.new
        data = {}
        data['amount'] = Hearth::NumberHelper.serialize(stub[:amount])
        data['currencyCode'] = stub[:currency_code] unless stub[:currency_code].nil?
        data
      end
    end

    # Operation Stubber for GetProject
    class GetProject
      def self.default(visited=[])
        {
          project: Project.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['project'] = Project.stub(stub[:project]) unless stub[:project].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetRemoteAccessSession
    class GetRemoteAccessSession
      def self.default(visited=[])
        {
          remote_access_session: RemoteAccessSession.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['remoteAccessSession'] = RemoteAccessSession.stub(stub[:remote_access_session]) unless stub[:remote_access_session].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetRun
    class GetRun
      def self.default(visited=[])
        {
          run: Run.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['run'] = Run.stub(stub[:run]) unless stub[:run].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Run
    class Run
      def self.default(visited=[])
        return nil if visited.include?('Run')
        visited = visited + ['Run']
        {
          arn: 'arn',
          name: 'name',
          type: 'type',
          platform: 'platform',
          created: Time.now,
          status: 'status',
          result: 'result',
          started: Time.now,
          stopped: Time.now,
          counters: Counters.default(visited),
          message: 'message',
          total_jobs: 1,
          completed_jobs: 1,
          billing_method: 'billing_method',
          device_minutes: DeviceMinutes.default(visited),
          network_profile: NetworkProfile.default(visited),
          parsing_result_url: 'parsing_result_url',
          result_code: 'result_code',
          seed: 1,
          app_upload: 'app_upload',
          event_count: 1,
          job_timeout_minutes: 1,
          device_pool_arn: 'device_pool_arn',
          locale: 'locale',
          radios: Radios.default(visited),
          location: Location.default(visited),
          customer_artifact_paths: CustomerArtifactPaths.default(visited),
          web_url: 'web_url',
          skip_app_resign: false,
          test_spec_arn: 'test_spec_arn',
          device_selection_result: DeviceSelectionResult.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Run.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['platform'] = stub[:platform] unless stub[:platform].nil?
        data['created'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created]).to_i unless stub[:created].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['result'] = stub[:result] unless stub[:result].nil?
        data['started'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started]).to_i unless stub[:started].nil?
        data['stopped'] = Hearth::TimeHelper.to_epoch_seconds(stub[:stopped]).to_i unless stub[:stopped].nil?
        data['counters'] = Counters.stub(stub[:counters]) unless stub[:counters].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data['totalJobs'] = stub[:total_jobs] unless stub[:total_jobs].nil?
        data['completedJobs'] = stub[:completed_jobs] unless stub[:completed_jobs].nil?
        data['billingMethod'] = stub[:billing_method] unless stub[:billing_method].nil?
        data['deviceMinutes'] = DeviceMinutes.stub(stub[:device_minutes]) unless stub[:device_minutes].nil?
        data['networkProfile'] = NetworkProfile.stub(stub[:network_profile]) unless stub[:network_profile].nil?
        data['parsingResultUrl'] = stub[:parsing_result_url] unless stub[:parsing_result_url].nil?
        data['resultCode'] = stub[:result_code] unless stub[:result_code].nil?
        data['seed'] = stub[:seed] unless stub[:seed].nil?
        data['appUpload'] = stub[:app_upload] unless stub[:app_upload].nil?
        data['eventCount'] = stub[:event_count] unless stub[:event_count].nil?
        data['jobTimeoutMinutes'] = stub[:job_timeout_minutes] unless stub[:job_timeout_minutes].nil?
        data['devicePoolArn'] = stub[:device_pool_arn] unless stub[:device_pool_arn].nil?
        data['locale'] = stub[:locale] unless stub[:locale].nil?
        data['radios'] = Radios.stub(stub[:radios]) unless stub[:radios].nil?
        data['location'] = Location.stub(stub[:location]) unless stub[:location].nil?
        data['customerArtifactPaths'] = CustomerArtifactPaths.stub(stub[:customer_artifact_paths]) unless stub[:customer_artifact_paths].nil?
        data['webUrl'] = stub[:web_url] unless stub[:web_url].nil?
        data['skipAppResign'] = stub[:skip_app_resign] unless stub[:skip_app_resign].nil?
        data['testSpecArn'] = stub[:test_spec_arn] unless stub[:test_spec_arn].nil?
        data['deviceSelectionResult'] = DeviceSelectionResult.stub(stub[:device_selection_result]) unless stub[:device_selection_result].nil?
        data
      end
    end

    # Structure Stubber for DeviceSelectionResult
    class DeviceSelectionResult
      def self.default(visited=[])
        return nil if visited.include?('DeviceSelectionResult')
        visited = visited + ['DeviceSelectionResult']
        {
          filters: DeviceFilters.default(visited),
          matched_devices_count: 1,
          max_devices: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DeviceSelectionResult.new
        data = {}
        data['filters'] = DeviceFilters.stub(stub[:filters]) unless stub[:filters].nil?
        data['matchedDevicesCount'] = stub[:matched_devices_count] unless stub[:matched_devices_count].nil?
        data['maxDevices'] = stub[:max_devices] unless stub[:max_devices].nil?
        data
      end
    end

    # List Stubber for DeviceFilters
    class DeviceFilters
      def self.default(visited=[])
        return nil if visited.include?('DeviceFilters')
        visited = visited + ['DeviceFilters']
        [
          DeviceFilter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DeviceFilter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DeviceFilter
    class DeviceFilter
      def self.default(visited=[])
        return nil if visited.include?('DeviceFilter')
        visited = visited + ['DeviceFilter']
        {
          attribute: 'attribute',
          operator: 'operator',
          values: DeviceFilterValues.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DeviceFilter.new
        data = {}
        data['attribute'] = stub[:attribute] unless stub[:attribute].nil?
        data['operator'] = stub[:operator] unless stub[:operator].nil?
        data['values'] = DeviceFilterValues.stub(stub[:values]) unless stub[:values].nil?
        data
      end
    end

    # List Stubber for DeviceFilterValues
    class DeviceFilterValues
      def self.default(visited=[])
        return nil if visited.include?('DeviceFilterValues')
        visited = visited + ['DeviceFilterValues']
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

    # Structure Stubber for CustomerArtifactPaths
    class CustomerArtifactPaths
      def self.default(visited=[])
        return nil if visited.include?('CustomerArtifactPaths')
        visited = visited + ['CustomerArtifactPaths']
        {
          ios_paths: IosPaths.default(visited),
          android_paths: AndroidPaths.default(visited),
          device_host_paths: DeviceHostPaths.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomerArtifactPaths.new
        data = {}
        data['iosPaths'] = IosPaths.stub(stub[:ios_paths]) unless stub[:ios_paths].nil?
        data['androidPaths'] = AndroidPaths.stub(stub[:android_paths]) unless stub[:android_paths].nil?
        data['deviceHostPaths'] = DeviceHostPaths.stub(stub[:device_host_paths]) unless stub[:device_host_paths].nil?
        data
      end
    end

    # List Stubber for DeviceHostPaths
    class DeviceHostPaths
      def self.default(visited=[])
        return nil if visited.include?('DeviceHostPaths')
        visited = visited + ['DeviceHostPaths']
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

    # List Stubber for AndroidPaths
    class AndroidPaths
      def self.default(visited=[])
        return nil if visited.include?('AndroidPaths')
        visited = visited + ['AndroidPaths']
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

    # List Stubber for IosPaths
    class IosPaths
      def self.default(visited=[])
        return nil if visited.include?('IosPaths')
        visited = visited + ['IosPaths']
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

    # Structure Stubber for Location
    class Location
      def self.default(visited=[])
        return nil if visited.include?('Location')
        visited = visited + ['Location']
        {
          latitude: 1.0,
          longitude: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::Location.new
        data = {}
        data['latitude'] = Hearth::NumberHelper.serialize(stub[:latitude])
        data['longitude'] = Hearth::NumberHelper.serialize(stub[:longitude])
        data
      end
    end

    # Structure Stubber for Radios
    class Radios
      def self.default(visited=[])
        return nil if visited.include?('Radios')
        visited = visited + ['Radios']
        {
          wifi: false,
          bluetooth: false,
          nfc: false,
          gps: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::Radios.new
        data = {}
        data['wifi'] = stub[:wifi] unless stub[:wifi].nil?
        data['bluetooth'] = stub[:bluetooth] unless stub[:bluetooth].nil?
        data['nfc'] = stub[:nfc] unless stub[:nfc].nil?
        data['gps'] = stub[:gps] unless stub[:gps].nil?
        data
      end
    end

    # Operation Stubber for GetSuite
    class GetSuite
      def self.default(visited=[])
        {
          suite: Suite.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['suite'] = Suite.stub(stub[:suite]) unless stub[:suite].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Suite
    class Suite
      def self.default(visited=[])
        return nil if visited.include?('Suite')
        visited = visited + ['Suite']
        {
          arn: 'arn',
          name: 'name',
          type: 'type',
          created: Time.now,
          status: 'status',
          result: 'result',
          started: Time.now,
          stopped: Time.now,
          counters: Counters.default(visited),
          message: 'message',
          device_minutes: DeviceMinutes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Suite.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['created'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created]).to_i unless stub[:created].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['result'] = stub[:result] unless stub[:result].nil?
        data['started'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started]).to_i unless stub[:started].nil?
        data['stopped'] = Hearth::TimeHelper.to_epoch_seconds(stub[:stopped]).to_i unless stub[:stopped].nil?
        data['counters'] = Counters.stub(stub[:counters]) unless stub[:counters].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data['deviceMinutes'] = DeviceMinutes.stub(stub[:device_minutes]) unless stub[:device_minutes].nil?
        data
      end
    end

    # Operation Stubber for GetTest
    class GetTest
      def self.default(visited=[])
        {
          test: Test.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['test'] = Test.stub(stub[:test]) unless stub[:test].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Test
    class Test
      def self.default(visited=[])
        return nil if visited.include?('Test')
        visited = visited + ['Test']
        {
          arn: 'arn',
          name: 'name',
          type: 'type',
          created: Time.now,
          status: 'status',
          result: 'result',
          started: Time.now,
          stopped: Time.now,
          counters: Counters.default(visited),
          message: 'message',
          device_minutes: DeviceMinutes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Test.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['created'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created]).to_i unless stub[:created].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['result'] = stub[:result] unless stub[:result].nil?
        data['started'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started]).to_i unless stub[:started].nil?
        data['stopped'] = Hearth::TimeHelper.to_epoch_seconds(stub[:stopped]).to_i unless stub[:stopped].nil?
        data['counters'] = Counters.stub(stub[:counters]) unless stub[:counters].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data['deviceMinutes'] = DeviceMinutes.stub(stub[:device_minutes]) unless stub[:device_minutes].nil?
        data
      end
    end

    # Operation Stubber for GetTestGridProject
    class GetTestGridProject
      def self.default(visited=[])
        {
          test_grid_project: TestGridProject.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['testGridProject'] = TestGridProject.stub(stub[:test_grid_project]) unless stub[:test_grid_project].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetTestGridSession
    class GetTestGridSession
      def self.default(visited=[])
        {
          test_grid_session: TestGridSession.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['testGridSession'] = TestGridSession.stub(stub[:test_grid_session]) unless stub[:test_grid_session].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for TestGridSession
    class TestGridSession
      def self.default(visited=[])
        return nil if visited.include?('TestGridSession')
        visited = visited + ['TestGridSession']
        {
          arn: 'arn',
          status: 'status',
          created: Time.now,
          ended: Time.now,
          billing_minutes: 1.0,
          selenium_properties: 'selenium_properties',
        }
      end

      def self.stub(stub)
        stub ||= Types::TestGridSession.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['created'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created]).to_i unless stub[:created].nil?
        data['ended'] = Hearth::TimeHelper.to_epoch_seconds(stub[:ended]).to_i unless stub[:ended].nil?
        data['billingMinutes'] = Hearth::NumberHelper.serialize(stub[:billing_minutes])
        data['seleniumProperties'] = stub[:selenium_properties] unless stub[:selenium_properties].nil?
        data
      end
    end

    # Operation Stubber for GetUpload
    class GetUpload
      def self.default(visited=[])
        {
          upload: Upload.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['upload'] = Upload.stub(stub[:upload]) unless stub[:upload].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetVPCEConfiguration
    class GetVPCEConfiguration
      def self.default(visited=[])
        {
          vpce_configuration: VPCEConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['vpceConfiguration'] = VPCEConfiguration.stub(stub[:vpce_configuration]) unless stub[:vpce_configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for InstallToRemoteAccessSession
    class InstallToRemoteAccessSession
      def self.default(visited=[])
        {
          app_upload: Upload.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['appUpload'] = Upload.stub(stub[:app_upload]) unless stub[:app_upload].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListArtifacts
    class ListArtifacts
      def self.default(visited=[])
        {
          artifacts: Artifacts.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['artifacts'] = Artifacts.stub(stub[:artifacts]) unless stub[:artifacts].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Artifacts
    class Artifacts
      def self.default(visited=[])
        return nil if visited.include?('Artifacts')
        visited = visited + ['Artifacts']
        [
          Artifact.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Artifact.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Artifact
    class Artifact
      def self.default(visited=[])
        return nil if visited.include?('Artifact')
        visited = visited + ['Artifact']
        {
          arn: 'arn',
          name: 'name',
          type: 'type',
          extension: 'extension',
          url: 'url',
        }
      end

      def self.stub(stub)
        stub ||= Types::Artifact.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['extension'] = stub[:extension] unless stub[:extension].nil?
        data['url'] = stub[:url] unless stub[:url].nil?
        data
      end
    end

    # Operation Stubber for ListDeviceInstances
    class ListDeviceInstances
      def self.default(visited=[])
        {
          device_instances: DeviceInstances.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['deviceInstances'] = DeviceInstances.stub(stub[:device_instances]) unless stub[:device_instances].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListDevicePools
    class ListDevicePools
      def self.default(visited=[])
        {
          device_pools: DevicePools.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['devicePools'] = DevicePools.stub(stub[:device_pools]) unless stub[:device_pools].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DevicePools
    class DevicePools
      def self.default(visited=[])
        return nil if visited.include?('DevicePools')
        visited = visited + ['DevicePools']
        [
          DevicePool.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DevicePool.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListDevices
    class ListDevices
      def self.default(visited=[])
        {
          devices: Devices.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['devices'] = Devices.stub(stub[:devices]) unless stub[:devices].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Devices
    class Devices
      def self.default(visited=[])
        return nil if visited.include?('Devices')
        visited = visited + ['Devices']
        [
          Device.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Device.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListInstanceProfiles
    class ListInstanceProfiles
      def self.default(visited=[])
        {
          instance_profiles: InstanceProfiles.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['instanceProfiles'] = InstanceProfiles.stub(stub[:instance_profiles]) unless stub[:instance_profiles].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for InstanceProfiles
    class InstanceProfiles
      def self.default(visited=[])
        return nil if visited.include?('InstanceProfiles')
        visited = visited + ['InstanceProfiles']
        [
          InstanceProfile.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << InstanceProfile.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListJobs
    class ListJobs
      def self.default(visited=[])
        {
          jobs: Jobs.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['jobs'] = Jobs.stub(stub[:jobs]) unless stub[:jobs].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Jobs
    class Jobs
      def self.default(visited=[])
        return nil if visited.include?('Jobs')
        visited = visited + ['Jobs']
        [
          Job.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Job.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListNetworkProfiles
    class ListNetworkProfiles
      def self.default(visited=[])
        {
          network_profiles: NetworkProfiles.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['networkProfiles'] = NetworkProfiles.stub(stub[:network_profiles]) unless stub[:network_profiles].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for NetworkProfiles
    class NetworkProfiles
      def self.default(visited=[])
        return nil if visited.include?('NetworkProfiles')
        visited = visited + ['NetworkProfiles']
        [
          NetworkProfile.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << NetworkProfile.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListOfferingPromotions
    class ListOfferingPromotions
      def self.default(visited=[])
        {
          offering_promotions: OfferingPromotions.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['offeringPromotions'] = OfferingPromotions.stub(stub[:offering_promotions]) unless stub[:offering_promotions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for OfferingPromotions
    class OfferingPromotions
      def self.default(visited=[])
        return nil if visited.include?('OfferingPromotions')
        visited = visited + ['OfferingPromotions']
        [
          OfferingPromotion.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << OfferingPromotion.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OfferingPromotion
    class OfferingPromotion
      def self.default(visited=[])
        return nil if visited.include?('OfferingPromotion')
        visited = visited + ['OfferingPromotion']
        {
          id: 'id',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::OfferingPromotion.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for ListOfferingTransactions
    class ListOfferingTransactions
      def self.default(visited=[])
        {
          offering_transactions: OfferingTransactions.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['offeringTransactions'] = OfferingTransactions.stub(stub[:offering_transactions]) unless stub[:offering_transactions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for OfferingTransactions
    class OfferingTransactions
      def self.default(visited=[])
        return nil if visited.include?('OfferingTransactions')
        visited = visited + ['OfferingTransactions']
        [
          OfferingTransaction.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << OfferingTransaction.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OfferingTransaction
    class OfferingTransaction
      def self.default(visited=[])
        return nil if visited.include?('OfferingTransaction')
        visited = visited + ['OfferingTransaction']
        {
          offering_status: OfferingStatus.default(visited),
          transaction_id: 'transaction_id',
          offering_promotion_id: 'offering_promotion_id',
          created_on: Time.now,
          cost: MonetaryAmount.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OfferingTransaction.new
        data = {}
        data['offeringStatus'] = OfferingStatus.stub(stub[:offering_status]) unless stub[:offering_status].nil?
        data['transactionId'] = stub[:transaction_id] unless stub[:transaction_id].nil?
        data['offeringPromotionId'] = stub[:offering_promotion_id] unless stub[:offering_promotion_id].nil?
        data['createdOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_on]).to_i unless stub[:created_on].nil?
        data['cost'] = MonetaryAmount.stub(stub[:cost]) unless stub[:cost].nil?
        data
      end
    end

    # Operation Stubber for ListOfferings
    class ListOfferings
      def self.default(visited=[])
        {
          offerings: Offerings.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['offerings'] = Offerings.stub(stub[:offerings]) unless stub[:offerings].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Offerings
    class Offerings
      def self.default(visited=[])
        return nil if visited.include?('Offerings')
        visited = visited + ['Offerings']
        [
          Offering.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Offering.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListProjects
    class ListProjects
      def self.default(visited=[])
        {
          projects: Projects.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['projects'] = Projects.stub(stub[:projects]) unless stub[:projects].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Projects
    class Projects
      def self.default(visited=[])
        return nil if visited.include?('Projects')
        visited = visited + ['Projects']
        [
          Project.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Project.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListRemoteAccessSessions
    class ListRemoteAccessSessions
      def self.default(visited=[])
        {
          remote_access_sessions: RemoteAccessSessions.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['remoteAccessSessions'] = RemoteAccessSessions.stub(stub[:remote_access_sessions]) unless stub[:remote_access_sessions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RemoteAccessSessions
    class RemoteAccessSessions
      def self.default(visited=[])
        return nil if visited.include?('RemoteAccessSessions')
        visited = visited + ['RemoteAccessSessions']
        [
          RemoteAccessSession.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RemoteAccessSession.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListRuns
    class ListRuns
      def self.default(visited=[])
        {
          runs: Runs.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['runs'] = Runs.stub(stub[:runs]) unless stub[:runs].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Runs
    class Runs
      def self.default(visited=[])
        return nil if visited.include?('Runs')
        visited = visited + ['Runs']
        [
          Run.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Run.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListSamples
    class ListSamples
      def self.default(visited=[])
        {
          samples: Samples.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['samples'] = Samples.stub(stub[:samples]) unless stub[:samples].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Samples
    class Samples
      def self.default(visited=[])
        return nil if visited.include?('Samples')
        visited = visited + ['Samples']
        [
          Sample.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Sample.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Sample
    class Sample
      def self.default(visited=[])
        return nil if visited.include?('Sample')
        visited = visited + ['Sample']
        {
          arn: 'arn',
          type: 'type',
          url: 'url',
        }
      end

      def self.stub(stub)
        stub ||= Types::Sample.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['url'] = stub[:url] unless stub[:url].nil?
        data
      end
    end

    # Operation Stubber for ListSuites
    class ListSuites
      def self.default(visited=[])
        {
          suites: Suites.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['suites'] = Suites.stub(stub[:suites]) unless stub[:suites].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Suites
    class Suites
      def self.default(visited=[])
        return nil if visited.include?('Suites')
        visited = visited + ['Suites']
        [
          Suite.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Suite.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
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

    # Operation Stubber for ListTestGridProjects
    class ListTestGridProjects
      def self.default(visited=[])
        {
          test_grid_projects: TestGridProjects.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['testGridProjects'] = TestGridProjects.stub(stub[:test_grid_projects]) unless stub[:test_grid_projects].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TestGridProjects
    class TestGridProjects
      def self.default(visited=[])
        return nil if visited.include?('TestGridProjects')
        visited = visited + ['TestGridProjects']
        [
          TestGridProject.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TestGridProject.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTestGridSessionActions
    class ListTestGridSessionActions
      def self.default(visited=[])
        {
          actions: TestGridSessionActions.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['actions'] = TestGridSessionActions.stub(stub[:actions]) unless stub[:actions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TestGridSessionActions
    class TestGridSessionActions
      def self.default(visited=[])
        return nil if visited.include?('TestGridSessionActions')
        visited = visited + ['TestGridSessionActions']
        [
          TestGridSessionAction.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TestGridSessionAction.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TestGridSessionAction
    class TestGridSessionAction
      def self.default(visited=[])
        return nil if visited.include?('TestGridSessionAction')
        visited = visited + ['TestGridSessionAction']
        {
          action: 'action',
          started: Time.now,
          duration: 1,
          status_code: 'status_code',
          request_method: 'request_method',
        }
      end

      def self.stub(stub)
        stub ||= Types::TestGridSessionAction.new
        data = {}
        data['action'] = stub[:action] unless stub[:action].nil?
        data['started'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started]).to_i unless stub[:started].nil?
        data['duration'] = stub[:duration] unless stub[:duration].nil?
        data['statusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['requestMethod'] = stub[:request_method] unless stub[:request_method].nil?
        data
      end
    end

    # Operation Stubber for ListTestGridSessionArtifacts
    class ListTestGridSessionArtifacts
      def self.default(visited=[])
        {
          artifacts: TestGridSessionArtifacts.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['artifacts'] = TestGridSessionArtifacts.stub(stub[:artifacts]) unless stub[:artifacts].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TestGridSessionArtifacts
    class TestGridSessionArtifacts
      def self.default(visited=[])
        return nil if visited.include?('TestGridSessionArtifacts')
        visited = visited + ['TestGridSessionArtifacts']
        [
          TestGridSessionArtifact.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TestGridSessionArtifact.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TestGridSessionArtifact
    class TestGridSessionArtifact
      def self.default(visited=[])
        return nil if visited.include?('TestGridSessionArtifact')
        visited = visited + ['TestGridSessionArtifact']
        {
          filename: 'filename',
          type: 'type',
          url: 'url',
        }
      end

      def self.stub(stub)
        stub ||= Types::TestGridSessionArtifact.new
        data = {}
        data['filename'] = stub[:filename] unless stub[:filename].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['url'] = stub[:url] unless stub[:url].nil?
        data
      end
    end

    # Operation Stubber for ListTestGridSessions
    class ListTestGridSessions
      def self.default(visited=[])
        {
          test_grid_sessions: TestGridSessions.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['testGridSessions'] = TestGridSessions.stub(stub[:test_grid_sessions]) unless stub[:test_grid_sessions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TestGridSessions
    class TestGridSessions
      def self.default(visited=[])
        return nil if visited.include?('TestGridSessions')
        visited = visited + ['TestGridSessions']
        [
          TestGridSession.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TestGridSession.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTests
    class ListTests
      def self.default(visited=[])
        {
          tests: Tests.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['tests'] = Tests.stub(stub[:tests]) unless stub[:tests].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Tests
    class Tests
      def self.default(visited=[])
        return nil if visited.include?('Tests')
        visited = visited + ['Tests']
        [
          Test.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Test.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListUniqueProblems
    class ListUniqueProblems
      def self.default(visited=[])
        {
          unique_problems: UniqueProblemsByExecutionResultMap.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['uniqueProblems'] = UniqueProblemsByExecutionResultMap.stub(stub[:unique_problems]) unless stub[:unique_problems].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Map Stubber for UniqueProblemsByExecutionResultMap
    class UniqueProblemsByExecutionResultMap
      def self.default(visited=[])
        return nil if visited.include?('UniqueProblemsByExecutionResultMap')
        visited = visited + ['UniqueProblemsByExecutionResultMap']
        {
          test_key: UniqueProblems.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = UniqueProblems.stub(value) unless value.nil?
        end
        data
      end
    end

    # List Stubber for UniqueProblems
    class UniqueProblems
      def self.default(visited=[])
        return nil if visited.include?('UniqueProblems')
        visited = visited + ['UniqueProblems']
        [
          UniqueProblem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << UniqueProblem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UniqueProblem
    class UniqueProblem
      def self.default(visited=[])
        return nil if visited.include?('UniqueProblem')
        visited = visited + ['UniqueProblem']
        {
          message: 'message',
          problems: Problems.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UniqueProblem.new
        data = {}
        data['message'] = stub[:message] unless stub[:message].nil?
        data['problems'] = Problems.stub(stub[:problems]) unless stub[:problems].nil?
        data
      end
    end

    # List Stubber for Problems
    class Problems
      def self.default(visited=[])
        return nil if visited.include?('Problems')
        visited = visited + ['Problems']
        [
          Problem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Problem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Problem
    class Problem
      def self.default(visited=[])
        return nil if visited.include?('Problem')
        visited = visited + ['Problem']
        {
          run: ProblemDetail.default(visited),
          job: ProblemDetail.default(visited),
          suite: ProblemDetail.default(visited),
          test: ProblemDetail.default(visited),
          device: Device.default(visited),
          result: 'result',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::Problem.new
        data = {}
        data['run'] = ProblemDetail.stub(stub[:run]) unless stub[:run].nil?
        data['job'] = ProblemDetail.stub(stub[:job]) unless stub[:job].nil?
        data['suite'] = ProblemDetail.stub(stub[:suite]) unless stub[:suite].nil?
        data['test'] = ProblemDetail.stub(stub[:test]) unless stub[:test].nil?
        data['device'] = Device.stub(stub[:device]) unless stub[:device].nil?
        data['result'] = stub[:result] unless stub[:result].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for ProblemDetail
    class ProblemDetail
      def self.default(visited=[])
        return nil if visited.include?('ProblemDetail')
        visited = visited + ['ProblemDetail']
        {
          arn: 'arn',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProblemDetail.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for ListUploads
    class ListUploads
      def self.default(visited=[])
        {
          uploads: Uploads.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['uploads'] = Uploads.stub(stub[:uploads]) unless stub[:uploads].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Uploads
    class Uploads
      def self.default(visited=[])
        return nil if visited.include?('Uploads')
        visited = visited + ['Uploads']
        [
          Upload.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Upload.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListVPCEConfigurations
    class ListVPCEConfigurations
      def self.default(visited=[])
        {
          vpce_configurations: VPCEConfigurations.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['vpceConfigurations'] = VPCEConfigurations.stub(stub[:vpce_configurations]) unless stub[:vpce_configurations].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for VPCEConfigurations
    class VPCEConfigurations
      def self.default(visited=[])
        return nil if visited.include?('VPCEConfigurations')
        visited = visited + ['VPCEConfigurations']
        [
          VPCEConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << VPCEConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for PurchaseOffering
    class PurchaseOffering
      def self.default(visited=[])
        {
          offering_transaction: OfferingTransaction.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['offeringTransaction'] = OfferingTransaction.stub(stub[:offering_transaction]) unless stub[:offering_transaction].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RenewOffering
    class RenewOffering
      def self.default(visited=[])
        {
          offering_transaction: OfferingTransaction.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['offeringTransaction'] = OfferingTransaction.stub(stub[:offering_transaction]) unless stub[:offering_transaction].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ScheduleRun
    class ScheduleRun
      def self.default(visited=[])
        {
          run: Run.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['run'] = Run.stub(stub[:run]) unless stub[:run].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopJob
    class StopJob
      def self.default(visited=[])
        {
          job: Job.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['job'] = Job.stub(stub[:job]) unless stub[:job].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopRemoteAccessSession
    class StopRemoteAccessSession
      def self.default(visited=[])
        {
          remote_access_session: RemoteAccessSession.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['remoteAccessSession'] = RemoteAccessSession.stub(stub[:remote_access_session]) unless stub[:remote_access_session].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopRun
    class StopRun
      def self.default(visited=[])
        {
          run: Run.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['run'] = Run.stub(stub[:run]) unless stub[:run].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDeviceInstance
    class UpdateDeviceInstance
      def self.default(visited=[])
        {
          device_instance: DeviceInstance.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['deviceInstance'] = DeviceInstance.stub(stub[:device_instance]) unless stub[:device_instance].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDevicePool
    class UpdateDevicePool
      def self.default(visited=[])
        {
          device_pool: DevicePool.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['devicePool'] = DevicePool.stub(stub[:device_pool]) unless stub[:device_pool].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateInstanceProfile
    class UpdateInstanceProfile
      def self.default(visited=[])
        {
          instance_profile: InstanceProfile.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['instanceProfile'] = InstanceProfile.stub(stub[:instance_profile]) unless stub[:instance_profile].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateNetworkProfile
    class UpdateNetworkProfile
      def self.default(visited=[])
        {
          network_profile: NetworkProfile.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['networkProfile'] = NetworkProfile.stub(stub[:network_profile]) unless stub[:network_profile].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateProject
    class UpdateProject
      def self.default(visited=[])
        {
          project: Project.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['project'] = Project.stub(stub[:project]) unless stub[:project].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateTestGridProject
    class UpdateTestGridProject
      def self.default(visited=[])
        {
          test_grid_project: TestGridProject.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['testGridProject'] = TestGridProject.stub(stub[:test_grid_project]) unless stub[:test_grid_project].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateUpload
    class UpdateUpload
      def self.default(visited=[])
        {
          upload: Upload.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['upload'] = Upload.stub(stub[:upload]) unless stub[:upload].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateVPCEConfiguration
    class UpdateVPCEConfiguration
      def self.default(visited=[])
        {
          vpce_configuration: VPCEConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['vpceConfiguration'] = VPCEConfiguration.stub(stub[:vpce_configuration]) unless stub[:vpce_configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
