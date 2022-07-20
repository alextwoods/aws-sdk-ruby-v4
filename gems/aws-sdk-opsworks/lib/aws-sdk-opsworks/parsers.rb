# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::OpsWorks
  module Parsers

    # Operation Parser for AssignInstance
    class AssignInstance
      def self.parse(http_resp)
        data = Types::AssignInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for AssignVolume
    class AssignVolume
      def self.parse(http_resp)
        data = Types::AssignVolumeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for AssociateElasticIp
    class AssociateElasticIp
      def self.parse(http_resp)
        data = Types::AssociateElasticIpOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for AttachElasticLoadBalancer
    class AttachElasticLoadBalancer
      def self.parse(http_resp)
        data = Types::AttachElasticLoadBalancerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CloneStack
    class CloneStack
      def self.parse(http_resp)
        data = Types::CloneStackOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.stack_id = map['StackId']
        data
      end
    end

    # Operation Parser for CreateApp
    class CreateApp
      def self.parse(http_resp)
        data = Types::CreateAppOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.app_id = map['AppId']
        data
      end
    end

    # Operation Parser for CreateDeployment
    class CreateDeployment
      def self.parse(http_resp)
        data = Types::CreateDeploymentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.deployment_id = map['DeploymentId']
        data
      end
    end

    # Operation Parser for CreateInstance
    class CreateInstance
      def self.parse(http_resp)
        data = Types::CreateInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.instance_id = map['InstanceId']
        data
      end
    end

    # Operation Parser for CreateLayer
    class CreateLayer
      def self.parse(http_resp)
        data = Types::CreateLayerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.layer_id = map['LayerId']
        data
      end
    end

    # Operation Parser for CreateStack
    class CreateStack
      def self.parse(http_resp)
        data = Types::CreateStackOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.stack_id = map['StackId']
        data
      end
    end

    # Operation Parser for CreateUserProfile
    class CreateUserProfile
      def self.parse(http_resp)
        data = Types::CreateUserProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.iam_user_arn = map['IamUserArn']
        data
      end
    end

    # Operation Parser for DeleteApp
    class DeleteApp
      def self.parse(http_resp)
        data = Types::DeleteAppOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteInstance
    class DeleteInstance
      def self.parse(http_resp)
        data = Types::DeleteInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteLayer
    class DeleteLayer
      def self.parse(http_resp)
        data = Types::DeleteLayerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteStack
    class DeleteStack
      def self.parse(http_resp)
        data = Types::DeleteStackOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteUserProfile
    class DeleteUserProfile
      def self.parse(http_resp)
        data = Types::DeleteUserProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeregisterEcsCluster
    class DeregisterEcsCluster
      def self.parse(http_resp)
        data = Types::DeregisterEcsClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeregisterElasticIp
    class DeregisterElasticIp
      def self.parse(http_resp)
        data = Types::DeregisterElasticIpOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeregisterInstance
    class DeregisterInstance
      def self.parse(http_resp)
        data = Types::DeregisterInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeregisterRdsDbInstance
    class DeregisterRdsDbInstance
      def self.parse(http_resp)
        data = Types::DeregisterRdsDbInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeregisterVolume
    class DeregisterVolume
      def self.parse(http_resp)
        data = Types::DeregisterVolumeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeAgentVersions
    class DescribeAgentVersions
      def self.parse(http_resp)
        data = Types::DescribeAgentVersionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.agent_versions = (Parsers::AgentVersions.parse(map['AgentVersions']) unless map['AgentVersions'].nil?)
        data
      end
    end

    class AgentVersions
      def self.parse(list)
        list.map do |value|
          Parsers::AgentVersion.parse(value) unless value.nil?
        end
      end
    end

    class AgentVersion
      def self.parse(map)
        data = Types::AgentVersion.new
        data.version = map['Version']
        data.configuration_manager = (Parsers::StackConfigurationManager.parse(map['ConfigurationManager']) unless map['ConfigurationManager'].nil?)
        return data
      end
    end

    class StackConfigurationManager
      def self.parse(map)
        data = Types::StackConfigurationManager.new
        data.name = map['Name']
        data.version = map['Version']
        return data
      end
    end

    # Operation Parser for DescribeApps
    class DescribeApps
      def self.parse(http_resp)
        data = Types::DescribeAppsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.apps = (Parsers::Apps.parse(map['Apps']) unless map['Apps'].nil?)
        data
      end
    end

    class Apps
      def self.parse(list)
        list.map do |value|
          Parsers::App.parse(value) unless value.nil?
        end
      end
    end

    class App
      def self.parse(map)
        data = Types::App.new
        data.app_id = map['AppId']
        data.stack_id = map['StackId']
        data.shortname = map['Shortname']
        data.name = map['Name']
        data.description = map['Description']
        data.data_sources = (Parsers::DataSources.parse(map['DataSources']) unless map['DataSources'].nil?)
        data.type = map['Type']
        data.app_source = (Parsers::Source.parse(map['AppSource']) unless map['AppSource'].nil?)
        data.domains = (Parsers::Strings.parse(map['Domains']) unless map['Domains'].nil?)
        data.enable_ssl = map['EnableSsl']
        data.ssl_configuration = (Parsers::SslConfiguration.parse(map['SslConfiguration']) unless map['SslConfiguration'].nil?)
        data.attributes = (Parsers::AppAttributes.parse(map['Attributes']) unless map['Attributes'].nil?)
        data.created_at = map['CreatedAt']
        data.environment = (Parsers::EnvironmentVariables.parse(map['Environment']) unless map['Environment'].nil?)
        return data
      end
    end

    class EnvironmentVariables
      def self.parse(list)
        list.map do |value|
          Parsers::EnvironmentVariable.parse(value) unless value.nil?
        end
      end
    end

    class EnvironmentVariable
      def self.parse(map)
        data = Types::EnvironmentVariable.new
        data.key = map['Key']
        data.value = map['Value']
        data.secure = map['Secure']
        return data
      end
    end

    class AppAttributes
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class SslConfiguration
      def self.parse(map)
        data = Types::SslConfiguration.new
        data.certificate = map['Certificate']
        data.private_key = map['PrivateKey']
        data.chain = map['Chain']
        return data
      end
    end

    class Strings
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class Source
      def self.parse(map)
        data = Types::Source.new
        data.type = map['Type']
        data.url = map['Url']
        data.username = map['Username']
        data.password = map['Password']
        data.ssh_key = map['SshKey']
        data.revision = map['Revision']
        return data
      end
    end

    class DataSources
      def self.parse(list)
        list.map do |value|
          Parsers::DataSource.parse(value) unless value.nil?
        end
      end
    end

    class DataSource
      def self.parse(map)
        data = Types::DataSource.new
        data.type = map['Type']
        data.arn = map['Arn']
        data.database_name = map['DatabaseName']
        return data
      end
    end

    # Operation Parser for DescribeCommands
    class DescribeCommands
      def self.parse(http_resp)
        data = Types::DescribeCommandsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.commands = (Parsers::Commands.parse(map['Commands']) unless map['Commands'].nil?)
        data
      end
    end

    class Commands
      def self.parse(list)
        list.map do |value|
          Parsers::Command.parse(value) unless value.nil?
        end
      end
    end

    class Command
      def self.parse(map)
        data = Types::Command.new
        data.command_id = map['CommandId']
        data.instance_id = map['InstanceId']
        data.deployment_id = map['DeploymentId']
        data.created_at = map['CreatedAt']
        data.acknowledged_at = map['AcknowledgedAt']
        data.completed_at = map['CompletedAt']
        data.status = map['Status']
        data.exit_code = map['ExitCode']
        data.log_url = map['LogUrl']
        data.type = map['Type']
        return data
      end
    end

    # Operation Parser for DescribeDeployments
    class DescribeDeployments
      def self.parse(http_resp)
        data = Types::DescribeDeploymentsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.deployments = (Parsers::Deployments.parse(map['Deployments']) unless map['Deployments'].nil?)
        data
      end
    end

    class Deployments
      def self.parse(list)
        list.map do |value|
          Parsers::Deployment.parse(value) unless value.nil?
        end
      end
    end

    class Deployment
      def self.parse(map)
        data = Types::Deployment.new
        data.deployment_id = map['DeploymentId']
        data.stack_id = map['StackId']
        data.app_id = map['AppId']
        data.created_at = map['CreatedAt']
        data.completed_at = map['CompletedAt']
        data.duration = map['Duration']
        data.iam_user_arn = map['IamUserArn']
        data.comment = map['Comment']
        data.command = (Parsers::DeploymentCommand.parse(map['Command']) unless map['Command'].nil?)
        data.status = map['Status']
        data.custom_json = map['CustomJson']
        data.instance_ids = (Parsers::Strings.parse(map['InstanceIds']) unless map['InstanceIds'].nil?)
        return data
      end
    end

    class DeploymentCommand
      def self.parse(map)
        data = Types::DeploymentCommand.new
        data.name = map['Name']
        data.args = (Parsers::DeploymentCommandArgs.parse(map['Args']) unless map['Args'].nil?)
        return data
      end
    end

    class DeploymentCommandArgs
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::Strings.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeEcsClusters
    class DescribeEcsClusters
      def self.parse(http_resp)
        data = Types::DescribeEcsClustersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.ecs_clusters = (Parsers::EcsClusters.parse(map['EcsClusters']) unless map['EcsClusters'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class EcsClusters
      def self.parse(list)
        list.map do |value|
          Parsers::EcsCluster.parse(value) unless value.nil?
        end
      end
    end

    class EcsCluster
      def self.parse(map)
        data = Types::EcsCluster.new
        data.ecs_cluster_arn = map['EcsClusterArn']
        data.ecs_cluster_name = map['EcsClusterName']
        data.stack_id = map['StackId']
        data.registered_at = map['RegisteredAt']
        return data
      end
    end

    # Operation Parser for DescribeElasticIps
    class DescribeElasticIps
      def self.parse(http_resp)
        data = Types::DescribeElasticIpsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.elastic_ips = (Parsers::ElasticIps.parse(map['ElasticIps']) unless map['ElasticIps'].nil?)
        data
      end
    end

    class ElasticIps
      def self.parse(list)
        list.map do |value|
          Parsers::ElasticIp.parse(value) unless value.nil?
        end
      end
    end

    class ElasticIp
      def self.parse(map)
        data = Types::ElasticIp.new
        data.ip = map['Ip']
        data.name = map['Name']
        data.domain = map['Domain']
        data.region = map['Region']
        data.instance_id = map['InstanceId']
        return data
      end
    end

    # Operation Parser for DescribeElasticLoadBalancers
    class DescribeElasticLoadBalancers
      def self.parse(http_resp)
        data = Types::DescribeElasticLoadBalancersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.elastic_load_balancers = (Parsers::ElasticLoadBalancers.parse(map['ElasticLoadBalancers']) unless map['ElasticLoadBalancers'].nil?)
        data
      end
    end

    class ElasticLoadBalancers
      def self.parse(list)
        list.map do |value|
          Parsers::ElasticLoadBalancer.parse(value) unless value.nil?
        end
      end
    end

    class ElasticLoadBalancer
      def self.parse(map)
        data = Types::ElasticLoadBalancer.new
        data.elastic_load_balancer_name = map['ElasticLoadBalancerName']
        data.region = map['Region']
        data.dns_name = map['DnsName']
        data.stack_id = map['StackId']
        data.layer_id = map['LayerId']
        data.vpc_id = map['VpcId']
        data.availability_zones = (Parsers::Strings.parse(map['AvailabilityZones']) unless map['AvailabilityZones'].nil?)
        data.subnet_ids = (Parsers::Strings.parse(map['SubnetIds']) unless map['SubnetIds'].nil?)
        data.ec2_instance_ids = (Parsers::Strings.parse(map['Ec2InstanceIds']) unless map['Ec2InstanceIds'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeInstances
    class DescribeInstances
      def self.parse(http_resp)
        data = Types::DescribeInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.instances = (Parsers::Instances.parse(map['Instances']) unless map['Instances'].nil?)
        data
      end
    end

    class Instances
      def self.parse(list)
        list.map do |value|
          Parsers::Instance.parse(value) unless value.nil?
        end
      end
    end

    class Instance
      def self.parse(map)
        data = Types::Instance.new
        data.agent_version = map['AgentVersion']
        data.ami_id = map['AmiId']
        data.architecture = map['Architecture']
        data.arn = map['Arn']
        data.auto_scaling_type = map['AutoScalingType']
        data.availability_zone = map['AvailabilityZone']
        data.block_device_mappings = (Parsers::BlockDeviceMappings.parse(map['BlockDeviceMappings']) unless map['BlockDeviceMappings'].nil?)
        data.created_at = map['CreatedAt']
        data.ebs_optimized = map['EbsOptimized']
        data.ec2_instance_id = map['Ec2InstanceId']
        data.ecs_cluster_arn = map['EcsClusterArn']
        data.ecs_container_instance_arn = map['EcsContainerInstanceArn']
        data.elastic_ip = map['ElasticIp']
        data.hostname = map['Hostname']
        data.infrastructure_class = map['InfrastructureClass']
        data.install_updates_on_boot = map['InstallUpdatesOnBoot']
        data.instance_id = map['InstanceId']
        data.instance_profile_arn = map['InstanceProfileArn']
        data.instance_type = map['InstanceType']
        data.last_service_error_id = map['LastServiceErrorId']
        data.layer_ids = (Parsers::Strings.parse(map['LayerIds']) unless map['LayerIds'].nil?)
        data.os = map['Os']
        data.platform = map['Platform']
        data.private_dns = map['PrivateDns']
        data.private_ip = map['PrivateIp']
        data.public_dns = map['PublicDns']
        data.public_ip = map['PublicIp']
        data.registered_by = map['RegisteredBy']
        data.reported_agent_version = map['ReportedAgentVersion']
        data.reported_os = (Parsers::ReportedOs.parse(map['ReportedOs']) unless map['ReportedOs'].nil?)
        data.root_device_type = map['RootDeviceType']
        data.root_device_volume_id = map['RootDeviceVolumeId']
        data.security_group_ids = (Parsers::Strings.parse(map['SecurityGroupIds']) unless map['SecurityGroupIds'].nil?)
        data.ssh_host_dsa_key_fingerprint = map['SshHostDsaKeyFingerprint']
        data.ssh_host_rsa_key_fingerprint = map['SshHostRsaKeyFingerprint']
        data.ssh_key_name = map['SshKeyName']
        data.stack_id = map['StackId']
        data.status = map['Status']
        data.subnet_id = map['SubnetId']
        data.tenancy = map['Tenancy']
        data.virtualization_type = map['VirtualizationType']
        return data
      end
    end

    class ReportedOs
      def self.parse(map)
        data = Types::ReportedOs.new
        data.family = map['Family']
        data.name = map['Name']
        data.version = map['Version']
        return data
      end
    end

    class BlockDeviceMappings
      def self.parse(list)
        list.map do |value|
          Parsers::BlockDeviceMapping.parse(value) unless value.nil?
        end
      end
    end

    class BlockDeviceMapping
      def self.parse(map)
        data = Types::BlockDeviceMapping.new
        data.device_name = map['DeviceName']
        data.no_device = map['NoDevice']
        data.virtual_name = map['VirtualName']
        data.ebs = (Parsers::EbsBlockDevice.parse(map['Ebs']) unless map['Ebs'].nil?)
        return data
      end
    end

    class EbsBlockDevice
      def self.parse(map)
        data = Types::EbsBlockDevice.new
        data.snapshot_id = map['SnapshotId']
        data.iops = map['Iops']
        data.volume_size = map['VolumeSize']
        data.volume_type = map['VolumeType']
        data.delete_on_termination = map['DeleteOnTermination']
        return data
      end
    end

    # Operation Parser for DescribeLayers
    class DescribeLayers
      def self.parse(http_resp)
        data = Types::DescribeLayersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.layers = (Parsers::Layers.parse(map['Layers']) unless map['Layers'].nil?)
        data
      end
    end

    class Layers
      def self.parse(list)
        list.map do |value|
          Parsers::Layer.parse(value) unless value.nil?
        end
      end
    end

    class Layer
      def self.parse(map)
        data = Types::Layer.new
        data.arn = map['Arn']
        data.stack_id = map['StackId']
        data.layer_id = map['LayerId']
        data.type = map['Type']
        data.name = map['Name']
        data.shortname = map['Shortname']
        data.attributes = (Parsers::LayerAttributes.parse(map['Attributes']) unless map['Attributes'].nil?)
        data.cloud_watch_logs_configuration = (Parsers::CloudWatchLogsConfiguration.parse(map['CloudWatchLogsConfiguration']) unless map['CloudWatchLogsConfiguration'].nil?)
        data.custom_instance_profile_arn = map['CustomInstanceProfileArn']
        data.custom_json = map['CustomJson']
        data.custom_security_group_ids = (Parsers::Strings.parse(map['CustomSecurityGroupIds']) unless map['CustomSecurityGroupIds'].nil?)
        data.default_security_group_names = (Parsers::Strings.parse(map['DefaultSecurityGroupNames']) unless map['DefaultSecurityGroupNames'].nil?)
        data.packages = (Parsers::Strings.parse(map['Packages']) unless map['Packages'].nil?)
        data.volume_configurations = (Parsers::VolumeConfigurations.parse(map['VolumeConfigurations']) unless map['VolumeConfigurations'].nil?)
        data.enable_auto_healing = map['EnableAutoHealing']
        data.auto_assign_elastic_ips = map['AutoAssignElasticIps']
        data.auto_assign_public_ips = map['AutoAssignPublicIps']
        data.default_recipes = (Parsers::Recipes.parse(map['DefaultRecipes']) unless map['DefaultRecipes'].nil?)
        data.custom_recipes = (Parsers::Recipes.parse(map['CustomRecipes']) unless map['CustomRecipes'].nil?)
        data.created_at = map['CreatedAt']
        data.install_updates_on_boot = map['InstallUpdatesOnBoot']
        data.use_ebs_optimized_instances = map['UseEbsOptimizedInstances']
        data.lifecycle_event_configuration = (Parsers::LifecycleEventConfiguration.parse(map['LifecycleEventConfiguration']) unless map['LifecycleEventConfiguration'].nil?)
        return data
      end
    end

    class LifecycleEventConfiguration
      def self.parse(map)
        data = Types::LifecycleEventConfiguration.new
        data.shutdown = (Parsers::ShutdownEventConfiguration.parse(map['Shutdown']) unless map['Shutdown'].nil?)
        return data
      end
    end

    class ShutdownEventConfiguration
      def self.parse(map)
        data = Types::ShutdownEventConfiguration.new
        data.execution_timeout = map['ExecutionTimeout']
        data.delay_until_elb_connections_drained = map['DelayUntilElbConnectionsDrained']
        return data
      end
    end

    class Recipes
      def self.parse(map)
        data = Types::Recipes.new
        data.setup = (Parsers::Strings.parse(map['Setup']) unless map['Setup'].nil?)
        data.configure = (Parsers::Strings.parse(map['Configure']) unless map['Configure'].nil?)
        data.deploy = (Parsers::Strings.parse(map['Deploy']) unless map['Deploy'].nil?)
        data.undeploy = (Parsers::Strings.parse(map['Undeploy']) unless map['Undeploy'].nil?)
        data.shutdown = (Parsers::Strings.parse(map['Shutdown']) unless map['Shutdown'].nil?)
        return data
      end
    end

    class VolumeConfigurations
      def self.parse(list)
        list.map do |value|
          Parsers::VolumeConfiguration.parse(value) unless value.nil?
        end
      end
    end

    class VolumeConfiguration
      def self.parse(map)
        data = Types::VolumeConfiguration.new
        data.mount_point = map['MountPoint']
        data.raid_level = map['RaidLevel']
        data.number_of_disks = map['NumberOfDisks']
        data.size = map['Size']
        data.volume_type = map['VolumeType']
        data.iops = map['Iops']
        data.encrypted = map['Encrypted']
        return data
      end
    end

    class CloudWatchLogsConfiguration
      def self.parse(map)
        data = Types::CloudWatchLogsConfiguration.new
        data.enabled = map['Enabled']
        data.log_streams = (Parsers::CloudWatchLogsLogStreams.parse(map['LogStreams']) unless map['LogStreams'].nil?)
        return data
      end
    end

    class CloudWatchLogsLogStreams
      def self.parse(list)
        list.map do |value|
          Parsers::CloudWatchLogsLogStream.parse(value) unless value.nil?
        end
      end
    end

    class CloudWatchLogsLogStream
      def self.parse(map)
        data = Types::CloudWatchLogsLogStream.new
        data.log_group_name = map['LogGroupName']
        data.datetime_format = map['DatetimeFormat']
        data.time_zone = map['TimeZone']
        data.file = map['File']
        data.file_fingerprint_lines = map['FileFingerprintLines']
        data.multi_line_start_pattern = map['MultiLineStartPattern']
        data.initial_position = map['InitialPosition']
        data.encoding = map['Encoding']
        data.buffer_duration = map['BufferDuration']
        data.batch_count = map['BatchCount']
        data.batch_size = map['BatchSize']
        return data
      end
    end

    class LayerAttributes
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeLoadBasedAutoScaling
    class DescribeLoadBasedAutoScaling
      def self.parse(http_resp)
        data = Types::DescribeLoadBasedAutoScalingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.load_based_auto_scaling_configurations = (Parsers::LoadBasedAutoScalingConfigurations.parse(map['LoadBasedAutoScalingConfigurations']) unless map['LoadBasedAutoScalingConfigurations'].nil?)
        data
      end
    end

    class LoadBasedAutoScalingConfigurations
      def self.parse(list)
        list.map do |value|
          Parsers::LoadBasedAutoScalingConfiguration.parse(value) unless value.nil?
        end
      end
    end

    class LoadBasedAutoScalingConfiguration
      def self.parse(map)
        data = Types::LoadBasedAutoScalingConfiguration.new
        data.layer_id = map['LayerId']
        data.enable = map['Enable']
        data.up_scaling = (Parsers::AutoScalingThresholds.parse(map['UpScaling']) unless map['UpScaling'].nil?)
        data.down_scaling = (Parsers::AutoScalingThresholds.parse(map['DownScaling']) unless map['DownScaling'].nil?)
        return data
      end
    end

    class AutoScalingThresholds
      def self.parse(map)
        data = Types::AutoScalingThresholds.new
        data.instance_count = map['InstanceCount']
        data.thresholds_wait_time = map['ThresholdsWaitTime']
        data.ignore_metrics_time = map['IgnoreMetricsTime']
        data.cpu_threshold = Hearth::NumberHelper.deserialize(map['CpuThreshold'])
        data.memory_threshold = Hearth::NumberHelper.deserialize(map['MemoryThreshold'])
        data.load_threshold = Hearth::NumberHelper.deserialize(map['LoadThreshold'])
        data.alarms = (Parsers::Strings.parse(map['Alarms']) unless map['Alarms'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeMyUserProfile
    class DescribeMyUserProfile
      def self.parse(http_resp)
        data = Types::DescribeMyUserProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user_profile = (Parsers::SelfUserProfile.parse(map['UserProfile']) unless map['UserProfile'].nil?)
        data
      end
    end

    class SelfUserProfile
      def self.parse(map)
        data = Types::SelfUserProfile.new
        data.iam_user_arn = map['IamUserArn']
        data.name = map['Name']
        data.ssh_username = map['SshUsername']
        data.ssh_public_key = map['SshPublicKey']
        return data
      end
    end

    # Operation Parser for DescribeOperatingSystems
    class DescribeOperatingSystems
      def self.parse(http_resp)
        data = Types::DescribeOperatingSystemsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.operating_systems = (Parsers::OperatingSystems.parse(map['OperatingSystems']) unless map['OperatingSystems'].nil?)
        data
      end
    end

    class OperatingSystems
      def self.parse(list)
        list.map do |value|
          Parsers::OperatingSystem.parse(value) unless value.nil?
        end
      end
    end

    class OperatingSystem
      def self.parse(map)
        data = Types::OperatingSystem.new
        data.name = map['Name']
        data.id = map['Id']
        data.type = map['Type']
        data.configuration_managers = (Parsers::OperatingSystemConfigurationManagers.parse(map['ConfigurationManagers']) unless map['ConfigurationManagers'].nil?)
        data.reported_name = map['ReportedName']
        data.reported_version = map['ReportedVersion']
        data.supported = map['Supported']
        return data
      end
    end

    class OperatingSystemConfigurationManagers
      def self.parse(list)
        list.map do |value|
          Parsers::OperatingSystemConfigurationManager.parse(value) unless value.nil?
        end
      end
    end

    class OperatingSystemConfigurationManager
      def self.parse(map)
        data = Types::OperatingSystemConfigurationManager.new
        data.name = map['Name']
        data.version = map['Version']
        return data
      end
    end

    # Operation Parser for DescribePermissions
    class DescribePermissions
      def self.parse(http_resp)
        data = Types::DescribePermissionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.permissions = (Parsers::Permissions.parse(map['Permissions']) unless map['Permissions'].nil?)
        data
      end
    end

    class Permissions
      def self.parse(list)
        list.map do |value|
          Parsers::Permission.parse(value) unless value.nil?
        end
      end
    end

    class Permission
      def self.parse(map)
        data = Types::Permission.new
        data.stack_id = map['StackId']
        data.iam_user_arn = map['IamUserArn']
        data.allow_ssh = map['AllowSsh']
        data.allow_sudo = map['AllowSudo']
        data.level = map['Level']
        return data
      end
    end

    # Operation Parser for DescribeRaidArrays
    class DescribeRaidArrays
      def self.parse(http_resp)
        data = Types::DescribeRaidArraysOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.raid_arrays = (Parsers::RaidArrays.parse(map['RaidArrays']) unless map['RaidArrays'].nil?)
        data
      end
    end

    class RaidArrays
      def self.parse(list)
        list.map do |value|
          Parsers::RaidArray.parse(value) unless value.nil?
        end
      end
    end

    class RaidArray
      def self.parse(map)
        data = Types::RaidArray.new
        data.raid_array_id = map['RaidArrayId']
        data.instance_id = map['InstanceId']
        data.name = map['Name']
        data.raid_level = map['RaidLevel']
        data.number_of_disks = map['NumberOfDisks']
        data.size = map['Size']
        data.device = map['Device']
        data.mount_point = map['MountPoint']
        data.availability_zone = map['AvailabilityZone']
        data.created_at = map['CreatedAt']
        data.stack_id = map['StackId']
        data.volume_type = map['VolumeType']
        data.iops = map['Iops']
        return data
      end
    end

    # Operation Parser for DescribeRdsDbInstances
    class DescribeRdsDbInstances
      def self.parse(http_resp)
        data = Types::DescribeRdsDbInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.rds_db_instances = (Parsers::RdsDbInstances.parse(map['RdsDbInstances']) unless map['RdsDbInstances'].nil?)
        data
      end
    end

    class RdsDbInstances
      def self.parse(list)
        list.map do |value|
          Parsers::RdsDbInstance.parse(value) unless value.nil?
        end
      end
    end

    class RdsDbInstance
      def self.parse(map)
        data = Types::RdsDbInstance.new
        data.rds_db_instance_arn = map['RdsDbInstanceArn']
        data.db_instance_identifier = map['DbInstanceIdentifier']
        data.db_user = map['DbUser']
        data.db_password = map['DbPassword']
        data.region = map['Region']
        data.address = map['Address']
        data.engine = map['Engine']
        data.stack_id = map['StackId']
        data.missing_on_rds = map['MissingOnRds']
        return data
      end
    end

    # Operation Parser for DescribeServiceErrors
    class DescribeServiceErrors
      def self.parse(http_resp)
        data = Types::DescribeServiceErrorsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service_errors = (Parsers::ServiceErrors.parse(map['ServiceErrors']) unless map['ServiceErrors'].nil?)
        data
      end
    end

    class ServiceErrors
      def self.parse(list)
        list.map do |value|
          Parsers::ServiceError.parse(value) unless value.nil?
        end
      end
    end

    class ServiceError
      def self.parse(map)
        data = Types::ServiceError.new
        data.service_error_id = map['ServiceErrorId']
        data.stack_id = map['StackId']
        data.instance_id = map['InstanceId']
        data.type = map['Type']
        data.message = map['Message']
        data.created_at = map['CreatedAt']
        return data
      end
    end

    # Operation Parser for DescribeStackProvisioningParameters
    class DescribeStackProvisioningParameters
      def self.parse(http_resp)
        data = Types::DescribeStackProvisioningParametersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.agent_installer_url = map['AgentInstallerUrl']
        data.parameters = (Parsers::Parameters.parse(map['Parameters']) unless map['Parameters'].nil?)
        data
      end
    end

    class Parameters
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeStackSummary
    class DescribeStackSummary
      def self.parse(http_resp)
        data = Types::DescribeStackSummaryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.stack_summary = (Parsers::StackSummary.parse(map['StackSummary']) unless map['StackSummary'].nil?)
        data
      end
    end

    class StackSummary
      def self.parse(map)
        data = Types::StackSummary.new
        data.stack_id = map['StackId']
        data.name = map['Name']
        data.arn = map['Arn']
        data.layers_count = map['LayersCount']
        data.apps_count = map['AppsCount']
        data.instances_count = (Parsers::InstancesCount.parse(map['InstancesCount']) unless map['InstancesCount'].nil?)
        return data
      end
    end

    class InstancesCount
      def self.parse(map)
        data = Types::InstancesCount.new
        data.assigning = map['Assigning']
        data.booting = map['Booting']
        data.connection_lost = map['ConnectionLost']
        data.deregistering = map['Deregistering']
        data.online = map['Online']
        data.pending = map['Pending']
        data.rebooting = map['Rebooting']
        data.registered = map['Registered']
        data.registering = map['Registering']
        data.requested = map['Requested']
        data.running_setup = map['RunningSetup']
        data.setup_failed = map['SetupFailed']
        data.shutting_down = map['ShuttingDown']
        data.start_failed = map['StartFailed']
        data.stop_failed = map['StopFailed']
        data.stopped = map['Stopped']
        data.stopping = map['Stopping']
        data.terminated = map['Terminated']
        data.terminating = map['Terminating']
        data.unassigning = map['Unassigning']
        return data
      end
    end

    # Operation Parser for DescribeStacks
    class DescribeStacks
      def self.parse(http_resp)
        data = Types::DescribeStacksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.stacks = (Parsers::Stacks.parse(map['Stacks']) unless map['Stacks'].nil?)
        data
      end
    end

    class Stacks
      def self.parse(list)
        list.map do |value|
          Parsers::Stack.parse(value) unless value.nil?
        end
      end
    end

    class Stack
      def self.parse(map)
        data = Types::Stack.new
        data.stack_id = map['StackId']
        data.name = map['Name']
        data.arn = map['Arn']
        data.region = map['Region']
        data.vpc_id = map['VpcId']
        data.attributes = (Parsers::StackAttributes.parse(map['Attributes']) unless map['Attributes'].nil?)
        data.service_role_arn = map['ServiceRoleArn']
        data.default_instance_profile_arn = map['DefaultInstanceProfileArn']
        data.default_os = map['DefaultOs']
        data.hostname_theme = map['HostnameTheme']
        data.default_availability_zone = map['DefaultAvailabilityZone']
        data.default_subnet_id = map['DefaultSubnetId']
        data.custom_json = map['CustomJson']
        data.configuration_manager = (Parsers::StackConfigurationManager.parse(map['ConfigurationManager']) unless map['ConfigurationManager'].nil?)
        data.chef_configuration = (Parsers::ChefConfiguration.parse(map['ChefConfiguration']) unless map['ChefConfiguration'].nil?)
        data.use_custom_cookbooks = map['UseCustomCookbooks']
        data.use_opsworks_security_groups = map['UseOpsworksSecurityGroups']
        data.custom_cookbooks_source = (Parsers::Source.parse(map['CustomCookbooksSource']) unless map['CustomCookbooksSource'].nil?)
        data.default_ssh_key_name = map['DefaultSshKeyName']
        data.created_at = map['CreatedAt']
        data.default_root_device_type = map['DefaultRootDeviceType']
        data.agent_version = map['AgentVersion']
        return data
      end
    end

    class ChefConfiguration
      def self.parse(map)
        data = Types::ChefConfiguration.new
        data.manage_berkshelf = map['ManageBerkshelf']
        data.berkshelf_version = map['BerkshelfVersion']
        return data
      end
    end

    class StackAttributes
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeTimeBasedAutoScaling
    class DescribeTimeBasedAutoScaling
      def self.parse(http_resp)
        data = Types::DescribeTimeBasedAutoScalingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.time_based_auto_scaling_configurations = (Parsers::TimeBasedAutoScalingConfigurations.parse(map['TimeBasedAutoScalingConfigurations']) unless map['TimeBasedAutoScalingConfigurations'].nil?)
        data
      end
    end

    class TimeBasedAutoScalingConfigurations
      def self.parse(list)
        list.map do |value|
          Parsers::TimeBasedAutoScalingConfiguration.parse(value) unless value.nil?
        end
      end
    end

    class TimeBasedAutoScalingConfiguration
      def self.parse(map)
        data = Types::TimeBasedAutoScalingConfiguration.new
        data.instance_id = map['InstanceId']
        data.auto_scaling_schedule = (Parsers::WeeklyAutoScalingSchedule.parse(map['AutoScalingSchedule']) unless map['AutoScalingSchedule'].nil?)
        return data
      end
    end

    class WeeklyAutoScalingSchedule
      def self.parse(map)
        data = Types::WeeklyAutoScalingSchedule.new
        data.monday = (Parsers::DailyAutoScalingSchedule.parse(map['Monday']) unless map['Monday'].nil?)
        data.tuesday = (Parsers::DailyAutoScalingSchedule.parse(map['Tuesday']) unless map['Tuesday'].nil?)
        data.wednesday = (Parsers::DailyAutoScalingSchedule.parse(map['Wednesday']) unless map['Wednesday'].nil?)
        data.thursday = (Parsers::DailyAutoScalingSchedule.parse(map['Thursday']) unless map['Thursday'].nil?)
        data.friday = (Parsers::DailyAutoScalingSchedule.parse(map['Friday']) unless map['Friday'].nil?)
        data.saturday = (Parsers::DailyAutoScalingSchedule.parse(map['Saturday']) unless map['Saturday'].nil?)
        data.sunday = (Parsers::DailyAutoScalingSchedule.parse(map['Sunday']) unless map['Sunday'].nil?)
        return data
      end
    end

    class DailyAutoScalingSchedule
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeUserProfiles
    class DescribeUserProfiles
      def self.parse(http_resp)
        data = Types::DescribeUserProfilesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user_profiles = (Parsers::UserProfiles.parse(map['UserProfiles']) unless map['UserProfiles'].nil?)
        data
      end
    end

    class UserProfiles
      def self.parse(list)
        list.map do |value|
          Parsers::UserProfile.parse(value) unless value.nil?
        end
      end
    end

    class UserProfile
      def self.parse(map)
        data = Types::UserProfile.new
        data.iam_user_arn = map['IamUserArn']
        data.name = map['Name']
        data.ssh_username = map['SshUsername']
        data.ssh_public_key = map['SshPublicKey']
        data.allow_self_management = map['AllowSelfManagement']
        return data
      end
    end

    # Operation Parser for DescribeVolumes
    class DescribeVolumes
      def self.parse(http_resp)
        data = Types::DescribeVolumesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.volumes = (Parsers::Volumes.parse(map['Volumes']) unless map['Volumes'].nil?)
        data
      end
    end

    class Volumes
      def self.parse(list)
        list.map do |value|
          Parsers::Volume.parse(value) unless value.nil?
        end
      end
    end

    class Volume
      def self.parse(map)
        data = Types::Volume.new
        data.volume_id = map['VolumeId']
        data.ec2_volume_id = map['Ec2VolumeId']
        data.name = map['Name']
        data.raid_array_id = map['RaidArrayId']
        data.instance_id = map['InstanceId']
        data.status = map['Status']
        data.size = map['Size']
        data.device = map['Device']
        data.mount_point = map['MountPoint']
        data.region = map['Region']
        data.availability_zone = map['AvailabilityZone']
        data.volume_type = map['VolumeType']
        data.iops = map['Iops']
        data.encrypted = map['Encrypted']
        return data
      end
    end

    # Operation Parser for DetachElasticLoadBalancer
    class DetachElasticLoadBalancer
      def self.parse(http_resp)
        data = Types::DetachElasticLoadBalancerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DisassociateElasticIp
    class DisassociateElasticIp
      def self.parse(http_resp)
        data = Types::DisassociateElasticIpOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for GetHostnameSuggestion
    class GetHostnameSuggestion
      def self.parse(http_resp)
        data = Types::GetHostnameSuggestionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.layer_id = map['LayerId']
        data.hostname = map['Hostname']
        data
      end
    end

    # Operation Parser for GrantAccess
    class GrantAccess
      def self.parse(http_resp)
        data = Types::GrantAccessOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.temporary_credential = (Parsers::TemporaryCredential.parse(map['TemporaryCredential']) unless map['TemporaryCredential'].nil?)
        data
      end
    end

    class TemporaryCredential
      def self.parse(map)
        data = Types::TemporaryCredential.new
        data.username = map['Username']
        data.password = map['Password']
        data.valid_for_in_minutes = map['ValidForInMinutes']
        data.instance_id = map['InstanceId']
        return data
      end
    end

    # Operation Parser for ListTags
    class ListTags
      def self.parse(http_resp)
        data = Types::ListTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Tags
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for RebootInstance
    class RebootInstance
      def self.parse(http_resp)
        data = Types::RebootInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for RegisterEcsCluster
    class RegisterEcsCluster
      def self.parse(http_resp)
        data = Types::RegisterEcsClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.ecs_cluster_arn = map['EcsClusterArn']
        data
      end
    end

    # Operation Parser for RegisterElasticIp
    class RegisterElasticIp
      def self.parse(http_resp)
        data = Types::RegisterElasticIpOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.elastic_ip = map['ElasticIp']
        data
      end
    end

    # Operation Parser for RegisterInstance
    class RegisterInstance
      def self.parse(http_resp)
        data = Types::RegisterInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.instance_id = map['InstanceId']
        data
      end
    end

    # Operation Parser for RegisterRdsDbInstance
    class RegisterRdsDbInstance
      def self.parse(http_resp)
        data = Types::RegisterRdsDbInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for RegisterVolume
    class RegisterVolume
      def self.parse(http_resp)
        data = Types::RegisterVolumeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.volume_id = map['VolumeId']
        data
      end
    end

    # Operation Parser for SetLoadBasedAutoScaling
    class SetLoadBasedAutoScaling
      def self.parse(http_resp)
        data = Types::SetLoadBasedAutoScalingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for SetPermission
    class SetPermission
      def self.parse(http_resp)
        data = Types::SetPermissionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for SetTimeBasedAutoScaling
    class SetTimeBasedAutoScaling
      def self.parse(http_resp)
        data = Types::SetTimeBasedAutoScalingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StartInstance
    class StartInstance
      def self.parse(http_resp)
        data = Types::StartInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StartStack
    class StartStack
      def self.parse(http_resp)
        data = Types::StartStackOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StopInstance
    class StopInstance
      def self.parse(http_resp)
        data = Types::StopInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StopStack
    class StopStack
      def self.parse(http_resp)
        data = Types::StopStackOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UnassignInstance
    class UnassignInstance
      def self.parse(http_resp)
        data = Types::UnassignInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UnassignVolume
    class UnassignVolume
      def self.parse(http_resp)
        data = Types::UnassignVolumeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateApp
    class UpdateApp
      def self.parse(http_resp)
        data = Types::UpdateAppOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateElasticIp
    class UpdateElasticIp
      def self.parse(http_resp)
        data = Types::UpdateElasticIpOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateInstance
    class UpdateInstance
      def self.parse(http_resp)
        data = Types::UpdateInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateLayer
    class UpdateLayer
      def self.parse(http_resp)
        data = Types::UpdateLayerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateMyUserProfile
    class UpdateMyUserProfile
      def self.parse(http_resp)
        data = Types::UpdateMyUserProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateRdsDbInstance
    class UpdateRdsDbInstance
      def self.parse(http_resp)
        data = Types::UpdateRdsDbInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateStack
    class UpdateStack
      def self.parse(http_resp)
        data = Types::UpdateStackOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateUserProfile
    class UpdateUserProfile
      def self.parse(http_resp)
        data = Types::UpdateUserProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateVolume
    class UpdateVolume
      def self.parse(http_resp)
        data = Types::UpdateVolumeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
