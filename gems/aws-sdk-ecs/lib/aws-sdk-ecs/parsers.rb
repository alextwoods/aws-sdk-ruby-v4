# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::ECS
  module Parsers

    # Operation Parser for CreateCapacityProvider
    class CreateCapacityProvider
      def self.parse(http_resp)
        data = Types::CreateCapacityProviderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.capacity_provider = (Parsers::CapacityProvider.parse(map['capacityProvider']) unless map['capacityProvider'].nil?)
        data
      end
    end

    class CapacityProvider
      def self.parse(map)
        data = Types::CapacityProvider.new
        data.capacity_provider_arn = map['capacityProviderArn']
        data.name = map['name']
        data.status = map['status']
        data.auto_scaling_group_provider = (Parsers::AutoScalingGroupProvider.parse(map['autoScalingGroupProvider']) unless map['autoScalingGroupProvider'].nil?)
        data.update_status = map['updateStatus']
        data.update_status_reason = map['updateStatusReason']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class Tags
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['key']
        data.value = map['value']
        return data
      end
    end

    class AutoScalingGroupProvider
      def self.parse(map)
        data = Types::AutoScalingGroupProvider.new
        data.auto_scaling_group_arn = map['autoScalingGroupArn']
        data.managed_scaling = (Parsers::ManagedScaling.parse(map['managedScaling']) unless map['managedScaling'].nil?)
        data.managed_termination_protection = map['managedTerminationProtection']
        return data
      end
    end

    class ManagedScaling
      def self.parse(map)
        data = Types::ManagedScaling.new
        data.status = map['status']
        data.target_capacity = map['targetCapacity']
        data.minimum_scaling_step_size = map['minimumScalingStepSize']
        data.maximum_scaling_step_size = map['maximumScalingStepSize']
        data.instance_warmup_period = map['instanceWarmupPeriod']
        return data
      end
    end

    # Error Parser for ServerException
    class ServerException
      def self.parse(http_resp)
        data = Types::ServerException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for UpdateInProgressException
    class UpdateInProgressException
      def self.parse(http_resp)
        data = Types::UpdateInProgressException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidParameterException
    class InvalidParameterException
      def self.parse(http_resp)
        data = Types::InvalidParameterException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ClientException
    class ClientException
      def self.parse(http_resp)
        data = Types::ClientException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateCluster
    class CreateCluster
      def self.parse(http_resp)
        data = Types::CreateClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cluster = (Parsers::Cluster.parse(map['cluster']) unless map['cluster'].nil?)
        data
      end
    end

    class Cluster
      def self.parse(map)
        data = Types::Cluster.new
        data.cluster_arn = map['clusterArn']
        data.cluster_name = map['clusterName']
        data.configuration = (Parsers::ClusterConfiguration.parse(map['configuration']) unless map['configuration'].nil?)
        data.status = map['status']
        data.registered_container_instances_count = map['registeredContainerInstancesCount']
        data.running_tasks_count = map['runningTasksCount']
        data.pending_tasks_count = map['pendingTasksCount']
        data.active_services_count = map['activeServicesCount']
        data.statistics = (Parsers::Statistics.parse(map['statistics']) unless map['statistics'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.settings = (Parsers::ClusterSettings.parse(map['settings']) unless map['settings'].nil?)
        data.capacity_providers = (Parsers::StringList.parse(map['capacityProviders']) unless map['capacityProviders'].nil?)
        data.default_capacity_provider_strategy = (Parsers::CapacityProviderStrategy.parse(map['defaultCapacityProviderStrategy']) unless map['defaultCapacityProviderStrategy'].nil?)
        data.attachments = (Parsers::Attachments.parse(map['attachments']) unless map['attachments'].nil?)
        data.attachments_status = map['attachmentsStatus']
        return data
      end
    end

    class Attachments
      def self.parse(list)
        list.map do |value|
          Parsers::Attachment.parse(value) unless value.nil?
        end
      end
    end

    class Attachment
      def self.parse(map)
        data = Types::Attachment.new
        data.id = map['id']
        data.type = map['type']
        data.status = map['status']
        data.details = (Parsers::AttachmentDetails.parse(map['details']) unless map['details'].nil?)
        return data
      end
    end

    class AttachmentDetails
      def self.parse(list)
        list.map do |value|
          Parsers::KeyValuePair.parse(value) unless value.nil?
        end
      end
    end

    class KeyValuePair
      def self.parse(map)
        data = Types::KeyValuePair.new
        data.name = map['name']
        data.value = map['value']
        return data
      end
    end

    class CapacityProviderStrategy
      def self.parse(list)
        list.map do |value|
          Parsers::CapacityProviderStrategyItem.parse(value) unless value.nil?
        end
      end
    end

    class CapacityProviderStrategyItem
      def self.parse(map)
        data = Types::CapacityProviderStrategyItem.new
        data.capacity_provider = map['capacityProvider']
        data.weight = map['weight']
        data.base = map['base']
        return data
      end
    end

    class StringList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ClusterSettings
      def self.parse(list)
        list.map do |value|
          Parsers::ClusterSetting.parse(value) unless value.nil?
        end
      end
    end

    class ClusterSetting
      def self.parse(map)
        data = Types::ClusterSetting.new
        data.name = map['name']
        data.value = map['value']
        return data
      end
    end

    class Statistics
      def self.parse(list)
        list.map do |value|
          Parsers::KeyValuePair.parse(value) unless value.nil?
        end
      end
    end

    class ClusterConfiguration
      def self.parse(map)
        data = Types::ClusterConfiguration.new
        data.execute_command_configuration = (Parsers::ExecuteCommandConfiguration.parse(map['executeCommandConfiguration']) unless map['executeCommandConfiguration'].nil?)
        return data
      end
    end

    class ExecuteCommandConfiguration
      def self.parse(map)
        data = Types::ExecuteCommandConfiguration.new
        data.kms_key_id = map['kmsKeyId']
        data.logging = map['logging']
        data.log_configuration = (Parsers::ExecuteCommandLogConfiguration.parse(map['logConfiguration']) unless map['logConfiguration'].nil?)
        return data
      end
    end

    class ExecuteCommandLogConfiguration
      def self.parse(map)
        data = Types::ExecuteCommandLogConfiguration.new
        data.cloud_watch_log_group_name = map['cloudWatchLogGroupName']
        data.cloud_watch_encryption_enabled = map['cloudWatchEncryptionEnabled']
        data.s3_bucket_name = map['s3BucketName']
        data.s3_encryption_enabled = map['s3EncryptionEnabled']
        data.s3_key_prefix = map['s3KeyPrefix']
        return data
      end
    end

    # Operation Parser for CreateService
    class CreateService
      def self.parse(http_resp)
        data = Types::CreateServiceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service = (Parsers::Service.parse(map['service']) unless map['service'].nil?)
        data
      end
    end

    class Service
      def self.parse(map)
        data = Types::Service.new
        data.service_arn = map['serviceArn']
        data.service_name = map['serviceName']
        data.cluster_arn = map['clusterArn']
        data.load_balancers = (Parsers::LoadBalancers.parse(map['loadBalancers']) unless map['loadBalancers'].nil?)
        data.service_registries = (Parsers::ServiceRegistries.parse(map['serviceRegistries']) unless map['serviceRegistries'].nil?)
        data.status = map['status']
        data.desired_count = map['desiredCount']
        data.running_count = map['runningCount']
        data.pending_count = map['pendingCount']
        data.launch_type = map['launchType']
        data.capacity_provider_strategy = (Parsers::CapacityProviderStrategy.parse(map['capacityProviderStrategy']) unless map['capacityProviderStrategy'].nil?)
        data.platform_version = map['platformVersion']
        data.platform_family = map['platformFamily']
        data.task_definition = map['taskDefinition']
        data.deployment_configuration = (Parsers::DeploymentConfiguration.parse(map['deploymentConfiguration']) unless map['deploymentConfiguration'].nil?)
        data.task_sets = (Parsers::TaskSets.parse(map['taskSets']) unless map['taskSets'].nil?)
        data.deployments = (Parsers::Deployments.parse(map['deployments']) unless map['deployments'].nil?)
        data.role_arn = map['roleArn']
        data.events = (Parsers::ServiceEvents.parse(map['events']) unless map['events'].nil?)
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.placement_constraints = (Parsers::PlacementConstraints.parse(map['placementConstraints']) unless map['placementConstraints'].nil?)
        data.placement_strategy = (Parsers::PlacementStrategies.parse(map['placementStrategy']) unless map['placementStrategy'].nil?)
        data.network_configuration = (Parsers::NetworkConfiguration.parse(map['networkConfiguration']) unless map['networkConfiguration'].nil?)
        data.health_check_grace_period_seconds = map['healthCheckGracePeriodSeconds']
        data.scheduling_strategy = map['schedulingStrategy']
        data.deployment_controller = (Parsers::DeploymentController.parse(map['deploymentController']) unless map['deploymentController'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.created_by = map['createdBy']
        data.enable_ecs_managed_tags = map['enableECSManagedTags']
        data.propagate_tags = map['propagateTags']
        data.enable_execute_command = map['enableExecuteCommand']
        return data
      end
    end

    class DeploymentController
      def self.parse(map)
        data = Types::DeploymentController.new
        data.type = map['type']
        return data
      end
    end

    class NetworkConfiguration
      def self.parse(map)
        data = Types::NetworkConfiguration.new
        data.awsvpc_configuration = (Parsers::AwsVpcConfiguration.parse(map['awsvpcConfiguration']) unless map['awsvpcConfiguration'].nil?)
        return data
      end
    end

    class AwsVpcConfiguration
      def self.parse(map)
        data = Types::AwsVpcConfiguration.new
        data.subnets = (Parsers::StringList.parse(map['subnets']) unless map['subnets'].nil?)
        data.security_groups = (Parsers::StringList.parse(map['securityGroups']) unless map['securityGroups'].nil?)
        data.assign_public_ip = map['assignPublicIp']
        return data
      end
    end

    class PlacementStrategies
      def self.parse(list)
        list.map do |value|
          Parsers::PlacementStrategy.parse(value) unless value.nil?
        end
      end
    end

    class PlacementStrategy
      def self.parse(map)
        data = Types::PlacementStrategy.new
        data.type = map['type']
        data.field = map['field']
        return data
      end
    end

    class PlacementConstraints
      def self.parse(list)
        list.map do |value|
          Parsers::PlacementConstraint.parse(value) unless value.nil?
        end
      end
    end

    class PlacementConstraint
      def self.parse(map)
        data = Types::PlacementConstraint.new
        data.type = map['type']
        data.expression = map['expression']
        return data
      end
    end

    class ServiceEvents
      def self.parse(list)
        list.map do |value|
          Parsers::ServiceEvent.parse(value) unless value.nil?
        end
      end
    end

    class ServiceEvent
      def self.parse(map)
        data = Types::ServiceEvent.new
        data.id = map['id']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.message = map['message']
        return data
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
        data.id = map['id']
        data.status = map['status']
        data.task_definition = map['taskDefinition']
        data.desired_count = map['desiredCount']
        data.pending_count = map['pendingCount']
        data.running_count = map['runningCount']
        data.failed_tasks = map['failedTasks']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.updated_at = Time.at(map['updatedAt'].to_i) if map['updatedAt']
        data.capacity_provider_strategy = (Parsers::CapacityProviderStrategy.parse(map['capacityProviderStrategy']) unless map['capacityProviderStrategy'].nil?)
        data.launch_type = map['launchType']
        data.platform_version = map['platformVersion']
        data.platform_family = map['platformFamily']
        data.network_configuration = (Parsers::NetworkConfiguration.parse(map['networkConfiguration']) unless map['networkConfiguration'].nil?)
        data.rollout_state = map['rolloutState']
        data.rollout_state_reason = map['rolloutStateReason']
        return data
      end
    end

    class TaskSets
      def self.parse(list)
        list.map do |value|
          Parsers::TaskSet.parse(value) unless value.nil?
        end
      end
    end

    class TaskSet
      def self.parse(map)
        data = Types::TaskSet.new
        data.id = map['id']
        data.task_set_arn = map['taskSetArn']
        data.service_arn = map['serviceArn']
        data.cluster_arn = map['clusterArn']
        data.started_by = map['startedBy']
        data.external_id = map['externalId']
        data.status = map['status']
        data.task_definition = map['taskDefinition']
        data.computed_desired_count = map['computedDesiredCount']
        data.pending_count = map['pendingCount']
        data.running_count = map['runningCount']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.updated_at = Time.at(map['updatedAt'].to_i) if map['updatedAt']
        data.launch_type = map['launchType']
        data.capacity_provider_strategy = (Parsers::CapacityProviderStrategy.parse(map['capacityProviderStrategy']) unless map['capacityProviderStrategy'].nil?)
        data.platform_version = map['platformVersion']
        data.platform_family = map['platformFamily']
        data.network_configuration = (Parsers::NetworkConfiguration.parse(map['networkConfiguration']) unless map['networkConfiguration'].nil?)
        data.load_balancers = (Parsers::LoadBalancers.parse(map['loadBalancers']) unless map['loadBalancers'].nil?)
        data.service_registries = (Parsers::ServiceRegistries.parse(map['serviceRegistries']) unless map['serviceRegistries'].nil?)
        data.scale = (Parsers::Scale.parse(map['scale']) unless map['scale'].nil?)
        data.stability_status = map['stabilityStatus']
        data.stability_status_at = Time.at(map['stabilityStatusAt'].to_i) if map['stabilityStatusAt']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class Scale
      def self.parse(map)
        data = Types::Scale.new
        data.value = Hearth::NumberHelper.deserialize(map['value'])
        data.unit = map['unit']
        return data
      end
    end

    class ServiceRegistries
      def self.parse(list)
        list.map do |value|
          Parsers::ServiceRegistry.parse(value) unless value.nil?
        end
      end
    end

    class ServiceRegistry
      def self.parse(map)
        data = Types::ServiceRegistry.new
        data.registry_arn = map['registryArn']
        data.port = map['port']
        data.container_name = map['containerName']
        data.container_port = map['containerPort']
        return data
      end
    end

    class LoadBalancers
      def self.parse(list)
        list.map do |value|
          Parsers::LoadBalancer.parse(value) unless value.nil?
        end
      end
    end

    class LoadBalancer
      def self.parse(map)
        data = Types::LoadBalancer.new
        data.target_group_arn = map['targetGroupArn']
        data.load_balancer_name = map['loadBalancerName']
        data.container_name = map['containerName']
        data.container_port = map['containerPort']
        return data
      end
    end

    class DeploymentConfiguration
      def self.parse(map)
        data = Types::DeploymentConfiguration.new
        data.deployment_circuit_breaker = (Parsers::DeploymentCircuitBreaker.parse(map['deploymentCircuitBreaker']) unless map['deploymentCircuitBreaker'].nil?)
        data.maximum_percent = map['maximumPercent']
        data.minimum_healthy_percent = map['minimumHealthyPercent']
        return data
      end
    end

    class DeploymentCircuitBreaker
      def self.parse(map)
        data = Types::DeploymentCircuitBreaker.new
        data.enable = map['enable']
        data.rollback = map['rollback']
        return data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ClusterNotFoundException
    class ClusterNotFoundException
      def self.parse(http_resp)
        data = Types::ClusterNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for PlatformUnknownException
    class PlatformUnknownException
      def self.parse(http_resp)
        data = Types::PlatformUnknownException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for UnsupportedFeatureException
    class UnsupportedFeatureException
      def self.parse(http_resp)
        data = Types::UnsupportedFeatureException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for PlatformTaskDefinitionIncompatibilityException
    class PlatformTaskDefinitionIncompatibilityException
      def self.parse(http_resp)
        data = Types::PlatformTaskDefinitionIncompatibilityException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateTaskSet
    class CreateTaskSet
      def self.parse(http_resp)
        data = Types::CreateTaskSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.task_set = (Parsers::TaskSet.parse(map['taskSet']) unless map['taskSet'].nil?)
        data
      end
    end

    # Error Parser for ServiceNotFoundException
    class ServiceNotFoundException
      def self.parse(http_resp)
        data = Types::ServiceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ServiceNotActiveException
    class ServiceNotActiveException
      def self.parse(http_resp)
        data = Types::ServiceNotActiveException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteAccountSetting
    class DeleteAccountSetting
      def self.parse(http_resp)
        data = Types::DeleteAccountSettingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.setting = (Parsers::Setting.parse(map['setting']) unless map['setting'].nil?)
        data
      end
    end

    class Setting
      def self.parse(map)
        data = Types::Setting.new
        data.name = map['name']
        data.value = map['value']
        data.principal_arn = map['principalArn']
        return data
      end
    end

    # Operation Parser for DeleteAttributes
    class DeleteAttributes
      def self.parse(http_resp)
        data = Types::DeleteAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.attributes = (Parsers::Attributes.parse(map['attributes']) unless map['attributes'].nil?)
        data
      end
    end

    class Attributes
      def self.parse(list)
        list.map do |value|
          Parsers::Attribute.parse(value) unless value.nil?
        end
      end
    end

    class Attribute
      def self.parse(map)
        data = Types::Attribute.new
        data.name = map['name']
        data.value = map['value']
        data.target_type = map['targetType']
        data.target_id = map['targetId']
        return data
      end
    end

    # Error Parser for TargetNotFoundException
    class TargetNotFoundException
      def self.parse(http_resp)
        data = Types::TargetNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteCapacityProvider
    class DeleteCapacityProvider
      def self.parse(http_resp)
        data = Types::DeleteCapacityProviderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.capacity_provider = (Parsers::CapacityProvider.parse(map['capacityProvider']) unless map['capacityProvider'].nil?)
        data
      end
    end

    # Operation Parser for DeleteCluster
    class DeleteCluster
      def self.parse(http_resp)
        data = Types::DeleteClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cluster = (Parsers::Cluster.parse(map['cluster']) unless map['cluster'].nil?)
        data
      end
    end

    # Error Parser for ClusterContainsServicesException
    class ClusterContainsServicesException
      def self.parse(http_resp)
        data = Types::ClusterContainsServicesException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ClusterContainsTasksException
    class ClusterContainsTasksException
      def self.parse(http_resp)
        data = Types::ClusterContainsTasksException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ClusterContainsContainerInstancesException
    class ClusterContainsContainerInstancesException
      def self.parse(http_resp)
        data = Types::ClusterContainsContainerInstancesException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteService
    class DeleteService
      def self.parse(http_resp)
        data = Types::DeleteServiceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service = (Parsers::Service.parse(map['service']) unless map['service'].nil?)
        data
      end
    end

    # Operation Parser for DeleteTaskSet
    class DeleteTaskSet
      def self.parse(http_resp)
        data = Types::DeleteTaskSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.task_set = (Parsers::TaskSet.parse(map['taskSet']) unless map['taskSet'].nil?)
        data
      end
    end

    # Error Parser for TaskSetNotFoundException
    class TaskSetNotFoundException
      def self.parse(http_resp)
        data = Types::TaskSetNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeregisterContainerInstance
    class DeregisterContainerInstance
      def self.parse(http_resp)
        data = Types::DeregisterContainerInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.container_instance = (Parsers::ContainerInstance.parse(map['containerInstance']) unless map['containerInstance'].nil?)
        data
      end
    end

    class ContainerInstance
      def self.parse(map)
        data = Types::ContainerInstance.new
        data.container_instance_arn = map['containerInstanceArn']
        data.ec2_instance_id = map['ec2InstanceId']
        data.capacity_provider_name = map['capacityProviderName']
        data.version = map['version']
        data.version_info = (Parsers::VersionInfo.parse(map['versionInfo']) unless map['versionInfo'].nil?)
        data.remaining_resources = (Parsers::Resources.parse(map['remainingResources']) unless map['remainingResources'].nil?)
        data.registered_resources = (Parsers::Resources.parse(map['registeredResources']) unless map['registeredResources'].nil?)
        data.status = map['status']
        data.status_reason = map['statusReason']
        data.agent_connected = map['agentConnected']
        data.running_tasks_count = map['runningTasksCount']
        data.pending_tasks_count = map['pendingTasksCount']
        data.agent_update_status = map['agentUpdateStatus']
        data.attributes = (Parsers::Attributes.parse(map['attributes']) unless map['attributes'].nil?)
        data.registered_at = Time.at(map['registeredAt'].to_i) if map['registeredAt']
        data.attachments = (Parsers::Attachments.parse(map['attachments']) unless map['attachments'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.health_status = (Parsers::ContainerInstanceHealthStatus.parse(map['healthStatus']) unless map['healthStatus'].nil?)
        return data
      end
    end

    class ContainerInstanceHealthStatus
      def self.parse(map)
        data = Types::ContainerInstanceHealthStatus.new
        data.overall_status = map['overallStatus']
        data.details = (Parsers::InstanceHealthCheckResultList.parse(map['details']) unless map['details'].nil?)
        return data
      end
    end

    class InstanceHealthCheckResultList
      def self.parse(list)
        list.map do |value|
          Parsers::InstanceHealthCheckResult.parse(value) unless value.nil?
        end
      end
    end

    class InstanceHealthCheckResult
      def self.parse(map)
        data = Types::InstanceHealthCheckResult.new
        data.type = map['type']
        data.status = map['status']
        data.last_updated = Time.at(map['lastUpdated'].to_i) if map['lastUpdated']
        data.last_status_change = Time.at(map['lastStatusChange'].to_i) if map['lastStatusChange']
        return data
      end
    end

    class Resources
      def self.parse(list)
        list.map do |value|
          Parsers::Resource.parse(value) unless value.nil?
        end
      end
    end

    class Resource
      def self.parse(map)
        data = Types::Resource.new
        data.name = map['name']
        data.type = map['type']
        data.double_value = Hearth::NumberHelper.deserialize(map['doubleValue'])
        data.long_value = map['longValue']
        data.integer_value = map['integerValue']
        data.string_set_value = (Parsers::StringList.parse(map['stringSetValue']) unless map['stringSetValue'].nil?)
        return data
      end
    end

    class VersionInfo
      def self.parse(map)
        data = Types::VersionInfo.new
        data.agent_version = map['agentVersion']
        data.agent_hash = map['agentHash']
        data.docker_version = map['dockerVersion']
        return data
      end
    end

    # Operation Parser for DeregisterTaskDefinition
    class DeregisterTaskDefinition
      def self.parse(http_resp)
        data = Types::DeregisterTaskDefinitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.task_definition = (Parsers::TaskDefinition.parse(map['taskDefinition']) unless map['taskDefinition'].nil?)
        data
      end
    end

    class TaskDefinition
      def self.parse(map)
        data = Types::TaskDefinition.new
        data.task_definition_arn = map['taskDefinitionArn']
        data.container_definitions = (Parsers::ContainerDefinitions.parse(map['containerDefinitions']) unless map['containerDefinitions'].nil?)
        data.family = map['family']
        data.task_role_arn = map['taskRoleArn']
        data.execution_role_arn = map['executionRoleArn']
        data.network_mode = map['networkMode']
        data.revision = map['revision']
        data.volumes = (Parsers::VolumeList.parse(map['volumes']) unless map['volumes'].nil?)
        data.status = map['status']
        data.requires_attributes = (Parsers::RequiresAttributes.parse(map['requiresAttributes']) unless map['requiresAttributes'].nil?)
        data.placement_constraints = (Parsers::TaskDefinitionPlacementConstraints.parse(map['placementConstraints']) unless map['placementConstraints'].nil?)
        data.compatibilities = (Parsers::CompatibilityList.parse(map['compatibilities']) unless map['compatibilities'].nil?)
        data.runtime_platform = (Parsers::RuntimePlatform.parse(map['runtimePlatform']) unless map['runtimePlatform'].nil?)
        data.requires_compatibilities = (Parsers::CompatibilityList.parse(map['requiresCompatibilities']) unless map['requiresCompatibilities'].nil?)
        data.cpu = map['cpu']
        data.memory = map['memory']
        data.inference_accelerators = (Parsers::InferenceAccelerators.parse(map['inferenceAccelerators']) unless map['inferenceAccelerators'].nil?)
        data.pid_mode = map['pidMode']
        data.ipc_mode = map['ipcMode']
        data.proxy_configuration = (Parsers::ProxyConfiguration.parse(map['proxyConfiguration']) unless map['proxyConfiguration'].nil?)
        data.registered_at = Time.at(map['registeredAt'].to_i) if map['registeredAt']
        data.deregistered_at = Time.at(map['deregisteredAt'].to_i) if map['deregisteredAt']
        data.registered_by = map['registeredBy']
        data.ephemeral_storage = (Parsers::EphemeralStorage.parse(map['ephemeralStorage']) unless map['ephemeralStorage'].nil?)
        return data
      end
    end

    class EphemeralStorage
      def self.parse(map)
        data = Types::EphemeralStorage.new
        data.size_in_gi_b = map['sizeInGiB']
        return data
      end
    end

    class ProxyConfiguration
      def self.parse(map)
        data = Types::ProxyConfiguration.new
        data.type = map['type']
        data.container_name = map['containerName']
        data.properties = (Parsers::ProxyConfigurationProperties.parse(map['properties']) unless map['properties'].nil?)
        return data
      end
    end

    class ProxyConfigurationProperties
      def self.parse(list)
        list.map do |value|
          Parsers::KeyValuePair.parse(value) unless value.nil?
        end
      end
    end

    class InferenceAccelerators
      def self.parse(list)
        list.map do |value|
          Parsers::InferenceAccelerator.parse(value) unless value.nil?
        end
      end
    end

    class InferenceAccelerator
      def self.parse(map)
        data = Types::InferenceAccelerator.new
        data.device_name = map['deviceName']
        data.device_type = map['deviceType']
        return data
      end
    end

    class CompatibilityList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class RuntimePlatform
      def self.parse(map)
        data = Types::RuntimePlatform.new
        data.cpu_architecture = map['cpuArchitecture']
        data.operating_system_family = map['operatingSystemFamily']
        return data
      end
    end

    class TaskDefinitionPlacementConstraints
      def self.parse(list)
        list.map do |value|
          Parsers::TaskDefinitionPlacementConstraint.parse(value) unless value.nil?
        end
      end
    end

    class TaskDefinitionPlacementConstraint
      def self.parse(map)
        data = Types::TaskDefinitionPlacementConstraint.new
        data.type = map['type']
        data.expression = map['expression']
        return data
      end
    end

    class RequiresAttributes
      def self.parse(list)
        list.map do |value|
          Parsers::Attribute.parse(value) unless value.nil?
        end
      end
    end

    class VolumeList
      def self.parse(list)
        list.map do |value|
          Parsers::Volume.parse(value) unless value.nil?
        end
      end
    end

    class Volume
      def self.parse(map)
        data = Types::Volume.new
        data.name = map['name']
        data.host = (Parsers::HostVolumeProperties.parse(map['host']) unless map['host'].nil?)
        data.docker_volume_configuration = (Parsers::DockerVolumeConfiguration.parse(map['dockerVolumeConfiguration']) unless map['dockerVolumeConfiguration'].nil?)
        data.efs_volume_configuration = (Parsers::EFSVolumeConfiguration.parse(map['efsVolumeConfiguration']) unless map['efsVolumeConfiguration'].nil?)
        data.fsx_windows_file_server_volume_configuration = (Parsers::FSxWindowsFileServerVolumeConfiguration.parse(map['fsxWindowsFileServerVolumeConfiguration']) unless map['fsxWindowsFileServerVolumeConfiguration'].nil?)
        return data
      end
    end

    class FSxWindowsFileServerVolumeConfiguration
      def self.parse(map)
        data = Types::FSxWindowsFileServerVolumeConfiguration.new
        data.file_system_id = map['fileSystemId']
        data.root_directory = map['rootDirectory']
        data.authorization_config = (Parsers::FSxWindowsFileServerAuthorizationConfig.parse(map['authorizationConfig']) unless map['authorizationConfig'].nil?)
        return data
      end
    end

    class FSxWindowsFileServerAuthorizationConfig
      def self.parse(map)
        data = Types::FSxWindowsFileServerAuthorizationConfig.new
        data.credentials_parameter = map['credentialsParameter']
        data.domain = map['domain']
        return data
      end
    end

    class EFSVolumeConfiguration
      def self.parse(map)
        data = Types::EFSVolumeConfiguration.new
        data.file_system_id = map['fileSystemId']
        data.root_directory = map['rootDirectory']
        data.transit_encryption = map['transitEncryption']
        data.transit_encryption_port = map['transitEncryptionPort']
        data.authorization_config = (Parsers::EFSAuthorizationConfig.parse(map['authorizationConfig']) unless map['authorizationConfig'].nil?)
        return data
      end
    end

    class EFSAuthorizationConfig
      def self.parse(map)
        data = Types::EFSAuthorizationConfig.new
        data.access_point_id = map['accessPointId']
        data.iam = map['iam']
        return data
      end
    end

    class DockerVolumeConfiguration
      def self.parse(map)
        data = Types::DockerVolumeConfiguration.new
        data.scope = map['scope']
        data.autoprovision = map['autoprovision']
        data.driver = map['driver']
        data.driver_opts = (Parsers::StringMap.parse(map['driverOpts']) unless map['driverOpts'].nil?)
        data.labels = (Parsers::StringMap.parse(map['labels']) unless map['labels'].nil?)
        return data
      end
    end

    class StringMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class HostVolumeProperties
      def self.parse(map)
        data = Types::HostVolumeProperties.new
        data.source_path = map['sourcePath']
        return data
      end
    end

    class ContainerDefinitions
      def self.parse(list)
        list.map do |value|
          Parsers::ContainerDefinition.parse(value) unless value.nil?
        end
      end
    end

    class ContainerDefinition
      def self.parse(map)
        data = Types::ContainerDefinition.new
        data.name = map['name']
        data.image = map['image']
        data.repository_credentials = (Parsers::RepositoryCredentials.parse(map['repositoryCredentials']) unless map['repositoryCredentials'].nil?)
        data.cpu = map['cpu']
        data.memory = map['memory']
        data.memory_reservation = map['memoryReservation']
        data.links = (Parsers::StringList.parse(map['links']) unless map['links'].nil?)
        data.port_mappings = (Parsers::PortMappingList.parse(map['portMappings']) unless map['portMappings'].nil?)
        data.essential = map['essential']
        data.entry_point = (Parsers::StringList.parse(map['entryPoint']) unless map['entryPoint'].nil?)
        data.command = (Parsers::StringList.parse(map['command']) unless map['command'].nil?)
        data.environment = (Parsers::EnvironmentVariables.parse(map['environment']) unless map['environment'].nil?)
        data.environment_files = (Parsers::EnvironmentFiles.parse(map['environmentFiles']) unless map['environmentFiles'].nil?)
        data.mount_points = (Parsers::MountPointList.parse(map['mountPoints']) unless map['mountPoints'].nil?)
        data.volumes_from = (Parsers::VolumeFromList.parse(map['volumesFrom']) unless map['volumesFrom'].nil?)
        data.linux_parameters = (Parsers::LinuxParameters.parse(map['linuxParameters']) unless map['linuxParameters'].nil?)
        data.secrets = (Parsers::SecretList.parse(map['secrets']) unless map['secrets'].nil?)
        data.depends_on = (Parsers::ContainerDependencies.parse(map['dependsOn']) unless map['dependsOn'].nil?)
        data.start_timeout = map['startTimeout']
        data.stop_timeout = map['stopTimeout']
        data.hostname = map['hostname']
        data.user = map['user']
        data.working_directory = map['workingDirectory']
        data.disable_networking = map['disableNetworking']
        data.privileged = map['privileged']
        data.readonly_root_filesystem = map['readonlyRootFilesystem']
        data.dns_servers = (Parsers::StringList.parse(map['dnsServers']) unless map['dnsServers'].nil?)
        data.dns_search_domains = (Parsers::StringList.parse(map['dnsSearchDomains']) unless map['dnsSearchDomains'].nil?)
        data.extra_hosts = (Parsers::HostEntryList.parse(map['extraHosts']) unless map['extraHosts'].nil?)
        data.docker_security_options = (Parsers::StringList.parse(map['dockerSecurityOptions']) unless map['dockerSecurityOptions'].nil?)
        data.interactive = map['interactive']
        data.pseudo_terminal = map['pseudoTerminal']
        data.docker_labels = (Parsers::DockerLabelsMap.parse(map['dockerLabels']) unless map['dockerLabels'].nil?)
        data.ulimits = (Parsers::UlimitList.parse(map['ulimits']) unless map['ulimits'].nil?)
        data.log_configuration = (Parsers::LogConfiguration.parse(map['logConfiguration']) unless map['logConfiguration'].nil?)
        data.health_check = (Parsers::HealthCheck.parse(map['healthCheck']) unless map['healthCheck'].nil?)
        data.system_controls = (Parsers::SystemControls.parse(map['systemControls']) unless map['systemControls'].nil?)
        data.resource_requirements = (Parsers::ResourceRequirements.parse(map['resourceRequirements']) unless map['resourceRequirements'].nil?)
        data.firelens_configuration = (Parsers::FirelensConfiguration.parse(map['firelensConfiguration']) unless map['firelensConfiguration'].nil?)
        return data
      end
    end

    class FirelensConfiguration
      def self.parse(map)
        data = Types::FirelensConfiguration.new
        data.type = map['type']
        data.options = (Parsers::FirelensConfigurationOptionsMap.parse(map['options']) unless map['options'].nil?)
        return data
      end
    end

    class FirelensConfigurationOptionsMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ResourceRequirements
      def self.parse(list)
        list.map do |value|
          Parsers::ResourceRequirement.parse(value) unless value.nil?
        end
      end
    end

    class ResourceRequirement
      def self.parse(map)
        data = Types::ResourceRequirement.new
        data.value = map['value']
        data.type = map['type']
        return data
      end
    end

    class SystemControls
      def self.parse(list)
        list.map do |value|
          Parsers::SystemControl.parse(value) unless value.nil?
        end
      end
    end

    class SystemControl
      def self.parse(map)
        data = Types::SystemControl.new
        data.namespace = map['namespace']
        data.value = map['value']
        return data
      end
    end

    class HealthCheck
      def self.parse(map)
        data = Types::HealthCheck.new
        data.command = (Parsers::StringList.parse(map['command']) unless map['command'].nil?)
        data.interval = map['interval']
        data.timeout = map['timeout']
        data.retries = map['retries']
        data.start_period = map['startPeriod']
        return data
      end
    end

    class LogConfiguration
      def self.parse(map)
        data = Types::LogConfiguration.new
        data.log_driver = map['logDriver']
        data.options = (Parsers::LogConfigurationOptionsMap.parse(map['options']) unless map['options'].nil?)
        data.secret_options = (Parsers::SecretList.parse(map['secretOptions']) unless map['secretOptions'].nil?)
        return data
      end
    end

    class SecretList
      def self.parse(list)
        list.map do |value|
          Parsers::Secret.parse(value) unless value.nil?
        end
      end
    end

    class Secret
      def self.parse(map)
        data = Types::Secret.new
        data.name = map['name']
        data.value_from = map['valueFrom']
        return data
      end
    end

    class LogConfigurationOptionsMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class UlimitList
      def self.parse(list)
        list.map do |value|
          Parsers::Ulimit.parse(value) unless value.nil?
        end
      end
    end

    class Ulimit
      def self.parse(map)
        data = Types::Ulimit.new
        data.name = map['name']
        data.soft_limit = map['softLimit']
        data.hard_limit = map['hardLimit']
        return data
      end
    end

    class DockerLabelsMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class HostEntryList
      def self.parse(list)
        list.map do |value|
          Parsers::HostEntry.parse(value) unless value.nil?
        end
      end
    end

    class HostEntry
      def self.parse(map)
        data = Types::HostEntry.new
        data.hostname = map['hostname']
        data.ip_address = map['ipAddress']
        return data
      end
    end

    class ContainerDependencies
      def self.parse(list)
        list.map do |value|
          Parsers::ContainerDependency.parse(value) unless value.nil?
        end
      end
    end

    class ContainerDependency
      def self.parse(map)
        data = Types::ContainerDependency.new
        data.container_name = map['containerName']
        data.condition = map['condition']
        return data
      end
    end

    class LinuxParameters
      def self.parse(map)
        data = Types::LinuxParameters.new
        data.capabilities = (Parsers::KernelCapabilities.parse(map['capabilities']) unless map['capabilities'].nil?)
        data.devices = (Parsers::DevicesList.parse(map['devices']) unless map['devices'].nil?)
        data.init_process_enabled = map['initProcessEnabled']
        data.shared_memory_size = map['sharedMemorySize']
        data.tmpfs = (Parsers::TmpfsList.parse(map['tmpfs']) unless map['tmpfs'].nil?)
        data.max_swap = map['maxSwap']
        data.swappiness = map['swappiness']
        return data
      end
    end

    class TmpfsList
      def self.parse(list)
        list.map do |value|
          Parsers::Tmpfs.parse(value) unless value.nil?
        end
      end
    end

    class Tmpfs
      def self.parse(map)
        data = Types::Tmpfs.new
        data.container_path = map['containerPath']
        data.size = map['size']
        data.mount_options = (Parsers::StringList.parse(map['mountOptions']) unless map['mountOptions'].nil?)
        return data
      end
    end

    class DevicesList
      def self.parse(list)
        list.map do |value|
          Parsers::Device.parse(value) unless value.nil?
        end
      end
    end

    class Device
      def self.parse(map)
        data = Types::Device.new
        data.host_path = map['hostPath']
        data.container_path = map['containerPath']
        data.permissions = (Parsers::DeviceCgroupPermissions.parse(map['permissions']) unless map['permissions'].nil?)
        return data
      end
    end

    class DeviceCgroupPermissions
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class KernelCapabilities
      def self.parse(map)
        data = Types::KernelCapabilities.new
        data.add = (Parsers::StringList.parse(map['add']) unless map['add'].nil?)
        data.drop = (Parsers::StringList.parse(map['drop']) unless map['drop'].nil?)
        return data
      end
    end

    class VolumeFromList
      def self.parse(list)
        list.map do |value|
          Parsers::VolumeFrom.parse(value) unless value.nil?
        end
      end
    end

    class VolumeFrom
      def self.parse(map)
        data = Types::VolumeFrom.new
        data.source_container = map['sourceContainer']
        data.read_only = map['readOnly']
        return data
      end
    end

    class MountPointList
      def self.parse(list)
        list.map do |value|
          Parsers::MountPoint.parse(value) unless value.nil?
        end
      end
    end

    class MountPoint
      def self.parse(map)
        data = Types::MountPoint.new
        data.source_volume = map['sourceVolume']
        data.container_path = map['containerPath']
        data.read_only = map['readOnly']
        return data
      end
    end

    class EnvironmentFiles
      def self.parse(list)
        list.map do |value|
          Parsers::EnvironmentFile.parse(value) unless value.nil?
        end
      end
    end

    class EnvironmentFile
      def self.parse(map)
        data = Types::EnvironmentFile.new
        data.value = map['value']
        data.type = map['type']
        return data
      end
    end

    class EnvironmentVariables
      def self.parse(list)
        list.map do |value|
          Parsers::KeyValuePair.parse(value) unless value.nil?
        end
      end
    end

    class PortMappingList
      def self.parse(list)
        list.map do |value|
          Parsers::PortMapping.parse(value) unless value.nil?
        end
      end
    end

    class PortMapping
      def self.parse(map)
        data = Types::PortMapping.new
        data.container_port = map['containerPort']
        data.host_port = map['hostPort']
        data.protocol = map['protocol']
        return data
      end
    end

    class RepositoryCredentials
      def self.parse(map)
        data = Types::RepositoryCredentials.new
        data.credentials_parameter = map['credentialsParameter']
        return data
      end
    end

    # Operation Parser for DescribeCapacityProviders
    class DescribeCapacityProviders
      def self.parse(http_resp)
        data = Types::DescribeCapacityProvidersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.capacity_providers = (Parsers::CapacityProviders.parse(map['capacityProviders']) unless map['capacityProviders'].nil?)
        data.failures = (Parsers::Failures.parse(map['failures']) unless map['failures'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Failures
      def self.parse(list)
        list.map do |value|
          Parsers::Failure.parse(value) unless value.nil?
        end
      end
    end

    class Failure
      def self.parse(map)
        data = Types::Failure.new
        data.arn = map['arn']
        data.reason = map['reason']
        data.detail = map['detail']
        return data
      end
    end

    class CapacityProviders
      def self.parse(list)
        list.map do |value|
          Parsers::CapacityProvider.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeClusters
    class DescribeClusters
      def self.parse(http_resp)
        data = Types::DescribeClustersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.clusters = (Parsers::Clusters.parse(map['clusters']) unless map['clusters'].nil?)
        data.failures = (Parsers::Failures.parse(map['failures']) unless map['failures'].nil?)
        data
      end
    end

    class Clusters
      def self.parse(list)
        list.map do |value|
          Parsers::Cluster.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeContainerInstances
    class DescribeContainerInstances
      def self.parse(http_resp)
        data = Types::DescribeContainerInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.container_instances = (Parsers::ContainerInstances.parse(map['containerInstances']) unless map['containerInstances'].nil?)
        data.failures = (Parsers::Failures.parse(map['failures']) unless map['failures'].nil?)
        data
      end
    end

    class ContainerInstances
      def self.parse(list)
        list.map do |value|
          Parsers::ContainerInstance.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeServices
    class DescribeServices
      def self.parse(http_resp)
        data = Types::DescribeServicesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.services = (Parsers::Services.parse(map['services']) unless map['services'].nil?)
        data.failures = (Parsers::Failures.parse(map['failures']) unless map['failures'].nil?)
        data
      end
    end

    class Services
      def self.parse(list)
        list.map do |value|
          Parsers::Service.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeTaskDefinition
    class DescribeTaskDefinition
      def self.parse(http_resp)
        data = Types::DescribeTaskDefinitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.task_definition = (Parsers::TaskDefinition.parse(map['taskDefinition']) unless map['taskDefinition'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for DescribeTaskSets
    class DescribeTaskSets
      def self.parse(http_resp)
        data = Types::DescribeTaskSetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.task_sets = (Parsers::TaskSets.parse(map['taskSets']) unless map['taskSets'].nil?)
        data.failures = (Parsers::Failures.parse(map['failures']) unless map['failures'].nil?)
        data
      end
    end

    # Operation Parser for DescribeTasks
    class DescribeTasks
      def self.parse(http_resp)
        data = Types::DescribeTasksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tasks = (Parsers::Tasks.parse(map['tasks']) unless map['tasks'].nil?)
        data.failures = (Parsers::Failures.parse(map['failures']) unless map['failures'].nil?)
        data
      end
    end

    class Tasks
      def self.parse(list)
        list.map do |value|
          Parsers::Task.parse(value) unless value.nil?
        end
      end
    end

    class Task
      def self.parse(map)
        data = Types::Task.new
        data.attachments = (Parsers::Attachments.parse(map['attachments']) unless map['attachments'].nil?)
        data.attributes = (Parsers::Attributes.parse(map['attributes']) unless map['attributes'].nil?)
        data.availability_zone = map['availabilityZone']
        data.capacity_provider_name = map['capacityProviderName']
        data.cluster_arn = map['clusterArn']
        data.connectivity = map['connectivity']
        data.connectivity_at = Time.at(map['connectivityAt'].to_i) if map['connectivityAt']
        data.container_instance_arn = map['containerInstanceArn']
        data.containers = (Parsers::Containers.parse(map['containers']) unless map['containers'].nil?)
        data.cpu = map['cpu']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.desired_status = map['desiredStatus']
        data.enable_execute_command = map['enableExecuteCommand']
        data.execution_stopped_at = Time.at(map['executionStoppedAt'].to_i) if map['executionStoppedAt']
        data.group = map['group']
        data.health_status = map['healthStatus']
        data.inference_accelerators = (Parsers::InferenceAccelerators.parse(map['inferenceAccelerators']) unless map['inferenceAccelerators'].nil?)
        data.last_status = map['lastStatus']
        data.launch_type = map['launchType']
        data.memory = map['memory']
        data.overrides = (Parsers::TaskOverride.parse(map['overrides']) unless map['overrides'].nil?)
        data.platform_version = map['platformVersion']
        data.platform_family = map['platformFamily']
        data.pull_started_at = Time.at(map['pullStartedAt'].to_i) if map['pullStartedAt']
        data.pull_stopped_at = Time.at(map['pullStoppedAt'].to_i) if map['pullStoppedAt']
        data.started_at = Time.at(map['startedAt'].to_i) if map['startedAt']
        data.started_by = map['startedBy']
        data.stop_code = map['stopCode']
        data.stopped_at = Time.at(map['stoppedAt'].to_i) if map['stoppedAt']
        data.stopped_reason = map['stoppedReason']
        data.stopping_at = Time.at(map['stoppingAt'].to_i) if map['stoppingAt']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.task_arn = map['taskArn']
        data.task_definition_arn = map['taskDefinitionArn']
        data.version = map['version']
        data.ephemeral_storage = (Parsers::EphemeralStorage.parse(map['ephemeralStorage']) unless map['ephemeralStorage'].nil?)
        return data
      end
    end

    class TaskOverride
      def self.parse(map)
        data = Types::TaskOverride.new
        data.container_overrides = (Parsers::ContainerOverrides.parse(map['containerOverrides']) unless map['containerOverrides'].nil?)
        data.cpu = map['cpu']
        data.inference_accelerator_overrides = (Parsers::InferenceAcceleratorOverrides.parse(map['inferenceAcceleratorOverrides']) unless map['inferenceAcceleratorOverrides'].nil?)
        data.execution_role_arn = map['executionRoleArn']
        data.memory = map['memory']
        data.task_role_arn = map['taskRoleArn']
        data.ephemeral_storage = (Parsers::EphemeralStorage.parse(map['ephemeralStorage']) unless map['ephemeralStorage'].nil?)
        return data
      end
    end

    class InferenceAcceleratorOverrides
      def self.parse(list)
        list.map do |value|
          Parsers::InferenceAcceleratorOverride.parse(value) unless value.nil?
        end
      end
    end

    class InferenceAcceleratorOverride
      def self.parse(map)
        data = Types::InferenceAcceleratorOverride.new
        data.device_name = map['deviceName']
        data.device_type = map['deviceType']
        return data
      end
    end

    class ContainerOverrides
      def self.parse(list)
        list.map do |value|
          Parsers::ContainerOverride.parse(value) unless value.nil?
        end
      end
    end

    class ContainerOverride
      def self.parse(map)
        data = Types::ContainerOverride.new
        data.name = map['name']
        data.command = (Parsers::StringList.parse(map['command']) unless map['command'].nil?)
        data.environment = (Parsers::EnvironmentVariables.parse(map['environment']) unless map['environment'].nil?)
        data.environment_files = (Parsers::EnvironmentFiles.parse(map['environmentFiles']) unless map['environmentFiles'].nil?)
        data.cpu = map['cpu']
        data.memory = map['memory']
        data.memory_reservation = map['memoryReservation']
        data.resource_requirements = (Parsers::ResourceRequirements.parse(map['resourceRequirements']) unless map['resourceRequirements'].nil?)
        return data
      end
    end

    class Containers
      def self.parse(list)
        list.map do |value|
          Parsers::Container.parse(value) unless value.nil?
        end
      end
    end

    class Container
      def self.parse(map)
        data = Types::Container.new
        data.container_arn = map['containerArn']
        data.task_arn = map['taskArn']
        data.name = map['name']
        data.image = map['image']
        data.image_digest = map['imageDigest']
        data.runtime_id = map['runtimeId']
        data.last_status = map['lastStatus']
        data.exit_code = map['exitCode']
        data.reason = map['reason']
        data.network_bindings = (Parsers::NetworkBindings.parse(map['networkBindings']) unless map['networkBindings'].nil?)
        data.network_interfaces = (Parsers::NetworkInterfaces.parse(map['networkInterfaces']) unless map['networkInterfaces'].nil?)
        data.health_status = map['healthStatus']
        data.managed_agents = (Parsers::ManagedAgents.parse(map['managedAgents']) unless map['managedAgents'].nil?)
        data.cpu = map['cpu']
        data.memory = map['memory']
        data.memory_reservation = map['memoryReservation']
        data.gpu_ids = (Parsers::GpuIds.parse(map['gpuIds']) unless map['gpuIds'].nil?)
        return data
      end
    end

    class GpuIds
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ManagedAgents
      def self.parse(list)
        list.map do |value|
          Parsers::ManagedAgent.parse(value) unless value.nil?
        end
      end
    end

    class ManagedAgent
      def self.parse(map)
        data = Types::ManagedAgent.new
        data.last_started_at = Time.at(map['lastStartedAt'].to_i) if map['lastStartedAt']
        data.name = map['name']
        data.reason = map['reason']
        data.last_status = map['lastStatus']
        return data
      end
    end

    class NetworkInterfaces
      def self.parse(list)
        list.map do |value|
          Parsers::NetworkInterface.parse(value) unless value.nil?
        end
      end
    end

    class NetworkInterface
      def self.parse(map)
        data = Types::NetworkInterface.new
        data.attachment_id = map['attachmentId']
        data.private_ipv4_address = map['privateIpv4Address']
        data.ipv6_address = map['ipv6Address']
        return data
      end
    end

    class NetworkBindings
      def self.parse(list)
        list.map do |value|
          Parsers::NetworkBinding.parse(value) unless value.nil?
        end
      end
    end

    class NetworkBinding
      def self.parse(map)
        data = Types::NetworkBinding.new
        data.bind_ip = map['bindIP']
        data.container_port = map['containerPort']
        data.host_port = map['hostPort']
        data.protocol = map['protocol']
        return data
      end
    end

    # Operation Parser for DiscoverPollEndpoint
    class DiscoverPollEndpoint
      def self.parse(http_resp)
        data = Types::DiscoverPollEndpointOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.endpoint = map['endpoint']
        data.telemetry_endpoint = map['telemetryEndpoint']
        data
      end
    end

    # Operation Parser for ExecuteCommand
    class ExecuteCommand
      def self.parse(http_resp)
        data = Types::ExecuteCommandOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cluster_arn = map['clusterArn']
        data.container_arn = map['containerArn']
        data.container_name = map['containerName']
        data.interactive = map['interactive']
        data.session = (Parsers::Session.parse(map['session']) unless map['session'].nil?)
        data.task_arn = map['taskArn']
        data
      end
    end

    class Session
      def self.parse(map)
        data = Types::Session.new
        data.session_id = map['sessionId']
        data.stream_url = map['streamUrl']
        data.token_value = map['tokenValue']
        return data
      end
    end

    # Error Parser for TargetNotConnectedException
    class TargetNotConnectedException
      def self.parse(http_resp)
        data = Types::TargetNotConnectedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for ListAccountSettings
    class ListAccountSettings
      def self.parse(http_resp)
        data = Types::ListAccountSettingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.settings = (Parsers::Settings.parse(map['settings']) unless map['settings'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Settings
      def self.parse(list)
        list.map do |value|
          Parsers::Setting.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListAttributes
    class ListAttributes
      def self.parse(http_resp)
        data = Types::ListAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.attributes = (Parsers::Attributes.parse(map['attributes']) unless map['attributes'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListClusters
    class ListClusters
      def self.parse(http_resp)
        data = Types::ListClustersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cluster_arns = (Parsers::StringList.parse(map['clusterArns']) unless map['clusterArns'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListContainerInstances
    class ListContainerInstances
      def self.parse(http_resp)
        data = Types::ListContainerInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.container_instance_arns = (Parsers::StringList.parse(map['containerInstanceArns']) unless map['containerInstanceArns'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListServices
    class ListServices
      def self.parse(http_resp)
        data = Types::ListServicesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service_arns = (Parsers::StringList.parse(map['serviceArns']) unless map['serviceArns'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for ListTaskDefinitionFamilies
    class ListTaskDefinitionFamilies
      def self.parse(http_resp)
        data = Types::ListTaskDefinitionFamiliesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.families = (Parsers::StringList.parse(map['families']) unless map['families'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListTaskDefinitions
    class ListTaskDefinitions
      def self.parse(http_resp)
        data = Types::ListTaskDefinitionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.task_definition_arns = (Parsers::StringList.parse(map['taskDefinitionArns']) unless map['taskDefinitionArns'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListTasks
    class ListTasks
      def self.parse(http_resp)
        data = Types::ListTasksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.task_arns = (Parsers::StringList.parse(map['taskArns']) unless map['taskArns'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for PutAccountSetting
    class PutAccountSetting
      def self.parse(http_resp)
        data = Types::PutAccountSettingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.setting = (Parsers::Setting.parse(map['setting']) unless map['setting'].nil?)
        data
      end
    end

    # Operation Parser for PutAccountSettingDefault
    class PutAccountSettingDefault
      def self.parse(http_resp)
        data = Types::PutAccountSettingDefaultOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.setting = (Parsers::Setting.parse(map['setting']) unless map['setting'].nil?)
        data
      end
    end

    # Operation Parser for PutAttributes
    class PutAttributes
      def self.parse(http_resp)
        data = Types::PutAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.attributes = (Parsers::Attributes.parse(map['attributes']) unless map['attributes'].nil?)
        data
      end
    end

    # Error Parser for AttributeLimitExceededException
    class AttributeLimitExceededException
      def self.parse(http_resp)
        data = Types::AttributeLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for PutClusterCapacityProviders
    class PutClusterCapacityProviders
      def self.parse(http_resp)
        data = Types::PutClusterCapacityProvidersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cluster = (Parsers::Cluster.parse(map['cluster']) unless map['cluster'].nil?)
        data
      end
    end

    # Error Parser for ResourceInUseException
    class ResourceInUseException
      def self.parse(http_resp)
        data = Types::ResourceInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for RegisterContainerInstance
    class RegisterContainerInstance
      def self.parse(http_resp)
        data = Types::RegisterContainerInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.container_instance = (Parsers::ContainerInstance.parse(map['containerInstance']) unless map['containerInstance'].nil?)
        data
      end
    end

    # Operation Parser for RegisterTaskDefinition
    class RegisterTaskDefinition
      def self.parse(http_resp)
        data = Types::RegisterTaskDefinitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.task_definition = (Parsers::TaskDefinition.parse(map['taskDefinition']) unless map['taskDefinition'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for RunTask
    class RunTask
      def self.parse(http_resp)
        data = Types::RunTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tasks = (Parsers::Tasks.parse(map['tasks']) unless map['tasks'].nil?)
        data.failures = (Parsers::Failures.parse(map['failures']) unless map['failures'].nil?)
        data
      end
    end

    # Error Parser for BlockedException
    class BlockedException
      def self.parse(http_resp)
        data = Types::BlockedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for StartTask
    class StartTask
      def self.parse(http_resp)
        data = Types::StartTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tasks = (Parsers::Tasks.parse(map['tasks']) unless map['tasks'].nil?)
        data.failures = (Parsers::Failures.parse(map['failures']) unless map['failures'].nil?)
        data
      end
    end

    # Operation Parser for StopTask
    class StopTask
      def self.parse(http_resp)
        data = Types::StopTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.task = (Parsers::Task.parse(map['task']) unless map['task'].nil?)
        data
      end
    end

    # Operation Parser for SubmitAttachmentStateChanges
    class SubmitAttachmentStateChanges
      def self.parse(http_resp)
        data = Types::SubmitAttachmentStateChangesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.acknowledgment = map['acknowledgment']
        data
      end
    end

    # Operation Parser for SubmitContainerStateChange
    class SubmitContainerStateChange
      def self.parse(http_resp)
        data = Types::SubmitContainerStateChangeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.acknowledgment = map['acknowledgment']
        data
      end
    end

    # Operation Parser for SubmitTaskStateChange
    class SubmitTaskStateChange
      def self.parse(http_resp)
        data = Types::SubmitTaskStateChangeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.acknowledgment = map['acknowledgment']
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

    # Operation Parser for UpdateCapacityProvider
    class UpdateCapacityProvider
      def self.parse(http_resp)
        data = Types::UpdateCapacityProviderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.capacity_provider = (Parsers::CapacityProvider.parse(map['capacityProvider']) unless map['capacityProvider'].nil?)
        data
      end
    end

    # Operation Parser for UpdateCluster
    class UpdateCluster
      def self.parse(http_resp)
        data = Types::UpdateClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cluster = (Parsers::Cluster.parse(map['cluster']) unless map['cluster'].nil?)
        data
      end
    end

    # Operation Parser for UpdateClusterSettings
    class UpdateClusterSettings
      def self.parse(http_resp)
        data = Types::UpdateClusterSettingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cluster = (Parsers::Cluster.parse(map['cluster']) unless map['cluster'].nil?)
        data
      end
    end

    # Operation Parser for UpdateContainerAgent
    class UpdateContainerAgent
      def self.parse(http_resp)
        data = Types::UpdateContainerAgentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.container_instance = (Parsers::ContainerInstance.parse(map['containerInstance']) unless map['containerInstance'].nil?)
        data
      end
    end

    # Error Parser for MissingVersionException
    class MissingVersionException
      def self.parse(http_resp)
        data = Types::MissingVersionException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for NoUpdateAvailableException
    class NoUpdateAvailableException
      def self.parse(http_resp)
        data = Types::NoUpdateAvailableException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for UpdateContainerInstancesState
    class UpdateContainerInstancesState
      def self.parse(http_resp)
        data = Types::UpdateContainerInstancesStateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.container_instances = (Parsers::ContainerInstances.parse(map['containerInstances']) unless map['containerInstances'].nil?)
        data.failures = (Parsers::Failures.parse(map['failures']) unless map['failures'].nil?)
        data
      end
    end

    # Operation Parser for UpdateService
    class UpdateService
      def self.parse(http_resp)
        data = Types::UpdateServiceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.service = (Parsers::Service.parse(map['service']) unless map['service'].nil?)
        data
      end
    end

    # Operation Parser for UpdateServicePrimaryTaskSet
    class UpdateServicePrimaryTaskSet
      def self.parse(http_resp)
        data = Types::UpdateServicePrimaryTaskSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.task_set = (Parsers::TaskSet.parse(map['taskSet']) unless map['taskSet'].nil?)
        data
      end
    end

    # Operation Parser for UpdateTaskSet
    class UpdateTaskSet
      def self.parse(http_resp)
        data = Types::UpdateTaskSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.task_set = (Parsers::TaskSet.parse(map['taskSet']) unless map['taskSet'].nil?)
        data
      end
    end
  end
end
