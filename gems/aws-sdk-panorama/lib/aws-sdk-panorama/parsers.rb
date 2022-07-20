# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Panorama
  module Parsers

    # Operation Parser for CreateApplicationInstance
    class CreateApplicationInstance
      def self.parse(http_resp)
        data = Types::CreateApplicationInstanceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application_instance_id = map['ApplicationInstanceId']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data.quota_code = map['QuotaCode']
        data.service_code = map['ServiceCode']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.reason = map['Reason']
        data.error_id = map['ErrorId']
        data.error_arguments = (ValidationExceptionErrorArgumentList.parse(map['ErrorArguments']) unless map['ErrorArguments'].nil?)
        data.fields = (ValidationExceptionFieldList.parse(map['Fields']) unless map['Fields'].nil?)
        data
      end
    end

    class ValidationExceptionFieldList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ValidationExceptionField.parse(value) unless value.nil?
        end
        data
      end
    end

    class ValidationExceptionField
      def self.parse(map)
        data = Types::ValidationExceptionField.new
        data.name = map['Name']
        data.message = map['Message']
        return data
      end
    end

    class ValidationExceptionErrorArgumentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ValidationExceptionErrorArgument.parse(value) unless value.nil?
        end
        data
      end
    end

    class ValidationExceptionErrorArgument
      def self.parse(map)
        data = Types::ValidationExceptionErrorArgument.new
        data.name = map['Name']
        data.value = map['Value']
        return data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        data.retry_after_seconds = http_resp.headers['Retry-After'].to_i unless http_resp.headers['Retry-After'].nil?
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateJobForDevices
    class CreateJobForDevices
      def self.parse(http_resp)
        data = Types::CreateJobForDevicesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.jobs = (JobList.parse(map['Jobs']) unless map['Jobs'].nil?)
        data
      end
    end

    class JobList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Job.parse(value) unless value.nil?
        end
        data
      end
    end

    class Job
      def self.parse(map)
        data = Types::Job.new
        data.job_id = map['JobId']
        data.device_id = map['DeviceId']
        return data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data.error_id = map['ErrorId']
        data.error_arguments = (ConflictExceptionErrorArgumentList.parse(map['ErrorArguments']) unless map['ErrorArguments'].nil?)
        data
      end
    end

    class ConflictExceptionErrorArgumentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ConflictExceptionErrorArgument.parse(value) unless value.nil?
        end
        data
      end
    end

    class ConflictExceptionErrorArgument
      def self.parse(map)
        data = Types::ConflictExceptionErrorArgument.new
        data.name = map['Name']
        data.value = map['Value']
        return data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data
      end
    end

    # Operation Parser for CreateNodeFromTemplateJob
    class CreateNodeFromTemplateJob
      def self.parse(http_resp)
        data = Types::CreateNodeFromTemplateJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_id = map['JobId']
        data
      end
    end

    # Operation Parser for CreatePackage
    class CreatePackage
      def self.parse(http_resp)
        data = Types::CreatePackageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.package_id = map['PackageId']
        data.arn = map['Arn']
        data.storage_location = (StorageLocation.parse(map['StorageLocation']) unless map['StorageLocation'].nil?)
        data
      end
    end

    class StorageLocation
      def self.parse(map)
        data = Types::StorageLocation.new
        data.bucket = map['Bucket']
        data.repo_prefix_location = map['RepoPrefixLocation']
        data.generated_prefix_location = map['GeneratedPrefixLocation']
        data.binary_prefix_location = map['BinaryPrefixLocation']
        data.manifest_prefix_location = map['ManifestPrefixLocation']
        return data
      end
    end

    # Operation Parser for CreatePackageImportJob
    class CreatePackageImportJob
      def self.parse(http_resp)
        data = Types::CreatePackageImportJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_id = map['JobId']
        data
      end
    end

    # Operation Parser for DeleteDevice
    class DeleteDevice
      def self.parse(http_resp)
        data = Types::DeleteDeviceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.device_id = map['DeviceId']
        data
      end
    end

    # Operation Parser for DeletePackage
    class DeletePackage
      def self.parse(http_resp)
        data = Types::DeletePackageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeregisterPackageVersion
    class DeregisterPackageVersion
      def self.parse(http_resp)
        data = Types::DeregisterPackageVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeApplicationInstance
    class DescribeApplicationInstance
      def self.parse(http_resp)
        data = Types::DescribeApplicationInstanceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data.description = map['Description']
        data.default_runtime_context_device = map['DefaultRuntimeContextDevice']
        data.default_runtime_context_device_name = map['DefaultRuntimeContextDeviceName']
        data.application_instance_id_to_replace = map['ApplicationInstanceIdToReplace']
        data.runtime_role_arn = map['RuntimeRoleArn']
        data.status = map['Status']
        data.health_status = map['HealthStatus']
        data.status_description = map['StatusDescription']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data.application_instance_id = map['ApplicationInstanceId']
        data.arn = map['Arn']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
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

    # Operation Parser for DescribeApplicationInstanceDetails
    class DescribeApplicationInstanceDetails
      def self.parse(http_resp)
        data = Types::DescribeApplicationInstanceDetailsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data.description = map['Description']
        data.default_runtime_context_device = map['DefaultRuntimeContextDevice']
        data.manifest_payload = (ManifestPayload.parse(map['ManifestPayload']) unless map['ManifestPayload'].nil?)
        data.manifest_overrides_payload = (ManifestOverridesPayload.parse(map['ManifestOverridesPayload']) unless map['ManifestOverridesPayload'].nil?)
        data.application_instance_id_to_replace = map['ApplicationInstanceIdToReplace']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.application_instance_id = map['ApplicationInstanceId']
        data
      end
    end

    class ManifestOverridesPayload
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'PayloadData'
          value = value
          Types::ManifestOverridesPayload::PayloadData.new(value) if value
        else
          Types::ManifestOverridesPayload::Unknown.new({name: key, value: value})
        end
      end
    end

    class ManifestPayload
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'PayloadData'
          value = value
          Types::ManifestPayload::PayloadData.new(value) if value
        else
          Types::ManifestPayload::Unknown.new({name: key, value: value})
        end
      end
    end

    # Operation Parser for DescribeDevice
    class DescribeDevice
      def self.parse(http_resp)
        data = Types::DescribeDeviceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.device_id = map['DeviceId']
        data.name = map['Name']
        data.arn = map['Arn']
        data.description = map['Description']
        data.type = map['Type']
        data.device_connection_status = map['DeviceConnectionStatus']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.provisioning_status = map['ProvisioningStatus']
        data.latest_software = map['LatestSoftware']
        data.current_software = map['CurrentSoftware']
        data.serial_number = map['SerialNumber']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.networking_configuration = (NetworkPayload.parse(map['NetworkingConfiguration']) unless map['NetworkingConfiguration'].nil?)
        data.current_networking_status = (NetworkStatus.parse(map['CurrentNetworkingStatus']) unless map['CurrentNetworkingStatus'].nil?)
        data.lease_expiration_time = Time.at(map['LeaseExpirationTime'].to_i) if map['LeaseExpirationTime']
        data.alternate_softwares = (AlternateSoftwares.parse(map['AlternateSoftwares']) unless map['AlternateSoftwares'].nil?)
        data.latest_alternate_software = map['LatestAlternateSoftware']
        data.brand = map['Brand']
        data
      end
    end

    class AlternateSoftwares
      def self.parse(list)
        data = []
        list.map do |value|
          data << AlternateSoftwareMetadata.parse(value) unless value.nil?
        end
        data
      end
    end

    class AlternateSoftwareMetadata
      def self.parse(map)
        data = Types::AlternateSoftwareMetadata.new
        data.version = map['Version']
        return data
      end
    end

    class NetworkStatus
      def self.parse(map)
        data = Types::NetworkStatus.new
        data.ethernet0_status = (EthernetStatus.parse(map['Ethernet0Status']) unless map['Ethernet0Status'].nil?)
        data.ethernet1_status = (EthernetStatus.parse(map['Ethernet1Status']) unless map['Ethernet1Status'].nil?)
        data.ntp_status = (NtpStatus.parse(map['NtpStatus']) unless map['NtpStatus'].nil?)
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        return data
      end
    end

    class NtpStatus
      def self.parse(map)
        data = Types::NtpStatus.new
        data.connection_status = map['ConnectionStatus']
        data.ip_address = map['IpAddress']
        data.ntp_server_name = map['NtpServerName']
        return data
      end
    end

    class EthernetStatus
      def self.parse(map)
        data = Types::EthernetStatus.new
        data.ip_address = map['IpAddress']
        data.connection_status = map['ConnectionStatus']
        data.hw_address = map['HwAddress']
        return data
      end
    end

    class NetworkPayload
      def self.parse(map)
        data = Types::NetworkPayload.new
        data.ethernet0 = (EthernetPayload.parse(map['Ethernet0']) unless map['Ethernet0'].nil?)
        data.ethernet1 = (EthernetPayload.parse(map['Ethernet1']) unless map['Ethernet1'].nil?)
        data.ntp = (NtpPayload.parse(map['Ntp']) unless map['Ntp'].nil?)
        return data
      end
    end

    class NtpPayload
      def self.parse(map)
        data = Types::NtpPayload.new
        data.ntp_servers = (NtpServerList.parse(map['NtpServers']) unless map['NtpServers'].nil?)
        return data
      end
    end

    class NtpServerList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class EthernetPayload
      def self.parse(map)
        data = Types::EthernetPayload.new
        data.connection_type = map['ConnectionType']
        data.static_ip_connection_info = (StaticIpConnectionInfo.parse(map['StaticIpConnectionInfo']) unless map['StaticIpConnectionInfo'].nil?)
        return data
      end
    end

    class StaticIpConnectionInfo
      def self.parse(map)
        data = Types::StaticIpConnectionInfo.new
        data.ip_address = map['IpAddress']
        data.mask = map['Mask']
        data.dns = (DnsList.parse(map['Dns']) unless map['Dns'].nil?)
        data.default_gateway = map['DefaultGateway']
        return data
      end
    end

    class DnsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeDeviceJob
    class DescribeDeviceJob
      def self.parse(http_resp)
        data = Types::DescribeDeviceJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_id = map['JobId']
        data.device_id = map['DeviceId']
        data.device_arn = map['DeviceArn']
        data.device_name = map['DeviceName']
        data.device_type = map['DeviceType']
        data.image_version = map['ImageVersion']
        data.status = map['Status']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data
      end
    end

    # Operation Parser for DescribeNode
    class DescribeNode
      def self.parse(http_resp)
        data = Types::DescribeNodeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.node_id = map['NodeId']
        data.name = map['Name']
        data.category = map['Category']
        data.owner_account = map['OwnerAccount']
        data.package_name = map['PackageName']
        data.package_id = map['PackageId']
        data.package_arn = map['PackageArn']
        data.package_version = map['PackageVersion']
        data.patch_version = map['PatchVersion']
        data.node_interface = (NodeInterface.parse(map['NodeInterface']) unless map['NodeInterface'].nil?)
        data.asset_name = map['AssetName']
        data.description = map['Description']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data
      end
    end

    class NodeInterface
      def self.parse(map)
        data = Types::NodeInterface.new
        data.inputs = (InputPortList.parse(map['Inputs']) unless map['Inputs'].nil?)
        data.outputs = (OutputPortList.parse(map['Outputs']) unless map['Outputs'].nil?)
        return data
      end
    end

    class OutputPortList
      def self.parse(list)
        data = []
        list.map do |value|
          data << NodeOutputPort.parse(value) unless value.nil?
        end
        data
      end
    end

    class NodeOutputPort
      def self.parse(map)
        data = Types::NodeOutputPort.new
        data.name = map['Name']
        data.description = map['Description']
        data.type = map['Type']
        return data
      end
    end

    class InputPortList
      def self.parse(list)
        data = []
        list.map do |value|
          data << NodeInputPort.parse(value) unless value.nil?
        end
        data
      end
    end

    class NodeInputPort
      def self.parse(map)
        data = Types::NodeInputPort.new
        data.name = map['Name']
        data.description = map['Description']
        data.type = map['Type']
        data.default_value = map['DefaultValue']
        data.max_connections = map['MaxConnections']
        return data
      end
    end

    # Operation Parser for DescribeNodeFromTemplateJob
    class DescribeNodeFromTemplateJob
      def self.parse(http_resp)
        data = Types::DescribeNodeFromTemplateJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_id = map['JobId']
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data.output_package_name = map['OutputPackageName']
        data.output_package_version = map['OutputPackageVersion']
        data.node_name = map['NodeName']
        data.node_description = map['NodeDescription']
        data.template_type = map['TemplateType']
        data.template_parameters = (TemplateParametersMap.parse(map['TemplateParameters']) unless map['TemplateParameters'].nil?)
        data.job_tags = (JobTagsList.parse(map['JobTags']) unless map['JobTags'].nil?)
        data
      end
    end

    class JobTagsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << JobResourceTags.parse(value) unless value.nil?
        end
        data
      end
    end

    class JobResourceTags
      def self.parse(map)
        data = Types::JobResourceTags.new
        data.resource_type = map['ResourceType']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class TemplateParametersMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribePackage
    class DescribePackage
      def self.parse(http_resp)
        data = Types::DescribePackageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.package_id = map['PackageId']
        data.package_name = map['PackageName']
        data.arn = map['Arn']
        data.storage_location = (StorageLocation.parse(map['StorageLocation']) unless map['StorageLocation'].nil?)
        data.read_access_principal_arns = (PrincipalArnsList.parse(map['ReadAccessPrincipalArns']) unless map['ReadAccessPrincipalArns'].nil?)
        data.write_access_principal_arns = (PrincipalArnsList.parse(map['WriteAccessPrincipalArns']) unless map['WriteAccessPrincipalArns'].nil?)
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class PrincipalArnsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribePackageImportJob
    class DescribePackageImportJob
      def self.parse(http_resp)
        data = Types::DescribePackageImportJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_id = map['JobId']
        data.client_token = map['ClientToken']
        data.job_type = map['JobType']
        data.input_config = (PackageImportJobInputConfig.parse(map['InputConfig']) unless map['InputConfig'].nil?)
        data.output_config = (PackageImportJobOutputConfig.parse(map['OutputConfig']) unless map['OutputConfig'].nil?)
        data.output = (PackageImportJobOutput.parse(map['Output']) unless map['Output'].nil?)
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        data.job_tags = (JobTagsList.parse(map['JobTags']) unless map['JobTags'].nil?)
        data
      end
    end

    class PackageImportJobOutput
      def self.parse(map)
        data = Types::PackageImportJobOutput.new
        data.package_id = map['PackageId']
        data.package_version = map['PackageVersion']
        data.patch_version = map['PatchVersion']
        data.output_s3_location = (OutPutS3Location.parse(map['OutputS3Location']) unless map['OutputS3Location'].nil?)
        return data
      end
    end

    class OutPutS3Location
      def self.parse(map)
        data = Types::OutPutS3Location.new
        data.bucket_name = map['BucketName']
        data.object_key = map['ObjectKey']
        return data
      end
    end

    class PackageImportJobOutputConfig
      def self.parse(map)
        data = Types::PackageImportJobOutputConfig.new
        data.package_version_output_config = (PackageVersionOutputConfig.parse(map['PackageVersionOutputConfig']) unless map['PackageVersionOutputConfig'].nil?)
        return data
      end
    end

    class PackageVersionOutputConfig
      def self.parse(map)
        data = Types::PackageVersionOutputConfig.new
        data.package_name = map['PackageName']
        data.package_version = map['PackageVersion']
        data.mark_latest = map['MarkLatest']
        return data
      end
    end

    class PackageImportJobInputConfig
      def self.parse(map)
        data = Types::PackageImportJobInputConfig.new
        data.package_version_input_config = (PackageVersionInputConfig.parse(map['PackageVersionInputConfig']) unless map['PackageVersionInputConfig'].nil?)
        return data
      end
    end

    class PackageVersionInputConfig
      def self.parse(map)
        data = Types::PackageVersionInputConfig.new
        data.s3_location = (S3Location.parse(map['S3Location']) unless map['S3Location'].nil?)
        return data
      end
    end

    class S3Location
      def self.parse(map)
        data = Types::S3Location.new
        data.region = map['Region']
        data.bucket_name = map['BucketName']
        data.object_key = map['ObjectKey']
        return data
      end
    end

    # Operation Parser for DescribePackageVersion
    class DescribePackageVersion
      def self.parse(http_resp)
        data = Types::DescribePackageVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.owner_account = map['OwnerAccount']
        data.package_id = map['PackageId']
        data.package_arn = map['PackageArn']
        data.package_name = map['PackageName']
        data.package_version = map['PackageVersion']
        data.patch_version = map['PatchVersion']
        data.is_latest_patch = map['IsLatestPatch']
        data.status = map['Status']
        data.status_description = map['StatusDescription']
        data.registered_time = Time.at(map['RegisteredTime'].to_i) if map['RegisteredTime']
        data
      end
    end

    # Operation Parser for ListApplicationInstanceDependencies
    class ListApplicationInstanceDependencies
      def self.parse(http_resp)
        data = Types::ListApplicationInstanceDependenciesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.package_objects = (PackageObjects.parse(map['PackageObjects']) unless map['PackageObjects'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PackageObjects
      def self.parse(list)
        data = []
        list.map do |value|
          data << PackageObject.parse(value) unless value.nil?
        end
        data
      end
    end

    class PackageObject
      def self.parse(map)
        data = Types::PackageObject.new
        data.name = map['Name']
        data.package_version = map['PackageVersion']
        data.patch_version = map['PatchVersion']
        return data
      end
    end

    # Operation Parser for ListApplicationInstanceNodeInstances
    class ListApplicationInstanceNodeInstances
      def self.parse(http_resp)
        data = Types::ListApplicationInstanceNodeInstancesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.node_instances = (NodeInstances.parse(map['NodeInstances']) unless map['NodeInstances'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class NodeInstances
      def self.parse(list)
        data = []
        list.map do |value|
          data << NodeInstance.parse(value) unless value.nil?
        end
        data
      end
    end

    class NodeInstance
      def self.parse(map)
        data = Types::NodeInstance.new
        data.node_instance_id = map['NodeInstanceId']
        data.node_id = map['NodeId']
        data.package_name = map['PackageName']
        data.package_version = map['PackageVersion']
        data.package_patch_version = map['PackagePatchVersion']
        data.node_name = map['NodeName']
        data.current_status = map['CurrentStatus']
        return data
      end
    end

    # Operation Parser for ListApplicationInstances
    class ListApplicationInstances
      def self.parse(http_resp)
        data = Types::ListApplicationInstancesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application_instances = (ApplicationInstances.parse(map['ApplicationInstances']) unless map['ApplicationInstances'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ApplicationInstances
      def self.parse(list)
        data = []
        list.map do |value|
          data << ApplicationInstance.parse(value) unless value.nil?
        end
        data
      end
    end

    class ApplicationInstance
      def self.parse(map)
        data = Types::ApplicationInstance.new
        data.name = map['Name']
        data.application_instance_id = map['ApplicationInstanceId']
        data.default_runtime_context_device = map['DefaultRuntimeContextDevice']
        data.default_runtime_context_device_name = map['DefaultRuntimeContextDeviceName']
        data.description = map['Description']
        data.status = map['Status']
        data.health_status = map['HealthStatus']
        data.status_description = map['StatusDescription']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.arn = map['Arn']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListDevices
    class ListDevices
      def self.parse(http_resp)
        data = Types::ListDevicesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.devices = (DeviceList.parse(map['Devices']) unless map['Devices'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DeviceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Device.parse(value) unless value.nil?
        end
        data
      end
    end

    class Device
      def self.parse(map)
        data = Types::Device.new
        data.device_id = map['DeviceId']
        data.name = map['Name']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.provisioning_status = map['ProvisioningStatus']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data.lease_expiration_time = Time.at(map['LeaseExpirationTime'].to_i) if map['LeaseExpirationTime']
        data.brand = map['Brand']
        return data
      end
    end

    # Operation Parser for ListDevicesJobs
    class ListDevicesJobs
      def self.parse(http_resp)
        data = Types::ListDevicesJobsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.device_jobs = (DeviceJobList.parse(map['DeviceJobs']) unless map['DeviceJobs'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DeviceJobList
      def self.parse(list)
        data = []
        list.map do |value|
          data << DeviceJob.parse(value) unless value.nil?
        end
        data
      end
    end

    class DeviceJob
      def self.parse(map)
        data = Types::DeviceJob.new
        data.device_name = map['DeviceName']
        data.device_id = map['DeviceId']
        data.job_id = map['JobId']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        return data
      end
    end

    # Operation Parser for ListNodeFromTemplateJobs
    class ListNodeFromTemplateJobs
      def self.parse(http_resp)
        data = Types::ListNodeFromTemplateJobsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.node_from_template_jobs = (NodeFromTemplateJobList.parse(map['NodeFromTemplateJobs']) unless map['NodeFromTemplateJobs'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class NodeFromTemplateJobList
      def self.parse(list)
        data = []
        list.map do |value|
          data << NodeFromTemplateJob.parse(value) unless value.nil?
        end
        data
      end
    end

    class NodeFromTemplateJob
      def self.parse(map)
        data = Types::NodeFromTemplateJob.new
        data.job_id = map['JobId']
        data.template_type = map['TemplateType']
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.node_name = map['NodeName']
        return data
      end
    end

    # Operation Parser for ListNodes
    class ListNodes
      def self.parse(http_resp)
        data = Types::ListNodesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.nodes = (NodesList.parse(map['Nodes']) unless map['Nodes'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class NodesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Node.parse(value) unless value.nil?
        end
        data
      end
    end

    class Node
      def self.parse(map)
        data = Types::Node.new
        data.node_id = map['NodeId']
        data.name = map['Name']
        data.category = map['Category']
        data.owner_account = map['OwnerAccount']
        data.package_name = map['PackageName']
        data.package_id = map['PackageId']
        data.package_arn = map['PackageArn']
        data.package_version = map['PackageVersion']
        data.patch_version = map['PatchVersion']
        data.description = map['Description']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        return data
      end
    end

    # Operation Parser for ListPackageImportJobs
    class ListPackageImportJobs
      def self.parse(http_resp)
        data = Types::ListPackageImportJobsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.package_import_jobs = (PackageImportJobList.parse(map['PackageImportJobs']) unless map['PackageImportJobs'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PackageImportJobList
      def self.parse(list)
        data = []
        list.map do |value|
          data << PackageImportJob.parse(value) unless value.nil?
        end
        data
      end
    end

    class PackageImportJob
      def self.parse(map)
        data = Types::PackageImportJob.new
        data.job_id = map['JobId']
        data.job_type = map['JobType']
        data.status = map['Status']
        data.status_message = map['StatusMessage']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        return data
      end
    end

    # Operation Parser for ListPackages
    class ListPackages
      def self.parse(http_resp)
        data = Types::ListPackagesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.packages = (PackageList.parse(map['Packages']) unless map['Packages'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PackageList
      def self.parse(list)
        data = []
        list.map do |value|
          data << PackageListItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class PackageListItem
      def self.parse(map)
        data = Types::PackageListItem.new
        data.package_id = map['PackageId']
        data.package_name = map['PackageName']
        data.arn = map['Arn']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for ProvisionDevice
    class ProvisionDevice
      def self.parse(http_resp)
        data = Types::ProvisionDeviceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.device_id = map['DeviceId']
        data.arn = map['Arn']
        data.status = map['Status']
        data.certificates = Base64::decode64(map['Certificates']) unless map['Certificates'].nil?
        data.iot_thing_name = map['IotThingName']
        data
      end
    end

    # Operation Parser for RegisterPackageVersion
    class RegisterPackageVersion
      def self.parse(http_resp)
        data = Types::RegisterPackageVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for RemoveApplicationInstance
    class RemoveApplicationInstance
      def self.parse(http_resp)
        data = Types::RemoveApplicationInstanceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
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

    # Operation Parser for UpdateDeviceMetadata
    class UpdateDeviceMetadata
      def self.parse(http_resp)
        data = Types::UpdateDeviceMetadataOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.device_id = map['DeviceId']
        data
      end
    end
  end
end
