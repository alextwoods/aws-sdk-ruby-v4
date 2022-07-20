# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::ECS
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Attachment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Attachment, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        AttachmentDetails.validate!(input[:details], context: "#{context}[:details]") unless input[:details].nil?
      end
    end

    class AttachmentDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          KeyValuePair.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AttachmentStateChange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachmentStateChange, context: context)
        Hearth::Validator.validate!(input[:attachment_arn], ::String, context: "#{context}[:attachment_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class AttachmentStateChanges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AttachmentStateChange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Attachments
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Attachment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Attribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Attribute, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:target_type], ::String, context: "#{context}[:target_type]")
        Hearth::Validator.validate!(input[:target_id], ::String, context: "#{context}[:target_id]")
      end
    end

    class AttributeLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttributeLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Attributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Attribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AutoScalingGroupProvider
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoScalingGroupProvider, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_arn], ::String, context: "#{context}[:auto_scaling_group_arn]")
        ManagedScaling.validate!(input[:managed_scaling], context: "#{context}[:managed_scaling]") unless input[:managed_scaling].nil?
        Hearth::Validator.validate!(input[:managed_termination_protection], ::String, context: "#{context}[:managed_termination_protection]")
      end
    end

    class AutoScalingGroupProviderUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoScalingGroupProviderUpdate, context: context)
        ManagedScaling.validate!(input[:managed_scaling], context: "#{context}[:managed_scaling]") unless input[:managed_scaling].nil?
        Hearth::Validator.validate!(input[:managed_termination_protection], ::String, context: "#{context}[:managed_termination_protection]")
      end
    end

    class AwsVpcConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsVpcConfiguration, context: context)
        StringList.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
        StringList.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        Hearth::Validator.validate!(input[:assign_public_ip], ::String, context: "#{context}[:assign_public_ip]")
      end
    end

    class BlockedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BlockedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CapacityProvider
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CapacityProvider, context: context)
        Hearth::Validator.validate!(input[:capacity_provider_arn], ::String, context: "#{context}[:capacity_provider_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        AutoScalingGroupProvider.validate!(input[:auto_scaling_group_provider], context: "#{context}[:auto_scaling_group_provider]") unless input[:auto_scaling_group_provider].nil?
        Hearth::Validator.validate!(input[:update_status], ::String, context: "#{context}[:update_status]")
        Hearth::Validator.validate!(input[:update_status_reason], ::String, context: "#{context}[:update_status_reason]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CapacityProviderFieldList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CapacityProviderStrategy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CapacityProviderStrategyItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CapacityProviderStrategyItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CapacityProviderStrategyItem, context: context)
        Hearth::Validator.validate!(input[:capacity_provider], ::String, context: "#{context}[:capacity_provider]")
        Hearth::Validator.validate!(input[:weight], ::Integer, context: "#{context}[:weight]")
        Hearth::Validator.validate!(input[:base], ::Integer, context: "#{context}[:base]")
      end
    end

    class CapacityProviders
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CapacityProvider.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ClientException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClientException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Cluster
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Cluster, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        ClusterConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:registered_container_instances_count], ::Integer, context: "#{context}[:registered_container_instances_count]")
        Hearth::Validator.validate!(input[:running_tasks_count], ::Integer, context: "#{context}[:running_tasks_count]")
        Hearth::Validator.validate!(input[:pending_tasks_count], ::Integer, context: "#{context}[:pending_tasks_count]")
        Hearth::Validator.validate!(input[:active_services_count], ::Integer, context: "#{context}[:active_services_count]")
        Statistics.validate!(input[:statistics], context: "#{context}[:statistics]") unless input[:statistics].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        ClusterSettings.validate!(input[:settings], context: "#{context}[:settings]") unless input[:settings].nil?
        StringList.validate!(input[:capacity_providers], context: "#{context}[:capacity_providers]") unless input[:capacity_providers].nil?
        CapacityProviderStrategy.validate!(input[:default_capacity_provider_strategy], context: "#{context}[:default_capacity_provider_strategy]") unless input[:default_capacity_provider_strategy].nil?
        Attachments.validate!(input[:attachments], context: "#{context}[:attachments]") unless input[:attachments].nil?
        Hearth::Validator.validate!(input[:attachments_status], ::String, context: "#{context}[:attachments_status]")
      end
    end

    class ClusterConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterConfiguration, context: context)
        ExecuteCommandConfiguration.validate!(input[:execute_command_configuration], context: "#{context}[:execute_command_configuration]") unless input[:execute_command_configuration].nil?
      end
    end

    class ClusterContainsContainerInstancesException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterContainsContainerInstancesException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ClusterContainsServicesException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterContainsServicesException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ClusterContainsTasksException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterContainsTasksException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ClusterFieldList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ClusterNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ClusterSetting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterSetting, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ClusterSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ClusterSetting.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Clusters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Cluster.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CompatibilityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Container
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Container, context: context)
        Hearth::Validator.validate!(input[:container_arn], ::String, context: "#{context}[:container_arn]")
        Hearth::Validator.validate!(input[:task_arn], ::String, context: "#{context}[:task_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:image], ::String, context: "#{context}[:image]")
        Hearth::Validator.validate!(input[:image_digest], ::String, context: "#{context}[:image_digest]")
        Hearth::Validator.validate!(input[:runtime_id], ::String, context: "#{context}[:runtime_id]")
        Hearth::Validator.validate!(input[:last_status], ::String, context: "#{context}[:last_status]")
        Hearth::Validator.validate!(input[:exit_code], ::Integer, context: "#{context}[:exit_code]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        NetworkBindings.validate!(input[:network_bindings], context: "#{context}[:network_bindings]") unless input[:network_bindings].nil?
        NetworkInterfaces.validate!(input[:network_interfaces], context: "#{context}[:network_interfaces]") unless input[:network_interfaces].nil?
        Hearth::Validator.validate!(input[:health_status], ::String, context: "#{context}[:health_status]")
        ManagedAgents.validate!(input[:managed_agents], context: "#{context}[:managed_agents]") unless input[:managed_agents].nil?
        Hearth::Validator.validate!(input[:cpu], ::String, context: "#{context}[:cpu]")
        Hearth::Validator.validate!(input[:memory], ::String, context: "#{context}[:memory]")
        Hearth::Validator.validate!(input[:memory_reservation], ::String, context: "#{context}[:memory_reservation]")
        GpuIds.validate!(input[:gpu_ids], context: "#{context}[:gpu_ids]") unless input[:gpu_ids].nil?
      end
    end

    class ContainerDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainerDefinition, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:image], ::String, context: "#{context}[:image]")
        RepositoryCredentials.validate!(input[:repository_credentials], context: "#{context}[:repository_credentials]") unless input[:repository_credentials].nil?
        Hearth::Validator.validate!(input[:cpu], ::Integer, context: "#{context}[:cpu]")
        Hearth::Validator.validate!(input[:memory], ::Integer, context: "#{context}[:memory]")
        Hearth::Validator.validate!(input[:memory_reservation], ::Integer, context: "#{context}[:memory_reservation]")
        StringList.validate!(input[:links], context: "#{context}[:links]") unless input[:links].nil?
        PortMappingList.validate!(input[:port_mappings], context: "#{context}[:port_mappings]") unless input[:port_mappings].nil?
        Hearth::Validator.validate!(input[:essential], ::TrueClass, ::FalseClass, context: "#{context}[:essential]")
        StringList.validate!(input[:entry_point], context: "#{context}[:entry_point]") unless input[:entry_point].nil?
        StringList.validate!(input[:command], context: "#{context}[:command]") unless input[:command].nil?
        EnvironmentVariables.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        EnvironmentFiles.validate!(input[:environment_files], context: "#{context}[:environment_files]") unless input[:environment_files].nil?
        MountPointList.validate!(input[:mount_points], context: "#{context}[:mount_points]") unless input[:mount_points].nil?
        VolumeFromList.validate!(input[:volumes_from], context: "#{context}[:volumes_from]") unless input[:volumes_from].nil?
        LinuxParameters.validate!(input[:linux_parameters], context: "#{context}[:linux_parameters]") unless input[:linux_parameters].nil?
        SecretList.validate!(input[:secrets], context: "#{context}[:secrets]") unless input[:secrets].nil?
        ContainerDependencies.validate!(input[:depends_on], context: "#{context}[:depends_on]") unless input[:depends_on].nil?
        Hearth::Validator.validate!(input[:start_timeout], ::Integer, context: "#{context}[:start_timeout]")
        Hearth::Validator.validate!(input[:stop_timeout], ::Integer, context: "#{context}[:stop_timeout]")
        Hearth::Validator.validate!(input[:hostname], ::String, context: "#{context}[:hostname]")
        Hearth::Validator.validate!(input[:user], ::String, context: "#{context}[:user]")
        Hearth::Validator.validate!(input[:working_directory], ::String, context: "#{context}[:working_directory]")
        Hearth::Validator.validate!(input[:disable_networking], ::TrueClass, ::FalseClass, context: "#{context}[:disable_networking]")
        Hearth::Validator.validate!(input[:privileged], ::TrueClass, ::FalseClass, context: "#{context}[:privileged]")
        Hearth::Validator.validate!(input[:readonly_root_filesystem], ::TrueClass, ::FalseClass, context: "#{context}[:readonly_root_filesystem]")
        StringList.validate!(input[:dns_servers], context: "#{context}[:dns_servers]") unless input[:dns_servers].nil?
        StringList.validate!(input[:dns_search_domains], context: "#{context}[:dns_search_domains]") unless input[:dns_search_domains].nil?
        HostEntryList.validate!(input[:extra_hosts], context: "#{context}[:extra_hosts]") unless input[:extra_hosts].nil?
        StringList.validate!(input[:docker_security_options], context: "#{context}[:docker_security_options]") unless input[:docker_security_options].nil?
        Hearth::Validator.validate!(input[:interactive], ::TrueClass, ::FalseClass, context: "#{context}[:interactive]")
        Hearth::Validator.validate!(input[:pseudo_terminal], ::TrueClass, ::FalseClass, context: "#{context}[:pseudo_terminal]")
        DockerLabelsMap.validate!(input[:docker_labels], context: "#{context}[:docker_labels]") unless input[:docker_labels].nil?
        UlimitList.validate!(input[:ulimits], context: "#{context}[:ulimits]") unless input[:ulimits].nil?
        LogConfiguration.validate!(input[:log_configuration], context: "#{context}[:log_configuration]") unless input[:log_configuration].nil?
        HealthCheck.validate!(input[:health_check], context: "#{context}[:health_check]") unless input[:health_check].nil?
        SystemControls.validate!(input[:system_controls], context: "#{context}[:system_controls]") unless input[:system_controls].nil?
        ResourceRequirements.validate!(input[:resource_requirements], context: "#{context}[:resource_requirements]") unless input[:resource_requirements].nil?
        FirelensConfiguration.validate!(input[:firelens_configuration], context: "#{context}[:firelens_configuration]") unless input[:firelens_configuration].nil?
      end
    end

    class ContainerDefinitions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ContainerDefinition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ContainerDependencies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ContainerDependency.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ContainerDependency
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainerDependency, context: context)
        Hearth::Validator.validate!(input[:container_name], ::String, context: "#{context}[:container_name]")
        Hearth::Validator.validate!(input[:condition], ::String, context: "#{context}[:condition]")
      end
    end

    class ContainerInstance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainerInstance, context: context)
        Hearth::Validator.validate!(input[:container_instance_arn], ::String, context: "#{context}[:container_instance_arn]")
        Hearth::Validator.validate!(input[:ec2_instance_id], ::String, context: "#{context}[:ec2_instance_id]")
        Hearth::Validator.validate!(input[:capacity_provider_name], ::String, context: "#{context}[:capacity_provider_name]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        VersionInfo.validate!(input[:version_info], context: "#{context}[:version_info]") unless input[:version_info].nil?
        Resources.validate!(input[:remaining_resources], context: "#{context}[:remaining_resources]") unless input[:remaining_resources].nil?
        Resources.validate!(input[:registered_resources], context: "#{context}[:registered_resources]") unless input[:registered_resources].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        Hearth::Validator.validate!(input[:agent_connected], ::TrueClass, ::FalseClass, context: "#{context}[:agent_connected]")
        Hearth::Validator.validate!(input[:running_tasks_count], ::Integer, context: "#{context}[:running_tasks_count]")
        Hearth::Validator.validate!(input[:pending_tasks_count], ::Integer, context: "#{context}[:pending_tasks_count]")
        Hearth::Validator.validate!(input[:agent_update_status], ::String, context: "#{context}[:agent_update_status]")
        Attributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:registered_at], ::Time, context: "#{context}[:registered_at]")
        Attachments.validate!(input[:attachments], context: "#{context}[:attachments]") unless input[:attachments].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        ContainerInstanceHealthStatus.validate!(input[:health_status], context: "#{context}[:health_status]") unless input[:health_status].nil?
      end
    end

    class ContainerInstanceFieldList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ContainerInstanceHealthStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainerInstanceHealthStatus, context: context)
        Hearth::Validator.validate!(input[:overall_status], ::String, context: "#{context}[:overall_status]")
        InstanceHealthCheckResultList.validate!(input[:details], context: "#{context}[:details]") unless input[:details].nil?
      end
    end

    class ContainerInstances
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ContainerInstance.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ContainerOverride
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainerOverride, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        StringList.validate!(input[:command], context: "#{context}[:command]") unless input[:command].nil?
        EnvironmentVariables.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        EnvironmentFiles.validate!(input[:environment_files], context: "#{context}[:environment_files]") unless input[:environment_files].nil?
        Hearth::Validator.validate!(input[:cpu], ::Integer, context: "#{context}[:cpu]")
        Hearth::Validator.validate!(input[:memory], ::Integer, context: "#{context}[:memory]")
        Hearth::Validator.validate!(input[:memory_reservation], ::Integer, context: "#{context}[:memory_reservation]")
        ResourceRequirements.validate!(input[:resource_requirements], context: "#{context}[:resource_requirements]") unless input[:resource_requirements].nil?
      end
    end

    class ContainerOverrides
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ContainerOverride.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ContainerStateChange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainerStateChange, context: context)
        Hearth::Validator.validate!(input[:container_name], ::String, context: "#{context}[:container_name]")
        Hearth::Validator.validate!(input[:image_digest], ::String, context: "#{context}[:image_digest]")
        Hearth::Validator.validate!(input[:runtime_id], ::String, context: "#{context}[:runtime_id]")
        Hearth::Validator.validate!(input[:exit_code], ::Integer, context: "#{context}[:exit_code]")
        NetworkBindings.validate!(input[:network_bindings], context: "#{context}[:network_bindings]") unless input[:network_bindings].nil?
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ContainerStateChanges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ContainerStateChange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Containers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Container.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateCapacityProviderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCapacityProviderInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        AutoScalingGroupProvider.validate!(input[:auto_scaling_group_provider], context: "#{context}[:auto_scaling_group_provider]") unless input[:auto_scaling_group_provider].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateCapacityProviderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCapacityProviderOutput, context: context)
        CapacityProvider.validate!(input[:capacity_provider], context: "#{context}[:capacity_provider]") unless input[:capacity_provider].nil?
      end
    end

    class CreateClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateClusterInput, context: context)
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        ClusterSettings.validate!(input[:settings], context: "#{context}[:settings]") unless input[:settings].nil?
        ClusterConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        StringList.validate!(input[:capacity_providers], context: "#{context}[:capacity_providers]") unless input[:capacity_providers].nil?
        CapacityProviderStrategy.validate!(input[:default_capacity_provider_strategy], context: "#{context}[:default_capacity_provider_strategy]") unless input[:default_capacity_provider_strategy].nil?
      end
    end

    class CreateClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateClusterOutput, context: context)
        Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class CreateServiceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateServiceInput, context: context)
        Hearth::Validator.validate!(input[:cluster], ::String, context: "#{context}[:cluster]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:task_definition], ::String, context: "#{context}[:task_definition]")
        LoadBalancers.validate!(input[:load_balancers], context: "#{context}[:load_balancers]") unless input[:load_balancers].nil?
        ServiceRegistries.validate!(input[:service_registries], context: "#{context}[:service_registries]") unless input[:service_registries].nil?
        Hearth::Validator.validate!(input[:desired_count], ::Integer, context: "#{context}[:desired_count]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:launch_type], ::String, context: "#{context}[:launch_type]")
        CapacityProviderStrategy.validate!(input[:capacity_provider_strategy], context: "#{context}[:capacity_provider_strategy]") unless input[:capacity_provider_strategy].nil?
        Hearth::Validator.validate!(input[:platform_version], ::String, context: "#{context}[:platform_version]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        DeploymentConfiguration.validate!(input[:deployment_configuration], context: "#{context}[:deployment_configuration]") unless input[:deployment_configuration].nil?
        PlacementConstraints.validate!(input[:placement_constraints], context: "#{context}[:placement_constraints]") unless input[:placement_constraints].nil?
        PlacementStrategies.validate!(input[:placement_strategy], context: "#{context}[:placement_strategy]") unless input[:placement_strategy].nil?
        NetworkConfiguration.validate!(input[:network_configuration], context: "#{context}[:network_configuration]") unless input[:network_configuration].nil?
        Hearth::Validator.validate!(input[:health_check_grace_period_seconds], ::Integer, context: "#{context}[:health_check_grace_period_seconds]")
        Hearth::Validator.validate!(input[:scheduling_strategy], ::String, context: "#{context}[:scheduling_strategy]")
        DeploymentController.validate!(input[:deployment_controller], context: "#{context}[:deployment_controller]") unless input[:deployment_controller].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:enable_ecs_managed_tags], ::TrueClass, ::FalseClass, context: "#{context}[:enable_ecs_managed_tags]")
        Hearth::Validator.validate!(input[:propagate_tags], ::String, context: "#{context}[:propagate_tags]")
        Hearth::Validator.validate!(input[:enable_execute_command], ::TrueClass, ::FalseClass, context: "#{context}[:enable_execute_command]")
      end
    end

    class CreateServiceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateServiceOutput, context: context)
        Service.validate!(input[:service], context: "#{context}[:service]") unless input[:service].nil?
      end
    end

    class CreateTaskSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTaskSetInput, context: context)
        Hearth::Validator.validate!(input[:service], ::String, context: "#{context}[:service]")
        Hearth::Validator.validate!(input[:cluster], ::String, context: "#{context}[:cluster]")
        Hearth::Validator.validate!(input[:external_id], ::String, context: "#{context}[:external_id]")
        Hearth::Validator.validate!(input[:task_definition], ::String, context: "#{context}[:task_definition]")
        NetworkConfiguration.validate!(input[:network_configuration], context: "#{context}[:network_configuration]") unless input[:network_configuration].nil?
        LoadBalancers.validate!(input[:load_balancers], context: "#{context}[:load_balancers]") unless input[:load_balancers].nil?
        ServiceRegistries.validate!(input[:service_registries], context: "#{context}[:service_registries]") unless input[:service_registries].nil?
        Hearth::Validator.validate!(input[:launch_type], ::String, context: "#{context}[:launch_type]")
        CapacityProviderStrategy.validate!(input[:capacity_provider_strategy], context: "#{context}[:capacity_provider_strategy]") unless input[:capacity_provider_strategy].nil?
        Hearth::Validator.validate!(input[:platform_version], ::String, context: "#{context}[:platform_version]")
        Scale.validate!(input[:scale], context: "#{context}[:scale]") unless input[:scale].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateTaskSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTaskSetOutput, context: context)
        TaskSet.validate!(input[:task_set], context: "#{context}[:task_set]") unless input[:task_set].nil?
      end
    end

    class DeleteAccountSettingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAccountSettingInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:principal_arn], ::String, context: "#{context}[:principal_arn]")
      end
    end

    class DeleteAccountSettingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAccountSettingOutput, context: context)
        Setting.validate!(input[:setting], context: "#{context}[:setting]") unless input[:setting].nil?
      end
    end

    class DeleteAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAttributesInput, context: context)
        Hearth::Validator.validate!(input[:cluster], ::String, context: "#{context}[:cluster]")
        Attributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class DeleteAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAttributesOutput, context: context)
        Attributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class DeleteCapacityProviderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCapacityProviderInput, context: context)
        Hearth::Validator.validate!(input[:capacity_provider], ::String, context: "#{context}[:capacity_provider]")
      end
    end

    class DeleteCapacityProviderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCapacityProviderOutput, context: context)
        CapacityProvider.validate!(input[:capacity_provider], context: "#{context}[:capacity_provider]") unless input[:capacity_provider].nil?
      end
    end

    class DeleteClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteClusterInput, context: context)
        Hearth::Validator.validate!(input[:cluster], ::String, context: "#{context}[:cluster]")
      end
    end

    class DeleteClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteClusterOutput, context: context)
        Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class DeleteServiceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteServiceInput, context: context)
        Hearth::Validator.validate!(input[:cluster], ::String, context: "#{context}[:cluster]")
        Hearth::Validator.validate!(input[:service], ::String, context: "#{context}[:service]")
        Hearth::Validator.validate!(input[:force], ::TrueClass, ::FalseClass, context: "#{context}[:force]")
      end
    end

    class DeleteServiceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteServiceOutput, context: context)
        Service.validate!(input[:service], context: "#{context}[:service]") unless input[:service].nil?
      end
    end

    class DeleteTaskSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTaskSetInput, context: context)
        Hearth::Validator.validate!(input[:cluster], ::String, context: "#{context}[:cluster]")
        Hearth::Validator.validate!(input[:service], ::String, context: "#{context}[:service]")
        Hearth::Validator.validate!(input[:task_set], ::String, context: "#{context}[:task_set]")
        Hearth::Validator.validate!(input[:force], ::TrueClass, ::FalseClass, context: "#{context}[:force]")
      end
    end

    class DeleteTaskSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTaskSetOutput, context: context)
        TaskSet.validate!(input[:task_set], context: "#{context}[:task_set]") unless input[:task_set].nil?
      end
    end

    class Deployment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Deployment, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:task_definition], ::String, context: "#{context}[:task_definition]")
        Hearth::Validator.validate!(input[:desired_count], ::Integer, context: "#{context}[:desired_count]")
        Hearth::Validator.validate!(input[:pending_count], ::Integer, context: "#{context}[:pending_count]")
        Hearth::Validator.validate!(input[:running_count], ::Integer, context: "#{context}[:running_count]")
        Hearth::Validator.validate!(input[:failed_tasks], ::Integer, context: "#{context}[:failed_tasks]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        CapacityProviderStrategy.validate!(input[:capacity_provider_strategy], context: "#{context}[:capacity_provider_strategy]") unless input[:capacity_provider_strategy].nil?
        Hearth::Validator.validate!(input[:launch_type], ::String, context: "#{context}[:launch_type]")
        Hearth::Validator.validate!(input[:platform_version], ::String, context: "#{context}[:platform_version]")
        Hearth::Validator.validate!(input[:platform_family], ::String, context: "#{context}[:platform_family]")
        NetworkConfiguration.validate!(input[:network_configuration], context: "#{context}[:network_configuration]") unless input[:network_configuration].nil?
        Hearth::Validator.validate!(input[:rollout_state], ::String, context: "#{context}[:rollout_state]")
        Hearth::Validator.validate!(input[:rollout_state_reason], ::String, context: "#{context}[:rollout_state_reason]")
      end
    end

    class DeploymentCircuitBreaker
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentCircuitBreaker, context: context)
        Hearth::Validator.validate!(input[:enable], ::TrueClass, ::FalseClass, context: "#{context}[:enable]")
        Hearth::Validator.validate!(input[:rollback], ::TrueClass, ::FalseClass, context: "#{context}[:rollback]")
      end
    end

    class DeploymentConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentConfiguration, context: context)
        DeploymentCircuitBreaker.validate!(input[:deployment_circuit_breaker], context: "#{context}[:deployment_circuit_breaker]") unless input[:deployment_circuit_breaker].nil?
        Hearth::Validator.validate!(input[:maximum_percent], ::Integer, context: "#{context}[:maximum_percent]")
        Hearth::Validator.validate!(input[:minimum_healthy_percent], ::Integer, context: "#{context}[:minimum_healthy_percent]")
      end
    end

    class DeploymentController
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentController, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class Deployments
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Deployment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeregisterContainerInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterContainerInstanceInput, context: context)
        Hearth::Validator.validate!(input[:cluster], ::String, context: "#{context}[:cluster]")
        Hearth::Validator.validate!(input[:container_instance], ::String, context: "#{context}[:container_instance]")
        Hearth::Validator.validate!(input[:force], ::TrueClass, ::FalseClass, context: "#{context}[:force]")
      end
    end

    class DeregisterContainerInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterContainerInstanceOutput, context: context)
        ContainerInstance.validate!(input[:container_instance], context: "#{context}[:container_instance]") unless input[:container_instance].nil?
      end
    end

    class DeregisterTaskDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterTaskDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:task_definition], ::String, context: "#{context}[:task_definition]")
      end
    end

    class DeregisterTaskDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterTaskDefinitionOutput, context: context)
        TaskDefinition.validate!(input[:task_definition], context: "#{context}[:task_definition]") unless input[:task_definition].nil?
      end
    end

    class DescribeCapacityProvidersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCapacityProvidersInput, context: context)
        StringList.validate!(input[:capacity_providers], context: "#{context}[:capacity_providers]") unless input[:capacity_providers].nil?
        CapacityProviderFieldList.validate!(input[:include], context: "#{context}[:include]") unless input[:include].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeCapacityProvidersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCapacityProvidersOutput, context: context)
        CapacityProviders.validate!(input[:capacity_providers], context: "#{context}[:capacity_providers]") unless input[:capacity_providers].nil?
        Failures.validate!(input[:failures], context: "#{context}[:failures]") unless input[:failures].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeClustersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClustersInput, context: context)
        StringList.validate!(input[:clusters], context: "#{context}[:clusters]") unless input[:clusters].nil?
        ClusterFieldList.validate!(input[:include], context: "#{context}[:include]") unless input[:include].nil?
      end
    end

    class DescribeClustersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClustersOutput, context: context)
        Clusters.validate!(input[:clusters], context: "#{context}[:clusters]") unless input[:clusters].nil?
        Failures.validate!(input[:failures], context: "#{context}[:failures]") unless input[:failures].nil?
      end
    end

    class DescribeContainerInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeContainerInstancesInput, context: context)
        Hearth::Validator.validate!(input[:cluster], ::String, context: "#{context}[:cluster]")
        StringList.validate!(input[:container_instances], context: "#{context}[:container_instances]") unless input[:container_instances].nil?
        ContainerInstanceFieldList.validate!(input[:include], context: "#{context}[:include]") unless input[:include].nil?
      end
    end

    class DescribeContainerInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeContainerInstancesOutput, context: context)
        ContainerInstances.validate!(input[:container_instances], context: "#{context}[:container_instances]") unless input[:container_instances].nil?
        Failures.validate!(input[:failures], context: "#{context}[:failures]") unless input[:failures].nil?
      end
    end

    class DescribeServicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeServicesInput, context: context)
        Hearth::Validator.validate!(input[:cluster], ::String, context: "#{context}[:cluster]")
        StringList.validate!(input[:services], context: "#{context}[:services]") unless input[:services].nil?
        ServiceFieldList.validate!(input[:include], context: "#{context}[:include]") unless input[:include].nil?
      end
    end

    class DescribeServicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeServicesOutput, context: context)
        Services.validate!(input[:services], context: "#{context}[:services]") unless input[:services].nil?
        Failures.validate!(input[:failures], context: "#{context}[:failures]") unless input[:failures].nil?
      end
    end

    class DescribeTaskDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTaskDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:task_definition], ::String, context: "#{context}[:task_definition]")
        TaskDefinitionFieldList.validate!(input[:include], context: "#{context}[:include]") unless input[:include].nil?
      end
    end

    class DescribeTaskDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTaskDefinitionOutput, context: context)
        TaskDefinition.validate!(input[:task_definition], context: "#{context}[:task_definition]") unless input[:task_definition].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DescribeTaskSetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTaskSetsInput, context: context)
        Hearth::Validator.validate!(input[:cluster], ::String, context: "#{context}[:cluster]")
        Hearth::Validator.validate!(input[:service], ::String, context: "#{context}[:service]")
        StringList.validate!(input[:task_sets], context: "#{context}[:task_sets]") unless input[:task_sets].nil?
        TaskSetFieldList.validate!(input[:include], context: "#{context}[:include]") unless input[:include].nil?
      end
    end

    class DescribeTaskSetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTaskSetsOutput, context: context)
        TaskSets.validate!(input[:task_sets], context: "#{context}[:task_sets]") unless input[:task_sets].nil?
        Failures.validate!(input[:failures], context: "#{context}[:failures]") unless input[:failures].nil?
      end
    end

    class DescribeTasksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTasksInput, context: context)
        Hearth::Validator.validate!(input[:cluster], ::String, context: "#{context}[:cluster]")
        StringList.validate!(input[:tasks], context: "#{context}[:tasks]") unless input[:tasks].nil?
        TaskFieldList.validate!(input[:include], context: "#{context}[:include]") unless input[:include].nil?
      end
    end

    class DescribeTasksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTasksOutput, context: context)
        Tasks.validate!(input[:tasks], context: "#{context}[:tasks]") unless input[:tasks].nil?
        Failures.validate!(input[:failures], context: "#{context}[:failures]") unless input[:failures].nil?
      end
    end

    class Device
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Device, context: context)
        Hearth::Validator.validate!(input[:host_path], ::String, context: "#{context}[:host_path]")
        Hearth::Validator.validate!(input[:container_path], ::String, context: "#{context}[:container_path]")
        DeviceCgroupPermissions.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
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
          Device.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DiscoverPollEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DiscoverPollEndpointInput, context: context)
        Hearth::Validator.validate!(input[:container_instance], ::String, context: "#{context}[:container_instance]")
        Hearth::Validator.validate!(input[:cluster], ::String, context: "#{context}[:cluster]")
      end
    end

    class DiscoverPollEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DiscoverPollEndpointOutput, context: context)
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
        Hearth::Validator.validate!(input[:telemetry_endpoint], ::String, context: "#{context}[:telemetry_endpoint]")
      end
    end

    class DockerLabelsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class DockerVolumeConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DockerVolumeConfiguration, context: context)
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:autoprovision], ::TrueClass, ::FalseClass, context: "#{context}[:autoprovision]")
        Hearth::Validator.validate!(input[:driver], ::String, context: "#{context}[:driver]")
        StringMap.validate!(input[:driver_opts], context: "#{context}[:driver_opts]") unless input[:driver_opts].nil?
        StringMap.validate!(input[:labels], context: "#{context}[:labels]") unless input[:labels].nil?
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
        EFSAuthorizationConfig.validate!(input[:authorization_config], context: "#{context}[:authorization_config]") unless input[:authorization_config].nil?
      end
    end

    class EnvironmentFile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnvironmentFile, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class EnvironmentFiles
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EnvironmentFile.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EnvironmentVariables
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          KeyValuePair.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EphemeralStorage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EphemeralStorage, context: context)
        Hearth::Validator.validate!(input[:size_in_gi_b], ::Integer, context: "#{context}[:size_in_gi_b]")
      end
    end

    class ExecuteCommandConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecuteCommandConfiguration, context: context)
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:logging], ::String, context: "#{context}[:logging]")
        ExecuteCommandLogConfiguration.validate!(input[:log_configuration], context: "#{context}[:log_configuration]") unless input[:log_configuration].nil?
      end
    end

    class ExecuteCommandInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecuteCommandInput, context: context)
        Hearth::Validator.validate!(input[:cluster], ::String, context: "#{context}[:cluster]")
        Hearth::Validator.validate!(input[:container], ::String, context: "#{context}[:container]")
        Hearth::Validator.validate!(input[:command], ::String, context: "#{context}[:command]")
        Hearth::Validator.validate!(input[:interactive], ::TrueClass, ::FalseClass, context: "#{context}[:interactive]")
        Hearth::Validator.validate!(input[:task], ::String, context: "#{context}[:task]")
      end
    end

    class ExecuteCommandLogConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecuteCommandLogConfiguration, context: context)
        Hearth::Validator.validate!(input[:cloud_watch_log_group_name], ::String, context: "#{context}[:cloud_watch_log_group_name]")
        Hearth::Validator.validate!(input[:cloud_watch_encryption_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:cloud_watch_encryption_enabled]")
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Hearth::Validator.validate!(input[:s3_encryption_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:s3_encryption_enabled]")
        Hearth::Validator.validate!(input[:s3_key_prefix], ::String, context: "#{context}[:s3_key_prefix]")
      end
    end

    class ExecuteCommandOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecuteCommandOutput, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Hearth::Validator.validate!(input[:container_arn], ::String, context: "#{context}[:container_arn]")
        Hearth::Validator.validate!(input[:container_name], ::String, context: "#{context}[:container_name]")
        Hearth::Validator.validate!(input[:interactive], ::TrueClass, ::FalseClass, context: "#{context}[:interactive]")
        Session.validate!(input[:session], context: "#{context}[:session]") unless input[:session].nil?
        Hearth::Validator.validate!(input[:task_arn], ::String, context: "#{context}[:task_arn]")
      end
    end

    class FSxWindowsFileServerAuthorizationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FSxWindowsFileServerAuthorizationConfig, context: context)
        Hearth::Validator.validate!(input[:credentials_parameter], ::String, context: "#{context}[:credentials_parameter]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
      end
    end

    class FSxWindowsFileServerVolumeConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FSxWindowsFileServerVolumeConfiguration, context: context)
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Hearth::Validator.validate!(input[:root_directory], ::String, context: "#{context}[:root_directory]")
        FSxWindowsFileServerAuthorizationConfig.validate!(input[:authorization_config], context: "#{context}[:authorization_config]") unless input[:authorization_config].nil?
      end
    end

    class Failure
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Failure, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Hearth::Validator.validate!(input[:detail], ::String, context: "#{context}[:detail]")
      end
    end

    class Failures
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Failure.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FirelensConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FirelensConfiguration, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        FirelensConfigurationOptionsMap.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
      end
    end

    class FirelensConfigurationOptionsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class GpuIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class HealthCheck
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HealthCheck, context: context)
        StringList.validate!(input[:command], context: "#{context}[:command]") unless input[:command].nil?
        Hearth::Validator.validate!(input[:interval], ::Integer, context: "#{context}[:interval]")
        Hearth::Validator.validate!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Hearth::Validator.validate!(input[:retries], ::Integer, context: "#{context}[:retries]")
        Hearth::Validator.validate!(input[:start_period], ::Integer, context: "#{context}[:start_period]")
      end
    end

    class HostEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HostEntry, context: context)
        Hearth::Validator.validate!(input[:hostname], ::String, context: "#{context}[:hostname]")
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
      end
    end

    class HostEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          HostEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class HostVolumeProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HostVolumeProperties, context: context)
        Hearth::Validator.validate!(input[:source_path], ::String, context: "#{context}[:source_path]")
      end
    end

    class InferenceAccelerator
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InferenceAccelerator, context: context)
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
        Hearth::Validator.validate!(input[:device_type], ::String, context: "#{context}[:device_type]")
      end
    end

    class InferenceAcceleratorOverride
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InferenceAcceleratorOverride, context: context)
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
        Hearth::Validator.validate!(input[:device_type], ::String, context: "#{context}[:device_type]")
      end
    end

    class InferenceAcceleratorOverrides
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InferenceAcceleratorOverride.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InferenceAccelerators
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InferenceAccelerator.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstanceHealthCheckResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceHealthCheckResult, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:last_updated], ::Time, context: "#{context}[:last_updated]")
        Hearth::Validator.validate!(input[:last_status_change], ::Time, context: "#{context}[:last_status_change]")
      end
    end

    class InstanceHealthCheckResultList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InstanceHealthCheckResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InvalidParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KernelCapabilities
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KernelCapabilities, context: context)
        StringList.validate!(input[:add], context: "#{context}[:add]") unless input[:add].nil?
        StringList.validate!(input[:drop], context: "#{context}[:drop]") unless input[:drop].nil?
      end
    end

    class KeyValuePair
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeyValuePair, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LinuxParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LinuxParameters, context: context)
        KernelCapabilities.validate!(input[:capabilities], context: "#{context}[:capabilities]") unless input[:capabilities].nil?
        DevicesList.validate!(input[:devices], context: "#{context}[:devices]") unless input[:devices].nil?
        Hearth::Validator.validate!(input[:init_process_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:init_process_enabled]")
        Hearth::Validator.validate!(input[:shared_memory_size], ::Integer, context: "#{context}[:shared_memory_size]")
        TmpfsList.validate!(input[:tmpfs], context: "#{context}[:tmpfs]") unless input[:tmpfs].nil?
        Hearth::Validator.validate!(input[:max_swap], ::Integer, context: "#{context}[:max_swap]")
        Hearth::Validator.validate!(input[:swappiness], ::Integer, context: "#{context}[:swappiness]")
      end
    end

    class ListAccountSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccountSettingsInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:principal_arn], ::String, context: "#{context}[:principal_arn]")
        Hearth::Validator.validate!(input[:effective_settings], ::TrueClass, ::FalseClass, context: "#{context}[:effective_settings]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAccountSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccountSettingsOutput, context: context)
        Settings.validate!(input[:settings], context: "#{context}[:settings]") unless input[:settings].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAttributesInput, context: context)
        Hearth::Validator.validate!(input[:cluster], ::String, context: "#{context}[:cluster]")
        Hearth::Validator.validate!(input[:target_type], ::String, context: "#{context}[:target_type]")
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        Hearth::Validator.validate!(input[:attribute_value], ::String, context: "#{context}[:attribute_value]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAttributesOutput, context: context)
        Attributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListClustersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListClustersInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListClustersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListClustersOutput, context: context)
        StringList.validate!(input[:cluster_arns], context: "#{context}[:cluster_arns]") unless input[:cluster_arns].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListContainerInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListContainerInstancesInput, context: context)
        Hearth::Validator.validate!(input[:cluster], ::String, context: "#{context}[:cluster]")
        Hearth::Validator.validate!(input[:filter], ::String, context: "#{context}[:filter]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ListContainerInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListContainerInstancesOutput, context: context)
        StringList.validate!(input[:container_instance_arns], context: "#{context}[:container_instance_arns]") unless input[:container_instance_arns].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListServicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServicesInput, context: context)
        Hearth::Validator.validate!(input[:cluster], ::String, context: "#{context}[:cluster]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:launch_type], ::String, context: "#{context}[:launch_type]")
        Hearth::Validator.validate!(input[:scheduling_strategy], ::String, context: "#{context}[:scheduling_strategy]")
      end
    end

    class ListServicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServicesOutput, context: context)
        StringList.validate!(input[:service_arns], context: "#{context}[:service_arns]") unless input[:service_arns].nil?
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
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListTaskDefinitionFamiliesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTaskDefinitionFamiliesInput, context: context)
        Hearth::Validator.validate!(input[:family_prefix], ::String, context: "#{context}[:family_prefix]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTaskDefinitionFamiliesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTaskDefinitionFamiliesOutput, context: context)
        StringList.validate!(input[:families], context: "#{context}[:families]") unless input[:families].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTaskDefinitionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTaskDefinitionsInput, context: context)
        Hearth::Validator.validate!(input[:family_prefix], ::String, context: "#{context}[:family_prefix]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:sort], ::String, context: "#{context}[:sort]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTaskDefinitionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTaskDefinitionsOutput, context: context)
        StringList.validate!(input[:task_definition_arns], context: "#{context}[:task_definition_arns]") unless input[:task_definition_arns].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTasksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTasksInput, context: context)
        Hearth::Validator.validate!(input[:cluster], ::String, context: "#{context}[:cluster]")
        Hearth::Validator.validate!(input[:container_instance], ::String, context: "#{context}[:container_instance]")
        Hearth::Validator.validate!(input[:family], ::String, context: "#{context}[:family]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:started_by], ::String, context: "#{context}[:started_by]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:desired_status], ::String, context: "#{context}[:desired_status]")
        Hearth::Validator.validate!(input[:launch_type], ::String, context: "#{context}[:launch_type]")
      end
    end

    class ListTasksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTasksOutput, context: context)
        StringList.validate!(input[:task_arns], context: "#{context}[:task_arns]") unless input[:task_arns].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class LoadBalancer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoadBalancer, context: context)
        Hearth::Validator.validate!(input[:target_group_arn], ::String, context: "#{context}[:target_group_arn]")
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        Hearth::Validator.validate!(input[:container_name], ::String, context: "#{context}[:container_name]")
        Hearth::Validator.validate!(input[:container_port], ::Integer, context: "#{context}[:container_port]")
      end
    end

    class LoadBalancers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LoadBalancer.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LogConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogConfiguration, context: context)
        Hearth::Validator.validate!(input[:log_driver], ::String, context: "#{context}[:log_driver]")
        LogConfigurationOptionsMap.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        SecretList.validate!(input[:secret_options], context: "#{context}[:secret_options]") unless input[:secret_options].nil?
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

    class ManagedAgent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ManagedAgent, context: context)
        Hearth::Validator.validate!(input[:last_started_at], ::Time, context: "#{context}[:last_started_at]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Hearth::Validator.validate!(input[:last_status], ::String, context: "#{context}[:last_status]")
      end
    end

    class ManagedAgentStateChange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ManagedAgentStateChange, context: context)
        Hearth::Validator.validate!(input[:container_name], ::String, context: "#{context}[:container_name]")
        Hearth::Validator.validate!(input[:managed_agent_name], ::String, context: "#{context}[:managed_agent_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class ManagedAgentStateChanges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ManagedAgentStateChange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ManagedAgents
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ManagedAgent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ManagedScaling
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ManagedScaling, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:target_capacity], ::Integer, context: "#{context}[:target_capacity]")
        Hearth::Validator.validate!(input[:minimum_scaling_step_size], ::Integer, context: "#{context}[:minimum_scaling_step_size]")
        Hearth::Validator.validate!(input[:maximum_scaling_step_size], ::Integer, context: "#{context}[:maximum_scaling_step_size]")
        Hearth::Validator.validate!(input[:instance_warmup_period], ::Integer, context: "#{context}[:instance_warmup_period]")
      end
    end

    class MissingVersionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MissingVersionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MountPoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MountPoint, context: context)
        Hearth::Validator.validate!(input[:source_volume], ::String, context: "#{context}[:source_volume]")
        Hearth::Validator.validate!(input[:container_path], ::String, context: "#{context}[:container_path]")
        Hearth::Validator.validate!(input[:read_only], ::TrueClass, ::FalseClass, context: "#{context}[:read_only]")
      end
    end

    class MountPointList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MountPoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NetworkBinding
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkBinding, context: context)
        Hearth::Validator.validate!(input[:bind_ip], ::String, context: "#{context}[:bind_ip]")
        Hearth::Validator.validate!(input[:container_port], ::Integer, context: "#{context}[:container_port]")
        Hearth::Validator.validate!(input[:host_port], ::Integer, context: "#{context}[:host_port]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
      end
    end

    class NetworkBindings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          NetworkBinding.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NetworkConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkConfiguration, context: context)
        AwsVpcConfiguration.validate!(input[:awsvpc_configuration], context: "#{context}[:awsvpc_configuration]") unless input[:awsvpc_configuration].nil?
      end
    end

    class NetworkInterface
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkInterface, context: context)
        Hearth::Validator.validate!(input[:attachment_id], ::String, context: "#{context}[:attachment_id]")
        Hearth::Validator.validate!(input[:private_ipv4_address], ::String, context: "#{context}[:private_ipv4_address]")
        Hearth::Validator.validate!(input[:ipv6_address], ::String, context: "#{context}[:ipv6_address]")
      end
    end

    class NetworkInterfaces
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          NetworkInterface.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NoUpdateAvailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoUpdateAvailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PlacementConstraint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlacementConstraint, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:expression], ::String, context: "#{context}[:expression]")
      end
    end

    class PlacementConstraints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PlacementConstraint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PlacementStrategies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PlacementStrategy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PlacementStrategy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlacementStrategy, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:field], ::String, context: "#{context}[:field]")
      end
    end

    class PlatformDevice
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlatformDevice, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class PlatformDevices
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PlatformDevice.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PlatformTaskDefinitionIncompatibilityException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlatformTaskDefinitionIncompatibilityException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PlatformUnknownException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlatformUnknownException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PortMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PortMapping, context: context)
        Hearth::Validator.validate!(input[:container_port], ::Integer, context: "#{context}[:container_port]")
        Hearth::Validator.validate!(input[:host_port], ::Integer, context: "#{context}[:host_port]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
      end
    end

    class PortMappingList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PortMapping.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProxyConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProxyConfiguration, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:container_name], ::String, context: "#{context}[:container_name]")
        ProxyConfigurationProperties.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
      end
    end

    class ProxyConfigurationProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          KeyValuePair.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutAccountSettingDefaultInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAccountSettingDefaultInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class PutAccountSettingDefaultOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAccountSettingDefaultOutput, context: context)
        Setting.validate!(input[:setting], context: "#{context}[:setting]") unless input[:setting].nil?
      end
    end

    class PutAccountSettingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAccountSettingInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:principal_arn], ::String, context: "#{context}[:principal_arn]")
      end
    end

    class PutAccountSettingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAccountSettingOutput, context: context)
        Setting.validate!(input[:setting], context: "#{context}[:setting]") unless input[:setting].nil?
      end
    end

    class PutAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAttributesInput, context: context)
        Hearth::Validator.validate!(input[:cluster], ::String, context: "#{context}[:cluster]")
        Attributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class PutAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAttributesOutput, context: context)
        Attributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class PutClusterCapacityProvidersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutClusterCapacityProvidersInput, context: context)
        Hearth::Validator.validate!(input[:cluster], ::String, context: "#{context}[:cluster]")
        StringList.validate!(input[:capacity_providers], context: "#{context}[:capacity_providers]") unless input[:capacity_providers].nil?
        CapacityProviderStrategy.validate!(input[:default_capacity_provider_strategy], context: "#{context}[:default_capacity_provider_strategy]") unless input[:default_capacity_provider_strategy].nil?
      end
    end

    class PutClusterCapacityProvidersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutClusterCapacityProvidersOutput, context: context)
        Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class RegisterContainerInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterContainerInstanceInput, context: context)
        Hearth::Validator.validate!(input[:cluster], ::String, context: "#{context}[:cluster]")
        Hearth::Validator.validate!(input[:instance_identity_document], ::String, context: "#{context}[:instance_identity_document]")
        Hearth::Validator.validate!(input[:instance_identity_document_signature], ::String, context: "#{context}[:instance_identity_document_signature]")
        Resources.validate!(input[:total_resources], context: "#{context}[:total_resources]") unless input[:total_resources].nil?
        VersionInfo.validate!(input[:version_info], context: "#{context}[:version_info]") unless input[:version_info].nil?
        Hearth::Validator.validate!(input[:container_instance_arn], ::String, context: "#{context}[:container_instance_arn]")
        Attributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        PlatformDevices.validate!(input[:platform_devices], context: "#{context}[:platform_devices]") unless input[:platform_devices].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class RegisterContainerInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterContainerInstanceOutput, context: context)
        ContainerInstance.validate!(input[:container_instance], context: "#{context}[:container_instance]") unless input[:container_instance].nil?
      end
    end

    class RegisterTaskDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterTaskDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:family], ::String, context: "#{context}[:family]")
        Hearth::Validator.validate!(input[:task_role_arn], ::String, context: "#{context}[:task_role_arn]")
        Hearth::Validator.validate!(input[:execution_role_arn], ::String, context: "#{context}[:execution_role_arn]")
        Hearth::Validator.validate!(input[:network_mode], ::String, context: "#{context}[:network_mode]")
        ContainerDefinitions.validate!(input[:container_definitions], context: "#{context}[:container_definitions]") unless input[:container_definitions].nil?
        VolumeList.validate!(input[:volumes], context: "#{context}[:volumes]") unless input[:volumes].nil?
        TaskDefinitionPlacementConstraints.validate!(input[:placement_constraints], context: "#{context}[:placement_constraints]") unless input[:placement_constraints].nil?
        CompatibilityList.validate!(input[:requires_compatibilities], context: "#{context}[:requires_compatibilities]") unless input[:requires_compatibilities].nil?
        Hearth::Validator.validate!(input[:cpu], ::String, context: "#{context}[:cpu]")
        Hearth::Validator.validate!(input[:memory], ::String, context: "#{context}[:memory]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:pid_mode], ::String, context: "#{context}[:pid_mode]")
        Hearth::Validator.validate!(input[:ipc_mode], ::String, context: "#{context}[:ipc_mode]")
        ProxyConfiguration.validate!(input[:proxy_configuration], context: "#{context}[:proxy_configuration]") unless input[:proxy_configuration].nil?
        InferenceAccelerators.validate!(input[:inference_accelerators], context: "#{context}[:inference_accelerators]") unless input[:inference_accelerators].nil?
        EphemeralStorage.validate!(input[:ephemeral_storage], context: "#{context}[:ephemeral_storage]") unless input[:ephemeral_storage].nil?
        RuntimePlatform.validate!(input[:runtime_platform], context: "#{context}[:runtime_platform]") unless input[:runtime_platform].nil?
      end
    end

    class RegisterTaskDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterTaskDefinitionOutput, context: context)
        TaskDefinition.validate!(input[:task_definition], context: "#{context}[:task_definition]") unless input[:task_definition].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class RepositoryCredentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryCredentials, context: context)
        Hearth::Validator.validate!(input[:credentials_parameter], ::String, context: "#{context}[:credentials_parameter]")
      end
    end

    class RequiresAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Attribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Resource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Resource, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:double_value], ::Float, context: "#{context}[:double_value]")
        Hearth::Validator.validate!(input[:long_value], ::Integer, context: "#{context}[:long_value]")
        Hearth::Validator.validate!(input[:integer_value], ::Integer, context: "#{context}[:integer_value]")
        StringList.validate!(input[:string_set_value], context: "#{context}[:string_set_value]") unless input[:string_set_value].nil?
      end
    end

    class ResourceInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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
          ResourceRequirement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Resources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Resource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RunTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RunTaskInput, context: context)
        CapacityProviderStrategy.validate!(input[:capacity_provider_strategy], context: "#{context}[:capacity_provider_strategy]") unless input[:capacity_provider_strategy].nil?
        Hearth::Validator.validate!(input[:cluster], ::String, context: "#{context}[:cluster]")
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Hearth::Validator.validate!(input[:enable_ecs_managed_tags], ::TrueClass, ::FalseClass, context: "#{context}[:enable_ecs_managed_tags]")
        Hearth::Validator.validate!(input[:enable_execute_command], ::TrueClass, ::FalseClass, context: "#{context}[:enable_execute_command]")
        Hearth::Validator.validate!(input[:group], ::String, context: "#{context}[:group]")
        Hearth::Validator.validate!(input[:launch_type], ::String, context: "#{context}[:launch_type]")
        NetworkConfiguration.validate!(input[:network_configuration], context: "#{context}[:network_configuration]") unless input[:network_configuration].nil?
        TaskOverride.validate!(input[:overrides], context: "#{context}[:overrides]") unless input[:overrides].nil?
        PlacementConstraints.validate!(input[:placement_constraints], context: "#{context}[:placement_constraints]") unless input[:placement_constraints].nil?
        PlacementStrategies.validate!(input[:placement_strategy], context: "#{context}[:placement_strategy]") unless input[:placement_strategy].nil?
        Hearth::Validator.validate!(input[:platform_version], ::String, context: "#{context}[:platform_version]")
        Hearth::Validator.validate!(input[:propagate_tags], ::String, context: "#{context}[:propagate_tags]")
        Hearth::Validator.validate!(input[:reference_id], ::String, context: "#{context}[:reference_id]")
        Hearth::Validator.validate!(input[:started_by], ::String, context: "#{context}[:started_by]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:task_definition], ::String, context: "#{context}[:task_definition]")
      end
    end

    class RunTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RunTaskOutput, context: context)
        Tasks.validate!(input[:tasks], context: "#{context}[:tasks]") unless input[:tasks].nil?
        Failures.validate!(input[:failures], context: "#{context}[:failures]") unless input[:failures].nil?
      end
    end

    class RuntimePlatform
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuntimePlatform, context: context)
        Hearth::Validator.validate!(input[:cpu_architecture], ::String, context: "#{context}[:cpu_architecture]")
        Hearth::Validator.validate!(input[:operating_system_family], ::String, context: "#{context}[:operating_system_family]")
      end
    end

    class Scale
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Scale, context: context)
        Hearth::Validator.validate!(input[:value], ::Float, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
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
          Secret.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Service
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Service, context: context)
        Hearth::Validator.validate!(input[:service_arn], ::String, context: "#{context}[:service_arn]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        LoadBalancers.validate!(input[:load_balancers], context: "#{context}[:load_balancers]") unless input[:load_balancers].nil?
        ServiceRegistries.validate!(input[:service_registries], context: "#{context}[:service_registries]") unless input[:service_registries].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:desired_count], ::Integer, context: "#{context}[:desired_count]")
        Hearth::Validator.validate!(input[:running_count], ::Integer, context: "#{context}[:running_count]")
        Hearth::Validator.validate!(input[:pending_count], ::Integer, context: "#{context}[:pending_count]")
        Hearth::Validator.validate!(input[:launch_type], ::String, context: "#{context}[:launch_type]")
        CapacityProviderStrategy.validate!(input[:capacity_provider_strategy], context: "#{context}[:capacity_provider_strategy]") unless input[:capacity_provider_strategy].nil?
        Hearth::Validator.validate!(input[:platform_version], ::String, context: "#{context}[:platform_version]")
        Hearth::Validator.validate!(input[:platform_family], ::String, context: "#{context}[:platform_family]")
        Hearth::Validator.validate!(input[:task_definition], ::String, context: "#{context}[:task_definition]")
        DeploymentConfiguration.validate!(input[:deployment_configuration], context: "#{context}[:deployment_configuration]") unless input[:deployment_configuration].nil?
        TaskSets.validate!(input[:task_sets], context: "#{context}[:task_sets]") unless input[:task_sets].nil?
        Deployments.validate!(input[:deployments], context: "#{context}[:deployments]") unless input[:deployments].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        ServiceEvents.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        PlacementConstraints.validate!(input[:placement_constraints], context: "#{context}[:placement_constraints]") unless input[:placement_constraints].nil?
        PlacementStrategies.validate!(input[:placement_strategy], context: "#{context}[:placement_strategy]") unless input[:placement_strategy].nil?
        NetworkConfiguration.validate!(input[:network_configuration], context: "#{context}[:network_configuration]") unless input[:network_configuration].nil?
        Hearth::Validator.validate!(input[:health_check_grace_period_seconds], ::Integer, context: "#{context}[:health_check_grace_period_seconds]")
        Hearth::Validator.validate!(input[:scheduling_strategy], ::String, context: "#{context}[:scheduling_strategy]")
        DeploymentController.validate!(input[:deployment_controller], context: "#{context}[:deployment_controller]") unless input[:deployment_controller].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
        Hearth::Validator.validate!(input[:enable_ecs_managed_tags], ::TrueClass, ::FalseClass, context: "#{context}[:enable_ecs_managed_tags]")
        Hearth::Validator.validate!(input[:propagate_tags], ::String, context: "#{context}[:propagate_tags]")
        Hearth::Validator.validate!(input[:enable_execute_command], ::TrueClass, ::FalseClass, context: "#{context}[:enable_execute_command]")
      end
    end

    class ServiceEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceEvent, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceEvents
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ServiceEvent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceFieldList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ServiceNotActiveException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceNotActiveException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceRegistries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ServiceRegistry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceRegistry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceRegistry, context: context)
        Hearth::Validator.validate!(input[:registry_arn], ::String, context: "#{context}[:registry_arn]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:container_name], ::String, context: "#{context}[:container_name]")
        Hearth::Validator.validate!(input[:container_port], ::Integer, context: "#{context}[:container_port]")
      end
    end

    class Services
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Service.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Session
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Session, context: context)
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Hearth::Validator.validate!(input[:stream_url], ::String, context: "#{context}[:stream_url]")
        Hearth::Validator.validate!(input[:token_value], ::String, context: "#{context}[:token_value]")
      end
    end

    class Setting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Setting, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:principal_arn], ::String, context: "#{context}[:principal_arn]")
      end
    end

    class Settings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Setting.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StartTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartTaskInput, context: context)
        Hearth::Validator.validate!(input[:cluster], ::String, context: "#{context}[:cluster]")
        StringList.validate!(input[:container_instances], context: "#{context}[:container_instances]") unless input[:container_instances].nil?
        Hearth::Validator.validate!(input[:enable_ecs_managed_tags], ::TrueClass, ::FalseClass, context: "#{context}[:enable_ecs_managed_tags]")
        Hearth::Validator.validate!(input[:enable_execute_command], ::TrueClass, ::FalseClass, context: "#{context}[:enable_execute_command]")
        Hearth::Validator.validate!(input[:group], ::String, context: "#{context}[:group]")
        NetworkConfiguration.validate!(input[:network_configuration], context: "#{context}[:network_configuration]") unless input[:network_configuration].nil?
        TaskOverride.validate!(input[:overrides], context: "#{context}[:overrides]") unless input[:overrides].nil?
        Hearth::Validator.validate!(input[:propagate_tags], ::String, context: "#{context}[:propagate_tags]")
        Hearth::Validator.validate!(input[:reference_id], ::String, context: "#{context}[:reference_id]")
        Hearth::Validator.validate!(input[:started_by], ::String, context: "#{context}[:started_by]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:task_definition], ::String, context: "#{context}[:task_definition]")
      end
    end

    class StartTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartTaskOutput, context: context)
        Tasks.validate!(input[:tasks], context: "#{context}[:tasks]") unless input[:tasks].nil?
        Failures.validate!(input[:failures], context: "#{context}[:failures]") unless input[:failures].nil?
      end
    end

    class Statistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          KeyValuePair.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StopTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopTaskInput, context: context)
        Hearth::Validator.validate!(input[:cluster], ::String, context: "#{context}[:cluster]")
        Hearth::Validator.validate!(input[:task], ::String, context: "#{context}[:task]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class StopTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopTaskOutput, context: context)
        Task.validate!(input[:task], context: "#{context}[:task]") unless input[:task].nil?
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

    class StringMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class SubmitAttachmentStateChangesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubmitAttachmentStateChangesInput, context: context)
        Hearth::Validator.validate!(input[:cluster], ::String, context: "#{context}[:cluster]")
        AttachmentStateChanges.validate!(input[:attachments], context: "#{context}[:attachments]") unless input[:attachments].nil?
      end
    end

    class SubmitAttachmentStateChangesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubmitAttachmentStateChangesOutput, context: context)
        Hearth::Validator.validate!(input[:acknowledgment], ::String, context: "#{context}[:acknowledgment]")
      end
    end

    class SubmitContainerStateChangeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubmitContainerStateChangeInput, context: context)
        Hearth::Validator.validate!(input[:cluster], ::String, context: "#{context}[:cluster]")
        Hearth::Validator.validate!(input[:task], ::String, context: "#{context}[:task]")
        Hearth::Validator.validate!(input[:container_name], ::String, context: "#{context}[:container_name]")
        Hearth::Validator.validate!(input[:runtime_id], ::String, context: "#{context}[:runtime_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:exit_code], ::Integer, context: "#{context}[:exit_code]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        NetworkBindings.validate!(input[:network_bindings], context: "#{context}[:network_bindings]") unless input[:network_bindings].nil?
      end
    end

    class SubmitContainerStateChangeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubmitContainerStateChangeOutput, context: context)
        Hearth::Validator.validate!(input[:acknowledgment], ::String, context: "#{context}[:acknowledgment]")
      end
    end

    class SubmitTaskStateChangeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubmitTaskStateChangeInput, context: context)
        Hearth::Validator.validate!(input[:cluster], ::String, context: "#{context}[:cluster]")
        Hearth::Validator.validate!(input[:task], ::String, context: "#{context}[:task]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        ContainerStateChanges.validate!(input[:containers], context: "#{context}[:containers]") unless input[:containers].nil?
        AttachmentStateChanges.validate!(input[:attachments], context: "#{context}[:attachments]") unless input[:attachments].nil?
        ManagedAgentStateChanges.validate!(input[:managed_agents], context: "#{context}[:managed_agents]") unless input[:managed_agents].nil?
        Hearth::Validator.validate!(input[:pull_started_at], ::Time, context: "#{context}[:pull_started_at]")
        Hearth::Validator.validate!(input[:pull_stopped_at], ::Time, context: "#{context}[:pull_stopped_at]")
        Hearth::Validator.validate!(input[:execution_stopped_at], ::Time, context: "#{context}[:execution_stopped_at]")
      end
    end

    class SubmitTaskStateChangeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubmitTaskStateChangeOutput, context: context)
        Hearth::Validator.validate!(input[:acknowledgment], ::String, context: "#{context}[:acknowledgment]")
      end
    end

    class SystemControl
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SystemControl, context: context)
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class SystemControls
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SystemControl.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeys
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
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TargetNotConnectedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetNotConnectedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TargetNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Task
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Task, context: context)
        Attachments.validate!(input[:attachments], context: "#{context}[:attachments]") unless input[:attachments].nil?
        Attributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:capacity_provider_name], ::String, context: "#{context}[:capacity_provider_name]")
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Hearth::Validator.validate!(input[:connectivity], ::String, context: "#{context}[:connectivity]")
        Hearth::Validator.validate!(input[:connectivity_at], ::Time, context: "#{context}[:connectivity_at]")
        Hearth::Validator.validate!(input[:container_instance_arn], ::String, context: "#{context}[:container_instance_arn]")
        Containers.validate!(input[:containers], context: "#{context}[:containers]") unless input[:containers].nil?
        Hearth::Validator.validate!(input[:cpu], ::String, context: "#{context}[:cpu]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:desired_status], ::String, context: "#{context}[:desired_status]")
        Hearth::Validator.validate!(input[:enable_execute_command], ::TrueClass, ::FalseClass, context: "#{context}[:enable_execute_command]")
        Hearth::Validator.validate!(input[:execution_stopped_at], ::Time, context: "#{context}[:execution_stopped_at]")
        Hearth::Validator.validate!(input[:group], ::String, context: "#{context}[:group]")
        Hearth::Validator.validate!(input[:health_status], ::String, context: "#{context}[:health_status]")
        InferenceAccelerators.validate!(input[:inference_accelerators], context: "#{context}[:inference_accelerators]") unless input[:inference_accelerators].nil?
        Hearth::Validator.validate!(input[:last_status], ::String, context: "#{context}[:last_status]")
        Hearth::Validator.validate!(input[:launch_type], ::String, context: "#{context}[:launch_type]")
        Hearth::Validator.validate!(input[:memory], ::String, context: "#{context}[:memory]")
        TaskOverride.validate!(input[:overrides], context: "#{context}[:overrides]") unless input[:overrides].nil?
        Hearth::Validator.validate!(input[:platform_version], ::String, context: "#{context}[:platform_version]")
        Hearth::Validator.validate!(input[:platform_family], ::String, context: "#{context}[:platform_family]")
        Hearth::Validator.validate!(input[:pull_started_at], ::Time, context: "#{context}[:pull_started_at]")
        Hearth::Validator.validate!(input[:pull_stopped_at], ::Time, context: "#{context}[:pull_stopped_at]")
        Hearth::Validator.validate!(input[:started_at], ::Time, context: "#{context}[:started_at]")
        Hearth::Validator.validate!(input[:started_by], ::String, context: "#{context}[:started_by]")
        Hearth::Validator.validate!(input[:stop_code], ::String, context: "#{context}[:stop_code]")
        Hearth::Validator.validate!(input[:stopped_at], ::Time, context: "#{context}[:stopped_at]")
        Hearth::Validator.validate!(input[:stopped_reason], ::String, context: "#{context}[:stopped_reason]")
        Hearth::Validator.validate!(input[:stopping_at], ::Time, context: "#{context}[:stopping_at]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:task_arn], ::String, context: "#{context}[:task_arn]")
        Hearth::Validator.validate!(input[:task_definition_arn], ::String, context: "#{context}[:task_definition_arn]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        EphemeralStorage.validate!(input[:ephemeral_storage], context: "#{context}[:ephemeral_storage]") unless input[:ephemeral_storage].nil?
      end
    end

    class TaskDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskDefinition, context: context)
        Hearth::Validator.validate!(input[:task_definition_arn], ::String, context: "#{context}[:task_definition_arn]")
        ContainerDefinitions.validate!(input[:container_definitions], context: "#{context}[:container_definitions]") unless input[:container_definitions].nil?
        Hearth::Validator.validate!(input[:family], ::String, context: "#{context}[:family]")
        Hearth::Validator.validate!(input[:task_role_arn], ::String, context: "#{context}[:task_role_arn]")
        Hearth::Validator.validate!(input[:execution_role_arn], ::String, context: "#{context}[:execution_role_arn]")
        Hearth::Validator.validate!(input[:network_mode], ::String, context: "#{context}[:network_mode]")
        Hearth::Validator.validate!(input[:revision], ::Integer, context: "#{context}[:revision]")
        VolumeList.validate!(input[:volumes], context: "#{context}[:volumes]") unless input[:volumes].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        RequiresAttributes.validate!(input[:requires_attributes], context: "#{context}[:requires_attributes]") unless input[:requires_attributes].nil?
        TaskDefinitionPlacementConstraints.validate!(input[:placement_constraints], context: "#{context}[:placement_constraints]") unless input[:placement_constraints].nil?
        CompatibilityList.validate!(input[:compatibilities], context: "#{context}[:compatibilities]") unless input[:compatibilities].nil?
        RuntimePlatform.validate!(input[:runtime_platform], context: "#{context}[:runtime_platform]") unless input[:runtime_platform].nil?
        CompatibilityList.validate!(input[:requires_compatibilities], context: "#{context}[:requires_compatibilities]") unless input[:requires_compatibilities].nil?
        Hearth::Validator.validate!(input[:cpu], ::String, context: "#{context}[:cpu]")
        Hearth::Validator.validate!(input[:memory], ::String, context: "#{context}[:memory]")
        InferenceAccelerators.validate!(input[:inference_accelerators], context: "#{context}[:inference_accelerators]") unless input[:inference_accelerators].nil?
        Hearth::Validator.validate!(input[:pid_mode], ::String, context: "#{context}[:pid_mode]")
        Hearth::Validator.validate!(input[:ipc_mode], ::String, context: "#{context}[:ipc_mode]")
        ProxyConfiguration.validate!(input[:proxy_configuration], context: "#{context}[:proxy_configuration]") unless input[:proxy_configuration].nil?
        Hearth::Validator.validate!(input[:registered_at], ::Time, context: "#{context}[:registered_at]")
        Hearth::Validator.validate!(input[:deregistered_at], ::Time, context: "#{context}[:deregistered_at]")
        Hearth::Validator.validate!(input[:registered_by], ::String, context: "#{context}[:registered_by]")
        EphemeralStorage.validate!(input[:ephemeral_storage], context: "#{context}[:ephemeral_storage]") unless input[:ephemeral_storage].nil?
      end
    end

    class TaskDefinitionFieldList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TaskDefinitionPlacementConstraint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskDefinitionPlacementConstraint, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:expression], ::String, context: "#{context}[:expression]")
      end
    end

    class TaskDefinitionPlacementConstraints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TaskDefinitionPlacementConstraint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TaskFieldList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TaskOverride
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskOverride, context: context)
        ContainerOverrides.validate!(input[:container_overrides], context: "#{context}[:container_overrides]") unless input[:container_overrides].nil?
        Hearth::Validator.validate!(input[:cpu], ::String, context: "#{context}[:cpu]")
        InferenceAcceleratorOverrides.validate!(input[:inference_accelerator_overrides], context: "#{context}[:inference_accelerator_overrides]") unless input[:inference_accelerator_overrides].nil?
        Hearth::Validator.validate!(input[:execution_role_arn], ::String, context: "#{context}[:execution_role_arn]")
        Hearth::Validator.validate!(input[:memory], ::String, context: "#{context}[:memory]")
        Hearth::Validator.validate!(input[:task_role_arn], ::String, context: "#{context}[:task_role_arn]")
        EphemeralStorage.validate!(input[:ephemeral_storage], context: "#{context}[:ephemeral_storage]") unless input[:ephemeral_storage].nil?
      end
    end

    class TaskSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskSet, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:task_set_arn], ::String, context: "#{context}[:task_set_arn]")
        Hearth::Validator.validate!(input[:service_arn], ::String, context: "#{context}[:service_arn]")
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Hearth::Validator.validate!(input[:started_by], ::String, context: "#{context}[:started_by]")
        Hearth::Validator.validate!(input[:external_id], ::String, context: "#{context}[:external_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:task_definition], ::String, context: "#{context}[:task_definition]")
        Hearth::Validator.validate!(input[:computed_desired_count], ::Integer, context: "#{context}[:computed_desired_count]")
        Hearth::Validator.validate!(input[:pending_count], ::Integer, context: "#{context}[:pending_count]")
        Hearth::Validator.validate!(input[:running_count], ::Integer, context: "#{context}[:running_count]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Hearth::Validator.validate!(input[:launch_type], ::String, context: "#{context}[:launch_type]")
        CapacityProviderStrategy.validate!(input[:capacity_provider_strategy], context: "#{context}[:capacity_provider_strategy]") unless input[:capacity_provider_strategy].nil?
        Hearth::Validator.validate!(input[:platform_version], ::String, context: "#{context}[:platform_version]")
        Hearth::Validator.validate!(input[:platform_family], ::String, context: "#{context}[:platform_family]")
        NetworkConfiguration.validate!(input[:network_configuration], context: "#{context}[:network_configuration]") unless input[:network_configuration].nil?
        LoadBalancers.validate!(input[:load_balancers], context: "#{context}[:load_balancers]") unless input[:load_balancers].nil?
        ServiceRegistries.validate!(input[:service_registries], context: "#{context}[:service_registries]") unless input[:service_registries].nil?
        Scale.validate!(input[:scale], context: "#{context}[:scale]") unless input[:scale].nil?
        Hearth::Validator.validate!(input[:stability_status], ::String, context: "#{context}[:stability_status]")
        Hearth::Validator.validate!(input[:stability_status_at], ::Time, context: "#{context}[:stability_status_at]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TaskSetFieldList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TaskSetNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskSetNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TaskSets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TaskSet.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Tasks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Task.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Tmpfs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tmpfs, context: context)
        Hearth::Validator.validate!(input[:container_path], ::String, context: "#{context}[:container_path]")
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
        StringList.validate!(input[:mount_options], context: "#{context}[:mount_options]") unless input[:mount_options].nil?
      end
    end

    class TmpfsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tmpfs.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Ulimit
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Ulimit, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:soft_limit], ::Integer, context: "#{context}[:soft_limit]")
        Hearth::Validator.validate!(input[:hard_limit], ::Integer, context: "#{context}[:hard_limit]")
      end
    end

    class UlimitList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Ulimit.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UnsupportedFeatureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedFeatureException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeys.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateCapacityProviderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCapacityProviderInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        AutoScalingGroupProviderUpdate.validate!(input[:auto_scaling_group_provider], context: "#{context}[:auto_scaling_group_provider]") unless input[:auto_scaling_group_provider].nil?
      end
    end

    class UpdateCapacityProviderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCapacityProviderOutput, context: context)
        CapacityProvider.validate!(input[:capacity_provider], context: "#{context}[:capacity_provider]") unless input[:capacity_provider].nil?
      end
    end

    class UpdateClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateClusterInput, context: context)
        Hearth::Validator.validate!(input[:cluster], ::String, context: "#{context}[:cluster]")
        ClusterSettings.validate!(input[:settings], context: "#{context}[:settings]") unless input[:settings].nil?
        ClusterConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
      end
    end

    class UpdateClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateClusterOutput, context: context)
        Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class UpdateClusterSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateClusterSettingsInput, context: context)
        Hearth::Validator.validate!(input[:cluster], ::String, context: "#{context}[:cluster]")
        ClusterSettings.validate!(input[:settings], context: "#{context}[:settings]") unless input[:settings].nil?
      end
    end

    class UpdateClusterSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateClusterSettingsOutput, context: context)
        Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class UpdateContainerAgentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContainerAgentInput, context: context)
        Hearth::Validator.validate!(input[:cluster], ::String, context: "#{context}[:cluster]")
        Hearth::Validator.validate!(input[:container_instance], ::String, context: "#{context}[:container_instance]")
      end
    end

    class UpdateContainerAgentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContainerAgentOutput, context: context)
        ContainerInstance.validate!(input[:container_instance], context: "#{context}[:container_instance]") unless input[:container_instance].nil?
      end
    end

    class UpdateContainerInstancesStateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContainerInstancesStateInput, context: context)
        Hearth::Validator.validate!(input[:cluster], ::String, context: "#{context}[:cluster]")
        StringList.validate!(input[:container_instances], context: "#{context}[:container_instances]") unless input[:container_instances].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class UpdateContainerInstancesStateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContainerInstancesStateOutput, context: context)
        ContainerInstances.validate!(input[:container_instances], context: "#{context}[:container_instances]") unless input[:container_instances].nil?
        Failures.validate!(input[:failures], context: "#{context}[:failures]") unless input[:failures].nil?
      end
    end

    class UpdateInProgressException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateInProgressException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UpdateServiceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServiceInput, context: context)
        Hearth::Validator.validate!(input[:cluster], ::String, context: "#{context}[:cluster]")
        Hearth::Validator.validate!(input[:service], ::String, context: "#{context}[:service]")
        Hearth::Validator.validate!(input[:desired_count], ::Integer, context: "#{context}[:desired_count]")
        Hearth::Validator.validate!(input[:task_definition], ::String, context: "#{context}[:task_definition]")
        CapacityProviderStrategy.validate!(input[:capacity_provider_strategy], context: "#{context}[:capacity_provider_strategy]") unless input[:capacity_provider_strategy].nil?
        DeploymentConfiguration.validate!(input[:deployment_configuration], context: "#{context}[:deployment_configuration]") unless input[:deployment_configuration].nil?
        NetworkConfiguration.validate!(input[:network_configuration], context: "#{context}[:network_configuration]") unless input[:network_configuration].nil?
        PlacementConstraints.validate!(input[:placement_constraints], context: "#{context}[:placement_constraints]") unless input[:placement_constraints].nil?
        PlacementStrategies.validate!(input[:placement_strategy], context: "#{context}[:placement_strategy]") unless input[:placement_strategy].nil?
        Hearth::Validator.validate!(input[:platform_version], ::String, context: "#{context}[:platform_version]")
        Hearth::Validator.validate!(input[:force_new_deployment], ::TrueClass, ::FalseClass, context: "#{context}[:force_new_deployment]")
        Hearth::Validator.validate!(input[:health_check_grace_period_seconds], ::Integer, context: "#{context}[:health_check_grace_period_seconds]")
        Hearth::Validator.validate!(input[:enable_execute_command], ::TrueClass, ::FalseClass, context: "#{context}[:enable_execute_command]")
        Hearth::Validator.validate!(input[:enable_ecs_managed_tags], ::TrueClass, ::FalseClass, context: "#{context}[:enable_ecs_managed_tags]")
        LoadBalancers.validate!(input[:load_balancers], context: "#{context}[:load_balancers]") unless input[:load_balancers].nil?
        Hearth::Validator.validate!(input[:propagate_tags], ::String, context: "#{context}[:propagate_tags]")
        ServiceRegistries.validate!(input[:service_registries], context: "#{context}[:service_registries]") unless input[:service_registries].nil?
      end
    end

    class UpdateServiceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServiceOutput, context: context)
        Service.validate!(input[:service], context: "#{context}[:service]") unless input[:service].nil?
      end
    end

    class UpdateServicePrimaryTaskSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServicePrimaryTaskSetInput, context: context)
        Hearth::Validator.validate!(input[:cluster], ::String, context: "#{context}[:cluster]")
        Hearth::Validator.validate!(input[:service], ::String, context: "#{context}[:service]")
        Hearth::Validator.validate!(input[:primary_task_set], ::String, context: "#{context}[:primary_task_set]")
      end
    end

    class UpdateServicePrimaryTaskSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServicePrimaryTaskSetOutput, context: context)
        TaskSet.validate!(input[:task_set], context: "#{context}[:task_set]") unless input[:task_set].nil?
      end
    end

    class UpdateTaskSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTaskSetInput, context: context)
        Hearth::Validator.validate!(input[:cluster], ::String, context: "#{context}[:cluster]")
        Hearth::Validator.validate!(input[:service], ::String, context: "#{context}[:service]")
        Hearth::Validator.validate!(input[:task_set], ::String, context: "#{context}[:task_set]")
        Scale.validate!(input[:scale], context: "#{context}[:scale]") unless input[:scale].nil?
      end
    end

    class UpdateTaskSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTaskSetOutput, context: context)
        TaskSet.validate!(input[:task_set], context: "#{context}[:task_set]") unless input[:task_set].nil?
      end
    end

    class VersionInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VersionInfo, context: context)
        Hearth::Validator.validate!(input[:agent_version], ::String, context: "#{context}[:agent_version]")
        Hearth::Validator.validate!(input[:agent_hash], ::String, context: "#{context}[:agent_hash]")
        Hearth::Validator.validate!(input[:docker_version], ::String, context: "#{context}[:docker_version]")
      end
    end

    class Volume
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Volume, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        HostVolumeProperties.validate!(input[:host], context: "#{context}[:host]") unless input[:host].nil?
        DockerVolumeConfiguration.validate!(input[:docker_volume_configuration], context: "#{context}[:docker_volume_configuration]") unless input[:docker_volume_configuration].nil?
        EFSVolumeConfiguration.validate!(input[:efs_volume_configuration], context: "#{context}[:efs_volume_configuration]") unless input[:efs_volume_configuration].nil?
        FSxWindowsFileServerVolumeConfiguration.validate!(input[:fsx_windows_file_server_volume_configuration], context: "#{context}[:fsx_windows_file_server_volume_configuration]") unless input[:fsx_windows_file_server_volume_configuration].nil?
      end
    end

    class VolumeFrom
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VolumeFrom, context: context)
        Hearth::Validator.validate!(input[:source_container], ::String, context: "#{context}[:source_container]")
        Hearth::Validator.validate!(input[:read_only], ::TrueClass, ::FalseClass, context: "#{context}[:read_only]")
      end
    end

    class VolumeFromList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          VolumeFrom.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VolumeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Volume.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
