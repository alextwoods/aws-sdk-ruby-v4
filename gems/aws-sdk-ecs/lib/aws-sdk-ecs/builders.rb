# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::ECS
  module Builders

    # Operation Builder for CreateCapacityProvider
    class CreateCapacityProvider
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.CreateCapacityProvider'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['autoScalingGroupProvider'] = AutoScalingGroupProvider.build(input[:auto_scaling_group_provider]) unless input[:auto_scaling_group_provider].nil?
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Tags
    class Tags
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for AutoScalingGroupProvider
    class AutoScalingGroupProvider
      def self.build(input)
        data = {}
        data['autoScalingGroupArn'] = input[:auto_scaling_group_arn] unless input[:auto_scaling_group_arn].nil?
        data['managedScaling'] = ManagedScaling.build(input[:managed_scaling]) unless input[:managed_scaling].nil?
        data['managedTerminationProtection'] = input[:managed_termination_protection] unless input[:managed_termination_protection].nil?
        data
      end
    end

    # Structure Builder for ManagedScaling
    class ManagedScaling
      def self.build(input)
        data = {}
        data['status'] = input[:status] unless input[:status].nil?
        data['targetCapacity'] = input[:target_capacity] unless input[:target_capacity].nil?
        data['minimumScalingStepSize'] = input[:minimum_scaling_step_size] unless input[:minimum_scaling_step_size].nil?
        data['maximumScalingStepSize'] = input[:maximum_scaling_step_size] unless input[:maximum_scaling_step_size].nil?
        data['instanceWarmupPeriod'] = input[:instance_warmup_period] unless input[:instance_warmup_period].nil?
        data
      end
    end

    # Operation Builder for CreateCluster
    class CreateCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.CreateCluster'
        data = {}
        data['clusterName'] = input[:cluster_name] unless input[:cluster_name].nil?
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        data['settings'] = ClusterSettings.build(input[:settings]) unless input[:settings].nil?
        data['configuration'] = ClusterConfiguration.build(input[:configuration]) unless input[:configuration].nil?
        data['capacityProviders'] = StringList.build(input[:capacity_providers]) unless input[:capacity_providers].nil?
        data['defaultCapacityProviderStrategy'] = CapacityProviderStrategy.build(input[:default_capacity_provider_strategy]) unless input[:default_capacity_provider_strategy].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CapacityProviderStrategy
    class CapacityProviderStrategy
      def self.build(input)
        data = []
        input.each do |element|
          data << CapacityProviderStrategyItem.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CapacityProviderStrategyItem
    class CapacityProviderStrategyItem
      def self.build(input)
        data = {}
        data['capacityProvider'] = input[:capacity_provider] unless input[:capacity_provider].nil?
        data['weight'] = input[:weight] unless input[:weight].nil?
        data['base'] = input[:base] unless input[:base].nil?
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

    # Structure Builder for ClusterConfiguration
    class ClusterConfiguration
      def self.build(input)
        data = {}
        data['executeCommandConfiguration'] = ExecuteCommandConfiguration.build(input[:execute_command_configuration]) unless input[:execute_command_configuration].nil?
        data
      end
    end

    # Structure Builder for ExecuteCommandConfiguration
    class ExecuteCommandConfiguration
      def self.build(input)
        data = {}
        data['kmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['logging'] = input[:logging] unless input[:logging].nil?
        data['logConfiguration'] = ExecuteCommandLogConfiguration.build(input[:log_configuration]) unless input[:log_configuration].nil?
        data
      end
    end

    # Structure Builder for ExecuteCommandLogConfiguration
    class ExecuteCommandLogConfiguration
      def self.build(input)
        data = {}
        data['cloudWatchLogGroupName'] = input[:cloud_watch_log_group_name] unless input[:cloud_watch_log_group_name].nil?
        data['cloudWatchEncryptionEnabled'] = input[:cloud_watch_encryption_enabled] unless input[:cloud_watch_encryption_enabled].nil?
        data['s3BucketName'] = input[:s3_bucket_name] unless input[:s3_bucket_name].nil?
        data['s3EncryptionEnabled'] = input[:s3_encryption_enabled] unless input[:s3_encryption_enabled].nil?
        data['s3KeyPrefix'] = input[:s3_key_prefix] unless input[:s3_key_prefix].nil?
        data
      end
    end

    # List Builder for ClusterSettings
    class ClusterSettings
      def self.build(input)
        data = []
        input.each do |element|
          data << ClusterSetting.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ClusterSetting
    class ClusterSetting
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateService
    class CreateService
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.CreateService'
        data = {}
        data['cluster'] = input[:cluster] unless input[:cluster].nil?
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        data['taskDefinition'] = input[:task_definition] unless input[:task_definition].nil?
        data['loadBalancers'] = LoadBalancers.build(input[:load_balancers]) unless input[:load_balancers].nil?
        data['serviceRegistries'] = ServiceRegistries.build(input[:service_registries]) unless input[:service_registries].nil?
        data['desiredCount'] = input[:desired_count] unless input[:desired_count].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['launchType'] = input[:launch_type] unless input[:launch_type].nil?
        data['capacityProviderStrategy'] = CapacityProviderStrategy.build(input[:capacity_provider_strategy]) unless input[:capacity_provider_strategy].nil?
        data['platformVersion'] = input[:platform_version] unless input[:platform_version].nil?
        data['role'] = input[:role] unless input[:role].nil?
        data['deploymentConfiguration'] = DeploymentConfiguration.build(input[:deployment_configuration]) unless input[:deployment_configuration].nil?
        data['placementConstraints'] = PlacementConstraints.build(input[:placement_constraints]) unless input[:placement_constraints].nil?
        data['placementStrategy'] = PlacementStrategies.build(input[:placement_strategy]) unless input[:placement_strategy].nil?
        data['networkConfiguration'] = NetworkConfiguration.build(input[:network_configuration]) unless input[:network_configuration].nil?
        data['healthCheckGracePeriodSeconds'] = input[:health_check_grace_period_seconds] unless input[:health_check_grace_period_seconds].nil?
        data['schedulingStrategy'] = input[:scheduling_strategy] unless input[:scheduling_strategy].nil?
        data['deploymentController'] = DeploymentController.build(input[:deployment_controller]) unless input[:deployment_controller].nil?
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        data['enableECSManagedTags'] = input[:enable_ecs_managed_tags] unless input[:enable_ecs_managed_tags].nil?
        data['propagateTags'] = input[:propagate_tags] unless input[:propagate_tags].nil?
        data['enableExecuteCommand'] = input[:enable_execute_command] unless input[:enable_execute_command].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DeploymentController
    class DeploymentController
      def self.build(input)
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Structure Builder for NetworkConfiguration
    class NetworkConfiguration
      def self.build(input)
        data = {}
        data['awsvpcConfiguration'] = AwsVpcConfiguration.build(input[:awsvpc_configuration]) unless input[:awsvpc_configuration].nil?
        data
      end
    end

    # Structure Builder for AwsVpcConfiguration
    class AwsVpcConfiguration
      def self.build(input)
        data = {}
        data['subnets'] = StringList.build(input[:subnets]) unless input[:subnets].nil?
        data['securityGroups'] = StringList.build(input[:security_groups]) unless input[:security_groups].nil?
        data['assignPublicIp'] = input[:assign_public_ip] unless input[:assign_public_ip].nil?
        data
      end
    end

    # List Builder for PlacementStrategies
    class PlacementStrategies
      def self.build(input)
        data = []
        input.each do |element|
          data << PlacementStrategy.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PlacementStrategy
    class PlacementStrategy
      def self.build(input)
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['field'] = input[:field] unless input[:field].nil?
        data
      end
    end

    # List Builder for PlacementConstraints
    class PlacementConstraints
      def self.build(input)
        data = []
        input.each do |element|
          data << PlacementConstraint.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PlacementConstraint
    class PlacementConstraint
      def self.build(input)
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['expression'] = input[:expression] unless input[:expression].nil?
        data
      end
    end

    # Structure Builder for DeploymentConfiguration
    class DeploymentConfiguration
      def self.build(input)
        data = {}
        data['deploymentCircuitBreaker'] = DeploymentCircuitBreaker.build(input[:deployment_circuit_breaker]) unless input[:deployment_circuit_breaker].nil?
        data['maximumPercent'] = input[:maximum_percent] unless input[:maximum_percent].nil?
        data['minimumHealthyPercent'] = input[:minimum_healthy_percent] unless input[:minimum_healthy_percent].nil?
        data
      end
    end

    # Structure Builder for DeploymentCircuitBreaker
    class DeploymentCircuitBreaker
      def self.build(input)
        data = {}
        data['enable'] = input[:enable] unless input[:enable].nil?
        data['rollback'] = input[:rollback] unless input[:rollback].nil?
        data
      end
    end

    # List Builder for ServiceRegistries
    class ServiceRegistries
      def self.build(input)
        data = []
        input.each do |element|
          data << ServiceRegistry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ServiceRegistry
    class ServiceRegistry
      def self.build(input)
        data = {}
        data['registryArn'] = input[:registry_arn] unless input[:registry_arn].nil?
        data['port'] = input[:port] unless input[:port].nil?
        data['containerName'] = input[:container_name] unless input[:container_name].nil?
        data['containerPort'] = input[:container_port] unless input[:container_port].nil?
        data
      end
    end

    # List Builder for LoadBalancers
    class LoadBalancers
      def self.build(input)
        data = []
        input.each do |element|
          data << LoadBalancer.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for LoadBalancer
    class LoadBalancer
      def self.build(input)
        data = {}
        data['targetGroupArn'] = input[:target_group_arn] unless input[:target_group_arn].nil?
        data['loadBalancerName'] = input[:load_balancer_name] unless input[:load_balancer_name].nil?
        data['containerName'] = input[:container_name] unless input[:container_name].nil?
        data['containerPort'] = input[:container_port] unless input[:container_port].nil?
        data
      end
    end

    # Operation Builder for CreateTaskSet
    class CreateTaskSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.CreateTaskSet'
        data = {}
        data['service'] = input[:service] unless input[:service].nil?
        data['cluster'] = input[:cluster] unless input[:cluster].nil?
        data['externalId'] = input[:external_id] unless input[:external_id].nil?
        data['taskDefinition'] = input[:task_definition] unless input[:task_definition].nil?
        data['networkConfiguration'] = NetworkConfiguration.build(input[:network_configuration]) unless input[:network_configuration].nil?
        data['loadBalancers'] = LoadBalancers.build(input[:load_balancers]) unless input[:load_balancers].nil?
        data['serviceRegistries'] = ServiceRegistries.build(input[:service_registries]) unless input[:service_registries].nil?
        data['launchType'] = input[:launch_type] unless input[:launch_type].nil?
        data['capacityProviderStrategy'] = CapacityProviderStrategy.build(input[:capacity_provider_strategy]) unless input[:capacity_provider_strategy].nil?
        data['platformVersion'] = input[:platform_version] unless input[:platform_version].nil?
        data['scale'] = Scale.build(input[:scale]) unless input[:scale].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Scale
    class Scale
      def self.build(input)
        data = {}
        data['value'] = Hearth::NumberHelper.serialize(input[:value]) unless input[:value].nil?
        data['unit'] = input[:unit] unless input[:unit].nil?
        data
      end
    end

    # Operation Builder for DeleteAccountSetting
    class DeleteAccountSetting
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.DeleteAccountSetting'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['principalArn'] = input[:principal_arn] unless input[:principal_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteAttributes
    class DeleteAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.DeleteAttributes'
        data = {}
        data['cluster'] = input[:cluster] unless input[:cluster].nil?
        data['attributes'] = Attributes.build(input[:attributes]) unless input[:attributes].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Attributes
    class Attributes
      def self.build(input)
        data = []
        input.each do |element|
          data << Attribute.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Attribute
    class Attribute
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data['targetType'] = input[:target_type] unless input[:target_type].nil?
        data['targetId'] = input[:target_id] unless input[:target_id].nil?
        data
      end
    end

    # Operation Builder for DeleteCapacityProvider
    class DeleteCapacityProvider
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.DeleteCapacityProvider'
        data = {}
        data['capacityProvider'] = input[:capacity_provider] unless input[:capacity_provider].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteCluster
    class DeleteCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.DeleteCluster'
        data = {}
        data['cluster'] = input[:cluster] unless input[:cluster].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteService
    class DeleteService
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.DeleteService'
        data = {}
        data['cluster'] = input[:cluster] unless input[:cluster].nil?
        data['service'] = input[:service] unless input[:service].nil?
        data['force'] = input[:force] unless input[:force].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteTaskSet
    class DeleteTaskSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.DeleteTaskSet'
        data = {}
        data['cluster'] = input[:cluster] unless input[:cluster].nil?
        data['service'] = input[:service] unless input[:service].nil?
        data['taskSet'] = input[:task_set] unless input[:task_set].nil?
        data['force'] = input[:force] unless input[:force].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeregisterContainerInstance
    class DeregisterContainerInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.DeregisterContainerInstance'
        data = {}
        data['cluster'] = input[:cluster] unless input[:cluster].nil?
        data['containerInstance'] = input[:container_instance] unless input[:container_instance].nil?
        data['force'] = input[:force] unless input[:force].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeregisterTaskDefinition
    class DeregisterTaskDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.DeregisterTaskDefinition'
        data = {}
        data['taskDefinition'] = input[:task_definition] unless input[:task_definition].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeCapacityProviders
    class DescribeCapacityProviders
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.DescribeCapacityProviders'
        data = {}
        data['capacityProviders'] = StringList.build(input[:capacity_providers]) unless input[:capacity_providers].nil?
        data['include'] = CapacityProviderFieldList.build(input[:include]) unless input[:include].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CapacityProviderFieldList
    class CapacityProviderFieldList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeClusters
    class DescribeClusters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.DescribeClusters'
        data = {}
        data['clusters'] = StringList.build(input[:clusters]) unless input[:clusters].nil?
        data['include'] = ClusterFieldList.build(input[:include]) unless input[:include].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ClusterFieldList
    class ClusterFieldList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeContainerInstances
    class DescribeContainerInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.DescribeContainerInstances'
        data = {}
        data['cluster'] = input[:cluster] unless input[:cluster].nil?
        data['containerInstances'] = StringList.build(input[:container_instances]) unless input[:container_instances].nil?
        data['include'] = ContainerInstanceFieldList.build(input[:include]) unless input[:include].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ContainerInstanceFieldList
    class ContainerInstanceFieldList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeServices
    class DescribeServices
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.DescribeServices'
        data = {}
        data['cluster'] = input[:cluster] unless input[:cluster].nil?
        data['services'] = StringList.build(input[:services]) unless input[:services].nil?
        data['include'] = ServiceFieldList.build(input[:include]) unless input[:include].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ServiceFieldList
    class ServiceFieldList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeTaskDefinition
    class DescribeTaskDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.DescribeTaskDefinition'
        data = {}
        data['taskDefinition'] = input[:task_definition] unless input[:task_definition].nil?
        data['include'] = TaskDefinitionFieldList.build(input[:include]) unless input[:include].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TaskDefinitionFieldList
    class TaskDefinitionFieldList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeTaskSets
    class DescribeTaskSets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.DescribeTaskSets'
        data = {}
        data['cluster'] = input[:cluster] unless input[:cluster].nil?
        data['service'] = input[:service] unless input[:service].nil?
        data['taskSets'] = StringList.build(input[:task_sets]) unless input[:task_sets].nil?
        data['include'] = TaskSetFieldList.build(input[:include]) unless input[:include].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TaskSetFieldList
    class TaskSetFieldList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeTasks
    class DescribeTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.DescribeTasks'
        data = {}
        data['cluster'] = input[:cluster] unless input[:cluster].nil?
        data['tasks'] = StringList.build(input[:tasks]) unless input[:tasks].nil?
        data['include'] = TaskFieldList.build(input[:include]) unless input[:include].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TaskFieldList
    class TaskFieldList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DiscoverPollEndpoint
    class DiscoverPollEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.DiscoverPollEndpoint'
        data = {}
        data['containerInstance'] = input[:container_instance] unless input[:container_instance].nil?
        data['cluster'] = input[:cluster] unless input[:cluster].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ExecuteCommand
    class ExecuteCommand
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.ExecuteCommand'
        data = {}
        data['cluster'] = input[:cluster] unless input[:cluster].nil?
        data['container'] = input[:container] unless input[:container].nil?
        data['command'] = input[:command] unless input[:command].nil?
        data['interactive'] = input[:interactive] unless input[:interactive].nil?
        data['task'] = input[:task] unless input[:task].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAccountSettings
    class ListAccountSettings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.ListAccountSettings'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data['principalArn'] = input[:principal_arn] unless input[:principal_arn].nil?
        data['effectiveSettings'] = input[:effective_settings] unless input[:effective_settings].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAttributes
    class ListAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.ListAttributes'
        data = {}
        data['cluster'] = input[:cluster] unless input[:cluster].nil?
        data['targetType'] = input[:target_type] unless input[:target_type].nil?
        data['attributeName'] = input[:attribute_name] unless input[:attribute_name].nil?
        data['attributeValue'] = input[:attribute_value] unless input[:attribute_value].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListClusters
    class ListClusters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.ListClusters'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListContainerInstances
    class ListContainerInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.ListContainerInstances'
        data = {}
        data['cluster'] = input[:cluster] unless input[:cluster].nil?
        data['filter'] = input[:filter] unless input[:filter].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['status'] = input[:status] unless input[:status].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListServices
    class ListServices
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.ListServices'
        data = {}
        data['cluster'] = input[:cluster] unless input[:cluster].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['launchType'] = input[:launch_type] unless input[:launch_type].nil?
        data['schedulingStrategy'] = input[:scheduling_strategy] unless input[:scheduling_strategy].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.ListTagsForResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTaskDefinitionFamilies
    class ListTaskDefinitionFamilies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.ListTaskDefinitionFamilies'
        data = {}
        data['familyPrefix'] = input[:family_prefix] unless input[:family_prefix].nil?
        data['status'] = input[:status] unless input[:status].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTaskDefinitions
    class ListTaskDefinitions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.ListTaskDefinitions'
        data = {}
        data['familyPrefix'] = input[:family_prefix] unless input[:family_prefix].nil?
        data['status'] = input[:status] unless input[:status].nil?
        data['sort'] = input[:sort] unless input[:sort].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTasks
    class ListTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.ListTasks'
        data = {}
        data['cluster'] = input[:cluster] unless input[:cluster].nil?
        data['containerInstance'] = input[:container_instance] unless input[:container_instance].nil?
        data['family'] = input[:family] unless input[:family].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['startedBy'] = input[:started_by] unless input[:started_by].nil?
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        data['desiredStatus'] = input[:desired_status] unless input[:desired_status].nil?
        data['launchType'] = input[:launch_type] unless input[:launch_type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutAccountSetting
    class PutAccountSetting
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.PutAccountSetting'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data['principalArn'] = input[:principal_arn] unless input[:principal_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutAccountSettingDefault
    class PutAccountSettingDefault
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.PutAccountSettingDefault'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['value'] = input[:value] unless input[:value].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutAttributes
    class PutAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.PutAttributes'
        data = {}
        data['cluster'] = input[:cluster] unless input[:cluster].nil?
        data['attributes'] = Attributes.build(input[:attributes]) unless input[:attributes].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutClusterCapacityProviders
    class PutClusterCapacityProviders
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.PutClusterCapacityProviders'
        data = {}
        data['cluster'] = input[:cluster] unless input[:cluster].nil?
        data['capacityProviders'] = StringList.build(input[:capacity_providers]) unless input[:capacity_providers].nil?
        data['defaultCapacityProviderStrategy'] = CapacityProviderStrategy.build(input[:default_capacity_provider_strategy]) unless input[:default_capacity_provider_strategy].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RegisterContainerInstance
    class RegisterContainerInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.RegisterContainerInstance'
        data = {}
        data['cluster'] = input[:cluster] unless input[:cluster].nil?
        data['instanceIdentityDocument'] = input[:instance_identity_document] unless input[:instance_identity_document].nil?
        data['instanceIdentityDocumentSignature'] = input[:instance_identity_document_signature] unless input[:instance_identity_document_signature].nil?
        data['totalResources'] = Resources.build(input[:total_resources]) unless input[:total_resources].nil?
        data['versionInfo'] = VersionInfo.build(input[:version_info]) unless input[:version_info].nil?
        data['containerInstanceArn'] = input[:container_instance_arn] unless input[:container_instance_arn].nil?
        data['attributes'] = Attributes.build(input[:attributes]) unless input[:attributes].nil?
        data['platformDevices'] = PlatformDevices.build(input[:platform_devices]) unless input[:platform_devices].nil?
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PlatformDevices
    class PlatformDevices
      def self.build(input)
        data = []
        input.each do |element|
          data << PlatformDevice.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PlatformDevice
    class PlatformDevice
      def self.build(input)
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Structure Builder for VersionInfo
    class VersionInfo
      def self.build(input)
        data = {}
        data['agentVersion'] = input[:agent_version] unless input[:agent_version].nil?
        data['agentHash'] = input[:agent_hash] unless input[:agent_hash].nil?
        data['dockerVersion'] = input[:docker_version] unless input[:docker_version].nil?
        data
      end
    end

    # List Builder for Resources
    class Resources
      def self.build(input)
        data = []
        input.each do |element|
          data << Resource.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Resource
    class Resource
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['doubleValue'] = Hearth::NumberHelper.serialize(input[:double_value]) unless input[:double_value].nil?
        data['longValue'] = input[:long_value] unless input[:long_value].nil?
        data['integerValue'] = input[:integer_value] unless input[:integer_value].nil?
        data['stringSetValue'] = StringList.build(input[:string_set_value]) unless input[:string_set_value].nil?
        data
      end
    end

    # Operation Builder for RegisterTaskDefinition
    class RegisterTaskDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.RegisterTaskDefinition'
        data = {}
        data['family'] = input[:family] unless input[:family].nil?
        data['taskRoleArn'] = input[:task_role_arn] unless input[:task_role_arn].nil?
        data['executionRoleArn'] = input[:execution_role_arn] unless input[:execution_role_arn].nil?
        data['networkMode'] = input[:network_mode] unless input[:network_mode].nil?
        data['containerDefinitions'] = ContainerDefinitions.build(input[:container_definitions]) unless input[:container_definitions].nil?
        data['volumes'] = VolumeList.build(input[:volumes]) unless input[:volumes].nil?
        data['placementConstraints'] = TaskDefinitionPlacementConstraints.build(input[:placement_constraints]) unless input[:placement_constraints].nil?
        data['requiresCompatibilities'] = CompatibilityList.build(input[:requires_compatibilities]) unless input[:requires_compatibilities].nil?
        data['cpu'] = input[:cpu] unless input[:cpu].nil?
        data['memory'] = input[:memory] unless input[:memory].nil?
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        data['pidMode'] = input[:pid_mode] unless input[:pid_mode].nil?
        data['ipcMode'] = input[:ipc_mode] unless input[:ipc_mode].nil?
        data['proxyConfiguration'] = ProxyConfiguration.build(input[:proxy_configuration]) unless input[:proxy_configuration].nil?
        data['inferenceAccelerators'] = InferenceAccelerators.build(input[:inference_accelerators]) unless input[:inference_accelerators].nil?
        data['ephemeralStorage'] = EphemeralStorage.build(input[:ephemeral_storage]) unless input[:ephemeral_storage].nil?
        data['runtimePlatform'] = RuntimePlatform.build(input[:runtime_platform]) unless input[:runtime_platform].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for RuntimePlatform
    class RuntimePlatform
      def self.build(input)
        data = {}
        data['cpuArchitecture'] = input[:cpu_architecture] unless input[:cpu_architecture].nil?
        data['operatingSystemFamily'] = input[:operating_system_family] unless input[:operating_system_family].nil?
        data
      end
    end

    # Structure Builder for EphemeralStorage
    class EphemeralStorage
      def self.build(input)
        data = {}
        data['sizeInGiB'] = input[:size_in_gi_b] unless input[:size_in_gi_b].nil?
        data
      end
    end

    # List Builder for InferenceAccelerators
    class InferenceAccelerators
      def self.build(input)
        data = []
        input.each do |element|
          data << InferenceAccelerator.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InferenceAccelerator
    class InferenceAccelerator
      def self.build(input)
        data = {}
        data['deviceName'] = input[:device_name] unless input[:device_name].nil?
        data['deviceType'] = input[:device_type] unless input[:device_type].nil?
        data
      end
    end

    # Structure Builder for ProxyConfiguration
    class ProxyConfiguration
      def self.build(input)
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['containerName'] = input[:container_name] unless input[:container_name].nil?
        data['properties'] = ProxyConfigurationProperties.build(input[:properties]) unless input[:properties].nil?
        data
      end
    end

    # List Builder for ProxyConfigurationProperties
    class ProxyConfigurationProperties
      def self.build(input)
        data = []
        input.each do |element|
          data << KeyValuePair.build(element) unless element.nil?
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

    # List Builder for CompatibilityList
    class CompatibilityList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for TaskDefinitionPlacementConstraints
    class TaskDefinitionPlacementConstraints
      def self.build(input)
        data = []
        input.each do |element|
          data << TaskDefinitionPlacementConstraint.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TaskDefinitionPlacementConstraint
    class TaskDefinitionPlacementConstraint
      def self.build(input)
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['expression'] = input[:expression] unless input[:expression].nil?
        data
      end
    end

    # List Builder for VolumeList
    class VolumeList
      def self.build(input)
        data = []
        input.each do |element|
          data << Volume.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Volume
    class Volume
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['host'] = HostVolumeProperties.build(input[:host]) unless input[:host].nil?
        data['dockerVolumeConfiguration'] = DockerVolumeConfiguration.build(input[:docker_volume_configuration]) unless input[:docker_volume_configuration].nil?
        data['efsVolumeConfiguration'] = EFSVolumeConfiguration.build(input[:efs_volume_configuration]) unless input[:efs_volume_configuration].nil?
        data['fsxWindowsFileServerVolumeConfiguration'] = FSxWindowsFileServerVolumeConfiguration.build(input[:fsx_windows_file_server_volume_configuration]) unless input[:fsx_windows_file_server_volume_configuration].nil?
        data
      end
    end

    # Structure Builder for FSxWindowsFileServerVolumeConfiguration
    class FSxWindowsFileServerVolumeConfiguration
      def self.build(input)
        data = {}
        data['fileSystemId'] = input[:file_system_id] unless input[:file_system_id].nil?
        data['rootDirectory'] = input[:root_directory] unless input[:root_directory].nil?
        data['authorizationConfig'] = FSxWindowsFileServerAuthorizationConfig.build(input[:authorization_config]) unless input[:authorization_config].nil?
        data
      end
    end

    # Structure Builder for FSxWindowsFileServerAuthorizationConfig
    class FSxWindowsFileServerAuthorizationConfig
      def self.build(input)
        data = {}
        data['credentialsParameter'] = input[:credentials_parameter] unless input[:credentials_parameter].nil?
        data['domain'] = input[:domain] unless input[:domain].nil?
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
        data['authorizationConfig'] = EFSAuthorizationConfig.build(input[:authorization_config]) unless input[:authorization_config].nil?
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

    # Structure Builder for DockerVolumeConfiguration
    class DockerVolumeConfiguration
      def self.build(input)
        data = {}
        data['scope'] = input[:scope] unless input[:scope].nil?
        data['autoprovision'] = input[:autoprovision] unless input[:autoprovision].nil?
        data['driver'] = input[:driver] unless input[:driver].nil?
        data['driverOpts'] = StringMap.build(input[:driver_opts]) unless input[:driver_opts].nil?
        data['labels'] = StringMap.build(input[:labels]) unless input[:labels].nil?
        data
      end
    end

    # Map Builder for StringMap
    class StringMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for HostVolumeProperties
    class HostVolumeProperties
      def self.build(input)
        data = {}
        data['sourcePath'] = input[:source_path] unless input[:source_path].nil?
        data
      end
    end

    # List Builder for ContainerDefinitions
    class ContainerDefinitions
      def self.build(input)
        data = []
        input.each do |element|
          data << ContainerDefinition.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ContainerDefinition
    class ContainerDefinition
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['image'] = input[:image] unless input[:image].nil?
        data['repositoryCredentials'] = RepositoryCredentials.build(input[:repository_credentials]) unless input[:repository_credentials].nil?
        data['cpu'] = input[:cpu] unless input[:cpu].nil?
        data['memory'] = input[:memory] unless input[:memory].nil?
        data['memoryReservation'] = input[:memory_reservation] unless input[:memory_reservation].nil?
        data['links'] = StringList.build(input[:links]) unless input[:links].nil?
        data['portMappings'] = PortMappingList.build(input[:port_mappings]) unless input[:port_mappings].nil?
        data['essential'] = input[:essential] unless input[:essential].nil?
        data['entryPoint'] = StringList.build(input[:entry_point]) unless input[:entry_point].nil?
        data['command'] = StringList.build(input[:command]) unless input[:command].nil?
        data['environment'] = EnvironmentVariables.build(input[:environment]) unless input[:environment].nil?
        data['environmentFiles'] = EnvironmentFiles.build(input[:environment_files]) unless input[:environment_files].nil?
        data['mountPoints'] = MountPointList.build(input[:mount_points]) unless input[:mount_points].nil?
        data['volumesFrom'] = VolumeFromList.build(input[:volumes_from]) unless input[:volumes_from].nil?
        data['linuxParameters'] = LinuxParameters.build(input[:linux_parameters]) unless input[:linux_parameters].nil?
        data['secrets'] = SecretList.build(input[:secrets]) unless input[:secrets].nil?
        data['dependsOn'] = ContainerDependencies.build(input[:depends_on]) unless input[:depends_on].nil?
        data['startTimeout'] = input[:start_timeout] unless input[:start_timeout].nil?
        data['stopTimeout'] = input[:stop_timeout] unless input[:stop_timeout].nil?
        data['hostname'] = input[:hostname] unless input[:hostname].nil?
        data['user'] = input[:user] unless input[:user].nil?
        data['workingDirectory'] = input[:working_directory] unless input[:working_directory].nil?
        data['disableNetworking'] = input[:disable_networking] unless input[:disable_networking].nil?
        data['privileged'] = input[:privileged] unless input[:privileged].nil?
        data['readonlyRootFilesystem'] = input[:readonly_root_filesystem] unless input[:readonly_root_filesystem].nil?
        data['dnsServers'] = StringList.build(input[:dns_servers]) unless input[:dns_servers].nil?
        data['dnsSearchDomains'] = StringList.build(input[:dns_search_domains]) unless input[:dns_search_domains].nil?
        data['extraHosts'] = HostEntryList.build(input[:extra_hosts]) unless input[:extra_hosts].nil?
        data['dockerSecurityOptions'] = StringList.build(input[:docker_security_options]) unless input[:docker_security_options].nil?
        data['interactive'] = input[:interactive] unless input[:interactive].nil?
        data['pseudoTerminal'] = input[:pseudo_terminal] unless input[:pseudo_terminal].nil?
        data['dockerLabels'] = DockerLabelsMap.build(input[:docker_labels]) unless input[:docker_labels].nil?
        data['ulimits'] = UlimitList.build(input[:ulimits]) unless input[:ulimits].nil?
        data['logConfiguration'] = LogConfiguration.build(input[:log_configuration]) unless input[:log_configuration].nil?
        data['healthCheck'] = HealthCheck.build(input[:health_check]) unless input[:health_check].nil?
        data['systemControls'] = SystemControls.build(input[:system_controls]) unless input[:system_controls].nil?
        data['resourceRequirements'] = ResourceRequirements.build(input[:resource_requirements]) unless input[:resource_requirements].nil?
        data['firelensConfiguration'] = FirelensConfiguration.build(input[:firelens_configuration]) unless input[:firelens_configuration].nil?
        data
      end
    end

    # Structure Builder for FirelensConfiguration
    class FirelensConfiguration
      def self.build(input)
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['options'] = FirelensConfigurationOptionsMap.build(input[:options]) unless input[:options].nil?
        data
      end
    end

    # Map Builder for FirelensConfigurationOptionsMap
    class FirelensConfigurationOptionsMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for ResourceRequirements
    class ResourceRequirements
      def self.build(input)
        data = []
        input.each do |element|
          data << ResourceRequirement.build(element) unless element.nil?
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

    # List Builder for SystemControls
    class SystemControls
      def self.build(input)
        data = []
        input.each do |element|
          data << SystemControl.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SystemControl
    class SystemControl
      def self.build(input)
        data = {}
        data['namespace'] = input[:namespace] unless input[:namespace].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for HealthCheck
    class HealthCheck
      def self.build(input)
        data = {}
        data['command'] = StringList.build(input[:command]) unless input[:command].nil?
        data['interval'] = input[:interval] unless input[:interval].nil?
        data['timeout'] = input[:timeout] unless input[:timeout].nil?
        data['retries'] = input[:retries] unless input[:retries].nil?
        data['startPeriod'] = input[:start_period] unless input[:start_period].nil?
        data
      end
    end

    # Structure Builder for LogConfiguration
    class LogConfiguration
      def self.build(input)
        data = {}
        data['logDriver'] = input[:log_driver] unless input[:log_driver].nil?
        data['options'] = LogConfigurationOptionsMap.build(input[:options]) unless input[:options].nil?
        data['secretOptions'] = SecretList.build(input[:secret_options]) unless input[:secret_options].nil?
        data
      end
    end

    # List Builder for SecretList
    class SecretList
      def self.build(input)
        data = []
        input.each do |element|
          data << Secret.build(element) unless element.nil?
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

    # List Builder for UlimitList
    class UlimitList
      def self.build(input)
        data = []
        input.each do |element|
          data << Ulimit.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Ulimit
    class Ulimit
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['softLimit'] = input[:soft_limit] unless input[:soft_limit].nil?
        data['hardLimit'] = input[:hard_limit] unless input[:hard_limit].nil?
        data
      end
    end

    # Map Builder for DockerLabelsMap
    class DockerLabelsMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for HostEntryList
    class HostEntryList
      def self.build(input)
        data = []
        input.each do |element|
          data << HostEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for HostEntry
    class HostEntry
      def self.build(input)
        data = {}
        data['hostname'] = input[:hostname] unless input[:hostname].nil?
        data['ipAddress'] = input[:ip_address] unless input[:ip_address].nil?
        data
      end
    end

    # List Builder for ContainerDependencies
    class ContainerDependencies
      def self.build(input)
        data = []
        input.each do |element|
          data << ContainerDependency.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ContainerDependency
    class ContainerDependency
      def self.build(input)
        data = {}
        data['containerName'] = input[:container_name] unless input[:container_name].nil?
        data['condition'] = input[:condition] unless input[:condition].nil?
        data
      end
    end

    # Structure Builder for LinuxParameters
    class LinuxParameters
      def self.build(input)
        data = {}
        data['capabilities'] = KernelCapabilities.build(input[:capabilities]) unless input[:capabilities].nil?
        data['devices'] = DevicesList.build(input[:devices]) unless input[:devices].nil?
        data['initProcessEnabled'] = input[:init_process_enabled] unless input[:init_process_enabled].nil?
        data['sharedMemorySize'] = input[:shared_memory_size] unless input[:shared_memory_size].nil?
        data['tmpfs'] = TmpfsList.build(input[:tmpfs]) unless input[:tmpfs].nil?
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
          data << Tmpfs.build(element) unless element.nil?
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
        data['mountOptions'] = StringList.build(input[:mount_options]) unless input[:mount_options].nil?
        data
      end
    end

    # List Builder for DevicesList
    class DevicesList
      def self.build(input)
        data = []
        input.each do |element|
          data << Device.build(element) unless element.nil?
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
        data['permissions'] = DeviceCgroupPermissions.build(input[:permissions]) unless input[:permissions].nil?
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

    # Structure Builder for KernelCapabilities
    class KernelCapabilities
      def self.build(input)
        data = {}
        data['add'] = StringList.build(input[:add]) unless input[:add].nil?
        data['drop'] = StringList.build(input[:drop]) unless input[:drop].nil?
        data
      end
    end

    # List Builder for VolumeFromList
    class VolumeFromList
      def self.build(input)
        data = []
        input.each do |element|
          data << VolumeFrom.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for VolumeFrom
    class VolumeFrom
      def self.build(input)
        data = {}
        data['sourceContainer'] = input[:source_container] unless input[:source_container].nil?
        data['readOnly'] = input[:read_only] unless input[:read_only].nil?
        data
      end
    end

    # List Builder for MountPointList
    class MountPointList
      def self.build(input)
        data = []
        input.each do |element|
          data << MountPoint.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MountPoint
    class MountPoint
      def self.build(input)
        data = {}
        data['sourceVolume'] = input[:source_volume] unless input[:source_volume].nil?
        data['containerPath'] = input[:container_path] unless input[:container_path].nil?
        data['readOnly'] = input[:read_only] unless input[:read_only].nil?
        data
      end
    end

    # List Builder for EnvironmentFiles
    class EnvironmentFiles
      def self.build(input)
        data = []
        input.each do |element|
          data << EnvironmentFile.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for EnvironmentFile
    class EnvironmentFile
      def self.build(input)
        data = {}
        data['value'] = input[:value] unless input[:value].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # List Builder for EnvironmentVariables
    class EnvironmentVariables
      def self.build(input)
        data = []
        input.each do |element|
          data << KeyValuePair.build(element) unless element.nil?
        end
        data
      end
    end

    # List Builder for PortMappingList
    class PortMappingList
      def self.build(input)
        data = []
        input.each do |element|
          data << PortMapping.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PortMapping
    class PortMapping
      def self.build(input)
        data = {}
        data['containerPort'] = input[:container_port] unless input[:container_port].nil?
        data['hostPort'] = input[:host_port] unless input[:host_port].nil?
        data['protocol'] = input[:protocol] unless input[:protocol].nil?
        data
      end
    end

    # Structure Builder for RepositoryCredentials
    class RepositoryCredentials
      def self.build(input)
        data = {}
        data['credentialsParameter'] = input[:credentials_parameter] unless input[:credentials_parameter].nil?
        data
      end
    end

    # Operation Builder for RunTask
    class RunTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.RunTask'
        data = {}
        data['capacityProviderStrategy'] = CapacityProviderStrategy.build(input[:capacity_provider_strategy]) unless input[:capacity_provider_strategy].nil?
        data['cluster'] = input[:cluster] unless input[:cluster].nil?
        data['count'] = input[:count] unless input[:count].nil?
        data['enableECSManagedTags'] = input[:enable_ecs_managed_tags] unless input[:enable_ecs_managed_tags].nil?
        data['enableExecuteCommand'] = input[:enable_execute_command] unless input[:enable_execute_command].nil?
        data['group'] = input[:group] unless input[:group].nil?
        data['launchType'] = input[:launch_type] unless input[:launch_type].nil?
        data['networkConfiguration'] = NetworkConfiguration.build(input[:network_configuration]) unless input[:network_configuration].nil?
        data['overrides'] = TaskOverride.build(input[:overrides]) unless input[:overrides].nil?
        data['placementConstraints'] = PlacementConstraints.build(input[:placement_constraints]) unless input[:placement_constraints].nil?
        data['placementStrategy'] = PlacementStrategies.build(input[:placement_strategy]) unless input[:placement_strategy].nil?
        data['platformVersion'] = input[:platform_version] unless input[:platform_version].nil?
        data['propagateTags'] = input[:propagate_tags] unless input[:propagate_tags].nil?
        data['referenceId'] = input[:reference_id] unless input[:reference_id].nil?
        data['startedBy'] = input[:started_by] unless input[:started_by].nil?
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        data['taskDefinition'] = input[:task_definition] unless input[:task_definition].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TaskOverride
    class TaskOverride
      def self.build(input)
        data = {}
        data['containerOverrides'] = ContainerOverrides.build(input[:container_overrides]) unless input[:container_overrides].nil?
        data['cpu'] = input[:cpu] unless input[:cpu].nil?
        data['inferenceAcceleratorOverrides'] = InferenceAcceleratorOverrides.build(input[:inference_accelerator_overrides]) unless input[:inference_accelerator_overrides].nil?
        data['executionRoleArn'] = input[:execution_role_arn] unless input[:execution_role_arn].nil?
        data['memory'] = input[:memory] unless input[:memory].nil?
        data['taskRoleArn'] = input[:task_role_arn] unless input[:task_role_arn].nil?
        data['ephemeralStorage'] = EphemeralStorage.build(input[:ephemeral_storage]) unless input[:ephemeral_storage].nil?
        data
      end
    end

    # List Builder for InferenceAcceleratorOverrides
    class InferenceAcceleratorOverrides
      def self.build(input)
        data = []
        input.each do |element|
          data << InferenceAcceleratorOverride.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InferenceAcceleratorOverride
    class InferenceAcceleratorOverride
      def self.build(input)
        data = {}
        data['deviceName'] = input[:device_name] unless input[:device_name].nil?
        data['deviceType'] = input[:device_type] unless input[:device_type].nil?
        data
      end
    end

    # List Builder for ContainerOverrides
    class ContainerOverrides
      def self.build(input)
        data = []
        input.each do |element|
          data << ContainerOverride.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ContainerOverride
    class ContainerOverride
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['command'] = StringList.build(input[:command]) unless input[:command].nil?
        data['environment'] = EnvironmentVariables.build(input[:environment]) unless input[:environment].nil?
        data['environmentFiles'] = EnvironmentFiles.build(input[:environment_files]) unless input[:environment_files].nil?
        data['cpu'] = input[:cpu] unless input[:cpu].nil?
        data['memory'] = input[:memory] unless input[:memory].nil?
        data['memoryReservation'] = input[:memory_reservation] unless input[:memory_reservation].nil?
        data['resourceRequirements'] = ResourceRequirements.build(input[:resource_requirements]) unless input[:resource_requirements].nil?
        data
      end
    end

    # Operation Builder for StartTask
    class StartTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.StartTask'
        data = {}
        data['cluster'] = input[:cluster] unless input[:cluster].nil?
        data['containerInstances'] = StringList.build(input[:container_instances]) unless input[:container_instances].nil?
        data['enableECSManagedTags'] = input[:enable_ecs_managed_tags] unless input[:enable_ecs_managed_tags].nil?
        data['enableExecuteCommand'] = input[:enable_execute_command] unless input[:enable_execute_command].nil?
        data['group'] = input[:group] unless input[:group].nil?
        data['networkConfiguration'] = NetworkConfiguration.build(input[:network_configuration]) unless input[:network_configuration].nil?
        data['overrides'] = TaskOverride.build(input[:overrides]) unless input[:overrides].nil?
        data['propagateTags'] = input[:propagate_tags] unless input[:propagate_tags].nil?
        data['referenceId'] = input[:reference_id] unless input[:reference_id].nil?
        data['startedBy'] = input[:started_by] unless input[:started_by].nil?
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        data['taskDefinition'] = input[:task_definition] unless input[:task_definition].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopTask
    class StopTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.StopTask'
        data = {}
        data['cluster'] = input[:cluster] unless input[:cluster].nil?
        data['task'] = input[:task] unless input[:task].nil?
        data['reason'] = input[:reason] unless input[:reason].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SubmitAttachmentStateChanges
    class SubmitAttachmentStateChanges
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.SubmitAttachmentStateChanges'
        data = {}
        data['cluster'] = input[:cluster] unless input[:cluster].nil?
        data['attachments'] = AttachmentStateChanges.build(input[:attachments]) unless input[:attachments].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AttachmentStateChanges
    class AttachmentStateChanges
      def self.build(input)
        data = []
        input.each do |element|
          data << AttachmentStateChange.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AttachmentStateChange
    class AttachmentStateChange
      def self.build(input)
        data = {}
        data['attachmentArn'] = input[:attachment_arn] unless input[:attachment_arn].nil?
        data['status'] = input[:status] unless input[:status].nil?
        data
      end
    end

    # Operation Builder for SubmitContainerStateChange
    class SubmitContainerStateChange
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.SubmitContainerStateChange'
        data = {}
        data['cluster'] = input[:cluster] unless input[:cluster].nil?
        data['task'] = input[:task] unless input[:task].nil?
        data['containerName'] = input[:container_name] unless input[:container_name].nil?
        data['runtimeId'] = input[:runtime_id] unless input[:runtime_id].nil?
        data['status'] = input[:status] unless input[:status].nil?
        data['exitCode'] = input[:exit_code] unless input[:exit_code].nil?
        data['reason'] = input[:reason] unless input[:reason].nil?
        data['networkBindings'] = NetworkBindings.build(input[:network_bindings]) unless input[:network_bindings].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for NetworkBindings
    class NetworkBindings
      def self.build(input)
        data = []
        input.each do |element|
          data << NetworkBinding.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for NetworkBinding
    class NetworkBinding
      def self.build(input)
        data = {}
        data['bindIP'] = input[:bind_ip] unless input[:bind_ip].nil?
        data['containerPort'] = input[:container_port] unless input[:container_port].nil?
        data['hostPort'] = input[:host_port] unless input[:host_port].nil?
        data['protocol'] = input[:protocol] unless input[:protocol].nil?
        data
      end
    end

    # Operation Builder for SubmitTaskStateChange
    class SubmitTaskStateChange
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.SubmitTaskStateChange'
        data = {}
        data['cluster'] = input[:cluster] unless input[:cluster].nil?
        data['task'] = input[:task] unless input[:task].nil?
        data['status'] = input[:status] unless input[:status].nil?
        data['reason'] = input[:reason] unless input[:reason].nil?
        data['containers'] = ContainerStateChanges.build(input[:containers]) unless input[:containers].nil?
        data['attachments'] = AttachmentStateChanges.build(input[:attachments]) unless input[:attachments].nil?
        data['managedAgents'] = ManagedAgentStateChanges.build(input[:managed_agents]) unless input[:managed_agents].nil?
        data['pullStartedAt'] = Hearth::TimeHelper.to_epoch_seconds(input[:pull_started_at]).to_i unless input[:pull_started_at].nil?
        data['pullStoppedAt'] = Hearth::TimeHelper.to_epoch_seconds(input[:pull_stopped_at]).to_i unless input[:pull_stopped_at].nil?
        data['executionStoppedAt'] = Hearth::TimeHelper.to_epoch_seconds(input[:execution_stopped_at]).to_i unless input[:execution_stopped_at].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ManagedAgentStateChanges
    class ManagedAgentStateChanges
      def self.build(input)
        data = []
        input.each do |element|
          data << ManagedAgentStateChange.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ManagedAgentStateChange
    class ManagedAgentStateChange
      def self.build(input)
        data = {}
        data['containerName'] = input[:container_name] unless input[:container_name].nil?
        data['managedAgentName'] = input[:managed_agent_name] unless input[:managed_agent_name].nil?
        data['status'] = input[:status] unless input[:status].nil?
        data['reason'] = input[:reason] unless input[:reason].nil?
        data
      end
    end

    # List Builder for ContainerStateChanges
    class ContainerStateChanges
      def self.build(input)
        data = []
        input.each do |element|
          data << ContainerStateChange.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ContainerStateChange
    class ContainerStateChange
      def self.build(input)
        data = {}
        data['containerName'] = input[:container_name] unless input[:container_name].nil?
        data['imageDigest'] = input[:image_digest] unless input[:image_digest].nil?
        data['runtimeId'] = input[:runtime_id] unless input[:runtime_id].nil?
        data['exitCode'] = input[:exit_code] unless input[:exit_code].nil?
        data['networkBindings'] = NetworkBindings.build(input[:network_bindings]) unless input[:network_bindings].nil?
        data['reason'] = input[:reason] unless input[:reason].nil?
        data['status'] = input[:status] unless input[:status].nil?
        data
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.TagResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.UntagResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['tagKeys'] = TagKeys.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for UpdateCapacityProvider
    class UpdateCapacityProvider
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.UpdateCapacityProvider'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['autoScalingGroupProvider'] = AutoScalingGroupProviderUpdate.build(input[:auto_scaling_group_provider]) unless input[:auto_scaling_group_provider].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AutoScalingGroupProviderUpdate
    class AutoScalingGroupProviderUpdate
      def self.build(input)
        data = {}
        data['managedScaling'] = ManagedScaling.build(input[:managed_scaling]) unless input[:managed_scaling].nil?
        data['managedTerminationProtection'] = input[:managed_termination_protection] unless input[:managed_termination_protection].nil?
        data
      end
    end

    # Operation Builder for UpdateCluster
    class UpdateCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.UpdateCluster'
        data = {}
        data['cluster'] = input[:cluster] unless input[:cluster].nil?
        data['settings'] = ClusterSettings.build(input[:settings]) unless input[:settings].nil?
        data['configuration'] = ClusterConfiguration.build(input[:configuration]) unless input[:configuration].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateClusterSettings
    class UpdateClusterSettings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.UpdateClusterSettings'
        data = {}
        data['cluster'] = input[:cluster] unless input[:cluster].nil?
        data['settings'] = ClusterSettings.build(input[:settings]) unless input[:settings].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateContainerAgent
    class UpdateContainerAgent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.UpdateContainerAgent'
        data = {}
        data['cluster'] = input[:cluster] unless input[:cluster].nil?
        data['containerInstance'] = input[:container_instance] unless input[:container_instance].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateContainerInstancesState
    class UpdateContainerInstancesState
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.UpdateContainerInstancesState'
        data = {}
        data['cluster'] = input[:cluster] unless input[:cluster].nil?
        data['containerInstances'] = StringList.build(input[:container_instances]) unless input[:container_instances].nil?
        data['status'] = input[:status] unless input[:status].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateService
    class UpdateService
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.UpdateService'
        data = {}
        data['cluster'] = input[:cluster] unless input[:cluster].nil?
        data['service'] = input[:service] unless input[:service].nil?
        data['desiredCount'] = input[:desired_count] unless input[:desired_count].nil?
        data['taskDefinition'] = input[:task_definition] unless input[:task_definition].nil?
        data['capacityProviderStrategy'] = CapacityProviderStrategy.build(input[:capacity_provider_strategy]) unless input[:capacity_provider_strategy].nil?
        data['deploymentConfiguration'] = DeploymentConfiguration.build(input[:deployment_configuration]) unless input[:deployment_configuration].nil?
        data['networkConfiguration'] = NetworkConfiguration.build(input[:network_configuration]) unless input[:network_configuration].nil?
        data['placementConstraints'] = PlacementConstraints.build(input[:placement_constraints]) unless input[:placement_constraints].nil?
        data['placementStrategy'] = PlacementStrategies.build(input[:placement_strategy]) unless input[:placement_strategy].nil?
        data['platformVersion'] = input[:platform_version] unless input[:platform_version].nil?
        data['forceNewDeployment'] = input[:force_new_deployment] unless input[:force_new_deployment].nil?
        data['healthCheckGracePeriodSeconds'] = input[:health_check_grace_period_seconds] unless input[:health_check_grace_period_seconds].nil?
        data['enableExecuteCommand'] = input[:enable_execute_command] unless input[:enable_execute_command].nil?
        data['enableECSManagedTags'] = input[:enable_ecs_managed_tags] unless input[:enable_ecs_managed_tags].nil?
        data['loadBalancers'] = LoadBalancers.build(input[:load_balancers]) unless input[:load_balancers].nil?
        data['propagateTags'] = input[:propagate_tags] unless input[:propagate_tags].nil?
        data['serviceRegistries'] = ServiceRegistries.build(input[:service_registries]) unless input[:service_registries].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateServicePrimaryTaskSet
    class UpdateServicePrimaryTaskSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.UpdateServicePrimaryTaskSet'
        data = {}
        data['cluster'] = input[:cluster] unless input[:cluster].nil?
        data['service'] = input[:service] unless input[:service].nil?
        data['primaryTaskSet'] = input[:primary_task_set] unless input[:primary_task_set].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateTaskSet
    class UpdateTaskSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AmazonEC2ContainerServiceV20141113.UpdateTaskSet'
        data = {}
        data['cluster'] = input[:cluster] unless input[:cluster].nil?
        data['service'] = input[:service] unless input[:service].nil?
        data['taskSet'] = input[:task_set] unless input[:task_set].nil?
        data['scale'] = Scale.build(input[:scale]) unless input[:scale].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
