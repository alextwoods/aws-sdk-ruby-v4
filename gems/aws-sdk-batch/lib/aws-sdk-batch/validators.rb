# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Batch
  module Validators

    class ArrayJobStatusSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::Integer, context: "#{context}[:#{key}]")
        end
      end
    end

    class ArrayProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ArrayProperties, context: context)
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
      end
    end

    class ArrayPropertiesDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ArrayPropertiesDetail, context: context)
        Validators::ArrayJobStatusSummary.validate!(input[:status_summary], context: "#{context}[:status_summary]") unless input[:status_summary].nil?
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
        Hearth::Validator.validate!(input[:index], ::Integer, context: "#{context}[:index]")
      end
    end

    class ArrayPropertiesSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ArrayPropertiesSummary, context: context)
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
        Hearth::Validator.validate!(input[:index], ::Integer, context: "#{context}[:index]")
      end
    end

    class AttemptContainerDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttemptContainerDetail, context: context)
        Hearth::Validator.validate!(input[:container_instance_arn], ::String, context: "#{context}[:container_instance_arn]")
        Hearth::Validator.validate!(input[:task_arn], ::String, context: "#{context}[:task_arn]")
        Hearth::Validator.validate!(input[:exit_code], ::Integer, context: "#{context}[:exit_code]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Hearth::Validator.validate!(input[:log_stream_name], ::String, context: "#{context}[:log_stream_name]")
        Validators::NetworkInterfaceList.validate!(input[:network_interfaces], context: "#{context}[:network_interfaces]") unless input[:network_interfaces].nil?
      end
    end

    class AttemptDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttemptDetail, context: context)
        Validators::AttemptContainerDetail.validate!(input[:container], context: "#{context}[:container]") unless input[:container].nil?
        Hearth::Validator.validate!(input[:started_at], ::Integer, context: "#{context}[:started_at]")
        Hearth::Validator.validate!(input[:stopped_at], ::Integer, context: "#{context}[:stopped_at]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
      end
    end

    class AttemptDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AttemptDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CancelJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class CancelJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelJobOutput, context: context)
      end
    end

    class ClientException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClientException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ComputeEnvironmentDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComputeEnvironmentDetail, context: context)
        Hearth::Validator.validate!(input[:compute_environment_name], ::String, context: "#{context}[:compute_environment_name]")
        Hearth::Validator.validate!(input[:compute_environment_arn], ::String, context: "#{context}[:compute_environment_arn]")
        Hearth::Validator.validate!(input[:unmanagedv_cpus], ::Integer, context: "#{context}[:unmanagedv_cpus]")
        Hearth::Validator.validate!(input[:ecs_cluster_arn], ::String, context: "#{context}[:ecs_cluster_arn]")
        Validators::TagrisTagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        Validators::ComputeResource.validate!(input[:compute_resources], context: "#{context}[:compute_resources]") unless input[:compute_resources].nil?
        Hearth::Validator.validate!(input[:service_role], ::String, context: "#{context}[:service_role]")
        Validators::UpdatePolicy.validate!(input[:update_policy], context: "#{context}[:update_policy]") unless input[:update_policy].nil?
      end
    end

    class ComputeEnvironmentDetailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ComputeEnvironmentDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ComputeEnvironmentOrder
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComputeEnvironmentOrder, context: context)
        Hearth::Validator.validate!(input[:order], ::Integer, context: "#{context}[:order]")
        Hearth::Validator.validate!(input[:compute_environment], ::String, context: "#{context}[:compute_environment]")
      end
    end

    class ComputeEnvironmentOrders
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ComputeEnvironmentOrder.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ComputeResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComputeResource, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:allocation_strategy], ::String, context: "#{context}[:allocation_strategy]")
        Hearth::Validator.validate!(input[:minv_cpus], ::Integer, context: "#{context}[:minv_cpus]")
        Hearth::Validator.validate!(input[:maxv_cpus], ::Integer, context: "#{context}[:maxv_cpus]")
        Hearth::Validator.validate!(input[:desiredv_cpus], ::Integer, context: "#{context}[:desiredv_cpus]")
        Validators::StringList.validate!(input[:instance_types], context: "#{context}[:instance_types]") unless input[:instance_types].nil?
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
        Validators::StringList.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
        Validators::StringList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate!(input[:ec2_key_pair], ::String, context: "#{context}[:ec2_key_pair]")
        Hearth::Validator.validate!(input[:instance_role], ::String, context: "#{context}[:instance_role]")
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:placement_group], ::String, context: "#{context}[:placement_group]")
        Hearth::Validator.validate!(input[:bid_percentage], ::Integer, context: "#{context}[:bid_percentage]")
        Hearth::Validator.validate!(input[:spot_iam_fleet_role], ::String, context: "#{context}[:spot_iam_fleet_role]")
        Validators::LaunchTemplateSpecification.validate!(input[:launch_template], context: "#{context}[:launch_template]") unless input[:launch_template].nil?
        Validators::Ec2ConfigurationList.validate!(input[:ec2_configuration], context: "#{context}[:ec2_configuration]") unless input[:ec2_configuration].nil?
      end
    end

    class ComputeResourceUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComputeResourceUpdate, context: context)
        Hearth::Validator.validate!(input[:minv_cpus], ::Integer, context: "#{context}[:minv_cpus]")
        Hearth::Validator.validate!(input[:maxv_cpus], ::Integer, context: "#{context}[:maxv_cpus]")
        Hearth::Validator.validate!(input[:desiredv_cpus], ::Integer, context: "#{context}[:desiredv_cpus]")
        Validators::StringList.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
        Validators::StringList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate!(input[:allocation_strategy], ::String, context: "#{context}[:allocation_strategy]")
        Validators::StringList.validate!(input[:instance_types], context: "#{context}[:instance_types]") unless input[:instance_types].nil?
        Hearth::Validator.validate!(input[:ec2_key_pair], ::String, context: "#{context}[:ec2_key_pair]")
        Hearth::Validator.validate!(input[:instance_role], ::String, context: "#{context}[:instance_role]")
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:placement_group], ::String, context: "#{context}[:placement_group]")
        Hearth::Validator.validate!(input[:bid_percentage], ::Integer, context: "#{context}[:bid_percentage]")
        Validators::LaunchTemplateSpecification.validate!(input[:launch_template], context: "#{context}[:launch_template]") unless input[:launch_template].nil?
        Validators::Ec2ConfigurationList.validate!(input[:ec2_configuration], context: "#{context}[:ec2_configuration]") unless input[:ec2_configuration].nil?
        Hearth::Validator.validate!(input[:update_to_latest_image_version], ::TrueClass, ::FalseClass, context: "#{context}[:update_to_latest_image_version]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
      end
    end

    class ContainerDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainerDetail, context: context)
        Hearth::Validator.validate!(input[:image], ::String, context: "#{context}[:image]")
        Hearth::Validator.validate!(input[:vcpus], ::Integer, context: "#{context}[:vcpus]")
        Hearth::Validator.validate!(input[:memory], ::Integer, context: "#{context}[:memory]")
        Validators::StringList.validate!(input[:command], context: "#{context}[:command]") unless input[:command].nil?
        Hearth::Validator.validate!(input[:job_role_arn], ::String, context: "#{context}[:job_role_arn]")
        Hearth::Validator.validate!(input[:execution_role_arn], ::String, context: "#{context}[:execution_role_arn]")
        Validators::Volumes.validate!(input[:volumes], context: "#{context}[:volumes]") unless input[:volumes].nil?
        Validators::EnvironmentVariables.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        Validators::MountPoints.validate!(input[:mount_points], context: "#{context}[:mount_points]") unless input[:mount_points].nil?
        Hearth::Validator.validate!(input[:readonly_root_filesystem], ::TrueClass, ::FalseClass, context: "#{context}[:readonly_root_filesystem]")
        Validators::Ulimits.validate!(input[:ulimits], context: "#{context}[:ulimits]") unless input[:ulimits].nil?
        Hearth::Validator.validate!(input[:privileged], ::TrueClass, ::FalseClass, context: "#{context}[:privileged]")
        Hearth::Validator.validate!(input[:user], ::String, context: "#{context}[:user]")
        Hearth::Validator.validate!(input[:exit_code], ::Integer, context: "#{context}[:exit_code]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Hearth::Validator.validate!(input[:container_instance_arn], ::String, context: "#{context}[:container_instance_arn]")
        Hearth::Validator.validate!(input[:task_arn], ::String, context: "#{context}[:task_arn]")
        Hearth::Validator.validate!(input[:log_stream_name], ::String, context: "#{context}[:log_stream_name]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Validators::NetworkInterfaceList.validate!(input[:network_interfaces], context: "#{context}[:network_interfaces]") unless input[:network_interfaces].nil?
        Validators::ResourceRequirements.validate!(input[:resource_requirements], context: "#{context}[:resource_requirements]") unless input[:resource_requirements].nil?
        Validators::LinuxParameters.validate!(input[:linux_parameters], context: "#{context}[:linux_parameters]") unless input[:linux_parameters].nil?
        Validators::LogConfiguration.validate!(input[:log_configuration], context: "#{context}[:log_configuration]") unless input[:log_configuration].nil?
        Validators::SecretList.validate!(input[:secrets], context: "#{context}[:secrets]") unless input[:secrets].nil?
        Validators::NetworkConfiguration.validate!(input[:network_configuration], context: "#{context}[:network_configuration]") unless input[:network_configuration].nil?
        Validators::FargatePlatformConfiguration.validate!(input[:fargate_platform_configuration], context: "#{context}[:fargate_platform_configuration]") unless input[:fargate_platform_configuration].nil?
      end
    end

    class ContainerOverrides
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainerOverrides, context: context)
        Hearth::Validator.validate!(input[:vcpus], ::Integer, context: "#{context}[:vcpus]")
        Hearth::Validator.validate!(input[:memory], ::Integer, context: "#{context}[:memory]")
        Validators::StringList.validate!(input[:command], context: "#{context}[:command]") unless input[:command].nil?
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Validators::EnvironmentVariables.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        Validators::ResourceRequirements.validate!(input[:resource_requirements], context: "#{context}[:resource_requirements]") unless input[:resource_requirements].nil?
      end
    end

    class ContainerProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainerProperties, context: context)
        Hearth::Validator.validate!(input[:image], ::String, context: "#{context}[:image]")
        Hearth::Validator.validate!(input[:vcpus], ::Integer, context: "#{context}[:vcpus]")
        Hearth::Validator.validate!(input[:memory], ::Integer, context: "#{context}[:memory]")
        Validators::StringList.validate!(input[:command], context: "#{context}[:command]") unless input[:command].nil?
        Hearth::Validator.validate!(input[:job_role_arn], ::String, context: "#{context}[:job_role_arn]")
        Hearth::Validator.validate!(input[:execution_role_arn], ::String, context: "#{context}[:execution_role_arn]")
        Validators::Volumes.validate!(input[:volumes], context: "#{context}[:volumes]") unless input[:volumes].nil?
        Validators::EnvironmentVariables.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        Validators::MountPoints.validate!(input[:mount_points], context: "#{context}[:mount_points]") unless input[:mount_points].nil?
        Hearth::Validator.validate!(input[:readonly_root_filesystem], ::TrueClass, ::FalseClass, context: "#{context}[:readonly_root_filesystem]")
        Hearth::Validator.validate!(input[:privileged], ::TrueClass, ::FalseClass, context: "#{context}[:privileged]")
        Validators::Ulimits.validate!(input[:ulimits], context: "#{context}[:ulimits]") unless input[:ulimits].nil?
        Hearth::Validator.validate!(input[:user], ::String, context: "#{context}[:user]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Validators::ResourceRequirements.validate!(input[:resource_requirements], context: "#{context}[:resource_requirements]") unless input[:resource_requirements].nil?
        Validators::LinuxParameters.validate!(input[:linux_parameters], context: "#{context}[:linux_parameters]") unless input[:linux_parameters].nil?
        Validators::LogConfiguration.validate!(input[:log_configuration], context: "#{context}[:log_configuration]") unless input[:log_configuration].nil?
        Validators::SecretList.validate!(input[:secrets], context: "#{context}[:secrets]") unless input[:secrets].nil?
        Validators::NetworkConfiguration.validate!(input[:network_configuration], context: "#{context}[:network_configuration]") unless input[:network_configuration].nil?
        Validators::FargatePlatformConfiguration.validate!(input[:fargate_platform_configuration], context: "#{context}[:fargate_platform_configuration]") unless input[:fargate_platform_configuration].nil?
      end
    end

    class ContainerSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainerSummary, context: context)
        Hearth::Validator.validate!(input[:exit_code], ::Integer, context: "#{context}[:exit_code]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class CreateComputeEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateComputeEnvironmentInput, context: context)
        Hearth::Validator.validate!(input[:compute_environment_name], ::String, context: "#{context}[:compute_environment_name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:unmanagedv_cpus], ::Integer, context: "#{context}[:unmanagedv_cpus]")
        Validators::ComputeResource.validate!(input[:compute_resources], context: "#{context}[:compute_resources]") unless input[:compute_resources].nil?
        Hearth::Validator.validate!(input[:service_role], ::String, context: "#{context}[:service_role]")
        Validators::TagrisTagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateComputeEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateComputeEnvironmentOutput, context: context)
        Hearth::Validator.validate!(input[:compute_environment_name], ::String, context: "#{context}[:compute_environment_name]")
        Hearth::Validator.validate!(input[:compute_environment_arn], ::String, context: "#{context}[:compute_environment_arn]")
      end
    end

    class CreateJobQueueInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateJobQueueInput, context: context)
        Hearth::Validator.validate!(input[:job_queue_name], ::String, context: "#{context}[:job_queue_name]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:scheduling_policy_arn], ::String, context: "#{context}[:scheduling_policy_arn]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Validators::ComputeEnvironmentOrders.validate!(input[:compute_environment_order], context: "#{context}[:compute_environment_order]") unless input[:compute_environment_order].nil?
        Validators::TagrisTagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateJobQueueOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateJobQueueOutput, context: context)
        Hearth::Validator.validate!(input[:job_queue_name], ::String, context: "#{context}[:job_queue_name]")
        Hearth::Validator.validate!(input[:job_queue_arn], ::String, context: "#{context}[:job_queue_arn]")
      end
    end

    class CreateSchedulingPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSchedulingPolicyInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::FairsharePolicy.validate!(input[:fairshare_policy], context: "#{context}[:fairshare_policy]") unless input[:fairshare_policy].nil?
        Validators::TagrisTagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateSchedulingPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSchedulingPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeleteComputeEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteComputeEnvironmentInput, context: context)
        Hearth::Validator.validate!(input[:compute_environment], ::String, context: "#{context}[:compute_environment]")
      end
    end

    class DeleteComputeEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteComputeEnvironmentOutput, context: context)
      end
    end

    class DeleteJobQueueInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteJobQueueInput, context: context)
        Hearth::Validator.validate!(input[:job_queue], ::String, context: "#{context}[:job_queue]")
      end
    end

    class DeleteJobQueueOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteJobQueueOutput, context: context)
      end
    end

    class DeleteSchedulingPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSchedulingPolicyInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeleteSchedulingPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSchedulingPolicyOutput, context: context)
      end
    end

    class DeregisterJobDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterJobDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:job_definition], ::String, context: "#{context}[:job_definition]")
      end
    end

    class DeregisterJobDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterJobDefinitionOutput, context: context)
      end
    end

    class DescribeComputeEnvironmentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeComputeEnvironmentsInput, context: context)
        Validators::StringList.validate!(input[:compute_environments], context: "#{context}[:compute_environments]") unless input[:compute_environments].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeComputeEnvironmentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeComputeEnvironmentsOutput, context: context)
        Validators::ComputeEnvironmentDetailList.validate!(input[:compute_environments], context: "#{context}[:compute_environments]") unless input[:compute_environments].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeJobDefinitionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobDefinitionsInput, context: context)
        Validators::StringList.validate!(input[:job_definitions], context: "#{context}[:job_definitions]") unless input[:job_definitions].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:job_definition_name], ::String, context: "#{context}[:job_definition_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeJobDefinitionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobDefinitionsOutput, context: context)
        Validators::JobDefinitionList.validate!(input[:job_definitions], context: "#{context}[:job_definitions]") unless input[:job_definitions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeJobQueuesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobQueuesInput, context: context)
        Validators::StringList.validate!(input[:job_queues], context: "#{context}[:job_queues]") unless input[:job_queues].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeJobQueuesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobQueuesOutput, context: context)
        Validators::JobQueueDetailList.validate!(input[:job_queues], context: "#{context}[:job_queues]") unless input[:job_queues].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobsInput, context: context)
        Validators::StringList.validate!(input[:jobs], context: "#{context}[:jobs]") unless input[:jobs].nil?
      end
    end

    class DescribeJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobsOutput, context: context)
        Validators::JobDetailList.validate!(input[:jobs], context: "#{context}[:jobs]") unless input[:jobs].nil?
      end
    end

    class DescribeSchedulingPoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSchedulingPoliciesInput, context: context)
        Validators::StringList.validate!(input[:arns], context: "#{context}[:arns]") unless input[:arns].nil?
      end
    end

    class DescribeSchedulingPoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSchedulingPoliciesOutput, context: context)
        Validators::SchedulingPolicyDetailList.validate!(input[:scheduling_policies], context: "#{context}[:scheduling_policies]") unless input[:scheduling_policies].nil?
      end
    end

    class Device
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Device, context: context)
        Hearth::Validator.validate!(input[:host_path], ::String, context: "#{context}[:host_path]")
        Hearth::Validator.validate!(input[:container_path], ::String, context: "#{context}[:container_path]")
        Validators::DeviceCgroupPermissions.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
      end
    end

    class DeviceCgroupPermissions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DevicesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Device.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EFSAuthorizationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EFSAuthorizationConfig, context: context)
        Hearth::Validator.validate!(input[:access_point_id], ::String, context: "#{context}[:access_point_id]")
        Hearth::Validator.validate!(input[:iam], ::String, context: "#{context}[:iam]")
      end
    end

    class EFSVolumeConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EFSVolumeConfiguration, context: context)
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Hearth::Validator.validate!(input[:root_directory], ::String, context: "#{context}[:root_directory]")
        Hearth::Validator.validate!(input[:transit_encryption], ::String, context: "#{context}[:transit_encryption]")
        Hearth::Validator.validate!(input[:transit_encryption_port], ::Integer, context: "#{context}[:transit_encryption_port]")
        Validators::EFSAuthorizationConfig.validate!(input[:authorization_config], context: "#{context}[:authorization_config]") unless input[:authorization_config].nil?
      end
    end

    class Ec2Configuration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Ec2Configuration, context: context)
        Hearth::Validator.validate!(input[:image_type], ::String, context: "#{context}[:image_type]")
        Hearth::Validator.validate!(input[:image_id_override], ::String, context: "#{context}[:image_id_override]")
      end
    end

    class Ec2ConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Ec2Configuration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EnvironmentVariables
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::KeyValuePair.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EvaluateOnExit
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EvaluateOnExit, context: context)
        Hearth::Validator.validate!(input[:on_status_reason], ::String, context: "#{context}[:on_status_reason]")
        Hearth::Validator.validate!(input[:on_reason], ::String, context: "#{context}[:on_reason]")
        Hearth::Validator.validate!(input[:on_exit_code], ::String, context: "#{context}[:on_exit_code]")
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
      end
    end

    class EvaluateOnExitList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EvaluateOnExit.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FairsharePolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FairsharePolicy, context: context)
        Hearth::Validator.validate!(input[:share_decay_seconds], ::Integer, context: "#{context}[:share_decay_seconds]")
        Hearth::Validator.validate!(input[:compute_reservation], ::Integer, context: "#{context}[:compute_reservation]")
        Validators::ShareAttributesList.validate!(input[:share_distribution], context: "#{context}[:share_distribution]") unless input[:share_distribution].nil?
      end
    end

    class FargatePlatformConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FargatePlatformConfiguration, context: context)
        Hearth::Validator.validate!(input[:platform_version], ::String, context: "#{context}[:platform_version]")
      end
    end

    class Host
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Host, context: context)
        Hearth::Validator.validate!(input[:source_path], ::String, context: "#{context}[:source_path]")
      end
    end

    class JobDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobDefinition, context: context)
        Hearth::Validator.validate!(input[:job_definition_name], ::String, context: "#{context}[:job_definition_name]")
        Hearth::Validator.validate!(input[:job_definition_arn], ::String, context: "#{context}[:job_definition_arn]")
        Hearth::Validator.validate!(input[:revision], ::Integer, context: "#{context}[:revision]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:scheduling_priority], ::Integer, context: "#{context}[:scheduling_priority]")
        Validators::ParametersMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Validators::RetryStrategy.validate!(input[:retry_strategy], context: "#{context}[:retry_strategy]") unless input[:retry_strategy].nil?
        Validators::ContainerProperties.validate!(input[:container_properties], context: "#{context}[:container_properties]") unless input[:container_properties].nil?
        Validators::JobTimeout.validate!(input[:timeout], context: "#{context}[:timeout]") unless input[:timeout].nil?
        Validators::NodeProperties.validate!(input[:node_properties], context: "#{context}[:node_properties]") unless input[:node_properties].nil?
        Validators::TagrisTagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:propagate_tags], ::TrueClass, ::FalseClass, context: "#{context}[:propagate_tags]")
        Validators::PlatformCapabilityList.validate!(input[:platform_capabilities], context: "#{context}[:platform_capabilities]") unless input[:platform_capabilities].nil?
      end
    end

    class JobDefinitionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::JobDefinition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class JobDependency
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobDependency, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class JobDependencyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::JobDependency.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class JobDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobDetail, context: context)
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_queue], ::String, context: "#{context}[:job_queue]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:share_identifier], ::String, context: "#{context}[:share_identifier]")
        Hearth::Validator.validate!(input[:scheduling_priority], ::Integer, context: "#{context}[:scheduling_priority]")
        Validators::AttemptDetails.validate!(input[:attempts], context: "#{context}[:attempts]") unless input[:attempts].nil?
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        Hearth::Validator.validate!(input[:created_at], ::Integer, context: "#{context}[:created_at]")
        Validators::RetryStrategy.validate!(input[:retry_strategy], context: "#{context}[:retry_strategy]") unless input[:retry_strategy].nil?
        Hearth::Validator.validate!(input[:started_at], ::Integer, context: "#{context}[:started_at]")
        Hearth::Validator.validate!(input[:stopped_at], ::Integer, context: "#{context}[:stopped_at]")
        Validators::JobDependencyList.validate!(input[:depends_on], context: "#{context}[:depends_on]") unless input[:depends_on].nil?
        Hearth::Validator.validate!(input[:job_definition], ::String, context: "#{context}[:job_definition]")
        Validators::ParametersMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Validators::ContainerDetail.validate!(input[:container], context: "#{context}[:container]") unless input[:container].nil?
        Validators::NodeDetails.validate!(input[:node_details], context: "#{context}[:node_details]") unless input[:node_details].nil?
        Validators::NodeProperties.validate!(input[:node_properties], context: "#{context}[:node_properties]") unless input[:node_properties].nil?
        Validators::ArrayPropertiesDetail.validate!(input[:array_properties], context: "#{context}[:array_properties]") unless input[:array_properties].nil?
        Validators::JobTimeout.validate!(input[:timeout], context: "#{context}[:timeout]") unless input[:timeout].nil?
        Validators::TagrisTagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:propagate_tags], ::TrueClass, ::FalseClass, context: "#{context}[:propagate_tags]")
        Validators::PlatformCapabilityList.validate!(input[:platform_capabilities], context: "#{context}[:platform_capabilities]") unless input[:platform_capabilities].nil?
      end
    end

    class JobDetailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::JobDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class JobQueueDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobQueueDetail, context: context)
        Hearth::Validator.validate!(input[:job_queue_name], ::String, context: "#{context}[:job_queue_name]")
        Hearth::Validator.validate!(input[:job_queue_arn], ::String, context: "#{context}[:job_queue_arn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:scheduling_policy_arn], ::String, context: "#{context}[:scheduling_policy_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Validators::ComputeEnvironmentOrders.validate!(input[:compute_environment_order], context: "#{context}[:compute_environment_order]") unless input[:compute_environment_order].nil?
        Validators::TagrisTagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class JobQueueDetailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::JobQueueDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class JobSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobSummary, context: context)
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:created_at], ::Integer, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        Hearth::Validator.validate!(input[:started_at], ::Integer, context: "#{context}[:started_at]")
        Hearth::Validator.validate!(input[:stopped_at], ::Integer, context: "#{context}[:stopped_at]")
        Validators::ContainerSummary.validate!(input[:container], context: "#{context}[:container]") unless input[:container].nil?
        Validators::ArrayPropertiesSummary.validate!(input[:array_properties], context: "#{context}[:array_properties]") unless input[:array_properties].nil?
        Validators::NodePropertiesSummary.validate!(input[:node_properties], context: "#{context}[:node_properties]") unless input[:node_properties].nil?
        Hearth::Validator.validate!(input[:job_definition], ::String, context: "#{context}[:job_definition]")
      end
    end

    class JobSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::JobSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class JobTimeout
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobTimeout, context: context)
        Hearth::Validator.validate!(input[:attempt_duration_seconds], ::Integer, context: "#{context}[:attempt_duration_seconds]")
      end
    end

    class KeyValuePair
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeyValuePair, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class KeyValuesPair
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeyValuesPair, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::StringList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class LaunchTemplateSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchTemplateSpecification, context: context)
        Hearth::Validator.validate!(input[:launch_template_id], ::String, context: "#{context}[:launch_template_id]")
        Hearth::Validator.validate!(input[:launch_template_name], ::String, context: "#{context}[:launch_template_name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class LinuxParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LinuxParameters, context: context)
        Validators::DevicesList.validate!(input[:devices], context: "#{context}[:devices]") unless input[:devices].nil?
        Hearth::Validator.validate!(input[:init_process_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:init_process_enabled]")
        Hearth::Validator.validate!(input[:shared_memory_size], ::Integer, context: "#{context}[:shared_memory_size]")
        Validators::TmpfsList.validate!(input[:tmpfs], context: "#{context}[:tmpfs]") unless input[:tmpfs].nil?
        Hearth::Validator.validate!(input[:max_swap], ::Integer, context: "#{context}[:max_swap]")
        Hearth::Validator.validate!(input[:swappiness], ::Integer, context: "#{context}[:swappiness]")
      end
    end

    class ListJobsFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::KeyValuesPair.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobsInput, context: context)
        Hearth::Validator.validate!(input[:job_queue], ::String, context: "#{context}[:job_queue]")
        Hearth::Validator.validate!(input[:array_job_id], ::String, context: "#{context}[:array_job_id]")
        Hearth::Validator.validate!(input[:multi_node_job_id], ::String, context: "#{context}[:multi_node_job_id]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::ListJobsFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobsOutput, context: context)
        Validators::JobSummaryList.validate!(input[:job_summary_list], context: "#{context}[:job_summary_list]") unless input[:job_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSchedulingPoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSchedulingPoliciesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSchedulingPoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSchedulingPoliciesOutput, context: context)
        Validators::SchedulingPolicyListingDetailList.validate!(input[:scheduling_policies], context: "#{context}[:scheduling_policies]") unless input[:scheduling_policies].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagrisTagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class LogConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogConfiguration, context: context)
        Hearth::Validator.validate!(input[:log_driver], ::String, context: "#{context}[:log_driver]")
        Validators::LogConfigurationOptionsMap.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        Validators::SecretList.validate!(input[:secret_options], context: "#{context}[:secret_options]") unless input[:secret_options].nil?
      end
    end

    class LogConfigurationOptionsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class MountPoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MountPoint, context: context)
        Hearth::Validator.validate!(input[:container_path], ::String, context: "#{context}[:container_path]")
        Hearth::Validator.validate!(input[:read_only], ::TrueClass, ::FalseClass, context: "#{context}[:read_only]")
        Hearth::Validator.validate!(input[:source_volume], ::String, context: "#{context}[:source_volume]")
      end
    end

    class MountPoints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MountPoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NetworkConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkConfiguration, context: context)
        Hearth::Validator.validate!(input[:assign_public_ip], ::String, context: "#{context}[:assign_public_ip]")
      end
    end

    class NetworkInterface
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkInterface, context: context)
        Hearth::Validator.validate!(input[:attachment_id], ::String, context: "#{context}[:attachment_id]")
        Hearth::Validator.validate!(input[:ipv6_address], ::String, context: "#{context}[:ipv6_address]")
        Hearth::Validator.validate!(input[:private_ipv4_address], ::String, context: "#{context}[:private_ipv4_address]")
      end
    end

    class NetworkInterfaceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::NetworkInterface.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NodeDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeDetails, context: context)
        Hearth::Validator.validate!(input[:node_index], ::Integer, context: "#{context}[:node_index]")
        Hearth::Validator.validate!(input[:is_main_node], ::TrueClass, ::FalseClass, context: "#{context}[:is_main_node]")
      end
    end

    class NodeOverrides
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeOverrides, context: context)
        Hearth::Validator.validate!(input[:num_nodes], ::Integer, context: "#{context}[:num_nodes]")
        Validators::NodePropertyOverrides.validate!(input[:node_property_overrides], context: "#{context}[:node_property_overrides]") unless input[:node_property_overrides].nil?
      end
    end

    class NodeProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeProperties, context: context)
        Hearth::Validator.validate!(input[:num_nodes], ::Integer, context: "#{context}[:num_nodes]")
        Hearth::Validator.validate!(input[:main_node], ::Integer, context: "#{context}[:main_node]")
        Validators::NodeRangeProperties.validate!(input[:node_range_properties], context: "#{context}[:node_range_properties]") unless input[:node_range_properties].nil?
      end
    end

    class NodePropertiesSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodePropertiesSummary, context: context)
        Hearth::Validator.validate!(input[:is_main_node], ::TrueClass, ::FalseClass, context: "#{context}[:is_main_node]")
        Hearth::Validator.validate!(input[:num_nodes], ::Integer, context: "#{context}[:num_nodes]")
        Hearth::Validator.validate!(input[:node_index], ::Integer, context: "#{context}[:node_index]")
      end
    end

    class NodePropertyOverride
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodePropertyOverride, context: context)
        Hearth::Validator.validate!(input[:target_nodes], ::String, context: "#{context}[:target_nodes]")
        Validators::ContainerOverrides.validate!(input[:container_overrides], context: "#{context}[:container_overrides]") unless input[:container_overrides].nil?
      end
    end

    class NodePropertyOverrides
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::NodePropertyOverride.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NodeRangeProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::NodeRangeProperty.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NodeRangeProperty
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeRangeProperty, context: context)
        Hearth::Validator.validate!(input[:target_nodes], ::String, context: "#{context}[:target_nodes]")
        Validators::ContainerProperties.validate!(input[:container], context: "#{context}[:container]") unless input[:container].nil?
      end
    end

    class ParametersMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class PlatformCapabilityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RegisterJobDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterJobDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:job_definition_name], ::String, context: "#{context}[:job_definition_name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::ParametersMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:scheduling_priority], ::Integer, context: "#{context}[:scheduling_priority]")
        Validators::ContainerProperties.validate!(input[:container_properties], context: "#{context}[:container_properties]") unless input[:container_properties].nil?
        Validators::NodeProperties.validate!(input[:node_properties], context: "#{context}[:node_properties]") unless input[:node_properties].nil?
        Validators::RetryStrategy.validate!(input[:retry_strategy], context: "#{context}[:retry_strategy]") unless input[:retry_strategy].nil?
        Hearth::Validator.validate!(input[:propagate_tags], ::TrueClass, ::FalseClass, context: "#{context}[:propagate_tags]")
        Validators::JobTimeout.validate!(input[:timeout], context: "#{context}[:timeout]") unless input[:timeout].nil?
        Validators::TagrisTagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::PlatformCapabilityList.validate!(input[:platform_capabilities], context: "#{context}[:platform_capabilities]") unless input[:platform_capabilities].nil?
      end
    end

    class RegisterJobDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterJobDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:job_definition_name], ::String, context: "#{context}[:job_definition_name]")
        Hearth::Validator.validate!(input[:job_definition_arn], ::String, context: "#{context}[:job_definition_arn]")
        Hearth::Validator.validate!(input[:revision], ::Integer, context: "#{context}[:revision]")
      end
    end

    class ResourceRequirement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceRequirement, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class ResourceRequirements
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResourceRequirement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RetryStrategy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RetryStrategy, context: context)
        Hearth::Validator.validate!(input[:attempts], ::Integer, context: "#{context}[:attempts]")
        Validators::EvaluateOnExitList.validate!(input[:evaluate_on_exit], context: "#{context}[:evaluate_on_exit]") unless input[:evaluate_on_exit].nil?
      end
    end

    class SchedulingPolicyDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SchedulingPolicyDetail, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::FairsharePolicy.validate!(input[:fairshare_policy], context: "#{context}[:fairshare_policy]") unless input[:fairshare_policy].nil?
        Validators::TagrisTagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class SchedulingPolicyDetailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SchedulingPolicyDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SchedulingPolicyListingDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SchedulingPolicyListingDetail, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class SchedulingPolicyListingDetailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SchedulingPolicyListingDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Secret
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Secret, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value_from], ::String, context: "#{context}[:value_from]")
      end
    end

    class SecretList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Secret.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ShareAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ShareAttributes, context: context)
        Hearth::Validator.validate!(input[:share_identifier], ::String, context: "#{context}[:share_identifier]")
        Hearth::Validator.validate!(input[:weight_factor], ::Float, context: "#{context}[:weight_factor]")
      end
    end

    class ShareAttributesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ShareAttributes.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SubmitJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubmitJobInput, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_queue], ::String, context: "#{context}[:job_queue]")
        Hearth::Validator.validate!(input[:share_identifier], ::String, context: "#{context}[:share_identifier]")
        Hearth::Validator.validate!(input[:scheduling_priority_override], ::Integer, context: "#{context}[:scheduling_priority_override]")
        Validators::ArrayProperties.validate!(input[:array_properties], context: "#{context}[:array_properties]") unless input[:array_properties].nil?
        Validators::JobDependencyList.validate!(input[:depends_on], context: "#{context}[:depends_on]") unless input[:depends_on].nil?
        Hearth::Validator.validate!(input[:job_definition], ::String, context: "#{context}[:job_definition]")
        Validators::ParametersMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Validators::ContainerOverrides.validate!(input[:container_overrides], context: "#{context}[:container_overrides]") unless input[:container_overrides].nil?
        Validators::NodeOverrides.validate!(input[:node_overrides], context: "#{context}[:node_overrides]") unless input[:node_overrides].nil?
        Validators::RetryStrategy.validate!(input[:retry_strategy], context: "#{context}[:retry_strategy]") unless input[:retry_strategy].nil?
        Hearth::Validator.validate!(input[:propagate_tags], ::TrueClass, ::FalseClass, context: "#{context}[:propagate_tags]")
        Validators::JobTimeout.validate!(input[:timeout], context: "#{context}[:timeout]") unless input[:timeout].nil?
        Validators::TagrisTagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class SubmitJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubmitJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class TagKeysList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagrisTagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TagrisTagsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TerminateJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TerminateJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class TerminateJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TerminateJobOutput, context: context)
      end
    end

    class Tmpfs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tmpfs, context: context)
        Hearth::Validator.validate!(input[:container_path], ::String, context: "#{context}[:container_path]")
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
        Validators::StringList.validate!(input[:mount_options], context: "#{context}[:mount_options]") unless input[:mount_options].nil?
      end
    end

    class TmpfsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tmpfs.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Ulimit
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Ulimit, context: context)
        Hearth::Validator.validate!(input[:hard_limit], ::Integer, context: "#{context}[:hard_limit]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:soft_limit], ::Integer, context: "#{context}[:soft_limit]")
      end
    end

    class Ulimits
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Ulimit.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeysList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateComputeEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateComputeEnvironmentInput, context: context)
        Hearth::Validator.validate!(input[:compute_environment], ::String, context: "#{context}[:compute_environment]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:unmanagedv_cpus], ::Integer, context: "#{context}[:unmanagedv_cpus]")
        Validators::ComputeResourceUpdate.validate!(input[:compute_resources], context: "#{context}[:compute_resources]") unless input[:compute_resources].nil?
        Hearth::Validator.validate!(input[:service_role], ::String, context: "#{context}[:service_role]")
        Validators::UpdatePolicy.validate!(input[:update_policy], context: "#{context}[:update_policy]") unless input[:update_policy].nil?
      end
    end

    class UpdateComputeEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateComputeEnvironmentOutput, context: context)
        Hearth::Validator.validate!(input[:compute_environment_name], ::String, context: "#{context}[:compute_environment_name]")
        Hearth::Validator.validate!(input[:compute_environment_arn], ::String, context: "#{context}[:compute_environment_arn]")
      end
    end

    class UpdateJobQueueInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateJobQueueInput, context: context)
        Hearth::Validator.validate!(input[:job_queue], ::String, context: "#{context}[:job_queue]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:scheduling_policy_arn], ::String, context: "#{context}[:scheduling_policy_arn]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Validators::ComputeEnvironmentOrders.validate!(input[:compute_environment_order], context: "#{context}[:compute_environment_order]") unless input[:compute_environment_order].nil?
      end
    end

    class UpdateJobQueueOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateJobQueueOutput, context: context)
        Hearth::Validator.validate!(input[:job_queue_name], ::String, context: "#{context}[:job_queue_name]")
        Hearth::Validator.validate!(input[:job_queue_arn], ::String, context: "#{context}[:job_queue_arn]")
      end
    end

    class UpdatePolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePolicy, context: context)
        Hearth::Validator.validate!(input[:terminate_jobs_on_update], ::TrueClass, ::FalseClass, context: "#{context}[:terminate_jobs_on_update]")
        Hearth::Validator.validate!(input[:job_execution_timeout_minutes], ::Integer, context: "#{context}[:job_execution_timeout_minutes]")
      end
    end

    class UpdateSchedulingPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSchedulingPolicyInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::FairsharePolicy.validate!(input[:fairshare_policy], context: "#{context}[:fairshare_policy]") unless input[:fairshare_policy].nil?
      end
    end

    class UpdateSchedulingPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSchedulingPolicyOutput, context: context)
      end
    end

    class Volume
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Volume, context: context)
        Validators::Host.validate!(input[:host], context: "#{context}[:host]") unless input[:host].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::EFSVolumeConfiguration.validate!(input[:efs_volume_configuration], context: "#{context}[:efs_volume_configuration]") unless input[:efs_volume_configuration].nil?
      end
    end

    class Volumes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Volume.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
