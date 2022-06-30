# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Batch
  module Params

    module ArrayJobStatusSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ArrayProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ArrayProperties, context: context)
        type = Types::ArrayProperties.new
        type.size = params[:size]
        type
      end
    end

    module ArrayPropertiesDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ArrayPropertiesDetail, context: context)
        type = Types::ArrayPropertiesDetail.new
        type.status_summary = ArrayJobStatusSummary.build(params[:status_summary], context: "#{context}[:status_summary]") unless params[:status_summary].nil?
        type.size = params[:size]
        type.index = params[:index]
        type
      end
    end

    module ArrayPropertiesSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ArrayPropertiesSummary, context: context)
        type = Types::ArrayPropertiesSummary.new
        type.size = params[:size]
        type.index = params[:index]
        type
      end
    end

    module AttemptContainerDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttemptContainerDetail, context: context)
        type = Types::AttemptContainerDetail.new
        type.container_instance_arn = params[:container_instance_arn]
        type.task_arn = params[:task_arn]
        type.exit_code = params[:exit_code]
        type.reason = params[:reason]
        type.log_stream_name = params[:log_stream_name]
        type.network_interfaces = NetworkInterfaceList.build(params[:network_interfaces], context: "#{context}[:network_interfaces]") unless params[:network_interfaces].nil?
        type
      end
    end

    module AttemptDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttemptDetail, context: context)
        type = Types::AttemptDetail.new
        type.container = AttemptContainerDetail.build(params[:container], context: "#{context}[:container]") unless params[:container].nil?
        type.started_at = params[:started_at]
        type.stopped_at = params[:stopped_at]
        type.status_reason = params[:status_reason]
        type
      end
    end

    module AttemptDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AttemptDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CancelJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelJobInput, context: context)
        type = Types::CancelJobInput.new
        type.job_id = params[:job_id]
        type.reason = params[:reason]
        type
      end
    end

    module CancelJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelJobOutput, context: context)
        type = Types::CancelJobOutput.new
        type
      end
    end

    module ClientException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClientException, context: context)
        type = Types::ClientException.new
        type.message = params[:message]
        type
      end
    end

    module ComputeEnvironmentDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComputeEnvironmentDetail, context: context)
        type = Types::ComputeEnvironmentDetail.new
        type.compute_environment_name = params[:compute_environment_name]
        type.compute_environment_arn = params[:compute_environment_arn]
        type.unmanagedv_cpus = params[:unmanagedv_cpus]
        type.ecs_cluster_arn = params[:ecs_cluster_arn]
        type.tags = TagrisTagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.type = params[:type]
        type.state = params[:state]
        type.status = params[:status]
        type.status_reason = params[:status_reason]
        type.compute_resources = ComputeResource.build(params[:compute_resources], context: "#{context}[:compute_resources]") unless params[:compute_resources].nil?
        type.service_role = params[:service_role]
        type.update_policy = UpdatePolicy.build(params[:update_policy], context: "#{context}[:update_policy]") unless params[:update_policy].nil?
        type
      end
    end

    module ComputeEnvironmentDetailList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ComputeEnvironmentDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ComputeEnvironmentOrder
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComputeEnvironmentOrder, context: context)
        type = Types::ComputeEnvironmentOrder.new
        type.order = params[:order]
        type.compute_environment = params[:compute_environment]
        type
      end
    end

    module ComputeEnvironmentOrders
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ComputeEnvironmentOrder.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ComputeResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComputeResource, context: context)
        type = Types::ComputeResource.new
        type.type = params[:type]
        type.allocation_strategy = params[:allocation_strategy]
        type.minv_cpus = params[:minv_cpus]
        type.maxv_cpus = params[:maxv_cpus]
        type.desiredv_cpus = params[:desiredv_cpus]
        type.instance_types = StringList.build(params[:instance_types], context: "#{context}[:instance_types]") unless params[:instance_types].nil?
        type.image_id = params[:image_id]
        type.subnets = StringList.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type.security_group_ids = StringList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.ec2_key_pair = params[:ec2_key_pair]
        type.instance_role = params[:instance_role]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.placement_group = params[:placement_group]
        type.bid_percentage = params[:bid_percentage]
        type.spot_iam_fleet_role = params[:spot_iam_fleet_role]
        type.launch_template = LaunchTemplateSpecification.build(params[:launch_template], context: "#{context}[:launch_template]") unless params[:launch_template].nil?
        type.ec2_configuration = Ec2ConfigurationList.build(params[:ec2_configuration], context: "#{context}[:ec2_configuration]") unless params[:ec2_configuration].nil?
        type
      end
    end

    module ComputeResourceUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComputeResourceUpdate, context: context)
        type = Types::ComputeResourceUpdate.new
        type.minv_cpus = params[:minv_cpus]
        type.maxv_cpus = params[:maxv_cpus]
        type.desiredv_cpus = params[:desiredv_cpus]
        type.subnets = StringList.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type.security_group_ids = StringList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.allocation_strategy = params[:allocation_strategy]
        type.instance_types = StringList.build(params[:instance_types], context: "#{context}[:instance_types]") unless params[:instance_types].nil?
        type.ec2_key_pair = params[:ec2_key_pair]
        type.instance_role = params[:instance_role]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.placement_group = params[:placement_group]
        type.bid_percentage = params[:bid_percentage]
        type.launch_template = LaunchTemplateSpecification.build(params[:launch_template], context: "#{context}[:launch_template]") unless params[:launch_template].nil?
        type.ec2_configuration = Ec2ConfigurationList.build(params[:ec2_configuration], context: "#{context}[:ec2_configuration]") unless params[:ec2_configuration].nil?
        type.update_to_latest_image_version = params[:update_to_latest_image_version]
        type.type = params[:type]
        type.image_id = params[:image_id]
        type
      end
    end

    module ContainerDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainerDetail, context: context)
        type = Types::ContainerDetail.new
        type.image = params[:image]
        type.vcpus = params[:vcpus]
        type.memory = params[:memory]
        type.command = StringList.build(params[:command], context: "#{context}[:command]") unless params[:command].nil?
        type.job_role_arn = params[:job_role_arn]
        type.execution_role_arn = params[:execution_role_arn]
        type.volumes = Volumes.build(params[:volumes], context: "#{context}[:volumes]") unless params[:volumes].nil?
        type.environment = EnvironmentVariables.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.mount_points = MountPoints.build(params[:mount_points], context: "#{context}[:mount_points]") unless params[:mount_points].nil?
        type.readonly_root_filesystem = params[:readonly_root_filesystem]
        type.ulimits = Ulimits.build(params[:ulimits], context: "#{context}[:ulimits]") unless params[:ulimits].nil?
        type.privileged = params[:privileged]
        type.user = params[:user]
        type.exit_code = params[:exit_code]
        type.reason = params[:reason]
        type.container_instance_arn = params[:container_instance_arn]
        type.task_arn = params[:task_arn]
        type.log_stream_name = params[:log_stream_name]
        type.instance_type = params[:instance_type]
        type.network_interfaces = NetworkInterfaceList.build(params[:network_interfaces], context: "#{context}[:network_interfaces]") unless params[:network_interfaces].nil?
        type.resource_requirements = ResourceRequirements.build(params[:resource_requirements], context: "#{context}[:resource_requirements]") unless params[:resource_requirements].nil?
        type.linux_parameters = LinuxParameters.build(params[:linux_parameters], context: "#{context}[:linux_parameters]") unless params[:linux_parameters].nil?
        type.log_configuration = LogConfiguration.build(params[:log_configuration], context: "#{context}[:log_configuration]") unless params[:log_configuration].nil?
        type.secrets = SecretList.build(params[:secrets], context: "#{context}[:secrets]") unless params[:secrets].nil?
        type.network_configuration = NetworkConfiguration.build(params[:network_configuration], context: "#{context}[:network_configuration]") unless params[:network_configuration].nil?
        type.fargate_platform_configuration = FargatePlatformConfiguration.build(params[:fargate_platform_configuration], context: "#{context}[:fargate_platform_configuration]") unless params[:fargate_platform_configuration].nil?
        type
      end
    end

    module ContainerOverrides
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainerOverrides, context: context)
        type = Types::ContainerOverrides.new
        type.vcpus = params[:vcpus]
        type.memory = params[:memory]
        type.command = StringList.build(params[:command], context: "#{context}[:command]") unless params[:command].nil?
        type.instance_type = params[:instance_type]
        type.environment = EnvironmentVariables.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.resource_requirements = ResourceRequirements.build(params[:resource_requirements], context: "#{context}[:resource_requirements]") unless params[:resource_requirements].nil?
        type
      end
    end

    module ContainerProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainerProperties, context: context)
        type = Types::ContainerProperties.new
        type.image = params[:image]
        type.vcpus = params[:vcpus]
        type.memory = params[:memory]
        type.command = StringList.build(params[:command], context: "#{context}[:command]") unless params[:command].nil?
        type.job_role_arn = params[:job_role_arn]
        type.execution_role_arn = params[:execution_role_arn]
        type.volumes = Volumes.build(params[:volumes], context: "#{context}[:volumes]") unless params[:volumes].nil?
        type.environment = EnvironmentVariables.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.mount_points = MountPoints.build(params[:mount_points], context: "#{context}[:mount_points]") unless params[:mount_points].nil?
        type.readonly_root_filesystem = params[:readonly_root_filesystem]
        type.privileged = params[:privileged]
        type.ulimits = Ulimits.build(params[:ulimits], context: "#{context}[:ulimits]") unless params[:ulimits].nil?
        type.user = params[:user]
        type.instance_type = params[:instance_type]
        type.resource_requirements = ResourceRequirements.build(params[:resource_requirements], context: "#{context}[:resource_requirements]") unless params[:resource_requirements].nil?
        type.linux_parameters = LinuxParameters.build(params[:linux_parameters], context: "#{context}[:linux_parameters]") unless params[:linux_parameters].nil?
        type.log_configuration = LogConfiguration.build(params[:log_configuration], context: "#{context}[:log_configuration]") unless params[:log_configuration].nil?
        type.secrets = SecretList.build(params[:secrets], context: "#{context}[:secrets]") unless params[:secrets].nil?
        type.network_configuration = NetworkConfiguration.build(params[:network_configuration], context: "#{context}[:network_configuration]") unless params[:network_configuration].nil?
        type.fargate_platform_configuration = FargatePlatformConfiguration.build(params[:fargate_platform_configuration], context: "#{context}[:fargate_platform_configuration]") unless params[:fargate_platform_configuration].nil?
        type
      end
    end

    module ContainerSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainerSummary, context: context)
        type = Types::ContainerSummary.new
        type.exit_code = params[:exit_code]
        type.reason = params[:reason]
        type
      end
    end

    module CreateComputeEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateComputeEnvironmentInput, context: context)
        type = Types::CreateComputeEnvironmentInput.new
        type.compute_environment_name = params[:compute_environment_name]
        type.type = params[:type]
        type.state = params[:state]
        type.unmanagedv_cpus = params[:unmanagedv_cpus]
        type.compute_resources = ComputeResource.build(params[:compute_resources], context: "#{context}[:compute_resources]") unless params[:compute_resources].nil?
        type.service_role = params[:service_role]
        type.tags = TagrisTagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateComputeEnvironmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateComputeEnvironmentOutput, context: context)
        type = Types::CreateComputeEnvironmentOutput.new
        type.compute_environment_name = params[:compute_environment_name]
        type.compute_environment_arn = params[:compute_environment_arn]
        type
      end
    end

    module CreateJobQueueInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateJobQueueInput, context: context)
        type = Types::CreateJobQueueInput.new
        type.job_queue_name = params[:job_queue_name]
        type.state = params[:state]
        type.scheduling_policy_arn = params[:scheduling_policy_arn]
        type.priority = params[:priority]
        type.compute_environment_order = ComputeEnvironmentOrders.build(params[:compute_environment_order], context: "#{context}[:compute_environment_order]") unless params[:compute_environment_order].nil?
        type.tags = TagrisTagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateJobQueueOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateJobQueueOutput, context: context)
        type = Types::CreateJobQueueOutput.new
        type.job_queue_name = params[:job_queue_name]
        type.job_queue_arn = params[:job_queue_arn]
        type
      end
    end

    module CreateSchedulingPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSchedulingPolicyInput, context: context)
        type = Types::CreateSchedulingPolicyInput.new
        type.name = params[:name]
        type.fairshare_policy = FairsharePolicy.build(params[:fairshare_policy], context: "#{context}[:fairshare_policy]") unless params[:fairshare_policy].nil?
        type.tags = TagrisTagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateSchedulingPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSchedulingPolicyOutput, context: context)
        type = Types::CreateSchedulingPolicyOutput.new
        type.name = params[:name]
        type.arn = params[:arn]
        type
      end
    end

    module DeleteComputeEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteComputeEnvironmentInput, context: context)
        type = Types::DeleteComputeEnvironmentInput.new
        type.compute_environment = params[:compute_environment]
        type
      end
    end

    module DeleteComputeEnvironmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteComputeEnvironmentOutput, context: context)
        type = Types::DeleteComputeEnvironmentOutput.new
        type
      end
    end

    module DeleteJobQueueInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteJobQueueInput, context: context)
        type = Types::DeleteJobQueueInput.new
        type.job_queue = params[:job_queue]
        type
      end
    end

    module DeleteJobQueueOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteJobQueueOutput, context: context)
        type = Types::DeleteJobQueueOutput.new
        type
      end
    end

    module DeleteSchedulingPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSchedulingPolicyInput, context: context)
        type = Types::DeleteSchedulingPolicyInput.new
        type.arn = params[:arn]
        type
      end
    end

    module DeleteSchedulingPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSchedulingPolicyOutput, context: context)
        type = Types::DeleteSchedulingPolicyOutput.new
        type
      end
    end

    module DeregisterJobDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterJobDefinitionInput, context: context)
        type = Types::DeregisterJobDefinitionInput.new
        type.job_definition = params[:job_definition]
        type
      end
    end

    module DeregisterJobDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterJobDefinitionOutput, context: context)
        type = Types::DeregisterJobDefinitionOutput.new
        type
      end
    end

    module DescribeComputeEnvironmentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeComputeEnvironmentsInput, context: context)
        type = Types::DescribeComputeEnvironmentsInput.new
        type.compute_environments = StringList.build(params[:compute_environments], context: "#{context}[:compute_environments]") unless params[:compute_environments].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeComputeEnvironmentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeComputeEnvironmentsOutput, context: context)
        type = Types::DescribeComputeEnvironmentsOutput.new
        type.compute_environments = ComputeEnvironmentDetailList.build(params[:compute_environments], context: "#{context}[:compute_environments]") unless params[:compute_environments].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeJobDefinitionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJobDefinitionsInput, context: context)
        type = Types::DescribeJobDefinitionsInput.new
        type.job_definitions = StringList.build(params[:job_definitions], context: "#{context}[:job_definitions]") unless params[:job_definitions].nil?
        type.max_results = params[:max_results]
        type.job_definition_name = params[:job_definition_name]
        type.status = params[:status]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeJobDefinitionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJobDefinitionsOutput, context: context)
        type = Types::DescribeJobDefinitionsOutput.new
        type.job_definitions = JobDefinitionList.build(params[:job_definitions], context: "#{context}[:job_definitions]") unless params[:job_definitions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeJobQueuesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJobQueuesInput, context: context)
        type = Types::DescribeJobQueuesInput.new
        type.job_queues = StringList.build(params[:job_queues], context: "#{context}[:job_queues]") unless params[:job_queues].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeJobQueuesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJobQueuesOutput, context: context)
        type = Types::DescribeJobQueuesOutput.new
        type.job_queues = JobQueueDetailList.build(params[:job_queues], context: "#{context}[:job_queues]") unless params[:job_queues].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJobsInput, context: context)
        type = Types::DescribeJobsInput.new
        type.jobs = StringList.build(params[:jobs], context: "#{context}[:jobs]") unless params[:jobs].nil?
        type
      end
    end

    module DescribeJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJobsOutput, context: context)
        type = Types::DescribeJobsOutput.new
        type.jobs = JobDetailList.build(params[:jobs], context: "#{context}[:jobs]") unless params[:jobs].nil?
        type
      end
    end

    module DescribeSchedulingPoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSchedulingPoliciesInput, context: context)
        type = Types::DescribeSchedulingPoliciesInput.new
        type.arns = StringList.build(params[:arns], context: "#{context}[:arns]") unless params[:arns].nil?
        type
      end
    end

    module DescribeSchedulingPoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSchedulingPoliciesOutput, context: context)
        type = Types::DescribeSchedulingPoliciesOutput.new
        type.scheduling_policies = SchedulingPolicyDetailList.build(params[:scheduling_policies], context: "#{context}[:scheduling_policies]") unless params[:scheduling_policies].nil?
        type
      end
    end

    module Device
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Device, context: context)
        type = Types::Device.new
        type.host_path = params[:host_path]
        type.container_path = params[:container_path]
        type.permissions = DeviceCgroupPermissions.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type
      end
    end

    module DeviceCgroupPermissions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DevicesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Device.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EFSAuthorizationConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EFSAuthorizationConfig, context: context)
        type = Types::EFSAuthorizationConfig.new
        type.access_point_id = params[:access_point_id]
        type.iam = params[:iam]
        type
      end
    end

    module EFSVolumeConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EFSVolumeConfiguration, context: context)
        type = Types::EFSVolumeConfiguration.new
        type.file_system_id = params[:file_system_id]
        type.root_directory = params[:root_directory]
        type.transit_encryption = params[:transit_encryption]
        type.transit_encryption_port = params[:transit_encryption_port]
        type.authorization_config = EFSAuthorizationConfig.build(params[:authorization_config], context: "#{context}[:authorization_config]") unless params[:authorization_config].nil?
        type
      end
    end

    module Ec2Configuration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Ec2Configuration, context: context)
        type = Types::Ec2Configuration.new
        type.image_type = params[:image_type]
        type.image_id_override = params[:image_id_override]
        type
      end
    end

    module Ec2ConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Ec2Configuration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EnvironmentVariables
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << KeyValuePair.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EvaluateOnExit
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EvaluateOnExit, context: context)
        type = Types::EvaluateOnExit.new
        type.on_status_reason = params[:on_status_reason]
        type.on_reason = params[:on_reason]
        type.on_exit_code = params[:on_exit_code]
        type.action = params[:action]
        type
      end
    end

    module EvaluateOnExitList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EvaluateOnExit.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FairsharePolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FairsharePolicy, context: context)
        type = Types::FairsharePolicy.new
        type.share_decay_seconds = params[:share_decay_seconds]
        type.compute_reservation = params[:compute_reservation]
        type.share_distribution = ShareAttributesList.build(params[:share_distribution], context: "#{context}[:share_distribution]") unless params[:share_distribution].nil?
        type
      end
    end

    module FargatePlatformConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FargatePlatformConfiguration, context: context)
        type = Types::FargatePlatformConfiguration.new
        type.platform_version = params[:platform_version]
        type
      end
    end

    module Host
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Host, context: context)
        type = Types::Host.new
        type.source_path = params[:source_path]
        type
      end
    end

    module JobDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobDefinition, context: context)
        type = Types::JobDefinition.new
        type.job_definition_name = params[:job_definition_name]
        type.job_definition_arn = params[:job_definition_arn]
        type.revision = params[:revision]
        type.status = params[:status]
        type.type = params[:type]
        type.scheduling_priority = params[:scheduling_priority]
        type.parameters = ParametersMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.retry_strategy = RetryStrategy.build(params[:retry_strategy], context: "#{context}[:retry_strategy]") unless params[:retry_strategy].nil?
        type.container_properties = ContainerProperties.build(params[:container_properties], context: "#{context}[:container_properties]") unless params[:container_properties].nil?
        type.timeout = JobTimeout.build(params[:timeout], context: "#{context}[:timeout]") unless params[:timeout].nil?
        type.node_properties = NodeProperties.build(params[:node_properties], context: "#{context}[:node_properties]") unless params[:node_properties].nil?
        type.tags = TagrisTagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.propagate_tags = params[:propagate_tags]
        type.platform_capabilities = PlatformCapabilityList.build(params[:platform_capabilities], context: "#{context}[:platform_capabilities]") unless params[:platform_capabilities].nil?
        type
      end
    end

    module JobDefinitionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JobDefinition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module JobDependency
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobDependency, context: context)
        type = Types::JobDependency.new
        type.job_id = params[:job_id]
        type.type = params[:type]
        type
      end
    end

    module JobDependencyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JobDependency.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module JobDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobDetail, context: context)
        type = Types::JobDetail.new
        type.job_arn = params[:job_arn]
        type.job_name = params[:job_name]
        type.job_id = params[:job_id]
        type.job_queue = params[:job_queue]
        type.status = params[:status]
        type.share_identifier = params[:share_identifier]
        type.scheduling_priority = params[:scheduling_priority]
        type.attempts = AttemptDetails.build(params[:attempts], context: "#{context}[:attempts]") unless params[:attempts].nil?
        type.status_reason = params[:status_reason]
        type.created_at = params[:created_at]
        type.retry_strategy = RetryStrategy.build(params[:retry_strategy], context: "#{context}[:retry_strategy]") unless params[:retry_strategy].nil?
        type.started_at = params[:started_at]
        type.stopped_at = params[:stopped_at]
        type.depends_on = JobDependencyList.build(params[:depends_on], context: "#{context}[:depends_on]") unless params[:depends_on].nil?
        type.job_definition = params[:job_definition]
        type.parameters = ParametersMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.container = ContainerDetail.build(params[:container], context: "#{context}[:container]") unless params[:container].nil?
        type.node_details = NodeDetails.build(params[:node_details], context: "#{context}[:node_details]") unless params[:node_details].nil?
        type.node_properties = NodeProperties.build(params[:node_properties], context: "#{context}[:node_properties]") unless params[:node_properties].nil?
        type.array_properties = ArrayPropertiesDetail.build(params[:array_properties], context: "#{context}[:array_properties]") unless params[:array_properties].nil?
        type.timeout = JobTimeout.build(params[:timeout], context: "#{context}[:timeout]") unless params[:timeout].nil?
        type.tags = TagrisTagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.propagate_tags = params[:propagate_tags]
        type.platform_capabilities = PlatformCapabilityList.build(params[:platform_capabilities], context: "#{context}[:platform_capabilities]") unless params[:platform_capabilities].nil?
        type
      end
    end

    module JobDetailList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JobDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module JobQueueDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobQueueDetail, context: context)
        type = Types::JobQueueDetail.new
        type.job_queue_name = params[:job_queue_name]
        type.job_queue_arn = params[:job_queue_arn]
        type.state = params[:state]
        type.scheduling_policy_arn = params[:scheduling_policy_arn]
        type.status = params[:status]
        type.status_reason = params[:status_reason]
        type.priority = params[:priority]
        type.compute_environment_order = ComputeEnvironmentOrders.build(params[:compute_environment_order], context: "#{context}[:compute_environment_order]") unless params[:compute_environment_order].nil?
        type.tags = TagrisTagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module JobQueueDetailList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JobQueueDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module JobSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobSummary, context: context)
        type = Types::JobSummary.new
        type.job_arn = params[:job_arn]
        type.job_id = params[:job_id]
        type.job_name = params[:job_name]
        type.created_at = params[:created_at]
        type.status = params[:status]
        type.status_reason = params[:status_reason]
        type.started_at = params[:started_at]
        type.stopped_at = params[:stopped_at]
        type.container = ContainerSummary.build(params[:container], context: "#{context}[:container]") unless params[:container].nil?
        type.array_properties = ArrayPropertiesSummary.build(params[:array_properties], context: "#{context}[:array_properties]") unless params[:array_properties].nil?
        type.node_properties = NodePropertiesSummary.build(params[:node_properties], context: "#{context}[:node_properties]") unless params[:node_properties].nil?
        type.job_definition = params[:job_definition]
        type
      end
    end

    module JobSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JobSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module JobTimeout
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobTimeout, context: context)
        type = Types::JobTimeout.new
        type.attempt_duration_seconds = params[:attempt_duration_seconds]
        type
      end
    end

    module KeyValuePair
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KeyValuePair, context: context)
        type = Types::KeyValuePair.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module KeyValuesPair
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KeyValuesPair, context: context)
        type = Types::KeyValuesPair.new
        type.name = params[:name]
        type.values = StringList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module LaunchTemplateSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchTemplateSpecification, context: context)
        type = Types::LaunchTemplateSpecification.new
        type.launch_template_id = params[:launch_template_id]
        type.launch_template_name = params[:launch_template_name]
        type.version = params[:version]
        type
      end
    end

    module LinuxParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LinuxParameters, context: context)
        type = Types::LinuxParameters.new
        type.devices = DevicesList.build(params[:devices], context: "#{context}[:devices]") unless params[:devices].nil?
        type.init_process_enabled = params[:init_process_enabled]
        type.shared_memory_size = params[:shared_memory_size]
        type.tmpfs = TmpfsList.build(params[:tmpfs], context: "#{context}[:tmpfs]") unless params[:tmpfs].nil?
        type.max_swap = params[:max_swap]
        type.swappiness = params[:swappiness]
        type
      end
    end

    module ListJobsFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << KeyValuesPair.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobsInput, context: context)
        type = Types::ListJobsInput.new
        type.job_queue = params[:job_queue]
        type.array_job_id = params[:array_job_id]
        type.multi_node_job_id = params[:multi_node_job_id]
        type.job_status = params[:job_status]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.filters = ListJobsFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobsOutput, context: context)
        type = Types::ListJobsOutput.new
        type.job_summary_list = JobSummaryList.build(params[:job_summary_list], context: "#{context}[:job_summary_list]") unless params[:job_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSchedulingPoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSchedulingPoliciesInput, context: context)
        type = Types::ListSchedulingPoliciesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSchedulingPoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSchedulingPoliciesOutput, context: context)
        type = Types::ListSchedulingPoliciesOutput.new
        type.scheduling_policies = SchedulingPolicyListingDetailList.build(params[:scheduling_policies], context: "#{context}[:scheduling_policies]") unless params[:scheduling_policies].nil?
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
        type.tags = TagrisTagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module LogConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogConfiguration, context: context)
        type = Types::LogConfiguration.new
        type.log_driver = params[:log_driver]
        type.options = LogConfigurationOptionsMap.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.secret_options = SecretList.build(params[:secret_options], context: "#{context}[:secret_options]") unless params[:secret_options].nil?
        type
      end
    end

    module LogConfigurationOptionsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module MountPoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MountPoint, context: context)
        type = Types::MountPoint.new
        type.container_path = params[:container_path]
        type.read_only = params[:read_only]
        type.source_volume = params[:source_volume]
        type
      end
    end

    module MountPoints
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MountPoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NetworkConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkConfiguration, context: context)
        type = Types::NetworkConfiguration.new
        type.assign_public_ip = params[:assign_public_ip]
        type
      end
    end

    module NetworkInterface
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkInterface, context: context)
        type = Types::NetworkInterface.new
        type.attachment_id = params[:attachment_id]
        type.ipv6_address = params[:ipv6_address]
        type.private_ipv4_address = params[:private_ipv4_address]
        type
      end
    end

    module NetworkInterfaceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NetworkInterface.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NodeDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeDetails, context: context)
        type = Types::NodeDetails.new
        type.node_index = params[:node_index]
        type.is_main_node = params[:is_main_node]
        type
      end
    end

    module NodeOverrides
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeOverrides, context: context)
        type = Types::NodeOverrides.new
        type.num_nodes = params[:num_nodes]
        type.node_property_overrides = NodePropertyOverrides.build(params[:node_property_overrides], context: "#{context}[:node_property_overrides]") unless params[:node_property_overrides].nil?
        type
      end
    end

    module NodeProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeProperties, context: context)
        type = Types::NodeProperties.new
        type.num_nodes = params[:num_nodes]
        type.main_node = params[:main_node]
        type.node_range_properties = NodeRangeProperties.build(params[:node_range_properties], context: "#{context}[:node_range_properties]") unless params[:node_range_properties].nil?
        type
      end
    end

    module NodePropertiesSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodePropertiesSummary, context: context)
        type = Types::NodePropertiesSummary.new
        type.is_main_node = params[:is_main_node]
        type.num_nodes = params[:num_nodes]
        type.node_index = params[:node_index]
        type
      end
    end

    module NodePropertyOverride
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodePropertyOverride, context: context)
        type = Types::NodePropertyOverride.new
        type.target_nodes = params[:target_nodes]
        type.container_overrides = ContainerOverrides.build(params[:container_overrides], context: "#{context}[:container_overrides]") unless params[:container_overrides].nil?
        type
      end
    end

    module NodePropertyOverrides
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NodePropertyOverride.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NodeRangeProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NodeRangeProperty.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NodeRangeProperty
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeRangeProperty, context: context)
        type = Types::NodeRangeProperty.new
        type.target_nodes = params[:target_nodes]
        type.container = ContainerProperties.build(params[:container], context: "#{context}[:container]") unless params[:container].nil?
        type
      end
    end

    module ParametersMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module PlatformCapabilityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RegisterJobDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterJobDefinitionInput, context: context)
        type = Types::RegisterJobDefinitionInput.new
        type.job_definition_name = params[:job_definition_name]
        type.type = params[:type]
        type.parameters = ParametersMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.scheduling_priority = params[:scheduling_priority]
        type.container_properties = ContainerProperties.build(params[:container_properties], context: "#{context}[:container_properties]") unless params[:container_properties].nil?
        type.node_properties = NodeProperties.build(params[:node_properties], context: "#{context}[:node_properties]") unless params[:node_properties].nil?
        type.retry_strategy = RetryStrategy.build(params[:retry_strategy], context: "#{context}[:retry_strategy]") unless params[:retry_strategy].nil?
        type.propagate_tags = params[:propagate_tags]
        type.timeout = JobTimeout.build(params[:timeout], context: "#{context}[:timeout]") unless params[:timeout].nil?
        type.tags = TagrisTagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.platform_capabilities = PlatformCapabilityList.build(params[:platform_capabilities], context: "#{context}[:platform_capabilities]") unless params[:platform_capabilities].nil?
        type
      end
    end

    module RegisterJobDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterJobDefinitionOutput, context: context)
        type = Types::RegisterJobDefinitionOutput.new
        type.job_definition_name = params[:job_definition_name]
        type.job_definition_arn = params[:job_definition_arn]
        type.revision = params[:revision]
        type
      end
    end

    module ResourceRequirement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceRequirement, context: context)
        type = Types::ResourceRequirement.new
        type.value = params[:value]
        type.type = params[:type]
        type
      end
    end

    module ResourceRequirements
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceRequirement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RetryStrategy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RetryStrategy, context: context)
        type = Types::RetryStrategy.new
        type.attempts = params[:attempts]
        type.evaluate_on_exit = EvaluateOnExitList.build(params[:evaluate_on_exit], context: "#{context}[:evaluate_on_exit]") unless params[:evaluate_on_exit].nil?
        type
      end
    end

    module SchedulingPolicyDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SchedulingPolicyDetail, context: context)
        type = Types::SchedulingPolicyDetail.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.fairshare_policy = FairsharePolicy.build(params[:fairshare_policy], context: "#{context}[:fairshare_policy]") unless params[:fairshare_policy].nil?
        type.tags = TagrisTagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module SchedulingPolicyDetailList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SchedulingPolicyDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SchedulingPolicyListingDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SchedulingPolicyListingDetail, context: context)
        type = Types::SchedulingPolicyListingDetail.new
        type.arn = params[:arn]
        type
      end
    end

    module SchedulingPolicyListingDetailList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SchedulingPolicyListingDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Secret
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Secret, context: context)
        type = Types::Secret.new
        type.name = params[:name]
        type.value_from = params[:value_from]
        type
      end
    end

    module SecretList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Secret.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServerException, context: context)
        type = Types::ServerException.new
        type.message = params[:message]
        type
      end
    end

    module ShareAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ShareAttributes, context: context)
        type = Types::ShareAttributes.new
        type.share_identifier = params[:share_identifier]
        type.weight_factor = params[:weight_factor]
        type
      end
    end

    module ShareAttributesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ShareAttributes.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SubmitJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubmitJobInput, context: context)
        type = Types::SubmitJobInput.new
        type.job_name = params[:job_name]
        type.job_queue = params[:job_queue]
        type.share_identifier = params[:share_identifier]
        type.scheduling_priority_override = params[:scheduling_priority_override]
        type.array_properties = ArrayProperties.build(params[:array_properties], context: "#{context}[:array_properties]") unless params[:array_properties].nil?
        type.depends_on = JobDependencyList.build(params[:depends_on], context: "#{context}[:depends_on]") unless params[:depends_on].nil?
        type.job_definition = params[:job_definition]
        type.parameters = ParametersMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.container_overrides = ContainerOverrides.build(params[:container_overrides], context: "#{context}[:container_overrides]") unless params[:container_overrides].nil?
        type.node_overrides = NodeOverrides.build(params[:node_overrides], context: "#{context}[:node_overrides]") unless params[:node_overrides].nil?
        type.retry_strategy = RetryStrategy.build(params[:retry_strategy], context: "#{context}[:retry_strategy]") unless params[:retry_strategy].nil?
        type.propagate_tags = params[:propagate_tags]
        type.timeout = JobTimeout.build(params[:timeout], context: "#{context}[:timeout]") unless params[:timeout].nil?
        type.tags = TagrisTagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module SubmitJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubmitJobOutput, context: context)
        type = Types::SubmitJobOutput.new
        type.job_arn = params[:job_arn]
        type.job_name = params[:job_name]
        type.job_id = params[:job_id]
        type
      end
    end

    module TagKeysList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagrisTagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module TagrisTagsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TerminateJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TerminateJobInput, context: context)
        type = Types::TerminateJobInput.new
        type.job_id = params[:job_id]
        type.reason = params[:reason]
        type
      end
    end

    module TerminateJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TerminateJobOutput, context: context)
        type = Types::TerminateJobOutput.new
        type
      end
    end

    module Tmpfs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tmpfs, context: context)
        type = Types::Tmpfs.new
        type.container_path = params[:container_path]
        type.size = params[:size]
        type.mount_options = StringList.build(params[:mount_options], context: "#{context}[:mount_options]") unless params[:mount_options].nil?
        type
      end
    end

    module TmpfsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tmpfs.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Ulimit
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Ulimit, context: context)
        type = Types::Ulimit.new
        type.hard_limit = params[:hard_limit]
        type.name = params[:name]
        type.soft_limit = params[:soft_limit]
        type
      end
    end

    module Ulimits
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Ulimit.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeysList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module UpdateComputeEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateComputeEnvironmentInput, context: context)
        type = Types::UpdateComputeEnvironmentInput.new
        type.compute_environment = params[:compute_environment]
        type.state = params[:state]
        type.unmanagedv_cpus = params[:unmanagedv_cpus]
        type.compute_resources = ComputeResourceUpdate.build(params[:compute_resources], context: "#{context}[:compute_resources]") unless params[:compute_resources].nil?
        type.service_role = params[:service_role]
        type.update_policy = UpdatePolicy.build(params[:update_policy], context: "#{context}[:update_policy]") unless params[:update_policy].nil?
        type
      end
    end

    module UpdateComputeEnvironmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateComputeEnvironmentOutput, context: context)
        type = Types::UpdateComputeEnvironmentOutput.new
        type.compute_environment_name = params[:compute_environment_name]
        type.compute_environment_arn = params[:compute_environment_arn]
        type
      end
    end

    module UpdateJobQueueInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateJobQueueInput, context: context)
        type = Types::UpdateJobQueueInput.new
        type.job_queue = params[:job_queue]
        type.state = params[:state]
        type.scheduling_policy_arn = params[:scheduling_policy_arn]
        type.priority = params[:priority]
        type.compute_environment_order = ComputeEnvironmentOrders.build(params[:compute_environment_order], context: "#{context}[:compute_environment_order]") unless params[:compute_environment_order].nil?
        type
      end
    end

    module UpdateJobQueueOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateJobQueueOutput, context: context)
        type = Types::UpdateJobQueueOutput.new
        type.job_queue_name = params[:job_queue_name]
        type.job_queue_arn = params[:job_queue_arn]
        type
      end
    end

    module UpdatePolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePolicy, context: context)
        type = Types::UpdatePolicy.new
        type.terminate_jobs_on_update = params[:terminate_jobs_on_update]
        type.job_execution_timeout_minutes = params[:job_execution_timeout_minutes]
        type
      end
    end

    module UpdateSchedulingPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSchedulingPolicyInput, context: context)
        type = Types::UpdateSchedulingPolicyInput.new
        type.arn = params[:arn]
        type.fairshare_policy = FairsharePolicy.build(params[:fairshare_policy], context: "#{context}[:fairshare_policy]") unless params[:fairshare_policy].nil?
        type
      end
    end

    module UpdateSchedulingPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSchedulingPolicyOutput, context: context)
        type = Types::UpdateSchedulingPolicyOutput.new
        type
      end
    end

    module Volume
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Volume, context: context)
        type = Types::Volume.new
        type.host = Host.build(params[:host], context: "#{context}[:host]") unless params[:host].nil?
        type.name = params[:name]
        type.efs_volume_configuration = EFSVolumeConfiguration.build(params[:efs_volume_configuration], context: "#{context}[:efs_volume_configuration]") unless params[:efs_volume_configuration].nil?
        type
      end
    end

    module Volumes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Volume.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
