# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::OpsWorks
  module Validators

    class AgentVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AgentVersion, context: context)
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        StackConfigurationManager.validate!(input[:configuration_manager], context: "#{context}[:configuration_manager]") unless input[:configuration_manager].nil?
      end
    end

    class AgentVersions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AgentVersion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class App
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::App, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:shortname], ::String, context: "#{context}[:shortname]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        DataSources.validate!(input[:data_sources], context: "#{context}[:data_sources]") unless input[:data_sources].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Source.validate!(input[:app_source], context: "#{context}[:app_source]") unless input[:app_source].nil?
        Strings.validate!(input[:domains], context: "#{context}[:domains]") unless input[:domains].nil?
        Hearth::Validator.validate!(input[:enable_ssl], ::TrueClass, ::FalseClass, context: "#{context}[:enable_ssl]")
        SslConfiguration.validate!(input[:ssl_configuration], context: "#{context}[:ssl_configuration]") unless input[:ssl_configuration].nil?
        AppAttributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:created_at], ::String, context: "#{context}[:created_at]")
        EnvironmentVariables.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
      end
    end

    class AppAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class Apps
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          App.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssignInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssignInstanceInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Strings.validate!(input[:layer_ids], context: "#{context}[:layer_ids]") unless input[:layer_ids].nil?
      end
    end

    class AssignInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssignInstanceOutput, context: context)
      end
    end

    class AssignVolumeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssignVolumeInput, context: context)
        Hearth::Validator.validate!(input[:volume_id], ::String, context: "#{context}[:volume_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class AssignVolumeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssignVolumeOutput, context: context)
      end
    end

    class AssociateElasticIpInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateElasticIpInput, context: context)
        Hearth::Validator.validate!(input[:elastic_ip], ::String, context: "#{context}[:elastic_ip]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class AssociateElasticIpOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateElasticIpOutput, context: context)
      end
    end

    class AttachElasticLoadBalancerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachElasticLoadBalancerInput, context: context)
        Hearth::Validator.validate!(input[:elastic_load_balancer_name], ::String, context: "#{context}[:elastic_load_balancer_name]")
        Hearth::Validator.validate!(input[:layer_id], ::String, context: "#{context}[:layer_id]")
      end
    end

    class AttachElasticLoadBalancerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachElasticLoadBalancerOutput, context: context)
      end
    end

    class AutoScalingThresholds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoScalingThresholds, context: context)
        Hearth::Validator.validate!(input[:instance_count], ::Integer, context: "#{context}[:instance_count]")
        Hearth::Validator.validate!(input[:thresholds_wait_time], ::Integer, context: "#{context}[:thresholds_wait_time]")
        Hearth::Validator.validate!(input[:ignore_metrics_time], ::Integer, context: "#{context}[:ignore_metrics_time]")
        Hearth::Validator.validate!(input[:cpu_threshold], ::Float, context: "#{context}[:cpu_threshold]")
        Hearth::Validator.validate!(input[:memory_threshold], ::Float, context: "#{context}[:memory_threshold]")
        Hearth::Validator.validate!(input[:load_threshold], ::Float, context: "#{context}[:load_threshold]")
        Strings.validate!(input[:alarms], context: "#{context}[:alarms]") unless input[:alarms].nil?
      end
    end

    class BlockDeviceMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BlockDeviceMapping, context: context)
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
        Hearth::Validator.validate!(input[:no_device], ::String, context: "#{context}[:no_device]")
        Hearth::Validator.validate!(input[:virtual_name], ::String, context: "#{context}[:virtual_name]")
        EbsBlockDevice.validate!(input[:ebs], context: "#{context}[:ebs]") unless input[:ebs].nil?
      end
    end

    class BlockDeviceMappings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BlockDeviceMapping.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ChefConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChefConfiguration, context: context)
        Hearth::Validator.validate!(input[:manage_berkshelf], ::TrueClass, ::FalseClass, context: "#{context}[:manage_berkshelf]")
        Hearth::Validator.validate!(input[:berkshelf_version], ::String, context: "#{context}[:berkshelf_version]")
      end
    end

    class CloneStackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloneStackInput, context: context)
        Hearth::Validator.validate!(input[:source_stack_id], ::String, context: "#{context}[:source_stack_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        StackAttributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:service_role_arn], ::String, context: "#{context}[:service_role_arn]")
        Hearth::Validator.validate!(input[:default_instance_profile_arn], ::String, context: "#{context}[:default_instance_profile_arn]")
        Hearth::Validator.validate!(input[:default_os], ::String, context: "#{context}[:default_os]")
        Hearth::Validator.validate!(input[:hostname_theme], ::String, context: "#{context}[:hostname_theme]")
        Hearth::Validator.validate!(input[:default_availability_zone], ::String, context: "#{context}[:default_availability_zone]")
        Hearth::Validator.validate!(input[:default_subnet_id], ::String, context: "#{context}[:default_subnet_id]")
        Hearth::Validator.validate!(input[:custom_json], ::String, context: "#{context}[:custom_json]")
        StackConfigurationManager.validate!(input[:configuration_manager], context: "#{context}[:configuration_manager]") unless input[:configuration_manager].nil?
        ChefConfiguration.validate!(input[:chef_configuration], context: "#{context}[:chef_configuration]") unless input[:chef_configuration].nil?
        Hearth::Validator.validate!(input[:use_custom_cookbooks], ::TrueClass, ::FalseClass, context: "#{context}[:use_custom_cookbooks]")
        Hearth::Validator.validate!(input[:use_opsworks_security_groups], ::TrueClass, ::FalseClass, context: "#{context}[:use_opsworks_security_groups]")
        Source.validate!(input[:custom_cookbooks_source], context: "#{context}[:custom_cookbooks_source]") unless input[:custom_cookbooks_source].nil?
        Hearth::Validator.validate!(input[:default_ssh_key_name], ::String, context: "#{context}[:default_ssh_key_name]")
        Hearth::Validator.validate!(input[:clone_permissions], ::TrueClass, ::FalseClass, context: "#{context}[:clone_permissions]")
        Strings.validate!(input[:clone_app_ids], context: "#{context}[:clone_app_ids]") unless input[:clone_app_ids].nil?
        Hearth::Validator.validate!(input[:default_root_device_type], ::String, context: "#{context}[:default_root_device_type]")
        Hearth::Validator.validate!(input[:agent_version], ::String, context: "#{context}[:agent_version]")
      end
    end

    class CloneStackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloneStackOutput, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
      end
    end

    class CloudWatchLogsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchLogsConfiguration, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        CloudWatchLogsLogStreams.validate!(input[:log_streams], context: "#{context}[:log_streams]") unless input[:log_streams].nil?
      end
    end

    class CloudWatchLogsLogStream
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchLogsLogStream, context: context)
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
        Hearth::Validator.validate!(input[:datetime_format], ::String, context: "#{context}[:datetime_format]")
        Hearth::Validator.validate!(input[:time_zone], ::String, context: "#{context}[:time_zone]")
        Hearth::Validator.validate!(input[:file], ::String, context: "#{context}[:file]")
        Hearth::Validator.validate!(input[:file_fingerprint_lines], ::String, context: "#{context}[:file_fingerprint_lines]")
        Hearth::Validator.validate!(input[:multi_line_start_pattern], ::String, context: "#{context}[:multi_line_start_pattern]")
        Hearth::Validator.validate!(input[:initial_position], ::String, context: "#{context}[:initial_position]")
        Hearth::Validator.validate!(input[:encoding], ::String, context: "#{context}[:encoding]")
        Hearth::Validator.validate!(input[:buffer_duration], ::Integer, context: "#{context}[:buffer_duration]")
        Hearth::Validator.validate!(input[:batch_count], ::Integer, context: "#{context}[:batch_count]")
        Hearth::Validator.validate!(input[:batch_size], ::Integer, context: "#{context}[:batch_size]")
      end
    end

    class CloudWatchLogsLogStreams
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CloudWatchLogsLogStream.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Command
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Command, context: context)
        Hearth::Validator.validate!(input[:command_id], ::String, context: "#{context}[:command_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:created_at], ::String, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:acknowledged_at], ::String, context: "#{context}[:acknowledged_at]")
        Hearth::Validator.validate!(input[:completed_at], ::String, context: "#{context}[:completed_at]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:exit_code], ::Integer, context: "#{context}[:exit_code]")
        Hearth::Validator.validate!(input[:log_url], ::String, context: "#{context}[:log_url]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class Commands
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Command.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateAppInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAppInput, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:shortname], ::String, context: "#{context}[:shortname]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        DataSources.validate!(input[:data_sources], context: "#{context}[:data_sources]") unless input[:data_sources].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Source.validate!(input[:app_source], context: "#{context}[:app_source]") unless input[:app_source].nil?
        Strings.validate!(input[:domains], context: "#{context}[:domains]") unless input[:domains].nil?
        Hearth::Validator.validate!(input[:enable_ssl], ::TrueClass, ::FalseClass, context: "#{context}[:enable_ssl]")
        SslConfiguration.validate!(input[:ssl_configuration], context: "#{context}[:ssl_configuration]") unless input[:ssl_configuration].nil?
        AppAttributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        EnvironmentVariables.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
      end
    end

    class CreateAppOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAppOutput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
      end
    end

    class CreateDeploymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeploymentInput, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Strings.validate!(input[:instance_ids], context: "#{context}[:instance_ids]") unless input[:instance_ids].nil?
        Strings.validate!(input[:layer_ids], context: "#{context}[:layer_ids]") unless input[:layer_ids].nil?
        DeploymentCommand.validate!(input[:command], context: "#{context}[:command]") unless input[:command].nil?
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Hearth::Validator.validate!(input[:custom_json], ::String, context: "#{context}[:custom_json]")
      end
    end

    class CreateDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeploymentOutput, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
      end
    end

    class CreateInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInstanceInput, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Strings.validate!(input[:layer_ids], context: "#{context}[:layer_ids]") unless input[:layer_ids].nil?
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:auto_scaling_type], ::String, context: "#{context}[:auto_scaling_type]")
        Hearth::Validator.validate!(input[:hostname], ::String, context: "#{context}[:hostname]")
        Hearth::Validator.validate!(input[:os], ::String, context: "#{context}[:os]")
        Hearth::Validator.validate!(input[:ami_id], ::String, context: "#{context}[:ami_id]")
        Hearth::Validator.validate!(input[:ssh_key_name], ::String, context: "#{context}[:ssh_key_name]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:virtualization_type], ::String, context: "#{context}[:virtualization_type]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:architecture], ::String, context: "#{context}[:architecture]")
        Hearth::Validator.validate!(input[:root_device_type], ::String, context: "#{context}[:root_device_type]")
        BlockDeviceMappings.validate!(input[:block_device_mappings], context: "#{context}[:block_device_mappings]") unless input[:block_device_mappings].nil?
        Hearth::Validator.validate!(input[:install_updates_on_boot], ::TrueClass, ::FalseClass, context: "#{context}[:install_updates_on_boot]")
        Hearth::Validator.validate!(input[:ebs_optimized], ::TrueClass, ::FalseClass, context: "#{context}[:ebs_optimized]")
        Hearth::Validator.validate!(input[:agent_version], ::String, context: "#{context}[:agent_version]")
        Hearth::Validator.validate!(input[:tenancy], ::String, context: "#{context}[:tenancy]")
      end
    end

    class CreateInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInstanceOutput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class CreateLayerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLayerInput, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:shortname], ::String, context: "#{context}[:shortname]")
        LayerAttributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        CloudWatchLogsConfiguration.validate!(input[:cloud_watch_logs_configuration], context: "#{context}[:cloud_watch_logs_configuration]") unless input[:cloud_watch_logs_configuration].nil?
        Hearth::Validator.validate!(input[:custom_instance_profile_arn], ::String, context: "#{context}[:custom_instance_profile_arn]")
        Hearth::Validator.validate!(input[:custom_json], ::String, context: "#{context}[:custom_json]")
        Strings.validate!(input[:custom_security_group_ids], context: "#{context}[:custom_security_group_ids]") unless input[:custom_security_group_ids].nil?
        Strings.validate!(input[:packages], context: "#{context}[:packages]") unless input[:packages].nil?
        VolumeConfigurations.validate!(input[:volume_configurations], context: "#{context}[:volume_configurations]") unless input[:volume_configurations].nil?
        Hearth::Validator.validate!(input[:enable_auto_healing], ::TrueClass, ::FalseClass, context: "#{context}[:enable_auto_healing]")
        Hearth::Validator.validate!(input[:auto_assign_elastic_ips], ::TrueClass, ::FalseClass, context: "#{context}[:auto_assign_elastic_ips]")
        Hearth::Validator.validate!(input[:auto_assign_public_ips], ::TrueClass, ::FalseClass, context: "#{context}[:auto_assign_public_ips]")
        Recipes.validate!(input[:custom_recipes], context: "#{context}[:custom_recipes]") unless input[:custom_recipes].nil?
        Hearth::Validator.validate!(input[:install_updates_on_boot], ::TrueClass, ::FalseClass, context: "#{context}[:install_updates_on_boot]")
        Hearth::Validator.validate!(input[:use_ebs_optimized_instances], ::TrueClass, ::FalseClass, context: "#{context}[:use_ebs_optimized_instances]")
        LifecycleEventConfiguration.validate!(input[:lifecycle_event_configuration], context: "#{context}[:lifecycle_event_configuration]") unless input[:lifecycle_event_configuration].nil?
      end
    end

    class CreateLayerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLayerOutput, context: context)
        Hearth::Validator.validate!(input[:layer_id], ::String, context: "#{context}[:layer_id]")
      end
    end

    class CreateStackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStackInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        StackAttributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:service_role_arn], ::String, context: "#{context}[:service_role_arn]")
        Hearth::Validator.validate!(input[:default_instance_profile_arn], ::String, context: "#{context}[:default_instance_profile_arn]")
        Hearth::Validator.validate!(input[:default_os], ::String, context: "#{context}[:default_os]")
        Hearth::Validator.validate!(input[:hostname_theme], ::String, context: "#{context}[:hostname_theme]")
        Hearth::Validator.validate!(input[:default_availability_zone], ::String, context: "#{context}[:default_availability_zone]")
        Hearth::Validator.validate!(input[:default_subnet_id], ::String, context: "#{context}[:default_subnet_id]")
        Hearth::Validator.validate!(input[:custom_json], ::String, context: "#{context}[:custom_json]")
        StackConfigurationManager.validate!(input[:configuration_manager], context: "#{context}[:configuration_manager]") unless input[:configuration_manager].nil?
        ChefConfiguration.validate!(input[:chef_configuration], context: "#{context}[:chef_configuration]") unless input[:chef_configuration].nil?
        Hearth::Validator.validate!(input[:use_custom_cookbooks], ::TrueClass, ::FalseClass, context: "#{context}[:use_custom_cookbooks]")
        Hearth::Validator.validate!(input[:use_opsworks_security_groups], ::TrueClass, ::FalseClass, context: "#{context}[:use_opsworks_security_groups]")
        Source.validate!(input[:custom_cookbooks_source], context: "#{context}[:custom_cookbooks_source]") unless input[:custom_cookbooks_source].nil?
        Hearth::Validator.validate!(input[:default_ssh_key_name], ::String, context: "#{context}[:default_ssh_key_name]")
        Hearth::Validator.validate!(input[:default_root_device_type], ::String, context: "#{context}[:default_root_device_type]")
        Hearth::Validator.validate!(input[:agent_version], ::String, context: "#{context}[:agent_version]")
      end
    end

    class CreateStackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStackOutput, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
      end
    end

    class CreateUserProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserProfileInput, context: context)
        Hearth::Validator.validate!(input[:iam_user_arn], ::String, context: "#{context}[:iam_user_arn]")
        Hearth::Validator.validate!(input[:ssh_username], ::String, context: "#{context}[:ssh_username]")
        Hearth::Validator.validate!(input[:ssh_public_key], ::String, context: "#{context}[:ssh_public_key]")
        Hearth::Validator.validate!(input[:allow_self_management], ::TrueClass, ::FalseClass, context: "#{context}[:allow_self_management]")
      end
    end

    class CreateUserProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserProfileOutput, context: context)
        Hearth::Validator.validate!(input[:iam_user_arn], ::String, context: "#{context}[:iam_user_arn]")
      end
    end

    class DailyAutoScalingSchedule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class DataSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataSource, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
      end
    end

    class DataSources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DataSource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteAppInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
      end
    end

    class DeleteAppOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppOutput, context: context)
      end
    end

    class DeleteInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInstanceInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:delete_elastic_ip], ::TrueClass, ::FalseClass, context: "#{context}[:delete_elastic_ip]")
        Hearth::Validator.validate!(input[:delete_volumes], ::TrueClass, ::FalseClass, context: "#{context}[:delete_volumes]")
      end
    end

    class DeleteInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInstanceOutput, context: context)
      end
    end

    class DeleteLayerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLayerInput, context: context)
        Hearth::Validator.validate!(input[:layer_id], ::String, context: "#{context}[:layer_id]")
      end
    end

    class DeleteLayerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLayerOutput, context: context)
      end
    end

    class DeleteStackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStackInput, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
      end
    end

    class DeleteStackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStackOutput, context: context)
      end
    end

    class DeleteUserProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserProfileInput, context: context)
        Hearth::Validator.validate!(input[:iam_user_arn], ::String, context: "#{context}[:iam_user_arn]")
      end
    end

    class DeleteUserProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserProfileOutput, context: context)
      end
    end

    class Deployment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Deployment, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:created_at], ::String, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:completed_at], ::String, context: "#{context}[:completed_at]")
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:iam_user_arn], ::String, context: "#{context}[:iam_user_arn]")
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        DeploymentCommand.validate!(input[:command], context: "#{context}[:command]") unless input[:command].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:custom_json], ::String, context: "#{context}[:custom_json]")
        Strings.validate!(input[:instance_ids], context: "#{context}[:instance_ids]") unless input[:instance_ids].nil?
      end
    end

    class DeploymentCommand
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentCommand, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        DeploymentCommandArgs.validate!(input[:args], context: "#{context}[:args]") unless input[:args].nil?
      end
    end

    class DeploymentCommandArgs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Strings.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
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

    class DeregisterEcsClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterEcsClusterInput, context: context)
        Hearth::Validator.validate!(input[:ecs_cluster_arn], ::String, context: "#{context}[:ecs_cluster_arn]")
      end
    end

    class DeregisterEcsClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterEcsClusterOutput, context: context)
      end
    end

    class DeregisterElasticIpInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterElasticIpInput, context: context)
        Hearth::Validator.validate!(input[:elastic_ip], ::String, context: "#{context}[:elastic_ip]")
      end
    end

    class DeregisterElasticIpOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterElasticIpOutput, context: context)
      end
    end

    class DeregisterInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterInstanceInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class DeregisterInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterInstanceOutput, context: context)
      end
    end

    class DeregisterRdsDbInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterRdsDbInstanceInput, context: context)
        Hearth::Validator.validate!(input[:rds_db_instance_arn], ::String, context: "#{context}[:rds_db_instance_arn]")
      end
    end

    class DeregisterRdsDbInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterRdsDbInstanceOutput, context: context)
      end
    end

    class DeregisterVolumeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterVolumeInput, context: context)
        Hearth::Validator.validate!(input[:volume_id], ::String, context: "#{context}[:volume_id]")
      end
    end

    class DeregisterVolumeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterVolumeOutput, context: context)
      end
    end

    class DescribeAgentVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAgentVersionsInput, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        StackConfigurationManager.validate!(input[:configuration_manager], context: "#{context}[:configuration_manager]") unless input[:configuration_manager].nil?
      end
    end

    class DescribeAgentVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAgentVersionsOutput, context: context)
        AgentVersions.validate!(input[:agent_versions], context: "#{context}[:agent_versions]") unless input[:agent_versions].nil?
      end
    end

    class DescribeAppsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAppsInput, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Strings.validate!(input[:app_ids], context: "#{context}[:app_ids]") unless input[:app_ids].nil?
      end
    end

    class DescribeAppsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAppsOutput, context: context)
        Apps.validate!(input[:apps], context: "#{context}[:apps]") unless input[:apps].nil?
      end
    end

    class DescribeCommandsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCommandsInput, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Strings.validate!(input[:command_ids], context: "#{context}[:command_ids]") unless input[:command_ids].nil?
      end
    end

    class DescribeCommandsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCommandsOutput, context: context)
        Commands.validate!(input[:commands], context: "#{context}[:commands]") unless input[:commands].nil?
      end
    end

    class DescribeDeploymentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDeploymentsInput, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Strings.validate!(input[:deployment_ids], context: "#{context}[:deployment_ids]") unless input[:deployment_ids].nil?
      end
    end

    class DescribeDeploymentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDeploymentsOutput, context: context)
        Deployments.validate!(input[:deployments], context: "#{context}[:deployments]") unless input[:deployments].nil?
      end
    end

    class DescribeEcsClustersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEcsClustersInput, context: context)
        Strings.validate!(input[:ecs_cluster_arns], context: "#{context}[:ecs_cluster_arns]") unless input[:ecs_cluster_arns].nil?
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeEcsClustersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEcsClustersOutput, context: context)
        EcsClusters.validate!(input[:ecs_clusters], context: "#{context}[:ecs_clusters]") unless input[:ecs_clusters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeElasticIpsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeElasticIpsInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Strings.validate!(input[:ips], context: "#{context}[:ips]") unless input[:ips].nil?
      end
    end

    class DescribeElasticIpsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeElasticIpsOutput, context: context)
        ElasticIps.validate!(input[:elastic_ips], context: "#{context}[:elastic_ips]") unless input[:elastic_ips].nil?
      end
    end

    class DescribeElasticLoadBalancersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeElasticLoadBalancersInput, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Strings.validate!(input[:layer_ids], context: "#{context}[:layer_ids]") unless input[:layer_ids].nil?
      end
    end

    class DescribeElasticLoadBalancersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeElasticLoadBalancersOutput, context: context)
        ElasticLoadBalancers.validate!(input[:elastic_load_balancers], context: "#{context}[:elastic_load_balancers]") unless input[:elastic_load_balancers].nil?
      end
    end

    class DescribeInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstancesInput, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:layer_id], ::String, context: "#{context}[:layer_id]")
        Strings.validate!(input[:instance_ids], context: "#{context}[:instance_ids]") unless input[:instance_ids].nil?
      end
    end

    class DescribeInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstancesOutput, context: context)
        Instances.validate!(input[:instances], context: "#{context}[:instances]") unless input[:instances].nil?
      end
    end

    class DescribeLayersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLayersInput, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Strings.validate!(input[:layer_ids], context: "#{context}[:layer_ids]") unless input[:layer_ids].nil?
      end
    end

    class DescribeLayersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLayersOutput, context: context)
        Layers.validate!(input[:layers], context: "#{context}[:layers]") unless input[:layers].nil?
      end
    end

    class DescribeLoadBasedAutoScalingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLoadBasedAutoScalingInput, context: context)
        Strings.validate!(input[:layer_ids], context: "#{context}[:layer_ids]") unless input[:layer_ids].nil?
      end
    end

    class DescribeLoadBasedAutoScalingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLoadBasedAutoScalingOutput, context: context)
        LoadBasedAutoScalingConfigurations.validate!(input[:load_based_auto_scaling_configurations], context: "#{context}[:load_based_auto_scaling_configurations]") unless input[:load_based_auto_scaling_configurations].nil?
      end
    end

    class DescribeMyUserProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMyUserProfileInput, context: context)
      end
    end

    class DescribeMyUserProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMyUserProfileOutput, context: context)
        SelfUserProfile.validate!(input[:user_profile], context: "#{context}[:user_profile]") unless input[:user_profile].nil?
      end
    end

    class DescribeOperatingSystemsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOperatingSystemsInput, context: context)
      end
    end

    class DescribeOperatingSystemsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOperatingSystemsOutput, context: context)
        OperatingSystems.validate!(input[:operating_systems], context: "#{context}[:operating_systems]") unless input[:operating_systems].nil?
      end
    end

    class DescribePermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePermissionsInput, context: context)
        Hearth::Validator.validate!(input[:iam_user_arn], ::String, context: "#{context}[:iam_user_arn]")
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
      end
    end

    class DescribePermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePermissionsOutput, context: context)
        Permissions.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
      end
    end

    class DescribeRaidArraysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRaidArraysInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Strings.validate!(input[:raid_array_ids], context: "#{context}[:raid_array_ids]") unless input[:raid_array_ids].nil?
      end
    end

    class DescribeRaidArraysOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRaidArraysOutput, context: context)
        RaidArrays.validate!(input[:raid_arrays], context: "#{context}[:raid_arrays]") unless input[:raid_arrays].nil?
      end
    end

    class DescribeRdsDbInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRdsDbInstancesInput, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Strings.validate!(input[:rds_db_instance_arns], context: "#{context}[:rds_db_instance_arns]") unless input[:rds_db_instance_arns].nil?
      end
    end

    class DescribeRdsDbInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRdsDbInstancesOutput, context: context)
        RdsDbInstances.validate!(input[:rds_db_instances], context: "#{context}[:rds_db_instances]") unless input[:rds_db_instances].nil?
      end
    end

    class DescribeServiceErrorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeServiceErrorsInput, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Strings.validate!(input[:service_error_ids], context: "#{context}[:service_error_ids]") unless input[:service_error_ids].nil?
      end
    end

    class DescribeServiceErrorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeServiceErrorsOutput, context: context)
        ServiceErrors.validate!(input[:service_errors], context: "#{context}[:service_errors]") unless input[:service_errors].nil?
      end
    end

    class DescribeStackProvisioningParametersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStackProvisioningParametersInput, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
      end
    end

    class DescribeStackProvisioningParametersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStackProvisioningParametersOutput, context: context)
        Hearth::Validator.validate!(input[:agent_installer_url], ::String, context: "#{context}[:agent_installer_url]")
        Parameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class DescribeStackSummaryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStackSummaryInput, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
      end
    end

    class DescribeStackSummaryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStackSummaryOutput, context: context)
        StackSummary.validate!(input[:stack_summary], context: "#{context}[:stack_summary]") unless input[:stack_summary].nil?
      end
    end

    class DescribeStacksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStacksInput, context: context)
        Strings.validate!(input[:stack_ids], context: "#{context}[:stack_ids]") unless input[:stack_ids].nil?
      end
    end

    class DescribeStacksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStacksOutput, context: context)
        Stacks.validate!(input[:stacks], context: "#{context}[:stacks]") unless input[:stacks].nil?
      end
    end

    class DescribeTimeBasedAutoScalingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTimeBasedAutoScalingInput, context: context)
        Strings.validate!(input[:instance_ids], context: "#{context}[:instance_ids]") unless input[:instance_ids].nil?
      end
    end

    class DescribeTimeBasedAutoScalingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTimeBasedAutoScalingOutput, context: context)
        TimeBasedAutoScalingConfigurations.validate!(input[:time_based_auto_scaling_configurations], context: "#{context}[:time_based_auto_scaling_configurations]") unless input[:time_based_auto_scaling_configurations].nil?
      end
    end

    class DescribeUserProfilesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUserProfilesInput, context: context)
        Strings.validate!(input[:iam_user_arns], context: "#{context}[:iam_user_arns]") unless input[:iam_user_arns].nil?
      end
    end

    class DescribeUserProfilesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUserProfilesOutput, context: context)
        UserProfiles.validate!(input[:user_profiles], context: "#{context}[:user_profiles]") unless input[:user_profiles].nil?
      end
    end

    class DescribeVolumesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVolumesInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:raid_array_id], ::String, context: "#{context}[:raid_array_id]")
        Strings.validate!(input[:volume_ids], context: "#{context}[:volume_ids]") unless input[:volume_ids].nil?
      end
    end

    class DescribeVolumesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVolumesOutput, context: context)
        Volumes.validate!(input[:volumes], context: "#{context}[:volumes]") unless input[:volumes].nil?
      end
    end

    class DetachElasticLoadBalancerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachElasticLoadBalancerInput, context: context)
        Hearth::Validator.validate!(input[:elastic_load_balancer_name], ::String, context: "#{context}[:elastic_load_balancer_name]")
        Hearth::Validator.validate!(input[:layer_id], ::String, context: "#{context}[:layer_id]")
      end
    end

    class DetachElasticLoadBalancerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachElasticLoadBalancerOutput, context: context)
      end
    end

    class DisassociateElasticIpInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateElasticIpInput, context: context)
        Hearth::Validator.validate!(input[:elastic_ip], ::String, context: "#{context}[:elastic_ip]")
      end
    end

    class DisassociateElasticIpOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateElasticIpOutput, context: context)
      end
    end

    class EbsBlockDevice
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EbsBlockDevice, context: context)
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
        Hearth::Validator.validate!(input[:volume_size], ::Integer, context: "#{context}[:volume_size]")
        Hearth::Validator.validate!(input[:volume_type], ::String, context: "#{context}[:volume_type]")
        Hearth::Validator.validate!(input[:delete_on_termination], ::TrueClass, ::FalseClass, context: "#{context}[:delete_on_termination]")
      end
    end

    class EcsCluster
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EcsCluster, context: context)
        Hearth::Validator.validate!(input[:ecs_cluster_arn], ::String, context: "#{context}[:ecs_cluster_arn]")
        Hearth::Validator.validate!(input[:ecs_cluster_name], ::String, context: "#{context}[:ecs_cluster_name]")
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:registered_at], ::String, context: "#{context}[:registered_at]")
      end
    end

    class EcsClusters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EcsCluster.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ElasticIp
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ElasticIp, context: context)
        Hearth::Validator.validate!(input[:ip], ::String, context: "#{context}[:ip]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class ElasticIps
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ElasticIp.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ElasticLoadBalancer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ElasticLoadBalancer, context: context)
        Hearth::Validator.validate!(input[:elastic_load_balancer_name], ::String, context: "#{context}[:elastic_load_balancer_name]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:dns_name], ::String, context: "#{context}[:dns_name]")
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:layer_id], ::String, context: "#{context}[:layer_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Strings.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Strings.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Strings.validate!(input[:ec2_instance_ids], context: "#{context}[:ec2_instance_ids]") unless input[:ec2_instance_ids].nil?
      end
    end

    class ElasticLoadBalancers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ElasticLoadBalancer.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EnvironmentVariable
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnvironmentVariable, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:secure], ::TrueClass, ::FalseClass, context: "#{context}[:secure]")
      end
    end

    class EnvironmentVariables
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EnvironmentVariable.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetHostnameSuggestionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetHostnameSuggestionInput, context: context)
        Hearth::Validator.validate!(input[:layer_id], ::String, context: "#{context}[:layer_id]")
      end
    end

    class GetHostnameSuggestionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetHostnameSuggestionOutput, context: context)
        Hearth::Validator.validate!(input[:layer_id], ::String, context: "#{context}[:layer_id]")
        Hearth::Validator.validate!(input[:hostname], ::String, context: "#{context}[:hostname]")
      end
    end

    class GrantAccessInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GrantAccessInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:valid_for_in_minutes], ::Integer, context: "#{context}[:valid_for_in_minutes]")
      end
    end

    class GrantAccessOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GrantAccessOutput, context: context)
        TemporaryCredential.validate!(input[:temporary_credential], context: "#{context}[:temporary_credential]") unless input[:temporary_credential].nil?
      end
    end

    class Instance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Instance, context: context)
        Hearth::Validator.validate!(input[:agent_version], ::String, context: "#{context}[:agent_version]")
        Hearth::Validator.validate!(input[:ami_id], ::String, context: "#{context}[:ami_id]")
        Hearth::Validator.validate!(input[:architecture], ::String, context: "#{context}[:architecture]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:auto_scaling_type], ::String, context: "#{context}[:auto_scaling_type]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        BlockDeviceMappings.validate!(input[:block_device_mappings], context: "#{context}[:block_device_mappings]") unless input[:block_device_mappings].nil?
        Hearth::Validator.validate!(input[:created_at], ::String, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:ebs_optimized], ::TrueClass, ::FalseClass, context: "#{context}[:ebs_optimized]")
        Hearth::Validator.validate!(input[:ec2_instance_id], ::String, context: "#{context}[:ec2_instance_id]")
        Hearth::Validator.validate!(input[:ecs_cluster_arn], ::String, context: "#{context}[:ecs_cluster_arn]")
        Hearth::Validator.validate!(input[:ecs_container_instance_arn], ::String, context: "#{context}[:ecs_container_instance_arn]")
        Hearth::Validator.validate!(input[:elastic_ip], ::String, context: "#{context}[:elastic_ip]")
        Hearth::Validator.validate!(input[:hostname], ::String, context: "#{context}[:hostname]")
        Hearth::Validator.validate!(input[:infrastructure_class], ::String, context: "#{context}[:infrastructure_class]")
        Hearth::Validator.validate!(input[:install_updates_on_boot], ::TrueClass, ::FalseClass, context: "#{context}[:install_updates_on_boot]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:instance_profile_arn], ::String, context: "#{context}[:instance_profile_arn]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:last_service_error_id], ::String, context: "#{context}[:last_service_error_id]")
        Strings.validate!(input[:layer_ids], context: "#{context}[:layer_ids]") unless input[:layer_ids].nil?
        Hearth::Validator.validate!(input[:os], ::String, context: "#{context}[:os]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:private_dns], ::String, context: "#{context}[:private_dns]")
        Hearth::Validator.validate!(input[:private_ip], ::String, context: "#{context}[:private_ip]")
        Hearth::Validator.validate!(input[:public_dns], ::String, context: "#{context}[:public_dns]")
        Hearth::Validator.validate!(input[:public_ip], ::String, context: "#{context}[:public_ip]")
        Hearth::Validator.validate!(input[:registered_by], ::String, context: "#{context}[:registered_by]")
        Hearth::Validator.validate!(input[:reported_agent_version], ::String, context: "#{context}[:reported_agent_version]")
        ReportedOs.validate!(input[:reported_os], context: "#{context}[:reported_os]") unless input[:reported_os].nil?
        Hearth::Validator.validate!(input[:root_device_type], ::String, context: "#{context}[:root_device_type]")
        Hearth::Validator.validate!(input[:root_device_volume_id], ::String, context: "#{context}[:root_device_volume_id]")
        Strings.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate!(input[:ssh_host_dsa_key_fingerprint], ::String, context: "#{context}[:ssh_host_dsa_key_fingerprint]")
        Hearth::Validator.validate!(input[:ssh_host_rsa_key_fingerprint], ::String, context: "#{context}[:ssh_host_rsa_key_fingerprint]")
        Hearth::Validator.validate!(input[:ssh_key_name], ::String, context: "#{context}[:ssh_key_name]")
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:tenancy], ::String, context: "#{context}[:tenancy]")
        Hearth::Validator.validate!(input[:virtualization_type], ::String, context: "#{context}[:virtualization_type]")
      end
    end

    class InstanceIdentity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceIdentity, context: context)
        Hearth::Validator.validate!(input[:document], ::String, context: "#{context}[:document]")
        Hearth::Validator.validate!(input[:signature], ::String, context: "#{context}[:signature]")
      end
    end

    class Instances
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Instance.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstancesCount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstancesCount, context: context)
        Hearth::Validator.validate!(input[:assigning], ::Integer, context: "#{context}[:assigning]")
        Hearth::Validator.validate!(input[:booting], ::Integer, context: "#{context}[:booting]")
        Hearth::Validator.validate!(input[:connection_lost], ::Integer, context: "#{context}[:connection_lost]")
        Hearth::Validator.validate!(input[:deregistering], ::Integer, context: "#{context}[:deregistering]")
        Hearth::Validator.validate!(input[:online], ::Integer, context: "#{context}[:online]")
        Hearth::Validator.validate!(input[:pending], ::Integer, context: "#{context}[:pending]")
        Hearth::Validator.validate!(input[:rebooting], ::Integer, context: "#{context}[:rebooting]")
        Hearth::Validator.validate!(input[:registered], ::Integer, context: "#{context}[:registered]")
        Hearth::Validator.validate!(input[:registering], ::Integer, context: "#{context}[:registering]")
        Hearth::Validator.validate!(input[:requested], ::Integer, context: "#{context}[:requested]")
        Hearth::Validator.validate!(input[:running_setup], ::Integer, context: "#{context}[:running_setup]")
        Hearth::Validator.validate!(input[:setup_failed], ::Integer, context: "#{context}[:setup_failed]")
        Hearth::Validator.validate!(input[:shutting_down], ::Integer, context: "#{context}[:shutting_down]")
        Hearth::Validator.validate!(input[:start_failed], ::Integer, context: "#{context}[:start_failed]")
        Hearth::Validator.validate!(input[:stop_failed], ::Integer, context: "#{context}[:stop_failed]")
        Hearth::Validator.validate!(input[:stopped], ::Integer, context: "#{context}[:stopped]")
        Hearth::Validator.validate!(input[:stopping], ::Integer, context: "#{context}[:stopping]")
        Hearth::Validator.validate!(input[:terminated], ::Integer, context: "#{context}[:terminated]")
        Hearth::Validator.validate!(input[:terminating], ::Integer, context: "#{context}[:terminating]")
        Hearth::Validator.validate!(input[:unassigning], ::Integer, context: "#{context}[:unassigning]")
      end
    end

    class Layer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Layer, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:layer_id], ::String, context: "#{context}[:layer_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:shortname], ::String, context: "#{context}[:shortname]")
        LayerAttributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        CloudWatchLogsConfiguration.validate!(input[:cloud_watch_logs_configuration], context: "#{context}[:cloud_watch_logs_configuration]") unless input[:cloud_watch_logs_configuration].nil?
        Hearth::Validator.validate!(input[:custom_instance_profile_arn], ::String, context: "#{context}[:custom_instance_profile_arn]")
        Hearth::Validator.validate!(input[:custom_json], ::String, context: "#{context}[:custom_json]")
        Strings.validate!(input[:custom_security_group_ids], context: "#{context}[:custom_security_group_ids]") unless input[:custom_security_group_ids].nil?
        Strings.validate!(input[:default_security_group_names], context: "#{context}[:default_security_group_names]") unless input[:default_security_group_names].nil?
        Strings.validate!(input[:packages], context: "#{context}[:packages]") unless input[:packages].nil?
        VolumeConfigurations.validate!(input[:volume_configurations], context: "#{context}[:volume_configurations]") unless input[:volume_configurations].nil?
        Hearth::Validator.validate!(input[:enable_auto_healing], ::TrueClass, ::FalseClass, context: "#{context}[:enable_auto_healing]")
        Hearth::Validator.validate!(input[:auto_assign_elastic_ips], ::TrueClass, ::FalseClass, context: "#{context}[:auto_assign_elastic_ips]")
        Hearth::Validator.validate!(input[:auto_assign_public_ips], ::TrueClass, ::FalseClass, context: "#{context}[:auto_assign_public_ips]")
        Recipes.validate!(input[:default_recipes], context: "#{context}[:default_recipes]") unless input[:default_recipes].nil?
        Recipes.validate!(input[:custom_recipes], context: "#{context}[:custom_recipes]") unless input[:custom_recipes].nil?
        Hearth::Validator.validate!(input[:created_at], ::String, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:install_updates_on_boot], ::TrueClass, ::FalseClass, context: "#{context}[:install_updates_on_boot]")
        Hearth::Validator.validate!(input[:use_ebs_optimized_instances], ::TrueClass, ::FalseClass, context: "#{context}[:use_ebs_optimized_instances]")
        LifecycleEventConfiguration.validate!(input[:lifecycle_event_configuration], context: "#{context}[:lifecycle_event_configuration]") unless input[:lifecycle_event_configuration].nil?
      end
    end

    class LayerAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class Layers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Layer.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LifecycleEventConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifecycleEventConfiguration, context: context)
        ShutdownEventConfiguration.validate!(input[:shutdown], context: "#{context}[:shutdown]") unless input[:shutdown].nil?
      end
    end

    class ListTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsOutput, context: context)
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class LoadBasedAutoScalingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoadBasedAutoScalingConfiguration, context: context)
        Hearth::Validator.validate!(input[:layer_id], ::String, context: "#{context}[:layer_id]")
        Hearth::Validator.validate!(input[:enable], ::TrueClass, ::FalseClass, context: "#{context}[:enable]")
        AutoScalingThresholds.validate!(input[:up_scaling], context: "#{context}[:up_scaling]") unless input[:up_scaling].nil?
        AutoScalingThresholds.validate!(input[:down_scaling], context: "#{context}[:down_scaling]") unless input[:down_scaling].nil?
      end
    end

    class LoadBasedAutoScalingConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LoadBasedAutoScalingConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OperatingSystem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OperatingSystem, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        OperatingSystemConfigurationManagers.validate!(input[:configuration_managers], context: "#{context}[:configuration_managers]") unless input[:configuration_managers].nil?
        Hearth::Validator.validate!(input[:reported_name], ::String, context: "#{context}[:reported_name]")
        Hearth::Validator.validate!(input[:reported_version], ::String, context: "#{context}[:reported_version]")
        Hearth::Validator.validate!(input[:supported], ::TrueClass, ::FalseClass, context: "#{context}[:supported]")
      end
    end

    class OperatingSystemConfigurationManager
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OperatingSystemConfigurationManager, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class OperatingSystemConfigurationManagers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OperatingSystemConfigurationManager.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OperatingSystems
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OperatingSystem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Parameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class Permission
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Permission, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:iam_user_arn], ::String, context: "#{context}[:iam_user_arn]")
        Hearth::Validator.validate!(input[:allow_ssh], ::TrueClass, ::FalseClass, context: "#{context}[:allow_ssh]")
        Hearth::Validator.validate!(input[:allow_sudo], ::TrueClass, ::FalseClass, context: "#{context}[:allow_sudo]")
        Hearth::Validator.validate!(input[:level], ::String, context: "#{context}[:level]")
      end
    end

    class Permissions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Permission.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RaidArray
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RaidArray, context: context)
        Hearth::Validator.validate!(input[:raid_array_id], ::String, context: "#{context}[:raid_array_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:raid_level], ::Integer, context: "#{context}[:raid_level]")
        Hearth::Validator.validate!(input[:number_of_disks], ::Integer, context: "#{context}[:number_of_disks]")
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
        Hearth::Validator.validate!(input[:device], ::String, context: "#{context}[:device]")
        Hearth::Validator.validate!(input[:mount_point], ::String, context: "#{context}[:mount_point]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:created_at], ::String, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:volume_type], ::String, context: "#{context}[:volume_type]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
      end
    end

    class RaidArrays
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RaidArray.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RdsDbInstance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RdsDbInstance, context: context)
        Hearth::Validator.validate!(input[:rds_db_instance_arn], ::String, context: "#{context}[:rds_db_instance_arn]")
        Hearth::Validator.validate!(input[:db_instance_identifier], ::String, context: "#{context}[:db_instance_identifier]")
        Hearth::Validator.validate!(input[:db_user], ::String, context: "#{context}[:db_user]")
        Hearth::Validator.validate!(input[:db_password], ::String, context: "#{context}[:db_password]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:address], ::String, context: "#{context}[:address]")
        Hearth::Validator.validate!(input[:engine], ::String, context: "#{context}[:engine]")
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:missing_on_rds], ::TrueClass, ::FalseClass, context: "#{context}[:missing_on_rds]")
      end
    end

    class RdsDbInstances
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RdsDbInstance.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RebootInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RebootInstanceInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class RebootInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RebootInstanceOutput, context: context)
      end
    end

    class Recipes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Recipes, context: context)
        Strings.validate!(input[:setup], context: "#{context}[:setup]") unless input[:setup].nil?
        Strings.validate!(input[:configure], context: "#{context}[:configure]") unless input[:configure].nil?
        Strings.validate!(input[:deploy], context: "#{context}[:deploy]") unless input[:deploy].nil?
        Strings.validate!(input[:undeploy], context: "#{context}[:undeploy]") unless input[:undeploy].nil?
        Strings.validate!(input[:shutdown], context: "#{context}[:shutdown]") unless input[:shutdown].nil?
      end
    end

    class RegisterEcsClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterEcsClusterInput, context: context)
        Hearth::Validator.validate!(input[:ecs_cluster_arn], ::String, context: "#{context}[:ecs_cluster_arn]")
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
      end
    end

    class RegisterEcsClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterEcsClusterOutput, context: context)
        Hearth::Validator.validate!(input[:ecs_cluster_arn], ::String, context: "#{context}[:ecs_cluster_arn]")
      end
    end

    class RegisterElasticIpInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterElasticIpInput, context: context)
        Hearth::Validator.validate!(input[:elastic_ip], ::String, context: "#{context}[:elastic_ip]")
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
      end
    end

    class RegisterElasticIpOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterElasticIpOutput, context: context)
        Hearth::Validator.validate!(input[:elastic_ip], ::String, context: "#{context}[:elastic_ip]")
      end
    end

    class RegisterInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterInstanceInput, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:hostname], ::String, context: "#{context}[:hostname]")
        Hearth::Validator.validate!(input[:public_ip], ::String, context: "#{context}[:public_ip]")
        Hearth::Validator.validate!(input[:private_ip], ::String, context: "#{context}[:private_ip]")
        Hearth::Validator.validate!(input[:rsa_public_key], ::String, context: "#{context}[:rsa_public_key]")
        Hearth::Validator.validate!(input[:rsa_public_key_fingerprint], ::String, context: "#{context}[:rsa_public_key_fingerprint]")
        InstanceIdentity.validate!(input[:instance_identity], context: "#{context}[:instance_identity]") unless input[:instance_identity].nil?
      end
    end

    class RegisterInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterInstanceOutput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class RegisterRdsDbInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterRdsDbInstanceInput, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:rds_db_instance_arn], ::String, context: "#{context}[:rds_db_instance_arn]")
        Hearth::Validator.validate!(input[:db_user], ::String, context: "#{context}[:db_user]")
        Hearth::Validator.validate!(input[:db_password], ::String, context: "#{context}[:db_password]")
      end
    end

    class RegisterRdsDbInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterRdsDbInstanceOutput, context: context)
      end
    end

    class RegisterVolumeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterVolumeInput, context: context)
        Hearth::Validator.validate!(input[:ec2_volume_id], ::String, context: "#{context}[:ec2_volume_id]")
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
      end
    end

    class RegisterVolumeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterVolumeOutput, context: context)
        Hearth::Validator.validate!(input[:volume_id], ::String, context: "#{context}[:volume_id]")
      end
    end

    class ReportedOs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReportedOs, context: context)
        Hearth::Validator.validate!(input[:family], ::String, context: "#{context}[:family]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SelfUserProfile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SelfUserProfile, context: context)
        Hearth::Validator.validate!(input[:iam_user_arn], ::String, context: "#{context}[:iam_user_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:ssh_username], ::String, context: "#{context}[:ssh_username]")
        Hearth::Validator.validate!(input[:ssh_public_key], ::String, context: "#{context}[:ssh_public_key]")
      end
    end

    class ServiceError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceError, context: context)
        Hearth::Validator.validate!(input[:service_error_id], ::String, context: "#{context}[:service_error_id]")
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:created_at], ::String, context: "#{context}[:created_at]")
      end
    end

    class ServiceErrors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ServiceError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SetLoadBasedAutoScalingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetLoadBasedAutoScalingInput, context: context)
        Hearth::Validator.validate!(input[:layer_id], ::String, context: "#{context}[:layer_id]")
        Hearth::Validator.validate!(input[:enable], ::TrueClass, ::FalseClass, context: "#{context}[:enable]")
        AutoScalingThresholds.validate!(input[:up_scaling], context: "#{context}[:up_scaling]") unless input[:up_scaling].nil?
        AutoScalingThresholds.validate!(input[:down_scaling], context: "#{context}[:down_scaling]") unless input[:down_scaling].nil?
      end
    end

    class SetLoadBasedAutoScalingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetLoadBasedAutoScalingOutput, context: context)
      end
    end

    class SetPermissionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetPermissionInput, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:iam_user_arn], ::String, context: "#{context}[:iam_user_arn]")
        Hearth::Validator.validate!(input[:allow_ssh], ::TrueClass, ::FalseClass, context: "#{context}[:allow_ssh]")
        Hearth::Validator.validate!(input[:allow_sudo], ::TrueClass, ::FalseClass, context: "#{context}[:allow_sudo]")
        Hearth::Validator.validate!(input[:level], ::String, context: "#{context}[:level]")
      end
    end

    class SetPermissionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetPermissionOutput, context: context)
      end
    end

    class SetTimeBasedAutoScalingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetTimeBasedAutoScalingInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        WeeklyAutoScalingSchedule.validate!(input[:auto_scaling_schedule], context: "#{context}[:auto_scaling_schedule]") unless input[:auto_scaling_schedule].nil?
      end
    end

    class SetTimeBasedAutoScalingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetTimeBasedAutoScalingOutput, context: context)
      end
    end

    class ShutdownEventConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ShutdownEventConfiguration, context: context)
        Hearth::Validator.validate!(input[:execution_timeout], ::Integer, context: "#{context}[:execution_timeout]")
        Hearth::Validator.validate!(input[:delay_until_elb_connections_drained], ::TrueClass, ::FalseClass, context: "#{context}[:delay_until_elb_connections_drained]")
      end
    end

    class Source
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Source, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Hearth::Validator.validate!(input[:ssh_key], ::String, context: "#{context}[:ssh_key]")
        Hearth::Validator.validate!(input[:revision], ::String, context: "#{context}[:revision]")
      end
    end

    class SslConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SslConfiguration, context: context)
        Hearth::Validator.validate!(input[:certificate], ::String, context: "#{context}[:certificate]")
        Hearth::Validator.validate!(input[:private_key], ::String, context: "#{context}[:private_key]")
        Hearth::Validator.validate!(input[:chain], ::String, context: "#{context}[:chain]")
      end
    end

    class Stack
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Stack, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        StackAttributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:service_role_arn], ::String, context: "#{context}[:service_role_arn]")
        Hearth::Validator.validate!(input[:default_instance_profile_arn], ::String, context: "#{context}[:default_instance_profile_arn]")
        Hearth::Validator.validate!(input[:default_os], ::String, context: "#{context}[:default_os]")
        Hearth::Validator.validate!(input[:hostname_theme], ::String, context: "#{context}[:hostname_theme]")
        Hearth::Validator.validate!(input[:default_availability_zone], ::String, context: "#{context}[:default_availability_zone]")
        Hearth::Validator.validate!(input[:default_subnet_id], ::String, context: "#{context}[:default_subnet_id]")
        Hearth::Validator.validate!(input[:custom_json], ::String, context: "#{context}[:custom_json]")
        StackConfigurationManager.validate!(input[:configuration_manager], context: "#{context}[:configuration_manager]") unless input[:configuration_manager].nil?
        ChefConfiguration.validate!(input[:chef_configuration], context: "#{context}[:chef_configuration]") unless input[:chef_configuration].nil?
        Hearth::Validator.validate!(input[:use_custom_cookbooks], ::TrueClass, ::FalseClass, context: "#{context}[:use_custom_cookbooks]")
        Hearth::Validator.validate!(input[:use_opsworks_security_groups], ::TrueClass, ::FalseClass, context: "#{context}[:use_opsworks_security_groups]")
        Source.validate!(input[:custom_cookbooks_source], context: "#{context}[:custom_cookbooks_source]") unless input[:custom_cookbooks_source].nil?
        Hearth::Validator.validate!(input[:default_ssh_key_name], ::String, context: "#{context}[:default_ssh_key_name]")
        Hearth::Validator.validate!(input[:created_at], ::String, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:default_root_device_type], ::String, context: "#{context}[:default_root_device_type]")
        Hearth::Validator.validate!(input[:agent_version], ::String, context: "#{context}[:agent_version]")
      end
    end

    class StackAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class StackConfigurationManager
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StackConfigurationManager, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class StackSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StackSummary, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:layers_count], ::Integer, context: "#{context}[:layers_count]")
        Hearth::Validator.validate!(input[:apps_count], ::Integer, context: "#{context}[:apps_count]")
        InstancesCount.validate!(input[:instances_count], context: "#{context}[:instances_count]") unless input[:instances_count].nil?
      end
    end

    class Stacks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Stack.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StartInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartInstanceInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class StartInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartInstanceOutput, context: context)
      end
    end

    class StartStackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartStackInput, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
      end
    end

    class StartStackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartStackOutput, context: context)
      end
    end

    class StopInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopInstanceInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:force], ::TrueClass, ::FalseClass, context: "#{context}[:force]")
      end
    end

    class StopInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopInstanceOutput, context: context)
      end
    end

    class StopStackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopStackInput, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
      end
    end

    class StopStackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopStackOutput, context: context)
      end
    end

    class Strings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
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
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TemporaryCredential
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TemporaryCredential, context: context)
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Hearth::Validator.validate!(input[:valid_for_in_minutes], ::Integer, context: "#{context}[:valid_for_in_minutes]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class TimeBasedAutoScalingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimeBasedAutoScalingConfiguration, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        WeeklyAutoScalingSchedule.validate!(input[:auto_scaling_schedule], context: "#{context}[:auto_scaling_schedule]") unless input[:auto_scaling_schedule].nil?
      end
    end

    class TimeBasedAutoScalingConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TimeBasedAutoScalingConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UnassignInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnassignInstanceInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class UnassignInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnassignInstanceOutput, context: context)
      end
    end

    class UnassignVolumeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnassignVolumeInput, context: context)
        Hearth::Validator.validate!(input[:volume_id], ::String, context: "#{context}[:volume_id]")
      end
    end

    class UnassignVolumeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnassignVolumeOutput, context: context)
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

    class UpdateAppInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAppInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        DataSources.validate!(input[:data_sources], context: "#{context}[:data_sources]") unless input[:data_sources].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Source.validate!(input[:app_source], context: "#{context}[:app_source]") unless input[:app_source].nil?
        Strings.validate!(input[:domains], context: "#{context}[:domains]") unless input[:domains].nil?
        Hearth::Validator.validate!(input[:enable_ssl], ::TrueClass, ::FalseClass, context: "#{context}[:enable_ssl]")
        SslConfiguration.validate!(input[:ssl_configuration], context: "#{context}[:ssl_configuration]") unless input[:ssl_configuration].nil?
        AppAttributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        EnvironmentVariables.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
      end
    end

    class UpdateAppOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAppOutput, context: context)
      end
    end

    class UpdateElasticIpInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateElasticIpInput, context: context)
        Hearth::Validator.validate!(input[:elastic_ip], ::String, context: "#{context}[:elastic_ip]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UpdateElasticIpOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateElasticIpOutput, context: context)
      end
    end

    class UpdateInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateInstanceInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Strings.validate!(input[:layer_ids], context: "#{context}[:layer_ids]") unless input[:layer_ids].nil?
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:auto_scaling_type], ::String, context: "#{context}[:auto_scaling_type]")
        Hearth::Validator.validate!(input[:hostname], ::String, context: "#{context}[:hostname]")
        Hearth::Validator.validate!(input[:os], ::String, context: "#{context}[:os]")
        Hearth::Validator.validate!(input[:ami_id], ::String, context: "#{context}[:ami_id]")
        Hearth::Validator.validate!(input[:ssh_key_name], ::String, context: "#{context}[:ssh_key_name]")
        Hearth::Validator.validate!(input[:architecture], ::String, context: "#{context}[:architecture]")
        Hearth::Validator.validate!(input[:install_updates_on_boot], ::TrueClass, ::FalseClass, context: "#{context}[:install_updates_on_boot]")
        Hearth::Validator.validate!(input[:ebs_optimized], ::TrueClass, ::FalseClass, context: "#{context}[:ebs_optimized]")
        Hearth::Validator.validate!(input[:agent_version], ::String, context: "#{context}[:agent_version]")
      end
    end

    class UpdateInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateInstanceOutput, context: context)
      end
    end

    class UpdateLayerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLayerInput, context: context)
        Hearth::Validator.validate!(input[:layer_id], ::String, context: "#{context}[:layer_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:shortname], ::String, context: "#{context}[:shortname]")
        LayerAttributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        CloudWatchLogsConfiguration.validate!(input[:cloud_watch_logs_configuration], context: "#{context}[:cloud_watch_logs_configuration]") unless input[:cloud_watch_logs_configuration].nil?
        Hearth::Validator.validate!(input[:custom_instance_profile_arn], ::String, context: "#{context}[:custom_instance_profile_arn]")
        Hearth::Validator.validate!(input[:custom_json], ::String, context: "#{context}[:custom_json]")
        Strings.validate!(input[:custom_security_group_ids], context: "#{context}[:custom_security_group_ids]") unless input[:custom_security_group_ids].nil?
        Strings.validate!(input[:packages], context: "#{context}[:packages]") unless input[:packages].nil?
        VolumeConfigurations.validate!(input[:volume_configurations], context: "#{context}[:volume_configurations]") unless input[:volume_configurations].nil?
        Hearth::Validator.validate!(input[:enable_auto_healing], ::TrueClass, ::FalseClass, context: "#{context}[:enable_auto_healing]")
        Hearth::Validator.validate!(input[:auto_assign_elastic_ips], ::TrueClass, ::FalseClass, context: "#{context}[:auto_assign_elastic_ips]")
        Hearth::Validator.validate!(input[:auto_assign_public_ips], ::TrueClass, ::FalseClass, context: "#{context}[:auto_assign_public_ips]")
        Recipes.validate!(input[:custom_recipes], context: "#{context}[:custom_recipes]") unless input[:custom_recipes].nil?
        Hearth::Validator.validate!(input[:install_updates_on_boot], ::TrueClass, ::FalseClass, context: "#{context}[:install_updates_on_boot]")
        Hearth::Validator.validate!(input[:use_ebs_optimized_instances], ::TrueClass, ::FalseClass, context: "#{context}[:use_ebs_optimized_instances]")
        LifecycleEventConfiguration.validate!(input[:lifecycle_event_configuration], context: "#{context}[:lifecycle_event_configuration]") unless input[:lifecycle_event_configuration].nil?
      end
    end

    class UpdateLayerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLayerOutput, context: context)
      end
    end

    class UpdateMyUserProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMyUserProfileInput, context: context)
        Hearth::Validator.validate!(input[:ssh_public_key], ::String, context: "#{context}[:ssh_public_key]")
      end
    end

    class UpdateMyUserProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMyUserProfileOutput, context: context)
      end
    end

    class UpdateRdsDbInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRdsDbInstanceInput, context: context)
        Hearth::Validator.validate!(input[:rds_db_instance_arn], ::String, context: "#{context}[:rds_db_instance_arn]")
        Hearth::Validator.validate!(input[:db_user], ::String, context: "#{context}[:db_user]")
        Hearth::Validator.validate!(input[:db_password], ::String, context: "#{context}[:db_password]")
      end
    end

    class UpdateRdsDbInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRdsDbInstanceOutput, context: context)
      end
    end

    class UpdateStackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStackInput, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        StackAttributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:service_role_arn], ::String, context: "#{context}[:service_role_arn]")
        Hearth::Validator.validate!(input[:default_instance_profile_arn], ::String, context: "#{context}[:default_instance_profile_arn]")
        Hearth::Validator.validate!(input[:default_os], ::String, context: "#{context}[:default_os]")
        Hearth::Validator.validate!(input[:hostname_theme], ::String, context: "#{context}[:hostname_theme]")
        Hearth::Validator.validate!(input[:default_availability_zone], ::String, context: "#{context}[:default_availability_zone]")
        Hearth::Validator.validate!(input[:default_subnet_id], ::String, context: "#{context}[:default_subnet_id]")
        Hearth::Validator.validate!(input[:custom_json], ::String, context: "#{context}[:custom_json]")
        StackConfigurationManager.validate!(input[:configuration_manager], context: "#{context}[:configuration_manager]") unless input[:configuration_manager].nil?
        ChefConfiguration.validate!(input[:chef_configuration], context: "#{context}[:chef_configuration]") unless input[:chef_configuration].nil?
        Hearth::Validator.validate!(input[:use_custom_cookbooks], ::TrueClass, ::FalseClass, context: "#{context}[:use_custom_cookbooks]")
        Source.validate!(input[:custom_cookbooks_source], context: "#{context}[:custom_cookbooks_source]") unless input[:custom_cookbooks_source].nil?
        Hearth::Validator.validate!(input[:default_ssh_key_name], ::String, context: "#{context}[:default_ssh_key_name]")
        Hearth::Validator.validate!(input[:default_root_device_type], ::String, context: "#{context}[:default_root_device_type]")
        Hearth::Validator.validate!(input[:use_opsworks_security_groups], ::TrueClass, ::FalseClass, context: "#{context}[:use_opsworks_security_groups]")
        Hearth::Validator.validate!(input[:agent_version], ::String, context: "#{context}[:agent_version]")
      end
    end

    class UpdateStackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStackOutput, context: context)
      end
    end

    class UpdateUserProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserProfileInput, context: context)
        Hearth::Validator.validate!(input[:iam_user_arn], ::String, context: "#{context}[:iam_user_arn]")
        Hearth::Validator.validate!(input[:ssh_username], ::String, context: "#{context}[:ssh_username]")
        Hearth::Validator.validate!(input[:ssh_public_key], ::String, context: "#{context}[:ssh_public_key]")
        Hearth::Validator.validate!(input[:allow_self_management], ::TrueClass, ::FalseClass, context: "#{context}[:allow_self_management]")
      end
    end

    class UpdateUserProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserProfileOutput, context: context)
      end
    end

    class UpdateVolumeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVolumeInput, context: context)
        Hearth::Validator.validate!(input[:volume_id], ::String, context: "#{context}[:volume_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:mount_point], ::String, context: "#{context}[:mount_point]")
      end
    end

    class UpdateVolumeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVolumeOutput, context: context)
      end
    end

    class UserProfile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserProfile, context: context)
        Hearth::Validator.validate!(input[:iam_user_arn], ::String, context: "#{context}[:iam_user_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:ssh_username], ::String, context: "#{context}[:ssh_username]")
        Hearth::Validator.validate!(input[:ssh_public_key], ::String, context: "#{context}[:ssh_public_key]")
        Hearth::Validator.validate!(input[:allow_self_management], ::TrueClass, ::FalseClass, context: "#{context}[:allow_self_management]")
      end
    end

    class UserProfiles
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UserProfile.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Volume
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Volume, context: context)
        Hearth::Validator.validate!(input[:volume_id], ::String, context: "#{context}[:volume_id]")
        Hearth::Validator.validate!(input[:ec2_volume_id], ::String, context: "#{context}[:ec2_volume_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:raid_array_id], ::String, context: "#{context}[:raid_array_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
        Hearth::Validator.validate!(input[:device], ::String, context: "#{context}[:device]")
        Hearth::Validator.validate!(input[:mount_point], ::String, context: "#{context}[:mount_point]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:volume_type], ::String, context: "#{context}[:volume_type]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
      end
    end

    class VolumeConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VolumeConfiguration, context: context)
        Hearth::Validator.validate!(input[:mount_point], ::String, context: "#{context}[:mount_point]")
        Hearth::Validator.validate!(input[:raid_level], ::Integer, context: "#{context}[:raid_level]")
        Hearth::Validator.validate!(input[:number_of_disks], ::Integer, context: "#{context}[:number_of_disks]")
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
        Hearth::Validator.validate!(input[:volume_type], ::String, context: "#{context}[:volume_type]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
      end
    end

    class VolumeConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          VolumeConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Volumes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Volume.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WeeklyAutoScalingSchedule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WeeklyAutoScalingSchedule, context: context)
        DailyAutoScalingSchedule.validate!(input[:monday], context: "#{context}[:monday]") unless input[:monday].nil?
        DailyAutoScalingSchedule.validate!(input[:tuesday], context: "#{context}[:tuesday]") unless input[:tuesday].nil?
        DailyAutoScalingSchedule.validate!(input[:wednesday], context: "#{context}[:wednesday]") unless input[:wednesday].nil?
        DailyAutoScalingSchedule.validate!(input[:thursday], context: "#{context}[:thursday]") unless input[:thursday].nil?
        DailyAutoScalingSchedule.validate!(input[:friday], context: "#{context}[:friday]") unless input[:friday].nil?
        DailyAutoScalingSchedule.validate!(input[:saturday], context: "#{context}[:saturday]") unless input[:saturday].nil?
        DailyAutoScalingSchedule.validate!(input[:sunday], context: "#{context}[:sunday]") unless input[:sunday].nil?
      end
    end

  end
end
