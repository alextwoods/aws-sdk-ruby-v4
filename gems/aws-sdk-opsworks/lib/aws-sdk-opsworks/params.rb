# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::OpsWorks
  module Params

    module AgentVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AgentVersion, context: context)
        type = Types::AgentVersion.new
        type.version = params[:version]
        type.configuration_manager = StackConfigurationManager.build(params[:configuration_manager], context: "#{context}[:configuration_manager]") unless params[:configuration_manager].nil?
        type
      end
    end

    module AgentVersions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AgentVersion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module App
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::App, context: context)
        type = Types::App.new
        type.app_id = params[:app_id]
        type.stack_id = params[:stack_id]
        type.shortname = params[:shortname]
        type.name = params[:name]
        type.description = params[:description]
        type.data_sources = DataSources.build(params[:data_sources], context: "#{context}[:data_sources]") unless params[:data_sources].nil?
        type.type = params[:type]
        type.app_source = Source.build(params[:app_source], context: "#{context}[:app_source]") unless params[:app_source].nil?
        type.domains = Strings.build(params[:domains], context: "#{context}[:domains]") unless params[:domains].nil?
        type.enable_ssl = params[:enable_ssl]
        type.ssl_configuration = SslConfiguration.build(params[:ssl_configuration], context: "#{context}[:ssl_configuration]") unless params[:ssl_configuration].nil?
        type.attributes = AppAttributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.created_at = params[:created_at]
        type.environment = EnvironmentVariables.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type
      end
    end

    module AppAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Apps
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << App.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssignInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssignInstanceInput, context: context)
        type = Types::AssignInstanceInput.new
        type.instance_id = params[:instance_id]
        type.layer_ids = Strings.build(params[:layer_ids], context: "#{context}[:layer_ids]") unless params[:layer_ids].nil?
        type
      end
    end

    module AssignInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssignInstanceOutput, context: context)
        type = Types::AssignInstanceOutput.new
        type
      end
    end

    module AssignVolumeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssignVolumeInput, context: context)
        type = Types::AssignVolumeInput.new
        type.volume_id = params[:volume_id]
        type.instance_id = params[:instance_id]
        type
      end
    end

    module AssignVolumeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssignVolumeOutput, context: context)
        type = Types::AssignVolumeOutput.new
        type
      end
    end

    module AssociateElasticIpInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateElasticIpInput, context: context)
        type = Types::AssociateElasticIpInput.new
        type.elastic_ip = params[:elastic_ip]
        type.instance_id = params[:instance_id]
        type
      end
    end

    module AssociateElasticIpOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateElasticIpOutput, context: context)
        type = Types::AssociateElasticIpOutput.new
        type
      end
    end

    module AttachElasticLoadBalancerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachElasticLoadBalancerInput, context: context)
        type = Types::AttachElasticLoadBalancerInput.new
        type.elastic_load_balancer_name = params[:elastic_load_balancer_name]
        type.layer_id = params[:layer_id]
        type
      end
    end

    module AttachElasticLoadBalancerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachElasticLoadBalancerOutput, context: context)
        type = Types::AttachElasticLoadBalancerOutput.new
        type
      end
    end

    module AutoScalingThresholds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoScalingThresholds, context: context)
        type = Types::AutoScalingThresholds.new
        type.instance_count = params[:instance_count]
        type.thresholds_wait_time = params[:thresholds_wait_time]
        type.ignore_metrics_time = params[:ignore_metrics_time]
        type.cpu_threshold = params[:cpu_threshold]
        type.memory_threshold = params[:memory_threshold]
        type.load_threshold = params[:load_threshold]
        type.alarms = Strings.build(params[:alarms], context: "#{context}[:alarms]") unless params[:alarms].nil?
        type
      end
    end

    module BlockDeviceMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BlockDeviceMapping, context: context)
        type = Types::BlockDeviceMapping.new
        type.device_name = params[:device_name]
        type.no_device = params[:no_device]
        type.virtual_name = params[:virtual_name]
        type.ebs = EbsBlockDevice.build(params[:ebs], context: "#{context}[:ebs]") unless params[:ebs].nil?
        type
      end
    end

    module BlockDeviceMappings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BlockDeviceMapping.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ChefConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChefConfiguration, context: context)
        type = Types::ChefConfiguration.new
        type.manage_berkshelf = params[:manage_berkshelf]
        type.berkshelf_version = params[:berkshelf_version]
        type
      end
    end

    module CloneStackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloneStackInput, context: context)
        type = Types::CloneStackInput.new
        type.source_stack_id = params[:source_stack_id]
        type.name = params[:name]
        type.region = params[:region]
        type.vpc_id = params[:vpc_id]
        type.attributes = StackAttributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.service_role_arn = params[:service_role_arn]
        type.default_instance_profile_arn = params[:default_instance_profile_arn]
        type.default_os = params[:default_os]
        type.hostname_theme = params[:hostname_theme]
        type.default_availability_zone = params[:default_availability_zone]
        type.default_subnet_id = params[:default_subnet_id]
        type.custom_json = params[:custom_json]
        type.configuration_manager = StackConfigurationManager.build(params[:configuration_manager], context: "#{context}[:configuration_manager]") unless params[:configuration_manager].nil?
        type.chef_configuration = ChefConfiguration.build(params[:chef_configuration], context: "#{context}[:chef_configuration]") unless params[:chef_configuration].nil?
        type.use_custom_cookbooks = params[:use_custom_cookbooks]
        type.use_opsworks_security_groups = params[:use_opsworks_security_groups]
        type.custom_cookbooks_source = Source.build(params[:custom_cookbooks_source], context: "#{context}[:custom_cookbooks_source]") unless params[:custom_cookbooks_source].nil?
        type.default_ssh_key_name = params[:default_ssh_key_name]
        type.clone_permissions = params[:clone_permissions]
        type.clone_app_ids = Strings.build(params[:clone_app_ids], context: "#{context}[:clone_app_ids]") unless params[:clone_app_ids].nil?
        type.default_root_device_type = params[:default_root_device_type]
        type.agent_version = params[:agent_version]
        type
      end
    end

    module CloneStackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloneStackOutput, context: context)
        type = Types::CloneStackOutput.new
        type.stack_id = params[:stack_id]
        type
      end
    end

    module CloudWatchLogsConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudWatchLogsConfiguration, context: context)
        type = Types::CloudWatchLogsConfiguration.new
        type.enabled = params[:enabled]
        type.log_streams = CloudWatchLogsLogStreams.build(params[:log_streams], context: "#{context}[:log_streams]") unless params[:log_streams].nil?
        type
      end
    end

    module CloudWatchLogsLogStream
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudWatchLogsLogStream, context: context)
        type = Types::CloudWatchLogsLogStream.new
        type.log_group_name = params[:log_group_name]
        type.datetime_format = params[:datetime_format]
        type.time_zone = params[:time_zone]
        type.file = params[:file]
        type.file_fingerprint_lines = params[:file_fingerprint_lines]
        type.multi_line_start_pattern = params[:multi_line_start_pattern]
        type.initial_position = params[:initial_position]
        type.encoding = params[:encoding]
        type.buffer_duration = params[:buffer_duration]
        type.batch_count = params[:batch_count]
        type.batch_size = params[:batch_size]
        type
      end
    end

    module CloudWatchLogsLogStreams
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CloudWatchLogsLogStream.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Command
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Command, context: context)
        type = Types::Command.new
        type.command_id = params[:command_id]
        type.instance_id = params[:instance_id]
        type.deployment_id = params[:deployment_id]
        type.created_at = params[:created_at]
        type.acknowledged_at = params[:acknowledged_at]
        type.completed_at = params[:completed_at]
        type.status = params[:status]
        type.exit_code = params[:exit_code]
        type.log_url = params[:log_url]
        type.type = params[:type]
        type
      end
    end

    module Commands
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Command.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateAppInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAppInput, context: context)
        type = Types::CreateAppInput.new
        type.stack_id = params[:stack_id]
        type.shortname = params[:shortname]
        type.name = params[:name]
        type.description = params[:description]
        type.data_sources = DataSources.build(params[:data_sources], context: "#{context}[:data_sources]") unless params[:data_sources].nil?
        type.type = params[:type]
        type.app_source = Source.build(params[:app_source], context: "#{context}[:app_source]") unless params[:app_source].nil?
        type.domains = Strings.build(params[:domains], context: "#{context}[:domains]") unless params[:domains].nil?
        type.enable_ssl = params[:enable_ssl]
        type.ssl_configuration = SslConfiguration.build(params[:ssl_configuration], context: "#{context}[:ssl_configuration]") unless params[:ssl_configuration].nil?
        type.attributes = AppAttributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.environment = EnvironmentVariables.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type
      end
    end

    module CreateAppOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAppOutput, context: context)
        type = Types::CreateAppOutput.new
        type.app_id = params[:app_id]
        type
      end
    end

    module CreateDeploymentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeploymentInput, context: context)
        type = Types::CreateDeploymentInput.new
        type.stack_id = params[:stack_id]
        type.app_id = params[:app_id]
        type.instance_ids = Strings.build(params[:instance_ids], context: "#{context}[:instance_ids]") unless params[:instance_ids].nil?
        type.layer_ids = Strings.build(params[:layer_ids], context: "#{context}[:layer_ids]") unless params[:layer_ids].nil?
        type.command = DeploymentCommand.build(params[:command], context: "#{context}[:command]") unless params[:command].nil?
        type.comment = params[:comment]
        type.custom_json = params[:custom_json]
        type
      end
    end

    module CreateDeploymentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeploymentOutput, context: context)
        type = Types::CreateDeploymentOutput.new
        type.deployment_id = params[:deployment_id]
        type
      end
    end

    module CreateInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInstanceInput, context: context)
        type = Types::CreateInstanceInput.new
        type.stack_id = params[:stack_id]
        type.layer_ids = Strings.build(params[:layer_ids], context: "#{context}[:layer_ids]") unless params[:layer_ids].nil?
        type.instance_type = params[:instance_type]
        type.auto_scaling_type = params[:auto_scaling_type]
        type.hostname = params[:hostname]
        type.os = params[:os]
        type.ami_id = params[:ami_id]
        type.ssh_key_name = params[:ssh_key_name]
        type.availability_zone = params[:availability_zone]
        type.virtualization_type = params[:virtualization_type]
        type.subnet_id = params[:subnet_id]
        type.architecture = params[:architecture]
        type.root_device_type = params[:root_device_type]
        type.block_device_mappings = BlockDeviceMappings.build(params[:block_device_mappings], context: "#{context}[:block_device_mappings]") unless params[:block_device_mappings].nil?
        type.install_updates_on_boot = params[:install_updates_on_boot]
        type.ebs_optimized = params[:ebs_optimized]
        type.agent_version = params[:agent_version]
        type.tenancy = params[:tenancy]
        type
      end
    end

    module CreateInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInstanceOutput, context: context)
        type = Types::CreateInstanceOutput.new
        type.instance_id = params[:instance_id]
        type
      end
    end

    module CreateLayerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLayerInput, context: context)
        type = Types::CreateLayerInput.new
        type.stack_id = params[:stack_id]
        type.type = params[:type]
        type.name = params[:name]
        type.shortname = params[:shortname]
        type.attributes = LayerAttributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.cloud_watch_logs_configuration = CloudWatchLogsConfiguration.build(params[:cloud_watch_logs_configuration], context: "#{context}[:cloud_watch_logs_configuration]") unless params[:cloud_watch_logs_configuration].nil?
        type.custom_instance_profile_arn = params[:custom_instance_profile_arn]
        type.custom_json = params[:custom_json]
        type.custom_security_group_ids = Strings.build(params[:custom_security_group_ids], context: "#{context}[:custom_security_group_ids]") unless params[:custom_security_group_ids].nil?
        type.packages = Strings.build(params[:packages], context: "#{context}[:packages]") unless params[:packages].nil?
        type.volume_configurations = VolumeConfigurations.build(params[:volume_configurations], context: "#{context}[:volume_configurations]") unless params[:volume_configurations].nil?
        type.enable_auto_healing = params[:enable_auto_healing]
        type.auto_assign_elastic_ips = params[:auto_assign_elastic_ips]
        type.auto_assign_public_ips = params[:auto_assign_public_ips]
        type.custom_recipes = Recipes.build(params[:custom_recipes], context: "#{context}[:custom_recipes]") unless params[:custom_recipes].nil?
        type.install_updates_on_boot = params[:install_updates_on_boot]
        type.use_ebs_optimized_instances = params[:use_ebs_optimized_instances]
        type.lifecycle_event_configuration = LifecycleEventConfiguration.build(params[:lifecycle_event_configuration], context: "#{context}[:lifecycle_event_configuration]") unless params[:lifecycle_event_configuration].nil?
        type
      end
    end

    module CreateLayerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLayerOutput, context: context)
        type = Types::CreateLayerOutput.new
        type.layer_id = params[:layer_id]
        type
      end
    end

    module CreateStackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStackInput, context: context)
        type = Types::CreateStackInput.new
        type.name = params[:name]
        type.region = params[:region]
        type.vpc_id = params[:vpc_id]
        type.attributes = StackAttributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.service_role_arn = params[:service_role_arn]
        type.default_instance_profile_arn = params[:default_instance_profile_arn]
        type.default_os = params[:default_os]
        type.hostname_theme = params[:hostname_theme]
        type.default_availability_zone = params[:default_availability_zone]
        type.default_subnet_id = params[:default_subnet_id]
        type.custom_json = params[:custom_json]
        type.configuration_manager = StackConfigurationManager.build(params[:configuration_manager], context: "#{context}[:configuration_manager]") unless params[:configuration_manager].nil?
        type.chef_configuration = ChefConfiguration.build(params[:chef_configuration], context: "#{context}[:chef_configuration]") unless params[:chef_configuration].nil?
        type.use_custom_cookbooks = params[:use_custom_cookbooks]
        type.use_opsworks_security_groups = params[:use_opsworks_security_groups]
        type.custom_cookbooks_source = Source.build(params[:custom_cookbooks_source], context: "#{context}[:custom_cookbooks_source]") unless params[:custom_cookbooks_source].nil?
        type.default_ssh_key_name = params[:default_ssh_key_name]
        type.default_root_device_type = params[:default_root_device_type]
        type.agent_version = params[:agent_version]
        type
      end
    end

    module CreateStackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStackOutput, context: context)
        type = Types::CreateStackOutput.new
        type.stack_id = params[:stack_id]
        type
      end
    end

    module CreateUserProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserProfileInput, context: context)
        type = Types::CreateUserProfileInput.new
        type.iam_user_arn = params[:iam_user_arn]
        type.ssh_username = params[:ssh_username]
        type.ssh_public_key = params[:ssh_public_key]
        type.allow_self_management = params[:allow_self_management]
        type
      end
    end

    module CreateUserProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserProfileOutput, context: context)
        type = Types::CreateUserProfileOutput.new
        type.iam_user_arn = params[:iam_user_arn]
        type
      end
    end

    module DailyAutoScalingSchedule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module DataSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataSource, context: context)
        type = Types::DataSource.new
        type.type = params[:type]
        type.arn = params[:arn]
        type.database_name = params[:database_name]
        type
      end
    end

    module DataSources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataSource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteAppInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppInput, context: context)
        type = Types::DeleteAppInput.new
        type.app_id = params[:app_id]
        type
      end
    end

    module DeleteAppOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppOutput, context: context)
        type = Types::DeleteAppOutput.new
        type
      end
    end

    module DeleteInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInstanceInput, context: context)
        type = Types::DeleteInstanceInput.new
        type.instance_id = params[:instance_id]
        type.delete_elastic_ip = params[:delete_elastic_ip]
        type.delete_volumes = params[:delete_volumes]
        type
      end
    end

    module DeleteInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInstanceOutput, context: context)
        type = Types::DeleteInstanceOutput.new
        type
      end
    end

    module DeleteLayerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLayerInput, context: context)
        type = Types::DeleteLayerInput.new
        type.layer_id = params[:layer_id]
        type
      end
    end

    module DeleteLayerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLayerOutput, context: context)
        type = Types::DeleteLayerOutput.new
        type
      end
    end

    module DeleteStackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStackInput, context: context)
        type = Types::DeleteStackInput.new
        type.stack_id = params[:stack_id]
        type
      end
    end

    module DeleteStackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStackOutput, context: context)
        type = Types::DeleteStackOutput.new
        type
      end
    end

    module DeleteUserProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserProfileInput, context: context)
        type = Types::DeleteUserProfileInput.new
        type.iam_user_arn = params[:iam_user_arn]
        type
      end
    end

    module DeleteUserProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserProfileOutput, context: context)
        type = Types::DeleteUserProfileOutput.new
        type
      end
    end

    module Deployment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Deployment, context: context)
        type = Types::Deployment.new
        type.deployment_id = params[:deployment_id]
        type.stack_id = params[:stack_id]
        type.app_id = params[:app_id]
        type.created_at = params[:created_at]
        type.completed_at = params[:completed_at]
        type.duration = params[:duration]
        type.iam_user_arn = params[:iam_user_arn]
        type.comment = params[:comment]
        type.command = DeploymentCommand.build(params[:command], context: "#{context}[:command]") unless params[:command].nil?
        type.status = params[:status]
        type.custom_json = params[:custom_json]
        type.instance_ids = Strings.build(params[:instance_ids], context: "#{context}[:instance_ids]") unless params[:instance_ids].nil?
        type
      end
    end

    module DeploymentCommand
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentCommand, context: context)
        type = Types::DeploymentCommand.new
        type.name = params[:name]
        type.args = DeploymentCommandArgs.build(params[:args], context: "#{context}[:args]") unless params[:args].nil?
        type
      end
    end

    module DeploymentCommandArgs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = Strings.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
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

    module DeregisterEcsClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterEcsClusterInput, context: context)
        type = Types::DeregisterEcsClusterInput.new
        type.ecs_cluster_arn = params[:ecs_cluster_arn]
        type
      end
    end

    module DeregisterEcsClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterEcsClusterOutput, context: context)
        type = Types::DeregisterEcsClusterOutput.new
        type
      end
    end

    module DeregisterElasticIpInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterElasticIpInput, context: context)
        type = Types::DeregisterElasticIpInput.new
        type.elastic_ip = params[:elastic_ip]
        type
      end
    end

    module DeregisterElasticIpOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterElasticIpOutput, context: context)
        type = Types::DeregisterElasticIpOutput.new
        type
      end
    end

    module DeregisterInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterInstanceInput, context: context)
        type = Types::DeregisterInstanceInput.new
        type.instance_id = params[:instance_id]
        type
      end
    end

    module DeregisterInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterInstanceOutput, context: context)
        type = Types::DeregisterInstanceOutput.new
        type
      end
    end

    module DeregisterRdsDbInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterRdsDbInstanceInput, context: context)
        type = Types::DeregisterRdsDbInstanceInput.new
        type.rds_db_instance_arn = params[:rds_db_instance_arn]
        type
      end
    end

    module DeregisterRdsDbInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterRdsDbInstanceOutput, context: context)
        type = Types::DeregisterRdsDbInstanceOutput.new
        type
      end
    end

    module DeregisterVolumeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterVolumeInput, context: context)
        type = Types::DeregisterVolumeInput.new
        type.volume_id = params[:volume_id]
        type
      end
    end

    module DeregisterVolumeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterVolumeOutput, context: context)
        type = Types::DeregisterVolumeOutput.new
        type
      end
    end

    module DescribeAgentVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAgentVersionsInput, context: context)
        type = Types::DescribeAgentVersionsInput.new
        type.stack_id = params[:stack_id]
        type.configuration_manager = StackConfigurationManager.build(params[:configuration_manager], context: "#{context}[:configuration_manager]") unless params[:configuration_manager].nil?
        type
      end
    end

    module DescribeAgentVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAgentVersionsOutput, context: context)
        type = Types::DescribeAgentVersionsOutput.new
        type.agent_versions = AgentVersions.build(params[:agent_versions], context: "#{context}[:agent_versions]") unless params[:agent_versions].nil?
        type
      end
    end

    module DescribeAppsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAppsInput, context: context)
        type = Types::DescribeAppsInput.new
        type.stack_id = params[:stack_id]
        type.app_ids = Strings.build(params[:app_ids], context: "#{context}[:app_ids]") unless params[:app_ids].nil?
        type
      end
    end

    module DescribeAppsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAppsOutput, context: context)
        type = Types::DescribeAppsOutput.new
        type.apps = Apps.build(params[:apps], context: "#{context}[:apps]") unless params[:apps].nil?
        type
      end
    end

    module DescribeCommandsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCommandsInput, context: context)
        type = Types::DescribeCommandsInput.new
        type.deployment_id = params[:deployment_id]
        type.instance_id = params[:instance_id]
        type.command_ids = Strings.build(params[:command_ids], context: "#{context}[:command_ids]") unless params[:command_ids].nil?
        type
      end
    end

    module DescribeCommandsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCommandsOutput, context: context)
        type = Types::DescribeCommandsOutput.new
        type.commands = Commands.build(params[:commands], context: "#{context}[:commands]") unless params[:commands].nil?
        type
      end
    end

    module DescribeDeploymentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDeploymentsInput, context: context)
        type = Types::DescribeDeploymentsInput.new
        type.stack_id = params[:stack_id]
        type.app_id = params[:app_id]
        type.deployment_ids = Strings.build(params[:deployment_ids], context: "#{context}[:deployment_ids]") unless params[:deployment_ids].nil?
        type
      end
    end

    module DescribeDeploymentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDeploymentsOutput, context: context)
        type = Types::DescribeDeploymentsOutput.new
        type.deployments = Deployments.build(params[:deployments], context: "#{context}[:deployments]") unless params[:deployments].nil?
        type
      end
    end

    module DescribeEcsClustersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEcsClustersInput, context: context)
        type = Types::DescribeEcsClustersInput.new
        type.ecs_cluster_arns = Strings.build(params[:ecs_cluster_arns], context: "#{context}[:ecs_cluster_arns]") unless params[:ecs_cluster_arns].nil?
        type.stack_id = params[:stack_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeEcsClustersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEcsClustersOutput, context: context)
        type = Types::DescribeEcsClustersOutput.new
        type.ecs_clusters = EcsClusters.build(params[:ecs_clusters], context: "#{context}[:ecs_clusters]") unless params[:ecs_clusters].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeElasticIpsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeElasticIpsInput, context: context)
        type = Types::DescribeElasticIpsInput.new
        type.instance_id = params[:instance_id]
        type.stack_id = params[:stack_id]
        type.ips = Strings.build(params[:ips], context: "#{context}[:ips]") unless params[:ips].nil?
        type
      end
    end

    module DescribeElasticIpsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeElasticIpsOutput, context: context)
        type = Types::DescribeElasticIpsOutput.new
        type.elastic_ips = ElasticIps.build(params[:elastic_ips], context: "#{context}[:elastic_ips]") unless params[:elastic_ips].nil?
        type
      end
    end

    module DescribeElasticLoadBalancersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeElasticLoadBalancersInput, context: context)
        type = Types::DescribeElasticLoadBalancersInput.new
        type.stack_id = params[:stack_id]
        type.layer_ids = Strings.build(params[:layer_ids], context: "#{context}[:layer_ids]") unless params[:layer_ids].nil?
        type
      end
    end

    module DescribeElasticLoadBalancersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeElasticLoadBalancersOutput, context: context)
        type = Types::DescribeElasticLoadBalancersOutput.new
        type.elastic_load_balancers = ElasticLoadBalancers.build(params[:elastic_load_balancers], context: "#{context}[:elastic_load_balancers]") unless params[:elastic_load_balancers].nil?
        type
      end
    end

    module DescribeInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstancesInput, context: context)
        type = Types::DescribeInstancesInput.new
        type.stack_id = params[:stack_id]
        type.layer_id = params[:layer_id]
        type.instance_ids = Strings.build(params[:instance_ids], context: "#{context}[:instance_ids]") unless params[:instance_ids].nil?
        type
      end
    end

    module DescribeInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstancesOutput, context: context)
        type = Types::DescribeInstancesOutput.new
        type.instances = Instances.build(params[:instances], context: "#{context}[:instances]") unless params[:instances].nil?
        type
      end
    end

    module DescribeLayersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLayersInput, context: context)
        type = Types::DescribeLayersInput.new
        type.stack_id = params[:stack_id]
        type.layer_ids = Strings.build(params[:layer_ids], context: "#{context}[:layer_ids]") unless params[:layer_ids].nil?
        type
      end
    end

    module DescribeLayersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLayersOutput, context: context)
        type = Types::DescribeLayersOutput.new
        type.layers = Layers.build(params[:layers], context: "#{context}[:layers]") unless params[:layers].nil?
        type
      end
    end

    module DescribeLoadBasedAutoScalingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLoadBasedAutoScalingInput, context: context)
        type = Types::DescribeLoadBasedAutoScalingInput.new
        type.layer_ids = Strings.build(params[:layer_ids], context: "#{context}[:layer_ids]") unless params[:layer_ids].nil?
        type
      end
    end

    module DescribeLoadBasedAutoScalingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLoadBasedAutoScalingOutput, context: context)
        type = Types::DescribeLoadBasedAutoScalingOutput.new
        type.load_based_auto_scaling_configurations = LoadBasedAutoScalingConfigurations.build(params[:load_based_auto_scaling_configurations], context: "#{context}[:load_based_auto_scaling_configurations]") unless params[:load_based_auto_scaling_configurations].nil?
        type
      end
    end

    module DescribeMyUserProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMyUserProfileInput, context: context)
        type = Types::DescribeMyUserProfileInput.new
        type
      end
    end

    module DescribeMyUserProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMyUserProfileOutput, context: context)
        type = Types::DescribeMyUserProfileOutput.new
        type.user_profile = SelfUserProfile.build(params[:user_profile], context: "#{context}[:user_profile]") unless params[:user_profile].nil?
        type
      end
    end

    module DescribeOperatingSystemsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOperatingSystemsInput, context: context)
        type = Types::DescribeOperatingSystemsInput.new
        type
      end
    end

    module DescribeOperatingSystemsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOperatingSystemsOutput, context: context)
        type = Types::DescribeOperatingSystemsOutput.new
        type.operating_systems = OperatingSystems.build(params[:operating_systems], context: "#{context}[:operating_systems]") unless params[:operating_systems].nil?
        type
      end
    end

    module DescribePermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePermissionsInput, context: context)
        type = Types::DescribePermissionsInput.new
        type.iam_user_arn = params[:iam_user_arn]
        type.stack_id = params[:stack_id]
        type
      end
    end

    module DescribePermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePermissionsOutput, context: context)
        type = Types::DescribePermissionsOutput.new
        type.permissions = Permissions.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type
      end
    end

    module DescribeRaidArraysInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRaidArraysInput, context: context)
        type = Types::DescribeRaidArraysInput.new
        type.instance_id = params[:instance_id]
        type.stack_id = params[:stack_id]
        type.raid_array_ids = Strings.build(params[:raid_array_ids], context: "#{context}[:raid_array_ids]") unless params[:raid_array_ids].nil?
        type
      end
    end

    module DescribeRaidArraysOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRaidArraysOutput, context: context)
        type = Types::DescribeRaidArraysOutput.new
        type.raid_arrays = RaidArrays.build(params[:raid_arrays], context: "#{context}[:raid_arrays]") unless params[:raid_arrays].nil?
        type
      end
    end

    module DescribeRdsDbInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRdsDbInstancesInput, context: context)
        type = Types::DescribeRdsDbInstancesInput.new
        type.stack_id = params[:stack_id]
        type.rds_db_instance_arns = Strings.build(params[:rds_db_instance_arns], context: "#{context}[:rds_db_instance_arns]") unless params[:rds_db_instance_arns].nil?
        type
      end
    end

    module DescribeRdsDbInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRdsDbInstancesOutput, context: context)
        type = Types::DescribeRdsDbInstancesOutput.new
        type.rds_db_instances = RdsDbInstances.build(params[:rds_db_instances], context: "#{context}[:rds_db_instances]") unless params[:rds_db_instances].nil?
        type
      end
    end

    module DescribeServiceErrorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeServiceErrorsInput, context: context)
        type = Types::DescribeServiceErrorsInput.new
        type.stack_id = params[:stack_id]
        type.instance_id = params[:instance_id]
        type.service_error_ids = Strings.build(params[:service_error_ids], context: "#{context}[:service_error_ids]") unless params[:service_error_ids].nil?
        type
      end
    end

    module DescribeServiceErrorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeServiceErrorsOutput, context: context)
        type = Types::DescribeServiceErrorsOutput.new
        type.service_errors = ServiceErrors.build(params[:service_errors], context: "#{context}[:service_errors]") unless params[:service_errors].nil?
        type
      end
    end

    module DescribeStackProvisioningParametersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStackProvisioningParametersInput, context: context)
        type = Types::DescribeStackProvisioningParametersInput.new
        type.stack_id = params[:stack_id]
        type
      end
    end

    module DescribeStackProvisioningParametersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStackProvisioningParametersOutput, context: context)
        type = Types::DescribeStackProvisioningParametersOutput.new
        type.agent_installer_url = params[:agent_installer_url]
        type.parameters = Parameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module DescribeStackSummaryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStackSummaryInput, context: context)
        type = Types::DescribeStackSummaryInput.new
        type.stack_id = params[:stack_id]
        type
      end
    end

    module DescribeStackSummaryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStackSummaryOutput, context: context)
        type = Types::DescribeStackSummaryOutput.new
        type.stack_summary = StackSummary.build(params[:stack_summary], context: "#{context}[:stack_summary]") unless params[:stack_summary].nil?
        type
      end
    end

    module DescribeStacksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStacksInput, context: context)
        type = Types::DescribeStacksInput.new
        type.stack_ids = Strings.build(params[:stack_ids], context: "#{context}[:stack_ids]") unless params[:stack_ids].nil?
        type
      end
    end

    module DescribeStacksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStacksOutput, context: context)
        type = Types::DescribeStacksOutput.new
        type.stacks = Stacks.build(params[:stacks], context: "#{context}[:stacks]") unless params[:stacks].nil?
        type
      end
    end

    module DescribeTimeBasedAutoScalingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTimeBasedAutoScalingInput, context: context)
        type = Types::DescribeTimeBasedAutoScalingInput.new
        type.instance_ids = Strings.build(params[:instance_ids], context: "#{context}[:instance_ids]") unless params[:instance_ids].nil?
        type
      end
    end

    module DescribeTimeBasedAutoScalingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTimeBasedAutoScalingOutput, context: context)
        type = Types::DescribeTimeBasedAutoScalingOutput.new
        type.time_based_auto_scaling_configurations = TimeBasedAutoScalingConfigurations.build(params[:time_based_auto_scaling_configurations], context: "#{context}[:time_based_auto_scaling_configurations]") unless params[:time_based_auto_scaling_configurations].nil?
        type
      end
    end

    module DescribeUserProfilesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUserProfilesInput, context: context)
        type = Types::DescribeUserProfilesInput.new
        type.iam_user_arns = Strings.build(params[:iam_user_arns], context: "#{context}[:iam_user_arns]") unless params[:iam_user_arns].nil?
        type
      end
    end

    module DescribeUserProfilesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUserProfilesOutput, context: context)
        type = Types::DescribeUserProfilesOutput.new
        type.user_profiles = UserProfiles.build(params[:user_profiles], context: "#{context}[:user_profiles]") unless params[:user_profiles].nil?
        type
      end
    end

    module DescribeVolumesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVolumesInput, context: context)
        type = Types::DescribeVolumesInput.new
        type.instance_id = params[:instance_id]
        type.stack_id = params[:stack_id]
        type.raid_array_id = params[:raid_array_id]
        type.volume_ids = Strings.build(params[:volume_ids], context: "#{context}[:volume_ids]") unless params[:volume_ids].nil?
        type
      end
    end

    module DescribeVolumesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVolumesOutput, context: context)
        type = Types::DescribeVolumesOutput.new
        type.volumes = Volumes.build(params[:volumes], context: "#{context}[:volumes]") unless params[:volumes].nil?
        type
      end
    end

    module DetachElasticLoadBalancerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachElasticLoadBalancerInput, context: context)
        type = Types::DetachElasticLoadBalancerInput.new
        type.elastic_load_balancer_name = params[:elastic_load_balancer_name]
        type.layer_id = params[:layer_id]
        type
      end
    end

    module DetachElasticLoadBalancerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachElasticLoadBalancerOutput, context: context)
        type = Types::DetachElasticLoadBalancerOutput.new
        type
      end
    end

    module DisassociateElasticIpInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateElasticIpInput, context: context)
        type = Types::DisassociateElasticIpInput.new
        type.elastic_ip = params[:elastic_ip]
        type
      end
    end

    module DisassociateElasticIpOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateElasticIpOutput, context: context)
        type = Types::DisassociateElasticIpOutput.new
        type
      end
    end

    module EbsBlockDevice
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EbsBlockDevice, context: context)
        type = Types::EbsBlockDevice.new
        type.snapshot_id = params[:snapshot_id]
        type.iops = params[:iops]
        type.volume_size = params[:volume_size]
        type.volume_type = params[:volume_type]
        type.delete_on_termination = params[:delete_on_termination]
        type
      end
    end

    module EcsCluster
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EcsCluster, context: context)
        type = Types::EcsCluster.new
        type.ecs_cluster_arn = params[:ecs_cluster_arn]
        type.ecs_cluster_name = params[:ecs_cluster_name]
        type.stack_id = params[:stack_id]
        type.registered_at = params[:registered_at]
        type
      end
    end

    module EcsClusters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EcsCluster.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ElasticIp
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ElasticIp, context: context)
        type = Types::ElasticIp.new
        type.ip = params[:ip]
        type.name = params[:name]
        type.domain = params[:domain]
        type.region = params[:region]
        type.instance_id = params[:instance_id]
        type
      end
    end

    module ElasticIps
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ElasticIp.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ElasticLoadBalancer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ElasticLoadBalancer, context: context)
        type = Types::ElasticLoadBalancer.new
        type.elastic_load_balancer_name = params[:elastic_load_balancer_name]
        type.region = params[:region]
        type.dns_name = params[:dns_name]
        type.stack_id = params[:stack_id]
        type.layer_id = params[:layer_id]
        type.vpc_id = params[:vpc_id]
        type.availability_zones = Strings.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.subnet_ids = Strings.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.ec2_instance_ids = Strings.build(params[:ec2_instance_ids], context: "#{context}[:ec2_instance_ids]") unless params[:ec2_instance_ids].nil?
        type
      end
    end

    module ElasticLoadBalancers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ElasticLoadBalancer.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EnvironmentVariable
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnvironmentVariable, context: context)
        type = Types::EnvironmentVariable.new
        type.key = params[:key]
        type.value = params[:value]
        type.secure = params[:secure]
        type
      end
    end

    module EnvironmentVariables
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EnvironmentVariable.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetHostnameSuggestionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetHostnameSuggestionInput, context: context)
        type = Types::GetHostnameSuggestionInput.new
        type.layer_id = params[:layer_id]
        type
      end
    end

    module GetHostnameSuggestionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetHostnameSuggestionOutput, context: context)
        type = Types::GetHostnameSuggestionOutput.new
        type.layer_id = params[:layer_id]
        type.hostname = params[:hostname]
        type
      end
    end

    module GrantAccessInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GrantAccessInput, context: context)
        type = Types::GrantAccessInput.new
        type.instance_id = params[:instance_id]
        type.valid_for_in_minutes = params[:valid_for_in_minutes]
        type
      end
    end

    module GrantAccessOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GrantAccessOutput, context: context)
        type = Types::GrantAccessOutput.new
        type.temporary_credential = TemporaryCredential.build(params[:temporary_credential], context: "#{context}[:temporary_credential]") unless params[:temporary_credential].nil?
        type
      end
    end

    module Instance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Instance, context: context)
        type = Types::Instance.new
        type.agent_version = params[:agent_version]
        type.ami_id = params[:ami_id]
        type.architecture = params[:architecture]
        type.arn = params[:arn]
        type.auto_scaling_type = params[:auto_scaling_type]
        type.availability_zone = params[:availability_zone]
        type.block_device_mappings = BlockDeviceMappings.build(params[:block_device_mappings], context: "#{context}[:block_device_mappings]") unless params[:block_device_mappings].nil?
        type.created_at = params[:created_at]
        type.ebs_optimized = params[:ebs_optimized]
        type.ec2_instance_id = params[:ec2_instance_id]
        type.ecs_cluster_arn = params[:ecs_cluster_arn]
        type.ecs_container_instance_arn = params[:ecs_container_instance_arn]
        type.elastic_ip = params[:elastic_ip]
        type.hostname = params[:hostname]
        type.infrastructure_class = params[:infrastructure_class]
        type.install_updates_on_boot = params[:install_updates_on_boot]
        type.instance_id = params[:instance_id]
        type.instance_profile_arn = params[:instance_profile_arn]
        type.instance_type = params[:instance_type]
        type.last_service_error_id = params[:last_service_error_id]
        type.layer_ids = Strings.build(params[:layer_ids], context: "#{context}[:layer_ids]") unless params[:layer_ids].nil?
        type.os = params[:os]
        type.platform = params[:platform]
        type.private_dns = params[:private_dns]
        type.private_ip = params[:private_ip]
        type.public_dns = params[:public_dns]
        type.public_ip = params[:public_ip]
        type.registered_by = params[:registered_by]
        type.reported_agent_version = params[:reported_agent_version]
        type.reported_os = ReportedOs.build(params[:reported_os], context: "#{context}[:reported_os]") unless params[:reported_os].nil?
        type.root_device_type = params[:root_device_type]
        type.root_device_volume_id = params[:root_device_volume_id]
        type.security_group_ids = Strings.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.ssh_host_dsa_key_fingerprint = params[:ssh_host_dsa_key_fingerprint]
        type.ssh_host_rsa_key_fingerprint = params[:ssh_host_rsa_key_fingerprint]
        type.ssh_key_name = params[:ssh_key_name]
        type.stack_id = params[:stack_id]
        type.status = params[:status]
        type.subnet_id = params[:subnet_id]
        type.tenancy = params[:tenancy]
        type.virtualization_type = params[:virtualization_type]
        type
      end
    end

    module InstanceIdentity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceIdentity, context: context)
        type = Types::InstanceIdentity.new
        type.document = params[:document]
        type.signature = params[:signature]
        type
      end
    end

    module Instances
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Instance.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstancesCount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstancesCount, context: context)
        type = Types::InstancesCount.new
        type.assigning = params[:assigning]
        type.booting = params[:booting]
        type.connection_lost = params[:connection_lost]
        type.deregistering = params[:deregistering]
        type.online = params[:online]
        type.pending = params[:pending]
        type.rebooting = params[:rebooting]
        type.registered = params[:registered]
        type.registering = params[:registering]
        type.requested = params[:requested]
        type.running_setup = params[:running_setup]
        type.setup_failed = params[:setup_failed]
        type.shutting_down = params[:shutting_down]
        type.start_failed = params[:start_failed]
        type.stop_failed = params[:stop_failed]
        type.stopped = params[:stopped]
        type.stopping = params[:stopping]
        type.terminated = params[:terminated]
        type.terminating = params[:terminating]
        type.unassigning = params[:unassigning]
        type
      end
    end

    module Layer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Layer, context: context)
        type = Types::Layer.new
        type.arn = params[:arn]
        type.stack_id = params[:stack_id]
        type.layer_id = params[:layer_id]
        type.type = params[:type]
        type.name = params[:name]
        type.shortname = params[:shortname]
        type.attributes = LayerAttributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.cloud_watch_logs_configuration = CloudWatchLogsConfiguration.build(params[:cloud_watch_logs_configuration], context: "#{context}[:cloud_watch_logs_configuration]") unless params[:cloud_watch_logs_configuration].nil?
        type.custom_instance_profile_arn = params[:custom_instance_profile_arn]
        type.custom_json = params[:custom_json]
        type.custom_security_group_ids = Strings.build(params[:custom_security_group_ids], context: "#{context}[:custom_security_group_ids]") unless params[:custom_security_group_ids].nil?
        type.default_security_group_names = Strings.build(params[:default_security_group_names], context: "#{context}[:default_security_group_names]") unless params[:default_security_group_names].nil?
        type.packages = Strings.build(params[:packages], context: "#{context}[:packages]") unless params[:packages].nil?
        type.volume_configurations = VolumeConfigurations.build(params[:volume_configurations], context: "#{context}[:volume_configurations]") unless params[:volume_configurations].nil?
        type.enable_auto_healing = params[:enable_auto_healing]
        type.auto_assign_elastic_ips = params[:auto_assign_elastic_ips]
        type.auto_assign_public_ips = params[:auto_assign_public_ips]
        type.default_recipes = Recipes.build(params[:default_recipes], context: "#{context}[:default_recipes]") unless params[:default_recipes].nil?
        type.custom_recipes = Recipes.build(params[:custom_recipes], context: "#{context}[:custom_recipes]") unless params[:custom_recipes].nil?
        type.created_at = params[:created_at]
        type.install_updates_on_boot = params[:install_updates_on_boot]
        type.use_ebs_optimized_instances = params[:use_ebs_optimized_instances]
        type.lifecycle_event_configuration = LifecycleEventConfiguration.build(params[:lifecycle_event_configuration], context: "#{context}[:lifecycle_event_configuration]") unless params[:lifecycle_event_configuration].nil?
        type
      end
    end

    module LayerAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Layers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Layer.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LifecycleEventConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LifecycleEventConfiguration, context: context)
        type = Types::LifecycleEventConfiguration.new
        type.shutdown = ShutdownEventConfiguration.build(params[:shutdown], context: "#{context}[:shutdown]") unless params[:shutdown].nil?
        type
      end
    end

    module ListTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsInput, context: context)
        type = Types::ListTagsInput.new
        type.resource_arn = params[:resource_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsOutput, context: context)
        type = Types::ListTagsOutput.new
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module LoadBasedAutoScalingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoadBasedAutoScalingConfiguration, context: context)
        type = Types::LoadBasedAutoScalingConfiguration.new
        type.layer_id = params[:layer_id]
        type.enable = params[:enable]
        type.up_scaling = AutoScalingThresholds.build(params[:up_scaling], context: "#{context}[:up_scaling]") unless params[:up_scaling].nil?
        type.down_scaling = AutoScalingThresholds.build(params[:down_scaling], context: "#{context}[:down_scaling]") unless params[:down_scaling].nil?
        type
      end
    end

    module LoadBasedAutoScalingConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LoadBasedAutoScalingConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OperatingSystem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OperatingSystem, context: context)
        type = Types::OperatingSystem.new
        type.name = params[:name]
        type.id = params[:id]
        type.type = params[:type]
        type.configuration_managers = OperatingSystemConfigurationManagers.build(params[:configuration_managers], context: "#{context}[:configuration_managers]") unless params[:configuration_managers].nil?
        type.reported_name = params[:reported_name]
        type.reported_version = params[:reported_version]
        type.supported = params[:supported]
        type
      end
    end

    module OperatingSystemConfigurationManager
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OperatingSystemConfigurationManager, context: context)
        type = Types::OperatingSystemConfigurationManager.new
        type.name = params[:name]
        type.version = params[:version]
        type
      end
    end

    module OperatingSystemConfigurationManagers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OperatingSystemConfigurationManager.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OperatingSystems
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OperatingSystem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Parameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Permission
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Permission, context: context)
        type = Types::Permission.new
        type.stack_id = params[:stack_id]
        type.iam_user_arn = params[:iam_user_arn]
        type.allow_ssh = params[:allow_ssh]
        type.allow_sudo = params[:allow_sudo]
        type.level = params[:level]
        type
      end
    end

    module Permissions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Permission.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RaidArray
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RaidArray, context: context)
        type = Types::RaidArray.new
        type.raid_array_id = params[:raid_array_id]
        type.instance_id = params[:instance_id]
        type.name = params[:name]
        type.raid_level = params[:raid_level]
        type.number_of_disks = params[:number_of_disks]
        type.size = params[:size]
        type.device = params[:device]
        type.mount_point = params[:mount_point]
        type.availability_zone = params[:availability_zone]
        type.created_at = params[:created_at]
        type.stack_id = params[:stack_id]
        type.volume_type = params[:volume_type]
        type.iops = params[:iops]
        type
      end
    end

    module RaidArrays
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RaidArray.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RdsDbInstance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RdsDbInstance, context: context)
        type = Types::RdsDbInstance.new
        type.rds_db_instance_arn = params[:rds_db_instance_arn]
        type.db_instance_identifier = params[:db_instance_identifier]
        type.db_user = params[:db_user]
        type.db_password = params[:db_password]
        type.region = params[:region]
        type.address = params[:address]
        type.engine = params[:engine]
        type.stack_id = params[:stack_id]
        type.missing_on_rds = params[:missing_on_rds]
        type
      end
    end

    module RdsDbInstances
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RdsDbInstance.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RebootInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RebootInstanceInput, context: context)
        type = Types::RebootInstanceInput.new
        type.instance_id = params[:instance_id]
        type
      end
    end

    module RebootInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RebootInstanceOutput, context: context)
        type = Types::RebootInstanceOutput.new
        type
      end
    end

    module Recipes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Recipes, context: context)
        type = Types::Recipes.new
        type.setup = Strings.build(params[:setup], context: "#{context}[:setup]") unless params[:setup].nil?
        type.configure = Strings.build(params[:configure], context: "#{context}[:configure]") unless params[:configure].nil?
        type.deploy = Strings.build(params[:deploy], context: "#{context}[:deploy]") unless params[:deploy].nil?
        type.undeploy = Strings.build(params[:undeploy], context: "#{context}[:undeploy]") unless params[:undeploy].nil?
        type.shutdown = Strings.build(params[:shutdown], context: "#{context}[:shutdown]") unless params[:shutdown].nil?
        type
      end
    end

    module RegisterEcsClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterEcsClusterInput, context: context)
        type = Types::RegisterEcsClusterInput.new
        type.ecs_cluster_arn = params[:ecs_cluster_arn]
        type.stack_id = params[:stack_id]
        type
      end
    end

    module RegisterEcsClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterEcsClusterOutput, context: context)
        type = Types::RegisterEcsClusterOutput.new
        type.ecs_cluster_arn = params[:ecs_cluster_arn]
        type
      end
    end

    module RegisterElasticIpInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterElasticIpInput, context: context)
        type = Types::RegisterElasticIpInput.new
        type.elastic_ip = params[:elastic_ip]
        type.stack_id = params[:stack_id]
        type
      end
    end

    module RegisterElasticIpOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterElasticIpOutput, context: context)
        type = Types::RegisterElasticIpOutput.new
        type.elastic_ip = params[:elastic_ip]
        type
      end
    end

    module RegisterInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterInstanceInput, context: context)
        type = Types::RegisterInstanceInput.new
        type.stack_id = params[:stack_id]
        type.hostname = params[:hostname]
        type.public_ip = params[:public_ip]
        type.private_ip = params[:private_ip]
        type.rsa_public_key = params[:rsa_public_key]
        type.rsa_public_key_fingerprint = params[:rsa_public_key_fingerprint]
        type.instance_identity = InstanceIdentity.build(params[:instance_identity], context: "#{context}[:instance_identity]") unless params[:instance_identity].nil?
        type
      end
    end

    module RegisterInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterInstanceOutput, context: context)
        type = Types::RegisterInstanceOutput.new
        type.instance_id = params[:instance_id]
        type
      end
    end

    module RegisterRdsDbInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterRdsDbInstanceInput, context: context)
        type = Types::RegisterRdsDbInstanceInput.new
        type.stack_id = params[:stack_id]
        type.rds_db_instance_arn = params[:rds_db_instance_arn]
        type.db_user = params[:db_user]
        type.db_password = params[:db_password]
        type
      end
    end

    module RegisterRdsDbInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterRdsDbInstanceOutput, context: context)
        type = Types::RegisterRdsDbInstanceOutput.new
        type
      end
    end

    module RegisterVolumeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterVolumeInput, context: context)
        type = Types::RegisterVolumeInput.new
        type.ec2_volume_id = params[:ec2_volume_id]
        type.stack_id = params[:stack_id]
        type
      end
    end

    module RegisterVolumeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterVolumeOutput, context: context)
        type = Types::RegisterVolumeOutput.new
        type.volume_id = params[:volume_id]
        type
      end
    end

    module ReportedOs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReportedOs, context: context)
        type = Types::ReportedOs.new
        type.family = params[:family]
        type.name = params[:name]
        type.version = params[:version]
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

    module SelfUserProfile
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SelfUserProfile, context: context)
        type = Types::SelfUserProfile.new
        type.iam_user_arn = params[:iam_user_arn]
        type.name = params[:name]
        type.ssh_username = params[:ssh_username]
        type.ssh_public_key = params[:ssh_public_key]
        type
      end
    end

    module ServiceError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceError, context: context)
        type = Types::ServiceError.new
        type.service_error_id = params[:service_error_id]
        type.stack_id = params[:stack_id]
        type.instance_id = params[:instance_id]
        type.type = params[:type]
        type.message = params[:message]
        type.created_at = params[:created_at]
        type
      end
    end

    module ServiceErrors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServiceError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SetLoadBasedAutoScalingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetLoadBasedAutoScalingInput, context: context)
        type = Types::SetLoadBasedAutoScalingInput.new
        type.layer_id = params[:layer_id]
        type.enable = params[:enable]
        type.up_scaling = AutoScalingThresholds.build(params[:up_scaling], context: "#{context}[:up_scaling]") unless params[:up_scaling].nil?
        type.down_scaling = AutoScalingThresholds.build(params[:down_scaling], context: "#{context}[:down_scaling]") unless params[:down_scaling].nil?
        type
      end
    end

    module SetLoadBasedAutoScalingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetLoadBasedAutoScalingOutput, context: context)
        type = Types::SetLoadBasedAutoScalingOutput.new
        type
      end
    end

    module SetPermissionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetPermissionInput, context: context)
        type = Types::SetPermissionInput.new
        type.stack_id = params[:stack_id]
        type.iam_user_arn = params[:iam_user_arn]
        type.allow_ssh = params[:allow_ssh]
        type.allow_sudo = params[:allow_sudo]
        type.level = params[:level]
        type
      end
    end

    module SetPermissionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetPermissionOutput, context: context)
        type = Types::SetPermissionOutput.new
        type
      end
    end

    module SetTimeBasedAutoScalingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetTimeBasedAutoScalingInput, context: context)
        type = Types::SetTimeBasedAutoScalingInput.new
        type.instance_id = params[:instance_id]
        type.auto_scaling_schedule = WeeklyAutoScalingSchedule.build(params[:auto_scaling_schedule], context: "#{context}[:auto_scaling_schedule]") unless params[:auto_scaling_schedule].nil?
        type
      end
    end

    module SetTimeBasedAutoScalingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetTimeBasedAutoScalingOutput, context: context)
        type = Types::SetTimeBasedAutoScalingOutput.new
        type
      end
    end

    module ShutdownEventConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ShutdownEventConfiguration, context: context)
        type = Types::ShutdownEventConfiguration.new
        type.execution_timeout = params[:execution_timeout]
        type.delay_until_elb_connections_drained = params[:delay_until_elb_connections_drained]
        type
      end
    end

    module Source
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Source, context: context)
        type = Types::Source.new
        type.type = params[:type]
        type.url = params[:url]
        type.username = params[:username]
        type.password = params[:password]
        type.ssh_key = params[:ssh_key]
        type.revision = params[:revision]
        type
      end
    end

    module SslConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SslConfiguration, context: context)
        type = Types::SslConfiguration.new
        type.certificate = params[:certificate]
        type.private_key = params[:private_key]
        type.chain = params[:chain]
        type
      end
    end

    module Stack
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Stack, context: context)
        type = Types::Stack.new
        type.stack_id = params[:stack_id]
        type.name = params[:name]
        type.arn = params[:arn]
        type.region = params[:region]
        type.vpc_id = params[:vpc_id]
        type.attributes = StackAttributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.service_role_arn = params[:service_role_arn]
        type.default_instance_profile_arn = params[:default_instance_profile_arn]
        type.default_os = params[:default_os]
        type.hostname_theme = params[:hostname_theme]
        type.default_availability_zone = params[:default_availability_zone]
        type.default_subnet_id = params[:default_subnet_id]
        type.custom_json = params[:custom_json]
        type.configuration_manager = StackConfigurationManager.build(params[:configuration_manager], context: "#{context}[:configuration_manager]") unless params[:configuration_manager].nil?
        type.chef_configuration = ChefConfiguration.build(params[:chef_configuration], context: "#{context}[:chef_configuration]") unless params[:chef_configuration].nil?
        type.use_custom_cookbooks = params[:use_custom_cookbooks]
        type.use_opsworks_security_groups = params[:use_opsworks_security_groups]
        type.custom_cookbooks_source = Source.build(params[:custom_cookbooks_source], context: "#{context}[:custom_cookbooks_source]") unless params[:custom_cookbooks_source].nil?
        type.default_ssh_key_name = params[:default_ssh_key_name]
        type.created_at = params[:created_at]
        type.default_root_device_type = params[:default_root_device_type]
        type.agent_version = params[:agent_version]
        type
      end
    end

    module StackAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module StackConfigurationManager
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StackConfigurationManager, context: context)
        type = Types::StackConfigurationManager.new
        type.name = params[:name]
        type.version = params[:version]
        type
      end
    end

    module StackSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StackSummary, context: context)
        type = Types::StackSummary.new
        type.stack_id = params[:stack_id]
        type.name = params[:name]
        type.arn = params[:arn]
        type.layers_count = params[:layers_count]
        type.apps_count = params[:apps_count]
        type.instances_count = InstancesCount.build(params[:instances_count], context: "#{context}[:instances_count]") unless params[:instances_count].nil?
        type
      end
    end

    module Stacks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Stack.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StartInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartInstanceInput, context: context)
        type = Types::StartInstanceInput.new
        type.instance_id = params[:instance_id]
        type
      end
    end

    module StartInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartInstanceOutput, context: context)
        type = Types::StartInstanceOutput.new
        type
      end
    end

    module StartStackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartStackInput, context: context)
        type = Types::StartStackInput.new
        type.stack_id = params[:stack_id]
        type
      end
    end

    module StartStackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartStackOutput, context: context)
        type = Types::StartStackOutput.new
        type
      end
    end

    module StopInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopInstanceInput, context: context)
        type = Types::StopInstanceInput.new
        type.instance_id = params[:instance_id]
        type.force = params[:force]
        type
      end
    end

    module StopInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopInstanceOutput, context: context)
        type = Types::StopInstanceOutput.new
        type
      end
    end

    module StopStackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopStackInput, context: context)
        type = Types::StopStackInput.new
        type.stack_id = params[:stack_id]
        type
      end
    end

    module StopStackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopStackOutput, context: context)
        type = Types::StopStackOutput.new
        type
      end
    end

    module Strings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
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
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TemporaryCredential
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TemporaryCredential, context: context)
        type = Types::TemporaryCredential.new
        type.username = params[:username]
        type.password = params[:password]
        type.valid_for_in_minutes = params[:valid_for_in_minutes]
        type.instance_id = params[:instance_id]
        type
      end
    end

    module TimeBasedAutoScalingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimeBasedAutoScalingConfiguration, context: context)
        type = Types::TimeBasedAutoScalingConfiguration.new
        type.instance_id = params[:instance_id]
        type.auto_scaling_schedule = WeeklyAutoScalingSchedule.build(params[:auto_scaling_schedule], context: "#{context}[:auto_scaling_schedule]") unless params[:auto_scaling_schedule].nil?
        type
      end
    end

    module TimeBasedAutoScalingConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TimeBasedAutoScalingConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UnassignInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnassignInstanceInput, context: context)
        type = Types::UnassignInstanceInput.new
        type.instance_id = params[:instance_id]
        type
      end
    end

    module UnassignInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnassignInstanceOutput, context: context)
        type = Types::UnassignInstanceOutput.new
        type
      end
    end

    module UnassignVolumeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnassignVolumeInput, context: context)
        type = Types::UnassignVolumeInput.new
        type.volume_id = params[:volume_id]
        type
      end
    end

    module UnassignVolumeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnassignVolumeOutput, context: context)
        type = Types::UnassignVolumeOutput.new
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

    module UpdateAppInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAppInput, context: context)
        type = Types::UpdateAppInput.new
        type.app_id = params[:app_id]
        type.name = params[:name]
        type.description = params[:description]
        type.data_sources = DataSources.build(params[:data_sources], context: "#{context}[:data_sources]") unless params[:data_sources].nil?
        type.type = params[:type]
        type.app_source = Source.build(params[:app_source], context: "#{context}[:app_source]") unless params[:app_source].nil?
        type.domains = Strings.build(params[:domains], context: "#{context}[:domains]") unless params[:domains].nil?
        type.enable_ssl = params[:enable_ssl]
        type.ssl_configuration = SslConfiguration.build(params[:ssl_configuration], context: "#{context}[:ssl_configuration]") unless params[:ssl_configuration].nil?
        type.attributes = AppAttributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.environment = EnvironmentVariables.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type
      end
    end

    module UpdateAppOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAppOutput, context: context)
        type = Types::UpdateAppOutput.new
        type
      end
    end

    module UpdateElasticIpInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateElasticIpInput, context: context)
        type = Types::UpdateElasticIpInput.new
        type.elastic_ip = params[:elastic_ip]
        type.name = params[:name]
        type
      end
    end

    module UpdateElasticIpOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateElasticIpOutput, context: context)
        type = Types::UpdateElasticIpOutput.new
        type
      end
    end

    module UpdateInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateInstanceInput, context: context)
        type = Types::UpdateInstanceInput.new
        type.instance_id = params[:instance_id]
        type.layer_ids = Strings.build(params[:layer_ids], context: "#{context}[:layer_ids]") unless params[:layer_ids].nil?
        type.instance_type = params[:instance_type]
        type.auto_scaling_type = params[:auto_scaling_type]
        type.hostname = params[:hostname]
        type.os = params[:os]
        type.ami_id = params[:ami_id]
        type.ssh_key_name = params[:ssh_key_name]
        type.architecture = params[:architecture]
        type.install_updates_on_boot = params[:install_updates_on_boot]
        type.ebs_optimized = params[:ebs_optimized]
        type.agent_version = params[:agent_version]
        type
      end
    end

    module UpdateInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateInstanceOutput, context: context)
        type = Types::UpdateInstanceOutput.new
        type
      end
    end

    module UpdateLayerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLayerInput, context: context)
        type = Types::UpdateLayerInput.new
        type.layer_id = params[:layer_id]
        type.name = params[:name]
        type.shortname = params[:shortname]
        type.attributes = LayerAttributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.cloud_watch_logs_configuration = CloudWatchLogsConfiguration.build(params[:cloud_watch_logs_configuration], context: "#{context}[:cloud_watch_logs_configuration]") unless params[:cloud_watch_logs_configuration].nil?
        type.custom_instance_profile_arn = params[:custom_instance_profile_arn]
        type.custom_json = params[:custom_json]
        type.custom_security_group_ids = Strings.build(params[:custom_security_group_ids], context: "#{context}[:custom_security_group_ids]") unless params[:custom_security_group_ids].nil?
        type.packages = Strings.build(params[:packages], context: "#{context}[:packages]") unless params[:packages].nil?
        type.volume_configurations = VolumeConfigurations.build(params[:volume_configurations], context: "#{context}[:volume_configurations]") unless params[:volume_configurations].nil?
        type.enable_auto_healing = params[:enable_auto_healing]
        type.auto_assign_elastic_ips = params[:auto_assign_elastic_ips]
        type.auto_assign_public_ips = params[:auto_assign_public_ips]
        type.custom_recipes = Recipes.build(params[:custom_recipes], context: "#{context}[:custom_recipes]") unless params[:custom_recipes].nil?
        type.install_updates_on_boot = params[:install_updates_on_boot]
        type.use_ebs_optimized_instances = params[:use_ebs_optimized_instances]
        type.lifecycle_event_configuration = LifecycleEventConfiguration.build(params[:lifecycle_event_configuration], context: "#{context}[:lifecycle_event_configuration]") unless params[:lifecycle_event_configuration].nil?
        type
      end
    end

    module UpdateLayerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLayerOutput, context: context)
        type = Types::UpdateLayerOutput.new
        type
      end
    end

    module UpdateMyUserProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMyUserProfileInput, context: context)
        type = Types::UpdateMyUserProfileInput.new
        type.ssh_public_key = params[:ssh_public_key]
        type
      end
    end

    module UpdateMyUserProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMyUserProfileOutput, context: context)
        type = Types::UpdateMyUserProfileOutput.new
        type
      end
    end

    module UpdateRdsDbInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRdsDbInstanceInput, context: context)
        type = Types::UpdateRdsDbInstanceInput.new
        type.rds_db_instance_arn = params[:rds_db_instance_arn]
        type.db_user = params[:db_user]
        type.db_password = params[:db_password]
        type
      end
    end

    module UpdateRdsDbInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRdsDbInstanceOutput, context: context)
        type = Types::UpdateRdsDbInstanceOutput.new
        type
      end
    end

    module UpdateStackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStackInput, context: context)
        type = Types::UpdateStackInput.new
        type.stack_id = params[:stack_id]
        type.name = params[:name]
        type.attributes = StackAttributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.service_role_arn = params[:service_role_arn]
        type.default_instance_profile_arn = params[:default_instance_profile_arn]
        type.default_os = params[:default_os]
        type.hostname_theme = params[:hostname_theme]
        type.default_availability_zone = params[:default_availability_zone]
        type.default_subnet_id = params[:default_subnet_id]
        type.custom_json = params[:custom_json]
        type.configuration_manager = StackConfigurationManager.build(params[:configuration_manager], context: "#{context}[:configuration_manager]") unless params[:configuration_manager].nil?
        type.chef_configuration = ChefConfiguration.build(params[:chef_configuration], context: "#{context}[:chef_configuration]") unless params[:chef_configuration].nil?
        type.use_custom_cookbooks = params[:use_custom_cookbooks]
        type.custom_cookbooks_source = Source.build(params[:custom_cookbooks_source], context: "#{context}[:custom_cookbooks_source]") unless params[:custom_cookbooks_source].nil?
        type.default_ssh_key_name = params[:default_ssh_key_name]
        type.default_root_device_type = params[:default_root_device_type]
        type.use_opsworks_security_groups = params[:use_opsworks_security_groups]
        type.agent_version = params[:agent_version]
        type
      end
    end

    module UpdateStackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStackOutput, context: context)
        type = Types::UpdateStackOutput.new
        type
      end
    end

    module UpdateUserProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserProfileInput, context: context)
        type = Types::UpdateUserProfileInput.new
        type.iam_user_arn = params[:iam_user_arn]
        type.ssh_username = params[:ssh_username]
        type.ssh_public_key = params[:ssh_public_key]
        type.allow_self_management = params[:allow_self_management]
        type
      end
    end

    module UpdateUserProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserProfileOutput, context: context)
        type = Types::UpdateUserProfileOutput.new
        type
      end
    end

    module UpdateVolumeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVolumeInput, context: context)
        type = Types::UpdateVolumeInput.new
        type.volume_id = params[:volume_id]
        type.name = params[:name]
        type.mount_point = params[:mount_point]
        type
      end
    end

    module UpdateVolumeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVolumeOutput, context: context)
        type = Types::UpdateVolumeOutput.new
        type
      end
    end

    module UserProfile
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserProfile, context: context)
        type = Types::UserProfile.new
        type.iam_user_arn = params[:iam_user_arn]
        type.name = params[:name]
        type.ssh_username = params[:ssh_username]
        type.ssh_public_key = params[:ssh_public_key]
        type.allow_self_management = params[:allow_self_management]
        type
      end
    end

    module UserProfiles
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UserProfile.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

    module Volume
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Volume, context: context)
        type = Types::Volume.new
        type.volume_id = params[:volume_id]
        type.ec2_volume_id = params[:ec2_volume_id]
        type.name = params[:name]
        type.raid_array_id = params[:raid_array_id]
        type.instance_id = params[:instance_id]
        type.status = params[:status]
        type.size = params[:size]
        type.device = params[:device]
        type.mount_point = params[:mount_point]
        type.region = params[:region]
        type.availability_zone = params[:availability_zone]
        type.volume_type = params[:volume_type]
        type.iops = params[:iops]
        type.encrypted = params[:encrypted]
        type
      end
    end

    module VolumeConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VolumeConfiguration, context: context)
        type = Types::VolumeConfiguration.new
        type.mount_point = params[:mount_point]
        type.raid_level = params[:raid_level]
        type.number_of_disks = params[:number_of_disks]
        type.size = params[:size]
        type.volume_type = params[:volume_type]
        type.iops = params[:iops]
        type.encrypted = params[:encrypted]
        type
      end
    end

    module VolumeConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VolumeConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module WeeklyAutoScalingSchedule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WeeklyAutoScalingSchedule, context: context)
        type = Types::WeeklyAutoScalingSchedule.new
        type.monday = DailyAutoScalingSchedule.build(params[:monday], context: "#{context}[:monday]") unless params[:monday].nil?
        type.tuesday = DailyAutoScalingSchedule.build(params[:tuesday], context: "#{context}[:tuesday]") unless params[:tuesday].nil?
        type.wednesday = DailyAutoScalingSchedule.build(params[:wednesday], context: "#{context}[:wednesday]") unless params[:wednesday].nil?
        type.thursday = DailyAutoScalingSchedule.build(params[:thursday], context: "#{context}[:thursday]") unless params[:thursday].nil?
        type.friday = DailyAutoScalingSchedule.build(params[:friday], context: "#{context}[:friday]") unless params[:friday].nil?
        type.saturday = DailyAutoScalingSchedule.build(params[:saturday], context: "#{context}[:saturday]") unless params[:saturday].nil?
        type.sunday = DailyAutoScalingSchedule.build(params[:sunday], context: "#{context}[:sunday]") unless params[:sunday].nil?
        type
      end
    end

  end
end
