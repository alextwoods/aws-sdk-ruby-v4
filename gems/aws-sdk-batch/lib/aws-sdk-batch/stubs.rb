# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Batch
  module Stubs

    # Operation Stubber for CancelJob
    class CancelJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateComputeEnvironment
    class CreateComputeEnvironment
      def self.default(visited=[])
        {
          compute_environment_name: 'compute_environment_name',
          compute_environment_arn: 'compute_environment_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['computeEnvironmentName'] = stub[:compute_environment_name] unless stub[:compute_environment_name].nil?
        data['computeEnvironmentArn'] = stub[:compute_environment_arn] unless stub[:compute_environment_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateJobQueue
    class CreateJobQueue
      def self.default(visited=[])
        {
          job_queue_name: 'job_queue_name',
          job_queue_arn: 'job_queue_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobQueueName'] = stub[:job_queue_name] unless stub[:job_queue_name].nil?
        data['jobQueueArn'] = stub[:job_queue_arn] unless stub[:job_queue_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateSchedulingPolicy
    class CreateSchedulingPolicy
      def self.default(visited=[])
        {
          name: 'name',
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteComputeEnvironment
    class DeleteComputeEnvironment
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteJobQueue
    class DeleteJobQueue
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSchedulingPolicy
    class DeleteSchedulingPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeregisterJobDefinition
    class DeregisterJobDefinition
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeComputeEnvironments
    class DescribeComputeEnvironments
      def self.default(visited=[])
        {
          compute_environments: ComputeEnvironmentDetailList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['computeEnvironments'] = Stubs::ComputeEnvironmentDetailList.stub(stub[:compute_environments]) unless stub[:compute_environments].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ComputeEnvironmentDetailList
    class ComputeEnvironmentDetailList
      def self.default(visited=[])
        return nil if visited.include?('ComputeEnvironmentDetailList')
        visited = visited + ['ComputeEnvironmentDetailList']
        [
          ComputeEnvironmentDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ComputeEnvironmentDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ComputeEnvironmentDetail
    class ComputeEnvironmentDetail
      def self.default(visited=[])
        return nil if visited.include?('ComputeEnvironmentDetail')
        visited = visited + ['ComputeEnvironmentDetail']
        {
          compute_environment_name: 'compute_environment_name',
          compute_environment_arn: 'compute_environment_arn',
          unmanagedv_cpus: 1,
          ecs_cluster_arn: 'ecs_cluster_arn',
          tags: TagrisTagsMap.default(visited),
          type: 'type',
          state: 'state',
          status: 'status',
          status_reason: 'status_reason',
          compute_resources: ComputeResource.default(visited),
          service_role: 'service_role',
          update_policy: UpdatePolicy.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ComputeEnvironmentDetail.new
        data = {}
        data['computeEnvironmentName'] = stub[:compute_environment_name] unless stub[:compute_environment_name].nil?
        data['computeEnvironmentArn'] = stub[:compute_environment_arn] unless stub[:compute_environment_arn].nil?
        data['unmanagedvCpus'] = stub[:unmanagedv_cpus] unless stub[:unmanagedv_cpus].nil?
        data['ecsClusterArn'] = stub[:ecs_cluster_arn] unless stub[:ecs_cluster_arn].nil?
        data['tags'] = Stubs::TagrisTagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        data['computeResources'] = Stubs::ComputeResource.stub(stub[:compute_resources]) unless stub[:compute_resources].nil?
        data['serviceRole'] = stub[:service_role] unless stub[:service_role].nil?
        data['updatePolicy'] = Stubs::UpdatePolicy.stub(stub[:update_policy]) unless stub[:update_policy].nil?
        data
      end
    end

    # Structure Stubber for UpdatePolicy
    class UpdatePolicy
      def self.default(visited=[])
        return nil if visited.include?('UpdatePolicy')
        visited = visited + ['UpdatePolicy']
        {
          terminate_jobs_on_update: false,
          job_execution_timeout_minutes: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::UpdatePolicy.new
        data = {}
        data['terminateJobsOnUpdate'] = stub[:terminate_jobs_on_update] unless stub[:terminate_jobs_on_update].nil?
        data['jobExecutionTimeoutMinutes'] = stub[:job_execution_timeout_minutes] unless stub[:job_execution_timeout_minutes].nil?
        data
      end
    end

    # Structure Stubber for ComputeResource
    class ComputeResource
      def self.default(visited=[])
        return nil if visited.include?('ComputeResource')
        visited = visited + ['ComputeResource']
        {
          type: 'type',
          allocation_strategy: 'allocation_strategy',
          minv_cpus: 1,
          maxv_cpus: 1,
          desiredv_cpus: 1,
          instance_types: StringList.default(visited),
          image_id: 'image_id',
          subnets: StringList.default(visited),
          security_group_ids: StringList.default(visited),
          ec2_key_pair: 'ec2_key_pair',
          instance_role: 'instance_role',
          tags: TagsMap.default(visited),
          placement_group: 'placement_group',
          bid_percentage: 1,
          spot_iam_fleet_role: 'spot_iam_fleet_role',
          launch_template: LaunchTemplateSpecification.default(visited),
          ec2_configuration: Ec2ConfigurationList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ComputeResource.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['allocationStrategy'] = stub[:allocation_strategy] unless stub[:allocation_strategy].nil?
        data['minvCpus'] = stub[:minv_cpus] unless stub[:minv_cpus].nil?
        data['maxvCpus'] = stub[:maxv_cpus] unless stub[:maxv_cpus].nil?
        data['desiredvCpus'] = stub[:desiredv_cpus] unless stub[:desiredv_cpus].nil?
        data['instanceTypes'] = Stubs::StringList.stub(stub[:instance_types]) unless stub[:instance_types].nil?
        data['imageId'] = stub[:image_id] unless stub[:image_id].nil?
        data['subnets'] = Stubs::StringList.stub(stub[:subnets]) unless stub[:subnets].nil?
        data['securityGroupIds'] = Stubs::StringList.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data['ec2KeyPair'] = stub[:ec2_key_pair] unless stub[:ec2_key_pair].nil?
        data['instanceRole'] = stub[:instance_role] unless stub[:instance_role].nil?
        data['tags'] = Stubs::TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['placementGroup'] = stub[:placement_group] unless stub[:placement_group].nil?
        data['bidPercentage'] = stub[:bid_percentage] unless stub[:bid_percentage].nil?
        data['spotIamFleetRole'] = stub[:spot_iam_fleet_role] unless stub[:spot_iam_fleet_role].nil?
        data['launchTemplate'] = Stubs::LaunchTemplateSpecification.stub(stub[:launch_template]) unless stub[:launch_template].nil?
        data['ec2Configuration'] = Stubs::Ec2ConfigurationList.stub(stub[:ec2_configuration]) unless stub[:ec2_configuration].nil?
        data
      end
    end

    # List Stubber for Ec2ConfigurationList
    class Ec2ConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('Ec2ConfigurationList')
        visited = visited + ['Ec2ConfigurationList']
        [
          Ec2Configuration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Ec2Configuration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Ec2Configuration
    class Ec2Configuration
      def self.default(visited=[])
        return nil if visited.include?('Ec2Configuration')
        visited = visited + ['Ec2Configuration']
        {
          image_type: 'image_type',
          image_id_override: 'image_id_override',
        }
      end

      def self.stub(stub)
        stub ||= Types::Ec2Configuration.new
        data = {}
        data['imageType'] = stub[:image_type] unless stub[:image_type].nil?
        data['imageIdOverride'] = stub[:image_id_override] unless stub[:image_id_override].nil?
        data
      end
    end

    # Structure Stubber for LaunchTemplateSpecification
    class LaunchTemplateSpecification
      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplateSpecification')
        visited = visited + ['LaunchTemplateSpecification']
        {
          launch_template_id: 'launch_template_id',
          launch_template_name: 'launch_template_name',
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::LaunchTemplateSpecification.new
        data = {}
        data['launchTemplateId'] = stub[:launch_template_id] unless stub[:launch_template_id].nil?
        data['launchTemplateName'] = stub[:launch_template_name] unless stub[:launch_template_name].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Map Stubber for TagsMap
    class TagsMap
      def self.default(visited=[])
        return nil if visited.include?('TagsMap')
        visited = visited + ['TagsMap']
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

    # List Stubber for StringList
    class StringList
      def self.default(visited=[])
        return nil if visited.include?('StringList')
        visited = visited + ['StringList']
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

    # Map Stubber for TagrisTagsMap
    class TagrisTagsMap
      def self.default(visited=[])
        return nil if visited.include?('TagrisTagsMap')
        visited = visited + ['TagrisTagsMap']
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

    # Operation Stubber for DescribeJobDefinitions
    class DescribeJobDefinitions
      def self.default(visited=[])
        {
          job_definitions: JobDefinitionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobDefinitions'] = Stubs::JobDefinitionList.stub(stub[:job_definitions]) unless stub[:job_definitions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for JobDefinitionList
    class JobDefinitionList
      def self.default(visited=[])
        return nil if visited.include?('JobDefinitionList')
        visited = visited + ['JobDefinitionList']
        [
          JobDefinition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::JobDefinition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for JobDefinition
    class JobDefinition
      def self.default(visited=[])
        return nil if visited.include?('JobDefinition')
        visited = visited + ['JobDefinition']
        {
          job_definition_name: 'job_definition_name',
          job_definition_arn: 'job_definition_arn',
          revision: 1,
          status: 'status',
          type: 'type',
          scheduling_priority: 1,
          parameters: ParametersMap.default(visited),
          retry_strategy: RetryStrategy.default(visited),
          container_properties: ContainerProperties.default(visited),
          timeout: JobTimeout.default(visited),
          node_properties: NodeProperties.default(visited),
          tags: TagrisTagsMap.default(visited),
          propagate_tags: false,
          platform_capabilities: PlatformCapabilityList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JobDefinition.new
        data = {}
        data['jobDefinitionName'] = stub[:job_definition_name] unless stub[:job_definition_name].nil?
        data['jobDefinitionArn'] = stub[:job_definition_arn] unless stub[:job_definition_arn].nil?
        data['revision'] = stub[:revision] unless stub[:revision].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['schedulingPriority'] = stub[:scheduling_priority] unless stub[:scheduling_priority].nil?
        data['parameters'] = Stubs::ParametersMap.stub(stub[:parameters]) unless stub[:parameters].nil?
        data['retryStrategy'] = Stubs::RetryStrategy.stub(stub[:retry_strategy]) unless stub[:retry_strategy].nil?
        data['containerProperties'] = Stubs::ContainerProperties.stub(stub[:container_properties]) unless stub[:container_properties].nil?
        data['timeout'] = Stubs::JobTimeout.stub(stub[:timeout]) unless stub[:timeout].nil?
        data['nodeProperties'] = Stubs::NodeProperties.stub(stub[:node_properties]) unless stub[:node_properties].nil?
        data['tags'] = Stubs::TagrisTagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['propagateTags'] = stub[:propagate_tags] unless stub[:propagate_tags].nil?
        data['platformCapabilities'] = Stubs::PlatformCapabilityList.stub(stub[:platform_capabilities]) unless stub[:platform_capabilities].nil?
        data
      end
    end

    # List Stubber for PlatformCapabilityList
    class PlatformCapabilityList
      def self.default(visited=[])
        return nil if visited.include?('PlatformCapabilityList')
        visited = visited + ['PlatformCapabilityList']
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

    # Structure Stubber for NodeProperties
    class NodeProperties
      def self.default(visited=[])
        return nil if visited.include?('NodeProperties')
        visited = visited + ['NodeProperties']
        {
          num_nodes: 1,
          main_node: 1,
          node_range_properties: NodeRangeProperties.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NodeProperties.new
        data = {}
        data['numNodes'] = stub[:num_nodes] unless stub[:num_nodes].nil?
        data['mainNode'] = stub[:main_node] unless stub[:main_node].nil?
        data['nodeRangeProperties'] = Stubs::NodeRangeProperties.stub(stub[:node_range_properties]) unless stub[:node_range_properties].nil?
        data
      end
    end

    # List Stubber for NodeRangeProperties
    class NodeRangeProperties
      def self.default(visited=[])
        return nil if visited.include?('NodeRangeProperties')
        visited = visited + ['NodeRangeProperties']
        [
          NodeRangeProperty.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::NodeRangeProperty.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NodeRangeProperty
    class NodeRangeProperty
      def self.default(visited=[])
        return nil if visited.include?('NodeRangeProperty')
        visited = visited + ['NodeRangeProperty']
        {
          target_nodes: 'target_nodes',
          container: ContainerProperties.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NodeRangeProperty.new
        data = {}
        data['targetNodes'] = stub[:target_nodes] unless stub[:target_nodes].nil?
        data['container'] = Stubs::ContainerProperties.stub(stub[:container]) unless stub[:container].nil?
        data
      end
    end

    # Structure Stubber for ContainerProperties
    class ContainerProperties
      def self.default(visited=[])
        return nil if visited.include?('ContainerProperties')
        visited = visited + ['ContainerProperties']
        {
          image: 'image',
          vcpus: 1,
          memory: 1,
          command: StringList.default(visited),
          job_role_arn: 'job_role_arn',
          execution_role_arn: 'execution_role_arn',
          volumes: Volumes.default(visited),
          environment: EnvironmentVariables.default(visited),
          mount_points: MountPoints.default(visited),
          readonly_root_filesystem: false,
          privileged: false,
          ulimits: Ulimits.default(visited),
          user: 'user',
          instance_type: 'instance_type',
          resource_requirements: ResourceRequirements.default(visited),
          linux_parameters: LinuxParameters.default(visited),
          log_configuration: LogConfiguration.default(visited),
          secrets: SecretList.default(visited),
          network_configuration: NetworkConfiguration.default(visited),
          fargate_platform_configuration: FargatePlatformConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ContainerProperties.new
        data = {}
        data['image'] = stub[:image] unless stub[:image].nil?
        data['vcpus'] = stub[:vcpus] unless stub[:vcpus].nil?
        data['memory'] = stub[:memory] unless stub[:memory].nil?
        data['command'] = Stubs::StringList.stub(stub[:command]) unless stub[:command].nil?
        data['jobRoleArn'] = stub[:job_role_arn] unless stub[:job_role_arn].nil?
        data['executionRoleArn'] = stub[:execution_role_arn] unless stub[:execution_role_arn].nil?
        data['volumes'] = Stubs::Volumes.stub(stub[:volumes]) unless stub[:volumes].nil?
        data['environment'] = Stubs::EnvironmentVariables.stub(stub[:environment]) unless stub[:environment].nil?
        data['mountPoints'] = Stubs::MountPoints.stub(stub[:mount_points]) unless stub[:mount_points].nil?
        data['readonlyRootFilesystem'] = stub[:readonly_root_filesystem] unless stub[:readonly_root_filesystem].nil?
        data['privileged'] = stub[:privileged] unless stub[:privileged].nil?
        data['ulimits'] = Stubs::Ulimits.stub(stub[:ulimits]) unless stub[:ulimits].nil?
        data['user'] = stub[:user] unless stub[:user].nil?
        data['instanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['resourceRequirements'] = Stubs::ResourceRequirements.stub(stub[:resource_requirements]) unless stub[:resource_requirements].nil?
        data['linuxParameters'] = Stubs::LinuxParameters.stub(stub[:linux_parameters]) unless stub[:linux_parameters].nil?
        data['logConfiguration'] = Stubs::LogConfiguration.stub(stub[:log_configuration]) unless stub[:log_configuration].nil?
        data['secrets'] = Stubs::SecretList.stub(stub[:secrets]) unless stub[:secrets].nil?
        data['networkConfiguration'] = Stubs::NetworkConfiguration.stub(stub[:network_configuration]) unless stub[:network_configuration].nil?
        data['fargatePlatformConfiguration'] = Stubs::FargatePlatformConfiguration.stub(stub[:fargate_platform_configuration]) unless stub[:fargate_platform_configuration].nil?
        data
      end
    end

    # Structure Stubber for FargatePlatformConfiguration
    class FargatePlatformConfiguration
      def self.default(visited=[])
        return nil if visited.include?('FargatePlatformConfiguration')
        visited = visited + ['FargatePlatformConfiguration']
        {
          platform_version: 'platform_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::FargatePlatformConfiguration.new
        data = {}
        data['platformVersion'] = stub[:platform_version] unless stub[:platform_version].nil?
        data
      end
    end

    # Structure Stubber for NetworkConfiguration
    class NetworkConfiguration
      def self.default(visited=[])
        return nil if visited.include?('NetworkConfiguration')
        visited = visited + ['NetworkConfiguration']
        {
          assign_public_ip: 'assign_public_ip',
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkConfiguration.new
        data = {}
        data['assignPublicIp'] = stub[:assign_public_ip] unless stub[:assign_public_ip].nil?
        data
      end
    end

    # List Stubber for SecretList
    class SecretList
      def self.default(visited=[])
        return nil if visited.include?('SecretList')
        visited = visited + ['SecretList']
        [
          Secret.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Secret.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Secret
    class Secret
      def self.default(visited=[])
        return nil if visited.include?('Secret')
        visited = visited + ['Secret']
        {
          name: 'name',
          value_from: 'value_from',
        }
      end

      def self.stub(stub)
        stub ||= Types::Secret.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['valueFrom'] = stub[:value_from] unless stub[:value_from].nil?
        data
      end
    end

    # Structure Stubber for LogConfiguration
    class LogConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LogConfiguration')
        visited = visited + ['LogConfiguration']
        {
          log_driver: 'log_driver',
          options: LogConfigurationOptionsMap.default(visited),
          secret_options: SecretList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LogConfiguration.new
        data = {}
        data['logDriver'] = stub[:log_driver] unless stub[:log_driver].nil?
        data['options'] = Stubs::LogConfigurationOptionsMap.stub(stub[:options]) unless stub[:options].nil?
        data['secretOptions'] = Stubs::SecretList.stub(stub[:secret_options]) unless stub[:secret_options].nil?
        data
      end
    end

    # Map Stubber for LogConfigurationOptionsMap
    class LogConfigurationOptionsMap
      def self.default(visited=[])
        return nil if visited.include?('LogConfigurationOptionsMap')
        visited = visited + ['LogConfigurationOptionsMap']
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

    # Structure Stubber for LinuxParameters
    class LinuxParameters
      def self.default(visited=[])
        return nil if visited.include?('LinuxParameters')
        visited = visited + ['LinuxParameters']
        {
          devices: DevicesList.default(visited),
          init_process_enabled: false,
          shared_memory_size: 1,
          tmpfs: TmpfsList.default(visited),
          max_swap: 1,
          swappiness: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::LinuxParameters.new
        data = {}
        data['devices'] = Stubs::DevicesList.stub(stub[:devices]) unless stub[:devices].nil?
        data['initProcessEnabled'] = stub[:init_process_enabled] unless stub[:init_process_enabled].nil?
        data['sharedMemorySize'] = stub[:shared_memory_size] unless stub[:shared_memory_size].nil?
        data['tmpfs'] = Stubs::TmpfsList.stub(stub[:tmpfs]) unless stub[:tmpfs].nil?
        data['maxSwap'] = stub[:max_swap] unless stub[:max_swap].nil?
        data['swappiness'] = stub[:swappiness] unless stub[:swappiness].nil?
        data
      end
    end

    # List Stubber for TmpfsList
    class TmpfsList
      def self.default(visited=[])
        return nil if visited.include?('TmpfsList')
        visited = visited + ['TmpfsList']
        [
          Tmpfs.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tmpfs.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tmpfs
    class Tmpfs
      def self.default(visited=[])
        return nil if visited.include?('Tmpfs')
        visited = visited + ['Tmpfs']
        {
          container_path: 'container_path',
          size: 1,
          mount_options: StringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Tmpfs.new
        data = {}
        data['containerPath'] = stub[:container_path] unless stub[:container_path].nil?
        data['size'] = stub[:size] unless stub[:size].nil?
        data['mountOptions'] = Stubs::StringList.stub(stub[:mount_options]) unless stub[:mount_options].nil?
        data
      end
    end

    # List Stubber for DevicesList
    class DevicesList
      def self.default(visited=[])
        return nil if visited.include?('DevicesList')
        visited = visited + ['DevicesList']
        [
          Device.default(visited)
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
          host_path: 'host_path',
          container_path: 'container_path',
          permissions: DeviceCgroupPermissions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Device.new
        data = {}
        data['hostPath'] = stub[:host_path] unless stub[:host_path].nil?
        data['containerPath'] = stub[:container_path] unless stub[:container_path].nil?
        data['permissions'] = Stubs::DeviceCgroupPermissions.stub(stub[:permissions]) unless stub[:permissions].nil?
        data
      end
    end

    # List Stubber for DeviceCgroupPermissions
    class DeviceCgroupPermissions
      def self.default(visited=[])
        return nil if visited.include?('DeviceCgroupPermissions')
        visited = visited + ['DeviceCgroupPermissions']
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

    # List Stubber for ResourceRequirements
    class ResourceRequirements
      def self.default(visited=[])
        return nil if visited.include?('ResourceRequirements')
        visited = visited + ['ResourceRequirements']
        [
          ResourceRequirement.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResourceRequirement.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceRequirement
    class ResourceRequirement
      def self.default(visited=[])
        return nil if visited.include?('ResourceRequirement')
        visited = visited + ['ResourceRequirement']
        {
          value: 'value',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceRequirement.new
        data = {}
        data['value'] = stub[:value] unless stub[:value].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # List Stubber for Ulimits
    class Ulimits
      def self.default(visited=[])
        return nil if visited.include?('Ulimits')
        visited = visited + ['Ulimits']
        [
          Ulimit.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Ulimit.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Ulimit
    class Ulimit
      def self.default(visited=[])
        return nil if visited.include?('Ulimit')
        visited = visited + ['Ulimit']
        {
          hard_limit: 1,
          name: 'name',
          soft_limit: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Ulimit.new
        data = {}
        data['hardLimit'] = stub[:hard_limit] unless stub[:hard_limit].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['softLimit'] = stub[:soft_limit] unless stub[:soft_limit].nil?
        data
      end
    end

    # List Stubber for MountPoints
    class MountPoints
      def self.default(visited=[])
        return nil if visited.include?('MountPoints')
        visited = visited + ['MountPoints']
        [
          MountPoint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MountPoint.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MountPoint
    class MountPoint
      def self.default(visited=[])
        return nil if visited.include?('MountPoint')
        visited = visited + ['MountPoint']
        {
          container_path: 'container_path',
          read_only: false,
          source_volume: 'source_volume',
        }
      end

      def self.stub(stub)
        stub ||= Types::MountPoint.new
        data = {}
        data['containerPath'] = stub[:container_path] unless stub[:container_path].nil?
        data['readOnly'] = stub[:read_only] unless stub[:read_only].nil?
        data['sourceVolume'] = stub[:source_volume] unless stub[:source_volume].nil?
        data
      end
    end

    # List Stubber for EnvironmentVariables
    class EnvironmentVariables
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentVariables')
        visited = visited + ['EnvironmentVariables']
        [
          KeyValuePair.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::KeyValuePair.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for KeyValuePair
    class KeyValuePair
      def self.default(visited=[])
        return nil if visited.include?('KeyValuePair')
        visited = visited + ['KeyValuePair']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::KeyValuePair.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # List Stubber for Volumes
    class Volumes
      def self.default(visited=[])
        return nil if visited.include?('Volumes')
        visited = visited + ['Volumes']
        [
          Volume.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Volume.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Volume
    class Volume
      def self.default(visited=[])
        return nil if visited.include?('Volume')
        visited = visited + ['Volume']
        {
          host: Host.default(visited),
          name: 'name',
          efs_volume_configuration: EFSVolumeConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Volume.new
        data = {}
        data['host'] = Stubs::Host.stub(stub[:host]) unless stub[:host].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['efsVolumeConfiguration'] = Stubs::EFSVolumeConfiguration.stub(stub[:efs_volume_configuration]) unless stub[:efs_volume_configuration].nil?
        data
      end
    end

    # Structure Stubber for EFSVolumeConfiguration
    class EFSVolumeConfiguration
      def self.default(visited=[])
        return nil if visited.include?('EFSVolumeConfiguration')
        visited = visited + ['EFSVolumeConfiguration']
        {
          file_system_id: 'file_system_id',
          root_directory: 'root_directory',
          transit_encryption: 'transit_encryption',
          transit_encryption_port: 1,
          authorization_config: EFSAuthorizationConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EFSVolumeConfiguration.new
        data = {}
        data['fileSystemId'] = stub[:file_system_id] unless stub[:file_system_id].nil?
        data['rootDirectory'] = stub[:root_directory] unless stub[:root_directory].nil?
        data['transitEncryption'] = stub[:transit_encryption] unless stub[:transit_encryption].nil?
        data['transitEncryptionPort'] = stub[:transit_encryption_port] unless stub[:transit_encryption_port].nil?
        data['authorizationConfig'] = Stubs::EFSAuthorizationConfig.stub(stub[:authorization_config]) unless stub[:authorization_config].nil?
        data
      end
    end

    # Structure Stubber for EFSAuthorizationConfig
    class EFSAuthorizationConfig
      def self.default(visited=[])
        return nil if visited.include?('EFSAuthorizationConfig')
        visited = visited + ['EFSAuthorizationConfig']
        {
          access_point_id: 'access_point_id',
          iam: 'iam',
        }
      end

      def self.stub(stub)
        stub ||= Types::EFSAuthorizationConfig.new
        data = {}
        data['accessPointId'] = stub[:access_point_id] unless stub[:access_point_id].nil?
        data['iam'] = stub[:iam] unless stub[:iam].nil?
        data
      end
    end

    # Structure Stubber for Host
    class Host
      def self.default(visited=[])
        return nil if visited.include?('Host')
        visited = visited + ['Host']
        {
          source_path: 'source_path',
        }
      end

      def self.stub(stub)
        stub ||= Types::Host.new
        data = {}
        data['sourcePath'] = stub[:source_path] unless stub[:source_path].nil?
        data
      end
    end

    # Structure Stubber for JobTimeout
    class JobTimeout
      def self.default(visited=[])
        return nil if visited.include?('JobTimeout')
        visited = visited + ['JobTimeout']
        {
          attempt_duration_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::JobTimeout.new
        data = {}
        data['attemptDurationSeconds'] = stub[:attempt_duration_seconds] unless stub[:attempt_duration_seconds].nil?
        data
      end
    end

    # Structure Stubber for RetryStrategy
    class RetryStrategy
      def self.default(visited=[])
        return nil if visited.include?('RetryStrategy')
        visited = visited + ['RetryStrategy']
        {
          attempts: 1,
          evaluate_on_exit: EvaluateOnExitList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RetryStrategy.new
        data = {}
        data['attempts'] = stub[:attempts] unless stub[:attempts].nil?
        data['evaluateOnExit'] = Stubs::EvaluateOnExitList.stub(stub[:evaluate_on_exit]) unless stub[:evaluate_on_exit].nil?
        data
      end
    end

    # List Stubber for EvaluateOnExitList
    class EvaluateOnExitList
      def self.default(visited=[])
        return nil if visited.include?('EvaluateOnExitList')
        visited = visited + ['EvaluateOnExitList']
        [
          EvaluateOnExit.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EvaluateOnExit.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EvaluateOnExit
    class EvaluateOnExit
      def self.default(visited=[])
        return nil if visited.include?('EvaluateOnExit')
        visited = visited + ['EvaluateOnExit']
        {
          on_status_reason: 'on_status_reason',
          on_reason: 'on_reason',
          on_exit_code: 'on_exit_code',
          action: 'action',
        }
      end

      def self.stub(stub)
        stub ||= Types::EvaluateOnExit.new
        data = {}
        data['onStatusReason'] = stub[:on_status_reason] unless stub[:on_status_reason].nil?
        data['onReason'] = stub[:on_reason] unless stub[:on_reason].nil?
        data['onExitCode'] = stub[:on_exit_code] unless stub[:on_exit_code].nil?
        data['action'] = stub[:action] unless stub[:action].nil?
        data
      end
    end

    # Map Stubber for ParametersMap
    class ParametersMap
      def self.default(visited=[])
        return nil if visited.include?('ParametersMap')
        visited = visited + ['ParametersMap']
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

    # Operation Stubber for DescribeJobQueues
    class DescribeJobQueues
      def self.default(visited=[])
        {
          job_queues: JobQueueDetailList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobQueues'] = Stubs::JobQueueDetailList.stub(stub[:job_queues]) unless stub[:job_queues].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for JobQueueDetailList
    class JobQueueDetailList
      def self.default(visited=[])
        return nil if visited.include?('JobQueueDetailList')
        visited = visited + ['JobQueueDetailList']
        [
          JobQueueDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::JobQueueDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for JobQueueDetail
    class JobQueueDetail
      def self.default(visited=[])
        return nil if visited.include?('JobQueueDetail')
        visited = visited + ['JobQueueDetail']
        {
          job_queue_name: 'job_queue_name',
          job_queue_arn: 'job_queue_arn',
          state: 'state',
          scheduling_policy_arn: 'scheduling_policy_arn',
          status: 'status',
          status_reason: 'status_reason',
          priority: 1,
          compute_environment_order: ComputeEnvironmentOrders.default(visited),
          tags: TagrisTagsMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JobQueueDetail.new
        data = {}
        data['jobQueueName'] = stub[:job_queue_name] unless stub[:job_queue_name].nil?
        data['jobQueueArn'] = stub[:job_queue_arn] unless stub[:job_queue_arn].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['schedulingPolicyArn'] = stub[:scheduling_policy_arn] unless stub[:scheduling_policy_arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        data['priority'] = stub[:priority] unless stub[:priority].nil?
        data['computeEnvironmentOrder'] = Stubs::ComputeEnvironmentOrders.stub(stub[:compute_environment_order]) unless stub[:compute_environment_order].nil?
        data['tags'] = Stubs::TagrisTagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # List Stubber for ComputeEnvironmentOrders
    class ComputeEnvironmentOrders
      def self.default(visited=[])
        return nil if visited.include?('ComputeEnvironmentOrders')
        visited = visited + ['ComputeEnvironmentOrders']
        [
          ComputeEnvironmentOrder.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ComputeEnvironmentOrder.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ComputeEnvironmentOrder
    class ComputeEnvironmentOrder
      def self.default(visited=[])
        return nil if visited.include?('ComputeEnvironmentOrder')
        visited = visited + ['ComputeEnvironmentOrder']
        {
          order: 1,
          compute_environment: 'compute_environment',
        }
      end

      def self.stub(stub)
        stub ||= Types::ComputeEnvironmentOrder.new
        data = {}
        data['order'] = stub[:order] unless stub[:order].nil?
        data['computeEnvironment'] = stub[:compute_environment] unless stub[:compute_environment].nil?
        data
      end
    end

    # Operation Stubber for DescribeJobs
    class DescribeJobs
      def self.default(visited=[])
        {
          jobs: JobDetailList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobs'] = Stubs::JobDetailList.stub(stub[:jobs]) unless stub[:jobs].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for JobDetailList
    class JobDetailList
      def self.default(visited=[])
        return nil if visited.include?('JobDetailList')
        visited = visited + ['JobDetailList']
        [
          JobDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::JobDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for JobDetail
    class JobDetail
      def self.default(visited=[])
        return nil if visited.include?('JobDetail')
        visited = visited + ['JobDetail']
        {
          job_arn: 'job_arn',
          job_name: 'job_name',
          job_id: 'job_id',
          job_queue: 'job_queue',
          status: 'status',
          share_identifier: 'share_identifier',
          scheduling_priority: 1,
          attempts: AttemptDetails.default(visited),
          status_reason: 'status_reason',
          created_at: 1,
          retry_strategy: RetryStrategy.default(visited),
          started_at: 1,
          stopped_at: 1,
          depends_on: JobDependencyList.default(visited),
          job_definition: 'job_definition',
          parameters: ParametersMap.default(visited),
          container: ContainerDetail.default(visited),
          node_details: NodeDetails.default(visited),
          node_properties: NodeProperties.default(visited),
          array_properties: ArrayPropertiesDetail.default(visited),
          timeout: JobTimeout.default(visited),
          tags: TagrisTagsMap.default(visited),
          propagate_tags: false,
          platform_capabilities: PlatformCapabilityList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JobDetail.new
        data = {}
        data['jobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        data['jobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['jobQueue'] = stub[:job_queue] unless stub[:job_queue].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['shareIdentifier'] = stub[:share_identifier] unless stub[:share_identifier].nil?
        data['schedulingPriority'] = stub[:scheduling_priority] unless stub[:scheduling_priority].nil?
        data['attempts'] = Stubs::AttemptDetails.stub(stub[:attempts]) unless stub[:attempts].nil?
        data['statusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        data['createdAt'] = stub[:created_at] unless stub[:created_at].nil?
        data['retryStrategy'] = Stubs::RetryStrategy.stub(stub[:retry_strategy]) unless stub[:retry_strategy].nil?
        data['startedAt'] = stub[:started_at] unless stub[:started_at].nil?
        data['stoppedAt'] = stub[:stopped_at] unless stub[:stopped_at].nil?
        data['dependsOn'] = Stubs::JobDependencyList.stub(stub[:depends_on]) unless stub[:depends_on].nil?
        data['jobDefinition'] = stub[:job_definition] unless stub[:job_definition].nil?
        data['parameters'] = Stubs::ParametersMap.stub(stub[:parameters]) unless stub[:parameters].nil?
        data['container'] = Stubs::ContainerDetail.stub(stub[:container]) unless stub[:container].nil?
        data['nodeDetails'] = Stubs::NodeDetails.stub(stub[:node_details]) unless stub[:node_details].nil?
        data['nodeProperties'] = Stubs::NodeProperties.stub(stub[:node_properties]) unless stub[:node_properties].nil?
        data['arrayProperties'] = Stubs::ArrayPropertiesDetail.stub(stub[:array_properties]) unless stub[:array_properties].nil?
        data['timeout'] = Stubs::JobTimeout.stub(stub[:timeout]) unless stub[:timeout].nil?
        data['tags'] = Stubs::TagrisTagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['propagateTags'] = stub[:propagate_tags] unless stub[:propagate_tags].nil?
        data['platformCapabilities'] = Stubs::PlatformCapabilityList.stub(stub[:platform_capabilities]) unless stub[:platform_capabilities].nil?
        data
      end
    end

    # Structure Stubber for ArrayPropertiesDetail
    class ArrayPropertiesDetail
      def self.default(visited=[])
        return nil if visited.include?('ArrayPropertiesDetail')
        visited = visited + ['ArrayPropertiesDetail']
        {
          status_summary: ArrayJobStatusSummary.default(visited),
          size: 1,
          index: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ArrayPropertiesDetail.new
        data = {}
        data['statusSummary'] = Stubs::ArrayJobStatusSummary.stub(stub[:status_summary]) unless stub[:status_summary].nil?
        data['size'] = stub[:size] unless stub[:size].nil?
        data['index'] = stub[:index] unless stub[:index].nil?
        data
      end
    end

    # Map Stubber for ArrayJobStatusSummary
    class ArrayJobStatusSummary
      def self.default(visited=[])
        return nil if visited.include?('ArrayJobStatusSummary')
        visited = visited + ['ArrayJobStatusSummary']
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

    # Structure Stubber for NodeDetails
    class NodeDetails
      def self.default(visited=[])
        return nil if visited.include?('NodeDetails')
        visited = visited + ['NodeDetails']
        {
          node_index: 1,
          is_main_node: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::NodeDetails.new
        data = {}
        data['nodeIndex'] = stub[:node_index] unless stub[:node_index].nil?
        data['isMainNode'] = stub[:is_main_node] unless stub[:is_main_node].nil?
        data
      end
    end

    # Structure Stubber for ContainerDetail
    class ContainerDetail
      def self.default(visited=[])
        return nil if visited.include?('ContainerDetail')
        visited = visited + ['ContainerDetail']
        {
          image: 'image',
          vcpus: 1,
          memory: 1,
          command: StringList.default(visited),
          job_role_arn: 'job_role_arn',
          execution_role_arn: 'execution_role_arn',
          volumes: Volumes.default(visited),
          environment: EnvironmentVariables.default(visited),
          mount_points: MountPoints.default(visited),
          readonly_root_filesystem: false,
          ulimits: Ulimits.default(visited),
          privileged: false,
          user: 'user',
          exit_code: 1,
          reason: 'reason',
          container_instance_arn: 'container_instance_arn',
          task_arn: 'task_arn',
          log_stream_name: 'log_stream_name',
          instance_type: 'instance_type',
          network_interfaces: NetworkInterfaceList.default(visited),
          resource_requirements: ResourceRequirements.default(visited),
          linux_parameters: LinuxParameters.default(visited),
          log_configuration: LogConfiguration.default(visited),
          secrets: SecretList.default(visited),
          network_configuration: NetworkConfiguration.default(visited),
          fargate_platform_configuration: FargatePlatformConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ContainerDetail.new
        data = {}
        data['image'] = stub[:image] unless stub[:image].nil?
        data['vcpus'] = stub[:vcpus] unless stub[:vcpus].nil?
        data['memory'] = stub[:memory] unless stub[:memory].nil?
        data['command'] = Stubs::StringList.stub(stub[:command]) unless stub[:command].nil?
        data['jobRoleArn'] = stub[:job_role_arn] unless stub[:job_role_arn].nil?
        data['executionRoleArn'] = stub[:execution_role_arn] unless stub[:execution_role_arn].nil?
        data['volumes'] = Stubs::Volumes.stub(stub[:volumes]) unless stub[:volumes].nil?
        data['environment'] = Stubs::EnvironmentVariables.stub(stub[:environment]) unless stub[:environment].nil?
        data['mountPoints'] = Stubs::MountPoints.stub(stub[:mount_points]) unless stub[:mount_points].nil?
        data['readonlyRootFilesystem'] = stub[:readonly_root_filesystem] unless stub[:readonly_root_filesystem].nil?
        data['ulimits'] = Stubs::Ulimits.stub(stub[:ulimits]) unless stub[:ulimits].nil?
        data['privileged'] = stub[:privileged] unless stub[:privileged].nil?
        data['user'] = stub[:user] unless stub[:user].nil?
        data['exitCode'] = stub[:exit_code] unless stub[:exit_code].nil?
        data['reason'] = stub[:reason] unless stub[:reason].nil?
        data['containerInstanceArn'] = stub[:container_instance_arn] unless stub[:container_instance_arn].nil?
        data['taskArn'] = stub[:task_arn] unless stub[:task_arn].nil?
        data['logStreamName'] = stub[:log_stream_name] unless stub[:log_stream_name].nil?
        data['instanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['networkInterfaces'] = Stubs::NetworkInterfaceList.stub(stub[:network_interfaces]) unless stub[:network_interfaces].nil?
        data['resourceRequirements'] = Stubs::ResourceRequirements.stub(stub[:resource_requirements]) unless stub[:resource_requirements].nil?
        data['linuxParameters'] = Stubs::LinuxParameters.stub(stub[:linux_parameters]) unless stub[:linux_parameters].nil?
        data['logConfiguration'] = Stubs::LogConfiguration.stub(stub[:log_configuration]) unless stub[:log_configuration].nil?
        data['secrets'] = Stubs::SecretList.stub(stub[:secrets]) unless stub[:secrets].nil?
        data['networkConfiguration'] = Stubs::NetworkConfiguration.stub(stub[:network_configuration]) unless stub[:network_configuration].nil?
        data['fargatePlatformConfiguration'] = Stubs::FargatePlatformConfiguration.stub(stub[:fargate_platform_configuration]) unless stub[:fargate_platform_configuration].nil?
        data
      end
    end

    # List Stubber for NetworkInterfaceList
    class NetworkInterfaceList
      def self.default(visited=[])
        return nil if visited.include?('NetworkInterfaceList')
        visited = visited + ['NetworkInterfaceList']
        [
          NetworkInterface.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::NetworkInterface.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NetworkInterface
    class NetworkInterface
      def self.default(visited=[])
        return nil if visited.include?('NetworkInterface')
        visited = visited + ['NetworkInterface']
        {
          attachment_id: 'attachment_id',
          ipv6_address: 'ipv6_address',
          private_ipv4_address: 'private_ipv4_address',
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkInterface.new
        data = {}
        data['attachmentId'] = stub[:attachment_id] unless stub[:attachment_id].nil?
        data['ipv6Address'] = stub[:ipv6_address] unless stub[:ipv6_address].nil?
        data['privateIpv4Address'] = stub[:private_ipv4_address] unless stub[:private_ipv4_address].nil?
        data
      end
    end

    # List Stubber for JobDependencyList
    class JobDependencyList
      def self.default(visited=[])
        return nil if visited.include?('JobDependencyList')
        visited = visited + ['JobDependencyList']
        [
          JobDependency.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::JobDependency.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for JobDependency
    class JobDependency
      def self.default(visited=[])
        return nil if visited.include?('JobDependency')
        visited = visited + ['JobDependency']
        {
          job_id: 'job_id',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::JobDependency.new
        data = {}
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # List Stubber for AttemptDetails
    class AttemptDetails
      def self.default(visited=[])
        return nil if visited.include?('AttemptDetails')
        visited = visited + ['AttemptDetails']
        [
          AttemptDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AttemptDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AttemptDetail
    class AttemptDetail
      def self.default(visited=[])
        return nil if visited.include?('AttemptDetail')
        visited = visited + ['AttemptDetail']
        {
          container: AttemptContainerDetail.default(visited),
          started_at: 1,
          stopped_at: 1,
          status_reason: 'status_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::AttemptDetail.new
        data = {}
        data['container'] = Stubs::AttemptContainerDetail.stub(stub[:container]) unless stub[:container].nil?
        data['startedAt'] = stub[:started_at] unless stub[:started_at].nil?
        data['stoppedAt'] = stub[:stopped_at] unless stub[:stopped_at].nil?
        data['statusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        data
      end
    end

    # Structure Stubber for AttemptContainerDetail
    class AttemptContainerDetail
      def self.default(visited=[])
        return nil if visited.include?('AttemptContainerDetail')
        visited = visited + ['AttemptContainerDetail']
        {
          container_instance_arn: 'container_instance_arn',
          task_arn: 'task_arn',
          exit_code: 1,
          reason: 'reason',
          log_stream_name: 'log_stream_name',
          network_interfaces: NetworkInterfaceList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AttemptContainerDetail.new
        data = {}
        data['containerInstanceArn'] = stub[:container_instance_arn] unless stub[:container_instance_arn].nil?
        data['taskArn'] = stub[:task_arn] unless stub[:task_arn].nil?
        data['exitCode'] = stub[:exit_code] unless stub[:exit_code].nil?
        data['reason'] = stub[:reason] unless stub[:reason].nil?
        data['logStreamName'] = stub[:log_stream_name] unless stub[:log_stream_name].nil?
        data['networkInterfaces'] = Stubs::NetworkInterfaceList.stub(stub[:network_interfaces]) unless stub[:network_interfaces].nil?
        data
      end
    end

    # Operation Stubber for DescribeSchedulingPolicies
    class DescribeSchedulingPolicies
      def self.default(visited=[])
        {
          scheduling_policies: SchedulingPolicyDetailList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['schedulingPolicies'] = Stubs::SchedulingPolicyDetailList.stub(stub[:scheduling_policies]) unless stub[:scheduling_policies].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SchedulingPolicyDetailList
    class SchedulingPolicyDetailList
      def self.default(visited=[])
        return nil if visited.include?('SchedulingPolicyDetailList')
        visited = visited + ['SchedulingPolicyDetailList']
        [
          SchedulingPolicyDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SchedulingPolicyDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SchedulingPolicyDetail
    class SchedulingPolicyDetail
      def self.default(visited=[])
        return nil if visited.include?('SchedulingPolicyDetail')
        visited = visited + ['SchedulingPolicyDetail']
        {
          name: 'name',
          arn: 'arn',
          fairshare_policy: FairsharePolicy.default(visited),
          tags: TagrisTagsMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SchedulingPolicyDetail.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['fairsharePolicy'] = Stubs::FairsharePolicy.stub(stub[:fairshare_policy]) unless stub[:fairshare_policy].nil?
        data['tags'] = Stubs::TagrisTagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Structure Stubber for FairsharePolicy
    class FairsharePolicy
      def self.default(visited=[])
        return nil if visited.include?('FairsharePolicy')
        visited = visited + ['FairsharePolicy']
        {
          share_decay_seconds: 1,
          compute_reservation: 1,
          share_distribution: ShareAttributesList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FairsharePolicy.new
        data = {}
        data['shareDecaySeconds'] = stub[:share_decay_seconds] unless stub[:share_decay_seconds].nil?
        data['computeReservation'] = stub[:compute_reservation] unless stub[:compute_reservation].nil?
        data['shareDistribution'] = Stubs::ShareAttributesList.stub(stub[:share_distribution]) unless stub[:share_distribution].nil?
        data
      end
    end

    # List Stubber for ShareAttributesList
    class ShareAttributesList
      def self.default(visited=[])
        return nil if visited.include?('ShareAttributesList')
        visited = visited + ['ShareAttributesList']
        [
          ShareAttributes.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ShareAttributes.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ShareAttributes
    class ShareAttributes
      def self.default(visited=[])
        return nil if visited.include?('ShareAttributes')
        visited = visited + ['ShareAttributes']
        {
          share_identifier: 'share_identifier',
          weight_factor: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::ShareAttributes.new
        data = {}
        data['shareIdentifier'] = stub[:share_identifier] unless stub[:share_identifier].nil?
        data['weightFactor'] = Hearth::NumberHelper.serialize(stub[:weight_factor])
        data
      end
    end

    # Operation Stubber for ListJobs
    class ListJobs
      def self.default(visited=[])
        {
          job_summary_list: JobSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobSummaryList'] = Stubs::JobSummaryList.stub(stub[:job_summary_list]) unless stub[:job_summary_list].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for JobSummaryList
    class JobSummaryList
      def self.default(visited=[])
        return nil if visited.include?('JobSummaryList')
        visited = visited + ['JobSummaryList']
        [
          JobSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::JobSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for JobSummary
    class JobSummary
      def self.default(visited=[])
        return nil if visited.include?('JobSummary')
        visited = visited + ['JobSummary']
        {
          job_arn: 'job_arn',
          job_id: 'job_id',
          job_name: 'job_name',
          created_at: 1,
          status: 'status',
          status_reason: 'status_reason',
          started_at: 1,
          stopped_at: 1,
          container: ContainerSummary.default(visited),
          array_properties: ArrayPropertiesSummary.default(visited),
          node_properties: NodePropertiesSummary.default(visited),
          job_definition: 'job_definition',
        }
      end

      def self.stub(stub)
        stub ||= Types::JobSummary.new
        data = {}
        data['jobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['jobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['createdAt'] = stub[:created_at] unless stub[:created_at].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        data['startedAt'] = stub[:started_at] unless stub[:started_at].nil?
        data['stoppedAt'] = stub[:stopped_at] unless stub[:stopped_at].nil?
        data['container'] = Stubs::ContainerSummary.stub(stub[:container]) unless stub[:container].nil?
        data['arrayProperties'] = Stubs::ArrayPropertiesSummary.stub(stub[:array_properties]) unless stub[:array_properties].nil?
        data['nodeProperties'] = Stubs::NodePropertiesSummary.stub(stub[:node_properties]) unless stub[:node_properties].nil?
        data['jobDefinition'] = stub[:job_definition] unless stub[:job_definition].nil?
        data
      end
    end

    # Structure Stubber for NodePropertiesSummary
    class NodePropertiesSummary
      def self.default(visited=[])
        return nil if visited.include?('NodePropertiesSummary')
        visited = visited + ['NodePropertiesSummary']
        {
          is_main_node: false,
          num_nodes: 1,
          node_index: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::NodePropertiesSummary.new
        data = {}
        data['isMainNode'] = stub[:is_main_node] unless stub[:is_main_node].nil?
        data['numNodes'] = stub[:num_nodes] unless stub[:num_nodes].nil?
        data['nodeIndex'] = stub[:node_index] unless stub[:node_index].nil?
        data
      end
    end

    # Structure Stubber for ArrayPropertiesSummary
    class ArrayPropertiesSummary
      def self.default(visited=[])
        return nil if visited.include?('ArrayPropertiesSummary')
        visited = visited + ['ArrayPropertiesSummary']
        {
          size: 1,
          index: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ArrayPropertiesSummary.new
        data = {}
        data['size'] = stub[:size] unless stub[:size].nil?
        data['index'] = stub[:index] unless stub[:index].nil?
        data
      end
    end

    # Structure Stubber for ContainerSummary
    class ContainerSummary
      def self.default(visited=[])
        return nil if visited.include?('ContainerSummary')
        visited = visited + ['ContainerSummary']
        {
          exit_code: 1,
          reason: 'reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::ContainerSummary.new
        data = {}
        data['exitCode'] = stub[:exit_code] unless stub[:exit_code].nil?
        data['reason'] = stub[:reason] unless stub[:reason].nil?
        data
      end
    end

    # Operation Stubber for ListSchedulingPolicies
    class ListSchedulingPolicies
      def self.default(visited=[])
        {
          scheduling_policies: SchedulingPolicyListingDetailList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['schedulingPolicies'] = Stubs::SchedulingPolicyListingDetailList.stub(stub[:scheduling_policies]) unless stub[:scheduling_policies].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SchedulingPolicyListingDetailList
    class SchedulingPolicyListingDetailList
      def self.default(visited=[])
        return nil if visited.include?('SchedulingPolicyListingDetailList')
        visited = visited + ['SchedulingPolicyListingDetailList']
        [
          SchedulingPolicyListingDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SchedulingPolicyListingDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SchedulingPolicyListingDetail
    class SchedulingPolicyListingDetail
      def self.default(visited=[])
        return nil if visited.include?('SchedulingPolicyListingDetail')
        visited = visited + ['SchedulingPolicyListingDetail']
        {
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::SchedulingPolicyListingDetail.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagrisTagsMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::TagrisTagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RegisterJobDefinition
    class RegisterJobDefinition
      def self.default(visited=[])
        {
          job_definition_name: 'job_definition_name',
          job_definition_arn: 'job_definition_arn',
          revision: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobDefinitionName'] = stub[:job_definition_name] unless stub[:job_definition_name].nil?
        data['jobDefinitionArn'] = stub[:job_definition_arn] unless stub[:job_definition_arn].nil?
        data['revision'] = stub[:revision] unless stub[:revision].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for SubmitJob
    class SubmitJob
      def self.default(visited=[])
        {
          job_arn: 'job_arn',
          job_name: 'job_name',
          job_id: 'job_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        data['jobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Stubber for TerminateJob
    class TerminateJob
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

    # Operation Stubber for UpdateComputeEnvironment
    class UpdateComputeEnvironment
      def self.default(visited=[])
        {
          compute_environment_name: 'compute_environment_name',
          compute_environment_arn: 'compute_environment_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['computeEnvironmentName'] = stub[:compute_environment_name] unless stub[:compute_environment_name].nil?
        data['computeEnvironmentArn'] = stub[:compute_environment_arn] unless stub[:compute_environment_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateJobQueue
    class UpdateJobQueue
      def self.default(visited=[])
        {
          job_queue_name: 'job_queue_name',
          job_queue_arn: 'job_queue_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobQueueName'] = stub[:job_queue_name] unless stub[:job_queue_name].nil?
        data['jobQueueArn'] = stub[:job_queue_arn] unless stub[:job_queue_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateSchedulingPolicy
    class UpdateSchedulingPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end
  end
end
