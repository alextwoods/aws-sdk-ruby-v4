# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Batch
  module Parsers

    # Operation Parser for CancelJob
    class CancelJob
      def self.parse(http_resp)
        data = Types::CancelJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for ClientException
    class ClientException
      def self.parse(http_resp)
        data = Types::ClientException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ServerException
    class ServerException
      def self.parse(http_resp)
        data = Types::ServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateComputeEnvironment
    class CreateComputeEnvironment
      def self.parse(http_resp)
        data = Types::CreateComputeEnvironmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.compute_environment_name = map['computeEnvironmentName']
        data.compute_environment_arn = map['computeEnvironmentArn']
        data
      end
    end

    # Operation Parser for CreateJobQueue
    class CreateJobQueue
      def self.parse(http_resp)
        data = Types::CreateJobQueueOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_queue_name = map['jobQueueName']
        data.job_queue_arn = map['jobQueueArn']
        data
      end
    end

    # Operation Parser for CreateSchedulingPolicy
    class CreateSchedulingPolicy
      def self.parse(http_resp)
        data = Types::CreateSchedulingPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['name']
        data.arn = map['arn']
        data
      end
    end

    # Operation Parser for DeleteComputeEnvironment
    class DeleteComputeEnvironment
      def self.parse(http_resp)
        data = Types::DeleteComputeEnvironmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteJobQueue
    class DeleteJobQueue
      def self.parse(http_resp)
        data = Types::DeleteJobQueueOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteSchedulingPolicy
    class DeleteSchedulingPolicy
      def self.parse(http_resp)
        data = Types::DeleteSchedulingPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeregisterJobDefinition
    class DeregisterJobDefinition
      def self.parse(http_resp)
        data = Types::DeregisterJobDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeComputeEnvironments
    class DescribeComputeEnvironments
      def self.parse(http_resp)
        data = Types::DescribeComputeEnvironmentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.compute_environments = (Parsers::ComputeEnvironmentDetailList.parse(map['computeEnvironments']) unless map['computeEnvironments'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ComputeEnvironmentDetailList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ComputeEnvironmentDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class ComputeEnvironmentDetail
      def self.parse(map)
        data = Types::ComputeEnvironmentDetail.new
        data.compute_environment_name = map['computeEnvironmentName']
        data.compute_environment_arn = map['computeEnvironmentArn']
        data.unmanagedv_cpus = map['unmanagedvCpus']
        data.ecs_cluster_arn = map['ecsClusterArn']
        data.tags = (Parsers::TagrisTagsMap.parse(map['tags']) unless map['tags'].nil?)
        data.type = map['type']
        data.state = map['state']
        data.status = map['status']
        data.status_reason = map['statusReason']
        data.compute_resources = (Parsers::ComputeResource.parse(map['computeResources']) unless map['computeResources'].nil?)
        data.service_role = map['serviceRole']
        data.update_policy = (Parsers::UpdatePolicy.parse(map['updatePolicy']) unless map['updatePolicy'].nil?)
        return data
      end
    end

    class UpdatePolicy
      def self.parse(map)
        data = Types::UpdatePolicy.new
        data.terminate_jobs_on_update = map['terminateJobsOnUpdate']
        data.job_execution_timeout_minutes = map['jobExecutionTimeoutMinutes']
        return data
      end
    end

    class ComputeResource
      def self.parse(map)
        data = Types::ComputeResource.new
        data.type = map['type']
        data.allocation_strategy = map['allocationStrategy']
        data.minv_cpus = map['minvCpus']
        data.maxv_cpus = map['maxvCpus']
        data.desiredv_cpus = map['desiredvCpus']
        data.instance_types = (Parsers::StringList.parse(map['instanceTypes']) unless map['instanceTypes'].nil?)
        data.image_id = map['imageId']
        data.subnets = (Parsers::StringList.parse(map['subnets']) unless map['subnets'].nil?)
        data.security_group_ids = (Parsers::StringList.parse(map['securityGroupIds']) unless map['securityGroupIds'].nil?)
        data.ec2_key_pair = map['ec2KeyPair']
        data.instance_role = map['instanceRole']
        data.tags = (Parsers::TagsMap.parse(map['tags']) unless map['tags'].nil?)
        data.placement_group = map['placementGroup']
        data.bid_percentage = map['bidPercentage']
        data.spot_iam_fleet_role = map['spotIamFleetRole']
        data.launch_template = (Parsers::LaunchTemplateSpecification.parse(map['launchTemplate']) unless map['launchTemplate'].nil?)
        data.ec2_configuration = (Parsers::Ec2ConfigurationList.parse(map['ec2Configuration']) unless map['ec2Configuration'].nil?)
        return data
      end
    end

    class Ec2ConfigurationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Ec2Configuration.parse(value) unless value.nil?
        end
        data
      end
    end

    class Ec2Configuration
      def self.parse(map)
        data = Types::Ec2Configuration.new
        data.image_type = map['imageType']
        data.image_id_override = map['imageIdOverride']
        return data
      end
    end

    class LaunchTemplateSpecification
      def self.parse(map)
        data = Types::LaunchTemplateSpecification.new
        data.launch_template_id = map['launchTemplateId']
        data.launch_template_name = map['launchTemplateName']
        data.version = map['version']
        return data
      end
    end

    class TagsMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class StringList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class TagrisTagsMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeJobDefinitions
    class DescribeJobDefinitions
      def self.parse(http_resp)
        data = Types::DescribeJobDefinitionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_definitions = (Parsers::JobDefinitionList.parse(map['jobDefinitions']) unless map['jobDefinitions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class JobDefinitionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::JobDefinition.parse(value) unless value.nil?
        end
        data
      end
    end

    class JobDefinition
      def self.parse(map)
        data = Types::JobDefinition.new
        data.job_definition_name = map['jobDefinitionName']
        data.job_definition_arn = map['jobDefinitionArn']
        data.revision = map['revision']
        data.status = map['status']
        data.type = map['type']
        data.scheduling_priority = map['schedulingPriority']
        data.parameters = (Parsers::ParametersMap.parse(map['parameters']) unless map['parameters'].nil?)
        data.retry_strategy = (Parsers::RetryStrategy.parse(map['retryStrategy']) unless map['retryStrategy'].nil?)
        data.container_properties = (Parsers::ContainerProperties.parse(map['containerProperties']) unless map['containerProperties'].nil?)
        data.timeout = (Parsers::JobTimeout.parse(map['timeout']) unless map['timeout'].nil?)
        data.node_properties = (Parsers::NodeProperties.parse(map['nodeProperties']) unless map['nodeProperties'].nil?)
        data.tags = (Parsers::TagrisTagsMap.parse(map['tags']) unless map['tags'].nil?)
        data.propagate_tags = map['propagateTags']
        data.platform_capabilities = (Parsers::PlatformCapabilityList.parse(map['platformCapabilities']) unless map['platformCapabilities'].nil?)
        return data
      end
    end

    class PlatformCapabilityList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class NodeProperties
      def self.parse(map)
        data = Types::NodeProperties.new
        data.num_nodes = map['numNodes']
        data.main_node = map['mainNode']
        data.node_range_properties = (Parsers::NodeRangeProperties.parse(map['nodeRangeProperties']) unless map['nodeRangeProperties'].nil?)
        return data
      end
    end

    class NodeRangeProperties
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::NodeRangeProperty.parse(value) unless value.nil?
        end
        data
      end
    end

    class NodeRangeProperty
      def self.parse(map)
        data = Types::NodeRangeProperty.new
        data.target_nodes = map['targetNodes']
        data.container = (Parsers::ContainerProperties.parse(map['container']) unless map['container'].nil?)
        return data
      end
    end

    class ContainerProperties
      def self.parse(map)
        data = Types::ContainerProperties.new
        data.image = map['image']
        data.vcpus = map['vcpus']
        data.memory = map['memory']
        data.command = (Parsers::StringList.parse(map['command']) unless map['command'].nil?)
        data.job_role_arn = map['jobRoleArn']
        data.execution_role_arn = map['executionRoleArn']
        data.volumes = (Parsers::Volumes.parse(map['volumes']) unless map['volumes'].nil?)
        data.environment = (Parsers::EnvironmentVariables.parse(map['environment']) unless map['environment'].nil?)
        data.mount_points = (Parsers::MountPoints.parse(map['mountPoints']) unless map['mountPoints'].nil?)
        data.readonly_root_filesystem = map['readonlyRootFilesystem']
        data.privileged = map['privileged']
        data.ulimits = (Parsers::Ulimits.parse(map['ulimits']) unless map['ulimits'].nil?)
        data.user = map['user']
        data.instance_type = map['instanceType']
        data.resource_requirements = (Parsers::ResourceRequirements.parse(map['resourceRequirements']) unless map['resourceRequirements'].nil?)
        data.linux_parameters = (Parsers::LinuxParameters.parse(map['linuxParameters']) unless map['linuxParameters'].nil?)
        data.log_configuration = (Parsers::LogConfiguration.parse(map['logConfiguration']) unless map['logConfiguration'].nil?)
        data.secrets = (Parsers::SecretList.parse(map['secrets']) unless map['secrets'].nil?)
        data.network_configuration = (Parsers::NetworkConfiguration.parse(map['networkConfiguration']) unless map['networkConfiguration'].nil?)
        data.fargate_platform_configuration = (Parsers::FargatePlatformConfiguration.parse(map['fargatePlatformConfiguration']) unless map['fargatePlatformConfiguration'].nil?)
        return data
      end
    end

    class FargatePlatformConfiguration
      def self.parse(map)
        data = Types::FargatePlatformConfiguration.new
        data.platform_version = map['platformVersion']
        return data
      end
    end

    class NetworkConfiguration
      def self.parse(map)
        data = Types::NetworkConfiguration.new
        data.assign_public_ip = map['assignPublicIp']
        return data
      end
    end

    class SecretList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Secret.parse(value) unless value.nil?
        end
        data
      end
    end

    class Secret
      def self.parse(map)
        data = Types::Secret.new
        data.name = map['name']
        data.value_from = map['valueFrom']
        return data
      end
    end

    class LogConfiguration
      def self.parse(map)
        data = Types::LogConfiguration.new
        data.log_driver = map['logDriver']
        data.options = (Parsers::LogConfigurationOptionsMap.parse(map['options']) unless map['options'].nil?)
        data.secret_options = (Parsers::SecretList.parse(map['secretOptions']) unless map['secretOptions'].nil?)
        return data
      end
    end

    class LogConfigurationOptionsMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class LinuxParameters
      def self.parse(map)
        data = Types::LinuxParameters.new
        data.devices = (Parsers::DevicesList.parse(map['devices']) unless map['devices'].nil?)
        data.init_process_enabled = map['initProcessEnabled']
        data.shared_memory_size = map['sharedMemorySize']
        data.tmpfs = (Parsers::TmpfsList.parse(map['tmpfs']) unless map['tmpfs'].nil?)
        data.max_swap = map['maxSwap']
        data.swappiness = map['swappiness']
        return data
      end
    end

    class TmpfsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Tmpfs.parse(value) unless value.nil?
        end
        data
      end
    end

    class Tmpfs
      def self.parse(map)
        data = Types::Tmpfs.new
        data.container_path = map['containerPath']
        data.size = map['size']
        data.mount_options = (Parsers::StringList.parse(map['mountOptions']) unless map['mountOptions'].nil?)
        return data
      end
    end

    class DevicesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Device.parse(value) unless value.nil?
        end
        data
      end
    end

    class Device
      def self.parse(map)
        data = Types::Device.new
        data.host_path = map['hostPath']
        data.container_path = map['containerPath']
        data.permissions = (Parsers::DeviceCgroupPermissions.parse(map['permissions']) unless map['permissions'].nil?)
        return data
      end
    end

    class DeviceCgroupPermissions
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class ResourceRequirements
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ResourceRequirement.parse(value) unless value.nil?
        end
        data
      end
    end

    class ResourceRequirement
      def self.parse(map)
        data = Types::ResourceRequirement.new
        data.value = map['value']
        data.type = map['type']
        return data
      end
    end

    class Ulimits
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Ulimit.parse(value) unless value.nil?
        end
        data
      end
    end

    class Ulimit
      def self.parse(map)
        data = Types::Ulimit.new
        data.hard_limit = map['hardLimit']
        data.name = map['name']
        data.soft_limit = map['softLimit']
        return data
      end
    end

    class MountPoints
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::MountPoint.parse(value) unless value.nil?
        end
        data
      end
    end

    class MountPoint
      def self.parse(map)
        data = Types::MountPoint.new
        data.container_path = map['containerPath']
        data.read_only = map['readOnly']
        data.source_volume = map['sourceVolume']
        return data
      end
    end

    class EnvironmentVariables
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::KeyValuePair.parse(value) unless value.nil?
        end
        data
      end
    end

    class KeyValuePair
      def self.parse(map)
        data = Types::KeyValuePair.new
        data.name = map['name']
        data.value = map['value']
        return data
      end
    end

    class Volumes
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Volume.parse(value) unless value.nil?
        end
        data
      end
    end

    class Volume
      def self.parse(map)
        data = Types::Volume.new
        data.host = (Parsers::Host.parse(map['host']) unless map['host'].nil?)
        data.name = map['name']
        data.efs_volume_configuration = (Parsers::EFSVolumeConfiguration.parse(map['efsVolumeConfiguration']) unless map['efsVolumeConfiguration'].nil?)
        return data
      end
    end

    class EFSVolumeConfiguration
      def self.parse(map)
        data = Types::EFSVolumeConfiguration.new
        data.file_system_id = map['fileSystemId']
        data.root_directory = map['rootDirectory']
        data.transit_encryption = map['transitEncryption']
        data.transit_encryption_port = map['transitEncryptionPort']
        data.authorization_config = (Parsers::EFSAuthorizationConfig.parse(map['authorizationConfig']) unless map['authorizationConfig'].nil?)
        return data
      end
    end

    class EFSAuthorizationConfig
      def self.parse(map)
        data = Types::EFSAuthorizationConfig.new
        data.access_point_id = map['accessPointId']
        data.iam = map['iam']
        return data
      end
    end

    class Host
      def self.parse(map)
        data = Types::Host.new
        data.source_path = map['sourcePath']
        return data
      end
    end

    class JobTimeout
      def self.parse(map)
        data = Types::JobTimeout.new
        data.attempt_duration_seconds = map['attemptDurationSeconds']
        return data
      end
    end

    class RetryStrategy
      def self.parse(map)
        data = Types::RetryStrategy.new
        data.attempts = map['attempts']
        data.evaluate_on_exit = (Parsers::EvaluateOnExitList.parse(map['evaluateOnExit']) unless map['evaluateOnExit'].nil?)
        return data
      end
    end

    class EvaluateOnExitList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::EvaluateOnExit.parse(value) unless value.nil?
        end
        data
      end
    end

    class EvaluateOnExit
      def self.parse(map)
        data = Types::EvaluateOnExit.new
        data.on_status_reason = map['onStatusReason']
        data.on_reason = map['onReason']
        data.on_exit_code = map['onExitCode']
        data.action = map['action']
        return data
      end
    end

    class ParametersMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeJobQueues
    class DescribeJobQueues
      def self.parse(http_resp)
        data = Types::DescribeJobQueuesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_queues = (Parsers::JobQueueDetailList.parse(map['jobQueues']) unless map['jobQueues'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class JobQueueDetailList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::JobQueueDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class JobQueueDetail
      def self.parse(map)
        data = Types::JobQueueDetail.new
        data.job_queue_name = map['jobQueueName']
        data.job_queue_arn = map['jobQueueArn']
        data.state = map['state']
        data.scheduling_policy_arn = map['schedulingPolicyArn']
        data.status = map['status']
        data.status_reason = map['statusReason']
        data.priority = map['priority']
        data.compute_environment_order = (Parsers::ComputeEnvironmentOrders.parse(map['computeEnvironmentOrder']) unless map['computeEnvironmentOrder'].nil?)
        data.tags = (Parsers::TagrisTagsMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class ComputeEnvironmentOrders
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ComputeEnvironmentOrder.parse(value) unless value.nil?
        end
        data
      end
    end

    class ComputeEnvironmentOrder
      def self.parse(map)
        data = Types::ComputeEnvironmentOrder.new
        data.order = map['order']
        data.compute_environment = map['computeEnvironment']
        return data
      end
    end

    # Operation Parser for DescribeJobs
    class DescribeJobs
      def self.parse(http_resp)
        data = Types::DescribeJobsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.jobs = (Parsers::JobDetailList.parse(map['jobs']) unless map['jobs'].nil?)
        data
      end
    end

    class JobDetailList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::JobDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class JobDetail
      def self.parse(map)
        data = Types::JobDetail.new
        data.job_arn = map['jobArn']
        data.job_name = map['jobName']
        data.job_id = map['jobId']
        data.job_queue = map['jobQueue']
        data.status = map['status']
        data.share_identifier = map['shareIdentifier']
        data.scheduling_priority = map['schedulingPriority']
        data.attempts = (Parsers::AttemptDetails.parse(map['attempts']) unless map['attempts'].nil?)
        data.status_reason = map['statusReason']
        data.created_at = map['createdAt']
        data.retry_strategy = (Parsers::RetryStrategy.parse(map['retryStrategy']) unless map['retryStrategy'].nil?)
        data.started_at = map['startedAt']
        data.stopped_at = map['stoppedAt']
        data.depends_on = (Parsers::JobDependencyList.parse(map['dependsOn']) unless map['dependsOn'].nil?)
        data.job_definition = map['jobDefinition']
        data.parameters = (Parsers::ParametersMap.parse(map['parameters']) unless map['parameters'].nil?)
        data.container = (Parsers::ContainerDetail.parse(map['container']) unless map['container'].nil?)
        data.node_details = (Parsers::NodeDetails.parse(map['nodeDetails']) unless map['nodeDetails'].nil?)
        data.node_properties = (Parsers::NodeProperties.parse(map['nodeProperties']) unless map['nodeProperties'].nil?)
        data.array_properties = (Parsers::ArrayPropertiesDetail.parse(map['arrayProperties']) unless map['arrayProperties'].nil?)
        data.timeout = (Parsers::JobTimeout.parse(map['timeout']) unless map['timeout'].nil?)
        data.tags = (Parsers::TagrisTagsMap.parse(map['tags']) unless map['tags'].nil?)
        data.propagate_tags = map['propagateTags']
        data.platform_capabilities = (Parsers::PlatformCapabilityList.parse(map['platformCapabilities']) unless map['platformCapabilities'].nil?)
        return data
      end
    end

    class ArrayPropertiesDetail
      def self.parse(map)
        data = Types::ArrayPropertiesDetail.new
        data.status_summary = (Parsers::ArrayJobStatusSummary.parse(map['statusSummary']) unless map['statusSummary'].nil?)
        data.size = map['size']
        data.index = map['index']
        return data
      end
    end

    class ArrayJobStatusSummary
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class NodeDetails
      def self.parse(map)
        data = Types::NodeDetails.new
        data.node_index = map['nodeIndex']
        data.is_main_node = map['isMainNode']
        return data
      end
    end

    class ContainerDetail
      def self.parse(map)
        data = Types::ContainerDetail.new
        data.image = map['image']
        data.vcpus = map['vcpus']
        data.memory = map['memory']
        data.command = (Parsers::StringList.parse(map['command']) unless map['command'].nil?)
        data.job_role_arn = map['jobRoleArn']
        data.execution_role_arn = map['executionRoleArn']
        data.volumes = (Parsers::Volumes.parse(map['volumes']) unless map['volumes'].nil?)
        data.environment = (Parsers::EnvironmentVariables.parse(map['environment']) unless map['environment'].nil?)
        data.mount_points = (Parsers::MountPoints.parse(map['mountPoints']) unless map['mountPoints'].nil?)
        data.readonly_root_filesystem = map['readonlyRootFilesystem']
        data.ulimits = (Parsers::Ulimits.parse(map['ulimits']) unless map['ulimits'].nil?)
        data.privileged = map['privileged']
        data.user = map['user']
        data.exit_code = map['exitCode']
        data.reason = map['reason']
        data.container_instance_arn = map['containerInstanceArn']
        data.task_arn = map['taskArn']
        data.log_stream_name = map['logStreamName']
        data.instance_type = map['instanceType']
        data.network_interfaces = (Parsers::NetworkInterfaceList.parse(map['networkInterfaces']) unless map['networkInterfaces'].nil?)
        data.resource_requirements = (Parsers::ResourceRequirements.parse(map['resourceRequirements']) unless map['resourceRequirements'].nil?)
        data.linux_parameters = (Parsers::LinuxParameters.parse(map['linuxParameters']) unless map['linuxParameters'].nil?)
        data.log_configuration = (Parsers::LogConfiguration.parse(map['logConfiguration']) unless map['logConfiguration'].nil?)
        data.secrets = (Parsers::SecretList.parse(map['secrets']) unless map['secrets'].nil?)
        data.network_configuration = (Parsers::NetworkConfiguration.parse(map['networkConfiguration']) unless map['networkConfiguration'].nil?)
        data.fargate_platform_configuration = (Parsers::FargatePlatformConfiguration.parse(map['fargatePlatformConfiguration']) unless map['fargatePlatformConfiguration'].nil?)
        return data
      end
    end

    class NetworkInterfaceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::NetworkInterface.parse(value) unless value.nil?
        end
        data
      end
    end

    class NetworkInterface
      def self.parse(map)
        data = Types::NetworkInterface.new
        data.attachment_id = map['attachmentId']
        data.ipv6_address = map['ipv6Address']
        data.private_ipv4_address = map['privateIpv4Address']
        return data
      end
    end

    class JobDependencyList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::JobDependency.parse(value) unless value.nil?
        end
        data
      end
    end

    class JobDependency
      def self.parse(map)
        data = Types::JobDependency.new
        data.job_id = map['jobId']
        data.type = map['type']
        return data
      end
    end

    class AttemptDetails
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AttemptDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class AttemptDetail
      def self.parse(map)
        data = Types::AttemptDetail.new
        data.container = (Parsers::AttemptContainerDetail.parse(map['container']) unless map['container'].nil?)
        data.started_at = map['startedAt']
        data.stopped_at = map['stoppedAt']
        data.status_reason = map['statusReason']
        return data
      end
    end

    class AttemptContainerDetail
      def self.parse(map)
        data = Types::AttemptContainerDetail.new
        data.container_instance_arn = map['containerInstanceArn']
        data.task_arn = map['taskArn']
        data.exit_code = map['exitCode']
        data.reason = map['reason']
        data.log_stream_name = map['logStreamName']
        data.network_interfaces = (Parsers::NetworkInterfaceList.parse(map['networkInterfaces']) unless map['networkInterfaces'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeSchedulingPolicies
    class DescribeSchedulingPolicies
      def self.parse(http_resp)
        data = Types::DescribeSchedulingPoliciesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.scheduling_policies = (Parsers::SchedulingPolicyDetailList.parse(map['schedulingPolicies']) unless map['schedulingPolicies'].nil?)
        data
      end
    end

    class SchedulingPolicyDetailList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SchedulingPolicyDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class SchedulingPolicyDetail
      def self.parse(map)
        data = Types::SchedulingPolicyDetail.new
        data.name = map['name']
        data.arn = map['arn']
        data.fairshare_policy = (Parsers::FairsharePolicy.parse(map['fairsharePolicy']) unless map['fairsharePolicy'].nil?)
        data.tags = (Parsers::TagrisTagsMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class FairsharePolicy
      def self.parse(map)
        data = Types::FairsharePolicy.new
        data.share_decay_seconds = map['shareDecaySeconds']
        data.compute_reservation = map['computeReservation']
        data.share_distribution = (Parsers::ShareAttributesList.parse(map['shareDistribution']) unless map['shareDistribution'].nil?)
        return data
      end
    end

    class ShareAttributesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ShareAttributes.parse(value) unless value.nil?
        end
        data
      end
    end

    class ShareAttributes
      def self.parse(map)
        data = Types::ShareAttributes.new
        data.share_identifier = map['shareIdentifier']
        data.weight_factor = Hearth::NumberHelper.deserialize(map['weightFactor'])
        return data
      end
    end

    # Operation Parser for ListJobs
    class ListJobs
      def self.parse(http_resp)
        data = Types::ListJobsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_summary_list = (Parsers::JobSummaryList.parse(map['jobSummaryList']) unless map['jobSummaryList'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class JobSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::JobSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class JobSummary
      def self.parse(map)
        data = Types::JobSummary.new
        data.job_arn = map['jobArn']
        data.job_id = map['jobId']
        data.job_name = map['jobName']
        data.created_at = map['createdAt']
        data.status = map['status']
        data.status_reason = map['statusReason']
        data.started_at = map['startedAt']
        data.stopped_at = map['stoppedAt']
        data.container = (Parsers::ContainerSummary.parse(map['container']) unless map['container'].nil?)
        data.array_properties = (Parsers::ArrayPropertiesSummary.parse(map['arrayProperties']) unless map['arrayProperties'].nil?)
        data.node_properties = (Parsers::NodePropertiesSummary.parse(map['nodeProperties']) unless map['nodeProperties'].nil?)
        data.job_definition = map['jobDefinition']
        return data
      end
    end

    class NodePropertiesSummary
      def self.parse(map)
        data = Types::NodePropertiesSummary.new
        data.is_main_node = map['isMainNode']
        data.num_nodes = map['numNodes']
        data.node_index = map['nodeIndex']
        return data
      end
    end

    class ArrayPropertiesSummary
      def self.parse(map)
        data = Types::ArrayPropertiesSummary.new
        data.size = map['size']
        data.index = map['index']
        return data
      end
    end

    class ContainerSummary
      def self.parse(map)
        data = Types::ContainerSummary.new
        data.exit_code = map['exitCode']
        data.reason = map['reason']
        return data
      end
    end

    # Operation Parser for ListSchedulingPolicies
    class ListSchedulingPolicies
      def self.parse(http_resp)
        data = Types::ListSchedulingPoliciesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.scheduling_policies = (Parsers::SchedulingPolicyListingDetailList.parse(map['schedulingPolicies']) unless map['schedulingPolicies'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class SchedulingPolicyListingDetailList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SchedulingPolicyListingDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class SchedulingPolicyListingDetail
      def self.parse(map)
        data = Types::SchedulingPolicyListingDetail.new
        data.arn = map['arn']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagrisTagsMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for RegisterJobDefinition
    class RegisterJobDefinition
      def self.parse(http_resp)
        data = Types::RegisterJobDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_definition_name = map['jobDefinitionName']
        data.job_definition_arn = map['jobDefinitionArn']
        data.revision = map['revision']
        data
      end
    end

    # Operation Parser for SubmitJob
    class SubmitJob
      def self.parse(http_resp)
        data = Types::SubmitJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_arn = map['jobArn']
        data.job_name = map['jobName']
        data.job_id = map['jobId']
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

    # Operation Parser for TerminateJob
    class TerminateJob
      def self.parse(http_resp)
        data = Types::TerminateJobOutput.new
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

    # Operation Parser for UpdateComputeEnvironment
    class UpdateComputeEnvironment
      def self.parse(http_resp)
        data = Types::UpdateComputeEnvironmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.compute_environment_name = map['computeEnvironmentName']
        data.compute_environment_arn = map['computeEnvironmentArn']
        data
      end
    end

    # Operation Parser for UpdateJobQueue
    class UpdateJobQueue
      def self.parse(http_resp)
        data = Types::UpdateJobQueueOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_queue_name = map['jobQueueName']
        data.job_queue_arn = map['jobQueueArn']
        data
      end
    end

    # Operation Parser for UpdateSchedulingPolicy
    class UpdateSchedulingPolicy
      def self.parse(http_resp)
        data = Types::UpdateSchedulingPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
