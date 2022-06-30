# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::AutoScaling
  module Parsers

    # Operation Parser for AttachInstances
    class AttachInstances
      def self.parse(http_resp)
        data = Types::AttachInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('AttachInstancesResult')
        data
      end
    end

    # Error Parser for ServiceLinkedRoleFailure
    class ServiceLinkedRoleFailure
      def self.parse(http_resp)
        data = Types::ServiceLinkedRoleFailure.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ResourceContentionFault
    class ResourceContentionFault
      def self.parse(http_resp)
        data = Types::ResourceContentionFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for AttachLoadBalancerTargetGroups
    class AttachLoadBalancerTargetGroups
      def self.parse(http_resp)
        data = Types::AttachLoadBalancerTargetGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('AttachLoadBalancerTargetGroupsResult')
        data
      end
    end

    # Operation Parser for AttachLoadBalancers
    class AttachLoadBalancers
      def self.parse(http_resp)
        data = Types::AttachLoadBalancersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('AttachLoadBalancersResult')
        data
      end
    end

    # Operation Parser for BatchDeleteScheduledAction
    class BatchDeleteScheduledAction
      def self.parse(http_resp)
        data = Types::BatchDeleteScheduledActionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('BatchDeleteScheduledActionResult')
        xml.at('FailedScheduledActions') do |node|
          children = node.children('member')
          data.failed_scheduled_actions = Parsers::FailedScheduledUpdateGroupActionRequests.parse(children)
        end
        data
      end
    end

    class FailedScheduledUpdateGroupActionRequests
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::FailedScheduledUpdateGroupActionRequest.parse(node)
        end
        data
      end
    end

    class FailedScheduledUpdateGroupActionRequest
      def self.parse(xml)
        data = Types::FailedScheduledUpdateGroupActionRequest.new
        xml.at('ScheduledActionName') do |node|
          data.scheduled_action_name = (node.text || '')
        end
        xml.at('ErrorCode') do |node|
          data.error_code = (node.text || '')
        end
        xml.at('ErrorMessage') do |node|
          data.error_message = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for BatchPutScheduledUpdateGroupAction
    class BatchPutScheduledUpdateGroupAction
      def self.parse(http_resp)
        data = Types::BatchPutScheduledUpdateGroupActionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('BatchPutScheduledUpdateGroupActionResult')
        xml.at('FailedScheduledUpdateGroupActions') do |node|
          children = node.children('member')
          data.failed_scheduled_update_group_actions = Parsers::FailedScheduledUpdateGroupActionRequests.parse(children)
        end
        data
      end
    end

    # Error Parser for AlreadyExistsFault
    class AlreadyExistsFault
      def self.parse(http_resp)
        data = Types::AlreadyExistsFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for LimitExceededFault
    class LimitExceededFault
      def self.parse(http_resp)
        data = Types::LimitExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CancelInstanceRefresh
    class CancelInstanceRefresh
      def self.parse(http_resp)
        data = Types::CancelInstanceRefreshOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CancelInstanceRefreshResult')
        xml.at('InstanceRefreshId') do |node|
          data.instance_refresh_id = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ActiveInstanceRefreshNotFoundFault
    class ActiveInstanceRefreshNotFoundFault
      def self.parse(http_resp)
        data = Types::ActiveInstanceRefreshNotFoundFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for CompleteLifecycleAction
    class CompleteLifecycleAction
      def self.parse(http_resp)
        data = Types::CompleteLifecycleActionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CompleteLifecycleActionResult')
        data
      end
    end

    # Operation Parser for CreateAutoScalingGroup
    class CreateAutoScalingGroup
      def self.parse(http_resp)
        data = Types::CreateAutoScalingGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateAutoScalingGroupResult')
        data
      end
    end

    # Operation Parser for CreateLaunchConfiguration
    class CreateLaunchConfiguration
      def self.parse(http_resp)
        data = Types::CreateLaunchConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateLaunchConfigurationResult')
        data
      end
    end

    # Operation Parser for CreateOrUpdateTags
    class CreateOrUpdateTags
      def self.parse(http_resp)
        data = Types::CreateOrUpdateTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('CreateOrUpdateTagsResult')
        data
      end
    end

    # Error Parser for ResourceInUseFault
    class ResourceInUseFault
      def self.parse(http_resp)
        data = Types::ResourceInUseFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteAutoScalingGroup
    class DeleteAutoScalingGroup
      def self.parse(http_resp)
        data = Types::DeleteAutoScalingGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteAutoScalingGroupResult')
        data
      end
    end

    # Error Parser for ScalingActivityInProgressFault
    class ScalingActivityInProgressFault
      def self.parse(http_resp)
        data = Types::ScalingActivityInProgressFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteLaunchConfiguration
    class DeleteLaunchConfiguration
      def self.parse(http_resp)
        data = Types::DeleteLaunchConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteLaunchConfigurationResult')
        data
      end
    end

    # Operation Parser for DeleteLifecycleHook
    class DeleteLifecycleHook
      def self.parse(http_resp)
        data = Types::DeleteLifecycleHookOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteLifecycleHookResult')
        data
      end
    end

    # Operation Parser for DeleteNotificationConfiguration
    class DeleteNotificationConfiguration
      def self.parse(http_resp)
        data = Types::DeleteNotificationConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteNotificationConfigurationResult')
        data
      end
    end

    # Operation Parser for DeletePolicy
    class DeletePolicy
      def self.parse(http_resp)
        data = Types::DeletePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeletePolicyResult')
        data
      end
    end

    # Operation Parser for DeleteScheduledAction
    class DeleteScheduledAction
      def self.parse(http_resp)
        data = Types::DeleteScheduledActionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteScheduledActionResult')
        data
      end
    end

    # Operation Parser for DeleteTags
    class DeleteTags
      def self.parse(http_resp)
        data = Types::DeleteTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteTagsResult')
        data
      end
    end

    # Operation Parser for DeleteWarmPool
    class DeleteWarmPool
      def self.parse(http_resp)
        data = Types::DeleteWarmPoolOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteWarmPoolResult')
        data
      end
    end

    # Operation Parser for DescribeAccountLimits
    class DescribeAccountLimits
      def self.parse(http_resp)
        data = Types::DescribeAccountLimitsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeAccountLimitsResult')
        xml.at('MaxNumberOfAutoScalingGroups') do |node|
          data.max_number_of_auto_scaling_groups = node.text&.to_i
        end
        xml.at('MaxNumberOfLaunchConfigurations') do |node|
          data.max_number_of_launch_configurations = node.text&.to_i
        end
        xml.at('NumberOfAutoScalingGroups') do |node|
          data.number_of_auto_scaling_groups = node.text&.to_i
        end
        xml.at('NumberOfLaunchConfigurations') do |node|
          data.number_of_launch_configurations = node.text&.to_i
        end
        data
      end
    end

    # Operation Parser for DescribeAdjustmentTypes
    class DescribeAdjustmentTypes
      def self.parse(http_resp)
        data = Types::DescribeAdjustmentTypesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeAdjustmentTypesResult')
        xml.at('AdjustmentTypes') do |node|
          children = node.children('member')
          data.adjustment_types = Parsers::AdjustmentTypes.parse(children)
        end
        data
      end
    end

    class AdjustmentTypes
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::AdjustmentType.parse(node)
        end
        data
      end
    end

    class AdjustmentType
      def self.parse(xml)
        data = Types::AdjustmentType.new
        xml.at('AdjustmentType') do |node|
          data.adjustment_type = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeAutoScalingGroups
    class DescribeAutoScalingGroups
      def self.parse(http_resp)
        data = Types::DescribeAutoScalingGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeAutoScalingGroupsResult')
        xml.at('AutoScalingGroups') do |node|
          children = node.children('member')
          data.auto_scaling_groups = Parsers::AutoScalingGroups.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class AutoScalingGroups
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::AutoScalingGroup.parse(node)
        end
        data
      end
    end

    class AutoScalingGroup
      def self.parse(xml)
        data = Types::AutoScalingGroup.new
        xml.at('AutoScalingGroupName') do |node|
          data.auto_scaling_group_name = (node.text || '')
        end
        xml.at('AutoScalingGroupARN') do |node|
          data.auto_scaling_group_arn = (node.text || '')
        end
        xml.at('LaunchConfigurationName') do |node|
          data.launch_configuration_name = (node.text || '')
        end
        xml.at('LaunchTemplate') do |node|
          data.launch_template = Parsers::LaunchTemplateSpecification.parse(node)
        end
        xml.at('MixedInstancesPolicy') do |node|
          data.mixed_instances_policy = Parsers::MixedInstancesPolicy.parse(node)
        end
        xml.at('MinSize') do |node|
          data.min_size = node.text&.to_i
        end
        xml.at('MaxSize') do |node|
          data.max_size = node.text&.to_i
        end
        xml.at('DesiredCapacity') do |node|
          data.desired_capacity = node.text&.to_i
        end
        xml.at('PredictedCapacity') do |node|
          data.predicted_capacity = node.text&.to_i
        end
        xml.at('DefaultCooldown') do |node|
          data.default_cooldown = node.text&.to_i
        end
        xml.at('AvailabilityZones') do |node|
          children = node.children('member')
          data.availability_zones = Parsers::AvailabilityZones.parse(children)
        end
        xml.at('LoadBalancerNames') do |node|
          children = node.children('member')
          data.load_balancer_names = Parsers::LoadBalancerNames.parse(children)
        end
        xml.at('TargetGroupARNs') do |node|
          children = node.children('member')
          data.target_group_ar_ns = Parsers::TargetGroupARNs.parse(children)
        end
        xml.at('HealthCheckType') do |node|
          data.health_check_type = (node.text || '')
        end
        xml.at('HealthCheckGracePeriod') do |node|
          data.health_check_grace_period = node.text&.to_i
        end
        xml.at('Instances') do |node|
          children = node.children('member')
          data.instances = Parsers::Instances.parse(children)
        end
        xml.at('CreatedTime') do |node|
          data.created_time = Time.parse(node.text) if node.text
        end
        xml.at('SuspendedProcesses') do |node|
          children = node.children('member')
          data.suspended_processes = Parsers::SuspendedProcesses.parse(children)
        end
        xml.at('PlacementGroup') do |node|
          data.placement_group = (node.text || '')
        end
        xml.at('VPCZoneIdentifier') do |node|
          data.vpc_zone_identifier = (node.text || '')
        end
        xml.at('EnabledMetrics') do |node|
          children = node.children('member')
          data.enabled_metrics = Parsers::EnabledMetrics.parse(children)
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('Tags') do |node|
          children = node.children('member')
          data.tags = Parsers::TagDescriptionList.parse(children)
        end
        xml.at('TerminationPolicies') do |node|
          children = node.children('member')
          data.termination_policies = Parsers::TerminationPolicies.parse(children)
        end
        xml.at('NewInstancesProtectedFromScaleIn') do |node|
          data.new_instances_protected_from_scale_in = (node.text == 'true')
        end
        xml.at('ServiceLinkedRoleARN') do |node|
          data.service_linked_role_arn = (node.text || '')
        end
        xml.at('MaxInstanceLifetime') do |node|
          data.max_instance_lifetime = node.text&.to_i
        end
        xml.at('CapacityRebalance') do |node|
          data.capacity_rebalance = (node.text == 'true')
        end
        xml.at('WarmPoolConfiguration') do |node|
          data.warm_pool_configuration = Parsers::WarmPoolConfiguration.parse(node)
        end
        xml.at('WarmPoolSize') do |node|
          data.warm_pool_size = node.text&.to_i
        end
        xml.at('Context') do |node|
          data.context = (node.text || '')
        end
        xml.at('DesiredCapacityType') do |node|
          data.desired_capacity_type = (node.text || '')
        end
        xml.at('DefaultInstanceWarmup') do |node|
          data.default_instance_warmup = node.text&.to_i
        end
        return data
      end
    end

    class WarmPoolConfiguration
      def self.parse(xml)
        data = Types::WarmPoolConfiguration.new
        xml.at('MaxGroupPreparedCapacity') do |node|
          data.max_group_prepared_capacity = node.text&.to_i
        end
        xml.at('MinSize') do |node|
          data.min_size = node.text&.to_i
        end
        xml.at('PoolState') do |node|
          data.pool_state = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('InstanceReusePolicy') do |node|
          data.instance_reuse_policy = Parsers::InstanceReusePolicy.parse(node)
        end
        return data
      end
    end

    class InstanceReusePolicy
      def self.parse(xml)
        data = Types::InstanceReusePolicy.new
        xml.at('ReuseOnScaleIn') do |node|
          data.reuse_on_scale_in = (node.text == 'true')
        end
        return data
      end
    end

    class TerminationPolicies
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class TagDescriptionList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::TagDescription.parse(node)
        end
        data
      end
    end

    class TagDescription
      def self.parse(xml)
        data = Types::TagDescription.new
        xml.at('ResourceId') do |node|
          data.resource_id = (node.text || '')
        end
        xml.at('ResourceType') do |node|
          data.resource_type = (node.text || '')
        end
        xml.at('Key') do |node|
          data.key = (node.text || '')
        end
        xml.at('Value') do |node|
          data.value = (node.text || '')
        end
        xml.at('PropagateAtLaunch') do |node|
          data.propagate_at_launch = (node.text == 'true')
        end
        return data
      end
    end

    class EnabledMetrics
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::EnabledMetric.parse(node)
        end
        data
      end
    end

    class EnabledMetric
      def self.parse(xml)
        data = Types::EnabledMetric.new
        xml.at('Metric') do |node|
          data.metric = (node.text || '')
        end
        xml.at('Granularity') do |node|
          data.granularity = (node.text || '')
        end
        return data
      end
    end

    class SuspendedProcesses
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::SuspendedProcess.parse(node)
        end
        data
      end
    end

    class SuspendedProcess
      def self.parse(xml)
        data = Types::SuspendedProcess.new
        xml.at('ProcessName') do |node|
          data.process_name = (node.text || '')
        end
        xml.at('SuspensionReason') do |node|
          data.suspension_reason = (node.text || '')
        end
        return data
      end
    end

    class Instances
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Instance.parse(node)
        end
        data
      end
    end

    class Instance
      def self.parse(xml)
        data = Types::Instance.new
        xml.at('InstanceId') do |node|
          data.instance_id = (node.text || '')
        end
        xml.at('InstanceType') do |node|
          data.instance_type = (node.text || '')
        end
        xml.at('AvailabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('LifecycleState') do |node|
          data.lifecycle_state = (node.text || '')
        end
        xml.at('HealthStatus') do |node|
          data.health_status = (node.text || '')
        end
        xml.at('LaunchConfigurationName') do |node|
          data.launch_configuration_name = (node.text || '')
        end
        xml.at('LaunchTemplate') do |node|
          data.launch_template = Parsers::LaunchTemplateSpecification.parse(node)
        end
        xml.at('ProtectedFromScaleIn') do |node|
          data.protected_from_scale_in = (node.text == 'true')
        end
        xml.at('WeightedCapacity') do |node|
          data.weighted_capacity = (node.text || '')
        end
        return data
      end
    end

    class LaunchTemplateSpecification
      def self.parse(xml)
        data = Types::LaunchTemplateSpecification.new
        xml.at('LaunchTemplateId') do |node|
          data.launch_template_id = (node.text || '')
        end
        xml.at('LaunchTemplateName') do |node|
          data.launch_template_name = (node.text || '')
        end
        xml.at('Version') do |node|
          data.version = (node.text || '')
        end
        return data
      end
    end

    class TargetGroupARNs
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class LoadBalancerNames
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class AvailabilityZones
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class MixedInstancesPolicy
      def self.parse(xml)
        data = Types::MixedInstancesPolicy.new
        xml.at('LaunchTemplate') do |node|
          data.launch_template = Parsers::LaunchTemplate.parse(node)
        end
        xml.at('InstancesDistribution') do |node|
          data.instances_distribution = Parsers::InstancesDistribution.parse(node)
        end
        return data
      end
    end

    class InstancesDistribution
      def self.parse(xml)
        data = Types::InstancesDistribution.new
        xml.at('OnDemandAllocationStrategy') do |node|
          data.on_demand_allocation_strategy = (node.text || '')
        end
        xml.at('OnDemandBaseCapacity') do |node|
          data.on_demand_base_capacity = node.text&.to_i
        end
        xml.at('OnDemandPercentageAboveBaseCapacity') do |node|
          data.on_demand_percentage_above_base_capacity = node.text&.to_i
        end
        xml.at('SpotAllocationStrategy') do |node|
          data.spot_allocation_strategy = (node.text || '')
        end
        xml.at('SpotInstancePools') do |node|
          data.spot_instance_pools = node.text&.to_i
        end
        xml.at('SpotMaxPrice') do |node|
          data.spot_max_price = (node.text || '')
        end
        return data
      end
    end

    class LaunchTemplate
      def self.parse(xml)
        data = Types::LaunchTemplate.new
        xml.at('LaunchTemplateSpecification') do |node|
          data.launch_template_specification = Parsers::LaunchTemplateSpecification.parse(node)
        end
        xml.at('Overrides') do |node|
          children = node.children('member')
          data.overrides = Parsers::Overrides.parse(children)
        end
        return data
      end
    end

    class Overrides
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::LaunchTemplateOverrides.parse(node)
        end
        data
      end
    end

    class LaunchTemplateOverrides
      def self.parse(xml)
        data = Types::LaunchTemplateOverrides.new
        xml.at('InstanceType') do |node|
          data.instance_type = (node.text || '')
        end
        xml.at('WeightedCapacity') do |node|
          data.weighted_capacity = (node.text || '')
        end
        xml.at('LaunchTemplateSpecification') do |node|
          data.launch_template_specification = Parsers::LaunchTemplateSpecification.parse(node)
        end
        xml.at('InstanceRequirements') do |node|
          data.instance_requirements = Parsers::InstanceRequirements.parse(node)
        end
        return data
      end
    end

    class InstanceRequirements
      def self.parse(xml)
        data = Types::InstanceRequirements.new
        xml.at('VCpuCount') do |node|
          data.v_cpu_count = Parsers::VCpuCountRequest.parse(node)
        end
        xml.at('MemoryMiB') do |node|
          data.memory_mi_b = Parsers::MemoryMiBRequest.parse(node)
        end
        xml.at('CpuManufacturers') do |node|
          children = node.children('member')
          data.cpu_manufacturers = Parsers::CpuManufacturers.parse(children)
        end
        xml.at('MemoryGiBPerVCpu') do |node|
          data.memory_gi_b_per_v_cpu = Parsers::MemoryGiBPerVCpuRequest.parse(node)
        end
        xml.at('ExcludedInstanceTypes') do |node|
          children = node.children('member')
          data.excluded_instance_types = Parsers::ExcludedInstanceTypes.parse(children)
        end
        xml.at('InstanceGenerations') do |node|
          children = node.children('member')
          data.instance_generations = Parsers::InstanceGenerations.parse(children)
        end
        xml.at('SpotMaxPricePercentageOverLowestPrice') do |node|
          data.spot_max_price_percentage_over_lowest_price = node.text&.to_i
        end
        xml.at('OnDemandMaxPricePercentageOverLowestPrice') do |node|
          data.on_demand_max_price_percentage_over_lowest_price = node.text&.to_i
        end
        xml.at('BareMetal') do |node|
          data.bare_metal = (node.text || '')
        end
        xml.at('BurstablePerformance') do |node|
          data.burstable_performance = (node.text || '')
        end
        xml.at('RequireHibernateSupport') do |node|
          data.require_hibernate_support = (node.text == 'true')
        end
        xml.at('NetworkInterfaceCount') do |node|
          data.network_interface_count = Parsers::NetworkInterfaceCountRequest.parse(node)
        end
        xml.at('LocalStorage') do |node|
          data.local_storage = (node.text || '')
        end
        xml.at('LocalStorageTypes') do |node|
          children = node.children('member')
          data.local_storage_types = Parsers::LocalStorageTypes.parse(children)
        end
        xml.at('TotalLocalStorageGB') do |node|
          data.total_local_storage_gb = Parsers::TotalLocalStorageGBRequest.parse(node)
        end
        xml.at('BaselineEbsBandwidthMbps') do |node|
          data.baseline_ebs_bandwidth_mbps = Parsers::BaselineEbsBandwidthMbpsRequest.parse(node)
        end
        xml.at('AcceleratorTypes') do |node|
          children = node.children('member')
          data.accelerator_types = Parsers::AcceleratorTypes.parse(children)
        end
        xml.at('AcceleratorCount') do |node|
          data.accelerator_count = Parsers::AcceleratorCountRequest.parse(node)
        end
        xml.at('AcceleratorManufacturers') do |node|
          children = node.children('member')
          data.accelerator_manufacturers = Parsers::AcceleratorManufacturers.parse(children)
        end
        xml.at('AcceleratorNames') do |node|
          children = node.children('member')
          data.accelerator_names = Parsers::AcceleratorNames.parse(children)
        end
        xml.at('AcceleratorTotalMemoryMiB') do |node|
          data.accelerator_total_memory_mi_b = Parsers::AcceleratorTotalMemoryMiBRequest.parse(node)
        end
        return data
      end
    end

    class AcceleratorTotalMemoryMiBRequest
      def self.parse(xml)
        data = Types::AcceleratorTotalMemoryMiBRequest.new
        xml.at('Min') do |node|
          data.min = node.text&.to_i
        end
        xml.at('Max') do |node|
          data.max = node.text&.to_i
        end
        return data
      end
    end

    class AcceleratorNames
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class AcceleratorManufacturers
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class AcceleratorCountRequest
      def self.parse(xml)
        data = Types::AcceleratorCountRequest.new
        xml.at('Min') do |node|
          data.min = node.text&.to_i
        end
        xml.at('Max') do |node|
          data.max = node.text&.to_i
        end
        return data
      end
    end

    class AcceleratorTypes
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class BaselineEbsBandwidthMbpsRequest
      def self.parse(xml)
        data = Types::BaselineEbsBandwidthMbpsRequest.new
        xml.at('Min') do |node|
          data.min = node.text&.to_i
        end
        xml.at('Max') do |node|
          data.max = node.text&.to_i
        end
        return data
      end
    end

    class TotalLocalStorageGBRequest
      def self.parse(xml)
        data = Types::TotalLocalStorageGBRequest.new
        xml.at('Min') do |node|
          data.min = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('Max') do |node|
          data.max = Hearth::NumberHelper.deserialize(node.text)
        end
        return data
      end
    end

    class LocalStorageTypes
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class NetworkInterfaceCountRequest
      def self.parse(xml)
        data = Types::NetworkInterfaceCountRequest.new
        xml.at('Min') do |node|
          data.min = node.text&.to_i
        end
        xml.at('Max') do |node|
          data.max = node.text&.to_i
        end
        return data
      end
    end

    class InstanceGenerations
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class ExcludedInstanceTypes
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class MemoryGiBPerVCpuRequest
      def self.parse(xml)
        data = Types::MemoryGiBPerVCpuRequest.new
        xml.at('Min') do |node|
          data.min = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('Max') do |node|
          data.max = Hearth::NumberHelper.deserialize(node.text)
        end
        return data
      end
    end

    class CpuManufacturers
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class MemoryMiBRequest
      def self.parse(xml)
        data = Types::MemoryMiBRequest.new
        xml.at('Min') do |node|
          data.min = node.text&.to_i
        end
        xml.at('Max') do |node|
          data.max = node.text&.to_i
        end
        return data
      end
    end

    class VCpuCountRequest
      def self.parse(xml)
        data = Types::VCpuCountRequest.new
        xml.at('Min') do |node|
          data.min = node.text&.to_i
        end
        xml.at('Max') do |node|
          data.max = node.text&.to_i
        end
        return data
      end
    end

    # Error Parser for InvalidNextToken
    class InvalidNextToken
      def self.parse(http_resp)
        data = Types::InvalidNextToken.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeAutoScalingInstances
    class DescribeAutoScalingInstances
      def self.parse(http_resp)
        data = Types::DescribeAutoScalingInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeAutoScalingInstancesResult')
        xml.at('AutoScalingInstances') do |node|
          children = node.children('member')
          data.auto_scaling_instances = Parsers::AutoScalingInstances.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class AutoScalingInstances
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::AutoScalingInstanceDetails.parse(node)
        end
        data
      end
    end

    class AutoScalingInstanceDetails
      def self.parse(xml)
        data = Types::AutoScalingInstanceDetails.new
        xml.at('InstanceId') do |node|
          data.instance_id = (node.text || '')
        end
        xml.at('InstanceType') do |node|
          data.instance_type = (node.text || '')
        end
        xml.at('AutoScalingGroupName') do |node|
          data.auto_scaling_group_name = (node.text || '')
        end
        xml.at('AvailabilityZone') do |node|
          data.availability_zone = (node.text || '')
        end
        xml.at('LifecycleState') do |node|
          data.lifecycle_state = (node.text || '')
        end
        xml.at('HealthStatus') do |node|
          data.health_status = (node.text || '')
        end
        xml.at('LaunchConfigurationName') do |node|
          data.launch_configuration_name = (node.text || '')
        end
        xml.at('LaunchTemplate') do |node|
          data.launch_template = Parsers::LaunchTemplateSpecification.parse(node)
        end
        xml.at('ProtectedFromScaleIn') do |node|
          data.protected_from_scale_in = (node.text == 'true')
        end
        xml.at('WeightedCapacity') do |node|
          data.weighted_capacity = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeAutoScalingNotificationTypes
    class DescribeAutoScalingNotificationTypes
      def self.parse(http_resp)
        data = Types::DescribeAutoScalingNotificationTypesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeAutoScalingNotificationTypesResult')
        xml.at('AutoScalingNotificationTypes') do |node|
          children = node.children('member')
          data.auto_scaling_notification_types = Parsers::AutoScalingNotificationTypes.parse(children)
        end
        data
      end
    end

    class AutoScalingNotificationTypes
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeInstanceRefreshes
    class DescribeInstanceRefreshes
      def self.parse(http_resp)
        data = Types::DescribeInstanceRefreshesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeInstanceRefreshesResult')
        xml.at('InstanceRefreshes') do |node|
          children = node.children('member')
          data.instance_refreshes = Parsers::InstanceRefreshes.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class InstanceRefreshes
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::InstanceRefresh.parse(node)
        end
        data
      end
    end

    class InstanceRefresh
      def self.parse(xml)
        data = Types::InstanceRefresh.new
        xml.at('InstanceRefreshId') do |node|
          data.instance_refresh_id = (node.text || '')
        end
        xml.at('AutoScalingGroupName') do |node|
          data.auto_scaling_group_name = (node.text || '')
        end
        xml.at('Status') do |node|
          data.status = (node.text || '')
        end
        xml.at('StatusReason') do |node|
          data.status_reason = (node.text || '')
        end
        xml.at('StartTime') do |node|
          data.start_time = Time.parse(node.text) if node.text
        end
        xml.at('EndTime') do |node|
          data.end_time = Time.parse(node.text) if node.text
        end
        xml.at('PercentageComplete') do |node|
          data.percentage_complete = node.text&.to_i
        end
        xml.at('InstancesToUpdate') do |node|
          data.instances_to_update = node.text&.to_i
        end
        xml.at('ProgressDetails') do |node|
          data.progress_details = Parsers::InstanceRefreshProgressDetails.parse(node)
        end
        xml.at('Preferences') do |node|
          data.preferences = Parsers::RefreshPreferences.parse(node)
        end
        xml.at('DesiredConfiguration') do |node|
          data.desired_configuration = Parsers::DesiredConfiguration.parse(node)
        end
        return data
      end
    end

    class DesiredConfiguration
      def self.parse(xml)
        data = Types::DesiredConfiguration.new
        xml.at('LaunchTemplate') do |node|
          data.launch_template = Parsers::LaunchTemplateSpecification.parse(node)
        end
        xml.at('MixedInstancesPolicy') do |node|
          data.mixed_instances_policy = Parsers::MixedInstancesPolicy.parse(node)
        end
        return data
      end
    end

    class RefreshPreferences
      def self.parse(xml)
        data = Types::RefreshPreferences.new
        xml.at('MinHealthyPercentage') do |node|
          data.min_healthy_percentage = node.text&.to_i
        end
        xml.at('InstanceWarmup') do |node|
          data.instance_warmup = node.text&.to_i
        end
        xml.at('CheckpointPercentages') do |node|
          children = node.children('member')
          data.checkpoint_percentages = Parsers::CheckpointPercentages.parse(children)
        end
        xml.at('CheckpointDelay') do |node|
          data.checkpoint_delay = node.text&.to_i
        end
        xml.at('SkipMatching') do |node|
          data.skip_matching = (node.text == 'true')
        end
        return data
      end
    end

    class CheckpointPercentages
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << node.text&.to_i
        end
        data
      end
    end

    class InstanceRefreshProgressDetails
      def self.parse(xml)
        data = Types::InstanceRefreshProgressDetails.new
        xml.at('LivePoolProgress') do |node|
          data.live_pool_progress = Parsers::InstanceRefreshLivePoolProgress.parse(node)
        end
        xml.at('WarmPoolProgress') do |node|
          data.warm_pool_progress = Parsers::InstanceRefreshWarmPoolProgress.parse(node)
        end
        return data
      end
    end

    class InstanceRefreshWarmPoolProgress
      def self.parse(xml)
        data = Types::InstanceRefreshWarmPoolProgress.new
        xml.at('PercentageComplete') do |node|
          data.percentage_complete = node.text&.to_i
        end
        xml.at('InstancesToUpdate') do |node|
          data.instances_to_update = node.text&.to_i
        end
        return data
      end
    end

    class InstanceRefreshLivePoolProgress
      def self.parse(xml)
        data = Types::InstanceRefreshLivePoolProgress.new
        xml.at('PercentageComplete') do |node|
          data.percentage_complete = node.text&.to_i
        end
        xml.at('InstancesToUpdate') do |node|
          data.instances_to_update = node.text&.to_i
        end
        return data
      end
    end

    # Operation Parser for DescribeLaunchConfigurations
    class DescribeLaunchConfigurations
      def self.parse(http_resp)
        data = Types::DescribeLaunchConfigurationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeLaunchConfigurationsResult')
        xml.at('LaunchConfigurations') do |node|
          children = node.children('member')
          data.launch_configurations = Parsers::LaunchConfigurations.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class LaunchConfigurations
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::LaunchConfiguration.parse(node)
        end
        data
      end
    end

    class LaunchConfiguration
      def self.parse(xml)
        data = Types::LaunchConfiguration.new
        xml.at('LaunchConfigurationName') do |node|
          data.launch_configuration_name = (node.text || '')
        end
        xml.at('LaunchConfigurationARN') do |node|
          data.launch_configuration_arn = (node.text || '')
        end
        xml.at('ImageId') do |node|
          data.image_id = (node.text || '')
        end
        xml.at('KeyName') do |node|
          data.key_name = (node.text || '')
        end
        xml.at('SecurityGroups') do |node|
          children = node.children('member')
          data.security_groups = Parsers::SecurityGroups.parse(children)
        end
        xml.at('ClassicLinkVPCId') do |node|
          data.classic_link_vpc_id = (node.text || '')
        end
        xml.at('ClassicLinkVPCSecurityGroups') do |node|
          children = node.children('member')
          data.classic_link_vpc_security_groups = Parsers::ClassicLinkVPCSecurityGroups.parse(children)
        end
        xml.at('UserData') do |node|
          data.user_data = (node.text || '')
        end
        xml.at('InstanceType') do |node|
          data.instance_type = (node.text || '')
        end
        xml.at('KernelId') do |node|
          data.kernel_id = (node.text || '')
        end
        xml.at('RamdiskId') do |node|
          data.ramdisk_id = (node.text || '')
        end
        xml.at('BlockDeviceMappings') do |node|
          children = node.children('member')
          data.block_device_mappings = Parsers::BlockDeviceMappings.parse(children)
        end
        xml.at('InstanceMonitoring') do |node|
          data.instance_monitoring = Parsers::InstanceMonitoring.parse(node)
        end
        xml.at('SpotPrice') do |node|
          data.spot_price = (node.text || '')
        end
        xml.at('IamInstanceProfile') do |node|
          data.iam_instance_profile = (node.text || '')
        end
        xml.at('CreatedTime') do |node|
          data.created_time = Time.parse(node.text) if node.text
        end
        xml.at('EbsOptimized') do |node|
          data.ebs_optimized = (node.text == 'true')
        end
        xml.at('AssociatePublicIpAddress') do |node|
          data.associate_public_ip_address = (node.text == 'true')
        end
        xml.at('PlacementTenancy') do |node|
          data.placement_tenancy = (node.text || '')
        end
        xml.at('MetadataOptions') do |node|
          data.metadata_options = Parsers::InstanceMetadataOptions.parse(node)
        end
        return data
      end
    end

    class InstanceMetadataOptions
      def self.parse(xml)
        data = Types::InstanceMetadataOptions.new
        xml.at('HttpTokens') do |node|
          data.http_tokens = (node.text || '')
        end
        xml.at('HttpPutResponseHopLimit') do |node|
          data.http_put_response_hop_limit = node.text&.to_i
        end
        xml.at('HttpEndpoint') do |node|
          data.http_endpoint = (node.text || '')
        end
        return data
      end
    end

    class InstanceMonitoring
      def self.parse(xml)
        data = Types::InstanceMonitoring.new
        xml.at('Enabled') do |node|
          data.enabled = (node.text == 'true')
        end
        return data
      end
    end

    class BlockDeviceMappings
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::BlockDeviceMapping.parse(node)
        end
        data
      end
    end

    class BlockDeviceMapping
      def self.parse(xml)
        data = Types::BlockDeviceMapping.new
        xml.at('VirtualName') do |node|
          data.virtual_name = (node.text || '')
        end
        xml.at('DeviceName') do |node|
          data.device_name = (node.text || '')
        end
        xml.at('Ebs') do |node|
          data.ebs = Parsers::Ebs.parse(node)
        end
        xml.at('NoDevice') do |node|
          data.no_device = (node.text == 'true')
        end
        return data
      end
    end

    class Ebs
      def self.parse(xml)
        data = Types::Ebs.new
        xml.at('SnapshotId') do |node|
          data.snapshot_id = (node.text || '')
        end
        xml.at('VolumeSize') do |node|
          data.volume_size = node.text&.to_i
        end
        xml.at('VolumeType') do |node|
          data.volume_type = (node.text || '')
        end
        xml.at('DeleteOnTermination') do |node|
          data.delete_on_termination = (node.text == 'true')
        end
        xml.at('Iops') do |node|
          data.iops = node.text&.to_i
        end
        xml.at('Encrypted') do |node|
          data.encrypted = (node.text == 'true')
        end
        xml.at('Throughput') do |node|
          data.throughput = node.text&.to_i
        end
        return data
      end
    end

    class ClassicLinkVPCSecurityGroups
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class SecurityGroups
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeLifecycleHookTypes
    class DescribeLifecycleHookTypes
      def self.parse(http_resp)
        data = Types::DescribeLifecycleHookTypesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeLifecycleHookTypesResult')
        xml.at('LifecycleHookTypes') do |node|
          children = node.children('member')
          data.lifecycle_hook_types = Parsers::AutoScalingNotificationTypes.parse(children)
        end
        data
      end
    end

    # Operation Parser for DescribeLifecycleHooks
    class DescribeLifecycleHooks
      def self.parse(http_resp)
        data = Types::DescribeLifecycleHooksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeLifecycleHooksResult')
        xml.at('LifecycleHooks') do |node|
          children = node.children('member')
          data.lifecycle_hooks = Parsers::LifecycleHooks.parse(children)
        end
        data
      end
    end

    class LifecycleHooks
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::LifecycleHook.parse(node)
        end
        data
      end
    end

    class LifecycleHook
      def self.parse(xml)
        data = Types::LifecycleHook.new
        xml.at('LifecycleHookName') do |node|
          data.lifecycle_hook_name = (node.text || '')
        end
        xml.at('AutoScalingGroupName') do |node|
          data.auto_scaling_group_name = (node.text || '')
        end
        xml.at('LifecycleTransition') do |node|
          data.lifecycle_transition = (node.text || '')
        end
        xml.at('NotificationTargetARN') do |node|
          data.notification_target_arn = (node.text || '')
        end
        xml.at('RoleARN') do |node|
          data.role_arn = (node.text || '')
        end
        xml.at('NotificationMetadata') do |node|
          data.notification_metadata = (node.text || '')
        end
        xml.at('HeartbeatTimeout') do |node|
          data.heartbeat_timeout = node.text&.to_i
        end
        xml.at('GlobalTimeout') do |node|
          data.global_timeout = node.text&.to_i
        end
        xml.at('DefaultResult') do |node|
          data.default_result = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeLoadBalancerTargetGroups
    class DescribeLoadBalancerTargetGroups
      def self.parse(http_resp)
        data = Types::DescribeLoadBalancerTargetGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeLoadBalancerTargetGroupsResult')
        xml.at('LoadBalancerTargetGroups') do |node|
          children = node.children('member')
          data.load_balancer_target_groups = Parsers::LoadBalancerTargetGroupStates.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class LoadBalancerTargetGroupStates
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::LoadBalancerTargetGroupState.parse(node)
        end
        data
      end
    end

    class LoadBalancerTargetGroupState
      def self.parse(xml)
        data = Types::LoadBalancerTargetGroupState.new
        xml.at('LoadBalancerTargetGroupARN') do |node|
          data.load_balancer_target_group_arn = (node.text || '')
        end
        xml.at('State') do |node|
          data.state = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeLoadBalancers
    class DescribeLoadBalancers
      def self.parse(http_resp)
        data = Types::DescribeLoadBalancersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeLoadBalancersResult')
        xml.at('LoadBalancers') do |node|
          children = node.children('member')
          data.load_balancers = Parsers::LoadBalancerStates.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class LoadBalancerStates
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::LoadBalancerState.parse(node)
        end
        data
      end
    end

    class LoadBalancerState
      def self.parse(xml)
        data = Types::LoadBalancerState.new
        xml.at('LoadBalancerName') do |node|
          data.load_balancer_name = (node.text || '')
        end
        xml.at('State') do |node|
          data.state = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeMetricCollectionTypes
    class DescribeMetricCollectionTypes
      def self.parse(http_resp)
        data = Types::DescribeMetricCollectionTypesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeMetricCollectionTypesResult')
        xml.at('Metrics') do |node|
          children = node.children('member')
          data.metrics = Parsers::MetricCollectionTypes.parse(children)
        end
        xml.at('Granularities') do |node|
          children = node.children('member')
          data.granularities = Parsers::MetricGranularityTypes.parse(children)
        end
        data
      end
    end

    class MetricGranularityTypes
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::MetricGranularityType.parse(node)
        end
        data
      end
    end

    class MetricGranularityType
      def self.parse(xml)
        data = Types::MetricGranularityType.new
        xml.at('Granularity') do |node|
          data.granularity = (node.text || '')
        end
        return data
      end
    end

    class MetricCollectionTypes
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::MetricCollectionType.parse(node)
        end
        data
      end
    end

    class MetricCollectionType
      def self.parse(xml)
        data = Types::MetricCollectionType.new
        xml.at('Metric') do |node|
          data.metric = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeNotificationConfigurations
    class DescribeNotificationConfigurations
      def self.parse(http_resp)
        data = Types::DescribeNotificationConfigurationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeNotificationConfigurationsResult')
        xml.at('NotificationConfigurations') do |node|
          children = node.children('member')
          data.notification_configurations = Parsers::NotificationConfigurations.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class NotificationConfigurations
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::NotificationConfiguration.parse(node)
        end
        data
      end
    end

    class NotificationConfiguration
      def self.parse(xml)
        data = Types::NotificationConfiguration.new
        xml.at('AutoScalingGroupName') do |node|
          data.auto_scaling_group_name = (node.text || '')
        end
        xml.at('TopicARN') do |node|
          data.topic_arn = (node.text || '')
        end
        xml.at('NotificationType') do |node|
          data.notification_type = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribePolicies
    class DescribePolicies
      def self.parse(http_resp)
        data = Types::DescribePoliciesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribePoliciesResult')
        xml.at('ScalingPolicies') do |node|
          children = node.children('member')
          data.scaling_policies = Parsers::ScalingPolicies.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class ScalingPolicies
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ScalingPolicy.parse(node)
        end
        data
      end
    end

    class ScalingPolicy
      def self.parse(xml)
        data = Types::ScalingPolicy.new
        xml.at('AutoScalingGroupName') do |node|
          data.auto_scaling_group_name = (node.text || '')
        end
        xml.at('PolicyName') do |node|
          data.policy_name = (node.text || '')
        end
        xml.at('PolicyARN') do |node|
          data.policy_arn = (node.text || '')
        end
        xml.at('PolicyType') do |node|
          data.policy_type = (node.text || '')
        end
        xml.at('AdjustmentType') do |node|
          data.adjustment_type = (node.text || '')
        end
        xml.at('MinAdjustmentStep') do |node|
          data.min_adjustment_step = node.text&.to_i
        end
        xml.at('MinAdjustmentMagnitude') do |node|
          data.min_adjustment_magnitude = node.text&.to_i
        end
        xml.at('ScalingAdjustment') do |node|
          data.scaling_adjustment = node.text&.to_i
        end
        xml.at('Cooldown') do |node|
          data.cooldown = node.text&.to_i
        end
        xml.at('StepAdjustments') do |node|
          children = node.children('member')
          data.step_adjustments = Parsers::StepAdjustments.parse(children)
        end
        xml.at('MetricAggregationType') do |node|
          data.metric_aggregation_type = (node.text || '')
        end
        xml.at('EstimatedInstanceWarmup') do |node|
          data.estimated_instance_warmup = node.text&.to_i
        end
        xml.at('Alarms') do |node|
          children = node.children('member')
          data.alarms = Parsers::Alarms.parse(children)
        end
        xml.at('TargetTrackingConfiguration') do |node|
          data.target_tracking_configuration = Parsers::TargetTrackingConfiguration.parse(node)
        end
        xml.at('Enabled') do |node|
          data.enabled = (node.text == 'true')
        end
        xml.at('PredictiveScalingConfiguration') do |node|
          data.predictive_scaling_configuration = Parsers::PredictiveScalingConfiguration.parse(node)
        end
        return data
      end
    end

    class PredictiveScalingConfiguration
      def self.parse(xml)
        data = Types::PredictiveScalingConfiguration.new
        xml.at('MetricSpecifications') do |node|
          children = node.children('member')
          data.metric_specifications = Parsers::PredictiveScalingMetricSpecifications.parse(children)
        end
        xml.at('Mode') do |node|
          data.mode = (node.text || '')
        end
        xml.at('SchedulingBufferTime') do |node|
          data.scheduling_buffer_time = node.text&.to_i
        end
        xml.at('MaxCapacityBreachBehavior') do |node|
          data.max_capacity_breach_behavior = (node.text || '')
        end
        xml.at('MaxCapacityBuffer') do |node|
          data.max_capacity_buffer = node.text&.to_i
        end
        return data
      end
    end

    class PredictiveScalingMetricSpecifications
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::PredictiveScalingMetricSpecification.parse(node)
        end
        data
      end
    end

    class PredictiveScalingMetricSpecification
      def self.parse(xml)
        data = Types::PredictiveScalingMetricSpecification.new
        xml.at('TargetValue') do |node|
          data.target_value = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('PredefinedMetricPairSpecification') do |node|
          data.predefined_metric_pair_specification = Parsers::PredictiveScalingPredefinedMetricPair.parse(node)
        end
        xml.at('PredefinedScalingMetricSpecification') do |node|
          data.predefined_scaling_metric_specification = Parsers::PredictiveScalingPredefinedScalingMetric.parse(node)
        end
        xml.at('PredefinedLoadMetricSpecification') do |node|
          data.predefined_load_metric_specification = Parsers::PredictiveScalingPredefinedLoadMetric.parse(node)
        end
        xml.at('CustomizedScalingMetricSpecification') do |node|
          data.customized_scaling_metric_specification = Parsers::PredictiveScalingCustomizedScalingMetric.parse(node)
        end
        xml.at('CustomizedLoadMetricSpecification') do |node|
          data.customized_load_metric_specification = Parsers::PredictiveScalingCustomizedLoadMetric.parse(node)
        end
        xml.at('CustomizedCapacityMetricSpecification') do |node|
          data.customized_capacity_metric_specification = Parsers::PredictiveScalingCustomizedCapacityMetric.parse(node)
        end
        return data
      end
    end

    class PredictiveScalingCustomizedCapacityMetric
      def self.parse(xml)
        data = Types::PredictiveScalingCustomizedCapacityMetric.new
        xml.at('MetricDataQueries') do |node|
          children = node.children('member')
          data.metric_data_queries = Parsers::MetricDataQueries.parse(children)
        end
        return data
      end
    end

    class MetricDataQueries
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::MetricDataQuery.parse(node)
        end
        data
      end
    end

    class MetricDataQuery
      def self.parse(xml)
        data = Types::MetricDataQuery.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('Expression') do |node|
          data.expression = (node.text || '')
        end
        xml.at('MetricStat') do |node|
          data.metric_stat = Parsers::MetricStat.parse(node)
        end
        xml.at('Label') do |node|
          data.label = (node.text || '')
        end
        xml.at('ReturnData') do |node|
          data.return_data = (node.text == 'true')
        end
        return data
      end
    end

    class MetricStat
      def self.parse(xml)
        data = Types::MetricStat.new
        xml.at('Metric') do |node|
          data.metric = Parsers::Metric.parse(node)
        end
        xml.at('Stat') do |node|
          data.stat = (node.text || '')
        end
        xml.at('Unit') do |node|
          data.unit = (node.text || '')
        end
        return data
      end
    end

    class Metric
      def self.parse(xml)
        data = Types::Metric.new
        xml.at('Namespace') do |node|
          data.namespace = (node.text || '')
        end
        xml.at('MetricName') do |node|
          data.metric_name = (node.text || '')
        end
        xml.at('Dimensions') do |node|
          children = node.children('member')
          data.dimensions = Parsers::MetricDimensions.parse(children)
        end
        return data
      end
    end

    class MetricDimensions
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::MetricDimension.parse(node)
        end
        data
      end
    end

    class MetricDimension
      def self.parse(xml)
        data = Types::MetricDimension.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('Value') do |node|
          data.value = (node.text || '')
        end
        return data
      end
    end

    class PredictiveScalingCustomizedLoadMetric
      def self.parse(xml)
        data = Types::PredictiveScalingCustomizedLoadMetric.new
        xml.at('MetricDataQueries') do |node|
          children = node.children('member')
          data.metric_data_queries = Parsers::MetricDataQueries.parse(children)
        end
        return data
      end
    end

    class PredictiveScalingCustomizedScalingMetric
      def self.parse(xml)
        data = Types::PredictiveScalingCustomizedScalingMetric.new
        xml.at('MetricDataQueries') do |node|
          children = node.children('member')
          data.metric_data_queries = Parsers::MetricDataQueries.parse(children)
        end
        return data
      end
    end

    class PredictiveScalingPredefinedLoadMetric
      def self.parse(xml)
        data = Types::PredictiveScalingPredefinedLoadMetric.new
        xml.at('PredefinedMetricType') do |node|
          data.predefined_metric_type = (node.text || '')
        end
        xml.at('ResourceLabel') do |node|
          data.resource_label = (node.text || '')
        end
        return data
      end
    end

    class PredictiveScalingPredefinedScalingMetric
      def self.parse(xml)
        data = Types::PredictiveScalingPredefinedScalingMetric.new
        xml.at('PredefinedMetricType') do |node|
          data.predefined_metric_type = (node.text || '')
        end
        xml.at('ResourceLabel') do |node|
          data.resource_label = (node.text || '')
        end
        return data
      end
    end

    class PredictiveScalingPredefinedMetricPair
      def self.parse(xml)
        data = Types::PredictiveScalingPredefinedMetricPair.new
        xml.at('PredefinedMetricType') do |node|
          data.predefined_metric_type = (node.text || '')
        end
        xml.at('ResourceLabel') do |node|
          data.resource_label = (node.text || '')
        end
        return data
      end
    end

    class TargetTrackingConfiguration
      def self.parse(xml)
        data = Types::TargetTrackingConfiguration.new
        xml.at('PredefinedMetricSpecification') do |node|
          data.predefined_metric_specification = Parsers::PredefinedMetricSpecification.parse(node)
        end
        xml.at('CustomizedMetricSpecification') do |node|
          data.customized_metric_specification = Parsers::CustomizedMetricSpecification.parse(node)
        end
        xml.at('TargetValue') do |node|
          data.target_value = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('DisableScaleIn') do |node|
          data.disable_scale_in = (node.text == 'true')
        end
        return data
      end
    end

    class CustomizedMetricSpecification
      def self.parse(xml)
        data = Types::CustomizedMetricSpecification.new
        xml.at('MetricName') do |node|
          data.metric_name = (node.text || '')
        end
        xml.at('Namespace') do |node|
          data.namespace = (node.text || '')
        end
        xml.at('Dimensions') do |node|
          children = node.children('member')
          data.dimensions = Parsers::MetricDimensions.parse(children)
        end
        xml.at('Statistic') do |node|
          data.statistic = (node.text || '')
        end
        xml.at('Unit') do |node|
          data.unit = (node.text || '')
        end
        return data
      end
    end

    class PredefinedMetricSpecification
      def self.parse(xml)
        data = Types::PredefinedMetricSpecification.new
        xml.at('PredefinedMetricType') do |node|
          data.predefined_metric_type = (node.text || '')
        end
        xml.at('ResourceLabel') do |node|
          data.resource_label = (node.text || '')
        end
        return data
      end
    end

    class Alarms
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Alarm.parse(node)
        end
        data
      end
    end

    class Alarm
      def self.parse(xml)
        data = Types::Alarm.new
        xml.at('AlarmName') do |node|
          data.alarm_name = (node.text || '')
        end
        xml.at('AlarmARN') do |node|
          data.alarm_arn = (node.text || '')
        end
        return data
      end
    end

    class StepAdjustments
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::StepAdjustment.parse(node)
        end
        data
      end
    end

    class StepAdjustment
      def self.parse(xml)
        data = Types::StepAdjustment.new
        xml.at('MetricIntervalLowerBound') do |node|
          data.metric_interval_lower_bound = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('MetricIntervalUpperBound') do |node|
          data.metric_interval_upper_bound = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('ScalingAdjustment') do |node|
          data.scaling_adjustment = node.text&.to_i
        end
        return data
      end
    end

    # Operation Parser for DescribeScalingActivities
    class DescribeScalingActivities
      def self.parse(http_resp)
        data = Types::DescribeScalingActivitiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeScalingActivitiesResult')
        xml.at('Activities') do |node|
          children = node.children('member')
          data.activities = Parsers::Activities.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class Activities
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::Activity.parse(node)
        end
        data
      end
    end

    class Activity
      def self.parse(xml)
        data = Types::Activity.new
        xml.at('ActivityId') do |node|
          data.activity_id = (node.text || '')
        end
        xml.at('AutoScalingGroupName') do |node|
          data.auto_scaling_group_name = (node.text || '')
        end
        xml.at('Description') do |node|
          data.description = (node.text || '')
        end
        xml.at('Cause') do |node|
          data.cause = (node.text || '')
        end
        xml.at('StartTime') do |node|
          data.start_time = Time.parse(node.text) if node.text
        end
        xml.at('EndTime') do |node|
          data.end_time = Time.parse(node.text) if node.text
        end
        xml.at('StatusCode') do |node|
          data.status_code = (node.text || '')
        end
        xml.at('StatusMessage') do |node|
          data.status_message = (node.text || '')
        end
        xml.at('Progress') do |node|
          data.progress = node.text&.to_i
        end
        xml.at('Details') do |node|
          data.details = (node.text || '')
        end
        xml.at('AutoScalingGroupState') do |node|
          data.auto_scaling_group_state = (node.text || '')
        end
        xml.at('AutoScalingGroupARN') do |node|
          data.auto_scaling_group_arn = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeScalingProcessTypes
    class DescribeScalingProcessTypes
      def self.parse(http_resp)
        data = Types::DescribeScalingProcessTypesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeScalingProcessTypesResult')
        xml.at('Processes') do |node|
          children = node.children('member')
          data.processes = Parsers::Processes.parse(children)
        end
        data
      end
    end

    class Processes
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ProcessType.parse(node)
        end
        data
      end
    end

    class ProcessType
      def self.parse(xml)
        data = Types::ProcessType.new
        xml.at('ProcessName') do |node|
          data.process_name = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeScheduledActions
    class DescribeScheduledActions
      def self.parse(http_resp)
        data = Types::DescribeScheduledActionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeScheduledActionsResult')
        xml.at('ScheduledUpdateGroupActions') do |node|
          children = node.children('member')
          data.scheduled_update_group_actions = Parsers::ScheduledUpdateGroupActions.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class ScheduledUpdateGroupActions
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::ScheduledUpdateGroupAction.parse(node)
        end
        data
      end
    end

    class ScheduledUpdateGroupAction
      def self.parse(xml)
        data = Types::ScheduledUpdateGroupAction.new
        xml.at('AutoScalingGroupName') do |node|
          data.auto_scaling_group_name = (node.text || '')
        end
        xml.at('ScheduledActionName') do |node|
          data.scheduled_action_name = (node.text || '')
        end
        xml.at('ScheduledActionARN') do |node|
          data.scheduled_action_arn = (node.text || '')
        end
        xml.at('Time') do |node|
          data.time = Time.parse(node.text) if node.text
        end
        xml.at('StartTime') do |node|
          data.start_time = Time.parse(node.text) if node.text
        end
        xml.at('EndTime') do |node|
          data.end_time = Time.parse(node.text) if node.text
        end
        xml.at('Recurrence') do |node|
          data.recurrence = (node.text || '')
        end
        xml.at('MinSize') do |node|
          data.min_size = node.text&.to_i
        end
        xml.at('MaxSize') do |node|
          data.max_size = node.text&.to_i
        end
        xml.at('DesiredCapacity') do |node|
          data.desired_capacity = node.text&.to_i
        end
        xml.at('TimeZone') do |node|
          data.time_zone = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeTags
    class DescribeTags
      def self.parse(http_resp)
        data = Types::DescribeTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeTagsResult')
        xml.at('Tags') do |node|
          children = node.children('member')
          data.tags = Parsers::TagDescriptionList.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeTerminationPolicyTypes
    class DescribeTerminationPolicyTypes
      def self.parse(http_resp)
        data = Types::DescribeTerminationPolicyTypesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeTerminationPolicyTypesResult')
        xml.at('TerminationPolicyTypes') do |node|
          children = node.children('member')
          data.termination_policy_types = Parsers::TerminationPolicies.parse(children)
        end
        data
      end
    end

    # Operation Parser for DescribeWarmPool
    class DescribeWarmPool
      def self.parse(http_resp)
        data = Types::DescribeWarmPoolOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeWarmPoolResult')
        xml.at('WarmPoolConfiguration') do |node|
          data.warm_pool_configuration = Parsers::WarmPoolConfiguration.parse(node)
        end
        xml.at('Instances') do |node|
          children = node.children('member')
          data.instances = Parsers::Instances.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DetachInstances
    class DetachInstances
      def self.parse(http_resp)
        data = Types::DetachInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DetachInstancesResult')
        xml.at('Activities') do |node|
          children = node.children('member')
          data.activities = Parsers::Activities.parse(children)
        end
        data
      end
    end

    # Operation Parser for DetachLoadBalancerTargetGroups
    class DetachLoadBalancerTargetGroups
      def self.parse(http_resp)
        data = Types::DetachLoadBalancerTargetGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DetachLoadBalancerTargetGroupsResult')
        data
      end
    end

    # Operation Parser for DetachLoadBalancers
    class DetachLoadBalancers
      def self.parse(http_resp)
        data = Types::DetachLoadBalancersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DetachLoadBalancersResult')
        data
      end
    end

    # Operation Parser for DisableMetricsCollection
    class DisableMetricsCollection
      def self.parse(http_resp)
        data = Types::DisableMetricsCollectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DisableMetricsCollectionResult')
        data
      end
    end

    # Operation Parser for EnableMetricsCollection
    class EnableMetricsCollection
      def self.parse(http_resp)
        data = Types::EnableMetricsCollectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('EnableMetricsCollectionResult')
        data
      end
    end

    # Operation Parser for EnterStandby
    class EnterStandby
      def self.parse(http_resp)
        data = Types::EnterStandbyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('EnterStandbyResult')
        xml.at('Activities') do |node|
          children = node.children('member')
          data.activities = Parsers::Activities.parse(children)
        end
        data
      end
    end

    # Operation Parser for ExecutePolicy
    class ExecutePolicy
      def self.parse(http_resp)
        data = Types::ExecutePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ExecutePolicyResult')
        data
      end
    end

    # Operation Parser for ExitStandby
    class ExitStandby
      def self.parse(http_resp)
        data = Types::ExitStandbyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ExitStandbyResult')
        xml.at('Activities') do |node|
          children = node.children('member')
          data.activities = Parsers::Activities.parse(children)
        end
        data
      end
    end

    # Operation Parser for GetPredictiveScalingForecast
    class GetPredictiveScalingForecast
      def self.parse(http_resp)
        data = Types::GetPredictiveScalingForecastOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetPredictiveScalingForecastResult')
        xml.at('LoadForecast') do |node|
          children = node.children('member')
          data.load_forecast = Parsers::LoadForecasts.parse(children)
        end
        xml.at('CapacityForecast') do |node|
          data.capacity_forecast = Parsers::CapacityForecast.parse(node)
        end
        xml.at('UpdateTime') do |node|
          data.update_time = Time.parse(node.text) if node.text
        end
        data
      end
    end

    class CapacityForecast
      def self.parse(xml)
        data = Types::CapacityForecast.new
        xml.at('Timestamps') do |node|
          children = node.children('member')
          data.timestamps = Parsers::PredictiveScalingForecastTimestamps.parse(children)
        end
        xml.at('Values') do |node|
          children = node.children('member')
          data.values = Parsers::PredictiveScalingForecastValues.parse(children)
        end
        return data
      end
    end

    class PredictiveScalingForecastValues
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Hearth::NumberHelper.deserialize(node.text)
        end
        data
      end
    end

    class PredictiveScalingForecastTimestamps
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Time.parse(node.text) if node.text
        end
        data
      end
    end

    class LoadForecasts
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Parsers::LoadForecast.parse(node)
        end
        data
      end
    end

    class LoadForecast
      def self.parse(xml)
        data = Types::LoadForecast.new
        xml.at('Timestamps') do |node|
          children = node.children('member')
          data.timestamps = Parsers::PredictiveScalingForecastTimestamps.parse(children)
        end
        xml.at('Values') do |node|
          children = node.children('member')
          data.values = Parsers::PredictiveScalingForecastValues.parse(children)
        end
        xml.at('MetricSpecification') do |node|
          data.metric_specification = Parsers::PredictiveScalingMetricSpecification.parse(node)
        end
        return data
      end
    end

    # Operation Parser for PutLifecycleHook
    class PutLifecycleHook
      def self.parse(http_resp)
        data = Types::PutLifecycleHookOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('PutLifecycleHookResult')
        data
      end
    end

    # Operation Parser for PutNotificationConfiguration
    class PutNotificationConfiguration
      def self.parse(http_resp)
        data = Types::PutNotificationConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('PutNotificationConfigurationResult')
        data
      end
    end

    # Operation Parser for PutScalingPolicy
    class PutScalingPolicy
      def self.parse(http_resp)
        data = Types::PutScalingPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('PutScalingPolicyResult')
        xml.at('PolicyARN') do |node|
          data.policy_arn = (node.text || '')
        end
        xml.at('Alarms') do |node|
          children = node.children('member')
          data.alarms = Parsers::Alarms.parse(children)
        end
        data
      end
    end

    # Operation Parser for PutScheduledUpdateGroupAction
    class PutScheduledUpdateGroupAction
      def self.parse(http_resp)
        data = Types::PutScheduledUpdateGroupActionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('PutScheduledUpdateGroupActionResult')
        data
      end
    end

    # Operation Parser for PutWarmPool
    class PutWarmPool
      def self.parse(http_resp)
        data = Types::PutWarmPoolOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('PutWarmPoolResult')
        data
      end
    end

    # Operation Parser for RecordLifecycleActionHeartbeat
    class RecordLifecycleActionHeartbeat
      def self.parse(http_resp)
        data = Types::RecordLifecycleActionHeartbeatOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('RecordLifecycleActionHeartbeatResult')
        data
      end
    end

    # Operation Parser for ResumeProcesses
    class ResumeProcesses
      def self.parse(http_resp)
        data = Types::ResumeProcessesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ResumeProcessesResult')
        data
      end
    end

    # Operation Parser for SetDesiredCapacity
    class SetDesiredCapacity
      def self.parse(http_resp)
        data = Types::SetDesiredCapacityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SetDesiredCapacityResult')
        data
      end
    end

    # Operation Parser for SetInstanceHealth
    class SetInstanceHealth
      def self.parse(http_resp)
        data = Types::SetInstanceHealthOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SetInstanceHealthResult')
        data
      end
    end

    # Operation Parser for SetInstanceProtection
    class SetInstanceProtection
      def self.parse(http_resp)
        data = Types::SetInstanceProtectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SetInstanceProtectionResult')
        data
      end
    end

    # Operation Parser for StartInstanceRefresh
    class StartInstanceRefresh
      def self.parse(http_resp)
        data = Types::StartInstanceRefreshOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('StartInstanceRefreshResult')
        xml.at('InstanceRefreshId') do |node|
          data.instance_refresh_id = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InstanceRefreshInProgressFault
    class InstanceRefreshInProgressFault
      def self.parse(http_resp)
        data = Types::InstanceRefreshInProgressFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for SuspendProcesses
    class SuspendProcesses
      def self.parse(http_resp)
        data = Types::SuspendProcessesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SuspendProcessesResult')
        data
      end
    end

    # Operation Parser for TerminateInstanceInAutoScalingGroup
    class TerminateInstanceInAutoScalingGroup
      def self.parse(http_resp)
        data = Types::TerminateInstanceInAutoScalingGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('TerminateInstanceInAutoScalingGroupResult')
        xml.at('Activity') do |node|
          data.activity = Parsers::Activity.parse(node)
        end
        data
      end
    end

    # Operation Parser for UpdateAutoScalingGroup
    class UpdateAutoScalingGroup
      def self.parse(http_resp)
        data = Types::UpdateAutoScalingGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UpdateAutoScalingGroupResult')
        data
      end
    end
  end
end
