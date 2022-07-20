# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ECS
  module Stubs

    # Operation Stubber for CreateCapacityProvider
    class CreateCapacityProvider
      def self.default(visited=[])
        {
          capacity_provider: CapacityProvider.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['capacityProvider'] = Stubs::CapacityProvider.stub(stub[:capacity_provider]) unless stub[:capacity_provider].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for CapacityProvider
    class CapacityProvider
      def self.default(visited=[])
        return nil if visited.include?('CapacityProvider')
        visited = visited + ['CapacityProvider']
        {
          capacity_provider_arn: 'capacity_provider_arn',
          name: 'name',
          status: 'status',
          auto_scaling_group_provider: AutoScalingGroupProvider.default(visited),
          update_status: 'update_status',
          update_status_reason: 'update_status_reason',
          tags: Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CapacityProvider.new
        data = {}
        data['capacityProviderArn'] = stub[:capacity_provider_arn] unless stub[:capacity_provider_arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['autoScalingGroupProvider'] = Stubs::AutoScalingGroupProvider.stub(stub[:auto_scaling_group_provider]) unless stub[:auto_scaling_group_provider].nil?
        data['updateStatus'] = stub[:update_status] unless stub[:update_status].nil?
        data['updateStatusReason'] = stub[:update_status_reason] unless stub[:update_status_reason].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # List Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for AutoScalingGroupProvider
    class AutoScalingGroupProvider
      def self.default(visited=[])
        return nil if visited.include?('AutoScalingGroupProvider')
        visited = visited + ['AutoScalingGroupProvider']
        {
          auto_scaling_group_arn: 'auto_scaling_group_arn',
          managed_scaling: ManagedScaling.default(visited),
          managed_termination_protection: 'managed_termination_protection',
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoScalingGroupProvider.new
        data = {}
        data['autoScalingGroupArn'] = stub[:auto_scaling_group_arn] unless stub[:auto_scaling_group_arn].nil?
        data['managedScaling'] = Stubs::ManagedScaling.stub(stub[:managed_scaling]) unless stub[:managed_scaling].nil?
        data['managedTerminationProtection'] = stub[:managed_termination_protection] unless stub[:managed_termination_protection].nil?
        data
      end
    end

    # Structure Stubber for ManagedScaling
    class ManagedScaling
      def self.default(visited=[])
        return nil if visited.include?('ManagedScaling')
        visited = visited + ['ManagedScaling']
        {
          status: 'status',
          target_capacity: 1,
          minimum_scaling_step_size: 1,
          maximum_scaling_step_size: 1,
          instance_warmup_period: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ManagedScaling.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data['targetCapacity'] = stub[:target_capacity] unless stub[:target_capacity].nil?
        data['minimumScalingStepSize'] = stub[:minimum_scaling_step_size] unless stub[:minimum_scaling_step_size].nil?
        data['maximumScalingStepSize'] = stub[:maximum_scaling_step_size] unless stub[:maximum_scaling_step_size].nil?
        data['instanceWarmupPeriod'] = stub[:instance_warmup_period] unless stub[:instance_warmup_period].nil?
        data
      end
    end

    # Operation Stubber for CreateCluster
    class CreateCluster
      def self.default(visited=[])
        {
          cluster: Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['cluster'] = Stubs::Cluster.stub(stub[:cluster]) unless stub[:cluster].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Cluster
    class Cluster
      def self.default(visited=[])
        return nil if visited.include?('Cluster')
        visited = visited + ['Cluster']
        {
          cluster_arn: 'cluster_arn',
          cluster_name: 'cluster_name',
          configuration: ClusterConfiguration.default(visited),
          status: 'status',
          registered_container_instances_count: 1,
          running_tasks_count: 1,
          pending_tasks_count: 1,
          active_services_count: 1,
          statistics: Statistics.default(visited),
          tags: Tags.default(visited),
          settings: ClusterSettings.default(visited),
          capacity_providers: StringList.default(visited),
          default_capacity_provider_strategy: CapacityProviderStrategy.default(visited),
          attachments: Attachments.default(visited),
          attachments_status: 'attachments_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::Cluster.new
        data = {}
        data['clusterArn'] = stub[:cluster_arn] unless stub[:cluster_arn].nil?
        data['clusterName'] = stub[:cluster_name] unless stub[:cluster_name].nil?
        data['configuration'] = Stubs::ClusterConfiguration.stub(stub[:configuration]) unless stub[:configuration].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['registeredContainerInstancesCount'] = stub[:registered_container_instances_count] unless stub[:registered_container_instances_count].nil?
        data['runningTasksCount'] = stub[:running_tasks_count] unless stub[:running_tasks_count].nil?
        data['pendingTasksCount'] = stub[:pending_tasks_count] unless stub[:pending_tasks_count].nil?
        data['activeServicesCount'] = stub[:active_services_count] unless stub[:active_services_count].nil?
        data['statistics'] = Stubs::Statistics.stub(stub[:statistics]) unless stub[:statistics].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['settings'] = Stubs::ClusterSettings.stub(stub[:settings]) unless stub[:settings].nil?
        data['capacityProviders'] = Stubs::StringList.stub(stub[:capacity_providers]) unless stub[:capacity_providers].nil?
        data['defaultCapacityProviderStrategy'] = Stubs::CapacityProviderStrategy.stub(stub[:default_capacity_provider_strategy]) unless stub[:default_capacity_provider_strategy].nil?
        data['attachments'] = Stubs::Attachments.stub(stub[:attachments]) unless stub[:attachments].nil?
        data['attachmentsStatus'] = stub[:attachments_status] unless stub[:attachments_status].nil?
        data
      end
    end

    # List Stubber for Attachments
    class Attachments
      def self.default(visited=[])
        return nil if visited.include?('Attachments')
        visited = visited + ['Attachments']
        [
          Attachment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Attachment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Attachment
    class Attachment
      def self.default(visited=[])
        return nil if visited.include?('Attachment')
        visited = visited + ['Attachment']
        {
          id: 'id',
          type: 'type',
          status: 'status',
          details: AttachmentDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Attachment.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['details'] = Stubs::AttachmentDetails.stub(stub[:details]) unless stub[:details].nil?
        data
      end
    end

    # List Stubber for AttachmentDetails
    class AttachmentDetails
      def self.default(visited=[])
        return nil if visited.include?('AttachmentDetails')
        visited = visited + ['AttachmentDetails']
        [
          KeyValuePair.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::KeyValuePair.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for KeyValuePair
    class KeyValuePair
      def self.default(visited=[])
        return nil if visited.include?('KeyValuePair')
        visited = visited + ['KeyValuePair']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::KeyValuePair.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # List Stubber for CapacityProviderStrategy
    class CapacityProviderStrategy
      def self.default(visited=[])
        return nil if visited.include?('CapacityProviderStrategy')
        visited = visited + ['CapacityProviderStrategy']
        [
          CapacityProviderStrategyItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CapacityProviderStrategyItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CapacityProviderStrategyItem
    class CapacityProviderStrategyItem
      def self.default(visited=[])
        return nil if visited.include?('CapacityProviderStrategyItem')
        visited = visited + ['CapacityProviderStrategyItem']
        {
          capacity_provider: 'capacity_provider',
          weight: 1,
          base: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::CapacityProviderStrategyItem.new
        data = {}
        data['capacityProvider'] = stub[:capacity_provider] unless stub[:capacity_provider].nil?
        data['weight'] = stub[:weight] unless stub[:weight].nil?
        data['base'] = stub[:base] unless stub[:base].nil?
        data
      end
    end

    # List Stubber for StringList
    class StringList
      def self.default(visited=[])
        return nil if visited.include?('StringList')
        visited = visited + ['StringList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for ClusterSettings
    class ClusterSettings
      def self.default(visited=[])
        return nil if visited.include?('ClusterSettings')
        visited = visited + ['ClusterSettings']
        [
          ClusterSetting.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ClusterSetting.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ClusterSetting
    class ClusterSetting
      def self.default(visited=[])
        return nil if visited.include?('ClusterSetting')
        visited = visited + ['ClusterSetting']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::ClusterSetting.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # List Stubber for Statistics
    class Statistics
      def self.default(visited=[])
        return nil if visited.include?('Statistics')
        visited = visited + ['Statistics']
        [
          KeyValuePair.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::KeyValuePair.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ClusterConfiguration
    class ClusterConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ClusterConfiguration')
        visited = visited + ['ClusterConfiguration']
        {
          execute_command_configuration: ExecuteCommandConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ClusterConfiguration.new
        data = {}
        data['executeCommandConfiguration'] = Stubs::ExecuteCommandConfiguration.stub(stub[:execute_command_configuration]) unless stub[:execute_command_configuration].nil?
        data
      end
    end

    # Structure Stubber for ExecuteCommandConfiguration
    class ExecuteCommandConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ExecuteCommandConfiguration')
        visited = visited + ['ExecuteCommandConfiguration']
        {
          kms_key_id: 'kms_key_id',
          logging: 'logging',
          log_configuration: ExecuteCommandLogConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExecuteCommandConfiguration.new
        data = {}
        data['kmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['logging'] = stub[:logging] unless stub[:logging].nil?
        data['logConfiguration'] = Stubs::ExecuteCommandLogConfiguration.stub(stub[:log_configuration]) unless stub[:log_configuration].nil?
        data
      end
    end

    # Structure Stubber for ExecuteCommandLogConfiguration
    class ExecuteCommandLogConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ExecuteCommandLogConfiguration')
        visited = visited + ['ExecuteCommandLogConfiguration']
        {
          cloud_watch_log_group_name: 'cloud_watch_log_group_name',
          cloud_watch_encryption_enabled: false,
          s3_bucket_name: 's3_bucket_name',
          s3_encryption_enabled: false,
          s3_key_prefix: 's3_key_prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExecuteCommandLogConfiguration.new
        data = {}
        data['cloudWatchLogGroupName'] = stub[:cloud_watch_log_group_name] unless stub[:cloud_watch_log_group_name].nil?
        data['cloudWatchEncryptionEnabled'] = stub[:cloud_watch_encryption_enabled] unless stub[:cloud_watch_encryption_enabled].nil?
        data['s3BucketName'] = stub[:s3_bucket_name] unless stub[:s3_bucket_name].nil?
        data['s3EncryptionEnabled'] = stub[:s3_encryption_enabled] unless stub[:s3_encryption_enabled].nil?
        data['s3KeyPrefix'] = stub[:s3_key_prefix] unless stub[:s3_key_prefix].nil?
        data
      end
    end

    # Operation Stubber for CreateService
    class CreateService
      def self.default(visited=[])
        {
          service: Service.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['service'] = Stubs::Service.stub(stub[:service]) unless stub[:service].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Service
    class Service
      def self.default(visited=[])
        return nil if visited.include?('Service')
        visited = visited + ['Service']
        {
          service_arn: 'service_arn',
          service_name: 'service_name',
          cluster_arn: 'cluster_arn',
          load_balancers: LoadBalancers.default(visited),
          service_registries: ServiceRegistries.default(visited),
          status: 'status',
          desired_count: 1,
          running_count: 1,
          pending_count: 1,
          launch_type: 'launch_type',
          capacity_provider_strategy: CapacityProviderStrategy.default(visited),
          platform_version: 'platform_version',
          platform_family: 'platform_family',
          task_definition: 'task_definition',
          deployment_configuration: DeploymentConfiguration.default(visited),
          task_sets: TaskSets.default(visited),
          deployments: Deployments.default(visited),
          role_arn: 'role_arn',
          events: ServiceEvents.default(visited),
          created_at: Time.now,
          placement_constraints: PlacementConstraints.default(visited),
          placement_strategy: PlacementStrategies.default(visited),
          network_configuration: NetworkConfiguration.default(visited),
          health_check_grace_period_seconds: 1,
          scheduling_strategy: 'scheduling_strategy',
          deployment_controller: DeploymentController.default(visited),
          tags: Tags.default(visited),
          created_by: 'created_by',
          enable_ecs_managed_tags: false,
          propagate_tags: 'propagate_tags',
          enable_execute_command: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::Service.new
        data = {}
        data['serviceArn'] = stub[:service_arn] unless stub[:service_arn].nil?
        data['serviceName'] = stub[:service_name] unless stub[:service_name].nil?
        data['clusterArn'] = stub[:cluster_arn] unless stub[:cluster_arn].nil?
        data['loadBalancers'] = Stubs::LoadBalancers.stub(stub[:load_balancers]) unless stub[:load_balancers].nil?
        data['serviceRegistries'] = Stubs::ServiceRegistries.stub(stub[:service_registries]) unless stub[:service_registries].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['desiredCount'] = stub[:desired_count] unless stub[:desired_count].nil?
        data['runningCount'] = stub[:running_count] unless stub[:running_count].nil?
        data['pendingCount'] = stub[:pending_count] unless stub[:pending_count].nil?
        data['launchType'] = stub[:launch_type] unless stub[:launch_type].nil?
        data['capacityProviderStrategy'] = Stubs::CapacityProviderStrategy.stub(stub[:capacity_provider_strategy]) unless stub[:capacity_provider_strategy].nil?
        data['platformVersion'] = stub[:platform_version] unless stub[:platform_version].nil?
        data['platformFamily'] = stub[:platform_family] unless stub[:platform_family].nil?
        data['taskDefinition'] = stub[:task_definition] unless stub[:task_definition].nil?
        data['deploymentConfiguration'] = Stubs::DeploymentConfiguration.stub(stub[:deployment_configuration]) unless stub[:deployment_configuration].nil?
        data['taskSets'] = Stubs::TaskSets.stub(stub[:task_sets]) unless stub[:task_sets].nil?
        data['deployments'] = Stubs::Deployments.stub(stub[:deployments]) unless stub[:deployments].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['events'] = Stubs::ServiceEvents.stub(stub[:events]) unless stub[:events].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['placementConstraints'] = Stubs::PlacementConstraints.stub(stub[:placement_constraints]) unless stub[:placement_constraints].nil?
        data['placementStrategy'] = Stubs::PlacementStrategies.stub(stub[:placement_strategy]) unless stub[:placement_strategy].nil?
        data['networkConfiguration'] = Stubs::NetworkConfiguration.stub(stub[:network_configuration]) unless stub[:network_configuration].nil?
        data['healthCheckGracePeriodSeconds'] = stub[:health_check_grace_period_seconds] unless stub[:health_check_grace_period_seconds].nil?
        data['schedulingStrategy'] = stub[:scheduling_strategy] unless stub[:scheduling_strategy].nil?
        data['deploymentController'] = Stubs::DeploymentController.stub(stub[:deployment_controller]) unless stub[:deployment_controller].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['createdBy'] = stub[:created_by] unless stub[:created_by].nil?
        data['enableECSManagedTags'] = stub[:enable_ecs_managed_tags] unless stub[:enable_ecs_managed_tags].nil?
        data['propagateTags'] = stub[:propagate_tags] unless stub[:propagate_tags].nil?
        data['enableExecuteCommand'] = stub[:enable_execute_command] unless stub[:enable_execute_command].nil?
        data
      end
    end

    # Structure Stubber for DeploymentController
    class DeploymentController
      def self.default(visited=[])
        return nil if visited.include?('DeploymentController')
        visited = visited + ['DeploymentController']
        {
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::DeploymentController.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for NetworkConfiguration
    class NetworkConfiguration
      def self.default(visited=[])
        return nil if visited.include?('NetworkConfiguration')
        visited = visited + ['NetworkConfiguration']
        {
          awsvpc_configuration: AwsVpcConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkConfiguration.new
        data = {}
        data['awsvpcConfiguration'] = Stubs::AwsVpcConfiguration.stub(stub[:awsvpc_configuration]) unless stub[:awsvpc_configuration].nil?
        data
      end
    end

    # Structure Stubber for AwsVpcConfiguration
    class AwsVpcConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AwsVpcConfiguration')
        visited = visited + ['AwsVpcConfiguration']
        {
          subnets: StringList.default(visited),
          security_groups: StringList.default(visited),
          assign_public_ip: 'assign_public_ip',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsVpcConfiguration.new
        data = {}
        data['subnets'] = Stubs::StringList.stub(stub[:subnets]) unless stub[:subnets].nil?
        data['securityGroups'] = Stubs::StringList.stub(stub[:security_groups]) unless stub[:security_groups].nil?
        data['assignPublicIp'] = stub[:assign_public_ip] unless stub[:assign_public_ip].nil?
        data
      end
    end

    # List Stubber for PlacementStrategies
    class PlacementStrategies
      def self.default(visited=[])
        return nil if visited.include?('PlacementStrategies')
        visited = visited + ['PlacementStrategies']
        [
          PlacementStrategy.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PlacementStrategy.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PlacementStrategy
    class PlacementStrategy
      def self.default(visited=[])
        return nil if visited.include?('PlacementStrategy')
        visited = visited + ['PlacementStrategy']
        {
          type: 'type',
          field: 'field',
        }
      end

      def self.stub(stub)
        stub ||= Types::PlacementStrategy.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['field'] = stub[:field] unless stub[:field].nil?
        data
      end
    end

    # List Stubber for PlacementConstraints
    class PlacementConstraints
      def self.default(visited=[])
        return nil if visited.include?('PlacementConstraints')
        visited = visited + ['PlacementConstraints']
        [
          PlacementConstraint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PlacementConstraint.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PlacementConstraint
    class PlacementConstraint
      def self.default(visited=[])
        return nil if visited.include?('PlacementConstraint')
        visited = visited + ['PlacementConstraint']
        {
          type: 'type',
          expression: 'expression',
        }
      end

      def self.stub(stub)
        stub ||= Types::PlacementConstraint.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['expression'] = stub[:expression] unless stub[:expression].nil?
        data
      end
    end

    # List Stubber for ServiceEvents
    class ServiceEvents
      def self.default(visited=[])
        return nil if visited.include?('ServiceEvents')
        visited = visited + ['ServiceEvents']
        [
          ServiceEvent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ServiceEvent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ServiceEvent
    class ServiceEvent
      def self.default(visited=[])
        return nil if visited.include?('ServiceEvent')
        visited = visited + ['ServiceEvent']
        {
          id: 'id',
          created_at: Time.now,
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceEvent.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # List Stubber for Deployments
    class Deployments
      def self.default(visited=[])
        return nil if visited.include?('Deployments')
        visited = visited + ['Deployments']
        [
          Deployment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Deployment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Deployment
    class Deployment
      def self.default(visited=[])
        return nil if visited.include?('Deployment')
        visited = visited + ['Deployment']
        {
          id: 'id',
          status: 'status',
          task_definition: 'task_definition',
          desired_count: 1,
          pending_count: 1,
          running_count: 1,
          failed_tasks: 1,
          created_at: Time.now,
          updated_at: Time.now,
          capacity_provider_strategy: CapacityProviderStrategy.default(visited),
          launch_type: 'launch_type',
          platform_version: 'platform_version',
          platform_family: 'platform_family',
          network_configuration: NetworkConfiguration.default(visited),
          rollout_state: 'rollout_state',
          rollout_state_reason: 'rollout_state_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::Deployment.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['taskDefinition'] = stub[:task_definition] unless stub[:task_definition].nil?
        data['desiredCount'] = stub[:desired_count] unless stub[:desired_count].nil?
        data['pendingCount'] = stub[:pending_count] unless stub[:pending_count].nil?
        data['runningCount'] = stub[:running_count] unless stub[:running_count].nil?
        data['failedTasks'] = stub[:failed_tasks] unless stub[:failed_tasks].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['updatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data['capacityProviderStrategy'] = Stubs::CapacityProviderStrategy.stub(stub[:capacity_provider_strategy]) unless stub[:capacity_provider_strategy].nil?
        data['launchType'] = stub[:launch_type] unless stub[:launch_type].nil?
        data['platformVersion'] = stub[:platform_version] unless stub[:platform_version].nil?
        data['platformFamily'] = stub[:platform_family] unless stub[:platform_family].nil?
        data['networkConfiguration'] = Stubs::NetworkConfiguration.stub(stub[:network_configuration]) unless stub[:network_configuration].nil?
        data['rolloutState'] = stub[:rollout_state] unless stub[:rollout_state].nil?
        data['rolloutStateReason'] = stub[:rollout_state_reason] unless stub[:rollout_state_reason].nil?
        data
      end
    end

    # List Stubber for TaskSets
    class TaskSets
      def self.default(visited=[])
        return nil if visited.include?('TaskSets')
        visited = visited + ['TaskSets']
        [
          TaskSet.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TaskSet.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TaskSet
    class TaskSet
      def self.default(visited=[])
        return nil if visited.include?('TaskSet')
        visited = visited + ['TaskSet']
        {
          id: 'id',
          task_set_arn: 'task_set_arn',
          service_arn: 'service_arn',
          cluster_arn: 'cluster_arn',
          started_by: 'started_by',
          external_id: 'external_id',
          status: 'status',
          task_definition: 'task_definition',
          computed_desired_count: 1,
          pending_count: 1,
          running_count: 1,
          created_at: Time.now,
          updated_at: Time.now,
          launch_type: 'launch_type',
          capacity_provider_strategy: CapacityProviderStrategy.default(visited),
          platform_version: 'platform_version',
          platform_family: 'platform_family',
          network_configuration: NetworkConfiguration.default(visited),
          load_balancers: LoadBalancers.default(visited),
          service_registries: ServiceRegistries.default(visited),
          scale: Scale.default(visited),
          stability_status: 'stability_status',
          stability_status_at: Time.now,
          tags: Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TaskSet.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['taskSetArn'] = stub[:task_set_arn] unless stub[:task_set_arn].nil?
        data['serviceArn'] = stub[:service_arn] unless stub[:service_arn].nil?
        data['clusterArn'] = stub[:cluster_arn] unless stub[:cluster_arn].nil?
        data['startedBy'] = stub[:started_by] unless stub[:started_by].nil?
        data['externalId'] = stub[:external_id] unless stub[:external_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['taskDefinition'] = stub[:task_definition] unless stub[:task_definition].nil?
        data['computedDesiredCount'] = stub[:computed_desired_count] unless stub[:computed_desired_count].nil?
        data['pendingCount'] = stub[:pending_count] unless stub[:pending_count].nil?
        data['runningCount'] = stub[:running_count] unless stub[:running_count].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['updatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data['launchType'] = stub[:launch_type] unless stub[:launch_type].nil?
        data['capacityProviderStrategy'] = Stubs::CapacityProviderStrategy.stub(stub[:capacity_provider_strategy]) unless stub[:capacity_provider_strategy].nil?
        data['platformVersion'] = stub[:platform_version] unless stub[:platform_version].nil?
        data['platformFamily'] = stub[:platform_family] unless stub[:platform_family].nil?
        data['networkConfiguration'] = Stubs::NetworkConfiguration.stub(stub[:network_configuration]) unless stub[:network_configuration].nil?
        data['loadBalancers'] = Stubs::LoadBalancers.stub(stub[:load_balancers]) unless stub[:load_balancers].nil?
        data['serviceRegistries'] = Stubs::ServiceRegistries.stub(stub[:service_registries]) unless stub[:service_registries].nil?
        data['scale'] = Stubs::Scale.stub(stub[:scale]) unless stub[:scale].nil?
        data['stabilityStatus'] = stub[:stability_status] unless stub[:stability_status].nil?
        data['stabilityStatusAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:stability_status_at]).to_i unless stub[:stability_status_at].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Structure Stubber for Scale
    class Scale
      def self.default(visited=[])
        return nil if visited.include?('Scale')
        visited = visited + ['Scale']
        {
          value: 1.0,
          unit: 'unit',
        }
      end

      def self.stub(stub)
        stub ||= Types::Scale.new
        data = {}
        data['value'] = Hearth::NumberHelper.serialize(stub[:value])
        data['unit'] = stub[:unit] unless stub[:unit].nil?
        data
      end
    end

    # List Stubber for ServiceRegistries
    class ServiceRegistries
      def self.default(visited=[])
        return nil if visited.include?('ServiceRegistries')
        visited = visited + ['ServiceRegistries']
        [
          ServiceRegistry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ServiceRegistry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ServiceRegistry
    class ServiceRegistry
      def self.default(visited=[])
        return nil if visited.include?('ServiceRegistry')
        visited = visited + ['ServiceRegistry']
        {
          registry_arn: 'registry_arn',
          port: 1,
          container_name: 'container_name',
          container_port: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceRegistry.new
        data = {}
        data['registryArn'] = stub[:registry_arn] unless stub[:registry_arn].nil?
        data['port'] = stub[:port] unless stub[:port].nil?
        data['containerName'] = stub[:container_name] unless stub[:container_name].nil?
        data['containerPort'] = stub[:container_port] unless stub[:container_port].nil?
        data
      end
    end

    # List Stubber for LoadBalancers
    class LoadBalancers
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancers')
        visited = visited + ['LoadBalancers']
        [
          LoadBalancer.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LoadBalancer.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LoadBalancer
    class LoadBalancer
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancer')
        visited = visited + ['LoadBalancer']
        {
          target_group_arn: 'target_group_arn',
          load_balancer_name: 'load_balancer_name',
          container_name: 'container_name',
          container_port: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::LoadBalancer.new
        data = {}
        data['targetGroupArn'] = stub[:target_group_arn] unless stub[:target_group_arn].nil?
        data['loadBalancerName'] = stub[:load_balancer_name] unless stub[:load_balancer_name].nil?
        data['containerName'] = stub[:container_name] unless stub[:container_name].nil?
        data['containerPort'] = stub[:container_port] unless stub[:container_port].nil?
        data
      end
    end

    # Structure Stubber for DeploymentConfiguration
    class DeploymentConfiguration
      def self.default(visited=[])
        return nil if visited.include?('DeploymentConfiguration')
        visited = visited + ['DeploymentConfiguration']
        {
          deployment_circuit_breaker: DeploymentCircuitBreaker.default(visited),
          maximum_percent: 1,
          minimum_healthy_percent: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DeploymentConfiguration.new
        data = {}
        data['deploymentCircuitBreaker'] = Stubs::DeploymentCircuitBreaker.stub(stub[:deployment_circuit_breaker]) unless stub[:deployment_circuit_breaker].nil?
        data['maximumPercent'] = stub[:maximum_percent] unless stub[:maximum_percent].nil?
        data['minimumHealthyPercent'] = stub[:minimum_healthy_percent] unless stub[:minimum_healthy_percent].nil?
        data
      end
    end

    # Structure Stubber for DeploymentCircuitBreaker
    class DeploymentCircuitBreaker
      def self.default(visited=[])
        return nil if visited.include?('DeploymentCircuitBreaker')
        visited = visited + ['DeploymentCircuitBreaker']
        {
          enable: false,
          rollback: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::DeploymentCircuitBreaker.new
        data = {}
        data['enable'] = stub[:enable] unless stub[:enable].nil?
        data['rollback'] = stub[:rollback] unless stub[:rollback].nil?
        data
      end
    end

    # Operation Stubber for CreateTaskSet
    class CreateTaskSet
      def self.default(visited=[])
        {
          task_set: TaskSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['taskSet'] = Stubs::TaskSet.stub(stub[:task_set]) unless stub[:task_set].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAccountSetting
    class DeleteAccountSetting
      def self.default(visited=[])
        {
          setting: Setting.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['setting'] = Stubs::Setting.stub(stub[:setting]) unless stub[:setting].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Setting
    class Setting
      def self.default(visited=[])
        return nil if visited.include?('Setting')
        visited = visited + ['Setting']
        {
          name: 'name',
          value: 'value',
          principal_arn: 'principal_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Setting.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data['principalArn'] = stub[:principal_arn] unless stub[:principal_arn].nil?
        data
      end
    end

    # Operation Stubber for DeleteAttributes
    class DeleteAttributes
      def self.default(visited=[])
        {
          attributes: Attributes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['attributes'] = Stubs::Attributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Attributes
    class Attributes
      def self.default(visited=[])
        return nil if visited.include?('Attributes')
        visited = visited + ['Attributes']
        [
          Attribute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Attribute.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Attribute
    class Attribute
      def self.default(visited=[])
        return nil if visited.include?('Attribute')
        visited = visited + ['Attribute']
        {
          name: 'name',
          value: 'value',
          target_type: 'target_type',
          target_id: 'target_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::Attribute.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data['targetType'] = stub[:target_type] unless stub[:target_type].nil?
        data['targetId'] = stub[:target_id] unless stub[:target_id].nil?
        data
      end
    end

    # Operation Stubber for DeleteCapacityProvider
    class DeleteCapacityProvider
      def self.default(visited=[])
        {
          capacity_provider: CapacityProvider.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['capacityProvider'] = Stubs::CapacityProvider.stub(stub[:capacity_provider]) unless stub[:capacity_provider].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteCluster
    class DeleteCluster
      def self.default(visited=[])
        {
          cluster: Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['cluster'] = Stubs::Cluster.stub(stub[:cluster]) unless stub[:cluster].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteService
    class DeleteService
      def self.default(visited=[])
        {
          service: Service.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['service'] = Stubs::Service.stub(stub[:service]) unless stub[:service].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteTaskSet
    class DeleteTaskSet
      def self.default(visited=[])
        {
          task_set: TaskSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['taskSet'] = Stubs::TaskSet.stub(stub[:task_set]) unless stub[:task_set].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeregisterContainerInstance
    class DeregisterContainerInstance
      def self.default(visited=[])
        {
          container_instance: ContainerInstance.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['containerInstance'] = Stubs::ContainerInstance.stub(stub[:container_instance]) unless stub[:container_instance].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ContainerInstance
    class ContainerInstance
      def self.default(visited=[])
        return nil if visited.include?('ContainerInstance')
        visited = visited + ['ContainerInstance']
        {
          container_instance_arn: 'container_instance_arn',
          ec2_instance_id: 'ec2_instance_id',
          capacity_provider_name: 'capacity_provider_name',
          version: 1,
          version_info: VersionInfo.default(visited),
          remaining_resources: Resources.default(visited),
          registered_resources: Resources.default(visited),
          status: 'status',
          status_reason: 'status_reason',
          agent_connected: false,
          running_tasks_count: 1,
          pending_tasks_count: 1,
          agent_update_status: 'agent_update_status',
          attributes: Attributes.default(visited),
          registered_at: Time.now,
          attachments: Attachments.default(visited),
          tags: Tags.default(visited),
          health_status: ContainerInstanceHealthStatus.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ContainerInstance.new
        data = {}
        data['containerInstanceArn'] = stub[:container_instance_arn] unless stub[:container_instance_arn].nil?
        data['ec2InstanceId'] = stub[:ec2_instance_id] unless stub[:ec2_instance_id].nil?
        data['capacityProviderName'] = stub[:capacity_provider_name] unless stub[:capacity_provider_name].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['versionInfo'] = Stubs::VersionInfo.stub(stub[:version_info]) unless stub[:version_info].nil?
        data['remainingResources'] = Stubs::Resources.stub(stub[:remaining_resources]) unless stub[:remaining_resources].nil?
        data['registeredResources'] = Stubs::Resources.stub(stub[:registered_resources]) unless stub[:registered_resources].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        data['agentConnected'] = stub[:agent_connected] unless stub[:agent_connected].nil?
        data['runningTasksCount'] = stub[:running_tasks_count] unless stub[:running_tasks_count].nil?
        data['pendingTasksCount'] = stub[:pending_tasks_count] unless stub[:pending_tasks_count].nil?
        data['agentUpdateStatus'] = stub[:agent_update_status] unless stub[:agent_update_status].nil?
        data['attributes'] = Stubs::Attributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['registeredAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:registered_at]).to_i unless stub[:registered_at].nil?
        data['attachments'] = Stubs::Attachments.stub(stub[:attachments]) unless stub[:attachments].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['healthStatus'] = Stubs::ContainerInstanceHealthStatus.stub(stub[:health_status]) unless stub[:health_status].nil?
        data
      end
    end

    # Structure Stubber for ContainerInstanceHealthStatus
    class ContainerInstanceHealthStatus
      def self.default(visited=[])
        return nil if visited.include?('ContainerInstanceHealthStatus')
        visited = visited + ['ContainerInstanceHealthStatus']
        {
          overall_status: 'overall_status',
          details: InstanceHealthCheckResultList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ContainerInstanceHealthStatus.new
        data = {}
        data['overallStatus'] = stub[:overall_status] unless stub[:overall_status].nil?
        data['details'] = Stubs::InstanceHealthCheckResultList.stub(stub[:details]) unless stub[:details].nil?
        data
      end
    end

    # List Stubber for InstanceHealthCheckResultList
    class InstanceHealthCheckResultList
      def self.default(visited=[])
        return nil if visited.include?('InstanceHealthCheckResultList')
        visited = visited + ['InstanceHealthCheckResultList']
        [
          InstanceHealthCheckResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InstanceHealthCheckResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InstanceHealthCheckResult
    class InstanceHealthCheckResult
      def self.default(visited=[])
        return nil if visited.include?('InstanceHealthCheckResult')
        visited = visited + ['InstanceHealthCheckResult']
        {
          type: 'type',
          status: 'status',
          last_updated: Time.now,
          last_status_change: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceHealthCheckResult.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['lastUpdated'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated]).to_i unless stub[:last_updated].nil?
        data['lastStatusChange'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_status_change]).to_i unless stub[:last_status_change].nil?
        data
      end
    end

    # List Stubber for Resources
    class Resources
      def self.default(visited=[])
        return nil if visited.include?('Resources')
        visited = visited + ['Resources']
        [
          Resource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Resource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Resource
    class Resource
      def self.default(visited=[])
        return nil if visited.include?('Resource')
        visited = visited + ['Resource']
        {
          name: 'name',
          type: 'type',
          double_value: 1.0,
          long_value: 1,
          integer_value: 1,
          string_set_value: StringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Resource.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['doubleValue'] = Hearth::NumberHelper.serialize(stub[:double_value])
        data['longValue'] = stub[:long_value] unless stub[:long_value].nil?
        data['integerValue'] = stub[:integer_value] unless stub[:integer_value].nil?
        data['stringSetValue'] = Stubs::StringList.stub(stub[:string_set_value]) unless stub[:string_set_value].nil?
        data
      end
    end

    # Structure Stubber for VersionInfo
    class VersionInfo
      def self.default(visited=[])
        return nil if visited.include?('VersionInfo')
        visited = visited + ['VersionInfo']
        {
          agent_version: 'agent_version',
          agent_hash: 'agent_hash',
          docker_version: 'docker_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::VersionInfo.new
        data = {}
        data['agentVersion'] = stub[:agent_version] unless stub[:agent_version].nil?
        data['agentHash'] = stub[:agent_hash] unless stub[:agent_hash].nil?
        data['dockerVersion'] = stub[:docker_version] unless stub[:docker_version].nil?
        data
      end
    end

    # Operation Stubber for DeregisterTaskDefinition
    class DeregisterTaskDefinition
      def self.default(visited=[])
        {
          task_definition: TaskDefinition.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['taskDefinition'] = Stubs::TaskDefinition.stub(stub[:task_definition]) unless stub[:task_definition].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for TaskDefinition
    class TaskDefinition
      def self.default(visited=[])
        return nil if visited.include?('TaskDefinition')
        visited = visited + ['TaskDefinition']
        {
          task_definition_arn: 'task_definition_arn',
          container_definitions: ContainerDefinitions.default(visited),
          family: 'family',
          task_role_arn: 'task_role_arn',
          execution_role_arn: 'execution_role_arn',
          network_mode: 'network_mode',
          revision: 1,
          volumes: VolumeList.default(visited),
          status: 'status',
          requires_attributes: RequiresAttributes.default(visited),
          placement_constraints: TaskDefinitionPlacementConstraints.default(visited),
          compatibilities: CompatibilityList.default(visited),
          runtime_platform: RuntimePlatform.default(visited),
          requires_compatibilities: CompatibilityList.default(visited),
          cpu: 'cpu',
          memory: 'memory',
          inference_accelerators: InferenceAccelerators.default(visited),
          pid_mode: 'pid_mode',
          ipc_mode: 'ipc_mode',
          proxy_configuration: ProxyConfiguration.default(visited),
          registered_at: Time.now,
          deregistered_at: Time.now,
          registered_by: 'registered_by',
          ephemeral_storage: EphemeralStorage.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TaskDefinition.new
        data = {}
        data['taskDefinitionArn'] = stub[:task_definition_arn] unless stub[:task_definition_arn].nil?
        data['containerDefinitions'] = Stubs::ContainerDefinitions.stub(stub[:container_definitions]) unless stub[:container_definitions].nil?
        data['family'] = stub[:family] unless stub[:family].nil?
        data['taskRoleArn'] = stub[:task_role_arn] unless stub[:task_role_arn].nil?
        data['executionRoleArn'] = stub[:execution_role_arn] unless stub[:execution_role_arn].nil?
        data['networkMode'] = stub[:network_mode] unless stub[:network_mode].nil?
        data['revision'] = stub[:revision] unless stub[:revision].nil?
        data['volumes'] = Stubs::VolumeList.stub(stub[:volumes]) unless stub[:volumes].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['requiresAttributes'] = Stubs::RequiresAttributes.stub(stub[:requires_attributes]) unless stub[:requires_attributes].nil?
        data['placementConstraints'] = Stubs::TaskDefinitionPlacementConstraints.stub(stub[:placement_constraints]) unless stub[:placement_constraints].nil?
        data['compatibilities'] = Stubs::CompatibilityList.stub(stub[:compatibilities]) unless stub[:compatibilities].nil?
        data['runtimePlatform'] = Stubs::RuntimePlatform.stub(stub[:runtime_platform]) unless stub[:runtime_platform].nil?
        data['requiresCompatibilities'] = Stubs::CompatibilityList.stub(stub[:requires_compatibilities]) unless stub[:requires_compatibilities].nil?
        data['cpu'] = stub[:cpu] unless stub[:cpu].nil?
        data['memory'] = stub[:memory] unless stub[:memory].nil?
        data['inferenceAccelerators'] = Stubs::InferenceAccelerators.stub(stub[:inference_accelerators]) unless stub[:inference_accelerators].nil?
        data['pidMode'] = stub[:pid_mode] unless stub[:pid_mode].nil?
        data['ipcMode'] = stub[:ipc_mode] unless stub[:ipc_mode].nil?
        data['proxyConfiguration'] = Stubs::ProxyConfiguration.stub(stub[:proxy_configuration]) unless stub[:proxy_configuration].nil?
        data['registeredAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:registered_at]).to_i unless stub[:registered_at].nil?
        data['deregisteredAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:deregistered_at]).to_i unless stub[:deregistered_at].nil?
        data['registeredBy'] = stub[:registered_by] unless stub[:registered_by].nil?
        data['ephemeralStorage'] = Stubs::EphemeralStorage.stub(stub[:ephemeral_storage]) unless stub[:ephemeral_storage].nil?
        data
      end
    end

    # Structure Stubber for EphemeralStorage
    class EphemeralStorage
      def self.default(visited=[])
        return nil if visited.include?('EphemeralStorage')
        visited = visited + ['EphemeralStorage']
        {
          size_in_gi_b: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::EphemeralStorage.new
        data = {}
        data['sizeInGiB'] = stub[:size_in_gi_b] unless stub[:size_in_gi_b].nil?
        data
      end
    end

    # Structure Stubber for ProxyConfiguration
    class ProxyConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ProxyConfiguration')
        visited = visited + ['ProxyConfiguration']
        {
          type: 'type',
          container_name: 'container_name',
          properties: ProxyConfigurationProperties.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProxyConfiguration.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['containerName'] = stub[:container_name] unless stub[:container_name].nil?
        data['properties'] = Stubs::ProxyConfigurationProperties.stub(stub[:properties]) unless stub[:properties].nil?
        data
      end
    end

    # List Stubber for ProxyConfigurationProperties
    class ProxyConfigurationProperties
      def self.default(visited=[])
        return nil if visited.include?('ProxyConfigurationProperties')
        visited = visited + ['ProxyConfigurationProperties']
        [
          KeyValuePair.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::KeyValuePair.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for InferenceAccelerators
    class InferenceAccelerators
      def self.default(visited=[])
        return nil if visited.include?('InferenceAccelerators')
        visited = visited + ['InferenceAccelerators']
        [
          InferenceAccelerator.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InferenceAccelerator.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InferenceAccelerator
    class InferenceAccelerator
      def self.default(visited=[])
        return nil if visited.include?('InferenceAccelerator')
        visited = visited + ['InferenceAccelerator']
        {
          device_name: 'device_name',
          device_type: 'device_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::InferenceAccelerator.new
        data = {}
        data['deviceName'] = stub[:device_name] unless stub[:device_name].nil?
        data['deviceType'] = stub[:device_type] unless stub[:device_type].nil?
        data
      end
    end

    # List Stubber for CompatibilityList
    class CompatibilityList
      def self.default(visited=[])
        return nil if visited.include?('CompatibilityList')
        visited = visited + ['CompatibilityList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RuntimePlatform
    class RuntimePlatform
      def self.default(visited=[])
        return nil if visited.include?('RuntimePlatform')
        visited = visited + ['RuntimePlatform']
        {
          cpu_architecture: 'cpu_architecture',
          operating_system_family: 'operating_system_family',
        }
      end

      def self.stub(stub)
        stub ||= Types::RuntimePlatform.new
        data = {}
        data['cpuArchitecture'] = stub[:cpu_architecture] unless stub[:cpu_architecture].nil?
        data['operatingSystemFamily'] = stub[:operating_system_family] unless stub[:operating_system_family].nil?
        data
      end
    end

    # List Stubber for TaskDefinitionPlacementConstraints
    class TaskDefinitionPlacementConstraints
      def self.default(visited=[])
        return nil if visited.include?('TaskDefinitionPlacementConstraints')
        visited = visited + ['TaskDefinitionPlacementConstraints']
        [
          TaskDefinitionPlacementConstraint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TaskDefinitionPlacementConstraint.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TaskDefinitionPlacementConstraint
    class TaskDefinitionPlacementConstraint
      def self.default(visited=[])
        return nil if visited.include?('TaskDefinitionPlacementConstraint')
        visited = visited + ['TaskDefinitionPlacementConstraint']
        {
          type: 'type',
          expression: 'expression',
        }
      end

      def self.stub(stub)
        stub ||= Types::TaskDefinitionPlacementConstraint.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['expression'] = stub[:expression] unless stub[:expression].nil?
        data
      end
    end

    # List Stubber for RequiresAttributes
    class RequiresAttributes
      def self.default(visited=[])
        return nil if visited.include?('RequiresAttributes')
        visited = visited + ['RequiresAttributes']
        [
          Attribute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Attribute.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for VolumeList
    class VolumeList
      def self.default(visited=[])
        return nil if visited.include?('VolumeList')
        visited = visited + ['VolumeList']
        [
          Volume.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Volume.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Volume
    class Volume
      def self.default(visited=[])
        return nil if visited.include?('Volume')
        visited = visited + ['Volume']
        {
          name: 'name',
          host: HostVolumeProperties.default(visited),
          docker_volume_configuration: DockerVolumeConfiguration.default(visited),
          efs_volume_configuration: EFSVolumeConfiguration.default(visited),
          fsx_windows_file_server_volume_configuration: FSxWindowsFileServerVolumeConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Volume.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['host'] = Stubs::HostVolumeProperties.stub(stub[:host]) unless stub[:host].nil?
        data['dockerVolumeConfiguration'] = Stubs::DockerVolumeConfiguration.stub(stub[:docker_volume_configuration]) unless stub[:docker_volume_configuration].nil?
        data['efsVolumeConfiguration'] = Stubs::EFSVolumeConfiguration.stub(stub[:efs_volume_configuration]) unless stub[:efs_volume_configuration].nil?
        data['fsxWindowsFileServerVolumeConfiguration'] = Stubs::FSxWindowsFileServerVolumeConfiguration.stub(stub[:fsx_windows_file_server_volume_configuration]) unless stub[:fsx_windows_file_server_volume_configuration].nil?
        data
      end
    end

    # Structure Stubber for FSxWindowsFileServerVolumeConfiguration
    class FSxWindowsFileServerVolumeConfiguration
      def self.default(visited=[])
        return nil if visited.include?('FSxWindowsFileServerVolumeConfiguration')
        visited = visited + ['FSxWindowsFileServerVolumeConfiguration']
        {
          file_system_id: 'file_system_id',
          root_directory: 'root_directory',
          authorization_config: FSxWindowsFileServerAuthorizationConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FSxWindowsFileServerVolumeConfiguration.new
        data = {}
        data['fileSystemId'] = stub[:file_system_id] unless stub[:file_system_id].nil?
        data['rootDirectory'] = stub[:root_directory] unless stub[:root_directory].nil?
        data['authorizationConfig'] = Stubs::FSxWindowsFileServerAuthorizationConfig.stub(stub[:authorization_config]) unless stub[:authorization_config].nil?
        data
      end
    end

    # Structure Stubber for FSxWindowsFileServerAuthorizationConfig
    class FSxWindowsFileServerAuthorizationConfig
      def self.default(visited=[])
        return nil if visited.include?('FSxWindowsFileServerAuthorizationConfig')
        visited = visited + ['FSxWindowsFileServerAuthorizationConfig']
        {
          credentials_parameter: 'credentials_parameter',
          domain: 'domain',
        }
      end

      def self.stub(stub)
        stub ||= Types::FSxWindowsFileServerAuthorizationConfig.new
        data = {}
        data['credentialsParameter'] = stub[:credentials_parameter] unless stub[:credentials_parameter].nil?
        data['domain'] = stub[:domain] unless stub[:domain].nil?
        data
      end
    end

    # Structure Stubber for EFSVolumeConfiguration
    class EFSVolumeConfiguration
      def self.default(visited=[])
        return nil if visited.include?('EFSVolumeConfiguration')
        visited = visited + ['EFSVolumeConfiguration']
        {
          file_system_id: 'file_system_id',
          root_directory: 'root_directory',
          transit_encryption: 'transit_encryption',
          transit_encryption_port: 1,
          authorization_config: EFSAuthorizationConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EFSVolumeConfiguration.new
        data = {}
        data['fileSystemId'] = stub[:file_system_id] unless stub[:file_system_id].nil?
        data['rootDirectory'] = stub[:root_directory] unless stub[:root_directory].nil?
        data['transitEncryption'] = stub[:transit_encryption] unless stub[:transit_encryption].nil?
        data['transitEncryptionPort'] = stub[:transit_encryption_port] unless stub[:transit_encryption_port].nil?
        data['authorizationConfig'] = Stubs::EFSAuthorizationConfig.stub(stub[:authorization_config]) unless stub[:authorization_config].nil?
        data
      end
    end

    # Structure Stubber for EFSAuthorizationConfig
    class EFSAuthorizationConfig
      def self.default(visited=[])
        return nil if visited.include?('EFSAuthorizationConfig')
        visited = visited + ['EFSAuthorizationConfig']
        {
          access_point_id: 'access_point_id',
          iam: 'iam',
        }
      end

      def self.stub(stub)
        stub ||= Types::EFSAuthorizationConfig.new
        data = {}
        data['accessPointId'] = stub[:access_point_id] unless stub[:access_point_id].nil?
        data['iam'] = stub[:iam] unless stub[:iam].nil?
        data
      end
    end

    # Structure Stubber for DockerVolumeConfiguration
    class DockerVolumeConfiguration
      def self.default(visited=[])
        return nil if visited.include?('DockerVolumeConfiguration')
        visited = visited + ['DockerVolumeConfiguration']
        {
          scope: 'scope',
          autoprovision: false,
          driver: 'driver',
          driver_opts: StringMap.default(visited),
          labels: StringMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DockerVolumeConfiguration.new
        data = {}
        data['scope'] = stub[:scope] unless stub[:scope].nil?
        data['autoprovision'] = stub[:autoprovision] unless stub[:autoprovision].nil?
        data['driver'] = stub[:driver] unless stub[:driver].nil?
        data['driverOpts'] = Stubs::StringMap.stub(stub[:driver_opts]) unless stub[:driver_opts].nil?
        data['labels'] = Stubs::StringMap.stub(stub[:labels]) unless stub[:labels].nil?
        data
      end
    end

    # Map Stubber for StringMap
    class StringMap
      def self.default(visited=[])
        return nil if visited.include?('StringMap')
        visited = visited + ['StringMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for HostVolumeProperties
    class HostVolumeProperties
      def self.default(visited=[])
        return nil if visited.include?('HostVolumeProperties')
        visited = visited + ['HostVolumeProperties']
        {
          source_path: 'source_path',
        }
      end

      def self.stub(stub)
        stub ||= Types::HostVolumeProperties.new
        data = {}
        data['sourcePath'] = stub[:source_path] unless stub[:source_path].nil?
        data
      end
    end

    # List Stubber for ContainerDefinitions
    class ContainerDefinitions
      def self.default(visited=[])
        return nil if visited.include?('ContainerDefinitions')
        visited = visited + ['ContainerDefinitions']
        [
          ContainerDefinition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ContainerDefinition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ContainerDefinition
    class ContainerDefinition
      def self.default(visited=[])
        return nil if visited.include?('ContainerDefinition')
        visited = visited + ['ContainerDefinition']
        {
          name: 'name',
          image: 'image',
          repository_credentials: RepositoryCredentials.default(visited),
          cpu: 1,
          memory: 1,
          memory_reservation: 1,
          links: StringList.default(visited),
          port_mappings: PortMappingList.default(visited),
          essential: false,
          entry_point: StringList.default(visited),
          command: StringList.default(visited),
          environment: EnvironmentVariables.default(visited),
          environment_files: EnvironmentFiles.default(visited),
          mount_points: MountPointList.default(visited),
          volumes_from: VolumeFromList.default(visited),
          linux_parameters: LinuxParameters.default(visited),
          secrets: SecretList.default(visited),
          depends_on: ContainerDependencies.default(visited),
          start_timeout: 1,
          stop_timeout: 1,
          hostname: 'hostname',
          user: 'user',
          working_directory: 'working_directory',
          disable_networking: false,
          privileged: false,
          readonly_root_filesystem: false,
          dns_servers: StringList.default(visited),
          dns_search_domains: StringList.default(visited),
          extra_hosts: HostEntryList.default(visited),
          docker_security_options: StringList.default(visited),
          interactive: false,
          pseudo_terminal: false,
          docker_labels: DockerLabelsMap.default(visited),
          ulimits: UlimitList.default(visited),
          log_configuration: LogConfiguration.default(visited),
          health_check: HealthCheck.default(visited),
          system_controls: SystemControls.default(visited),
          resource_requirements: ResourceRequirements.default(visited),
          firelens_configuration: FirelensConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ContainerDefinition.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['image'] = stub[:image] unless stub[:image].nil?
        data['repositoryCredentials'] = Stubs::RepositoryCredentials.stub(stub[:repository_credentials]) unless stub[:repository_credentials].nil?
        data['cpu'] = stub[:cpu] unless stub[:cpu].nil?
        data['memory'] = stub[:memory] unless stub[:memory].nil?
        data['memoryReservation'] = stub[:memory_reservation] unless stub[:memory_reservation].nil?
        data['links'] = Stubs::StringList.stub(stub[:links]) unless stub[:links].nil?
        data['portMappings'] = Stubs::PortMappingList.stub(stub[:port_mappings]) unless stub[:port_mappings].nil?
        data['essential'] = stub[:essential] unless stub[:essential].nil?
        data['entryPoint'] = Stubs::StringList.stub(stub[:entry_point]) unless stub[:entry_point].nil?
        data['command'] = Stubs::StringList.stub(stub[:command]) unless stub[:command].nil?
        data['environment'] = Stubs::EnvironmentVariables.stub(stub[:environment]) unless stub[:environment].nil?
        data['environmentFiles'] = Stubs::EnvironmentFiles.stub(stub[:environment_files]) unless stub[:environment_files].nil?
        data['mountPoints'] = Stubs::MountPointList.stub(stub[:mount_points]) unless stub[:mount_points].nil?
        data['volumesFrom'] = Stubs::VolumeFromList.stub(stub[:volumes_from]) unless stub[:volumes_from].nil?
        data['linuxParameters'] = Stubs::LinuxParameters.stub(stub[:linux_parameters]) unless stub[:linux_parameters].nil?
        data['secrets'] = Stubs::SecretList.stub(stub[:secrets]) unless stub[:secrets].nil?
        data['dependsOn'] = Stubs::ContainerDependencies.stub(stub[:depends_on]) unless stub[:depends_on].nil?
        data['startTimeout'] = stub[:start_timeout] unless stub[:start_timeout].nil?
        data['stopTimeout'] = stub[:stop_timeout] unless stub[:stop_timeout].nil?
        data['hostname'] = stub[:hostname] unless stub[:hostname].nil?
        data['user'] = stub[:user] unless stub[:user].nil?
        data['workingDirectory'] = stub[:working_directory] unless stub[:working_directory].nil?
        data['disableNetworking'] = stub[:disable_networking] unless stub[:disable_networking].nil?
        data['privileged'] = stub[:privileged] unless stub[:privileged].nil?
        data['readonlyRootFilesystem'] = stub[:readonly_root_filesystem] unless stub[:readonly_root_filesystem].nil?
        data['dnsServers'] = Stubs::StringList.stub(stub[:dns_servers]) unless stub[:dns_servers].nil?
        data['dnsSearchDomains'] = Stubs::StringList.stub(stub[:dns_search_domains]) unless stub[:dns_search_domains].nil?
        data['extraHosts'] = Stubs::HostEntryList.stub(stub[:extra_hosts]) unless stub[:extra_hosts].nil?
        data['dockerSecurityOptions'] = Stubs::StringList.stub(stub[:docker_security_options]) unless stub[:docker_security_options].nil?
        data['interactive'] = stub[:interactive] unless stub[:interactive].nil?
        data['pseudoTerminal'] = stub[:pseudo_terminal] unless stub[:pseudo_terminal].nil?
        data['dockerLabels'] = Stubs::DockerLabelsMap.stub(stub[:docker_labels]) unless stub[:docker_labels].nil?
        data['ulimits'] = Stubs::UlimitList.stub(stub[:ulimits]) unless stub[:ulimits].nil?
        data['logConfiguration'] = Stubs::LogConfiguration.stub(stub[:log_configuration]) unless stub[:log_configuration].nil?
        data['healthCheck'] = Stubs::HealthCheck.stub(stub[:health_check]) unless stub[:health_check].nil?
        data['systemControls'] = Stubs::SystemControls.stub(stub[:system_controls]) unless stub[:system_controls].nil?
        data['resourceRequirements'] = Stubs::ResourceRequirements.stub(stub[:resource_requirements]) unless stub[:resource_requirements].nil?
        data['firelensConfiguration'] = Stubs::FirelensConfiguration.stub(stub[:firelens_configuration]) unless stub[:firelens_configuration].nil?
        data
      end
    end

    # Structure Stubber for FirelensConfiguration
    class FirelensConfiguration
      def self.default(visited=[])
        return nil if visited.include?('FirelensConfiguration')
        visited = visited + ['FirelensConfiguration']
        {
          type: 'type',
          options: FirelensConfigurationOptionsMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FirelensConfiguration.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['options'] = Stubs::FirelensConfigurationOptionsMap.stub(stub[:options]) unless stub[:options].nil?
        data
      end
    end

    # Map Stubber for FirelensConfigurationOptionsMap
    class FirelensConfigurationOptionsMap
      def self.default(visited=[])
        return nil if visited.include?('FirelensConfigurationOptionsMap')
        visited = visited + ['FirelensConfigurationOptionsMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Stubber for ResourceRequirements
    class ResourceRequirements
      def self.default(visited=[])
        return nil if visited.include?('ResourceRequirements')
        visited = visited + ['ResourceRequirements']
        [
          ResourceRequirement.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResourceRequirement.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceRequirement
    class ResourceRequirement
      def self.default(visited=[])
        return nil if visited.include?('ResourceRequirement')
        visited = visited + ['ResourceRequirement']
        {
          value: 'value',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceRequirement.new
        data = {}
        data['value'] = stub[:value] unless stub[:value].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # List Stubber for SystemControls
    class SystemControls
      def self.default(visited=[])
        return nil if visited.include?('SystemControls')
        visited = visited + ['SystemControls']
        [
          SystemControl.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SystemControl.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SystemControl
    class SystemControl
      def self.default(visited=[])
        return nil if visited.include?('SystemControl')
        visited = visited + ['SystemControl']
        {
          namespace: 'namespace',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::SystemControl.new
        data = {}
        data['namespace'] = stub[:namespace] unless stub[:namespace].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for HealthCheck
    class HealthCheck
      def self.default(visited=[])
        return nil if visited.include?('HealthCheck')
        visited = visited + ['HealthCheck']
        {
          command: StringList.default(visited),
          interval: 1,
          timeout: 1,
          retries: 1,
          start_period: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::HealthCheck.new
        data = {}
        data['command'] = Stubs::StringList.stub(stub[:command]) unless stub[:command].nil?
        data['interval'] = stub[:interval] unless stub[:interval].nil?
        data['timeout'] = stub[:timeout] unless stub[:timeout].nil?
        data['retries'] = stub[:retries] unless stub[:retries].nil?
        data['startPeriod'] = stub[:start_period] unless stub[:start_period].nil?
        data
      end
    end

    # Structure Stubber for LogConfiguration
    class LogConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LogConfiguration')
        visited = visited + ['LogConfiguration']
        {
          log_driver: 'log_driver',
          options: LogConfigurationOptionsMap.default(visited),
          secret_options: SecretList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LogConfiguration.new
        data = {}
        data['logDriver'] = stub[:log_driver] unless stub[:log_driver].nil?
        data['options'] = Stubs::LogConfigurationOptionsMap.stub(stub[:options]) unless stub[:options].nil?
        data['secretOptions'] = Stubs::SecretList.stub(stub[:secret_options]) unless stub[:secret_options].nil?
        data
      end
    end

    # List Stubber for SecretList
    class SecretList
      def self.default(visited=[])
        return nil if visited.include?('SecretList')
        visited = visited + ['SecretList']
        [
          Secret.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Secret.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Secret
    class Secret
      def self.default(visited=[])
        return nil if visited.include?('Secret')
        visited = visited + ['Secret']
        {
          name: 'name',
          value_from: 'value_from',
        }
      end

      def self.stub(stub)
        stub ||= Types::Secret.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['valueFrom'] = stub[:value_from] unless stub[:value_from].nil?
        data
      end
    end

    # Map Stubber for LogConfigurationOptionsMap
    class LogConfigurationOptionsMap
      def self.default(visited=[])
        return nil if visited.include?('LogConfigurationOptionsMap')
        visited = visited + ['LogConfigurationOptionsMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Stubber for UlimitList
    class UlimitList
      def self.default(visited=[])
        return nil if visited.include?('UlimitList')
        visited = visited + ['UlimitList']
        [
          Ulimit.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Ulimit.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Ulimit
    class Ulimit
      def self.default(visited=[])
        return nil if visited.include?('Ulimit')
        visited = visited + ['Ulimit']
        {
          name: 'name',
          soft_limit: 1,
          hard_limit: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Ulimit.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['softLimit'] = stub[:soft_limit] unless stub[:soft_limit].nil?
        data['hardLimit'] = stub[:hard_limit] unless stub[:hard_limit].nil?
        data
      end
    end

    # Map Stubber for DockerLabelsMap
    class DockerLabelsMap
      def self.default(visited=[])
        return nil if visited.include?('DockerLabelsMap')
        visited = visited + ['DockerLabelsMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Stubber for HostEntryList
    class HostEntryList
      def self.default(visited=[])
        return nil if visited.include?('HostEntryList')
        visited = visited + ['HostEntryList']
        [
          HostEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::HostEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for HostEntry
    class HostEntry
      def self.default(visited=[])
        return nil if visited.include?('HostEntry')
        visited = visited + ['HostEntry']
        {
          hostname: 'hostname',
          ip_address: 'ip_address',
        }
      end

      def self.stub(stub)
        stub ||= Types::HostEntry.new
        data = {}
        data['hostname'] = stub[:hostname] unless stub[:hostname].nil?
        data['ipAddress'] = stub[:ip_address] unless stub[:ip_address].nil?
        data
      end
    end

    # List Stubber for ContainerDependencies
    class ContainerDependencies
      def self.default(visited=[])
        return nil if visited.include?('ContainerDependencies')
        visited = visited + ['ContainerDependencies']
        [
          ContainerDependency.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ContainerDependency.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ContainerDependency
    class ContainerDependency
      def self.default(visited=[])
        return nil if visited.include?('ContainerDependency')
        visited = visited + ['ContainerDependency']
        {
          container_name: 'container_name',
          condition: 'condition',
        }
      end

      def self.stub(stub)
        stub ||= Types::ContainerDependency.new
        data = {}
        data['containerName'] = stub[:container_name] unless stub[:container_name].nil?
        data['condition'] = stub[:condition] unless stub[:condition].nil?
        data
      end
    end

    # Structure Stubber for LinuxParameters
    class LinuxParameters
      def self.default(visited=[])
        return nil if visited.include?('LinuxParameters')
        visited = visited + ['LinuxParameters']
        {
          capabilities: KernelCapabilities.default(visited),
          devices: DevicesList.default(visited),
          init_process_enabled: false,
          shared_memory_size: 1,
          tmpfs: TmpfsList.default(visited),
          max_swap: 1,
          swappiness: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::LinuxParameters.new
        data = {}
        data['capabilities'] = Stubs::KernelCapabilities.stub(stub[:capabilities]) unless stub[:capabilities].nil?
        data['devices'] = Stubs::DevicesList.stub(stub[:devices]) unless stub[:devices].nil?
        data['initProcessEnabled'] = stub[:init_process_enabled] unless stub[:init_process_enabled].nil?
        data['sharedMemorySize'] = stub[:shared_memory_size] unless stub[:shared_memory_size].nil?
        data['tmpfs'] = Stubs::TmpfsList.stub(stub[:tmpfs]) unless stub[:tmpfs].nil?
        data['maxSwap'] = stub[:max_swap] unless stub[:max_swap].nil?
        data['swappiness'] = stub[:swappiness] unless stub[:swappiness].nil?
        data
      end
    end

    # List Stubber for TmpfsList
    class TmpfsList
      def self.default(visited=[])
        return nil if visited.include?('TmpfsList')
        visited = visited + ['TmpfsList']
        [
          Tmpfs.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tmpfs.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tmpfs
    class Tmpfs
      def self.default(visited=[])
        return nil if visited.include?('Tmpfs')
        visited = visited + ['Tmpfs']
        {
          container_path: 'container_path',
          size: 1,
          mount_options: StringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Tmpfs.new
        data = {}
        data['containerPath'] = stub[:container_path] unless stub[:container_path].nil?
        data['size'] = stub[:size] unless stub[:size].nil?
        data['mountOptions'] = Stubs::StringList.stub(stub[:mount_options]) unless stub[:mount_options].nil?
        data
      end
    end

    # List Stubber for DevicesList
    class DevicesList
      def self.default(visited=[])
        return nil if visited.include?('DevicesList')
        visited = visited + ['DevicesList']
        [
          Device.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Device.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Device
    class Device
      def self.default(visited=[])
        return nil if visited.include?('Device')
        visited = visited + ['Device']
        {
          host_path: 'host_path',
          container_path: 'container_path',
          permissions: DeviceCgroupPermissions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Device.new
        data = {}
        data['hostPath'] = stub[:host_path] unless stub[:host_path].nil?
        data['containerPath'] = stub[:container_path] unless stub[:container_path].nil?
        data['permissions'] = Stubs::DeviceCgroupPermissions.stub(stub[:permissions]) unless stub[:permissions].nil?
        data
      end
    end

    # List Stubber for DeviceCgroupPermissions
    class DeviceCgroupPermissions
      def self.default(visited=[])
        return nil if visited.include?('DeviceCgroupPermissions')
        visited = visited + ['DeviceCgroupPermissions']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for KernelCapabilities
    class KernelCapabilities
      def self.default(visited=[])
        return nil if visited.include?('KernelCapabilities')
        visited = visited + ['KernelCapabilities']
        {
          add: StringList.default(visited),
          drop: StringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::KernelCapabilities.new
        data = {}
        data['add'] = Stubs::StringList.stub(stub[:add]) unless stub[:add].nil?
        data['drop'] = Stubs::StringList.stub(stub[:drop]) unless stub[:drop].nil?
        data
      end
    end

    # List Stubber for VolumeFromList
    class VolumeFromList
      def self.default(visited=[])
        return nil if visited.include?('VolumeFromList')
        visited = visited + ['VolumeFromList']
        [
          VolumeFrom.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::VolumeFrom.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VolumeFrom
    class VolumeFrom
      def self.default(visited=[])
        return nil if visited.include?('VolumeFrom')
        visited = visited + ['VolumeFrom']
        {
          source_container: 'source_container',
          read_only: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::VolumeFrom.new
        data = {}
        data['sourceContainer'] = stub[:source_container] unless stub[:source_container].nil?
        data['readOnly'] = stub[:read_only] unless stub[:read_only].nil?
        data
      end
    end

    # List Stubber for MountPointList
    class MountPointList
      def self.default(visited=[])
        return nil if visited.include?('MountPointList')
        visited = visited + ['MountPointList']
        [
          MountPoint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MountPoint.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MountPoint
    class MountPoint
      def self.default(visited=[])
        return nil if visited.include?('MountPoint')
        visited = visited + ['MountPoint']
        {
          source_volume: 'source_volume',
          container_path: 'container_path',
          read_only: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::MountPoint.new
        data = {}
        data['sourceVolume'] = stub[:source_volume] unless stub[:source_volume].nil?
        data['containerPath'] = stub[:container_path] unless stub[:container_path].nil?
        data['readOnly'] = stub[:read_only] unless stub[:read_only].nil?
        data
      end
    end

    # List Stubber for EnvironmentFiles
    class EnvironmentFiles
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentFiles')
        visited = visited + ['EnvironmentFiles']
        [
          EnvironmentFile.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EnvironmentFile.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EnvironmentFile
    class EnvironmentFile
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentFile')
        visited = visited + ['EnvironmentFile']
        {
          value: 'value',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::EnvironmentFile.new
        data = {}
        data['value'] = stub[:value] unless stub[:value].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # List Stubber for EnvironmentVariables
    class EnvironmentVariables
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentVariables')
        visited = visited + ['EnvironmentVariables']
        [
          KeyValuePair.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::KeyValuePair.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for PortMappingList
    class PortMappingList
      def self.default(visited=[])
        return nil if visited.include?('PortMappingList')
        visited = visited + ['PortMappingList']
        [
          PortMapping.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PortMapping.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PortMapping
    class PortMapping
      def self.default(visited=[])
        return nil if visited.include?('PortMapping')
        visited = visited + ['PortMapping']
        {
          container_port: 1,
          host_port: 1,
          protocol: 'protocol',
        }
      end

      def self.stub(stub)
        stub ||= Types::PortMapping.new
        data = {}
        data['containerPort'] = stub[:container_port] unless stub[:container_port].nil?
        data['hostPort'] = stub[:host_port] unless stub[:host_port].nil?
        data['protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data
      end
    end

    # Structure Stubber for RepositoryCredentials
    class RepositoryCredentials
      def self.default(visited=[])
        return nil if visited.include?('RepositoryCredentials')
        visited = visited + ['RepositoryCredentials']
        {
          credentials_parameter: 'credentials_parameter',
        }
      end

      def self.stub(stub)
        stub ||= Types::RepositoryCredentials.new
        data = {}
        data['credentialsParameter'] = stub[:credentials_parameter] unless stub[:credentials_parameter].nil?
        data
      end
    end

    # Operation Stubber for DescribeCapacityProviders
    class DescribeCapacityProviders
      def self.default(visited=[])
        {
          capacity_providers: CapacityProviders.default(visited),
          failures: Failures.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['capacityProviders'] = Stubs::CapacityProviders.stub(stub[:capacity_providers]) unless stub[:capacity_providers].nil?
        data['failures'] = Stubs::Failures.stub(stub[:failures]) unless stub[:failures].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Failures
    class Failures
      def self.default(visited=[])
        return nil if visited.include?('Failures')
        visited = visited + ['Failures']
        [
          Failure.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Failure.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Failure
    class Failure
      def self.default(visited=[])
        return nil if visited.include?('Failure')
        visited = visited + ['Failure']
        {
          arn: 'arn',
          reason: 'reason',
          detail: 'detail',
        }
      end

      def self.stub(stub)
        stub ||= Types::Failure.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['reason'] = stub[:reason] unless stub[:reason].nil?
        data['detail'] = stub[:detail] unless stub[:detail].nil?
        data
      end
    end

    # List Stubber for CapacityProviders
    class CapacityProviders
      def self.default(visited=[])
        return nil if visited.include?('CapacityProviders')
        visited = visited + ['CapacityProviders']
        [
          CapacityProvider.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CapacityProvider.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeClusters
    class DescribeClusters
      def self.default(visited=[])
        {
          clusters: Clusters.default(visited),
          failures: Failures.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['clusters'] = Stubs::Clusters.stub(stub[:clusters]) unless stub[:clusters].nil?
        data['failures'] = Stubs::Failures.stub(stub[:failures]) unless stub[:failures].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Clusters
    class Clusters
      def self.default(visited=[])
        return nil if visited.include?('Clusters')
        visited = visited + ['Clusters']
        [
          Cluster.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Cluster.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeContainerInstances
    class DescribeContainerInstances
      def self.default(visited=[])
        {
          container_instances: ContainerInstances.default(visited),
          failures: Failures.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['containerInstances'] = Stubs::ContainerInstances.stub(stub[:container_instances]) unless stub[:container_instances].nil?
        data['failures'] = Stubs::Failures.stub(stub[:failures]) unless stub[:failures].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ContainerInstances
    class ContainerInstances
      def self.default(visited=[])
        return nil if visited.include?('ContainerInstances')
        visited = visited + ['ContainerInstances']
        [
          ContainerInstance.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ContainerInstance.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeServices
    class DescribeServices
      def self.default(visited=[])
        {
          services: Services.default(visited),
          failures: Failures.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['services'] = Stubs::Services.stub(stub[:services]) unless stub[:services].nil?
        data['failures'] = Stubs::Failures.stub(stub[:failures]) unless stub[:failures].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Services
    class Services
      def self.default(visited=[])
        return nil if visited.include?('Services')
        visited = visited + ['Services']
        [
          Service.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Service.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeTaskDefinition
    class DescribeTaskDefinition
      def self.default(visited=[])
        {
          task_definition: TaskDefinition.default(visited),
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['taskDefinition'] = Stubs::TaskDefinition.stub(stub[:task_definition]) unless stub[:task_definition].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeTaskSets
    class DescribeTaskSets
      def self.default(visited=[])
        {
          task_sets: TaskSets.default(visited),
          failures: Failures.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['taskSets'] = Stubs::TaskSets.stub(stub[:task_sets]) unless stub[:task_sets].nil?
        data['failures'] = Stubs::Failures.stub(stub[:failures]) unless stub[:failures].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeTasks
    class DescribeTasks
      def self.default(visited=[])
        {
          tasks: Tasks.default(visited),
          failures: Failures.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['tasks'] = Stubs::Tasks.stub(stub[:tasks]) unless stub[:tasks].nil?
        data['failures'] = Stubs::Failures.stub(stub[:failures]) unless stub[:failures].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Tasks
    class Tasks
      def self.default(visited=[])
        return nil if visited.include?('Tasks')
        visited = visited + ['Tasks']
        [
          Task.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Task.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Task
    class Task
      def self.default(visited=[])
        return nil if visited.include?('Task')
        visited = visited + ['Task']
        {
          attachments: Attachments.default(visited),
          attributes: Attributes.default(visited),
          availability_zone: 'availability_zone',
          capacity_provider_name: 'capacity_provider_name',
          cluster_arn: 'cluster_arn',
          connectivity: 'connectivity',
          connectivity_at: Time.now,
          container_instance_arn: 'container_instance_arn',
          containers: Containers.default(visited),
          cpu: 'cpu',
          created_at: Time.now,
          desired_status: 'desired_status',
          enable_execute_command: false,
          execution_stopped_at: Time.now,
          group: 'group',
          health_status: 'health_status',
          inference_accelerators: InferenceAccelerators.default(visited),
          last_status: 'last_status',
          launch_type: 'launch_type',
          memory: 'memory',
          overrides: TaskOverride.default(visited),
          platform_version: 'platform_version',
          platform_family: 'platform_family',
          pull_started_at: Time.now,
          pull_stopped_at: Time.now,
          started_at: Time.now,
          started_by: 'started_by',
          stop_code: 'stop_code',
          stopped_at: Time.now,
          stopped_reason: 'stopped_reason',
          stopping_at: Time.now,
          tags: Tags.default(visited),
          task_arn: 'task_arn',
          task_definition_arn: 'task_definition_arn',
          version: 1,
          ephemeral_storage: EphemeralStorage.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Task.new
        data = {}
        data['attachments'] = Stubs::Attachments.stub(stub[:attachments]) unless stub[:attachments].nil?
        data['attributes'] = Stubs::Attributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['availabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['capacityProviderName'] = stub[:capacity_provider_name] unless stub[:capacity_provider_name].nil?
        data['clusterArn'] = stub[:cluster_arn] unless stub[:cluster_arn].nil?
        data['connectivity'] = stub[:connectivity] unless stub[:connectivity].nil?
        data['connectivityAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:connectivity_at]).to_i unless stub[:connectivity_at].nil?
        data['containerInstanceArn'] = stub[:container_instance_arn] unless stub[:container_instance_arn].nil?
        data['containers'] = Stubs::Containers.stub(stub[:containers]) unless stub[:containers].nil?
        data['cpu'] = stub[:cpu] unless stub[:cpu].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['desiredStatus'] = stub[:desired_status] unless stub[:desired_status].nil?
        data['enableExecuteCommand'] = stub[:enable_execute_command] unless stub[:enable_execute_command].nil?
        data['executionStoppedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:execution_stopped_at]).to_i unless stub[:execution_stopped_at].nil?
        data['group'] = stub[:group] unless stub[:group].nil?
        data['healthStatus'] = stub[:health_status] unless stub[:health_status].nil?
        data['inferenceAccelerators'] = Stubs::InferenceAccelerators.stub(stub[:inference_accelerators]) unless stub[:inference_accelerators].nil?
        data['lastStatus'] = stub[:last_status] unless stub[:last_status].nil?
        data['launchType'] = stub[:launch_type] unless stub[:launch_type].nil?
        data['memory'] = stub[:memory] unless stub[:memory].nil?
        data['overrides'] = Stubs::TaskOverride.stub(stub[:overrides]) unless stub[:overrides].nil?
        data['platformVersion'] = stub[:platform_version] unless stub[:platform_version].nil?
        data['platformFamily'] = stub[:platform_family] unless stub[:platform_family].nil?
        data['pullStartedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:pull_started_at]).to_i unless stub[:pull_started_at].nil?
        data['pullStoppedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:pull_stopped_at]).to_i unless stub[:pull_stopped_at].nil?
        data['startedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started_at]).to_i unless stub[:started_at].nil?
        data['startedBy'] = stub[:started_by] unless stub[:started_by].nil?
        data['stopCode'] = stub[:stop_code] unless stub[:stop_code].nil?
        data['stoppedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:stopped_at]).to_i unless stub[:stopped_at].nil?
        data['stoppedReason'] = stub[:stopped_reason] unless stub[:stopped_reason].nil?
        data['stoppingAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:stopping_at]).to_i unless stub[:stopping_at].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['taskArn'] = stub[:task_arn] unless stub[:task_arn].nil?
        data['taskDefinitionArn'] = stub[:task_definition_arn] unless stub[:task_definition_arn].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['ephemeralStorage'] = Stubs::EphemeralStorage.stub(stub[:ephemeral_storage]) unless stub[:ephemeral_storage].nil?
        data
      end
    end

    # Structure Stubber for TaskOverride
    class TaskOverride
      def self.default(visited=[])
        return nil if visited.include?('TaskOverride')
        visited = visited + ['TaskOverride']
        {
          container_overrides: ContainerOverrides.default(visited),
          cpu: 'cpu',
          inference_accelerator_overrides: InferenceAcceleratorOverrides.default(visited),
          execution_role_arn: 'execution_role_arn',
          memory: 'memory',
          task_role_arn: 'task_role_arn',
          ephemeral_storage: EphemeralStorage.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TaskOverride.new
        data = {}
        data['containerOverrides'] = Stubs::ContainerOverrides.stub(stub[:container_overrides]) unless stub[:container_overrides].nil?
        data['cpu'] = stub[:cpu] unless stub[:cpu].nil?
        data['inferenceAcceleratorOverrides'] = Stubs::InferenceAcceleratorOverrides.stub(stub[:inference_accelerator_overrides]) unless stub[:inference_accelerator_overrides].nil?
        data['executionRoleArn'] = stub[:execution_role_arn] unless stub[:execution_role_arn].nil?
        data['memory'] = stub[:memory] unless stub[:memory].nil?
        data['taskRoleArn'] = stub[:task_role_arn] unless stub[:task_role_arn].nil?
        data['ephemeralStorage'] = Stubs::EphemeralStorage.stub(stub[:ephemeral_storage]) unless stub[:ephemeral_storage].nil?
        data
      end
    end

    # List Stubber for InferenceAcceleratorOverrides
    class InferenceAcceleratorOverrides
      def self.default(visited=[])
        return nil if visited.include?('InferenceAcceleratorOverrides')
        visited = visited + ['InferenceAcceleratorOverrides']
        [
          InferenceAcceleratorOverride.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InferenceAcceleratorOverride.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InferenceAcceleratorOverride
    class InferenceAcceleratorOverride
      def self.default(visited=[])
        return nil if visited.include?('InferenceAcceleratorOverride')
        visited = visited + ['InferenceAcceleratorOverride']
        {
          device_name: 'device_name',
          device_type: 'device_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::InferenceAcceleratorOverride.new
        data = {}
        data['deviceName'] = stub[:device_name] unless stub[:device_name].nil?
        data['deviceType'] = stub[:device_type] unless stub[:device_type].nil?
        data
      end
    end

    # List Stubber for ContainerOverrides
    class ContainerOverrides
      def self.default(visited=[])
        return nil if visited.include?('ContainerOverrides')
        visited = visited + ['ContainerOverrides']
        [
          ContainerOverride.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ContainerOverride.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ContainerOverride
    class ContainerOverride
      def self.default(visited=[])
        return nil if visited.include?('ContainerOverride')
        visited = visited + ['ContainerOverride']
        {
          name: 'name',
          command: StringList.default(visited),
          environment: EnvironmentVariables.default(visited),
          environment_files: EnvironmentFiles.default(visited),
          cpu: 1,
          memory: 1,
          memory_reservation: 1,
          resource_requirements: ResourceRequirements.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ContainerOverride.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['command'] = Stubs::StringList.stub(stub[:command]) unless stub[:command].nil?
        data['environment'] = Stubs::EnvironmentVariables.stub(stub[:environment]) unless stub[:environment].nil?
        data['environmentFiles'] = Stubs::EnvironmentFiles.stub(stub[:environment_files]) unless stub[:environment_files].nil?
        data['cpu'] = stub[:cpu] unless stub[:cpu].nil?
        data['memory'] = stub[:memory] unless stub[:memory].nil?
        data['memoryReservation'] = stub[:memory_reservation] unless stub[:memory_reservation].nil?
        data['resourceRequirements'] = Stubs::ResourceRequirements.stub(stub[:resource_requirements]) unless stub[:resource_requirements].nil?
        data
      end
    end

    # List Stubber for Containers
    class Containers
      def self.default(visited=[])
        return nil if visited.include?('Containers')
        visited = visited + ['Containers']
        [
          Container.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Container.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Container
    class Container
      def self.default(visited=[])
        return nil if visited.include?('Container')
        visited = visited + ['Container']
        {
          container_arn: 'container_arn',
          task_arn: 'task_arn',
          name: 'name',
          image: 'image',
          image_digest: 'image_digest',
          runtime_id: 'runtime_id',
          last_status: 'last_status',
          exit_code: 1,
          reason: 'reason',
          network_bindings: NetworkBindings.default(visited),
          network_interfaces: NetworkInterfaces.default(visited),
          health_status: 'health_status',
          managed_agents: ManagedAgents.default(visited),
          cpu: 'cpu',
          memory: 'memory',
          memory_reservation: 'memory_reservation',
          gpu_ids: GpuIds.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Container.new
        data = {}
        data['containerArn'] = stub[:container_arn] unless stub[:container_arn].nil?
        data['taskArn'] = stub[:task_arn] unless stub[:task_arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['image'] = stub[:image] unless stub[:image].nil?
        data['imageDigest'] = stub[:image_digest] unless stub[:image_digest].nil?
        data['runtimeId'] = stub[:runtime_id] unless stub[:runtime_id].nil?
        data['lastStatus'] = stub[:last_status] unless stub[:last_status].nil?
        data['exitCode'] = stub[:exit_code] unless stub[:exit_code].nil?
        data['reason'] = stub[:reason] unless stub[:reason].nil?
        data['networkBindings'] = Stubs::NetworkBindings.stub(stub[:network_bindings]) unless stub[:network_bindings].nil?
        data['networkInterfaces'] = Stubs::NetworkInterfaces.stub(stub[:network_interfaces]) unless stub[:network_interfaces].nil?
        data['healthStatus'] = stub[:health_status] unless stub[:health_status].nil?
        data['managedAgents'] = Stubs::ManagedAgents.stub(stub[:managed_agents]) unless stub[:managed_agents].nil?
        data['cpu'] = stub[:cpu] unless stub[:cpu].nil?
        data['memory'] = stub[:memory] unless stub[:memory].nil?
        data['memoryReservation'] = stub[:memory_reservation] unless stub[:memory_reservation].nil?
        data['gpuIds'] = Stubs::GpuIds.stub(stub[:gpu_ids]) unless stub[:gpu_ids].nil?
        data
      end
    end

    # List Stubber for GpuIds
    class GpuIds
      def self.default(visited=[])
        return nil if visited.include?('GpuIds')
        visited = visited + ['GpuIds']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for ManagedAgents
    class ManagedAgents
      def self.default(visited=[])
        return nil if visited.include?('ManagedAgents')
        visited = visited + ['ManagedAgents']
        [
          ManagedAgent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ManagedAgent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ManagedAgent
    class ManagedAgent
      def self.default(visited=[])
        return nil if visited.include?('ManagedAgent')
        visited = visited + ['ManagedAgent']
        {
          last_started_at: Time.now,
          name: 'name',
          reason: 'reason',
          last_status: 'last_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::ManagedAgent.new
        data = {}
        data['lastStartedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_started_at]).to_i unless stub[:last_started_at].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['reason'] = stub[:reason] unless stub[:reason].nil?
        data['lastStatus'] = stub[:last_status] unless stub[:last_status].nil?
        data
      end
    end

    # List Stubber for NetworkInterfaces
    class NetworkInterfaces
      def self.default(visited=[])
        return nil if visited.include?('NetworkInterfaces')
        visited = visited + ['NetworkInterfaces']
        [
          NetworkInterface.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::NetworkInterface.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NetworkInterface
    class NetworkInterface
      def self.default(visited=[])
        return nil if visited.include?('NetworkInterface')
        visited = visited + ['NetworkInterface']
        {
          attachment_id: 'attachment_id',
          private_ipv4_address: 'private_ipv4_address',
          ipv6_address: 'ipv6_address',
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkInterface.new
        data = {}
        data['attachmentId'] = stub[:attachment_id] unless stub[:attachment_id].nil?
        data['privateIpv4Address'] = stub[:private_ipv4_address] unless stub[:private_ipv4_address].nil?
        data['ipv6Address'] = stub[:ipv6_address] unless stub[:ipv6_address].nil?
        data
      end
    end

    # List Stubber for NetworkBindings
    class NetworkBindings
      def self.default(visited=[])
        return nil if visited.include?('NetworkBindings')
        visited = visited + ['NetworkBindings']
        [
          NetworkBinding.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::NetworkBinding.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NetworkBinding
    class NetworkBinding
      def self.default(visited=[])
        return nil if visited.include?('NetworkBinding')
        visited = visited + ['NetworkBinding']
        {
          bind_ip: 'bind_ip',
          container_port: 1,
          host_port: 1,
          protocol: 'protocol',
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkBinding.new
        data = {}
        data['bindIP'] = stub[:bind_ip] unless stub[:bind_ip].nil?
        data['containerPort'] = stub[:container_port] unless stub[:container_port].nil?
        data['hostPort'] = stub[:host_port] unless stub[:host_port].nil?
        data['protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data
      end
    end

    # Operation Stubber for DiscoverPollEndpoint
    class DiscoverPollEndpoint
      def self.default(visited=[])
        {
          endpoint: 'endpoint',
          telemetry_endpoint: 'telemetry_endpoint',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['endpoint'] = stub[:endpoint] unless stub[:endpoint].nil?
        data['telemetryEndpoint'] = stub[:telemetry_endpoint] unless stub[:telemetry_endpoint].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ExecuteCommand
    class ExecuteCommand
      def self.default(visited=[])
        {
          cluster_arn: 'cluster_arn',
          container_arn: 'container_arn',
          container_name: 'container_name',
          interactive: false,
          session: Session.default(visited),
          task_arn: 'task_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['clusterArn'] = stub[:cluster_arn] unless stub[:cluster_arn].nil?
        data['containerArn'] = stub[:container_arn] unless stub[:container_arn].nil?
        data['containerName'] = stub[:container_name] unless stub[:container_name].nil?
        data['interactive'] = stub[:interactive] unless stub[:interactive].nil?
        data['session'] = Stubs::Session.stub(stub[:session]) unless stub[:session].nil?
        data['taskArn'] = stub[:task_arn] unless stub[:task_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Session
    class Session
      def self.default(visited=[])
        return nil if visited.include?('Session')
        visited = visited + ['Session']
        {
          session_id: 'session_id',
          stream_url: 'stream_url',
          token_value: 'token_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Session.new
        data = {}
        data['sessionId'] = stub[:session_id] unless stub[:session_id].nil?
        data['streamUrl'] = stub[:stream_url] unless stub[:stream_url].nil?
        data['tokenValue'] = stub[:token_value] unless stub[:token_value].nil?
        data
      end
    end

    # Operation Stubber for ListAccountSettings
    class ListAccountSettings
      def self.default(visited=[])
        {
          settings: Settings.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['settings'] = Stubs::Settings.stub(stub[:settings]) unless stub[:settings].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Settings
    class Settings
      def self.default(visited=[])
        return nil if visited.include?('Settings')
        visited = visited + ['Settings']
        [
          Setting.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Setting.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListAttributes
    class ListAttributes
      def self.default(visited=[])
        {
          attributes: Attributes.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['attributes'] = Stubs::Attributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListClusters
    class ListClusters
      def self.default(visited=[])
        {
          cluster_arns: StringList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['clusterArns'] = Stubs::StringList.stub(stub[:cluster_arns]) unless stub[:cluster_arns].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListContainerInstances
    class ListContainerInstances
      def self.default(visited=[])
        {
          container_instance_arns: StringList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['containerInstanceArns'] = Stubs::StringList.stub(stub[:container_instance_arns]) unless stub[:container_instance_arns].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListServices
    class ListServices
      def self.default(visited=[])
        {
          service_arns: StringList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['serviceArns'] = Stubs::StringList.stub(stub[:service_arns]) unless stub[:service_arns].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListTaskDefinitionFamilies
    class ListTaskDefinitionFamilies
      def self.default(visited=[])
        {
          families: StringList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['families'] = Stubs::StringList.stub(stub[:families]) unless stub[:families].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListTaskDefinitions
    class ListTaskDefinitions
      def self.default(visited=[])
        {
          task_definition_arns: StringList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['taskDefinitionArns'] = Stubs::StringList.stub(stub[:task_definition_arns]) unless stub[:task_definition_arns].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListTasks
    class ListTasks
      def self.default(visited=[])
        {
          task_arns: StringList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['taskArns'] = Stubs::StringList.stub(stub[:task_arns]) unless stub[:task_arns].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutAccountSetting
    class PutAccountSetting
      def self.default(visited=[])
        {
          setting: Setting.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['setting'] = Stubs::Setting.stub(stub[:setting]) unless stub[:setting].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutAccountSettingDefault
    class PutAccountSettingDefault
      def self.default(visited=[])
        {
          setting: Setting.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['setting'] = Stubs::Setting.stub(stub[:setting]) unless stub[:setting].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutAttributes
    class PutAttributes
      def self.default(visited=[])
        {
          attributes: Attributes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['attributes'] = Stubs::Attributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutClusterCapacityProviders
    class PutClusterCapacityProviders
      def self.default(visited=[])
        {
          cluster: Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['cluster'] = Stubs::Cluster.stub(stub[:cluster]) unless stub[:cluster].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RegisterContainerInstance
    class RegisterContainerInstance
      def self.default(visited=[])
        {
          container_instance: ContainerInstance.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['containerInstance'] = Stubs::ContainerInstance.stub(stub[:container_instance]) unless stub[:container_instance].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RegisterTaskDefinition
    class RegisterTaskDefinition
      def self.default(visited=[])
        {
          task_definition: TaskDefinition.default(visited),
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['taskDefinition'] = Stubs::TaskDefinition.stub(stub[:task_definition]) unless stub[:task_definition].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RunTask
    class RunTask
      def self.default(visited=[])
        {
          tasks: Tasks.default(visited),
          failures: Failures.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['tasks'] = Stubs::Tasks.stub(stub[:tasks]) unless stub[:tasks].nil?
        data['failures'] = Stubs::Failures.stub(stub[:failures]) unless stub[:failures].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartTask
    class StartTask
      def self.default(visited=[])
        {
          tasks: Tasks.default(visited),
          failures: Failures.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['tasks'] = Stubs::Tasks.stub(stub[:tasks]) unless stub[:tasks].nil?
        data['failures'] = Stubs::Failures.stub(stub[:failures]) unless stub[:failures].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopTask
    class StopTask
      def self.default(visited=[])
        {
          task: Task.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['task'] = Stubs::Task.stub(stub[:task]) unless stub[:task].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SubmitAttachmentStateChanges
    class SubmitAttachmentStateChanges
      def self.default(visited=[])
        {
          acknowledgment: 'acknowledgment',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['acknowledgment'] = stub[:acknowledgment] unless stub[:acknowledgment].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SubmitContainerStateChange
    class SubmitContainerStateChange
      def self.default(visited=[])
        {
          acknowledgment: 'acknowledgment',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['acknowledgment'] = stub[:acknowledgment] unless stub[:acknowledgment].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SubmitTaskStateChange
    class SubmitTaskStateChange
      def self.default(visited=[])
        {
          acknowledgment: 'acknowledgment',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['acknowledgment'] = stub[:acknowledgment] unless stub[:acknowledgment].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateCapacityProvider
    class UpdateCapacityProvider
      def self.default(visited=[])
        {
          capacity_provider: CapacityProvider.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['capacityProvider'] = Stubs::CapacityProvider.stub(stub[:capacity_provider]) unless stub[:capacity_provider].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateCluster
    class UpdateCluster
      def self.default(visited=[])
        {
          cluster: Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['cluster'] = Stubs::Cluster.stub(stub[:cluster]) unless stub[:cluster].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateClusterSettings
    class UpdateClusterSettings
      def self.default(visited=[])
        {
          cluster: Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['cluster'] = Stubs::Cluster.stub(stub[:cluster]) unless stub[:cluster].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateContainerAgent
    class UpdateContainerAgent
      def self.default(visited=[])
        {
          container_instance: ContainerInstance.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['containerInstance'] = Stubs::ContainerInstance.stub(stub[:container_instance]) unless stub[:container_instance].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateContainerInstancesState
    class UpdateContainerInstancesState
      def self.default(visited=[])
        {
          container_instances: ContainerInstances.default(visited),
          failures: Failures.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['containerInstances'] = Stubs::ContainerInstances.stub(stub[:container_instances]) unless stub[:container_instances].nil?
        data['failures'] = Stubs::Failures.stub(stub[:failures]) unless stub[:failures].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateService
    class UpdateService
      def self.default(visited=[])
        {
          service: Service.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['service'] = Stubs::Service.stub(stub[:service]) unless stub[:service].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateServicePrimaryTaskSet
    class UpdateServicePrimaryTaskSet
      def self.default(visited=[])
        {
          task_set: TaskSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['taskSet'] = Stubs::TaskSet.stub(stub[:task_set]) unless stub[:task_set].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateTaskSet
    class UpdateTaskSet
      def self.default(visited=[])
        {
          task_set: TaskSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['taskSet'] = Stubs::TaskSet.stub(stub[:task_set]) unless stub[:task_set].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
