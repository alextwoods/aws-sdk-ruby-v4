# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::OpsWorks
  module Builders

    # Operation Builder for AssignInstance
    class AssignInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.AssignInstance'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['LayerIds'] = Builders::Strings.build(input[:layer_ids]) unless input[:layer_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Strings
    class Strings
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for AssignVolume
    class AssignVolume
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.AssignVolume'
        data = {}
        data['VolumeId'] = input[:volume_id] unless input[:volume_id].nil?
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateElasticIp
    class AssociateElasticIp
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.AssociateElasticIp'
        data = {}
        data['ElasticIp'] = input[:elastic_ip] unless input[:elastic_ip].nil?
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AttachElasticLoadBalancer
    class AttachElasticLoadBalancer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.AttachElasticLoadBalancer'
        data = {}
        data['ElasticLoadBalancerName'] = input[:elastic_load_balancer_name] unless input[:elastic_load_balancer_name].nil?
        data['LayerId'] = input[:layer_id] unless input[:layer_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CloneStack
    class CloneStack
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.CloneStack'
        data = {}
        data['SourceStackId'] = input[:source_stack_id] unless input[:source_stack_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Region'] = input[:region] unless input[:region].nil?
        data['VpcId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data['Attributes'] = Builders::StackAttributes.build(input[:attributes]) unless input[:attributes].nil?
        data['ServiceRoleArn'] = input[:service_role_arn] unless input[:service_role_arn].nil?
        data['DefaultInstanceProfileArn'] = input[:default_instance_profile_arn] unless input[:default_instance_profile_arn].nil?
        data['DefaultOs'] = input[:default_os] unless input[:default_os].nil?
        data['HostnameTheme'] = input[:hostname_theme] unless input[:hostname_theme].nil?
        data['DefaultAvailabilityZone'] = input[:default_availability_zone] unless input[:default_availability_zone].nil?
        data['DefaultSubnetId'] = input[:default_subnet_id] unless input[:default_subnet_id].nil?
        data['CustomJson'] = input[:custom_json] unless input[:custom_json].nil?
        data['ConfigurationManager'] = Builders::StackConfigurationManager.build(input[:configuration_manager]) unless input[:configuration_manager].nil?
        data['ChefConfiguration'] = Builders::ChefConfiguration.build(input[:chef_configuration]) unless input[:chef_configuration].nil?
        data['UseCustomCookbooks'] = input[:use_custom_cookbooks] unless input[:use_custom_cookbooks].nil?
        data['UseOpsworksSecurityGroups'] = input[:use_opsworks_security_groups] unless input[:use_opsworks_security_groups].nil?
        data['CustomCookbooksSource'] = Builders::Source.build(input[:custom_cookbooks_source]) unless input[:custom_cookbooks_source].nil?
        data['DefaultSshKeyName'] = input[:default_ssh_key_name] unless input[:default_ssh_key_name].nil?
        data['ClonePermissions'] = input[:clone_permissions] unless input[:clone_permissions].nil?
        data['CloneAppIds'] = Builders::Strings.build(input[:clone_app_ids]) unless input[:clone_app_ids].nil?
        data['DefaultRootDeviceType'] = input[:default_root_device_type] unless input[:default_root_device_type].nil?
        data['AgentVersion'] = input[:agent_version] unless input[:agent_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Source
    class Source
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['Url'] = input[:url] unless input[:url].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        data['SshKey'] = input[:ssh_key] unless input[:ssh_key].nil?
        data['Revision'] = input[:revision] unless input[:revision].nil?
        data
      end
    end

    # Structure Builder for ChefConfiguration
    class ChefConfiguration
      def self.build(input)
        data = {}
        data['ManageBerkshelf'] = input[:manage_berkshelf] unless input[:manage_berkshelf].nil?
        data['BerkshelfVersion'] = input[:berkshelf_version] unless input[:berkshelf_version].nil?
        data
      end
    end

    # Structure Builder for StackConfigurationManager
    class StackConfigurationManager
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Version'] = input[:version] unless input[:version].nil?
        data
      end
    end

    # Map Builder for StackAttributes
    class StackAttributes
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateApp
    class CreateApp
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.CreateApp'
        data = {}
        data['StackId'] = input[:stack_id] unless input[:stack_id].nil?
        data['Shortname'] = input[:shortname] unless input[:shortname].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['DataSources'] = Builders::DataSources.build(input[:data_sources]) unless input[:data_sources].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['AppSource'] = Builders::Source.build(input[:app_source]) unless input[:app_source].nil?
        data['Domains'] = Builders::Strings.build(input[:domains]) unless input[:domains].nil?
        data['EnableSsl'] = input[:enable_ssl] unless input[:enable_ssl].nil?
        data['SslConfiguration'] = Builders::SslConfiguration.build(input[:ssl_configuration]) unless input[:ssl_configuration].nil?
        data['Attributes'] = Builders::AppAttributes.build(input[:attributes]) unless input[:attributes].nil?
        data['Environment'] = Builders::EnvironmentVariables.build(input[:environment]) unless input[:environment].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for EnvironmentVariables
    class EnvironmentVariables
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::EnvironmentVariable.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for EnvironmentVariable
    class EnvironmentVariable
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data['Secure'] = input[:secure] unless input[:secure].nil?
        data
      end
    end

    # Map Builder for AppAttributes
    class AppAttributes
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for SslConfiguration
    class SslConfiguration
      def self.build(input)
        data = {}
        data['Certificate'] = input[:certificate] unless input[:certificate].nil?
        data['PrivateKey'] = input[:private_key] unless input[:private_key].nil?
        data['Chain'] = input[:chain] unless input[:chain].nil?
        data
      end
    end

    # List Builder for DataSources
    class DataSources
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DataSource.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DataSource
    class DataSource
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data
      end
    end

    # Operation Builder for CreateDeployment
    class CreateDeployment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.CreateDeployment'
        data = {}
        data['StackId'] = input[:stack_id] unless input[:stack_id].nil?
        data['AppId'] = input[:app_id] unless input[:app_id].nil?
        data['InstanceIds'] = Builders::Strings.build(input[:instance_ids]) unless input[:instance_ids].nil?
        data['LayerIds'] = Builders::Strings.build(input[:layer_ids]) unless input[:layer_ids].nil?
        data['Command'] = Builders::DeploymentCommand.build(input[:command]) unless input[:command].nil?
        data['Comment'] = input[:comment] unless input[:comment].nil?
        data['CustomJson'] = input[:custom_json] unless input[:custom_json].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DeploymentCommand
    class DeploymentCommand
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Args'] = Builders::DeploymentCommandArgs.build(input[:args]) unless input[:args].nil?
        data
      end
    end

    # Map Builder for DeploymentCommandArgs
    class DeploymentCommandArgs
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::Strings.build(value) unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateInstance
    class CreateInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.CreateInstance'
        data = {}
        data['StackId'] = input[:stack_id] unless input[:stack_id].nil?
        data['LayerIds'] = Builders::Strings.build(input[:layer_ids]) unless input[:layer_ids].nil?
        data['InstanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['AutoScalingType'] = input[:auto_scaling_type] unless input[:auto_scaling_type].nil?
        data['Hostname'] = input[:hostname] unless input[:hostname].nil?
        data['Os'] = input[:os] unless input[:os].nil?
        data['AmiId'] = input[:ami_id] unless input[:ami_id].nil?
        data['SshKeyName'] = input[:ssh_key_name] unless input[:ssh_key_name].nil?
        data['AvailabilityZone'] = input[:availability_zone] unless input[:availability_zone].nil?
        data['VirtualizationType'] = input[:virtualization_type] unless input[:virtualization_type].nil?
        data['SubnetId'] = input[:subnet_id] unless input[:subnet_id].nil?
        data['Architecture'] = input[:architecture] unless input[:architecture].nil?
        data['RootDeviceType'] = input[:root_device_type] unless input[:root_device_type].nil?
        data['BlockDeviceMappings'] = Builders::BlockDeviceMappings.build(input[:block_device_mappings]) unless input[:block_device_mappings].nil?
        data['InstallUpdatesOnBoot'] = input[:install_updates_on_boot] unless input[:install_updates_on_boot].nil?
        data['EbsOptimized'] = input[:ebs_optimized] unless input[:ebs_optimized].nil?
        data['AgentVersion'] = input[:agent_version] unless input[:agent_version].nil?
        data['Tenancy'] = input[:tenancy] unless input[:tenancy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for BlockDeviceMappings
    class BlockDeviceMappings
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::BlockDeviceMapping.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for BlockDeviceMapping
    class BlockDeviceMapping
      def self.build(input)
        data = {}
        data['DeviceName'] = input[:device_name] unless input[:device_name].nil?
        data['NoDevice'] = input[:no_device] unless input[:no_device].nil?
        data['VirtualName'] = input[:virtual_name] unless input[:virtual_name].nil?
        data['Ebs'] = Builders::EbsBlockDevice.build(input[:ebs]) unless input[:ebs].nil?
        data
      end
    end

    # Structure Builder for EbsBlockDevice
    class EbsBlockDevice
      def self.build(input)
        data = {}
        data['SnapshotId'] = input[:snapshot_id] unless input[:snapshot_id].nil?
        data['Iops'] = input[:iops] unless input[:iops].nil?
        data['VolumeSize'] = input[:volume_size] unless input[:volume_size].nil?
        data['VolumeType'] = input[:volume_type] unless input[:volume_type].nil?
        data['DeleteOnTermination'] = input[:delete_on_termination] unless input[:delete_on_termination].nil?
        data
      end
    end

    # Operation Builder for CreateLayer
    class CreateLayer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.CreateLayer'
        data = {}
        data['StackId'] = input[:stack_id] unless input[:stack_id].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Shortname'] = input[:shortname] unless input[:shortname].nil?
        data['Attributes'] = Builders::LayerAttributes.build(input[:attributes]) unless input[:attributes].nil?
        data['CloudWatchLogsConfiguration'] = Builders::CloudWatchLogsConfiguration.build(input[:cloud_watch_logs_configuration]) unless input[:cloud_watch_logs_configuration].nil?
        data['CustomInstanceProfileArn'] = input[:custom_instance_profile_arn] unless input[:custom_instance_profile_arn].nil?
        data['CustomJson'] = input[:custom_json] unless input[:custom_json].nil?
        data['CustomSecurityGroupIds'] = Builders::Strings.build(input[:custom_security_group_ids]) unless input[:custom_security_group_ids].nil?
        data['Packages'] = Builders::Strings.build(input[:packages]) unless input[:packages].nil?
        data['VolumeConfigurations'] = Builders::VolumeConfigurations.build(input[:volume_configurations]) unless input[:volume_configurations].nil?
        data['EnableAutoHealing'] = input[:enable_auto_healing] unless input[:enable_auto_healing].nil?
        data['AutoAssignElasticIps'] = input[:auto_assign_elastic_ips] unless input[:auto_assign_elastic_ips].nil?
        data['AutoAssignPublicIps'] = input[:auto_assign_public_ips] unless input[:auto_assign_public_ips].nil?
        data['CustomRecipes'] = Builders::Recipes.build(input[:custom_recipes]) unless input[:custom_recipes].nil?
        data['InstallUpdatesOnBoot'] = input[:install_updates_on_boot] unless input[:install_updates_on_boot].nil?
        data['UseEbsOptimizedInstances'] = input[:use_ebs_optimized_instances] unless input[:use_ebs_optimized_instances].nil?
        data['LifecycleEventConfiguration'] = Builders::LifecycleEventConfiguration.build(input[:lifecycle_event_configuration]) unless input[:lifecycle_event_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for LifecycleEventConfiguration
    class LifecycleEventConfiguration
      def self.build(input)
        data = {}
        data['Shutdown'] = Builders::ShutdownEventConfiguration.build(input[:shutdown]) unless input[:shutdown].nil?
        data
      end
    end

    # Structure Builder for ShutdownEventConfiguration
    class ShutdownEventConfiguration
      def self.build(input)
        data = {}
        data['ExecutionTimeout'] = input[:execution_timeout] unless input[:execution_timeout].nil?
        data['DelayUntilElbConnectionsDrained'] = input[:delay_until_elb_connections_drained] unless input[:delay_until_elb_connections_drained].nil?
        data
      end
    end

    # Structure Builder for Recipes
    class Recipes
      def self.build(input)
        data = {}
        data['Setup'] = Builders::Strings.build(input[:setup]) unless input[:setup].nil?
        data['Configure'] = Builders::Strings.build(input[:configure]) unless input[:configure].nil?
        data['Deploy'] = Builders::Strings.build(input[:deploy]) unless input[:deploy].nil?
        data['Undeploy'] = Builders::Strings.build(input[:undeploy]) unless input[:undeploy].nil?
        data['Shutdown'] = Builders::Strings.build(input[:shutdown]) unless input[:shutdown].nil?
        data
      end
    end

    # List Builder for VolumeConfigurations
    class VolumeConfigurations
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::VolumeConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for VolumeConfiguration
    class VolumeConfiguration
      def self.build(input)
        data = {}
        data['MountPoint'] = input[:mount_point] unless input[:mount_point].nil?
        data['RaidLevel'] = input[:raid_level] unless input[:raid_level].nil?
        data['NumberOfDisks'] = input[:number_of_disks] unless input[:number_of_disks].nil?
        data['Size'] = input[:size] unless input[:size].nil?
        data['VolumeType'] = input[:volume_type] unless input[:volume_type].nil?
        data['Iops'] = input[:iops] unless input[:iops].nil?
        data['Encrypted'] = input[:encrypted] unless input[:encrypted].nil?
        data
      end
    end

    # Structure Builder for CloudWatchLogsConfiguration
    class CloudWatchLogsConfiguration
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['LogStreams'] = Builders::CloudWatchLogsLogStreams.build(input[:log_streams]) unless input[:log_streams].nil?
        data
      end
    end

    # List Builder for CloudWatchLogsLogStreams
    class CloudWatchLogsLogStreams
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CloudWatchLogsLogStream.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CloudWatchLogsLogStream
    class CloudWatchLogsLogStream
      def self.build(input)
        data = {}
        data['LogGroupName'] = input[:log_group_name] unless input[:log_group_name].nil?
        data['DatetimeFormat'] = input[:datetime_format] unless input[:datetime_format].nil?
        data['TimeZone'] = input[:time_zone] unless input[:time_zone].nil?
        data['File'] = input[:file] unless input[:file].nil?
        data['FileFingerprintLines'] = input[:file_fingerprint_lines] unless input[:file_fingerprint_lines].nil?
        data['MultiLineStartPattern'] = input[:multi_line_start_pattern] unless input[:multi_line_start_pattern].nil?
        data['InitialPosition'] = input[:initial_position] unless input[:initial_position].nil?
        data['Encoding'] = input[:encoding] unless input[:encoding].nil?
        data['BufferDuration'] = input[:buffer_duration] unless input[:buffer_duration].nil?
        data['BatchCount'] = input[:batch_count] unless input[:batch_count].nil?
        data['BatchSize'] = input[:batch_size] unless input[:batch_size].nil?
        data
      end
    end

    # Map Builder for LayerAttributes
    class LayerAttributes
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateStack
    class CreateStack
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.CreateStack'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Region'] = input[:region] unless input[:region].nil?
        data['VpcId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data['Attributes'] = Builders::StackAttributes.build(input[:attributes]) unless input[:attributes].nil?
        data['ServiceRoleArn'] = input[:service_role_arn] unless input[:service_role_arn].nil?
        data['DefaultInstanceProfileArn'] = input[:default_instance_profile_arn] unless input[:default_instance_profile_arn].nil?
        data['DefaultOs'] = input[:default_os] unless input[:default_os].nil?
        data['HostnameTheme'] = input[:hostname_theme] unless input[:hostname_theme].nil?
        data['DefaultAvailabilityZone'] = input[:default_availability_zone] unless input[:default_availability_zone].nil?
        data['DefaultSubnetId'] = input[:default_subnet_id] unless input[:default_subnet_id].nil?
        data['CustomJson'] = input[:custom_json] unless input[:custom_json].nil?
        data['ConfigurationManager'] = Builders::StackConfigurationManager.build(input[:configuration_manager]) unless input[:configuration_manager].nil?
        data['ChefConfiguration'] = Builders::ChefConfiguration.build(input[:chef_configuration]) unless input[:chef_configuration].nil?
        data['UseCustomCookbooks'] = input[:use_custom_cookbooks] unless input[:use_custom_cookbooks].nil?
        data['UseOpsworksSecurityGroups'] = input[:use_opsworks_security_groups] unless input[:use_opsworks_security_groups].nil?
        data['CustomCookbooksSource'] = Builders::Source.build(input[:custom_cookbooks_source]) unless input[:custom_cookbooks_source].nil?
        data['DefaultSshKeyName'] = input[:default_ssh_key_name] unless input[:default_ssh_key_name].nil?
        data['DefaultRootDeviceType'] = input[:default_root_device_type] unless input[:default_root_device_type].nil?
        data['AgentVersion'] = input[:agent_version] unless input[:agent_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateUserProfile
    class CreateUserProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.CreateUserProfile'
        data = {}
        data['IamUserArn'] = input[:iam_user_arn] unless input[:iam_user_arn].nil?
        data['SshUsername'] = input[:ssh_username] unless input[:ssh_username].nil?
        data['SshPublicKey'] = input[:ssh_public_key] unless input[:ssh_public_key].nil?
        data['AllowSelfManagement'] = input[:allow_self_management] unless input[:allow_self_management].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteApp
    class DeleteApp
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.DeleteApp'
        data = {}
        data['AppId'] = input[:app_id] unless input[:app_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteInstance
    class DeleteInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.DeleteInstance'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['DeleteElasticIp'] = input[:delete_elastic_ip] unless input[:delete_elastic_ip].nil?
        data['DeleteVolumes'] = input[:delete_volumes] unless input[:delete_volumes].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteLayer
    class DeleteLayer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.DeleteLayer'
        data = {}
        data['LayerId'] = input[:layer_id] unless input[:layer_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteStack
    class DeleteStack
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.DeleteStack'
        data = {}
        data['StackId'] = input[:stack_id] unless input[:stack_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteUserProfile
    class DeleteUserProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.DeleteUserProfile'
        data = {}
        data['IamUserArn'] = input[:iam_user_arn] unless input[:iam_user_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeregisterEcsCluster
    class DeregisterEcsCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.DeregisterEcsCluster'
        data = {}
        data['EcsClusterArn'] = input[:ecs_cluster_arn] unless input[:ecs_cluster_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeregisterElasticIp
    class DeregisterElasticIp
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.DeregisterElasticIp'
        data = {}
        data['ElasticIp'] = input[:elastic_ip] unless input[:elastic_ip].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeregisterInstance
    class DeregisterInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.DeregisterInstance'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeregisterRdsDbInstance
    class DeregisterRdsDbInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.DeregisterRdsDbInstance'
        data = {}
        data['RdsDbInstanceArn'] = input[:rds_db_instance_arn] unless input[:rds_db_instance_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeregisterVolume
    class DeregisterVolume
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.DeregisterVolume'
        data = {}
        data['VolumeId'] = input[:volume_id] unless input[:volume_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAgentVersions
    class DescribeAgentVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.DescribeAgentVersions'
        data = {}
        data['StackId'] = input[:stack_id] unless input[:stack_id].nil?
        data['ConfigurationManager'] = Builders::StackConfigurationManager.build(input[:configuration_manager]) unless input[:configuration_manager].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeApps
    class DescribeApps
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.DescribeApps'
        data = {}
        data['StackId'] = input[:stack_id] unless input[:stack_id].nil?
        data['AppIds'] = Builders::Strings.build(input[:app_ids]) unless input[:app_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeCommands
    class DescribeCommands
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.DescribeCommands'
        data = {}
        data['DeploymentId'] = input[:deployment_id] unless input[:deployment_id].nil?
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['CommandIds'] = Builders::Strings.build(input[:command_ids]) unless input[:command_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDeployments
    class DescribeDeployments
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.DescribeDeployments'
        data = {}
        data['StackId'] = input[:stack_id] unless input[:stack_id].nil?
        data['AppId'] = input[:app_id] unless input[:app_id].nil?
        data['DeploymentIds'] = Builders::Strings.build(input[:deployment_ids]) unless input[:deployment_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEcsClusters
    class DescribeEcsClusters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.DescribeEcsClusters'
        data = {}
        data['EcsClusterArns'] = Builders::Strings.build(input[:ecs_cluster_arns]) unless input[:ecs_cluster_arns].nil?
        data['StackId'] = input[:stack_id] unless input[:stack_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeElasticIps
    class DescribeElasticIps
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.DescribeElasticIps'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['StackId'] = input[:stack_id] unless input[:stack_id].nil?
        data['Ips'] = Builders::Strings.build(input[:ips]) unless input[:ips].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeElasticLoadBalancers
    class DescribeElasticLoadBalancers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.DescribeElasticLoadBalancers'
        data = {}
        data['StackId'] = input[:stack_id] unless input[:stack_id].nil?
        data['LayerIds'] = Builders::Strings.build(input[:layer_ids]) unless input[:layer_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeInstances
    class DescribeInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.DescribeInstances'
        data = {}
        data['StackId'] = input[:stack_id] unless input[:stack_id].nil?
        data['LayerId'] = input[:layer_id] unless input[:layer_id].nil?
        data['InstanceIds'] = Builders::Strings.build(input[:instance_ids]) unless input[:instance_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeLayers
    class DescribeLayers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.DescribeLayers'
        data = {}
        data['StackId'] = input[:stack_id] unless input[:stack_id].nil?
        data['LayerIds'] = Builders::Strings.build(input[:layer_ids]) unless input[:layer_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeLoadBasedAutoScaling
    class DescribeLoadBasedAutoScaling
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.DescribeLoadBasedAutoScaling'
        data = {}
        data['LayerIds'] = Builders::Strings.build(input[:layer_ids]) unless input[:layer_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeMyUserProfile
    class DescribeMyUserProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.DescribeMyUserProfile'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeOperatingSystems
    class DescribeOperatingSystems
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.DescribeOperatingSystems'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribePermissions
    class DescribePermissions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.DescribePermissions'
        data = {}
        data['IamUserArn'] = input[:iam_user_arn] unless input[:iam_user_arn].nil?
        data['StackId'] = input[:stack_id] unless input[:stack_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeRaidArrays
    class DescribeRaidArrays
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.DescribeRaidArrays'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['StackId'] = input[:stack_id] unless input[:stack_id].nil?
        data['RaidArrayIds'] = Builders::Strings.build(input[:raid_array_ids]) unless input[:raid_array_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeRdsDbInstances
    class DescribeRdsDbInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.DescribeRdsDbInstances'
        data = {}
        data['StackId'] = input[:stack_id] unless input[:stack_id].nil?
        data['RdsDbInstanceArns'] = Builders::Strings.build(input[:rds_db_instance_arns]) unless input[:rds_db_instance_arns].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeServiceErrors
    class DescribeServiceErrors
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.DescribeServiceErrors'
        data = {}
        data['StackId'] = input[:stack_id] unless input[:stack_id].nil?
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['ServiceErrorIds'] = Builders::Strings.build(input[:service_error_ids]) unless input[:service_error_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeStackProvisioningParameters
    class DescribeStackProvisioningParameters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.DescribeStackProvisioningParameters'
        data = {}
        data['StackId'] = input[:stack_id] unless input[:stack_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeStackSummary
    class DescribeStackSummary
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.DescribeStackSummary'
        data = {}
        data['StackId'] = input[:stack_id] unless input[:stack_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeStacks
    class DescribeStacks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.DescribeStacks'
        data = {}
        data['StackIds'] = Builders::Strings.build(input[:stack_ids]) unless input[:stack_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeTimeBasedAutoScaling
    class DescribeTimeBasedAutoScaling
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.DescribeTimeBasedAutoScaling'
        data = {}
        data['InstanceIds'] = Builders::Strings.build(input[:instance_ids]) unless input[:instance_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeUserProfiles
    class DescribeUserProfiles
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.DescribeUserProfiles'
        data = {}
        data['IamUserArns'] = Builders::Strings.build(input[:iam_user_arns]) unless input[:iam_user_arns].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeVolumes
    class DescribeVolumes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.DescribeVolumes'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['StackId'] = input[:stack_id] unless input[:stack_id].nil?
        data['RaidArrayId'] = input[:raid_array_id] unless input[:raid_array_id].nil?
        data['VolumeIds'] = Builders::Strings.build(input[:volume_ids]) unless input[:volume_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DetachElasticLoadBalancer
    class DetachElasticLoadBalancer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.DetachElasticLoadBalancer'
        data = {}
        data['ElasticLoadBalancerName'] = input[:elastic_load_balancer_name] unless input[:elastic_load_balancer_name].nil?
        data['LayerId'] = input[:layer_id] unless input[:layer_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateElasticIp
    class DisassociateElasticIp
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.DisassociateElasticIp'
        data = {}
        data['ElasticIp'] = input[:elastic_ip] unless input[:elastic_ip].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetHostnameSuggestion
    class GetHostnameSuggestion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.GetHostnameSuggestion'
        data = {}
        data['LayerId'] = input[:layer_id] unless input[:layer_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GrantAccess
    class GrantAccess
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.GrantAccess'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['ValidForInMinutes'] = input[:valid_for_in_minutes] unless input[:valid_for_in_minutes].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTags
    class ListTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.ListTags'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RebootInstance
    class RebootInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.RebootInstance'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RegisterEcsCluster
    class RegisterEcsCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.RegisterEcsCluster'
        data = {}
        data['EcsClusterArn'] = input[:ecs_cluster_arn] unless input[:ecs_cluster_arn].nil?
        data['StackId'] = input[:stack_id] unless input[:stack_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RegisterElasticIp
    class RegisterElasticIp
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.RegisterElasticIp'
        data = {}
        data['ElasticIp'] = input[:elastic_ip] unless input[:elastic_ip].nil?
        data['StackId'] = input[:stack_id] unless input[:stack_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RegisterInstance
    class RegisterInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.RegisterInstance'
        data = {}
        data['StackId'] = input[:stack_id] unless input[:stack_id].nil?
        data['Hostname'] = input[:hostname] unless input[:hostname].nil?
        data['PublicIp'] = input[:public_ip] unless input[:public_ip].nil?
        data['PrivateIp'] = input[:private_ip] unless input[:private_ip].nil?
        data['RsaPublicKey'] = input[:rsa_public_key] unless input[:rsa_public_key].nil?
        data['RsaPublicKeyFingerprint'] = input[:rsa_public_key_fingerprint] unless input[:rsa_public_key_fingerprint].nil?
        data['InstanceIdentity'] = Builders::InstanceIdentity.build(input[:instance_identity]) unless input[:instance_identity].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for InstanceIdentity
    class InstanceIdentity
      def self.build(input)
        data = {}
        data['Document'] = input[:document] unless input[:document].nil?
        data['Signature'] = input[:signature] unless input[:signature].nil?
        data
      end
    end

    # Operation Builder for RegisterRdsDbInstance
    class RegisterRdsDbInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.RegisterRdsDbInstance'
        data = {}
        data['StackId'] = input[:stack_id] unless input[:stack_id].nil?
        data['RdsDbInstanceArn'] = input[:rds_db_instance_arn] unless input[:rds_db_instance_arn].nil?
        data['DbUser'] = input[:db_user] unless input[:db_user].nil?
        data['DbPassword'] = input[:db_password] unless input[:db_password].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RegisterVolume
    class RegisterVolume
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.RegisterVolume'
        data = {}
        data['Ec2VolumeId'] = input[:ec2_volume_id] unless input[:ec2_volume_id].nil?
        data['StackId'] = input[:stack_id] unless input[:stack_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SetLoadBasedAutoScaling
    class SetLoadBasedAutoScaling
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.SetLoadBasedAutoScaling'
        data = {}
        data['LayerId'] = input[:layer_id] unless input[:layer_id].nil?
        data['Enable'] = input[:enable] unless input[:enable].nil?
        data['UpScaling'] = Builders::AutoScalingThresholds.build(input[:up_scaling]) unless input[:up_scaling].nil?
        data['DownScaling'] = Builders::AutoScalingThresholds.build(input[:down_scaling]) unless input[:down_scaling].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AutoScalingThresholds
    class AutoScalingThresholds
      def self.build(input)
        data = {}
        data['InstanceCount'] = input[:instance_count] unless input[:instance_count].nil?
        data['ThresholdsWaitTime'] = input[:thresholds_wait_time] unless input[:thresholds_wait_time].nil?
        data['IgnoreMetricsTime'] = input[:ignore_metrics_time] unless input[:ignore_metrics_time].nil?
        data['CpuThreshold'] = Hearth::NumberHelper.serialize(input[:cpu_threshold]) unless input[:cpu_threshold].nil?
        data['MemoryThreshold'] = Hearth::NumberHelper.serialize(input[:memory_threshold]) unless input[:memory_threshold].nil?
        data['LoadThreshold'] = Hearth::NumberHelper.serialize(input[:load_threshold]) unless input[:load_threshold].nil?
        data['Alarms'] = Builders::Strings.build(input[:alarms]) unless input[:alarms].nil?
        data
      end
    end

    # Operation Builder for SetPermission
    class SetPermission
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.SetPermission'
        data = {}
        data['StackId'] = input[:stack_id] unless input[:stack_id].nil?
        data['IamUserArn'] = input[:iam_user_arn] unless input[:iam_user_arn].nil?
        data['AllowSsh'] = input[:allow_ssh] unless input[:allow_ssh].nil?
        data['AllowSudo'] = input[:allow_sudo] unless input[:allow_sudo].nil?
        data['Level'] = input[:level] unless input[:level].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SetTimeBasedAutoScaling
    class SetTimeBasedAutoScaling
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.SetTimeBasedAutoScaling'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['AutoScalingSchedule'] = Builders::WeeklyAutoScalingSchedule.build(input[:auto_scaling_schedule]) unless input[:auto_scaling_schedule].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for WeeklyAutoScalingSchedule
    class WeeklyAutoScalingSchedule
      def self.build(input)
        data = {}
        data['Monday'] = Builders::DailyAutoScalingSchedule.build(input[:monday]) unless input[:monday].nil?
        data['Tuesday'] = Builders::DailyAutoScalingSchedule.build(input[:tuesday]) unless input[:tuesday].nil?
        data['Wednesday'] = Builders::DailyAutoScalingSchedule.build(input[:wednesday]) unless input[:wednesday].nil?
        data['Thursday'] = Builders::DailyAutoScalingSchedule.build(input[:thursday]) unless input[:thursday].nil?
        data['Friday'] = Builders::DailyAutoScalingSchedule.build(input[:friday]) unless input[:friday].nil?
        data['Saturday'] = Builders::DailyAutoScalingSchedule.build(input[:saturday]) unless input[:saturday].nil?
        data['Sunday'] = Builders::DailyAutoScalingSchedule.build(input[:sunday]) unless input[:sunday].nil?
        data
      end
    end

    # Map Builder for DailyAutoScalingSchedule
    class DailyAutoScalingSchedule
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for StartInstance
    class StartInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.StartInstance'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartStack
    class StartStack
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.StartStack'
        data = {}
        data['StackId'] = input[:stack_id] unless input[:stack_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopInstance
    class StopInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.StopInstance'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['Force'] = input[:force] unless input[:force].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopStack
    class StopStack
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.StopStack'
        data = {}
        data['StackId'] = input[:stack_id] unless input[:stack_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.TagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for Tags
    class Tags
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for UnassignInstance
    class UnassignInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.UnassignInstance'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UnassignVolume
    class UnassignVolume
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.UnassignVolume'
        data = {}
        data['VolumeId'] = input[:volume_id] unless input[:volume_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.UntagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = Builders::TagKeys.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeys
    class TagKeys
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateApp
    class UpdateApp
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.UpdateApp'
        data = {}
        data['AppId'] = input[:app_id] unless input[:app_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['DataSources'] = Builders::DataSources.build(input[:data_sources]) unless input[:data_sources].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['AppSource'] = Builders::Source.build(input[:app_source]) unless input[:app_source].nil?
        data['Domains'] = Builders::Strings.build(input[:domains]) unless input[:domains].nil?
        data['EnableSsl'] = input[:enable_ssl] unless input[:enable_ssl].nil?
        data['SslConfiguration'] = Builders::SslConfiguration.build(input[:ssl_configuration]) unless input[:ssl_configuration].nil?
        data['Attributes'] = Builders::AppAttributes.build(input[:attributes]) unless input[:attributes].nil?
        data['Environment'] = Builders::EnvironmentVariables.build(input[:environment]) unless input[:environment].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateElasticIp
    class UpdateElasticIp
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.UpdateElasticIp'
        data = {}
        data['ElasticIp'] = input[:elastic_ip] unless input[:elastic_ip].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateInstance
    class UpdateInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.UpdateInstance'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['LayerIds'] = Builders::Strings.build(input[:layer_ids]) unless input[:layer_ids].nil?
        data['InstanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['AutoScalingType'] = input[:auto_scaling_type] unless input[:auto_scaling_type].nil?
        data['Hostname'] = input[:hostname] unless input[:hostname].nil?
        data['Os'] = input[:os] unless input[:os].nil?
        data['AmiId'] = input[:ami_id] unless input[:ami_id].nil?
        data['SshKeyName'] = input[:ssh_key_name] unless input[:ssh_key_name].nil?
        data['Architecture'] = input[:architecture] unless input[:architecture].nil?
        data['InstallUpdatesOnBoot'] = input[:install_updates_on_boot] unless input[:install_updates_on_boot].nil?
        data['EbsOptimized'] = input[:ebs_optimized] unless input[:ebs_optimized].nil?
        data['AgentVersion'] = input[:agent_version] unless input[:agent_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateLayer
    class UpdateLayer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.UpdateLayer'
        data = {}
        data['LayerId'] = input[:layer_id] unless input[:layer_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Shortname'] = input[:shortname] unless input[:shortname].nil?
        data['Attributes'] = Builders::LayerAttributes.build(input[:attributes]) unless input[:attributes].nil?
        data['CloudWatchLogsConfiguration'] = Builders::CloudWatchLogsConfiguration.build(input[:cloud_watch_logs_configuration]) unless input[:cloud_watch_logs_configuration].nil?
        data['CustomInstanceProfileArn'] = input[:custom_instance_profile_arn] unless input[:custom_instance_profile_arn].nil?
        data['CustomJson'] = input[:custom_json] unless input[:custom_json].nil?
        data['CustomSecurityGroupIds'] = Builders::Strings.build(input[:custom_security_group_ids]) unless input[:custom_security_group_ids].nil?
        data['Packages'] = Builders::Strings.build(input[:packages]) unless input[:packages].nil?
        data['VolumeConfigurations'] = Builders::VolumeConfigurations.build(input[:volume_configurations]) unless input[:volume_configurations].nil?
        data['EnableAutoHealing'] = input[:enable_auto_healing] unless input[:enable_auto_healing].nil?
        data['AutoAssignElasticIps'] = input[:auto_assign_elastic_ips] unless input[:auto_assign_elastic_ips].nil?
        data['AutoAssignPublicIps'] = input[:auto_assign_public_ips] unless input[:auto_assign_public_ips].nil?
        data['CustomRecipes'] = Builders::Recipes.build(input[:custom_recipes]) unless input[:custom_recipes].nil?
        data['InstallUpdatesOnBoot'] = input[:install_updates_on_boot] unless input[:install_updates_on_boot].nil?
        data['UseEbsOptimizedInstances'] = input[:use_ebs_optimized_instances] unless input[:use_ebs_optimized_instances].nil?
        data['LifecycleEventConfiguration'] = Builders::LifecycleEventConfiguration.build(input[:lifecycle_event_configuration]) unless input[:lifecycle_event_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateMyUserProfile
    class UpdateMyUserProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.UpdateMyUserProfile'
        data = {}
        data['SshPublicKey'] = input[:ssh_public_key] unless input[:ssh_public_key].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRdsDbInstance
    class UpdateRdsDbInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.UpdateRdsDbInstance'
        data = {}
        data['RdsDbInstanceArn'] = input[:rds_db_instance_arn] unless input[:rds_db_instance_arn].nil?
        data['DbUser'] = input[:db_user] unless input[:db_user].nil?
        data['DbPassword'] = input[:db_password] unless input[:db_password].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateStack
    class UpdateStack
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.UpdateStack'
        data = {}
        data['StackId'] = input[:stack_id] unless input[:stack_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Attributes'] = Builders::StackAttributes.build(input[:attributes]) unless input[:attributes].nil?
        data['ServiceRoleArn'] = input[:service_role_arn] unless input[:service_role_arn].nil?
        data['DefaultInstanceProfileArn'] = input[:default_instance_profile_arn] unless input[:default_instance_profile_arn].nil?
        data['DefaultOs'] = input[:default_os] unless input[:default_os].nil?
        data['HostnameTheme'] = input[:hostname_theme] unless input[:hostname_theme].nil?
        data['DefaultAvailabilityZone'] = input[:default_availability_zone] unless input[:default_availability_zone].nil?
        data['DefaultSubnetId'] = input[:default_subnet_id] unless input[:default_subnet_id].nil?
        data['CustomJson'] = input[:custom_json] unless input[:custom_json].nil?
        data['ConfigurationManager'] = Builders::StackConfigurationManager.build(input[:configuration_manager]) unless input[:configuration_manager].nil?
        data['ChefConfiguration'] = Builders::ChefConfiguration.build(input[:chef_configuration]) unless input[:chef_configuration].nil?
        data['UseCustomCookbooks'] = input[:use_custom_cookbooks] unless input[:use_custom_cookbooks].nil?
        data['CustomCookbooksSource'] = Builders::Source.build(input[:custom_cookbooks_source]) unless input[:custom_cookbooks_source].nil?
        data['DefaultSshKeyName'] = input[:default_ssh_key_name] unless input[:default_ssh_key_name].nil?
        data['DefaultRootDeviceType'] = input[:default_root_device_type] unless input[:default_root_device_type].nil?
        data['UseOpsworksSecurityGroups'] = input[:use_opsworks_security_groups] unless input[:use_opsworks_security_groups].nil?
        data['AgentVersion'] = input[:agent_version] unless input[:agent_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateUserProfile
    class UpdateUserProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.UpdateUserProfile'
        data = {}
        data['IamUserArn'] = input[:iam_user_arn] unless input[:iam_user_arn].nil?
        data['SshUsername'] = input[:ssh_username] unless input[:ssh_username].nil?
        data['SshPublicKey'] = input[:ssh_public_key] unless input[:ssh_public_key].nil?
        data['AllowSelfManagement'] = input[:allow_self_management] unless input[:allow_self_management].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateVolume
    class UpdateVolume
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorks_20130218.UpdateVolume'
        data = {}
        data['VolumeId'] = input[:volume_id] unless input[:volume_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['MountPoint'] = input[:mount_point] unless input[:mount_point].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
