# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ECS
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module Attachment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Attachment, context: context)
        type = Types::Attachment.new
        type.id = params[:id]
        type.type = params[:type]
        type.status = params[:status]
        type.details = AttachmentDetails.build(params[:details], context: "#{context}[:details]") unless params[:details].nil?
        type
      end
    end

    module AttachmentDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << KeyValuePair.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AttachmentStateChange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachmentStateChange, context: context)
        type = Types::AttachmentStateChange.new
        type.attachment_arn = params[:attachment_arn]
        type.status = params[:status]
        type
      end
    end

    module AttachmentStateChanges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AttachmentStateChange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Attachments
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Attachment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Attribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Attribute, context: context)
        type = Types::Attribute.new
        type.name = params[:name]
        type.value = params[:value]
        type.target_type = params[:target_type]
        type.target_id = params[:target_id]
        type
      end
    end

    module AttributeLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttributeLimitExceededException, context: context)
        type = Types::AttributeLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module Attributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Attribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AutoScalingGroupProvider
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoScalingGroupProvider, context: context)
        type = Types::AutoScalingGroupProvider.new
        type.auto_scaling_group_arn = params[:auto_scaling_group_arn]
        type.managed_scaling = ManagedScaling.build(params[:managed_scaling], context: "#{context}[:managed_scaling]") unless params[:managed_scaling].nil?
        type.managed_termination_protection = params[:managed_termination_protection]
        type
      end
    end

    module AutoScalingGroupProviderUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoScalingGroupProviderUpdate, context: context)
        type = Types::AutoScalingGroupProviderUpdate.new
        type.managed_scaling = ManagedScaling.build(params[:managed_scaling], context: "#{context}[:managed_scaling]") unless params[:managed_scaling].nil?
        type.managed_termination_protection = params[:managed_termination_protection]
        type
      end
    end

    module AwsVpcConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsVpcConfiguration, context: context)
        type = Types::AwsVpcConfiguration.new
        type.subnets = StringList.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type.security_groups = StringList.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.assign_public_ip = params[:assign_public_ip]
        type
      end
    end

    module BlockedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BlockedException, context: context)
        type = Types::BlockedException.new
        type.message = params[:message]
        type
      end
    end

    module CapacityProvider
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CapacityProvider, context: context)
        type = Types::CapacityProvider.new
        type.capacity_provider_arn = params[:capacity_provider_arn]
        type.name = params[:name]
        type.status = params[:status]
        type.auto_scaling_group_provider = AutoScalingGroupProvider.build(params[:auto_scaling_group_provider], context: "#{context}[:auto_scaling_group_provider]") unless params[:auto_scaling_group_provider].nil?
        type.update_status = params[:update_status]
        type.update_status_reason = params[:update_status_reason]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CapacityProviderFieldList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CapacityProviderStrategy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CapacityProviderStrategyItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CapacityProviderStrategyItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CapacityProviderStrategyItem, context: context)
        type = Types::CapacityProviderStrategyItem.new
        type.capacity_provider = params[:capacity_provider]
        type.weight = params[:weight]
        type.base = params[:base]
        type
      end
    end

    module CapacityProviders
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CapacityProvider.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module Cluster
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Cluster, context: context)
        type = Types::Cluster.new
        type.cluster_arn = params[:cluster_arn]
        type.cluster_name = params[:cluster_name]
        type.configuration = ClusterConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.status = params[:status]
        type.registered_container_instances_count = params[:registered_container_instances_count]
        type.running_tasks_count = params[:running_tasks_count]
        type.pending_tasks_count = params[:pending_tasks_count]
        type.active_services_count = params[:active_services_count]
        type.statistics = Statistics.build(params[:statistics], context: "#{context}[:statistics]") unless params[:statistics].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.settings = ClusterSettings.build(params[:settings], context: "#{context}[:settings]") unless params[:settings].nil?
        type.capacity_providers = StringList.build(params[:capacity_providers], context: "#{context}[:capacity_providers]") unless params[:capacity_providers].nil?
        type.default_capacity_provider_strategy = CapacityProviderStrategy.build(params[:default_capacity_provider_strategy], context: "#{context}[:default_capacity_provider_strategy]") unless params[:default_capacity_provider_strategy].nil?
        type.attachments = Attachments.build(params[:attachments], context: "#{context}[:attachments]") unless params[:attachments].nil?
        type.attachments_status = params[:attachments_status]
        type
      end
    end

    module ClusterConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterConfiguration, context: context)
        type = Types::ClusterConfiguration.new
        type.execute_command_configuration = ExecuteCommandConfiguration.build(params[:execute_command_configuration], context: "#{context}[:execute_command_configuration]") unless params[:execute_command_configuration].nil?
        type
      end
    end

    module ClusterContainsContainerInstancesException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterContainsContainerInstancesException, context: context)
        type = Types::ClusterContainsContainerInstancesException.new
        type.message = params[:message]
        type
      end
    end

    module ClusterContainsServicesException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterContainsServicesException, context: context)
        type = Types::ClusterContainsServicesException.new
        type.message = params[:message]
        type
      end
    end

    module ClusterContainsTasksException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterContainsTasksException, context: context)
        type = Types::ClusterContainsTasksException.new
        type.message = params[:message]
        type
      end
    end

    module ClusterFieldList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ClusterNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterNotFoundException, context: context)
        type = Types::ClusterNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ClusterSetting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterSetting, context: context)
        type = Types::ClusterSetting.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module ClusterSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ClusterSetting.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Clusters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Cluster.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CompatibilityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Container
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Container, context: context)
        type = Types::Container.new
        type.container_arn = params[:container_arn]
        type.task_arn = params[:task_arn]
        type.name = params[:name]
        type.image = params[:image]
        type.image_digest = params[:image_digest]
        type.runtime_id = params[:runtime_id]
        type.last_status = params[:last_status]
        type.exit_code = params[:exit_code]
        type.reason = params[:reason]
        type.network_bindings = NetworkBindings.build(params[:network_bindings], context: "#{context}[:network_bindings]") unless params[:network_bindings].nil?
        type.network_interfaces = NetworkInterfaces.build(params[:network_interfaces], context: "#{context}[:network_interfaces]") unless params[:network_interfaces].nil?
        type.health_status = params[:health_status]
        type.managed_agents = ManagedAgents.build(params[:managed_agents], context: "#{context}[:managed_agents]") unless params[:managed_agents].nil?
        type.cpu = params[:cpu]
        type.memory = params[:memory]
        type.memory_reservation = params[:memory_reservation]
        type.gpu_ids = GpuIds.build(params[:gpu_ids], context: "#{context}[:gpu_ids]") unless params[:gpu_ids].nil?
        type
      end
    end

    module ContainerDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainerDefinition, context: context)
        type = Types::ContainerDefinition.new
        type.name = params[:name]
        type.image = params[:image]
        type.repository_credentials = RepositoryCredentials.build(params[:repository_credentials], context: "#{context}[:repository_credentials]") unless params[:repository_credentials].nil?
        type.cpu = params[:cpu]
        type.memory = params[:memory]
        type.memory_reservation = params[:memory_reservation]
        type.links = StringList.build(params[:links], context: "#{context}[:links]") unless params[:links].nil?
        type.port_mappings = PortMappingList.build(params[:port_mappings], context: "#{context}[:port_mappings]") unless params[:port_mappings].nil?
        type.essential = params[:essential]
        type.entry_point = StringList.build(params[:entry_point], context: "#{context}[:entry_point]") unless params[:entry_point].nil?
        type.command = StringList.build(params[:command], context: "#{context}[:command]") unless params[:command].nil?
        type.environment = EnvironmentVariables.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.environment_files = EnvironmentFiles.build(params[:environment_files], context: "#{context}[:environment_files]") unless params[:environment_files].nil?
        type.mount_points = MountPointList.build(params[:mount_points], context: "#{context}[:mount_points]") unless params[:mount_points].nil?
        type.volumes_from = VolumeFromList.build(params[:volumes_from], context: "#{context}[:volumes_from]") unless params[:volumes_from].nil?
        type.linux_parameters = LinuxParameters.build(params[:linux_parameters], context: "#{context}[:linux_parameters]") unless params[:linux_parameters].nil?
        type.secrets = SecretList.build(params[:secrets], context: "#{context}[:secrets]") unless params[:secrets].nil?
        type.depends_on = ContainerDependencies.build(params[:depends_on], context: "#{context}[:depends_on]") unless params[:depends_on].nil?
        type.start_timeout = params[:start_timeout]
        type.stop_timeout = params[:stop_timeout]
        type.hostname = params[:hostname]
        type.user = params[:user]
        type.working_directory = params[:working_directory]
        type.disable_networking = params[:disable_networking]
        type.privileged = params[:privileged]
        type.readonly_root_filesystem = params[:readonly_root_filesystem]
        type.dns_servers = StringList.build(params[:dns_servers], context: "#{context}[:dns_servers]") unless params[:dns_servers].nil?
        type.dns_search_domains = StringList.build(params[:dns_search_domains], context: "#{context}[:dns_search_domains]") unless params[:dns_search_domains].nil?
        type.extra_hosts = HostEntryList.build(params[:extra_hosts], context: "#{context}[:extra_hosts]") unless params[:extra_hosts].nil?
        type.docker_security_options = StringList.build(params[:docker_security_options], context: "#{context}[:docker_security_options]") unless params[:docker_security_options].nil?
        type.interactive = params[:interactive]
        type.pseudo_terminal = params[:pseudo_terminal]
        type.docker_labels = DockerLabelsMap.build(params[:docker_labels], context: "#{context}[:docker_labels]") unless params[:docker_labels].nil?
        type.ulimits = UlimitList.build(params[:ulimits], context: "#{context}[:ulimits]") unless params[:ulimits].nil?
        type.log_configuration = LogConfiguration.build(params[:log_configuration], context: "#{context}[:log_configuration]") unless params[:log_configuration].nil?
        type.health_check = HealthCheck.build(params[:health_check], context: "#{context}[:health_check]") unless params[:health_check].nil?
        type.system_controls = SystemControls.build(params[:system_controls], context: "#{context}[:system_controls]") unless params[:system_controls].nil?
        type.resource_requirements = ResourceRequirements.build(params[:resource_requirements], context: "#{context}[:resource_requirements]") unless params[:resource_requirements].nil?
        type.firelens_configuration = FirelensConfiguration.build(params[:firelens_configuration], context: "#{context}[:firelens_configuration]") unless params[:firelens_configuration].nil?
        type
      end
    end

    module ContainerDefinitions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ContainerDefinition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ContainerDependencies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ContainerDependency.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ContainerDependency
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainerDependency, context: context)
        type = Types::ContainerDependency.new
        type.container_name = params[:container_name]
        type.condition = params[:condition]
        type
      end
    end

    module ContainerInstance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainerInstance, context: context)
        type = Types::ContainerInstance.new
        type.container_instance_arn = params[:container_instance_arn]
        type.ec2_instance_id = params[:ec2_instance_id]
        type.capacity_provider_name = params[:capacity_provider_name]
        type.version = params[:version]
        type.version_info = VersionInfo.build(params[:version_info], context: "#{context}[:version_info]") unless params[:version_info].nil?
        type.remaining_resources = Resources.build(params[:remaining_resources], context: "#{context}[:remaining_resources]") unless params[:remaining_resources].nil?
        type.registered_resources = Resources.build(params[:registered_resources], context: "#{context}[:registered_resources]") unless params[:registered_resources].nil?
        type.status = params[:status]
        type.status_reason = params[:status_reason]
        type.agent_connected = params[:agent_connected]
        type.running_tasks_count = params[:running_tasks_count]
        type.pending_tasks_count = params[:pending_tasks_count]
        type.agent_update_status = params[:agent_update_status]
        type.attributes = Attributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.registered_at = params[:registered_at]
        type.attachments = Attachments.build(params[:attachments], context: "#{context}[:attachments]") unless params[:attachments].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.health_status = ContainerInstanceHealthStatus.build(params[:health_status], context: "#{context}[:health_status]") unless params[:health_status].nil?
        type
      end
    end

    module ContainerInstanceFieldList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ContainerInstanceHealthStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainerInstanceHealthStatus, context: context)
        type = Types::ContainerInstanceHealthStatus.new
        type.overall_status = params[:overall_status]
        type.details = InstanceHealthCheckResultList.build(params[:details], context: "#{context}[:details]") unless params[:details].nil?
        type
      end
    end

    module ContainerInstances
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ContainerInstance.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ContainerOverride
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainerOverride, context: context)
        type = Types::ContainerOverride.new
        type.name = params[:name]
        type.command = StringList.build(params[:command], context: "#{context}[:command]") unless params[:command].nil?
        type.environment = EnvironmentVariables.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.environment_files = EnvironmentFiles.build(params[:environment_files], context: "#{context}[:environment_files]") unless params[:environment_files].nil?
        type.cpu = params[:cpu]
        type.memory = params[:memory]
        type.memory_reservation = params[:memory_reservation]
        type.resource_requirements = ResourceRequirements.build(params[:resource_requirements], context: "#{context}[:resource_requirements]") unless params[:resource_requirements].nil?
        type
      end
    end

    module ContainerOverrides
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ContainerOverride.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ContainerStateChange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainerStateChange, context: context)
        type = Types::ContainerStateChange.new
        type.container_name = params[:container_name]
        type.image_digest = params[:image_digest]
        type.runtime_id = params[:runtime_id]
        type.exit_code = params[:exit_code]
        type.network_bindings = NetworkBindings.build(params[:network_bindings], context: "#{context}[:network_bindings]") unless params[:network_bindings].nil?
        type.reason = params[:reason]
        type.status = params[:status]
        type
      end
    end

    module ContainerStateChanges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ContainerStateChange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Containers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Container.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateCapacityProviderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCapacityProviderInput, context: context)
        type = Types::CreateCapacityProviderInput.new
        type.name = params[:name]
        type.auto_scaling_group_provider = AutoScalingGroupProvider.build(params[:auto_scaling_group_provider], context: "#{context}[:auto_scaling_group_provider]") unless params[:auto_scaling_group_provider].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateCapacityProviderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCapacityProviderOutput, context: context)
        type = Types::CreateCapacityProviderOutput.new
        type.capacity_provider = CapacityProvider.build(params[:capacity_provider], context: "#{context}[:capacity_provider]") unless params[:capacity_provider].nil?
        type
      end
    end

    module CreateClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateClusterInput, context: context)
        type = Types::CreateClusterInput.new
        type.cluster_name = params[:cluster_name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.settings = ClusterSettings.build(params[:settings], context: "#{context}[:settings]") unless params[:settings].nil?
        type.configuration = ClusterConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.capacity_providers = StringList.build(params[:capacity_providers], context: "#{context}[:capacity_providers]") unless params[:capacity_providers].nil?
        type.default_capacity_provider_strategy = CapacityProviderStrategy.build(params[:default_capacity_provider_strategy], context: "#{context}[:default_capacity_provider_strategy]") unless params[:default_capacity_provider_strategy].nil?
        type
      end
    end

    module CreateClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateClusterOutput, context: context)
        type = Types::CreateClusterOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module CreateServiceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateServiceInput, context: context)
        type = Types::CreateServiceInput.new
        type.cluster = params[:cluster]
        type.service_name = params[:service_name]
        type.task_definition = params[:task_definition]
        type.load_balancers = LoadBalancers.build(params[:load_balancers], context: "#{context}[:load_balancers]") unless params[:load_balancers].nil?
        type.service_registries = ServiceRegistries.build(params[:service_registries], context: "#{context}[:service_registries]") unless params[:service_registries].nil?
        type.desired_count = params[:desired_count]
        type.client_token = params[:client_token]
        type.launch_type = params[:launch_type]
        type.capacity_provider_strategy = CapacityProviderStrategy.build(params[:capacity_provider_strategy], context: "#{context}[:capacity_provider_strategy]") unless params[:capacity_provider_strategy].nil?
        type.platform_version = params[:platform_version]
        type.role = params[:role]
        type.deployment_configuration = DeploymentConfiguration.build(params[:deployment_configuration], context: "#{context}[:deployment_configuration]") unless params[:deployment_configuration].nil?
        type.placement_constraints = PlacementConstraints.build(params[:placement_constraints], context: "#{context}[:placement_constraints]") unless params[:placement_constraints].nil?
        type.placement_strategy = PlacementStrategies.build(params[:placement_strategy], context: "#{context}[:placement_strategy]") unless params[:placement_strategy].nil?
        type.network_configuration = NetworkConfiguration.build(params[:network_configuration], context: "#{context}[:network_configuration]") unless params[:network_configuration].nil?
        type.health_check_grace_period_seconds = params[:health_check_grace_period_seconds]
        type.scheduling_strategy = params[:scheduling_strategy]
        type.deployment_controller = DeploymentController.build(params[:deployment_controller], context: "#{context}[:deployment_controller]") unless params[:deployment_controller].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.enable_ecs_managed_tags = params[:enable_ecs_managed_tags]
        type.propagate_tags = params[:propagate_tags]
        type.enable_execute_command = params[:enable_execute_command]
        type
      end
    end

    module CreateServiceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateServiceOutput, context: context)
        type = Types::CreateServiceOutput.new
        type.service = Service.build(params[:service], context: "#{context}[:service]") unless params[:service].nil?
        type
      end
    end

    module CreateTaskSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTaskSetInput, context: context)
        type = Types::CreateTaskSetInput.new
        type.service = params[:service]
        type.cluster = params[:cluster]
        type.external_id = params[:external_id]
        type.task_definition = params[:task_definition]
        type.network_configuration = NetworkConfiguration.build(params[:network_configuration], context: "#{context}[:network_configuration]") unless params[:network_configuration].nil?
        type.load_balancers = LoadBalancers.build(params[:load_balancers], context: "#{context}[:load_balancers]") unless params[:load_balancers].nil?
        type.service_registries = ServiceRegistries.build(params[:service_registries], context: "#{context}[:service_registries]") unless params[:service_registries].nil?
        type.launch_type = params[:launch_type]
        type.capacity_provider_strategy = CapacityProviderStrategy.build(params[:capacity_provider_strategy], context: "#{context}[:capacity_provider_strategy]") unless params[:capacity_provider_strategy].nil?
        type.platform_version = params[:platform_version]
        type.scale = Scale.build(params[:scale], context: "#{context}[:scale]") unless params[:scale].nil?
        type.client_token = params[:client_token]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateTaskSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTaskSetOutput, context: context)
        type = Types::CreateTaskSetOutput.new
        type.task_set = TaskSet.build(params[:task_set], context: "#{context}[:task_set]") unless params[:task_set].nil?
        type
      end
    end

    module DeleteAccountSettingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAccountSettingInput, context: context)
        type = Types::DeleteAccountSettingInput.new
        type.name = params[:name]
        type.principal_arn = params[:principal_arn]
        type
      end
    end

    module DeleteAccountSettingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAccountSettingOutput, context: context)
        type = Types::DeleteAccountSettingOutput.new
        type.setting = Setting.build(params[:setting], context: "#{context}[:setting]") unless params[:setting].nil?
        type
      end
    end

    module DeleteAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAttributesInput, context: context)
        type = Types::DeleteAttributesInput.new
        type.cluster = params[:cluster]
        type.attributes = Attributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module DeleteAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAttributesOutput, context: context)
        type = Types::DeleteAttributesOutput.new
        type.attributes = Attributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module DeleteCapacityProviderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCapacityProviderInput, context: context)
        type = Types::DeleteCapacityProviderInput.new
        type.capacity_provider = params[:capacity_provider]
        type
      end
    end

    module DeleteCapacityProviderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCapacityProviderOutput, context: context)
        type = Types::DeleteCapacityProviderOutput.new
        type.capacity_provider = CapacityProvider.build(params[:capacity_provider], context: "#{context}[:capacity_provider]") unless params[:capacity_provider].nil?
        type
      end
    end

    module DeleteClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteClusterInput, context: context)
        type = Types::DeleteClusterInput.new
        type.cluster = params[:cluster]
        type
      end
    end

    module DeleteClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteClusterOutput, context: context)
        type = Types::DeleteClusterOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module DeleteServiceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteServiceInput, context: context)
        type = Types::DeleteServiceInput.new
        type.cluster = params[:cluster]
        type.service = params[:service]
        type.force = params[:force]
        type
      end
    end

    module DeleteServiceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteServiceOutput, context: context)
        type = Types::DeleteServiceOutput.new
        type.service = Service.build(params[:service], context: "#{context}[:service]") unless params[:service].nil?
        type
      end
    end

    module DeleteTaskSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTaskSetInput, context: context)
        type = Types::DeleteTaskSetInput.new
        type.cluster = params[:cluster]
        type.service = params[:service]
        type.task_set = params[:task_set]
        type.force = params[:force]
        type
      end
    end

    module DeleteTaskSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTaskSetOutput, context: context)
        type = Types::DeleteTaskSetOutput.new
        type.task_set = TaskSet.build(params[:task_set], context: "#{context}[:task_set]") unless params[:task_set].nil?
        type
      end
    end

    module Deployment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Deployment, context: context)
        type = Types::Deployment.new
        type.id = params[:id]
        type.status = params[:status]
        type.task_definition = params[:task_definition]
        type.desired_count = params[:desired_count]
        type.pending_count = params[:pending_count]
        type.running_count = params[:running_count]
        type.failed_tasks = params[:failed_tasks]
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type.capacity_provider_strategy = CapacityProviderStrategy.build(params[:capacity_provider_strategy], context: "#{context}[:capacity_provider_strategy]") unless params[:capacity_provider_strategy].nil?
        type.launch_type = params[:launch_type]
        type.platform_version = params[:platform_version]
        type.platform_family = params[:platform_family]
        type.network_configuration = NetworkConfiguration.build(params[:network_configuration], context: "#{context}[:network_configuration]") unless params[:network_configuration].nil?
        type.rollout_state = params[:rollout_state]
        type.rollout_state_reason = params[:rollout_state_reason]
        type
      end
    end

    module DeploymentCircuitBreaker
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentCircuitBreaker, context: context)
        type = Types::DeploymentCircuitBreaker.new
        type.enable = params[:enable]
        type.rollback = params[:rollback]
        type
      end
    end

    module DeploymentConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentConfiguration, context: context)
        type = Types::DeploymentConfiguration.new
        type.deployment_circuit_breaker = DeploymentCircuitBreaker.build(params[:deployment_circuit_breaker], context: "#{context}[:deployment_circuit_breaker]") unless params[:deployment_circuit_breaker].nil?
        type.maximum_percent = params[:maximum_percent]
        type.minimum_healthy_percent = params[:minimum_healthy_percent]
        type
      end
    end

    module DeploymentController
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentController, context: context)
        type = Types::DeploymentController.new
        type.type = params[:type]
        type
      end
    end

    module Deployments
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Deployment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeregisterContainerInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterContainerInstanceInput, context: context)
        type = Types::DeregisterContainerInstanceInput.new
        type.cluster = params[:cluster]
        type.container_instance = params[:container_instance]
        type.force = params[:force]
        type
      end
    end

    module DeregisterContainerInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterContainerInstanceOutput, context: context)
        type = Types::DeregisterContainerInstanceOutput.new
        type.container_instance = ContainerInstance.build(params[:container_instance], context: "#{context}[:container_instance]") unless params[:container_instance].nil?
        type
      end
    end

    module DeregisterTaskDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterTaskDefinitionInput, context: context)
        type = Types::DeregisterTaskDefinitionInput.new
        type.task_definition = params[:task_definition]
        type
      end
    end

    module DeregisterTaskDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterTaskDefinitionOutput, context: context)
        type = Types::DeregisterTaskDefinitionOutput.new
        type.task_definition = TaskDefinition.build(params[:task_definition], context: "#{context}[:task_definition]") unless params[:task_definition].nil?
        type
      end
    end

    module DescribeCapacityProvidersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCapacityProvidersInput, context: context)
        type = Types::DescribeCapacityProvidersInput.new
        type.capacity_providers = StringList.build(params[:capacity_providers], context: "#{context}[:capacity_providers]") unless params[:capacity_providers].nil?
        type.include = CapacityProviderFieldList.build(params[:include], context: "#{context}[:include]") unless params[:include].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeCapacityProvidersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCapacityProvidersOutput, context: context)
        type = Types::DescribeCapacityProvidersOutput.new
        type.capacity_providers = CapacityProviders.build(params[:capacity_providers], context: "#{context}[:capacity_providers]") unless params[:capacity_providers].nil?
        type.failures = Failures.build(params[:failures], context: "#{context}[:failures]") unless params[:failures].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeClustersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClustersInput, context: context)
        type = Types::DescribeClustersInput.new
        type.clusters = StringList.build(params[:clusters], context: "#{context}[:clusters]") unless params[:clusters].nil?
        type.include = ClusterFieldList.build(params[:include], context: "#{context}[:include]") unless params[:include].nil?
        type
      end
    end

    module DescribeClustersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClustersOutput, context: context)
        type = Types::DescribeClustersOutput.new
        type.clusters = Clusters.build(params[:clusters], context: "#{context}[:clusters]") unless params[:clusters].nil?
        type.failures = Failures.build(params[:failures], context: "#{context}[:failures]") unless params[:failures].nil?
        type
      end
    end

    module DescribeContainerInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeContainerInstancesInput, context: context)
        type = Types::DescribeContainerInstancesInput.new
        type.cluster = params[:cluster]
        type.container_instances = StringList.build(params[:container_instances], context: "#{context}[:container_instances]") unless params[:container_instances].nil?
        type.include = ContainerInstanceFieldList.build(params[:include], context: "#{context}[:include]") unless params[:include].nil?
        type
      end
    end

    module DescribeContainerInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeContainerInstancesOutput, context: context)
        type = Types::DescribeContainerInstancesOutput.new
        type.container_instances = ContainerInstances.build(params[:container_instances], context: "#{context}[:container_instances]") unless params[:container_instances].nil?
        type.failures = Failures.build(params[:failures], context: "#{context}[:failures]") unless params[:failures].nil?
        type
      end
    end

    module DescribeServicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeServicesInput, context: context)
        type = Types::DescribeServicesInput.new
        type.cluster = params[:cluster]
        type.services = StringList.build(params[:services], context: "#{context}[:services]") unless params[:services].nil?
        type.include = ServiceFieldList.build(params[:include], context: "#{context}[:include]") unless params[:include].nil?
        type
      end
    end

    module DescribeServicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeServicesOutput, context: context)
        type = Types::DescribeServicesOutput.new
        type.services = Services.build(params[:services], context: "#{context}[:services]") unless params[:services].nil?
        type.failures = Failures.build(params[:failures], context: "#{context}[:failures]") unless params[:failures].nil?
        type
      end
    end

    module DescribeTaskDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTaskDefinitionInput, context: context)
        type = Types::DescribeTaskDefinitionInput.new
        type.task_definition = params[:task_definition]
        type.include = TaskDefinitionFieldList.build(params[:include], context: "#{context}[:include]") unless params[:include].nil?
        type
      end
    end

    module DescribeTaskDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTaskDefinitionOutput, context: context)
        type = Types::DescribeTaskDefinitionOutput.new
        type.task_definition = TaskDefinition.build(params[:task_definition], context: "#{context}[:task_definition]") unless params[:task_definition].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DescribeTaskSetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTaskSetsInput, context: context)
        type = Types::DescribeTaskSetsInput.new
        type.cluster = params[:cluster]
        type.service = params[:service]
        type.task_sets = StringList.build(params[:task_sets], context: "#{context}[:task_sets]") unless params[:task_sets].nil?
        type.include = TaskSetFieldList.build(params[:include], context: "#{context}[:include]") unless params[:include].nil?
        type
      end
    end

    module DescribeTaskSetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTaskSetsOutput, context: context)
        type = Types::DescribeTaskSetsOutput.new
        type.task_sets = TaskSets.build(params[:task_sets], context: "#{context}[:task_sets]") unless params[:task_sets].nil?
        type.failures = Failures.build(params[:failures], context: "#{context}[:failures]") unless params[:failures].nil?
        type
      end
    end

    module DescribeTasksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTasksInput, context: context)
        type = Types::DescribeTasksInput.new
        type.cluster = params[:cluster]
        type.tasks = StringList.build(params[:tasks], context: "#{context}[:tasks]") unless params[:tasks].nil?
        type.include = TaskFieldList.build(params[:include], context: "#{context}[:include]") unless params[:include].nil?
        type
      end
    end

    module DescribeTasksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTasksOutput, context: context)
        type = Types::DescribeTasksOutput.new
        type.tasks = Tasks.build(params[:tasks], context: "#{context}[:tasks]") unless params[:tasks].nil?
        type.failures = Failures.build(params[:failures], context: "#{context}[:failures]") unless params[:failures].nil?
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

    module DiscoverPollEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DiscoverPollEndpointInput, context: context)
        type = Types::DiscoverPollEndpointInput.new
        type.container_instance = params[:container_instance]
        type.cluster = params[:cluster]
        type
      end
    end

    module DiscoverPollEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DiscoverPollEndpointOutput, context: context)
        type = Types::DiscoverPollEndpointOutput.new
        type.endpoint = params[:endpoint]
        type.telemetry_endpoint = params[:telemetry_endpoint]
        type
      end
    end

    module DockerLabelsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module DockerVolumeConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DockerVolumeConfiguration, context: context)
        type = Types::DockerVolumeConfiguration.new
        type.scope = params[:scope]
        type.autoprovision = params[:autoprovision]
        type.driver = params[:driver]
        type.driver_opts = StringMap.build(params[:driver_opts], context: "#{context}[:driver_opts]") unless params[:driver_opts].nil?
        type.labels = StringMap.build(params[:labels], context: "#{context}[:labels]") unless params[:labels].nil?
        type
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

    module EnvironmentFile
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnvironmentFile, context: context)
        type = Types::EnvironmentFile.new
        type.value = params[:value]
        type.type = params[:type]
        type
      end
    end

    module EnvironmentFiles
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EnvironmentFile.build(element, context: "#{context}[#{index}]") unless element.nil?
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

    module EphemeralStorage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EphemeralStorage, context: context)
        type = Types::EphemeralStorage.new
        type.size_in_gi_b = params[:size_in_gi_b]
        type
      end
    end

    module ExecuteCommandConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecuteCommandConfiguration, context: context)
        type = Types::ExecuteCommandConfiguration.new
        type.kms_key_id = params[:kms_key_id]
        type.logging = params[:logging]
        type.log_configuration = ExecuteCommandLogConfiguration.build(params[:log_configuration], context: "#{context}[:log_configuration]") unless params[:log_configuration].nil?
        type
      end
    end

    module ExecuteCommandInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecuteCommandInput, context: context)
        type = Types::ExecuteCommandInput.new
        type.cluster = params[:cluster]
        type.container = params[:container]
        type.command = params[:command]
        type.interactive = params[:interactive]
        type.task = params[:task]
        type
      end
    end

    module ExecuteCommandLogConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecuteCommandLogConfiguration, context: context)
        type = Types::ExecuteCommandLogConfiguration.new
        type.cloud_watch_log_group_name = params[:cloud_watch_log_group_name]
        type.cloud_watch_encryption_enabled = params[:cloud_watch_encryption_enabled]
        type.s3_bucket_name = params[:s3_bucket_name]
        type.s3_encryption_enabled = params[:s3_encryption_enabled]
        type.s3_key_prefix = params[:s3_key_prefix]
        type
      end
    end

    module ExecuteCommandOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecuteCommandOutput, context: context)
        type = Types::ExecuteCommandOutput.new
        type.cluster_arn = params[:cluster_arn]
        type.container_arn = params[:container_arn]
        type.container_name = params[:container_name]
        type.interactive = params[:interactive]
        type.session = Session.build(params[:session], context: "#{context}[:session]") unless params[:session].nil?
        type.task_arn = params[:task_arn]
        type
      end
    end

    module FSxWindowsFileServerAuthorizationConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FSxWindowsFileServerAuthorizationConfig, context: context)
        type = Types::FSxWindowsFileServerAuthorizationConfig.new
        type.credentials_parameter = params[:credentials_parameter]
        type.domain = params[:domain]
        type
      end
    end

    module FSxWindowsFileServerVolumeConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FSxWindowsFileServerVolumeConfiguration, context: context)
        type = Types::FSxWindowsFileServerVolumeConfiguration.new
        type.file_system_id = params[:file_system_id]
        type.root_directory = params[:root_directory]
        type.authorization_config = FSxWindowsFileServerAuthorizationConfig.build(params[:authorization_config], context: "#{context}[:authorization_config]") unless params[:authorization_config].nil?
        type
      end
    end

    module Failure
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Failure, context: context)
        type = Types::Failure.new
        type.arn = params[:arn]
        type.reason = params[:reason]
        type.detail = params[:detail]
        type
      end
    end

    module Failures
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Failure.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FirelensConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FirelensConfiguration, context: context)
        type = Types::FirelensConfiguration.new
        type.type = params[:type]
        type.options = FirelensConfigurationOptionsMap.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type
      end
    end

    module FirelensConfigurationOptionsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module GpuIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module HealthCheck
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HealthCheck, context: context)
        type = Types::HealthCheck.new
        type.command = StringList.build(params[:command], context: "#{context}[:command]") unless params[:command].nil?
        type.interval = params[:interval]
        type.timeout = params[:timeout]
        type.retries = params[:retries]
        type.start_period = params[:start_period]
        type
      end
    end

    module HostEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HostEntry, context: context)
        type = Types::HostEntry.new
        type.hostname = params[:hostname]
        type.ip_address = params[:ip_address]
        type
      end
    end

    module HostEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HostEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module HostVolumeProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HostVolumeProperties, context: context)
        type = Types::HostVolumeProperties.new
        type.source_path = params[:source_path]
        type
      end
    end

    module InferenceAccelerator
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InferenceAccelerator, context: context)
        type = Types::InferenceAccelerator.new
        type.device_name = params[:device_name]
        type.device_type = params[:device_type]
        type
      end
    end

    module InferenceAcceleratorOverride
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InferenceAcceleratorOverride, context: context)
        type = Types::InferenceAcceleratorOverride.new
        type.device_name = params[:device_name]
        type.device_type = params[:device_type]
        type
      end
    end

    module InferenceAcceleratorOverrides
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InferenceAcceleratorOverride.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InferenceAccelerators
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InferenceAccelerator.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstanceHealthCheckResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceHealthCheckResult, context: context)
        type = Types::InstanceHealthCheckResult.new
        type.type = params[:type]
        type.status = params[:status]
        type.last_updated = params[:last_updated]
        type.last_status_change = params[:last_status_change]
        type
      end
    end

    module InstanceHealthCheckResultList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceHealthCheckResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InvalidParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterException, context: context)
        type = Types::InvalidParameterException.new
        type.message = params[:message]
        type
      end
    end

    module KernelCapabilities
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KernelCapabilities, context: context)
        type = Types::KernelCapabilities.new
        type.add = StringList.build(params[:add], context: "#{context}[:add]") unless params[:add].nil?
        type.drop = StringList.build(params[:drop], context: "#{context}[:drop]") unless params[:drop].nil?
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

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module LinuxParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LinuxParameters, context: context)
        type = Types::LinuxParameters.new
        type.capabilities = KernelCapabilities.build(params[:capabilities], context: "#{context}[:capabilities]") unless params[:capabilities].nil?
        type.devices = DevicesList.build(params[:devices], context: "#{context}[:devices]") unless params[:devices].nil?
        type.init_process_enabled = params[:init_process_enabled]
        type.shared_memory_size = params[:shared_memory_size]
        type.tmpfs = TmpfsList.build(params[:tmpfs], context: "#{context}[:tmpfs]") unless params[:tmpfs].nil?
        type.max_swap = params[:max_swap]
        type.swappiness = params[:swappiness]
        type
      end
    end

    module ListAccountSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccountSettingsInput, context: context)
        type = Types::ListAccountSettingsInput.new
        type.name = params[:name]
        type.value = params[:value]
        type.principal_arn = params[:principal_arn]
        type.effective_settings = params[:effective_settings]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAccountSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccountSettingsOutput, context: context)
        type = Types::ListAccountSettingsOutput.new
        type.settings = Settings.build(params[:settings], context: "#{context}[:settings]") unless params[:settings].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAttributesInput, context: context)
        type = Types::ListAttributesInput.new
        type.cluster = params[:cluster]
        type.target_type = params[:target_type]
        type.attribute_name = params[:attribute_name]
        type.attribute_value = params[:attribute_value]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAttributesOutput, context: context)
        type = Types::ListAttributesOutput.new
        type.attributes = Attributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListClustersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListClustersInput, context: context)
        type = Types::ListClustersInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListClustersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListClustersOutput, context: context)
        type = Types::ListClustersOutput.new
        type.cluster_arns = StringList.build(params[:cluster_arns], context: "#{context}[:cluster_arns]") unless params[:cluster_arns].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListContainerInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListContainerInstancesInput, context: context)
        type = Types::ListContainerInstancesInput.new
        type.cluster = params[:cluster]
        type.filter = params[:filter]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.status = params[:status]
        type
      end
    end

    module ListContainerInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListContainerInstancesOutput, context: context)
        type = Types::ListContainerInstancesOutput.new
        type.container_instance_arns = StringList.build(params[:container_instance_arns], context: "#{context}[:container_instance_arns]") unless params[:container_instance_arns].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListServicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServicesInput, context: context)
        type = Types::ListServicesInput.new
        type.cluster = params[:cluster]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.launch_type = params[:launch_type]
        type.scheduling_strategy = params[:scheduling_strategy]
        type
      end
    end

    module ListServicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServicesOutput, context: context)
        type = Types::ListServicesOutput.new
        type.service_arns = StringList.build(params[:service_arns], context: "#{context}[:service_arns]") unless params[:service_arns].nil?
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
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListTaskDefinitionFamiliesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTaskDefinitionFamiliesInput, context: context)
        type = Types::ListTaskDefinitionFamiliesInput.new
        type.family_prefix = params[:family_prefix]
        type.status = params[:status]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTaskDefinitionFamiliesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTaskDefinitionFamiliesOutput, context: context)
        type = Types::ListTaskDefinitionFamiliesOutput.new
        type.families = StringList.build(params[:families], context: "#{context}[:families]") unless params[:families].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTaskDefinitionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTaskDefinitionsInput, context: context)
        type = Types::ListTaskDefinitionsInput.new
        type.family_prefix = params[:family_prefix]
        type.status = params[:status]
        type.sort = params[:sort]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTaskDefinitionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTaskDefinitionsOutput, context: context)
        type = Types::ListTaskDefinitionsOutput.new
        type.task_definition_arns = StringList.build(params[:task_definition_arns], context: "#{context}[:task_definition_arns]") unless params[:task_definition_arns].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTasksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTasksInput, context: context)
        type = Types::ListTasksInput.new
        type.cluster = params[:cluster]
        type.container_instance = params[:container_instance]
        type.family = params[:family]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.started_by = params[:started_by]
        type.service_name = params[:service_name]
        type.desired_status = params[:desired_status]
        type.launch_type = params[:launch_type]
        type
      end
    end

    module ListTasksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTasksOutput, context: context)
        type = Types::ListTasksOutput.new
        type.task_arns = StringList.build(params[:task_arns], context: "#{context}[:task_arns]") unless params[:task_arns].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module LoadBalancer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoadBalancer, context: context)
        type = Types::LoadBalancer.new
        type.target_group_arn = params[:target_group_arn]
        type.load_balancer_name = params[:load_balancer_name]
        type.container_name = params[:container_name]
        type.container_port = params[:container_port]
        type
      end
    end

    module LoadBalancers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LoadBalancer.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module ManagedAgent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ManagedAgent, context: context)
        type = Types::ManagedAgent.new
        type.last_started_at = params[:last_started_at]
        type.name = params[:name]
        type.reason = params[:reason]
        type.last_status = params[:last_status]
        type
      end
    end

    module ManagedAgentStateChange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ManagedAgentStateChange, context: context)
        type = Types::ManagedAgentStateChange.new
        type.container_name = params[:container_name]
        type.managed_agent_name = params[:managed_agent_name]
        type.status = params[:status]
        type.reason = params[:reason]
        type
      end
    end

    module ManagedAgentStateChanges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ManagedAgentStateChange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ManagedAgents
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ManagedAgent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ManagedScaling
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ManagedScaling, context: context)
        type = Types::ManagedScaling.new
        type.status = params[:status]
        type.target_capacity = params[:target_capacity]
        type.minimum_scaling_step_size = params[:minimum_scaling_step_size]
        type.maximum_scaling_step_size = params[:maximum_scaling_step_size]
        type.instance_warmup_period = params[:instance_warmup_period]
        type
      end
    end

    module MissingVersionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MissingVersionException, context: context)
        type = Types::MissingVersionException.new
        type.message = params[:message]
        type
      end
    end

    module MountPoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MountPoint, context: context)
        type = Types::MountPoint.new
        type.source_volume = params[:source_volume]
        type.container_path = params[:container_path]
        type.read_only = params[:read_only]
        type
      end
    end

    module MountPointList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MountPoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NetworkBinding
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkBinding, context: context)
        type = Types::NetworkBinding.new
        type.bind_ip = params[:bind_ip]
        type.container_port = params[:container_port]
        type.host_port = params[:host_port]
        type.protocol = params[:protocol]
        type
      end
    end

    module NetworkBindings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NetworkBinding.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NetworkConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkConfiguration, context: context)
        type = Types::NetworkConfiguration.new
        type.awsvpc_configuration = AwsVpcConfiguration.build(params[:awsvpc_configuration], context: "#{context}[:awsvpc_configuration]") unless params[:awsvpc_configuration].nil?
        type
      end
    end

    module NetworkInterface
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkInterface, context: context)
        type = Types::NetworkInterface.new
        type.attachment_id = params[:attachment_id]
        type.private_ipv4_address = params[:private_ipv4_address]
        type.ipv6_address = params[:ipv6_address]
        type
      end
    end

    module NetworkInterfaces
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NetworkInterface.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NoUpdateAvailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoUpdateAvailableException, context: context)
        type = Types::NoUpdateAvailableException.new
        type.message = params[:message]
        type
      end
    end

    module PlacementConstraint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlacementConstraint, context: context)
        type = Types::PlacementConstraint.new
        type.type = params[:type]
        type.expression = params[:expression]
        type
      end
    end

    module PlacementConstraints
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PlacementConstraint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PlacementStrategies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PlacementStrategy.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PlacementStrategy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlacementStrategy, context: context)
        type = Types::PlacementStrategy.new
        type.type = params[:type]
        type.field = params[:field]
        type
      end
    end

    module PlatformDevice
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlatformDevice, context: context)
        type = Types::PlatformDevice.new
        type.id = params[:id]
        type.type = params[:type]
        type
      end
    end

    module PlatformDevices
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PlatformDevice.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PlatformTaskDefinitionIncompatibilityException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlatformTaskDefinitionIncompatibilityException, context: context)
        type = Types::PlatformTaskDefinitionIncompatibilityException.new
        type.message = params[:message]
        type
      end
    end

    module PlatformUnknownException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlatformUnknownException, context: context)
        type = Types::PlatformUnknownException.new
        type.message = params[:message]
        type
      end
    end

    module PortMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PortMapping, context: context)
        type = Types::PortMapping.new
        type.container_port = params[:container_port]
        type.host_port = params[:host_port]
        type.protocol = params[:protocol]
        type
      end
    end

    module PortMappingList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PortMapping.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProxyConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProxyConfiguration, context: context)
        type = Types::ProxyConfiguration.new
        type.type = params[:type]
        type.container_name = params[:container_name]
        type.properties = ProxyConfigurationProperties.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type
      end
    end

    module ProxyConfigurationProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << KeyValuePair.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutAccountSettingDefaultInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAccountSettingDefaultInput, context: context)
        type = Types::PutAccountSettingDefaultInput.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module PutAccountSettingDefaultOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAccountSettingDefaultOutput, context: context)
        type = Types::PutAccountSettingDefaultOutput.new
        type.setting = Setting.build(params[:setting], context: "#{context}[:setting]") unless params[:setting].nil?
        type
      end
    end

    module PutAccountSettingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAccountSettingInput, context: context)
        type = Types::PutAccountSettingInput.new
        type.name = params[:name]
        type.value = params[:value]
        type.principal_arn = params[:principal_arn]
        type
      end
    end

    module PutAccountSettingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAccountSettingOutput, context: context)
        type = Types::PutAccountSettingOutput.new
        type.setting = Setting.build(params[:setting], context: "#{context}[:setting]") unless params[:setting].nil?
        type
      end
    end

    module PutAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAttributesInput, context: context)
        type = Types::PutAttributesInput.new
        type.cluster = params[:cluster]
        type.attributes = Attributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module PutAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAttributesOutput, context: context)
        type = Types::PutAttributesOutput.new
        type.attributes = Attributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module PutClusterCapacityProvidersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutClusterCapacityProvidersInput, context: context)
        type = Types::PutClusterCapacityProvidersInput.new
        type.cluster = params[:cluster]
        type.capacity_providers = StringList.build(params[:capacity_providers], context: "#{context}[:capacity_providers]") unless params[:capacity_providers].nil?
        type.default_capacity_provider_strategy = CapacityProviderStrategy.build(params[:default_capacity_provider_strategy], context: "#{context}[:default_capacity_provider_strategy]") unless params[:default_capacity_provider_strategy].nil?
        type
      end
    end

    module PutClusterCapacityProvidersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutClusterCapacityProvidersOutput, context: context)
        type = Types::PutClusterCapacityProvidersOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module RegisterContainerInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterContainerInstanceInput, context: context)
        type = Types::RegisterContainerInstanceInput.new
        type.cluster = params[:cluster]
        type.instance_identity_document = params[:instance_identity_document]
        type.instance_identity_document_signature = params[:instance_identity_document_signature]
        type.total_resources = Resources.build(params[:total_resources], context: "#{context}[:total_resources]") unless params[:total_resources].nil?
        type.version_info = VersionInfo.build(params[:version_info], context: "#{context}[:version_info]") unless params[:version_info].nil?
        type.container_instance_arn = params[:container_instance_arn]
        type.attributes = Attributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.platform_devices = PlatformDevices.build(params[:platform_devices], context: "#{context}[:platform_devices]") unless params[:platform_devices].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module RegisterContainerInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterContainerInstanceOutput, context: context)
        type = Types::RegisterContainerInstanceOutput.new
        type.container_instance = ContainerInstance.build(params[:container_instance], context: "#{context}[:container_instance]") unless params[:container_instance].nil?
        type
      end
    end

    module RegisterTaskDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterTaskDefinitionInput, context: context)
        type = Types::RegisterTaskDefinitionInput.new
        type.family = params[:family]
        type.task_role_arn = params[:task_role_arn]
        type.execution_role_arn = params[:execution_role_arn]
        type.network_mode = params[:network_mode]
        type.container_definitions = ContainerDefinitions.build(params[:container_definitions], context: "#{context}[:container_definitions]") unless params[:container_definitions].nil?
        type.volumes = VolumeList.build(params[:volumes], context: "#{context}[:volumes]") unless params[:volumes].nil?
        type.placement_constraints = TaskDefinitionPlacementConstraints.build(params[:placement_constraints], context: "#{context}[:placement_constraints]") unless params[:placement_constraints].nil?
        type.requires_compatibilities = CompatibilityList.build(params[:requires_compatibilities], context: "#{context}[:requires_compatibilities]") unless params[:requires_compatibilities].nil?
        type.cpu = params[:cpu]
        type.memory = params[:memory]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.pid_mode = params[:pid_mode]
        type.ipc_mode = params[:ipc_mode]
        type.proxy_configuration = ProxyConfiguration.build(params[:proxy_configuration], context: "#{context}[:proxy_configuration]") unless params[:proxy_configuration].nil?
        type.inference_accelerators = InferenceAccelerators.build(params[:inference_accelerators], context: "#{context}[:inference_accelerators]") unless params[:inference_accelerators].nil?
        type.ephemeral_storage = EphemeralStorage.build(params[:ephemeral_storage], context: "#{context}[:ephemeral_storage]") unless params[:ephemeral_storage].nil?
        type.runtime_platform = RuntimePlatform.build(params[:runtime_platform], context: "#{context}[:runtime_platform]") unless params[:runtime_platform].nil?
        type
      end
    end

    module RegisterTaskDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterTaskDefinitionOutput, context: context)
        type = Types::RegisterTaskDefinitionOutput.new
        type.task_definition = TaskDefinition.build(params[:task_definition], context: "#{context}[:task_definition]") unless params[:task_definition].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module RepositoryCredentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryCredentials, context: context)
        type = Types::RepositoryCredentials.new
        type.credentials_parameter = params[:credentials_parameter]
        type
      end
    end

    module RequiresAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Attribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Resource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Resource, context: context)
        type = Types::Resource.new
        type.name = params[:name]
        type.type = params[:type]
        type.double_value = params[:double_value]
        type.long_value = params[:long_value]
        type.integer_value = params[:integer_value]
        type.string_set_value = StringList.build(params[:string_set_value], context: "#{context}[:string_set_value]") unless params[:string_set_value].nil?
        type
      end
    end

    module ResourceInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInUseException, context: context)
        type = Types::ResourceInUseException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
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

    module Resources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Resource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RunTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RunTaskInput, context: context)
        type = Types::RunTaskInput.new
        type.capacity_provider_strategy = CapacityProviderStrategy.build(params[:capacity_provider_strategy], context: "#{context}[:capacity_provider_strategy]") unless params[:capacity_provider_strategy].nil?
        type.cluster = params[:cluster]
        type.count = params[:count]
        type.enable_ecs_managed_tags = params[:enable_ecs_managed_tags]
        type.enable_execute_command = params[:enable_execute_command]
        type.group = params[:group]
        type.launch_type = params[:launch_type]
        type.network_configuration = NetworkConfiguration.build(params[:network_configuration], context: "#{context}[:network_configuration]") unless params[:network_configuration].nil?
        type.overrides = TaskOverride.build(params[:overrides], context: "#{context}[:overrides]") unless params[:overrides].nil?
        type.placement_constraints = PlacementConstraints.build(params[:placement_constraints], context: "#{context}[:placement_constraints]") unless params[:placement_constraints].nil?
        type.placement_strategy = PlacementStrategies.build(params[:placement_strategy], context: "#{context}[:placement_strategy]") unless params[:placement_strategy].nil?
        type.platform_version = params[:platform_version]
        type.propagate_tags = params[:propagate_tags]
        type.reference_id = params[:reference_id]
        type.started_by = params[:started_by]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.task_definition = params[:task_definition]
        type
      end
    end

    module RunTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RunTaskOutput, context: context)
        type = Types::RunTaskOutput.new
        type.tasks = Tasks.build(params[:tasks], context: "#{context}[:tasks]") unless params[:tasks].nil?
        type.failures = Failures.build(params[:failures], context: "#{context}[:failures]") unless params[:failures].nil?
        type
      end
    end

    module RuntimePlatform
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuntimePlatform, context: context)
        type = Types::RuntimePlatform.new
        type.cpu_architecture = params[:cpu_architecture]
        type.operating_system_family = params[:operating_system_family]
        type
      end
    end

    module Scale
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Scale, context: context)
        type = Types::Scale.new
        type.value = params[:value]
        type.unit = params[:unit]
        type
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

    module Service
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Service, context: context)
        type = Types::Service.new
        type.service_arn = params[:service_arn]
        type.service_name = params[:service_name]
        type.cluster_arn = params[:cluster_arn]
        type.load_balancers = LoadBalancers.build(params[:load_balancers], context: "#{context}[:load_balancers]") unless params[:load_balancers].nil?
        type.service_registries = ServiceRegistries.build(params[:service_registries], context: "#{context}[:service_registries]") unless params[:service_registries].nil?
        type.status = params[:status]
        type.desired_count = params[:desired_count]
        type.running_count = params[:running_count]
        type.pending_count = params[:pending_count]
        type.launch_type = params[:launch_type]
        type.capacity_provider_strategy = CapacityProviderStrategy.build(params[:capacity_provider_strategy], context: "#{context}[:capacity_provider_strategy]") unless params[:capacity_provider_strategy].nil?
        type.platform_version = params[:platform_version]
        type.platform_family = params[:platform_family]
        type.task_definition = params[:task_definition]
        type.deployment_configuration = DeploymentConfiguration.build(params[:deployment_configuration], context: "#{context}[:deployment_configuration]") unless params[:deployment_configuration].nil?
        type.task_sets = TaskSets.build(params[:task_sets], context: "#{context}[:task_sets]") unless params[:task_sets].nil?
        type.deployments = Deployments.build(params[:deployments], context: "#{context}[:deployments]") unless params[:deployments].nil?
        type.role_arn = params[:role_arn]
        type.events = ServiceEvents.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type.created_at = params[:created_at]
        type.placement_constraints = PlacementConstraints.build(params[:placement_constraints], context: "#{context}[:placement_constraints]") unless params[:placement_constraints].nil?
        type.placement_strategy = PlacementStrategies.build(params[:placement_strategy], context: "#{context}[:placement_strategy]") unless params[:placement_strategy].nil?
        type.network_configuration = NetworkConfiguration.build(params[:network_configuration], context: "#{context}[:network_configuration]") unless params[:network_configuration].nil?
        type.health_check_grace_period_seconds = params[:health_check_grace_period_seconds]
        type.scheduling_strategy = params[:scheduling_strategy]
        type.deployment_controller = DeploymentController.build(params[:deployment_controller], context: "#{context}[:deployment_controller]") unless params[:deployment_controller].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.created_by = params[:created_by]
        type.enable_ecs_managed_tags = params[:enable_ecs_managed_tags]
        type.propagate_tags = params[:propagate_tags]
        type.enable_execute_command = params[:enable_execute_command]
        type
      end
    end

    module ServiceEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceEvent, context: context)
        type = Types::ServiceEvent.new
        type.id = params[:id]
        type.created_at = params[:created_at]
        type.message = params[:message]
        type
      end
    end

    module ServiceEvents
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServiceEvent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceFieldList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ServiceNotActiveException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceNotActiveException, context: context)
        type = Types::ServiceNotActiveException.new
        type.message = params[:message]
        type
      end
    end

    module ServiceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceNotFoundException, context: context)
        type = Types::ServiceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ServiceRegistries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServiceRegistry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceRegistry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceRegistry, context: context)
        type = Types::ServiceRegistry.new
        type.registry_arn = params[:registry_arn]
        type.port = params[:port]
        type.container_name = params[:container_name]
        type.container_port = params[:container_port]
        type
      end
    end

    module Services
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Service.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Session
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Session, context: context)
        type = Types::Session.new
        type.session_id = params[:session_id]
        type.stream_url = params[:stream_url]
        type.token_value = params[:token_value]
        type
      end
    end

    module Setting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Setting, context: context)
        type = Types::Setting.new
        type.name = params[:name]
        type.value = params[:value]
        type.principal_arn = params[:principal_arn]
        type
      end
    end

    module Settings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Setting.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StartTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartTaskInput, context: context)
        type = Types::StartTaskInput.new
        type.cluster = params[:cluster]
        type.container_instances = StringList.build(params[:container_instances], context: "#{context}[:container_instances]") unless params[:container_instances].nil?
        type.enable_ecs_managed_tags = params[:enable_ecs_managed_tags]
        type.enable_execute_command = params[:enable_execute_command]
        type.group = params[:group]
        type.network_configuration = NetworkConfiguration.build(params[:network_configuration], context: "#{context}[:network_configuration]") unless params[:network_configuration].nil?
        type.overrides = TaskOverride.build(params[:overrides], context: "#{context}[:overrides]") unless params[:overrides].nil?
        type.propagate_tags = params[:propagate_tags]
        type.reference_id = params[:reference_id]
        type.started_by = params[:started_by]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.task_definition = params[:task_definition]
        type
      end
    end

    module StartTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartTaskOutput, context: context)
        type = Types::StartTaskOutput.new
        type.tasks = Tasks.build(params[:tasks], context: "#{context}[:tasks]") unless params[:tasks].nil?
        type.failures = Failures.build(params[:failures], context: "#{context}[:failures]") unless params[:failures].nil?
        type
      end
    end

    module Statistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << KeyValuePair.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StopTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopTaskInput, context: context)
        type = Types::StopTaskInput.new
        type.cluster = params[:cluster]
        type.task = params[:task]
        type.reason = params[:reason]
        type
      end
    end

    module StopTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopTaskOutput, context: context)
        type = Types::StopTaskOutput.new
        type.task = Task.build(params[:task], context: "#{context}[:task]") unless params[:task].nil?
        type
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

    module StringMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module SubmitAttachmentStateChangesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubmitAttachmentStateChangesInput, context: context)
        type = Types::SubmitAttachmentStateChangesInput.new
        type.cluster = params[:cluster]
        type.attachments = AttachmentStateChanges.build(params[:attachments], context: "#{context}[:attachments]") unless params[:attachments].nil?
        type
      end
    end

    module SubmitAttachmentStateChangesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubmitAttachmentStateChangesOutput, context: context)
        type = Types::SubmitAttachmentStateChangesOutput.new
        type.acknowledgment = params[:acknowledgment]
        type
      end
    end

    module SubmitContainerStateChangeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubmitContainerStateChangeInput, context: context)
        type = Types::SubmitContainerStateChangeInput.new
        type.cluster = params[:cluster]
        type.task = params[:task]
        type.container_name = params[:container_name]
        type.runtime_id = params[:runtime_id]
        type.status = params[:status]
        type.exit_code = params[:exit_code]
        type.reason = params[:reason]
        type.network_bindings = NetworkBindings.build(params[:network_bindings], context: "#{context}[:network_bindings]") unless params[:network_bindings].nil?
        type
      end
    end

    module SubmitContainerStateChangeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubmitContainerStateChangeOutput, context: context)
        type = Types::SubmitContainerStateChangeOutput.new
        type.acknowledgment = params[:acknowledgment]
        type
      end
    end

    module SubmitTaskStateChangeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubmitTaskStateChangeInput, context: context)
        type = Types::SubmitTaskStateChangeInput.new
        type.cluster = params[:cluster]
        type.task = params[:task]
        type.status = params[:status]
        type.reason = params[:reason]
        type.containers = ContainerStateChanges.build(params[:containers], context: "#{context}[:containers]") unless params[:containers].nil?
        type.attachments = AttachmentStateChanges.build(params[:attachments], context: "#{context}[:attachments]") unless params[:attachments].nil?
        type.managed_agents = ManagedAgentStateChanges.build(params[:managed_agents], context: "#{context}[:managed_agents]") unless params[:managed_agents].nil?
        type.pull_started_at = params[:pull_started_at]
        type.pull_stopped_at = params[:pull_stopped_at]
        type.execution_stopped_at = params[:execution_stopped_at]
        type
      end
    end

    module SubmitTaskStateChangeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubmitTaskStateChangeOutput, context: context)
        type = Types::SubmitTaskStateChangeOutput.new
        type.acknowledgment = params[:acknowledgment]
        type
      end
    end

    module SystemControl
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SystemControl, context: context)
        type = Types::SystemControl.new
        type.namespace = params[:namespace]
        type.value = params[:value]
        type
      end
    end

    module SystemControls
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SystemControl.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeys
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
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TargetNotConnectedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetNotConnectedException, context: context)
        type = Types::TargetNotConnectedException.new
        type.message = params[:message]
        type
      end
    end

    module TargetNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetNotFoundException, context: context)
        type = Types::TargetNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module Task
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Task, context: context)
        type = Types::Task.new
        type.attachments = Attachments.build(params[:attachments], context: "#{context}[:attachments]") unless params[:attachments].nil?
        type.attributes = Attributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.availability_zone = params[:availability_zone]
        type.capacity_provider_name = params[:capacity_provider_name]
        type.cluster_arn = params[:cluster_arn]
        type.connectivity = params[:connectivity]
        type.connectivity_at = params[:connectivity_at]
        type.container_instance_arn = params[:container_instance_arn]
        type.containers = Containers.build(params[:containers], context: "#{context}[:containers]") unless params[:containers].nil?
        type.cpu = params[:cpu]
        type.created_at = params[:created_at]
        type.desired_status = params[:desired_status]
        type.enable_execute_command = params[:enable_execute_command]
        type.execution_stopped_at = params[:execution_stopped_at]
        type.group = params[:group]
        type.health_status = params[:health_status]
        type.inference_accelerators = InferenceAccelerators.build(params[:inference_accelerators], context: "#{context}[:inference_accelerators]") unless params[:inference_accelerators].nil?
        type.last_status = params[:last_status]
        type.launch_type = params[:launch_type]
        type.memory = params[:memory]
        type.overrides = TaskOverride.build(params[:overrides], context: "#{context}[:overrides]") unless params[:overrides].nil?
        type.platform_version = params[:platform_version]
        type.platform_family = params[:platform_family]
        type.pull_started_at = params[:pull_started_at]
        type.pull_stopped_at = params[:pull_stopped_at]
        type.started_at = params[:started_at]
        type.started_by = params[:started_by]
        type.stop_code = params[:stop_code]
        type.stopped_at = params[:stopped_at]
        type.stopped_reason = params[:stopped_reason]
        type.stopping_at = params[:stopping_at]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.task_arn = params[:task_arn]
        type.task_definition_arn = params[:task_definition_arn]
        type.version = params[:version]
        type.ephemeral_storage = EphemeralStorage.build(params[:ephemeral_storage], context: "#{context}[:ephemeral_storage]") unless params[:ephemeral_storage].nil?
        type
      end
    end

    module TaskDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskDefinition, context: context)
        type = Types::TaskDefinition.new
        type.task_definition_arn = params[:task_definition_arn]
        type.container_definitions = ContainerDefinitions.build(params[:container_definitions], context: "#{context}[:container_definitions]") unless params[:container_definitions].nil?
        type.family = params[:family]
        type.task_role_arn = params[:task_role_arn]
        type.execution_role_arn = params[:execution_role_arn]
        type.network_mode = params[:network_mode]
        type.revision = params[:revision]
        type.volumes = VolumeList.build(params[:volumes], context: "#{context}[:volumes]") unless params[:volumes].nil?
        type.status = params[:status]
        type.requires_attributes = RequiresAttributes.build(params[:requires_attributes], context: "#{context}[:requires_attributes]") unless params[:requires_attributes].nil?
        type.placement_constraints = TaskDefinitionPlacementConstraints.build(params[:placement_constraints], context: "#{context}[:placement_constraints]") unless params[:placement_constraints].nil?
        type.compatibilities = CompatibilityList.build(params[:compatibilities], context: "#{context}[:compatibilities]") unless params[:compatibilities].nil?
        type.runtime_platform = RuntimePlatform.build(params[:runtime_platform], context: "#{context}[:runtime_platform]") unless params[:runtime_platform].nil?
        type.requires_compatibilities = CompatibilityList.build(params[:requires_compatibilities], context: "#{context}[:requires_compatibilities]") unless params[:requires_compatibilities].nil?
        type.cpu = params[:cpu]
        type.memory = params[:memory]
        type.inference_accelerators = InferenceAccelerators.build(params[:inference_accelerators], context: "#{context}[:inference_accelerators]") unless params[:inference_accelerators].nil?
        type.pid_mode = params[:pid_mode]
        type.ipc_mode = params[:ipc_mode]
        type.proxy_configuration = ProxyConfiguration.build(params[:proxy_configuration], context: "#{context}[:proxy_configuration]") unless params[:proxy_configuration].nil?
        type.registered_at = params[:registered_at]
        type.deregistered_at = params[:deregistered_at]
        type.registered_by = params[:registered_by]
        type.ephemeral_storage = EphemeralStorage.build(params[:ephemeral_storage], context: "#{context}[:ephemeral_storage]") unless params[:ephemeral_storage].nil?
        type
      end
    end

    module TaskDefinitionFieldList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TaskDefinitionPlacementConstraint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskDefinitionPlacementConstraint, context: context)
        type = Types::TaskDefinitionPlacementConstraint.new
        type.type = params[:type]
        type.expression = params[:expression]
        type
      end
    end

    module TaskDefinitionPlacementConstraints
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TaskDefinitionPlacementConstraint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TaskFieldList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TaskOverride
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskOverride, context: context)
        type = Types::TaskOverride.new
        type.container_overrides = ContainerOverrides.build(params[:container_overrides], context: "#{context}[:container_overrides]") unless params[:container_overrides].nil?
        type.cpu = params[:cpu]
        type.inference_accelerator_overrides = InferenceAcceleratorOverrides.build(params[:inference_accelerator_overrides], context: "#{context}[:inference_accelerator_overrides]") unless params[:inference_accelerator_overrides].nil?
        type.execution_role_arn = params[:execution_role_arn]
        type.memory = params[:memory]
        type.task_role_arn = params[:task_role_arn]
        type.ephemeral_storage = EphemeralStorage.build(params[:ephemeral_storage], context: "#{context}[:ephemeral_storage]") unless params[:ephemeral_storage].nil?
        type
      end
    end

    module TaskSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskSet, context: context)
        type = Types::TaskSet.new
        type.id = params[:id]
        type.task_set_arn = params[:task_set_arn]
        type.service_arn = params[:service_arn]
        type.cluster_arn = params[:cluster_arn]
        type.started_by = params[:started_by]
        type.external_id = params[:external_id]
        type.status = params[:status]
        type.task_definition = params[:task_definition]
        type.computed_desired_count = params[:computed_desired_count]
        type.pending_count = params[:pending_count]
        type.running_count = params[:running_count]
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type.launch_type = params[:launch_type]
        type.capacity_provider_strategy = CapacityProviderStrategy.build(params[:capacity_provider_strategy], context: "#{context}[:capacity_provider_strategy]") unless params[:capacity_provider_strategy].nil?
        type.platform_version = params[:platform_version]
        type.platform_family = params[:platform_family]
        type.network_configuration = NetworkConfiguration.build(params[:network_configuration], context: "#{context}[:network_configuration]") unless params[:network_configuration].nil?
        type.load_balancers = LoadBalancers.build(params[:load_balancers], context: "#{context}[:load_balancers]") unless params[:load_balancers].nil?
        type.service_registries = ServiceRegistries.build(params[:service_registries], context: "#{context}[:service_registries]") unless params[:service_registries].nil?
        type.scale = Scale.build(params[:scale], context: "#{context}[:scale]") unless params[:scale].nil?
        type.stability_status = params[:stability_status]
        type.stability_status_at = params[:stability_status_at]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TaskSetFieldList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TaskSetNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskSetNotFoundException, context: context)
        type = Types::TaskSetNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module TaskSets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TaskSet.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Tasks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Task.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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
        type.name = params[:name]
        type.soft_limit = params[:soft_limit]
        type.hard_limit = params[:hard_limit]
        type
      end
    end

    module UlimitList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Ulimit.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UnsupportedFeatureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedFeatureException, context: context)
        type = Types::UnsupportedFeatureException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeys.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module UpdateCapacityProviderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCapacityProviderInput, context: context)
        type = Types::UpdateCapacityProviderInput.new
        type.name = params[:name]
        type.auto_scaling_group_provider = AutoScalingGroupProviderUpdate.build(params[:auto_scaling_group_provider], context: "#{context}[:auto_scaling_group_provider]") unless params[:auto_scaling_group_provider].nil?
        type
      end
    end

    module UpdateCapacityProviderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCapacityProviderOutput, context: context)
        type = Types::UpdateCapacityProviderOutput.new
        type.capacity_provider = CapacityProvider.build(params[:capacity_provider], context: "#{context}[:capacity_provider]") unless params[:capacity_provider].nil?
        type
      end
    end

    module UpdateClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateClusterInput, context: context)
        type = Types::UpdateClusterInput.new
        type.cluster = params[:cluster]
        type.settings = ClusterSettings.build(params[:settings], context: "#{context}[:settings]") unless params[:settings].nil?
        type.configuration = ClusterConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type
      end
    end

    module UpdateClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateClusterOutput, context: context)
        type = Types::UpdateClusterOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module UpdateClusterSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateClusterSettingsInput, context: context)
        type = Types::UpdateClusterSettingsInput.new
        type.cluster = params[:cluster]
        type.settings = ClusterSettings.build(params[:settings], context: "#{context}[:settings]") unless params[:settings].nil?
        type
      end
    end

    module UpdateClusterSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateClusterSettingsOutput, context: context)
        type = Types::UpdateClusterSettingsOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module UpdateContainerAgentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContainerAgentInput, context: context)
        type = Types::UpdateContainerAgentInput.new
        type.cluster = params[:cluster]
        type.container_instance = params[:container_instance]
        type
      end
    end

    module UpdateContainerAgentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContainerAgentOutput, context: context)
        type = Types::UpdateContainerAgentOutput.new
        type.container_instance = ContainerInstance.build(params[:container_instance], context: "#{context}[:container_instance]") unless params[:container_instance].nil?
        type
      end
    end

    module UpdateContainerInstancesStateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContainerInstancesStateInput, context: context)
        type = Types::UpdateContainerInstancesStateInput.new
        type.cluster = params[:cluster]
        type.container_instances = StringList.build(params[:container_instances], context: "#{context}[:container_instances]") unless params[:container_instances].nil?
        type.status = params[:status]
        type
      end
    end

    module UpdateContainerInstancesStateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContainerInstancesStateOutput, context: context)
        type = Types::UpdateContainerInstancesStateOutput.new
        type.container_instances = ContainerInstances.build(params[:container_instances], context: "#{context}[:container_instances]") unless params[:container_instances].nil?
        type.failures = Failures.build(params[:failures], context: "#{context}[:failures]") unless params[:failures].nil?
        type
      end
    end

    module UpdateInProgressException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateInProgressException, context: context)
        type = Types::UpdateInProgressException.new
        type.message = params[:message]
        type
      end
    end

    module UpdateServiceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServiceInput, context: context)
        type = Types::UpdateServiceInput.new
        type.cluster = params[:cluster]
        type.service = params[:service]
        type.desired_count = params[:desired_count]
        type.task_definition = params[:task_definition]
        type.capacity_provider_strategy = CapacityProviderStrategy.build(params[:capacity_provider_strategy], context: "#{context}[:capacity_provider_strategy]") unless params[:capacity_provider_strategy].nil?
        type.deployment_configuration = DeploymentConfiguration.build(params[:deployment_configuration], context: "#{context}[:deployment_configuration]") unless params[:deployment_configuration].nil?
        type.network_configuration = NetworkConfiguration.build(params[:network_configuration], context: "#{context}[:network_configuration]") unless params[:network_configuration].nil?
        type.placement_constraints = PlacementConstraints.build(params[:placement_constraints], context: "#{context}[:placement_constraints]") unless params[:placement_constraints].nil?
        type.placement_strategy = PlacementStrategies.build(params[:placement_strategy], context: "#{context}[:placement_strategy]") unless params[:placement_strategy].nil?
        type.platform_version = params[:platform_version]
        type.force_new_deployment = params[:force_new_deployment]
        type.health_check_grace_period_seconds = params[:health_check_grace_period_seconds]
        type.enable_execute_command = params[:enable_execute_command]
        type.enable_ecs_managed_tags = params[:enable_ecs_managed_tags]
        type.load_balancers = LoadBalancers.build(params[:load_balancers], context: "#{context}[:load_balancers]") unless params[:load_balancers].nil?
        type.propagate_tags = params[:propagate_tags]
        type.service_registries = ServiceRegistries.build(params[:service_registries], context: "#{context}[:service_registries]") unless params[:service_registries].nil?
        type
      end
    end

    module UpdateServiceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServiceOutput, context: context)
        type = Types::UpdateServiceOutput.new
        type.service = Service.build(params[:service], context: "#{context}[:service]") unless params[:service].nil?
        type
      end
    end

    module UpdateServicePrimaryTaskSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServicePrimaryTaskSetInput, context: context)
        type = Types::UpdateServicePrimaryTaskSetInput.new
        type.cluster = params[:cluster]
        type.service = params[:service]
        type.primary_task_set = params[:primary_task_set]
        type
      end
    end

    module UpdateServicePrimaryTaskSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServicePrimaryTaskSetOutput, context: context)
        type = Types::UpdateServicePrimaryTaskSetOutput.new
        type.task_set = TaskSet.build(params[:task_set], context: "#{context}[:task_set]") unless params[:task_set].nil?
        type
      end
    end

    module UpdateTaskSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTaskSetInput, context: context)
        type = Types::UpdateTaskSetInput.new
        type.cluster = params[:cluster]
        type.service = params[:service]
        type.task_set = params[:task_set]
        type.scale = Scale.build(params[:scale], context: "#{context}[:scale]") unless params[:scale].nil?
        type
      end
    end

    module UpdateTaskSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTaskSetOutput, context: context)
        type = Types::UpdateTaskSetOutput.new
        type.task_set = TaskSet.build(params[:task_set], context: "#{context}[:task_set]") unless params[:task_set].nil?
        type
      end
    end

    module VersionInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VersionInfo, context: context)
        type = Types::VersionInfo.new
        type.agent_version = params[:agent_version]
        type.agent_hash = params[:agent_hash]
        type.docker_version = params[:docker_version]
        type
      end
    end

    module Volume
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Volume, context: context)
        type = Types::Volume.new
        type.name = params[:name]
        type.host = HostVolumeProperties.build(params[:host], context: "#{context}[:host]") unless params[:host].nil?
        type.docker_volume_configuration = DockerVolumeConfiguration.build(params[:docker_volume_configuration], context: "#{context}[:docker_volume_configuration]") unless params[:docker_volume_configuration].nil?
        type.efs_volume_configuration = EFSVolumeConfiguration.build(params[:efs_volume_configuration], context: "#{context}[:efs_volume_configuration]") unless params[:efs_volume_configuration].nil?
        type.fsx_windows_file_server_volume_configuration = FSxWindowsFileServerVolumeConfiguration.build(params[:fsx_windows_file_server_volume_configuration], context: "#{context}[:fsx_windows_file_server_volume_configuration]") unless params[:fsx_windows_file_server_volume_configuration].nil?
        type
      end
    end

    module VolumeFrom
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VolumeFrom, context: context)
        type = Types::VolumeFrom.new
        type.source_container = params[:source_container]
        type.read_only = params[:read_only]
        type
      end
    end

    module VolumeFromList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VolumeFrom.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VolumeList
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
