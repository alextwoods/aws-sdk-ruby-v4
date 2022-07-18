# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Batch
  module Builders

    # Operation Builder for CancelJob
    class CancelJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/canceljob')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['jobId'] = input[:job_id] unless input[:job_id].nil?
        data['reason'] = input[:reason] unless input[:reason].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateComputeEnvironment
    class CreateComputeEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/createcomputeenvironment')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['computeEnvironmentName'] = input[:compute_environment_name] unless input[:compute_environment_name].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['state'] = input[:state] unless input[:state].nil?
        data['unmanagedvCpus'] = input[:unmanagedv_cpus] unless input[:unmanagedv_cpus].nil?
        data['computeResources'] = Builders::ComputeResource.build(input[:compute_resources]) unless input[:compute_resources].nil?
        data['serviceRole'] = input[:service_role] unless input[:service_role].nil?
        data['tags'] = Builders::TagrisTagsMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagrisTagsMap
    class TagrisTagsMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for ComputeResource
    class ComputeResource
      def self.build(input)
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['allocationStrategy'] = input[:allocation_strategy] unless input[:allocation_strategy].nil?
        data['minvCpus'] = input[:minv_cpus] unless input[:minv_cpus].nil?
        data['maxvCpus'] = input[:maxv_cpus] unless input[:maxv_cpus].nil?
        data['desiredvCpus'] = input[:desiredv_cpus] unless input[:desiredv_cpus].nil?
        data['instanceTypes'] = Builders::StringList.build(input[:instance_types]) unless input[:instance_types].nil?
        data['imageId'] = input[:image_id] unless input[:image_id].nil?
        data['subnets'] = Builders::StringList.build(input[:subnets]) unless input[:subnets].nil?
        data['securityGroupIds'] = Builders::StringList.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data['ec2KeyPair'] = input[:ec2_key_pair] unless input[:ec2_key_pair].nil?
        data['instanceRole'] = input[:instance_role] unless input[:instance_role].nil?
        data['tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
        data['placementGroup'] = input[:placement_group] unless input[:placement_group].nil?
        data['bidPercentage'] = input[:bid_percentage] unless input[:bid_percentage].nil?
        data['spotIamFleetRole'] = input[:spot_iam_fleet_role] unless input[:spot_iam_fleet_role].nil?
        data['launchTemplate'] = Builders::LaunchTemplateSpecification.build(input[:launch_template]) unless input[:launch_template].nil?
        data['ec2Configuration'] = Builders::Ec2ConfigurationList.build(input[:ec2_configuration]) unless input[:ec2_configuration].nil?
        data
      end
    end

    # List Builder for Ec2ConfigurationList
    class Ec2ConfigurationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Ec2Configuration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Ec2Configuration
    class Ec2Configuration
      def self.build(input)
        data = {}
        data['imageType'] = input[:image_type] unless input[:image_type].nil?
        data['imageIdOverride'] = input[:image_id_override] unless input[:image_id_override].nil?
        data
      end
    end

    # Structure Builder for LaunchTemplateSpecification
    class LaunchTemplateSpecification
      def self.build(input)
        data = {}
        data['launchTemplateId'] = input[:launch_template_id] unless input[:launch_template_id].nil?
        data['launchTemplateName'] = input[:launch_template_name] unless input[:launch_template_name].nil?
        data['version'] = input[:version] unless input[:version].nil?
        data
      end
    end

    # Map Builder for TagsMap
    class TagsMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for StringList
    class StringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateJobQueue
    class CreateJobQueue
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/createjobqueue')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['jobQueueName'] = input[:job_queue_name] unless input[:job_queue_name].nil?
        data['state'] = input[:state] unless input[:state].nil?
        data['schedulingPolicyArn'] = input[:scheduling_policy_arn] unless input[:scheduling_policy_arn].nil?
        data['priority'] = input[:priority] unless input[:priority].nil?
        data['computeEnvironmentOrder'] = Builders::ComputeEnvironmentOrders.build(input[:compute_environment_order]) unless input[:compute_environment_order].nil?
        data['tags'] = Builders::TagrisTagsMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ComputeEnvironmentOrders
    class ComputeEnvironmentOrders
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ComputeEnvironmentOrder.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ComputeEnvironmentOrder
    class ComputeEnvironmentOrder
      def self.build(input)
        data = {}
        data['order'] = input[:order] unless input[:order].nil?
        data['computeEnvironment'] = input[:compute_environment] unless input[:compute_environment].nil?
        data
      end
    end

    # Operation Builder for CreateSchedulingPolicy
    class CreateSchedulingPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/createschedulingpolicy')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['fairsharePolicy'] = Builders::FairsharePolicy.build(input[:fairshare_policy]) unless input[:fairshare_policy].nil?
        data['tags'] = Builders::TagrisTagsMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for FairsharePolicy
    class FairsharePolicy
      def self.build(input)
        data = {}
        data['shareDecaySeconds'] = input[:share_decay_seconds] unless input[:share_decay_seconds].nil?
        data['computeReservation'] = input[:compute_reservation] unless input[:compute_reservation].nil?
        data['shareDistribution'] = Builders::ShareAttributesList.build(input[:share_distribution]) unless input[:share_distribution].nil?
        data
      end
    end

    # List Builder for ShareAttributesList
    class ShareAttributesList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ShareAttributes.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ShareAttributes
    class ShareAttributes
      def self.build(input)
        data = {}
        data['shareIdentifier'] = input[:share_identifier] unless input[:share_identifier].nil?
        data['weightFactor'] = Hearth::NumberHelper.serialize(input[:weight_factor]) unless input[:weight_factor].nil?
        data
      end
    end

    # Operation Builder for DeleteComputeEnvironment
    class DeleteComputeEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/deletecomputeenvironment')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['computeEnvironment'] = input[:compute_environment] unless input[:compute_environment].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteJobQueue
    class DeleteJobQueue
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/deletejobqueue')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['jobQueue'] = input[:job_queue] unless input[:job_queue].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteSchedulingPolicy
    class DeleteSchedulingPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/deleteschedulingpolicy')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeregisterJobDefinition
    class DeregisterJobDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/deregisterjobdefinition')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['jobDefinition'] = input[:job_definition] unless input[:job_definition].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeComputeEnvironments
    class DescribeComputeEnvironments
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/describecomputeenvironments')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['computeEnvironments'] = Builders::StringList.build(input[:compute_environments]) unless input[:compute_environments].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeJobDefinitions
    class DescribeJobDefinitions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/describejobdefinitions')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['jobDefinitions'] = Builders::StringList.build(input[:job_definitions]) unless input[:job_definitions].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['jobDefinitionName'] = input[:job_definition_name] unless input[:job_definition_name].nil?
        data['status'] = input[:status] unless input[:status].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeJobQueues
    class DescribeJobQueues
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/describejobqueues')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['jobQueues'] = Builders::StringList.build(input[:job_queues]) unless input[:job_queues].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeJobs
    class DescribeJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/describejobs')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['jobs'] = Builders::StringList.build(input[:jobs]) unless input[:jobs].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeSchedulingPolicies
    class DescribeSchedulingPolicies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/describeschedulingpolicies')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['arns'] = Builders::StringList.build(input[:arns]) unless input[:arns].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListJobs
    class ListJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/listjobs')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['jobQueue'] = input[:job_queue] unless input[:job_queue].nil?
        data['arrayJobId'] = input[:array_job_id] unless input[:array_job_id].nil?
        data['multiNodeJobId'] = input[:multi_node_job_id] unless input[:multi_node_job_id].nil?
        data['jobStatus'] = input[:job_status] unless input[:job_status].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['filters'] = Builders::ListJobsFilterList.build(input[:filters]) unless input[:filters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ListJobsFilterList
    class ListJobsFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::KeyValuesPair.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for KeyValuesPair
    class KeyValuesPair
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['values'] = Builders::StringList.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # Operation Builder for ListSchedulingPolicies
    class ListSchedulingPolicies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/listschedulingpolicies')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for RegisterJobDefinition
    class RegisterJobDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/registerjobdefinition')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['jobDefinitionName'] = input[:job_definition_name] unless input[:job_definition_name].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['parameters'] = Builders::ParametersMap.build(input[:parameters]) unless input[:parameters].nil?
        data['schedulingPriority'] = input[:scheduling_priority] unless input[:scheduling_priority].nil?
        data['containerProperties'] = Builders::ContainerProperties.build(input[:container_properties]) unless input[:container_properties].nil?
        data['nodeProperties'] = Builders::NodeProperties.build(input[:node_properties]) unless input[:node_properties].nil?
        data['retryStrategy'] = Builders::RetryStrategy.build(input[:retry_strategy]) unless input[:retry_strategy].nil?
        data['propagateTags'] = input[:propagate_tags] unless input[:propagate_tags].nil?
        data['timeout'] = Builders::JobTimeout.build(input[:timeout]) unless input[:timeout].nil?
        data['tags'] = Builders::TagrisTagsMap.build(input[:tags]) unless input[:tags].nil?
        data['platformCapabilities'] = Builders::PlatformCapabilityList.build(input[:platform_capabilities]) unless input[:platform_capabilities].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PlatformCapabilityList
    class PlatformCapabilityList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for JobTimeout
    class JobTimeout
      def self.build(input)
        data = {}
        data['attemptDurationSeconds'] = input[:attempt_duration_seconds] unless input[:attempt_duration_seconds].nil?
        data
      end
    end

    # Structure Builder for RetryStrategy
    class RetryStrategy
      def self.build(input)
        data = {}
        data['attempts'] = input[:attempts] unless input[:attempts].nil?
        data['evaluateOnExit'] = Builders::EvaluateOnExitList.build(input[:evaluate_on_exit]) unless input[:evaluate_on_exit].nil?
        data
      end
    end

    # List Builder for EvaluateOnExitList
    class EvaluateOnExitList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::EvaluateOnExit.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for EvaluateOnExit
    class EvaluateOnExit
      def self.build(input)
        data = {}
        data['onStatusReason'] = input[:on_status_reason] unless input[:on_status_reason].nil?
        data['onReason'] = input[:on_reason] unless input[:on_reason].nil?
        data['onExitCode'] = input[:on_exit_code] unless input[:on_exit_code].nil?
        data['action'] = input[:action] unless input[:action].nil?
        data
      end
    end

    # Structure Builder for NodeProperties
    class NodeProperties
      def self.build(input)
        data = {}
        data['numNodes'] = input[:num_nodes] unless input[:num_nodes].nil?
        data['mainNode'] = input[:main_node] unless input[:main_node].nil?
        data['nodeRangeProperties'] = Builders::NodeRangeProperties.build(input[:node_range_properties]) unless input[:node_range_properties].nil?
        data
      end
    end

    # List Builder for NodeRangeProperties
    class NodeRangeProperties
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::NodeRangeProperty.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for NodeRangeProperty
    class NodeRangeProperty
      def self.build(input)
        data = {}
        data['targetNodes'] = input[:target_nodes] unless input[:target_nodes].nil?
        data['container'] = Builders::ContainerProperties.build(input[:container]) unless input[:container].nil?
        data
      end
    end

    # Structure Builder for ContainerProperties
    class ContainerProperties
      def self.build(input)
        data = {}
        data['image'] = input[:image] unless input[:image].nil?
        data['vcpus'] = input[:vcpus] unless input[:vcpus].nil?
        data['memory'] = input[:memory] unless input[:memory].nil?
        data['command'] = Builders::StringList.build(input[:command]) unless input[:command].nil?
        data['jobRoleArn'] = input[:job_role_arn] unless input[:job_role_arn].nil?
        data['executionRoleArn'] = input[:execution_role_arn] unless input[:execution_role_arn].nil?
        data['volumes'] = Builders::Volumes.build(input[:volumes]) unless input[:volumes].nil?
        data['environment'] = Builders::EnvironmentVariables.build(input[:environment]) unless input[:environment].nil?
        data['mountPoints'] = Builders::MountPoints.build(input[:mount_points]) unless input[:mount_points].nil?
        data['readonlyRootFilesystem'] = input[:readonly_root_filesystem] unless input[:readonly_root_filesystem].nil?
        data['privileged'] = input[:privileged] unless input[:privileged].nil?
        data['ulimits'] = Builders::Ulimits.build(input[:ulimits]) unless input[:ulimits].nil?
        data['user'] = input[:user] unless input[:user].nil?
        data['instanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['resourceRequirements'] = Builders::ResourceRequirements.build(input[:resource_requirements]) unless input[:resource_requirements].nil?
        data['linuxParameters'] = Builders::LinuxParameters.build(input[:linux_parameters]) unless input[:linux_parameters].nil?
        data['logConfiguration'] = Builders::LogConfiguration.build(input[:log_configuration]) unless input[:log_configuration].nil?
        data['secrets'] = Builders::SecretList.build(input[:secrets]) unless input[:secrets].nil?
        data['networkConfiguration'] = Builders::NetworkConfiguration.build(input[:network_configuration]) unless input[:network_configuration].nil?
        data['fargatePlatformConfiguration'] = Builders::FargatePlatformConfiguration.build(input[:fargate_platform_configuration]) unless input[:fargate_platform_configuration].nil?
        data
      end
    end

    # Structure Builder for FargatePlatformConfiguration
    class FargatePlatformConfiguration
      def self.build(input)
        data = {}
        data['platformVersion'] = input[:platform_version] unless input[:platform_version].nil?
        data
      end
    end

    # Structure Builder for NetworkConfiguration
    class NetworkConfiguration
      def self.build(input)
        data = {}
        data['assignPublicIp'] = input[:assign_public_ip] unless input[:assign_public_ip].nil?
        data
      end
    end

    # List Builder for SecretList
    class SecretList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Secret.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Secret
    class Secret
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['valueFrom'] = input[:value_from] unless input[:value_from].nil?
        data
      end
    end

    # Structure Builder for LogConfiguration
    class LogConfiguration
      def self.build(input)
        data = {}
        data['logDriver'] = input[:log_driver] unless input[:log_driver].nil?
        data['options'] = Builders::LogConfigurationOptionsMap.build(input[:options]) unless input[:options].nil?
        data['secretOptions'] = Builders::SecretList.build(input[:secret_options]) unless input[:secret_options].nil?
        data
      end
    end

    # Map Builder for LogConfigurationOptionsMap
    class LogConfigurationOptionsMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for LinuxParameters
    class LinuxParameters
      def self.build(input)
        data = {}
        data['devices'] = Builders::DevicesList.build(input[:devices]) unless input[:devices].nil?
        data['initProcessEnabled'] = input[:init_process_enabled] unless input[:init_process_enabled].nil?
        data['sharedMemorySize'] = input[:shared_memory_size] unless input[:shared_memory_size].nil?
        data['tmpfs'] = Builders::TmpfsList.build(input[:tmpfs]) unless input[:tmpfs].nil?
        data['maxSwap'] = input[:max_swap] unless input[:max_swap].nil?
        data['swappiness'] = input[:swappiness] unless input[:swappiness].nil?
        data
      end
    end

    # List Builder for TmpfsList
    class TmpfsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tmpfs.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tmpfs
    class Tmpfs
      def self.build(input)
        data = {}
        data['containerPath'] = input[:container_path] unless input[:container_path].nil?
        data['size'] = input[:size] unless input[:size].nil?
        data['mountOptions'] = Builders::StringList.build(input[:mount_options]) unless input[:mount_options].nil?
        data
      end
    end

    # List Builder for DevicesList
    class DevicesList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Device.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Device
    class Device
      def self.build(input)
        data = {}
        data['hostPath'] = input[:host_path] unless input[:host_path].nil?
        data['containerPath'] = input[:container_path] unless input[:container_path].nil?
        data['permissions'] = Builders::DeviceCgroupPermissions.build(input[:permissions]) unless input[:permissions].nil?
        data
      end
    end

    # List Builder for DeviceCgroupPermissions
    class DeviceCgroupPermissions
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ResourceRequirements
    class ResourceRequirements
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ResourceRequirement.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ResourceRequirement
    class ResourceRequirement
      def self.build(input)
        data = {}
        data['value'] = input[:value] unless input[:value].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # List Builder for Ulimits
    class Ulimits
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Ulimit.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Ulimit
    class Ulimit
      def self.build(input)
        data = {}
        data['hardLimit'] = input[:hard_limit] unless input[:hard_limit].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['softLimit'] = input[:soft_limit] unless input[:soft_limit].nil?
        data
      end
    end

    # List Builder for MountPoints
    class MountPoints
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::MountPoint.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MountPoint
    class MountPoint
      def self.build(input)
        data = {}
        data['containerPath'] = input[:container_path] unless input[:container_path].nil?
        data['readOnly'] = input[:read_only] unless input[:read_only].nil?
        data['sourceVolume'] = input[:source_volume] unless input[:source_volume].nil?
        data
      end
    end

    # List Builder for EnvironmentVariables
    class EnvironmentVariables
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::KeyValuePair.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for KeyValuePair
    class KeyValuePair
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # List Builder for Volumes
    class Volumes
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Volume.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Volume
    class Volume
      def self.build(input)
        data = {}
        data['host'] = Builders::Host.build(input[:host]) unless input[:host].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['efsVolumeConfiguration'] = Builders::EFSVolumeConfiguration.build(input[:efs_volume_configuration]) unless input[:efs_volume_configuration].nil?
        data
      end
    end

    # Structure Builder for EFSVolumeConfiguration
    class EFSVolumeConfiguration
      def self.build(input)
        data = {}
        data['fileSystemId'] = input[:file_system_id] unless input[:file_system_id].nil?
        data['rootDirectory'] = input[:root_directory] unless input[:root_directory].nil?
        data['transitEncryption'] = input[:transit_encryption] unless input[:transit_encryption].nil?
        data['transitEncryptionPort'] = input[:transit_encryption_port] unless input[:transit_encryption_port].nil?
        data['authorizationConfig'] = Builders::EFSAuthorizationConfig.build(input[:authorization_config]) unless input[:authorization_config].nil?
        data
      end
    end

    # Structure Builder for EFSAuthorizationConfig
    class EFSAuthorizationConfig
      def self.build(input)
        data = {}
        data['accessPointId'] = input[:access_point_id] unless input[:access_point_id].nil?
        data['iam'] = input[:iam] unless input[:iam].nil?
        data
      end
    end

    # Structure Builder for Host
    class Host
      def self.build(input)
        data = {}
        data['sourcePath'] = input[:source_path] unless input[:source_path].nil?
        data
      end
    end

    # Map Builder for ParametersMap
    class ParametersMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for SubmitJob
    class SubmitJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/submitjob')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['jobName'] = input[:job_name] unless input[:job_name].nil?
        data['jobQueue'] = input[:job_queue] unless input[:job_queue].nil?
        data['shareIdentifier'] = input[:share_identifier] unless input[:share_identifier].nil?
        data['schedulingPriorityOverride'] = input[:scheduling_priority_override] unless input[:scheduling_priority_override].nil?
        data['arrayProperties'] = Builders::ArrayProperties.build(input[:array_properties]) unless input[:array_properties].nil?
        data['dependsOn'] = Builders::JobDependencyList.build(input[:depends_on]) unless input[:depends_on].nil?
        data['jobDefinition'] = input[:job_definition] unless input[:job_definition].nil?
        data['parameters'] = Builders::ParametersMap.build(input[:parameters]) unless input[:parameters].nil?
        data['containerOverrides'] = Builders::ContainerOverrides.build(input[:container_overrides]) unless input[:container_overrides].nil?
        data['nodeOverrides'] = Builders::NodeOverrides.build(input[:node_overrides]) unless input[:node_overrides].nil?
        data['retryStrategy'] = Builders::RetryStrategy.build(input[:retry_strategy]) unless input[:retry_strategy].nil?
        data['propagateTags'] = input[:propagate_tags] unless input[:propagate_tags].nil?
        data['timeout'] = Builders::JobTimeout.build(input[:timeout]) unless input[:timeout].nil?
        data['tags'] = Builders::TagrisTagsMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for NodeOverrides
    class NodeOverrides
      def self.build(input)
        data = {}
        data['numNodes'] = input[:num_nodes] unless input[:num_nodes].nil?
        data['nodePropertyOverrides'] = Builders::NodePropertyOverrides.build(input[:node_property_overrides]) unless input[:node_property_overrides].nil?
        data
      end
    end

    # List Builder for NodePropertyOverrides
    class NodePropertyOverrides
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::NodePropertyOverride.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for NodePropertyOverride
    class NodePropertyOverride
      def self.build(input)
        data = {}
        data['targetNodes'] = input[:target_nodes] unless input[:target_nodes].nil?
        data['containerOverrides'] = Builders::ContainerOverrides.build(input[:container_overrides]) unless input[:container_overrides].nil?
        data
      end
    end

    # Structure Builder for ContainerOverrides
    class ContainerOverrides
      def self.build(input)
        data = {}
        data['vcpus'] = input[:vcpus] unless input[:vcpus].nil?
        data['memory'] = input[:memory] unless input[:memory].nil?
        data['command'] = Builders::StringList.build(input[:command]) unless input[:command].nil?
        data['instanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['environment'] = Builders::EnvironmentVariables.build(input[:environment]) unless input[:environment].nil?
        data['resourceRequirements'] = Builders::ResourceRequirements.build(input[:resource_requirements]) unless input[:resource_requirements].nil?
        data
      end
    end

    # List Builder for JobDependencyList
    class JobDependencyList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::JobDependency.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for JobDependency
    class JobDependency
      def self.build(input)
        data = {}
        data['jobId'] = input[:job_id] unless input[:job_id].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Structure Builder for ArrayProperties
    class ArrayProperties
      def self.build(input)
        data = {}
        data['size'] = input[:size] unless input[:size].nil?
        data
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Builders::TagrisTagsMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TerminateJob
    class TerminateJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/terminatejob')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['jobId'] = input[:job_id] unless input[:job_id].nil?
        data['reason'] = input[:reason] unless input[:reason].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for TagKeysList
    class TagKeysList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateComputeEnvironment
    class UpdateComputeEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/updatecomputeenvironment')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['computeEnvironment'] = input[:compute_environment] unless input[:compute_environment].nil?
        data['state'] = input[:state] unless input[:state].nil?
        data['unmanagedvCpus'] = input[:unmanagedv_cpus] unless input[:unmanagedv_cpus].nil?
        data['computeResources'] = Builders::ComputeResourceUpdate.build(input[:compute_resources]) unless input[:compute_resources].nil?
        data['serviceRole'] = input[:service_role] unless input[:service_role].nil?
        data['updatePolicy'] = Builders::UpdatePolicy.build(input[:update_policy]) unless input[:update_policy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for UpdatePolicy
    class UpdatePolicy
      def self.build(input)
        data = {}
        data['terminateJobsOnUpdate'] = input[:terminate_jobs_on_update] unless input[:terminate_jobs_on_update].nil?
        data['jobExecutionTimeoutMinutes'] = input[:job_execution_timeout_minutes] unless input[:job_execution_timeout_minutes].nil?
        data
      end
    end

    # Structure Builder for ComputeResourceUpdate
    class ComputeResourceUpdate
      def self.build(input)
        data = {}
        data['minvCpus'] = input[:minv_cpus] unless input[:minv_cpus].nil?
        data['maxvCpus'] = input[:maxv_cpus] unless input[:maxv_cpus].nil?
        data['desiredvCpus'] = input[:desiredv_cpus] unless input[:desiredv_cpus].nil?
        data['subnets'] = Builders::StringList.build(input[:subnets]) unless input[:subnets].nil?
        data['securityGroupIds'] = Builders::StringList.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data['allocationStrategy'] = input[:allocation_strategy] unless input[:allocation_strategy].nil?
        data['instanceTypes'] = Builders::StringList.build(input[:instance_types]) unless input[:instance_types].nil?
        data['ec2KeyPair'] = input[:ec2_key_pair] unless input[:ec2_key_pair].nil?
        data['instanceRole'] = input[:instance_role] unless input[:instance_role].nil?
        data['tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
        data['placementGroup'] = input[:placement_group] unless input[:placement_group].nil?
        data['bidPercentage'] = input[:bid_percentage] unless input[:bid_percentage].nil?
        data['launchTemplate'] = Builders::LaunchTemplateSpecification.build(input[:launch_template]) unless input[:launch_template].nil?
        data['ec2Configuration'] = Builders::Ec2ConfigurationList.build(input[:ec2_configuration]) unless input[:ec2_configuration].nil?
        data['updateToLatestImageVersion'] = input[:update_to_latest_image_version] unless input[:update_to_latest_image_version].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['imageId'] = input[:image_id] unless input[:image_id].nil?
        data
      end
    end

    # Operation Builder for UpdateJobQueue
    class UpdateJobQueue
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/updatejobqueue')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['jobQueue'] = input[:job_queue] unless input[:job_queue].nil?
        data['state'] = input[:state] unless input[:state].nil?
        data['schedulingPolicyArn'] = input[:scheduling_policy_arn] unless input[:scheduling_policy_arn].nil?
        data['priority'] = input[:priority] unless input[:priority].nil?
        data['computeEnvironmentOrder'] = Builders::ComputeEnvironmentOrders.build(input[:compute_environment_order]) unless input[:compute_environment_order].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateSchedulingPolicy
    class UpdateSchedulingPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/updateschedulingpolicy')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        data['fairsharePolicy'] = Builders::FairsharePolicy.build(input[:fairshare_policy]) unless input[:fairshare_policy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
