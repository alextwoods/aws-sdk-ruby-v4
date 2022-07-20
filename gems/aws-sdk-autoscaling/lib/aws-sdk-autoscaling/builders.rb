# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AutoScaling
  module Builders

    # Operation Builder for AttachInstances
    class AttachInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AttachInstances'
        params['Version'] = '2011-01-01'
        Builders::InstanceIds.build(input[:instance_ids], params, context: context + 'InstanceIds' + '.member') unless input[:instance_ids].nil?
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for InstanceIds
    class InstanceIds
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for AttachLoadBalancerTargetGroups
    class AttachLoadBalancerTargetGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AttachLoadBalancerTargetGroups'
        params['Version'] = '2011-01-01'
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        Builders::TargetGroupARNs.build(input[:target_group_ar_ns], params, context: context + 'TargetGroupARNs' + '.member') unless input[:target_group_ar_ns].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for TargetGroupARNs
    class TargetGroupARNs
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for AttachLoadBalancers
    class AttachLoadBalancers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'AttachLoadBalancers'
        params['Version'] = '2011-01-01'
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        Builders::LoadBalancerNames.build(input[:load_balancer_names], params, context: context + 'LoadBalancerNames' + '.member') unless input[:load_balancer_names].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for LoadBalancerNames
    class LoadBalancerNames
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for BatchDeleteScheduledAction
    class BatchDeleteScheduledAction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'BatchDeleteScheduledAction'
        params['Version'] = '2011-01-01'
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        Builders::ScheduledActionNames.build(input[:scheduled_action_names], params, context: context + 'ScheduledActionNames' + '.member') unless input[:scheduled_action_names].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ScheduledActionNames
    class ScheduledActionNames
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for BatchPutScheduledUpdateGroupAction
    class BatchPutScheduledUpdateGroupAction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'BatchPutScheduledUpdateGroupAction'
        params['Version'] = '2011-01-01'
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        Builders::ScheduledUpdateGroupActionRequests.build(input[:scheduled_update_group_actions], params, context: context + 'ScheduledUpdateGroupActions' + '.member') unless input[:scheduled_update_group_actions].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ScheduledUpdateGroupActionRequests
    class ScheduledUpdateGroupActionRequests
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::ScheduledUpdateGroupActionRequest.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for ScheduledUpdateGroupActionRequest
    class ScheduledUpdateGroupActionRequest
      def self.build(input, params, context: nil)
        params[context + 'ScheduledActionName'] = input[:scheduled_action_name].to_s unless input[:scheduled_action_name].nil?
        params[context + 'StartTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params[context + 'EndTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        params[context + 'Recurrence'] = input[:recurrence].to_s unless input[:recurrence].nil?
        params[context + 'MinSize'] = input[:min_size].to_s unless input[:min_size].nil?
        params[context + 'MaxSize'] = input[:max_size].to_s unless input[:max_size].nil?
        params[context + 'DesiredCapacity'] = input[:desired_capacity].to_s unless input[:desired_capacity].nil?
        params[context + 'TimeZone'] = input[:time_zone].to_s unless input[:time_zone].nil?
      end
    end

    # Operation Builder for CancelInstanceRefresh
    class CancelInstanceRefresh
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CancelInstanceRefresh'
        params['Version'] = '2011-01-01'
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CompleteLifecycleAction
    class CompleteLifecycleAction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CompleteLifecycleAction'
        params['Version'] = '2011-01-01'
        params[context + 'LifecycleHookName'] = input[:lifecycle_hook_name].to_s unless input[:lifecycle_hook_name].nil?
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        params[context + 'LifecycleActionToken'] = input[:lifecycle_action_token].to_s unless input[:lifecycle_action_token].nil?
        params[context + 'LifecycleActionResult'] = input[:lifecycle_action_result].to_s unless input[:lifecycle_action_result].nil?
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for CreateAutoScalingGroup
    class CreateAutoScalingGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateAutoScalingGroup'
        params['Version'] = '2011-01-01'
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        params[context + 'LaunchConfigurationName'] = input[:launch_configuration_name].to_s unless input[:launch_configuration_name].nil?
        Builders::LaunchTemplateSpecification.build(input[:launch_template], params, context: context + 'LaunchTemplate' + '.') unless input[:launch_template].nil?
        Builders::MixedInstancesPolicy.build(input[:mixed_instances_policy], params, context: context + 'MixedInstancesPolicy' + '.') unless input[:mixed_instances_policy].nil?
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        params[context + 'MinSize'] = input[:min_size].to_s unless input[:min_size].nil?
        params[context + 'MaxSize'] = input[:max_size].to_s unless input[:max_size].nil?
        params[context + 'DesiredCapacity'] = input[:desired_capacity].to_s unless input[:desired_capacity].nil?
        params[context + 'DefaultCooldown'] = input[:default_cooldown].to_s unless input[:default_cooldown].nil?
        Builders::AvailabilityZones.build(input[:availability_zones], params, context: context + 'AvailabilityZones' + '.member') unless input[:availability_zones].nil?
        Builders::LoadBalancerNames.build(input[:load_balancer_names], params, context: context + 'LoadBalancerNames' + '.member') unless input[:load_balancer_names].nil?
        Builders::TargetGroupARNs.build(input[:target_group_ar_ns], params, context: context + 'TargetGroupARNs' + '.member') unless input[:target_group_ar_ns].nil?
        params[context + 'HealthCheckType'] = input[:health_check_type].to_s unless input[:health_check_type].nil?
        params[context + 'HealthCheckGracePeriod'] = input[:health_check_grace_period].to_s unless input[:health_check_grace_period].nil?
        params[context + 'PlacementGroup'] = input[:placement_group].to_s unless input[:placement_group].nil?
        params[context + 'VPCZoneIdentifier'] = input[:vpc_zone_identifier].to_s unless input[:vpc_zone_identifier].nil?
        Builders::TerminationPolicies.build(input[:termination_policies], params, context: context + 'TerminationPolicies' + '.member') unless input[:termination_policies].nil?
        params[context + 'NewInstancesProtectedFromScaleIn'] = input[:new_instances_protected_from_scale_in].to_s unless input[:new_instances_protected_from_scale_in].nil?
        params[context + 'CapacityRebalance'] = input[:capacity_rebalance].to_s unless input[:capacity_rebalance].nil?
        Builders::LifecycleHookSpecifications.build(input[:lifecycle_hook_specification_list], params, context: context + 'LifecycleHookSpecificationList' + '.member') unless input[:lifecycle_hook_specification_list].nil?
        Builders::Tags.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        params[context + 'ServiceLinkedRoleARN'] = input[:service_linked_role_arn].to_s unless input[:service_linked_role_arn].nil?
        params[context + 'MaxInstanceLifetime'] = input[:max_instance_lifetime].to_s unless input[:max_instance_lifetime].nil?
        params[context + 'Context'] = input[:context].to_s unless input[:context].nil?
        params[context + 'DesiredCapacityType'] = input[:desired_capacity_type].to_s unless input[:desired_capacity_type].nil?
        params[context + 'DefaultInstanceWarmup'] = input[:default_instance_warmup].to_s unless input[:default_instance_warmup].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for Tags
    class Tags
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::Tag.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input, params, context: nil)
        params[context + 'ResourceId'] = input[:resource_id].to_s unless input[:resource_id].nil?
        params[context + 'ResourceType'] = input[:resource_type].to_s unless input[:resource_type].nil?
        params[context + 'Key'] = input[:key].to_s unless input[:key].nil?
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
        params[context + 'PropagateAtLaunch'] = input[:propagate_at_launch].to_s unless input[:propagate_at_launch].nil?
      end
    end

    # List Builder for LifecycleHookSpecifications
    class LifecycleHookSpecifications
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::LifecycleHookSpecification.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for LifecycleHookSpecification
    class LifecycleHookSpecification
      def self.build(input, params, context: nil)
        params[context + 'LifecycleHookName'] = input[:lifecycle_hook_name].to_s unless input[:lifecycle_hook_name].nil?
        params[context + 'LifecycleTransition'] = input[:lifecycle_transition].to_s unless input[:lifecycle_transition].nil?
        params[context + 'NotificationMetadata'] = input[:notification_metadata].to_s unless input[:notification_metadata].nil?
        params[context + 'HeartbeatTimeout'] = input[:heartbeat_timeout].to_s unless input[:heartbeat_timeout].nil?
        params[context + 'DefaultResult'] = input[:default_result].to_s unless input[:default_result].nil?
        params[context + 'NotificationTargetARN'] = input[:notification_target_arn].to_s unless input[:notification_target_arn].nil?
        params[context + 'RoleARN'] = input[:role_arn].to_s unless input[:role_arn].nil?
      end
    end

    # List Builder for TerminationPolicies
    class TerminationPolicies
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for AvailabilityZones
    class AvailabilityZones
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Structure Builder for MixedInstancesPolicy
    class MixedInstancesPolicy
      def self.build(input, params, context: nil)
        Builders::LaunchTemplate.build(input[:launch_template], params, context: context + 'LaunchTemplate' + '.') unless input[:launch_template].nil?
        Builders::InstancesDistribution.build(input[:instances_distribution], params, context: context + 'InstancesDistribution' + '.') unless input[:instances_distribution].nil?
      end
    end

    # Structure Builder for InstancesDistribution
    class InstancesDistribution
      def self.build(input, params, context: nil)
        params[context + 'OnDemandAllocationStrategy'] = input[:on_demand_allocation_strategy].to_s unless input[:on_demand_allocation_strategy].nil?
        params[context + 'OnDemandBaseCapacity'] = input[:on_demand_base_capacity].to_s unless input[:on_demand_base_capacity].nil?
        params[context + 'OnDemandPercentageAboveBaseCapacity'] = input[:on_demand_percentage_above_base_capacity].to_s unless input[:on_demand_percentage_above_base_capacity].nil?
        params[context + 'SpotAllocationStrategy'] = input[:spot_allocation_strategy].to_s unless input[:spot_allocation_strategy].nil?
        params[context + 'SpotInstancePools'] = input[:spot_instance_pools].to_s unless input[:spot_instance_pools].nil?
        params[context + 'SpotMaxPrice'] = input[:spot_max_price].to_s unless input[:spot_max_price].nil?
      end
    end

    # Structure Builder for LaunchTemplate
    class LaunchTemplate
      def self.build(input, params, context: nil)
        Builders::LaunchTemplateSpecification.build(input[:launch_template_specification], params, context: context + 'LaunchTemplateSpecification' + '.') unless input[:launch_template_specification].nil?
        Builders::Overrides.build(input[:overrides], params, context: context + 'Overrides' + '.member') unless input[:overrides].nil?
      end
    end

    # List Builder for Overrides
    class Overrides
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::LaunchTemplateOverrides.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for LaunchTemplateOverrides
    class LaunchTemplateOverrides
      def self.build(input, params, context: nil)
        params[context + 'InstanceType'] = input[:instance_type].to_s unless input[:instance_type].nil?
        params[context + 'WeightedCapacity'] = input[:weighted_capacity].to_s unless input[:weighted_capacity].nil?
        Builders::LaunchTemplateSpecification.build(input[:launch_template_specification], params, context: context + 'LaunchTemplateSpecification' + '.') unless input[:launch_template_specification].nil?
        Builders::InstanceRequirements.build(input[:instance_requirements], params, context: context + 'InstanceRequirements' + '.') unless input[:instance_requirements].nil?
      end
    end

    # Structure Builder for InstanceRequirements
    class InstanceRequirements
      def self.build(input, params, context: nil)
        Builders::VCpuCountRequest.build(input[:v_cpu_count], params, context: context + 'VCpuCount' + '.') unless input[:v_cpu_count].nil?
        Builders::MemoryMiBRequest.build(input[:memory_mi_b], params, context: context + 'MemoryMiB' + '.') unless input[:memory_mi_b].nil?
        Builders::CpuManufacturers.build(input[:cpu_manufacturers], params, context: context + 'CpuManufacturers' + '.member') unless input[:cpu_manufacturers].nil?
        Builders::MemoryGiBPerVCpuRequest.build(input[:memory_gi_b_per_v_cpu], params, context: context + 'MemoryGiBPerVCpu' + '.') unless input[:memory_gi_b_per_v_cpu].nil?
        Builders::ExcludedInstanceTypes.build(input[:excluded_instance_types], params, context: context + 'ExcludedInstanceTypes' + '.member') unless input[:excluded_instance_types].nil?
        Builders::InstanceGenerations.build(input[:instance_generations], params, context: context + 'InstanceGenerations' + '.member') unless input[:instance_generations].nil?
        params[context + 'SpotMaxPricePercentageOverLowestPrice'] = input[:spot_max_price_percentage_over_lowest_price].to_s unless input[:spot_max_price_percentage_over_lowest_price].nil?
        params[context + 'OnDemandMaxPricePercentageOverLowestPrice'] = input[:on_demand_max_price_percentage_over_lowest_price].to_s unless input[:on_demand_max_price_percentage_over_lowest_price].nil?
        params[context + 'BareMetal'] = input[:bare_metal].to_s unless input[:bare_metal].nil?
        params[context + 'BurstablePerformance'] = input[:burstable_performance].to_s unless input[:burstable_performance].nil?
        params[context + 'RequireHibernateSupport'] = input[:require_hibernate_support].to_s unless input[:require_hibernate_support].nil?
        Builders::NetworkInterfaceCountRequest.build(input[:network_interface_count], params, context: context + 'NetworkInterfaceCount' + '.') unless input[:network_interface_count].nil?
        params[context + 'LocalStorage'] = input[:local_storage].to_s unless input[:local_storage].nil?
        Builders::LocalStorageTypes.build(input[:local_storage_types], params, context: context + 'LocalStorageTypes' + '.member') unless input[:local_storage_types].nil?
        Builders::TotalLocalStorageGBRequest.build(input[:total_local_storage_gb], params, context: context + 'TotalLocalStorageGB' + '.') unless input[:total_local_storage_gb].nil?
        Builders::BaselineEbsBandwidthMbpsRequest.build(input[:baseline_ebs_bandwidth_mbps], params, context: context + 'BaselineEbsBandwidthMbps' + '.') unless input[:baseline_ebs_bandwidth_mbps].nil?
        Builders::AcceleratorTypes.build(input[:accelerator_types], params, context: context + 'AcceleratorTypes' + '.member') unless input[:accelerator_types].nil?
        Builders::AcceleratorCountRequest.build(input[:accelerator_count], params, context: context + 'AcceleratorCount' + '.') unless input[:accelerator_count].nil?
        Builders::AcceleratorManufacturers.build(input[:accelerator_manufacturers], params, context: context + 'AcceleratorManufacturers' + '.member') unless input[:accelerator_manufacturers].nil?
        Builders::AcceleratorNames.build(input[:accelerator_names], params, context: context + 'AcceleratorNames' + '.member') unless input[:accelerator_names].nil?
        Builders::AcceleratorTotalMemoryMiBRequest.build(input[:accelerator_total_memory_mi_b], params, context: context + 'AcceleratorTotalMemoryMiB' + '.') unless input[:accelerator_total_memory_mi_b].nil?
      end
    end

    # Structure Builder for AcceleratorTotalMemoryMiBRequest
    class AcceleratorTotalMemoryMiBRequest
      def self.build(input, params, context: nil)
        params[context + 'Min'] = input[:min].to_s unless input[:min].nil?
        params[context + 'Max'] = input[:max].to_s unless input[:max].nil?
      end
    end

    # List Builder for AcceleratorNames
    class AcceleratorNames
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for AcceleratorManufacturers
    class AcceleratorManufacturers
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Structure Builder for AcceleratorCountRequest
    class AcceleratorCountRequest
      def self.build(input, params, context: nil)
        params[context + 'Min'] = input[:min].to_s unless input[:min].nil?
        params[context + 'Max'] = input[:max].to_s unless input[:max].nil?
      end
    end

    # List Builder for AcceleratorTypes
    class AcceleratorTypes
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Structure Builder for BaselineEbsBandwidthMbpsRequest
    class BaselineEbsBandwidthMbpsRequest
      def self.build(input, params, context: nil)
        params[context + 'Min'] = input[:min].to_s unless input[:min].nil?
        params[context + 'Max'] = input[:max].to_s unless input[:max].nil?
      end
    end

    # Structure Builder for TotalLocalStorageGBRequest
    class TotalLocalStorageGBRequest
      def self.build(input, params, context: nil)
        params[context + 'Min'] = Hearth::NumberHelper.serialize(input[:min]).to_s unless input[:min].nil?
        params[context + 'Max'] = Hearth::NumberHelper.serialize(input[:max]).to_s unless input[:max].nil?
      end
    end

    # List Builder for LocalStorageTypes
    class LocalStorageTypes
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Structure Builder for NetworkInterfaceCountRequest
    class NetworkInterfaceCountRequest
      def self.build(input, params, context: nil)
        params[context + 'Min'] = input[:min].to_s unless input[:min].nil?
        params[context + 'Max'] = input[:max].to_s unless input[:max].nil?
      end
    end

    # List Builder for InstanceGenerations
    class InstanceGenerations
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for ExcludedInstanceTypes
    class ExcludedInstanceTypes
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Structure Builder for MemoryGiBPerVCpuRequest
    class MemoryGiBPerVCpuRequest
      def self.build(input, params, context: nil)
        params[context + 'Min'] = Hearth::NumberHelper.serialize(input[:min]).to_s unless input[:min].nil?
        params[context + 'Max'] = Hearth::NumberHelper.serialize(input[:max]).to_s unless input[:max].nil?
      end
    end

    # List Builder for CpuManufacturers
    class CpuManufacturers
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Structure Builder for MemoryMiBRequest
    class MemoryMiBRequest
      def self.build(input, params, context: nil)
        params[context + 'Min'] = input[:min].to_s unless input[:min].nil?
        params[context + 'Max'] = input[:max].to_s unless input[:max].nil?
      end
    end

    # Structure Builder for VCpuCountRequest
    class VCpuCountRequest
      def self.build(input, params, context: nil)
        params[context + 'Min'] = input[:min].to_s unless input[:min].nil?
        params[context + 'Max'] = input[:max].to_s unless input[:max].nil?
      end
    end

    # Structure Builder for LaunchTemplateSpecification
    class LaunchTemplateSpecification
      def self.build(input, params, context: nil)
        params[context + 'LaunchTemplateId'] = input[:launch_template_id].to_s unless input[:launch_template_id].nil?
        params[context + 'LaunchTemplateName'] = input[:launch_template_name].to_s unless input[:launch_template_name].nil?
        params[context + 'Version'] = input[:version].to_s unless input[:version].nil?
      end
    end

    # Operation Builder for CreateLaunchConfiguration
    class CreateLaunchConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateLaunchConfiguration'
        params['Version'] = '2011-01-01'
        params[context + 'LaunchConfigurationName'] = input[:launch_configuration_name].to_s unless input[:launch_configuration_name].nil?
        params[context + 'ImageId'] = input[:image_id].to_s unless input[:image_id].nil?
        params[context + 'KeyName'] = input[:key_name].to_s unless input[:key_name].nil?
        Builders::SecurityGroups.build(input[:security_groups], params, context: context + 'SecurityGroups' + '.member') unless input[:security_groups].nil?
        params[context + 'ClassicLinkVPCId'] = input[:classic_link_vpc_id].to_s unless input[:classic_link_vpc_id].nil?
        Builders::ClassicLinkVPCSecurityGroups.build(input[:classic_link_vpc_security_groups], params, context: context + 'ClassicLinkVPCSecurityGroups' + '.member') unless input[:classic_link_vpc_security_groups].nil?
        params[context + 'UserData'] = input[:user_data].to_s unless input[:user_data].nil?
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        params[context + 'InstanceType'] = input[:instance_type].to_s unless input[:instance_type].nil?
        params[context + 'KernelId'] = input[:kernel_id].to_s unless input[:kernel_id].nil?
        params[context + 'RamdiskId'] = input[:ramdisk_id].to_s unless input[:ramdisk_id].nil?
        Builders::BlockDeviceMappings.build(input[:block_device_mappings], params, context: context + 'BlockDeviceMappings' + '.member') unless input[:block_device_mappings].nil?
        Builders::InstanceMonitoring.build(input[:instance_monitoring], params, context: context + 'InstanceMonitoring' + '.') unless input[:instance_monitoring].nil?
        params[context + 'SpotPrice'] = input[:spot_price].to_s unless input[:spot_price].nil?
        params[context + 'IamInstanceProfile'] = input[:iam_instance_profile].to_s unless input[:iam_instance_profile].nil?
        params[context + 'EbsOptimized'] = input[:ebs_optimized].to_s unless input[:ebs_optimized].nil?
        params[context + 'AssociatePublicIpAddress'] = input[:associate_public_ip_address].to_s unless input[:associate_public_ip_address].nil?
        params[context + 'PlacementTenancy'] = input[:placement_tenancy].to_s unless input[:placement_tenancy].nil?
        Builders::InstanceMetadataOptions.build(input[:metadata_options], params, context: context + 'MetadataOptions' + '.') unless input[:metadata_options].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for InstanceMetadataOptions
    class InstanceMetadataOptions
      def self.build(input, params, context: nil)
        params[context + 'HttpTokens'] = input[:http_tokens].to_s unless input[:http_tokens].nil?
        params[context + 'HttpPutResponseHopLimit'] = input[:http_put_response_hop_limit].to_s unless input[:http_put_response_hop_limit].nil?
        params[context + 'HttpEndpoint'] = input[:http_endpoint].to_s unless input[:http_endpoint].nil?
      end
    end

    # Structure Builder for InstanceMonitoring
    class InstanceMonitoring
      def self.build(input, params, context: nil)
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
      end
    end

    # List Builder for BlockDeviceMappings
    class BlockDeviceMappings
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::BlockDeviceMapping.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for BlockDeviceMapping
    class BlockDeviceMapping
      def self.build(input, params, context: nil)
        params[context + 'VirtualName'] = input[:virtual_name].to_s unless input[:virtual_name].nil?
        params[context + 'DeviceName'] = input[:device_name].to_s unless input[:device_name].nil?
        Builders::Ebs.build(input[:ebs], params, context: context + 'Ebs' + '.') unless input[:ebs].nil?
        params[context + 'NoDevice'] = input[:no_device].to_s unless input[:no_device].nil?
      end
    end

    # Structure Builder for Ebs
    class Ebs
      def self.build(input, params, context: nil)
        params[context + 'SnapshotId'] = input[:snapshot_id].to_s unless input[:snapshot_id].nil?
        params[context + 'VolumeSize'] = input[:volume_size].to_s unless input[:volume_size].nil?
        params[context + 'VolumeType'] = input[:volume_type].to_s unless input[:volume_type].nil?
        params[context + 'DeleteOnTermination'] = input[:delete_on_termination].to_s unless input[:delete_on_termination].nil?
        params[context + 'Iops'] = input[:iops].to_s unless input[:iops].nil?
        params[context + 'Encrypted'] = input[:encrypted].to_s unless input[:encrypted].nil?
        params[context + 'Throughput'] = input[:throughput].to_s unless input[:throughput].nil?
      end
    end

    # List Builder for ClassicLinkVPCSecurityGroups
    class ClassicLinkVPCSecurityGroups
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for SecurityGroups
    class SecurityGroups
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for CreateOrUpdateTags
    class CreateOrUpdateTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'CreateOrUpdateTags'
        params['Version'] = '2011-01-01'
        Builders::Tags.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteAutoScalingGroup
    class DeleteAutoScalingGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteAutoScalingGroup'
        params['Version'] = '2011-01-01'
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        params[context + 'ForceDelete'] = input[:force_delete].to_s unless input[:force_delete].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteLaunchConfiguration
    class DeleteLaunchConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteLaunchConfiguration'
        params['Version'] = '2011-01-01'
        params[context + 'LaunchConfigurationName'] = input[:launch_configuration_name].to_s unless input[:launch_configuration_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteLifecycleHook
    class DeleteLifecycleHook
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteLifecycleHook'
        params['Version'] = '2011-01-01'
        params[context + 'LifecycleHookName'] = input[:lifecycle_hook_name].to_s unless input[:lifecycle_hook_name].nil?
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteNotificationConfiguration
    class DeleteNotificationConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteNotificationConfiguration'
        params['Version'] = '2011-01-01'
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        params[context + 'TopicARN'] = input[:topic_arn].to_s unless input[:topic_arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeletePolicy
    class DeletePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeletePolicy'
        params['Version'] = '2011-01-01'
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        params[context + 'PolicyName'] = input[:policy_name].to_s unless input[:policy_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteScheduledAction
    class DeleteScheduledAction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteScheduledAction'
        params['Version'] = '2011-01-01'
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        params[context + 'ScheduledActionName'] = input[:scheduled_action_name].to_s unless input[:scheduled_action_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteTags
    class DeleteTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteTags'
        params['Version'] = '2011-01-01'
        Builders::Tags.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DeleteWarmPool
    class DeleteWarmPool
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteWarmPool'
        params['Version'] = '2011-01-01'
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        params[context + 'ForceDelete'] = input[:force_delete].to_s unless input[:force_delete].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeAccountLimits
    class DescribeAccountLimits
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeAccountLimits'
        params['Version'] = '2011-01-01'
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeAdjustmentTypes
    class DescribeAdjustmentTypes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeAdjustmentTypes'
        params['Version'] = '2011-01-01'
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeAutoScalingGroups
    class DescribeAutoScalingGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeAutoScalingGroups'
        params['Version'] = '2011-01-01'
        Builders::AutoScalingGroupNames.build(input[:auto_scaling_group_names], params, context: context + 'AutoScalingGroupNames' + '.member') unless input[:auto_scaling_group_names].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        Builders::Filters.build(input[:filters], params, context: context + 'Filters' + '.member') unless input[:filters].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for Filters
    class Filters
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::Filter.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for Filter
    class Filter
      def self.build(input, params, context: nil)
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        Builders::Values.build(input[:values], params, context: context + 'Values' + '.member') unless input[:values].nil?
      end
    end

    # List Builder for Values
    class Values
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for AutoScalingGroupNames
    class AutoScalingGroupNames
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeAutoScalingInstances
    class DescribeAutoScalingInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeAutoScalingInstances'
        params['Version'] = '2011-01-01'
        Builders::InstanceIds.build(input[:instance_ids], params, context: context + 'InstanceIds' + '.member') unless input[:instance_ids].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeAutoScalingNotificationTypes
    class DescribeAutoScalingNotificationTypes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeAutoScalingNotificationTypes'
        params['Version'] = '2011-01-01'
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeInstanceRefreshes
    class DescribeInstanceRefreshes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeInstanceRefreshes'
        params['Version'] = '2011-01-01'
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        Builders::InstanceRefreshIds.build(input[:instance_refresh_ids], params, context: context + 'InstanceRefreshIds' + '.member') unless input[:instance_refresh_ids].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for InstanceRefreshIds
    class InstanceRefreshIds
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeLaunchConfigurations
    class DescribeLaunchConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeLaunchConfigurations'
        params['Version'] = '2011-01-01'
        Builders::LaunchConfigurationNames.build(input[:launch_configuration_names], params, context: context + 'LaunchConfigurationNames' + '.member') unless input[:launch_configuration_names].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for LaunchConfigurationNames
    class LaunchConfigurationNames
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeLifecycleHookTypes
    class DescribeLifecycleHookTypes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeLifecycleHookTypes'
        params['Version'] = '2011-01-01'
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeLifecycleHooks
    class DescribeLifecycleHooks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeLifecycleHooks'
        params['Version'] = '2011-01-01'
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        Builders::LifecycleHookNames.build(input[:lifecycle_hook_names], params, context: context + 'LifecycleHookNames' + '.member') unless input[:lifecycle_hook_names].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for LifecycleHookNames
    class LifecycleHookNames
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeLoadBalancerTargetGroups
    class DescribeLoadBalancerTargetGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeLoadBalancerTargetGroups'
        params['Version'] = '2011-01-01'
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeLoadBalancers
    class DescribeLoadBalancers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeLoadBalancers'
        params['Version'] = '2011-01-01'
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeMetricCollectionTypes
    class DescribeMetricCollectionTypes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeMetricCollectionTypes'
        params['Version'] = '2011-01-01'
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeNotificationConfigurations
    class DescribeNotificationConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeNotificationConfigurations'
        params['Version'] = '2011-01-01'
        Builders::AutoScalingGroupNames.build(input[:auto_scaling_group_names], params, context: context + 'AutoScalingGroupNames' + '.member') unless input[:auto_scaling_group_names].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribePolicies
    class DescribePolicies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribePolicies'
        params['Version'] = '2011-01-01'
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        Builders::PolicyNames.build(input[:policy_names], params, context: context + 'PolicyNames' + '.member') unless input[:policy_names].nil?
        Builders::PolicyTypes.build(input[:policy_types], params, context: context + 'PolicyTypes' + '.member') unless input[:policy_types].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for PolicyTypes
    class PolicyTypes
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for PolicyNames
    class PolicyNames
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeScalingActivities
    class DescribeScalingActivities
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeScalingActivities'
        params['Version'] = '2011-01-01'
        Builders::ActivityIds.build(input[:activity_ids], params, context: context + 'ActivityIds' + '.member') unless input[:activity_ids].nil?
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        params[context + 'IncludeDeletedGroups'] = input[:include_deleted_groups].to_s unless input[:include_deleted_groups].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ActivityIds
    class ActivityIds
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeScalingProcessTypes
    class DescribeScalingProcessTypes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeScalingProcessTypes'
        params['Version'] = '2011-01-01'
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeScheduledActions
    class DescribeScheduledActions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeScheduledActions'
        params['Version'] = '2011-01-01'
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        Builders::ScheduledActionNames.build(input[:scheduled_action_names], params, context: context + 'ScheduledActionNames' + '.member') unless input[:scheduled_action_names].nil?
        params[context + 'StartTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params[context + 'EndTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeTags
    class DescribeTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTags'
        params['Version'] = '2011-01-01'
        Builders::Filters.build(input[:filters], params, context: context + 'Filters' + '.member') unless input[:filters].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeTerminationPolicyTypes
    class DescribeTerminationPolicyTypes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeTerminationPolicyTypes'
        params['Version'] = '2011-01-01'
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeWarmPool
    class DescribeWarmPool
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeWarmPool'
        params['Version'] = '2011-01-01'
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DetachInstances
    class DetachInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DetachInstances'
        params['Version'] = '2011-01-01'
        Builders::InstanceIds.build(input[:instance_ids], params, context: context + 'InstanceIds' + '.member') unless input[:instance_ids].nil?
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        params[context + 'ShouldDecrementDesiredCapacity'] = input[:should_decrement_desired_capacity].to_s unless input[:should_decrement_desired_capacity].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DetachLoadBalancerTargetGroups
    class DetachLoadBalancerTargetGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DetachLoadBalancerTargetGroups'
        params['Version'] = '2011-01-01'
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        Builders::TargetGroupARNs.build(input[:target_group_ar_ns], params, context: context + 'TargetGroupARNs' + '.member') unless input[:target_group_ar_ns].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DetachLoadBalancers
    class DetachLoadBalancers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DetachLoadBalancers'
        params['Version'] = '2011-01-01'
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        Builders::LoadBalancerNames.build(input[:load_balancer_names], params, context: context + 'LoadBalancerNames' + '.member') unless input[:load_balancer_names].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DisableMetricsCollection
    class DisableMetricsCollection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisableMetricsCollection'
        params['Version'] = '2011-01-01'
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        Builders::Metrics.build(input[:metrics], params, context: context + 'Metrics' + '.member') unless input[:metrics].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for Metrics
    class Metrics
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for EnableMetricsCollection
    class EnableMetricsCollection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'EnableMetricsCollection'
        params['Version'] = '2011-01-01'
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        Builders::Metrics.build(input[:metrics], params, context: context + 'Metrics' + '.member') unless input[:metrics].nil?
        params[context + 'Granularity'] = input[:granularity].to_s unless input[:granularity].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for EnterStandby
    class EnterStandby
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'EnterStandby'
        params['Version'] = '2011-01-01'
        Builders::InstanceIds.build(input[:instance_ids], params, context: context + 'InstanceIds' + '.member') unless input[:instance_ids].nil?
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        params[context + 'ShouldDecrementDesiredCapacity'] = input[:should_decrement_desired_capacity].to_s unless input[:should_decrement_desired_capacity].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ExecutePolicy
    class ExecutePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ExecutePolicy'
        params['Version'] = '2011-01-01'
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        params[context + 'PolicyName'] = input[:policy_name].to_s unless input[:policy_name].nil?
        params[context + 'HonorCooldown'] = input[:honor_cooldown].to_s unless input[:honor_cooldown].nil?
        params[context + 'MetricValue'] = Hearth::NumberHelper.serialize(input[:metric_value]).to_s unless input[:metric_value].nil?
        params[context + 'BreachThreshold'] = Hearth::NumberHelper.serialize(input[:breach_threshold]).to_s unless input[:breach_threshold].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ExitStandby
    class ExitStandby
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ExitStandby'
        params['Version'] = '2011-01-01'
        Builders::InstanceIds.build(input[:instance_ids], params, context: context + 'InstanceIds' + '.member') unless input[:instance_ids].nil?
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetPredictiveScalingForecast
    class GetPredictiveScalingForecast
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetPredictiveScalingForecast'
        params['Version'] = '2011-01-01'
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        params[context + 'PolicyName'] = input[:policy_name].to_s unless input[:policy_name].nil?
        params[context + 'StartTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params[context + 'EndTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for PutLifecycleHook
    class PutLifecycleHook
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'PutLifecycleHook'
        params['Version'] = '2011-01-01'
        params[context + 'LifecycleHookName'] = input[:lifecycle_hook_name].to_s unless input[:lifecycle_hook_name].nil?
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        params[context + 'LifecycleTransition'] = input[:lifecycle_transition].to_s unless input[:lifecycle_transition].nil?
        params[context + 'RoleARN'] = input[:role_arn].to_s unless input[:role_arn].nil?
        params[context + 'NotificationTargetARN'] = input[:notification_target_arn].to_s unless input[:notification_target_arn].nil?
        params[context + 'NotificationMetadata'] = input[:notification_metadata].to_s unless input[:notification_metadata].nil?
        params[context + 'HeartbeatTimeout'] = input[:heartbeat_timeout].to_s unless input[:heartbeat_timeout].nil?
        params[context + 'DefaultResult'] = input[:default_result].to_s unless input[:default_result].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for PutNotificationConfiguration
    class PutNotificationConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'PutNotificationConfiguration'
        params['Version'] = '2011-01-01'
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        params[context + 'TopicARN'] = input[:topic_arn].to_s unless input[:topic_arn].nil?
        Builders::AutoScalingNotificationTypes.build(input[:notification_types], params, context: context + 'NotificationTypes' + '.member') unless input[:notification_types].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for AutoScalingNotificationTypes
    class AutoScalingNotificationTypes
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for PutScalingPolicy
    class PutScalingPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'PutScalingPolicy'
        params['Version'] = '2011-01-01'
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        params[context + 'PolicyName'] = input[:policy_name].to_s unless input[:policy_name].nil?
        params[context + 'PolicyType'] = input[:policy_type].to_s unless input[:policy_type].nil?
        params[context + 'AdjustmentType'] = input[:adjustment_type].to_s unless input[:adjustment_type].nil?
        params[context + 'MinAdjustmentStep'] = input[:min_adjustment_step].to_s unless input[:min_adjustment_step].nil?
        params[context + 'MinAdjustmentMagnitude'] = input[:min_adjustment_magnitude].to_s unless input[:min_adjustment_magnitude].nil?
        params[context + 'ScalingAdjustment'] = input[:scaling_adjustment].to_s unless input[:scaling_adjustment].nil?
        params[context + 'Cooldown'] = input[:cooldown].to_s unless input[:cooldown].nil?
        params[context + 'MetricAggregationType'] = input[:metric_aggregation_type].to_s unless input[:metric_aggregation_type].nil?
        Builders::StepAdjustments.build(input[:step_adjustments], params, context: context + 'StepAdjustments' + '.member') unless input[:step_adjustments].nil?
        params[context + 'EstimatedInstanceWarmup'] = input[:estimated_instance_warmup].to_s unless input[:estimated_instance_warmup].nil?
        Builders::TargetTrackingConfiguration.build(input[:target_tracking_configuration], params, context: context + 'TargetTrackingConfiguration' + '.') unless input[:target_tracking_configuration].nil?
        params[context + 'Enabled'] = input[:enabled].to_s unless input[:enabled].nil?
        Builders::PredictiveScalingConfiguration.build(input[:predictive_scaling_configuration], params, context: context + 'PredictiveScalingConfiguration' + '.') unless input[:predictive_scaling_configuration].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for PredictiveScalingConfiguration
    class PredictiveScalingConfiguration
      def self.build(input, params, context: nil)
        Builders::PredictiveScalingMetricSpecifications.build(input[:metric_specifications], params, context: context + 'MetricSpecifications' + '.member') unless input[:metric_specifications].nil?
        params[context + 'Mode'] = input[:mode].to_s unless input[:mode].nil?
        params[context + 'SchedulingBufferTime'] = input[:scheduling_buffer_time].to_s unless input[:scheduling_buffer_time].nil?
        params[context + 'MaxCapacityBreachBehavior'] = input[:max_capacity_breach_behavior].to_s unless input[:max_capacity_breach_behavior].nil?
        params[context + 'MaxCapacityBuffer'] = input[:max_capacity_buffer].to_s unless input[:max_capacity_buffer].nil?
      end
    end

    # List Builder for PredictiveScalingMetricSpecifications
    class PredictiveScalingMetricSpecifications
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::PredictiveScalingMetricSpecification.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for PredictiveScalingMetricSpecification
    class PredictiveScalingMetricSpecification
      def self.build(input, params, context: nil)
        params[context + 'TargetValue'] = Hearth::NumberHelper.serialize(input[:target_value]).to_s unless input[:target_value].nil?
        Builders::PredictiveScalingPredefinedMetricPair.build(input[:predefined_metric_pair_specification], params, context: context + 'PredefinedMetricPairSpecification' + '.') unless input[:predefined_metric_pair_specification].nil?
        Builders::PredictiveScalingPredefinedScalingMetric.build(input[:predefined_scaling_metric_specification], params, context: context + 'PredefinedScalingMetricSpecification' + '.') unless input[:predefined_scaling_metric_specification].nil?
        Builders::PredictiveScalingPredefinedLoadMetric.build(input[:predefined_load_metric_specification], params, context: context + 'PredefinedLoadMetricSpecification' + '.') unless input[:predefined_load_metric_specification].nil?
        Builders::PredictiveScalingCustomizedScalingMetric.build(input[:customized_scaling_metric_specification], params, context: context + 'CustomizedScalingMetricSpecification' + '.') unless input[:customized_scaling_metric_specification].nil?
        Builders::PredictiveScalingCustomizedLoadMetric.build(input[:customized_load_metric_specification], params, context: context + 'CustomizedLoadMetricSpecification' + '.') unless input[:customized_load_metric_specification].nil?
        Builders::PredictiveScalingCustomizedCapacityMetric.build(input[:customized_capacity_metric_specification], params, context: context + 'CustomizedCapacityMetricSpecification' + '.') unless input[:customized_capacity_metric_specification].nil?
      end
    end

    # Structure Builder for PredictiveScalingCustomizedCapacityMetric
    class PredictiveScalingCustomizedCapacityMetric
      def self.build(input, params, context: nil)
        Builders::MetricDataQueries.build(input[:metric_data_queries], params, context: context + 'MetricDataQueries' + '.member') unless input[:metric_data_queries].nil?
      end
    end

    # List Builder for MetricDataQueries
    class MetricDataQueries
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::MetricDataQuery.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for MetricDataQuery
    class MetricDataQuery
      def self.build(input, params, context: nil)
        params[context + 'Id'] = input[:id].to_s unless input[:id].nil?
        params[context + 'Expression'] = input[:expression].to_s unless input[:expression].nil?
        Builders::MetricStat.build(input[:metric_stat], params, context: context + 'MetricStat' + '.') unless input[:metric_stat].nil?
        params[context + 'Label'] = input[:label].to_s unless input[:label].nil?
        params[context + 'ReturnData'] = input[:return_data].to_s unless input[:return_data].nil?
      end
    end

    # Structure Builder for MetricStat
    class MetricStat
      def self.build(input, params, context: nil)
        Builders::Metric.build(input[:metric], params, context: context + 'Metric' + '.') unless input[:metric].nil?
        params[context + 'Stat'] = input[:stat].to_s unless input[:stat].nil?
        params[context + 'Unit'] = input[:unit].to_s unless input[:unit].nil?
      end
    end

    # Structure Builder for Metric
    class Metric
      def self.build(input, params, context: nil)
        params[context + 'Namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        params[context + 'MetricName'] = input[:metric_name].to_s unless input[:metric_name].nil?
        Builders::MetricDimensions.build(input[:dimensions], params, context: context + 'Dimensions' + '.member') unless input[:dimensions].nil?
      end
    end

    # List Builder for MetricDimensions
    class MetricDimensions
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::MetricDimension.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for MetricDimension
    class MetricDimension
      def self.build(input, params, context: nil)
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    # Structure Builder for PredictiveScalingCustomizedLoadMetric
    class PredictiveScalingCustomizedLoadMetric
      def self.build(input, params, context: nil)
        Builders::MetricDataQueries.build(input[:metric_data_queries], params, context: context + 'MetricDataQueries' + '.member') unless input[:metric_data_queries].nil?
      end
    end

    # Structure Builder for PredictiveScalingCustomizedScalingMetric
    class PredictiveScalingCustomizedScalingMetric
      def self.build(input, params, context: nil)
        Builders::MetricDataQueries.build(input[:metric_data_queries], params, context: context + 'MetricDataQueries' + '.member') unless input[:metric_data_queries].nil?
      end
    end

    # Structure Builder for PredictiveScalingPredefinedLoadMetric
    class PredictiveScalingPredefinedLoadMetric
      def self.build(input, params, context: nil)
        params[context + 'PredefinedMetricType'] = input[:predefined_metric_type].to_s unless input[:predefined_metric_type].nil?
        params[context + 'ResourceLabel'] = input[:resource_label].to_s unless input[:resource_label].nil?
      end
    end

    # Structure Builder for PredictiveScalingPredefinedScalingMetric
    class PredictiveScalingPredefinedScalingMetric
      def self.build(input, params, context: nil)
        params[context + 'PredefinedMetricType'] = input[:predefined_metric_type].to_s unless input[:predefined_metric_type].nil?
        params[context + 'ResourceLabel'] = input[:resource_label].to_s unless input[:resource_label].nil?
      end
    end

    # Structure Builder for PredictiveScalingPredefinedMetricPair
    class PredictiveScalingPredefinedMetricPair
      def self.build(input, params, context: nil)
        params[context + 'PredefinedMetricType'] = input[:predefined_metric_type].to_s unless input[:predefined_metric_type].nil?
        params[context + 'ResourceLabel'] = input[:resource_label].to_s unless input[:resource_label].nil?
      end
    end

    # Structure Builder for TargetTrackingConfiguration
    class TargetTrackingConfiguration
      def self.build(input, params, context: nil)
        Builders::PredefinedMetricSpecification.build(input[:predefined_metric_specification], params, context: context + 'PredefinedMetricSpecification' + '.') unless input[:predefined_metric_specification].nil?
        Builders::CustomizedMetricSpecification.build(input[:customized_metric_specification], params, context: context + 'CustomizedMetricSpecification' + '.') unless input[:customized_metric_specification].nil?
        params[context + 'TargetValue'] = Hearth::NumberHelper.serialize(input[:target_value]).to_s unless input[:target_value].nil?
        params[context + 'DisableScaleIn'] = input[:disable_scale_in].to_s unless input[:disable_scale_in].nil?
      end
    end

    # Structure Builder for CustomizedMetricSpecification
    class CustomizedMetricSpecification
      def self.build(input, params, context: nil)
        params[context + 'MetricName'] = input[:metric_name].to_s unless input[:metric_name].nil?
        params[context + 'Namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        Builders::MetricDimensions.build(input[:dimensions], params, context: context + 'Dimensions' + '.member') unless input[:dimensions].nil?
        params[context + 'Statistic'] = input[:statistic].to_s unless input[:statistic].nil?
        params[context + 'Unit'] = input[:unit].to_s unless input[:unit].nil?
      end
    end

    # Structure Builder for PredefinedMetricSpecification
    class PredefinedMetricSpecification
      def self.build(input, params, context: nil)
        params[context + 'PredefinedMetricType'] = input[:predefined_metric_type].to_s unless input[:predefined_metric_type].nil?
        params[context + 'ResourceLabel'] = input[:resource_label].to_s unless input[:resource_label].nil?
      end
    end

    # List Builder for StepAdjustments
    class StepAdjustments
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::StepAdjustment.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for StepAdjustment
    class StepAdjustment
      def self.build(input, params, context: nil)
        params[context + 'MetricIntervalLowerBound'] = Hearth::NumberHelper.serialize(input[:metric_interval_lower_bound]).to_s unless input[:metric_interval_lower_bound].nil?
        params[context + 'MetricIntervalUpperBound'] = Hearth::NumberHelper.serialize(input[:metric_interval_upper_bound]).to_s unless input[:metric_interval_upper_bound].nil?
        params[context + 'ScalingAdjustment'] = input[:scaling_adjustment].to_s unless input[:scaling_adjustment].nil?
      end
    end

    # Operation Builder for PutScheduledUpdateGroupAction
    class PutScheduledUpdateGroupAction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'PutScheduledUpdateGroupAction'
        params['Version'] = '2011-01-01'
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        params[context + 'ScheduledActionName'] = input[:scheduled_action_name].to_s unless input[:scheduled_action_name].nil?
        params[context + 'Time'] = Hearth::TimeHelper.to_date_time(input[:time]) unless input[:time].nil?
        params[context + 'StartTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params[context + 'EndTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        params[context + 'Recurrence'] = input[:recurrence].to_s unless input[:recurrence].nil?
        params[context + 'MinSize'] = input[:min_size].to_s unless input[:min_size].nil?
        params[context + 'MaxSize'] = input[:max_size].to_s unless input[:max_size].nil?
        params[context + 'DesiredCapacity'] = input[:desired_capacity].to_s unless input[:desired_capacity].nil?
        params[context + 'TimeZone'] = input[:time_zone].to_s unless input[:time_zone].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for PutWarmPool
    class PutWarmPool
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'PutWarmPool'
        params['Version'] = '2011-01-01'
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        params[context + 'MaxGroupPreparedCapacity'] = input[:max_group_prepared_capacity].to_s unless input[:max_group_prepared_capacity].nil?
        params[context + 'MinSize'] = input[:min_size].to_s unless input[:min_size].nil?
        params[context + 'PoolState'] = input[:pool_state].to_s unless input[:pool_state].nil?
        Builders::InstanceReusePolicy.build(input[:instance_reuse_policy], params, context: context + 'InstanceReusePolicy' + '.') unless input[:instance_reuse_policy].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for InstanceReusePolicy
    class InstanceReusePolicy
      def self.build(input, params, context: nil)
        params[context + 'ReuseOnScaleIn'] = input[:reuse_on_scale_in].to_s unless input[:reuse_on_scale_in].nil?
      end
    end

    # Operation Builder for RecordLifecycleActionHeartbeat
    class RecordLifecycleActionHeartbeat
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'RecordLifecycleActionHeartbeat'
        params['Version'] = '2011-01-01'
        params[context + 'LifecycleHookName'] = input[:lifecycle_hook_name].to_s unless input[:lifecycle_hook_name].nil?
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        params[context + 'LifecycleActionToken'] = input[:lifecycle_action_token].to_s unless input[:lifecycle_action_token].nil?
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ResumeProcesses
    class ResumeProcesses
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ResumeProcesses'
        params['Version'] = '2011-01-01'
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        Builders::ProcessNames.build(input[:scaling_processes], params, context: context + 'ScalingProcesses' + '.member') unless input[:scaling_processes].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ProcessNames
    class ProcessNames
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for SetDesiredCapacity
    class SetDesiredCapacity
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SetDesiredCapacity'
        params['Version'] = '2011-01-01'
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        params[context + 'DesiredCapacity'] = input[:desired_capacity].to_s unless input[:desired_capacity].nil?
        params[context + 'HonorCooldown'] = input[:honor_cooldown].to_s unless input[:honor_cooldown].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for SetInstanceHealth
    class SetInstanceHealth
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SetInstanceHealth'
        params['Version'] = '2011-01-01'
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        params[context + 'HealthStatus'] = input[:health_status].to_s unless input[:health_status].nil?
        params[context + 'ShouldRespectGracePeriod'] = input[:should_respect_grace_period].to_s unless input[:should_respect_grace_period].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for SetInstanceProtection
    class SetInstanceProtection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SetInstanceProtection'
        params['Version'] = '2011-01-01'
        Builders::InstanceIds.build(input[:instance_ids], params, context: context + 'InstanceIds' + '.member') unless input[:instance_ids].nil?
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        params[context + 'ProtectedFromScaleIn'] = input[:protected_from_scale_in].to_s unless input[:protected_from_scale_in].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for StartInstanceRefresh
    class StartInstanceRefresh
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'StartInstanceRefresh'
        params['Version'] = '2011-01-01'
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        params[context + 'Strategy'] = input[:strategy].to_s unless input[:strategy].nil?
        Builders::DesiredConfiguration.build(input[:desired_configuration], params, context: context + 'DesiredConfiguration' + '.') unless input[:desired_configuration].nil?
        Builders::RefreshPreferences.build(input[:preferences], params, context: context + 'Preferences' + '.') unless input[:preferences].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for RefreshPreferences
    class RefreshPreferences
      def self.build(input, params, context: nil)
        params[context + 'MinHealthyPercentage'] = input[:min_healthy_percentage].to_s unless input[:min_healthy_percentage].nil?
        params[context + 'InstanceWarmup'] = input[:instance_warmup].to_s unless input[:instance_warmup].nil?
        Builders::CheckpointPercentages.build(input[:checkpoint_percentages], params, context: context + 'CheckpointPercentages' + '.member') unless input[:checkpoint_percentages].nil?
        params[context + 'CheckpointDelay'] = input[:checkpoint_delay].to_s unless input[:checkpoint_delay].nil?
        params[context + 'SkipMatching'] = input[:skip_matching].to_s unless input[:skip_matching].nil?
      end
    end

    # List Builder for CheckpointPercentages
    class CheckpointPercentages
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Structure Builder for DesiredConfiguration
    class DesiredConfiguration
      def self.build(input, params, context: nil)
        Builders::LaunchTemplateSpecification.build(input[:launch_template], params, context: context + 'LaunchTemplate' + '.') unless input[:launch_template].nil?
        Builders::MixedInstancesPolicy.build(input[:mixed_instances_policy], params, context: context + 'MixedInstancesPolicy' + '.') unless input[:mixed_instances_policy].nil?
      end
    end

    # Operation Builder for SuspendProcesses
    class SuspendProcesses
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SuspendProcesses'
        params['Version'] = '2011-01-01'
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        Builders::ProcessNames.build(input[:scaling_processes], params, context: context + 'ScalingProcesses' + '.member') unless input[:scaling_processes].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for TerminateInstanceInAutoScalingGroup
    class TerminateInstanceInAutoScalingGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'TerminateInstanceInAutoScalingGroup'
        params['Version'] = '2011-01-01'
        params[context + 'InstanceId'] = input[:instance_id].to_s unless input[:instance_id].nil?
        params[context + 'ShouldDecrementDesiredCapacity'] = input[:should_decrement_desired_capacity].to_s unless input[:should_decrement_desired_capacity].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UpdateAutoScalingGroup
    class UpdateAutoScalingGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UpdateAutoScalingGroup'
        params['Version'] = '2011-01-01'
        params[context + 'AutoScalingGroupName'] = input[:auto_scaling_group_name].to_s unless input[:auto_scaling_group_name].nil?
        params[context + 'LaunchConfigurationName'] = input[:launch_configuration_name].to_s unless input[:launch_configuration_name].nil?
        Builders::LaunchTemplateSpecification.build(input[:launch_template], params, context: context + 'LaunchTemplate' + '.') unless input[:launch_template].nil?
        Builders::MixedInstancesPolicy.build(input[:mixed_instances_policy], params, context: context + 'MixedInstancesPolicy' + '.') unless input[:mixed_instances_policy].nil?
        params[context + 'MinSize'] = input[:min_size].to_s unless input[:min_size].nil?
        params[context + 'MaxSize'] = input[:max_size].to_s unless input[:max_size].nil?
        params[context + 'DesiredCapacity'] = input[:desired_capacity].to_s unless input[:desired_capacity].nil?
        params[context + 'DefaultCooldown'] = input[:default_cooldown].to_s unless input[:default_cooldown].nil?
        Builders::AvailabilityZones.build(input[:availability_zones], params, context: context + 'AvailabilityZones' + '.member') unless input[:availability_zones].nil?
        params[context + 'HealthCheckType'] = input[:health_check_type].to_s unless input[:health_check_type].nil?
        params[context + 'HealthCheckGracePeriod'] = input[:health_check_grace_period].to_s unless input[:health_check_grace_period].nil?
        params[context + 'PlacementGroup'] = input[:placement_group].to_s unless input[:placement_group].nil?
        params[context + 'VPCZoneIdentifier'] = input[:vpc_zone_identifier].to_s unless input[:vpc_zone_identifier].nil?
        Builders::TerminationPolicies.build(input[:termination_policies], params, context: context + 'TerminationPolicies' + '.member') unless input[:termination_policies].nil?
        params[context + 'NewInstancesProtectedFromScaleIn'] = input[:new_instances_protected_from_scale_in].to_s unless input[:new_instances_protected_from_scale_in].nil?
        params[context + 'ServiceLinkedRoleARN'] = input[:service_linked_role_arn].to_s unless input[:service_linked_role_arn].nil?
        params[context + 'MaxInstanceLifetime'] = input[:max_instance_lifetime].to_s unless input[:max_instance_lifetime].nil?
        params[context + 'CapacityRebalance'] = input[:capacity_rebalance].to_s unless input[:capacity_rebalance].nil?
        params[context + 'Context'] = input[:context].to_s unless input[:context].nil?
        params[context + 'DesiredCapacityType'] = input[:desired_capacity_type].to_s unless input[:desired_capacity_type].nil?
        params[context + 'DefaultInstanceWarmup'] = input[:default_instance_warmup].to_s unless input[:default_instance_warmup].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end
  end
end
