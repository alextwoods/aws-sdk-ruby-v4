# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Panorama
  module Stubs

    # Operation Stubber for CreateApplicationInstance
    class CreateApplicationInstance
      def self.default(visited=[])
        {
          application_instance_id: 'application_instance_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ApplicationInstanceId'] = stub[:application_instance_id] unless stub[:application_instance_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateJobForDevices
    class CreateJobForDevices
      def self.default(visited=[])
        {
          jobs: Stubs::JobList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Jobs'] = Stubs::JobList.stub(stub[:jobs]) unless stub[:jobs].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for JobList
    class JobList
      def self.default(visited=[])
        return nil if visited.include?('JobList')
        visited = visited + ['JobList']
        [
          Stubs::Job.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Job.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Job
    class Job
      def self.default(visited=[])
        return nil if visited.include?('Job')
        visited = visited + ['Job']
        {
          job_id: 'job_id',
          device_id: 'device_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::Job.new
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['DeviceId'] = stub[:device_id] unless stub[:device_id].nil?
        data
      end
    end

    # Operation Stubber for CreateNodeFromTemplateJob
    class CreateNodeFromTemplateJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreatePackage
    class CreatePackage
      def self.default(visited=[])
        {
          package_id: 'package_id',
          arn: 'arn',
          storage_location: Stubs::StorageLocation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['PackageId'] = stub[:package_id] unless stub[:package_id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['StorageLocation'] = Stubs::StorageLocation.stub(stub[:storage_location]) unless stub[:storage_location].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for StorageLocation
    class StorageLocation
      def self.default(visited=[])
        return nil if visited.include?('StorageLocation')
        visited = visited + ['StorageLocation']
        {
          bucket: 'bucket',
          repo_prefix_location: 'repo_prefix_location',
          generated_prefix_location: 'generated_prefix_location',
          binary_prefix_location: 'binary_prefix_location',
          manifest_prefix_location: 'manifest_prefix_location',
        }
      end

      def self.stub(stub)
        stub ||= Types::StorageLocation.new
        data = {}
        data['Bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['RepoPrefixLocation'] = stub[:repo_prefix_location] unless stub[:repo_prefix_location].nil?
        data['GeneratedPrefixLocation'] = stub[:generated_prefix_location] unless stub[:generated_prefix_location].nil?
        data['BinaryPrefixLocation'] = stub[:binary_prefix_location] unless stub[:binary_prefix_location].nil?
        data['ManifestPrefixLocation'] = stub[:manifest_prefix_location] unless stub[:manifest_prefix_location].nil?
        data
      end
    end

    # Operation Stubber for CreatePackageImportJob
    class CreatePackageImportJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteDevice
    class DeleteDevice
      def self.default(visited=[])
        {
          device_id: 'device_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DeviceId'] = stub[:device_id] unless stub[:device_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeletePackage
    class DeletePackage
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeregisterPackageVersion
    class DeregisterPackageVersion
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeApplicationInstance
    class DescribeApplicationInstance
      def self.default(visited=[])
        {
          name: 'name',
          description: 'description',
          default_runtime_context_device: 'default_runtime_context_device',
          default_runtime_context_device_name: 'default_runtime_context_device_name',
          application_instance_id_to_replace: 'application_instance_id_to_replace',
          runtime_role_arn: 'runtime_role_arn',
          status: 'status',
          health_status: 'health_status',
          status_description: 'status_description',
          created_time: Time.now,
          last_updated_time: Time.now,
          application_instance_id: 'application_instance_id',
          arn: 'arn',
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DefaultRuntimeContextDevice'] = stub[:default_runtime_context_device] unless stub[:default_runtime_context_device].nil?
        data['DefaultRuntimeContextDeviceName'] = stub[:default_runtime_context_device_name] unless stub[:default_runtime_context_device_name].nil?
        data['ApplicationInstanceIdToReplace'] = stub[:application_instance_id_to_replace] unless stub[:application_instance_id_to_replace].nil?
        data['RuntimeRoleArn'] = stub[:runtime_role_arn] unless stub[:runtime_role_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['HealthStatus'] = stub[:health_status] unless stub[:health_status].nil?
        data['StatusDescription'] = stub[:status_description] unless stub[:status_description].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['ApplicationInstanceId'] = stub[:application_instance_id] unless stub[:application_instance_id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Stubber for DescribeApplicationInstanceDetails
    class DescribeApplicationInstanceDetails
      def self.default(visited=[])
        {
          name: 'name',
          description: 'description',
          default_runtime_context_device: 'default_runtime_context_device',
          manifest_payload: Stubs::ManifestPayload.default(visited),
          manifest_overrides_payload: Stubs::ManifestOverridesPayload.default(visited),
          application_instance_id_to_replace: 'application_instance_id_to_replace',
          created_time: Time.now,
          application_instance_id: 'application_instance_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DefaultRuntimeContextDevice'] = stub[:default_runtime_context_device] unless stub[:default_runtime_context_device].nil?
        data['ManifestPayload'] = Stubs::ManifestPayload.stub(stub[:manifest_payload]) unless stub[:manifest_payload].nil?
        data['ManifestOverridesPayload'] = Stubs::ManifestOverridesPayload.stub(stub[:manifest_overrides_payload]) unless stub[:manifest_overrides_payload].nil?
        data['ApplicationInstanceIdToReplace'] = stub[:application_instance_id_to_replace] unless stub[:application_instance_id_to_replace].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['ApplicationInstanceId'] = stub[:application_instance_id] unless stub[:application_instance_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Union Stubber for ManifestOverridesPayload
    class ManifestOverridesPayload
      def self.default(visited=[])
        return nil if visited.include?('ManifestOverridesPayload')
        visited = visited + ['ManifestOverridesPayload']
        {
          payload_data: 'payload_data',
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::ManifestOverridesPayload::PayloadData
          data['PayloadData'] = stub.__getobj__
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::ManifestOverridesPayload"
        end

        data
      end
    end

    # Union Stubber for ManifestPayload
    class ManifestPayload
      def self.default(visited=[])
        return nil if visited.include?('ManifestPayload')
        visited = visited + ['ManifestPayload']
        {
          payload_data: 'payload_data',
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::ManifestPayload::PayloadData
          data['PayloadData'] = stub.__getobj__
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::ManifestPayload"
        end

        data
      end
    end

    # Operation Stubber for DescribeDevice
    class DescribeDevice
      def self.default(visited=[])
        {
          device_id: 'device_id',
          name: 'name',
          arn: 'arn',
          description: 'description',
          type: 'type',
          device_connection_status: 'device_connection_status',
          created_time: Time.now,
          provisioning_status: 'provisioning_status',
          latest_software: 'latest_software',
          current_software: 'current_software',
          serial_number: 'serial_number',
          tags: Stubs::TagMap.default(visited),
          networking_configuration: Stubs::NetworkPayload.default(visited),
          current_networking_status: Stubs::NetworkStatus.default(visited),
          lease_expiration_time: Time.now,
          alternate_softwares: Stubs::AlternateSoftwares.default(visited),
          latest_alternate_software: 'latest_alternate_software',
          brand: 'brand',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DeviceId'] = stub[:device_id] unless stub[:device_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['DeviceConnectionStatus'] = stub[:device_connection_status] unless stub[:device_connection_status].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['ProvisioningStatus'] = stub[:provisioning_status] unless stub[:provisioning_status].nil?
        data['LatestSoftware'] = stub[:latest_software] unless stub[:latest_software].nil?
        data['CurrentSoftware'] = stub[:current_software] unless stub[:current_software].nil?
        data['SerialNumber'] = stub[:serial_number] unless stub[:serial_number].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['NetworkingConfiguration'] = Stubs::NetworkPayload.stub(stub[:networking_configuration]) unless stub[:networking_configuration].nil?
        data['CurrentNetworkingStatus'] = Stubs::NetworkStatus.stub(stub[:current_networking_status]) unless stub[:current_networking_status].nil?
        data['LeaseExpirationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:lease_expiration_time]).to_i unless stub[:lease_expiration_time].nil?
        data['AlternateSoftwares'] = Stubs::AlternateSoftwares.stub(stub[:alternate_softwares]) unless stub[:alternate_softwares].nil?
        data['LatestAlternateSoftware'] = stub[:latest_alternate_software] unless stub[:latest_alternate_software].nil?
        data['Brand'] = stub[:brand] unless stub[:brand].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AlternateSoftwares
    class AlternateSoftwares
      def self.default(visited=[])
        return nil if visited.include?('AlternateSoftwares')
        visited = visited + ['AlternateSoftwares']
        [
          Stubs::AlternateSoftwareMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AlternateSoftwareMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AlternateSoftwareMetadata
    class AlternateSoftwareMetadata
      def self.default(visited=[])
        return nil if visited.include?('AlternateSoftwareMetadata')
        visited = visited + ['AlternateSoftwareMetadata']
        {
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::AlternateSoftwareMetadata.new
        data = {}
        data['Version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Structure Stubber for NetworkStatus
    class NetworkStatus
      def self.default(visited=[])
        return nil if visited.include?('NetworkStatus')
        visited = visited + ['NetworkStatus']
        {
          ethernet0_status: Stubs::EthernetStatus.default(visited),
          ethernet1_status: Stubs::EthernetStatus.default(visited),
          ntp_status: Stubs::NtpStatus.default(visited),
          last_updated_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkStatus.new
        data = {}
        data['Ethernet0Status'] = Stubs::EthernetStatus.stub(stub[:ethernet0_status]) unless stub[:ethernet0_status].nil?
        data['Ethernet1Status'] = Stubs::EthernetStatus.stub(stub[:ethernet1_status]) unless stub[:ethernet1_status].nil?
        data['NtpStatus'] = Stubs::NtpStatus.stub(stub[:ntp_status]) unless stub[:ntp_status].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data
      end
    end

    # Structure Stubber for NtpStatus
    class NtpStatus
      def self.default(visited=[])
        return nil if visited.include?('NtpStatus')
        visited = visited + ['NtpStatus']
        {
          connection_status: 'connection_status',
          ip_address: 'ip_address',
          ntp_server_name: 'ntp_server_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::NtpStatus.new
        data = {}
        data['ConnectionStatus'] = stub[:connection_status] unless stub[:connection_status].nil?
        data['IpAddress'] = stub[:ip_address] unless stub[:ip_address].nil?
        data['NtpServerName'] = stub[:ntp_server_name] unless stub[:ntp_server_name].nil?
        data
      end
    end

    # Structure Stubber for EthernetStatus
    class EthernetStatus
      def self.default(visited=[])
        return nil if visited.include?('EthernetStatus')
        visited = visited + ['EthernetStatus']
        {
          ip_address: 'ip_address',
          connection_status: 'connection_status',
          hw_address: 'hw_address',
        }
      end

      def self.stub(stub)
        stub ||= Types::EthernetStatus.new
        data = {}
        data['IpAddress'] = stub[:ip_address] unless stub[:ip_address].nil?
        data['ConnectionStatus'] = stub[:connection_status] unless stub[:connection_status].nil?
        data['HwAddress'] = stub[:hw_address] unless stub[:hw_address].nil?
        data
      end
    end

    # Structure Stubber for NetworkPayload
    class NetworkPayload
      def self.default(visited=[])
        return nil if visited.include?('NetworkPayload')
        visited = visited + ['NetworkPayload']
        {
          ethernet0: Stubs::EthernetPayload.default(visited),
          ethernet1: Stubs::EthernetPayload.default(visited),
          ntp: Stubs::NtpPayload.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkPayload.new
        data = {}
        data['Ethernet0'] = Stubs::EthernetPayload.stub(stub[:ethernet0]) unless stub[:ethernet0].nil?
        data['Ethernet1'] = Stubs::EthernetPayload.stub(stub[:ethernet1]) unless stub[:ethernet1].nil?
        data['Ntp'] = Stubs::NtpPayload.stub(stub[:ntp]) unless stub[:ntp].nil?
        data
      end
    end

    # Structure Stubber for NtpPayload
    class NtpPayload
      def self.default(visited=[])
        return nil if visited.include?('NtpPayload')
        visited = visited + ['NtpPayload']
        {
          ntp_servers: Stubs::NtpServerList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NtpPayload.new
        data = {}
        data['NtpServers'] = Stubs::NtpServerList.stub(stub[:ntp_servers]) unless stub[:ntp_servers].nil?
        data
      end
    end

    # List Stubber for NtpServerList
    class NtpServerList
      def self.default(visited=[])
        return nil if visited.include?('NtpServerList')
        visited = visited + ['NtpServerList']
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

    # Structure Stubber for EthernetPayload
    class EthernetPayload
      def self.default(visited=[])
        return nil if visited.include?('EthernetPayload')
        visited = visited + ['EthernetPayload']
        {
          connection_type: 'connection_type',
          static_ip_connection_info: Stubs::StaticIpConnectionInfo.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EthernetPayload.new
        data = {}
        data['ConnectionType'] = stub[:connection_type] unless stub[:connection_type].nil?
        data['StaticIpConnectionInfo'] = Stubs::StaticIpConnectionInfo.stub(stub[:static_ip_connection_info]) unless stub[:static_ip_connection_info].nil?
        data
      end
    end

    # Structure Stubber for StaticIpConnectionInfo
    class StaticIpConnectionInfo
      def self.default(visited=[])
        return nil if visited.include?('StaticIpConnectionInfo')
        visited = visited + ['StaticIpConnectionInfo']
        {
          ip_address: 'ip_address',
          mask: 'mask',
          dns: Stubs::DnsList.default(visited),
          default_gateway: 'default_gateway',
        }
      end

      def self.stub(stub)
        stub ||= Types::StaticIpConnectionInfo.new
        data = {}
        data['IpAddress'] = stub[:ip_address] unless stub[:ip_address].nil?
        data['Mask'] = stub[:mask] unless stub[:mask].nil?
        data['Dns'] = Stubs::DnsList.stub(stub[:dns]) unless stub[:dns].nil?
        data['DefaultGateway'] = stub[:default_gateway] unless stub[:default_gateway].nil?
        data
      end
    end

    # List Stubber for DnsList
    class DnsList
      def self.default(visited=[])
        return nil if visited.include?('DnsList')
        visited = visited + ['DnsList']
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

    # Operation Stubber for DescribeDeviceJob
    class DescribeDeviceJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
          device_id: 'device_id',
          device_arn: 'device_arn',
          device_name: 'device_name',
          device_type: 'device_type',
          image_version: 'image_version',
          status: 'status',
          created_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['DeviceId'] = stub[:device_id] unless stub[:device_id].nil?
        data['DeviceArn'] = stub[:device_arn] unless stub[:device_arn].nil?
        data['DeviceName'] = stub[:device_name] unless stub[:device_name].nil?
        data['DeviceType'] = stub[:device_type] unless stub[:device_type].nil?
        data['ImageVersion'] = stub[:image_version] unless stub[:image_version].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeNode
    class DescribeNode
      def self.default(visited=[])
        {
          node_id: 'node_id',
          name: 'name',
          category: 'category',
          owner_account: 'owner_account',
          package_name: 'package_name',
          package_id: 'package_id',
          package_arn: 'package_arn',
          package_version: 'package_version',
          patch_version: 'patch_version',
          node_interface: Stubs::NodeInterface.default(visited),
          asset_name: 'asset_name',
          description: 'description',
          created_time: Time.now,
          last_updated_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NodeId'] = stub[:node_id] unless stub[:node_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Category'] = stub[:category] unless stub[:category].nil?
        data['OwnerAccount'] = stub[:owner_account] unless stub[:owner_account].nil?
        data['PackageName'] = stub[:package_name] unless stub[:package_name].nil?
        data['PackageId'] = stub[:package_id] unless stub[:package_id].nil?
        data['PackageArn'] = stub[:package_arn] unless stub[:package_arn].nil?
        data['PackageVersion'] = stub[:package_version] unless stub[:package_version].nil?
        data['PatchVersion'] = stub[:patch_version] unless stub[:patch_version].nil?
        data['NodeInterface'] = Stubs::NodeInterface.stub(stub[:node_interface]) unless stub[:node_interface].nil?
        data['AssetName'] = stub[:asset_name] unless stub[:asset_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for NodeInterface
    class NodeInterface
      def self.default(visited=[])
        return nil if visited.include?('NodeInterface')
        visited = visited + ['NodeInterface']
        {
          inputs: Stubs::InputPortList.default(visited),
          outputs: Stubs::OutputPortList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NodeInterface.new
        data = {}
        data['Inputs'] = Stubs::InputPortList.stub(stub[:inputs]) unless stub[:inputs].nil?
        data['Outputs'] = Stubs::OutputPortList.stub(stub[:outputs]) unless stub[:outputs].nil?
        data
      end
    end

    # List Stubber for OutputPortList
    class OutputPortList
      def self.default(visited=[])
        return nil if visited.include?('OutputPortList')
        visited = visited + ['OutputPortList']
        [
          Stubs::NodeOutputPort.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::NodeOutputPort.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NodeOutputPort
    class NodeOutputPort
      def self.default(visited=[])
        return nil if visited.include?('NodeOutputPort')
        visited = visited + ['NodeOutputPort']
        {
          name: 'name',
          description: 'description',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::NodeOutputPort.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # List Stubber for InputPortList
    class InputPortList
      def self.default(visited=[])
        return nil if visited.include?('InputPortList')
        visited = visited + ['InputPortList']
        [
          Stubs::NodeInputPort.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::NodeInputPort.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NodeInputPort
    class NodeInputPort
      def self.default(visited=[])
        return nil if visited.include?('NodeInputPort')
        visited = visited + ['NodeInputPort']
        {
          name: 'name',
          description: 'description',
          type: 'type',
          default_value: 'default_value',
          max_connections: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::NodeInputPort.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['DefaultValue'] = stub[:default_value] unless stub[:default_value].nil?
        data['MaxConnections'] = stub[:max_connections] unless stub[:max_connections].nil?
        data
      end
    end

    # Operation Stubber for DescribeNodeFromTemplateJob
    class DescribeNodeFromTemplateJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
          status: 'status',
          status_message: 'status_message',
          created_time: Time.now,
          last_updated_time: Time.now,
          output_package_name: 'output_package_name',
          output_package_version: 'output_package_version',
          node_name: 'node_name',
          node_description: 'node_description',
          template_type: 'template_type',
          template_parameters: Stubs::TemplateParametersMap.default(visited),
          job_tags: Stubs::JobTagsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['OutputPackageName'] = stub[:output_package_name] unless stub[:output_package_name].nil?
        data['OutputPackageVersion'] = stub[:output_package_version] unless stub[:output_package_version].nil?
        data['NodeName'] = stub[:node_name] unless stub[:node_name].nil?
        data['NodeDescription'] = stub[:node_description] unless stub[:node_description].nil?
        data['TemplateType'] = stub[:template_type] unless stub[:template_type].nil?
        data['TemplateParameters'] = Stubs::TemplateParametersMap.stub(stub[:template_parameters]) unless stub[:template_parameters].nil?
        data['JobTags'] = Stubs::JobTagsList.stub(stub[:job_tags]) unless stub[:job_tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for JobTagsList
    class JobTagsList
      def self.default(visited=[])
        return nil if visited.include?('JobTagsList')
        visited = visited + ['JobTagsList']
        [
          Stubs::JobResourceTags.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::JobResourceTags.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for JobResourceTags
    class JobResourceTags
      def self.default(visited=[])
        return nil if visited.include?('JobResourceTags')
        visited = visited + ['JobResourceTags']
        {
          resource_type: 'resource_type',
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JobResourceTags.new
        data = {}
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Map Stubber for TemplateParametersMap
    class TemplateParametersMap
      def self.default(visited=[])
        return nil if visited.include?('TemplateParametersMap')
        visited = visited + ['TemplateParametersMap']
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

    # Operation Stubber for DescribePackage
    class DescribePackage
      def self.default(visited=[])
        {
          package_id: 'package_id',
          package_name: 'package_name',
          arn: 'arn',
          storage_location: Stubs::StorageLocation.default(visited),
          read_access_principal_arns: Stubs::PrincipalArnsList.default(visited),
          write_access_principal_arns: Stubs::PrincipalArnsList.default(visited),
          created_time: Time.now,
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['PackageId'] = stub[:package_id] unless stub[:package_id].nil?
        data['PackageName'] = stub[:package_name] unless stub[:package_name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['StorageLocation'] = Stubs::StorageLocation.stub(stub[:storage_location]) unless stub[:storage_location].nil?
        data['ReadAccessPrincipalArns'] = Stubs::PrincipalArnsList.stub(stub[:read_access_principal_arns]) unless stub[:read_access_principal_arns].nil?
        data['WriteAccessPrincipalArns'] = Stubs::PrincipalArnsList.stub(stub[:write_access_principal_arns]) unless stub[:write_access_principal_arns].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PrincipalArnsList
    class PrincipalArnsList
      def self.default(visited=[])
        return nil if visited.include?('PrincipalArnsList')
        visited = visited + ['PrincipalArnsList']
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

    # Operation Stubber for DescribePackageImportJob
    class DescribePackageImportJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
          client_token: 'client_token',
          job_type: 'job_type',
          input_config: Stubs::PackageImportJobInputConfig.default(visited),
          output_config: Stubs::PackageImportJobOutputConfig.default(visited),
          output: Stubs::PackageImportJobOutput.default(visited),
          created_time: Time.now,
          last_updated_time: Time.now,
          status: 'status',
          status_message: 'status_message',
          job_tags: Stubs::JobTagsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['ClientToken'] = stub[:client_token] unless stub[:client_token].nil?
        data['JobType'] = stub[:job_type] unless stub[:job_type].nil?
        data['InputConfig'] = Stubs::PackageImportJobInputConfig.stub(stub[:input_config]) unless stub[:input_config].nil?
        data['OutputConfig'] = Stubs::PackageImportJobOutputConfig.stub(stub[:output_config]) unless stub[:output_config].nil?
        data['Output'] = Stubs::PackageImportJobOutput.stub(stub[:output]) unless stub[:output].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['JobTags'] = Stubs::JobTagsList.stub(stub[:job_tags]) unless stub[:job_tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for PackageImportJobOutput
    class PackageImportJobOutput
      def self.default(visited=[])
        return nil if visited.include?('PackageImportJobOutput')
        visited = visited + ['PackageImportJobOutput']
        {
          package_id: 'package_id',
          package_version: 'package_version',
          patch_version: 'patch_version',
          output_s3_location: Stubs::OutPutS3Location.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PackageImportJobOutput.new
        data = {}
        data['PackageId'] = stub[:package_id] unless stub[:package_id].nil?
        data['PackageVersion'] = stub[:package_version] unless stub[:package_version].nil?
        data['PatchVersion'] = stub[:patch_version] unless stub[:patch_version].nil?
        data['OutputS3Location'] = Stubs::OutPutS3Location.stub(stub[:output_s3_location]) unless stub[:output_s3_location].nil?
        data
      end
    end

    # Structure Stubber for OutPutS3Location
    class OutPutS3Location
      def self.default(visited=[])
        return nil if visited.include?('OutPutS3Location')
        visited = visited + ['OutPutS3Location']
        {
          bucket_name: 'bucket_name',
          object_key: 'object_key',
        }
      end

      def self.stub(stub)
        stub ||= Types::OutPutS3Location.new
        data = {}
        data['BucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data['ObjectKey'] = stub[:object_key] unless stub[:object_key].nil?
        data
      end
    end

    # Structure Stubber for PackageImportJobOutputConfig
    class PackageImportJobOutputConfig
      def self.default(visited=[])
        return nil if visited.include?('PackageImportJobOutputConfig')
        visited = visited + ['PackageImportJobOutputConfig']
        {
          package_version_output_config: Stubs::PackageVersionOutputConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PackageImportJobOutputConfig.new
        data = {}
        data['PackageVersionOutputConfig'] = Stubs::PackageVersionOutputConfig.stub(stub[:package_version_output_config]) unless stub[:package_version_output_config].nil?
        data
      end
    end

    # Structure Stubber for PackageVersionOutputConfig
    class PackageVersionOutputConfig
      def self.default(visited=[])
        return nil if visited.include?('PackageVersionOutputConfig')
        visited = visited + ['PackageVersionOutputConfig']
        {
          package_name: 'package_name',
          package_version: 'package_version',
          mark_latest: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::PackageVersionOutputConfig.new
        data = {}
        data['PackageName'] = stub[:package_name] unless stub[:package_name].nil?
        data['PackageVersion'] = stub[:package_version] unless stub[:package_version].nil?
        data['MarkLatest'] = stub[:mark_latest] unless stub[:mark_latest].nil?
        data
      end
    end

    # Structure Stubber for PackageImportJobInputConfig
    class PackageImportJobInputConfig
      def self.default(visited=[])
        return nil if visited.include?('PackageImportJobInputConfig')
        visited = visited + ['PackageImportJobInputConfig']
        {
          package_version_input_config: Stubs::PackageVersionInputConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PackageImportJobInputConfig.new
        data = {}
        data['PackageVersionInputConfig'] = Stubs::PackageVersionInputConfig.stub(stub[:package_version_input_config]) unless stub[:package_version_input_config].nil?
        data
      end
    end

    # Structure Stubber for PackageVersionInputConfig
    class PackageVersionInputConfig
      def self.default(visited=[])
        return nil if visited.include?('PackageVersionInputConfig')
        visited = visited + ['PackageVersionInputConfig']
        {
          s3_location: Stubs::S3Location.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PackageVersionInputConfig.new
        data = {}
        data['S3Location'] = Stubs::S3Location.stub(stub[:s3_location]) unless stub[:s3_location].nil?
        data
      end
    end

    # Structure Stubber for S3Location
    class S3Location
      def self.default(visited=[])
        return nil if visited.include?('S3Location')
        visited = visited + ['S3Location']
        {
          region: 'region',
          bucket_name: 'bucket_name',
          object_key: 'object_key',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Location.new
        data = {}
        data['Region'] = stub[:region] unless stub[:region].nil?
        data['BucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data['ObjectKey'] = stub[:object_key] unless stub[:object_key].nil?
        data
      end
    end

    # Operation Stubber for DescribePackageVersion
    class DescribePackageVersion
      def self.default(visited=[])
        {
          owner_account: 'owner_account',
          package_id: 'package_id',
          package_arn: 'package_arn',
          package_name: 'package_name',
          package_version: 'package_version',
          patch_version: 'patch_version',
          is_latest_patch: false,
          status: 'status',
          status_description: 'status_description',
          registered_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['OwnerAccount'] = stub[:owner_account] unless stub[:owner_account].nil?
        data['PackageId'] = stub[:package_id] unless stub[:package_id].nil?
        data['PackageArn'] = stub[:package_arn] unless stub[:package_arn].nil?
        data['PackageName'] = stub[:package_name] unless stub[:package_name].nil?
        data['PackageVersion'] = stub[:package_version] unless stub[:package_version].nil?
        data['PatchVersion'] = stub[:patch_version] unless stub[:patch_version].nil?
        data['IsLatestPatch'] = stub[:is_latest_patch] unless stub[:is_latest_patch].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusDescription'] = stub[:status_description] unless stub[:status_description].nil?
        data['RegisteredTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:registered_time]).to_i unless stub[:registered_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListApplicationInstanceDependencies
    class ListApplicationInstanceDependencies
      def self.default(visited=[])
        {
          package_objects: Stubs::PackageObjects.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['PackageObjects'] = Stubs::PackageObjects.stub(stub[:package_objects]) unless stub[:package_objects].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PackageObjects
    class PackageObjects
      def self.default(visited=[])
        return nil if visited.include?('PackageObjects')
        visited = visited + ['PackageObjects']
        [
          Stubs::PackageObject.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PackageObject.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PackageObject
    class PackageObject
      def self.default(visited=[])
        return nil if visited.include?('PackageObject')
        visited = visited + ['PackageObject']
        {
          name: 'name',
          package_version: 'package_version',
          patch_version: 'patch_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::PackageObject.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['PackageVersion'] = stub[:package_version] unless stub[:package_version].nil?
        data['PatchVersion'] = stub[:patch_version] unless stub[:patch_version].nil?
        data
      end
    end

    # Operation Stubber for ListApplicationInstanceNodeInstances
    class ListApplicationInstanceNodeInstances
      def self.default(visited=[])
        {
          node_instances: Stubs::NodeInstances.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NodeInstances'] = Stubs::NodeInstances.stub(stub[:node_instances]) unless stub[:node_instances].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for NodeInstances
    class NodeInstances
      def self.default(visited=[])
        return nil if visited.include?('NodeInstances')
        visited = visited + ['NodeInstances']
        [
          Stubs::NodeInstance.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::NodeInstance.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NodeInstance
    class NodeInstance
      def self.default(visited=[])
        return nil if visited.include?('NodeInstance')
        visited = visited + ['NodeInstance']
        {
          node_instance_id: 'node_instance_id',
          node_id: 'node_id',
          package_name: 'package_name',
          package_version: 'package_version',
          package_patch_version: 'package_patch_version',
          node_name: 'node_name',
          current_status: 'current_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::NodeInstance.new
        data = {}
        data['NodeInstanceId'] = stub[:node_instance_id] unless stub[:node_instance_id].nil?
        data['NodeId'] = stub[:node_id] unless stub[:node_id].nil?
        data['PackageName'] = stub[:package_name] unless stub[:package_name].nil?
        data['PackageVersion'] = stub[:package_version] unless stub[:package_version].nil?
        data['PackagePatchVersion'] = stub[:package_patch_version] unless stub[:package_patch_version].nil?
        data['NodeName'] = stub[:node_name] unless stub[:node_name].nil?
        data['CurrentStatus'] = stub[:current_status] unless stub[:current_status].nil?
        data
      end
    end

    # Operation Stubber for ListApplicationInstances
    class ListApplicationInstances
      def self.default(visited=[])
        {
          application_instances: Stubs::ApplicationInstances.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ApplicationInstances'] = Stubs::ApplicationInstances.stub(stub[:application_instances]) unless stub[:application_instances].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ApplicationInstances
    class ApplicationInstances
      def self.default(visited=[])
        return nil if visited.include?('ApplicationInstances')
        visited = visited + ['ApplicationInstances']
        [
          Stubs::ApplicationInstance.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ApplicationInstance.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ApplicationInstance
    class ApplicationInstance
      def self.default(visited=[])
        return nil if visited.include?('ApplicationInstance')
        visited = visited + ['ApplicationInstance']
        {
          name: 'name',
          application_instance_id: 'application_instance_id',
          default_runtime_context_device: 'default_runtime_context_device',
          default_runtime_context_device_name: 'default_runtime_context_device_name',
          description: 'description',
          status: 'status',
          health_status: 'health_status',
          status_description: 'status_description',
          created_time: Time.now,
          arn: 'arn',
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationInstance.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ApplicationInstanceId'] = stub[:application_instance_id] unless stub[:application_instance_id].nil?
        data['DefaultRuntimeContextDevice'] = stub[:default_runtime_context_device] unless stub[:default_runtime_context_device].nil?
        data['DefaultRuntimeContextDeviceName'] = stub[:default_runtime_context_device_name] unless stub[:default_runtime_context_device_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['HealthStatus'] = stub[:health_status] unless stub[:health_status].nil?
        data['StatusDescription'] = stub[:status_description] unless stub[:status_description].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListDevices
    class ListDevices
      def self.default(visited=[])
        {
          devices: Stubs::DeviceList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Devices'] = Stubs::DeviceList.stub(stub[:devices]) unless stub[:devices].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DeviceList
    class DeviceList
      def self.default(visited=[])
        return nil if visited.include?('DeviceList')
        visited = visited + ['DeviceList']
        [
          Stubs::Device.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Device.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Device
    class Device
      def self.default(visited=[])
        return nil if visited.include?('Device')
        visited = visited + ['Device']
        {
          device_id: 'device_id',
          name: 'name',
          created_time: Time.now,
          provisioning_status: 'provisioning_status',
          last_updated_time: Time.now,
          lease_expiration_time: Time.now,
          brand: 'brand',
        }
      end

      def self.stub(stub)
        stub ||= Types::Device.new
        data = {}
        data['DeviceId'] = stub[:device_id] unless stub[:device_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['ProvisioningStatus'] = stub[:provisioning_status] unless stub[:provisioning_status].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data['LeaseExpirationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:lease_expiration_time]).to_i unless stub[:lease_expiration_time].nil?
        data['Brand'] = stub[:brand] unless stub[:brand].nil?
        data
      end
    end

    # Operation Stubber for ListDevicesJobs
    class ListDevicesJobs
      def self.default(visited=[])
        {
          device_jobs: Stubs::DeviceJobList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DeviceJobs'] = Stubs::DeviceJobList.stub(stub[:device_jobs]) unless stub[:device_jobs].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DeviceJobList
    class DeviceJobList
      def self.default(visited=[])
        return nil if visited.include?('DeviceJobList')
        visited = visited + ['DeviceJobList']
        [
          Stubs::DeviceJob.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DeviceJob.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DeviceJob
    class DeviceJob
      def self.default(visited=[])
        return nil if visited.include?('DeviceJob')
        visited = visited + ['DeviceJob']
        {
          device_name: 'device_name',
          device_id: 'device_id',
          job_id: 'job_id',
          created_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DeviceJob.new
        data = {}
        data['DeviceName'] = stub[:device_name] unless stub[:device_name].nil?
        data['DeviceId'] = stub[:device_id] unless stub[:device_id].nil?
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data
      end
    end

    # Operation Stubber for ListNodeFromTemplateJobs
    class ListNodeFromTemplateJobs
      def self.default(visited=[])
        {
          node_from_template_jobs: Stubs::NodeFromTemplateJobList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NodeFromTemplateJobs'] = Stubs::NodeFromTemplateJobList.stub(stub[:node_from_template_jobs]) unless stub[:node_from_template_jobs].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for NodeFromTemplateJobList
    class NodeFromTemplateJobList
      def self.default(visited=[])
        return nil if visited.include?('NodeFromTemplateJobList')
        visited = visited + ['NodeFromTemplateJobList']
        [
          Stubs::NodeFromTemplateJob.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::NodeFromTemplateJob.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NodeFromTemplateJob
    class NodeFromTemplateJob
      def self.default(visited=[])
        return nil if visited.include?('NodeFromTemplateJob')
        visited = visited + ['NodeFromTemplateJob']
        {
          job_id: 'job_id',
          template_type: 'template_type',
          status: 'status',
          status_message: 'status_message',
          created_time: Time.now,
          node_name: 'node_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::NodeFromTemplateJob.new
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['TemplateType'] = stub[:template_type] unless stub[:template_type].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['NodeName'] = stub[:node_name] unless stub[:node_name].nil?
        data
      end
    end

    # Operation Stubber for ListNodes
    class ListNodes
      def self.default(visited=[])
        {
          nodes: Stubs::NodesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Nodes'] = Stubs::NodesList.stub(stub[:nodes]) unless stub[:nodes].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for NodesList
    class NodesList
      def self.default(visited=[])
        return nil if visited.include?('NodesList')
        visited = visited + ['NodesList']
        [
          Stubs::Node.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Node.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Node
    class Node
      def self.default(visited=[])
        return nil if visited.include?('Node')
        visited = visited + ['Node']
        {
          node_id: 'node_id',
          name: 'name',
          category: 'category',
          owner_account: 'owner_account',
          package_name: 'package_name',
          package_id: 'package_id',
          package_arn: 'package_arn',
          package_version: 'package_version',
          patch_version: 'patch_version',
          description: 'description',
          created_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Node.new
        data = {}
        data['NodeId'] = stub[:node_id] unless stub[:node_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Category'] = stub[:category] unless stub[:category].nil?
        data['OwnerAccount'] = stub[:owner_account] unless stub[:owner_account].nil?
        data['PackageName'] = stub[:package_name] unless stub[:package_name].nil?
        data['PackageId'] = stub[:package_id] unless stub[:package_id].nil?
        data['PackageArn'] = stub[:package_arn] unless stub[:package_arn].nil?
        data['PackageVersion'] = stub[:package_version] unless stub[:package_version].nil?
        data['PatchVersion'] = stub[:patch_version] unless stub[:patch_version].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data
      end
    end

    # Operation Stubber for ListPackageImportJobs
    class ListPackageImportJobs
      def self.default(visited=[])
        {
          package_import_jobs: Stubs::PackageImportJobList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['PackageImportJobs'] = Stubs::PackageImportJobList.stub(stub[:package_import_jobs]) unless stub[:package_import_jobs].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PackageImportJobList
    class PackageImportJobList
      def self.default(visited=[])
        return nil if visited.include?('PackageImportJobList')
        visited = visited + ['PackageImportJobList']
        [
          Stubs::PackageImportJob.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PackageImportJob.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PackageImportJob
    class PackageImportJob
      def self.default(visited=[])
        return nil if visited.include?('PackageImportJob')
        visited = visited + ['PackageImportJob']
        {
          job_id: 'job_id',
          job_type: 'job_type',
          status: 'status',
          status_message: 'status_message',
          created_time: Time.now,
          last_updated_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::PackageImportJob.new
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobType'] = stub[:job_type] unless stub[:job_type].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data
      end
    end

    # Operation Stubber for ListPackages
    class ListPackages
      def self.default(visited=[])
        {
          packages: Stubs::PackageList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Packages'] = Stubs::PackageList.stub(stub[:packages]) unless stub[:packages].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PackageList
    class PackageList
      def self.default(visited=[])
        return nil if visited.include?('PackageList')
        visited = visited + ['PackageList']
        [
          Stubs::PackageListItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PackageListItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PackageListItem
    class PackageListItem
      def self.default(visited=[])
        return nil if visited.include?('PackageListItem')
        visited = visited + ['PackageListItem']
        {
          package_id: 'package_id',
          package_name: 'package_name',
          arn: 'arn',
          created_time: Time.now,
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PackageListItem.new
        data = {}
        data['PackageId'] = stub[:package_id] unless stub[:package_id].nil?
        data['PackageName'] = stub[:package_name] unless stub[:package_name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ProvisionDevice
    class ProvisionDevice
      def self.default(visited=[])
        {
          device_id: 'device_id',
          arn: 'arn',
          status: 'status',
          certificates: 'certificates',
          iot_thing_name: 'iot_thing_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DeviceId'] = stub[:device_id] unless stub[:device_id].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Certificates'] = Base64::encode64(stub[:certificates]) unless stub[:certificates].nil?
        data['IotThingName'] = stub[:iot_thing_name] unless stub[:iot_thing_name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RegisterPackageVersion
    class RegisterPackageVersion
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for RemoveApplicationInstance
    class RemoveApplicationInstance
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
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

    # Operation Stubber for UpdateDeviceMetadata
    class UpdateDeviceMetadata
      def self.default(visited=[])
        {
          device_id: 'device_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DeviceId'] = stub[:device_id] unless stub[:device_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
