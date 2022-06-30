# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AutoScaling
  module Validators

    class AcceleratorCountRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceleratorCountRequest, context: context)
        Hearth::Validator.validate!(input[:min], ::Integer, context: "#{context}[:min]")
        Hearth::Validator.validate!(input[:max], ::Integer, context: "#{context}[:max]")
      end
    end

    class AcceleratorManufacturers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AcceleratorNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AcceleratorTotalMemoryMiBRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceleratorTotalMemoryMiBRequest, context: context)
        Hearth::Validator.validate!(input[:min], ::Integer, context: "#{context}[:min]")
        Hearth::Validator.validate!(input[:max], ::Integer, context: "#{context}[:max]")
      end
    end

    class AcceleratorTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ActiveInstanceRefreshNotFoundFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActiveInstanceRefreshNotFoundFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Activities
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Activity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Activity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Activity, context: context)
        Hearth::Validator.validate!(input[:activity_id], ::String, context: "#{context}[:activity_id]")
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:cause], ::String, context: "#{context}[:cause]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:progress], ::Integer, context: "#{context}[:progress]")
        Hearth::Validator.validate!(input[:details], ::String, context: "#{context}[:details]")
        Hearth::Validator.validate!(input[:auto_scaling_group_state], ::String, context: "#{context}[:auto_scaling_group_state]")
        Hearth::Validator.validate!(input[:auto_scaling_group_arn], ::String, context: "#{context}[:auto_scaling_group_arn]")
      end
    end

    class ActivityIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AdjustmentType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdjustmentType, context: context)
        Hearth::Validator.validate!(input[:adjustment_type], ::String, context: "#{context}[:adjustment_type]")
      end
    end

    class AdjustmentTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AdjustmentType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Alarm
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Alarm, context: context)
        Hearth::Validator.validate!(input[:alarm_name], ::String, context: "#{context}[:alarm_name]")
        Hearth::Validator.validate!(input[:alarm_arn], ::String, context: "#{context}[:alarm_arn]")
      end
    end

    class Alarms
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Alarm.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AlreadyExistsFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlreadyExistsFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AttachInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachInstancesInput, context: context)
        Validators::InstanceIds.validate!(input[:instance_ids], context: "#{context}[:instance_ids]") unless input[:instance_ids].nil?
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
      end
    end

    class AttachInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachInstancesOutput, context: context)
      end
    end

    class AttachLoadBalancerTargetGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachLoadBalancerTargetGroupsInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Validators::TargetGroupARNs.validate!(input[:target_group_ar_ns], context: "#{context}[:target_group_ar_ns]") unless input[:target_group_ar_ns].nil?
      end
    end

    class AttachLoadBalancerTargetGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachLoadBalancerTargetGroupsOutput, context: context)
      end
    end

    class AttachLoadBalancersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachLoadBalancersInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Validators::LoadBalancerNames.validate!(input[:load_balancer_names], context: "#{context}[:load_balancer_names]") unless input[:load_balancer_names].nil?
      end
    end

    class AttachLoadBalancersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachLoadBalancersOutput, context: context)
      end
    end

    class AutoScalingGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoScalingGroup, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Hearth::Validator.validate!(input[:auto_scaling_group_arn], ::String, context: "#{context}[:auto_scaling_group_arn]")
        Hearth::Validator.validate!(input[:launch_configuration_name], ::String, context: "#{context}[:launch_configuration_name]")
        Validators::LaunchTemplateSpecification.validate!(input[:launch_template], context: "#{context}[:launch_template]") unless input[:launch_template].nil?
        Validators::MixedInstancesPolicy.validate!(input[:mixed_instances_policy], context: "#{context}[:mixed_instances_policy]") unless input[:mixed_instances_policy].nil?
        Hearth::Validator.validate!(input[:min_size], ::Integer, context: "#{context}[:min_size]")
        Hearth::Validator.validate!(input[:max_size], ::Integer, context: "#{context}[:max_size]")
        Hearth::Validator.validate!(input[:desired_capacity], ::Integer, context: "#{context}[:desired_capacity]")
        Hearth::Validator.validate!(input[:predicted_capacity], ::Integer, context: "#{context}[:predicted_capacity]")
        Hearth::Validator.validate!(input[:default_cooldown], ::Integer, context: "#{context}[:default_cooldown]")
        Validators::AvailabilityZones.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Validators::LoadBalancerNames.validate!(input[:load_balancer_names], context: "#{context}[:load_balancer_names]") unless input[:load_balancer_names].nil?
        Validators::TargetGroupARNs.validate!(input[:target_group_ar_ns], context: "#{context}[:target_group_ar_ns]") unless input[:target_group_ar_ns].nil?
        Hearth::Validator.validate!(input[:health_check_type], ::String, context: "#{context}[:health_check_type]")
        Hearth::Validator.validate!(input[:health_check_grace_period], ::Integer, context: "#{context}[:health_check_grace_period]")
        Validators::Instances.validate!(input[:instances], context: "#{context}[:instances]") unless input[:instances].nil?
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Validators::SuspendedProcesses.validate!(input[:suspended_processes], context: "#{context}[:suspended_processes]") unless input[:suspended_processes].nil?
        Hearth::Validator.validate!(input[:placement_group], ::String, context: "#{context}[:placement_group]")
        Hearth::Validator.validate!(input[:vpc_zone_identifier], ::String, context: "#{context}[:vpc_zone_identifier]")
        Validators::EnabledMetrics.validate!(input[:enabled_metrics], context: "#{context}[:enabled_metrics]") unless input[:enabled_metrics].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::TagDescriptionList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::TerminationPolicies.validate!(input[:termination_policies], context: "#{context}[:termination_policies]") unless input[:termination_policies].nil?
        Hearth::Validator.validate!(input[:new_instances_protected_from_scale_in], ::TrueClass, ::FalseClass, context: "#{context}[:new_instances_protected_from_scale_in]")
        Hearth::Validator.validate!(input[:service_linked_role_arn], ::String, context: "#{context}[:service_linked_role_arn]")
        Hearth::Validator.validate!(input[:max_instance_lifetime], ::Integer, context: "#{context}[:max_instance_lifetime]")
        Hearth::Validator.validate!(input[:capacity_rebalance], ::TrueClass, ::FalseClass, context: "#{context}[:capacity_rebalance]")
        Validators::WarmPoolConfiguration.validate!(input[:warm_pool_configuration], context: "#{context}[:warm_pool_configuration]") unless input[:warm_pool_configuration].nil?
        Hearth::Validator.validate!(input[:warm_pool_size], ::Integer, context: "#{context}[:warm_pool_size]")
        Hearth::Validator.validate!(input[:context], ::String, context: "#{context}[:context]")
        Hearth::Validator.validate!(input[:desired_capacity_type], ::String, context: "#{context}[:desired_capacity_type]")
        Hearth::Validator.validate!(input[:default_instance_warmup], ::Integer, context: "#{context}[:default_instance_warmup]")
      end
    end

    class AutoScalingGroupNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AutoScalingGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AutoScalingGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AutoScalingInstanceDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoScalingInstanceDetails, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:lifecycle_state], ::String, context: "#{context}[:lifecycle_state]")
        Hearth::Validator.validate!(input[:health_status], ::String, context: "#{context}[:health_status]")
        Hearth::Validator.validate!(input[:launch_configuration_name], ::String, context: "#{context}[:launch_configuration_name]")
        Validators::LaunchTemplateSpecification.validate!(input[:launch_template], context: "#{context}[:launch_template]") unless input[:launch_template].nil?
        Hearth::Validator.validate!(input[:protected_from_scale_in], ::TrueClass, ::FalseClass, context: "#{context}[:protected_from_scale_in]")
        Hearth::Validator.validate!(input[:weighted_capacity], ::String, context: "#{context}[:weighted_capacity]")
      end
    end

    class AutoScalingInstances
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AutoScalingInstanceDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AutoScalingNotificationTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AvailabilityZones
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BaselineEbsBandwidthMbpsRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BaselineEbsBandwidthMbpsRequest, context: context)
        Hearth::Validator.validate!(input[:min], ::Integer, context: "#{context}[:min]")
        Hearth::Validator.validate!(input[:max], ::Integer, context: "#{context}[:max]")
      end
    end

    class BatchDeleteScheduledActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteScheduledActionInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Validators::ScheduledActionNames.validate!(input[:scheduled_action_names], context: "#{context}[:scheduled_action_names]") unless input[:scheduled_action_names].nil?
      end
    end

    class BatchDeleteScheduledActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteScheduledActionOutput, context: context)
        Validators::FailedScheduledUpdateGroupActionRequests.validate!(input[:failed_scheduled_actions], context: "#{context}[:failed_scheduled_actions]") unless input[:failed_scheduled_actions].nil?
      end
    end

    class BatchPutScheduledUpdateGroupActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchPutScheduledUpdateGroupActionInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Validators::ScheduledUpdateGroupActionRequests.validate!(input[:scheduled_update_group_actions], context: "#{context}[:scheduled_update_group_actions]") unless input[:scheduled_update_group_actions].nil?
      end
    end

    class BatchPutScheduledUpdateGroupActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchPutScheduledUpdateGroupActionOutput, context: context)
        Validators::FailedScheduledUpdateGroupActionRequests.validate!(input[:failed_scheduled_update_group_actions], context: "#{context}[:failed_scheduled_update_group_actions]") unless input[:failed_scheduled_update_group_actions].nil?
      end
    end

    class BlockDeviceMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BlockDeviceMapping, context: context)
        Hearth::Validator.validate!(input[:virtual_name], ::String, context: "#{context}[:virtual_name]")
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
        Validators::Ebs.validate!(input[:ebs], context: "#{context}[:ebs]") unless input[:ebs].nil?
        Hearth::Validator.validate!(input[:no_device], ::TrueClass, ::FalseClass, context: "#{context}[:no_device]")
      end
    end

    class BlockDeviceMappings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BlockDeviceMapping.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CancelInstanceRefreshInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelInstanceRefreshInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
      end
    end

    class CancelInstanceRefreshOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelInstanceRefreshOutput, context: context)
        Hearth::Validator.validate!(input[:instance_refresh_id], ::String, context: "#{context}[:instance_refresh_id]")
      end
    end

    class CapacityForecast
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CapacityForecast, context: context)
        Validators::PredictiveScalingForecastTimestamps.validate!(input[:timestamps], context: "#{context}[:timestamps]") unless input[:timestamps].nil?
        Validators::PredictiveScalingForecastValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class CheckpointPercentages
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Integer, context: "#{context}[#{index}]")
        end
      end
    end

    class ClassicLinkVPCSecurityGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CompleteLifecycleActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CompleteLifecycleActionInput, context: context)
        Hearth::Validator.validate!(input[:lifecycle_hook_name], ::String, context: "#{context}[:lifecycle_hook_name]")
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Hearth::Validator.validate!(input[:lifecycle_action_token], ::String, context: "#{context}[:lifecycle_action_token]")
        Hearth::Validator.validate!(input[:lifecycle_action_result], ::String, context: "#{context}[:lifecycle_action_result]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class CompleteLifecycleActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CompleteLifecycleActionOutput, context: context)
      end
    end

    class CpuManufacturers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CreateAutoScalingGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAutoScalingGroupInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Hearth::Validator.validate!(input[:launch_configuration_name], ::String, context: "#{context}[:launch_configuration_name]")
        Validators::LaunchTemplateSpecification.validate!(input[:launch_template], context: "#{context}[:launch_template]") unless input[:launch_template].nil?
        Validators::MixedInstancesPolicy.validate!(input[:mixed_instances_policy], context: "#{context}[:mixed_instances_policy]") unless input[:mixed_instances_policy].nil?
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:min_size], ::Integer, context: "#{context}[:min_size]")
        Hearth::Validator.validate!(input[:max_size], ::Integer, context: "#{context}[:max_size]")
        Hearth::Validator.validate!(input[:desired_capacity], ::Integer, context: "#{context}[:desired_capacity]")
        Hearth::Validator.validate!(input[:default_cooldown], ::Integer, context: "#{context}[:default_cooldown]")
        Validators::AvailabilityZones.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Validators::LoadBalancerNames.validate!(input[:load_balancer_names], context: "#{context}[:load_balancer_names]") unless input[:load_balancer_names].nil?
        Validators::TargetGroupARNs.validate!(input[:target_group_ar_ns], context: "#{context}[:target_group_ar_ns]") unless input[:target_group_ar_ns].nil?
        Hearth::Validator.validate!(input[:health_check_type], ::String, context: "#{context}[:health_check_type]")
        Hearth::Validator.validate!(input[:health_check_grace_period], ::Integer, context: "#{context}[:health_check_grace_period]")
        Hearth::Validator.validate!(input[:placement_group], ::String, context: "#{context}[:placement_group]")
        Hearth::Validator.validate!(input[:vpc_zone_identifier], ::String, context: "#{context}[:vpc_zone_identifier]")
        Validators::TerminationPolicies.validate!(input[:termination_policies], context: "#{context}[:termination_policies]") unless input[:termination_policies].nil?
        Hearth::Validator.validate!(input[:new_instances_protected_from_scale_in], ::TrueClass, ::FalseClass, context: "#{context}[:new_instances_protected_from_scale_in]")
        Hearth::Validator.validate!(input[:capacity_rebalance], ::TrueClass, ::FalseClass, context: "#{context}[:capacity_rebalance]")
        Validators::LifecycleHookSpecifications.validate!(input[:lifecycle_hook_specification_list], context: "#{context}[:lifecycle_hook_specification_list]") unless input[:lifecycle_hook_specification_list].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:service_linked_role_arn], ::String, context: "#{context}[:service_linked_role_arn]")
        Hearth::Validator.validate!(input[:max_instance_lifetime], ::Integer, context: "#{context}[:max_instance_lifetime]")
        Hearth::Validator.validate!(input[:context], ::String, context: "#{context}[:context]")
        Hearth::Validator.validate!(input[:desired_capacity_type], ::String, context: "#{context}[:desired_capacity_type]")
        Hearth::Validator.validate!(input[:default_instance_warmup], ::Integer, context: "#{context}[:default_instance_warmup]")
      end
    end

    class CreateAutoScalingGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAutoScalingGroupOutput, context: context)
      end
    end

    class CreateLaunchConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLaunchConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:launch_configuration_name], ::String, context: "#{context}[:launch_configuration_name]")
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
        Hearth::Validator.validate!(input[:key_name], ::String, context: "#{context}[:key_name]")
        Validators::SecurityGroups.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        Hearth::Validator.validate!(input[:classic_link_vpc_id], ::String, context: "#{context}[:classic_link_vpc_id]")
        Validators::ClassicLinkVPCSecurityGroups.validate!(input[:classic_link_vpc_security_groups], context: "#{context}[:classic_link_vpc_security_groups]") unless input[:classic_link_vpc_security_groups].nil?
        Hearth::Validator.validate!(input[:user_data], ::String, context: "#{context}[:user_data]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:kernel_id], ::String, context: "#{context}[:kernel_id]")
        Hearth::Validator.validate!(input[:ramdisk_id], ::String, context: "#{context}[:ramdisk_id]")
        Validators::BlockDeviceMappings.validate!(input[:block_device_mappings], context: "#{context}[:block_device_mappings]") unless input[:block_device_mappings].nil?
        Validators::InstanceMonitoring.validate!(input[:instance_monitoring], context: "#{context}[:instance_monitoring]") unless input[:instance_monitoring].nil?
        Hearth::Validator.validate!(input[:spot_price], ::String, context: "#{context}[:spot_price]")
        Hearth::Validator.validate!(input[:iam_instance_profile], ::String, context: "#{context}[:iam_instance_profile]")
        Hearth::Validator.validate!(input[:ebs_optimized], ::TrueClass, ::FalseClass, context: "#{context}[:ebs_optimized]")
        Hearth::Validator.validate!(input[:associate_public_ip_address], ::TrueClass, ::FalseClass, context: "#{context}[:associate_public_ip_address]")
        Hearth::Validator.validate!(input[:placement_tenancy], ::String, context: "#{context}[:placement_tenancy]")
        Validators::InstanceMetadataOptions.validate!(input[:metadata_options], context: "#{context}[:metadata_options]") unless input[:metadata_options].nil?
      end
    end

    class CreateLaunchConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLaunchConfigurationOutput, context: context)
      end
    end

    class CreateOrUpdateTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateOrUpdateTagsInput, context: context)
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateOrUpdateTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateOrUpdateTagsOutput, context: context)
      end
    end

    class CustomizedMetricSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomizedMetricSpecification, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Validators::MetricDimensions.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
        Hearth::Validator.validate!(input[:statistic], ::String, context: "#{context}[:statistic]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
      end
    end

    class DeleteAutoScalingGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAutoScalingGroupInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Hearth::Validator.validate!(input[:force_delete], ::TrueClass, ::FalseClass, context: "#{context}[:force_delete]")
      end
    end

    class DeleteAutoScalingGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAutoScalingGroupOutput, context: context)
      end
    end

    class DeleteLaunchConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLaunchConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:launch_configuration_name], ::String, context: "#{context}[:launch_configuration_name]")
      end
    end

    class DeleteLaunchConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLaunchConfigurationOutput, context: context)
      end
    end

    class DeleteLifecycleHookInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLifecycleHookInput, context: context)
        Hearth::Validator.validate!(input[:lifecycle_hook_name], ::String, context: "#{context}[:lifecycle_hook_name]")
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
      end
    end

    class DeleteLifecycleHookOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLifecycleHookOutput, context: context)
      end
    end

    class DeleteNotificationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNotificationConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
      end
    end

    class DeleteNotificationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNotificationConfigurationOutput, context: context)
      end
    end

    class DeletePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePolicyInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
      end
    end

    class DeletePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePolicyOutput, context: context)
      end
    end

    class DeleteScheduledActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteScheduledActionInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Hearth::Validator.validate!(input[:scheduled_action_name], ::String, context: "#{context}[:scheduled_action_name]")
      end
    end

    class DeleteScheduledActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteScheduledActionOutput, context: context)
      end
    end

    class DeleteTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTagsInput, context: context)
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DeleteTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTagsOutput, context: context)
      end
    end

    class DeleteWarmPoolInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWarmPoolInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Hearth::Validator.validate!(input[:force_delete], ::TrueClass, ::FalseClass, context: "#{context}[:force_delete]")
      end
    end

    class DeleteWarmPoolOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWarmPoolOutput, context: context)
      end
    end

    class DescribeAccountLimitsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountLimitsInput, context: context)
      end
    end

    class DescribeAccountLimitsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountLimitsOutput, context: context)
        Hearth::Validator.validate!(input[:max_number_of_auto_scaling_groups], ::Integer, context: "#{context}[:max_number_of_auto_scaling_groups]")
        Hearth::Validator.validate!(input[:max_number_of_launch_configurations], ::Integer, context: "#{context}[:max_number_of_launch_configurations]")
        Hearth::Validator.validate!(input[:number_of_auto_scaling_groups], ::Integer, context: "#{context}[:number_of_auto_scaling_groups]")
        Hearth::Validator.validate!(input[:number_of_launch_configurations], ::Integer, context: "#{context}[:number_of_launch_configurations]")
      end
    end

    class DescribeAdjustmentTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAdjustmentTypesInput, context: context)
      end
    end

    class DescribeAdjustmentTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAdjustmentTypesOutput, context: context)
        Validators::AdjustmentTypes.validate!(input[:adjustment_types], context: "#{context}[:adjustment_types]") unless input[:adjustment_types].nil?
      end
    end

    class DescribeAutoScalingGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAutoScalingGroupsInput, context: context)
        Validators::AutoScalingGroupNames.validate!(input[:auto_scaling_group_names], context: "#{context}[:auto_scaling_group_names]") unless input[:auto_scaling_group_names].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Validators::Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class DescribeAutoScalingGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAutoScalingGroupsOutput, context: context)
        Validators::AutoScalingGroups.validate!(input[:auto_scaling_groups], context: "#{context}[:auto_scaling_groups]") unless input[:auto_scaling_groups].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeAutoScalingInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAutoScalingInstancesInput, context: context)
        Validators::InstanceIds.validate!(input[:instance_ids], context: "#{context}[:instance_ids]") unless input[:instance_ids].nil?
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeAutoScalingInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAutoScalingInstancesOutput, context: context)
        Validators::AutoScalingInstances.validate!(input[:auto_scaling_instances], context: "#{context}[:auto_scaling_instances]") unless input[:auto_scaling_instances].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeAutoScalingNotificationTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAutoScalingNotificationTypesInput, context: context)
      end
    end

    class DescribeAutoScalingNotificationTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAutoScalingNotificationTypesOutput, context: context)
        Validators::AutoScalingNotificationTypes.validate!(input[:auto_scaling_notification_types], context: "#{context}[:auto_scaling_notification_types]") unless input[:auto_scaling_notification_types].nil?
      end
    end

    class DescribeInstanceRefreshesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstanceRefreshesInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Validators::InstanceRefreshIds.validate!(input[:instance_refresh_ids], context: "#{context}[:instance_refresh_ids]") unless input[:instance_refresh_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
      end
    end

    class DescribeInstanceRefreshesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstanceRefreshesOutput, context: context)
        Validators::InstanceRefreshes.validate!(input[:instance_refreshes], context: "#{context}[:instance_refreshes]") unless input[:instance_refreshes].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeLaunchConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLaunchConfigurationsInput, context: context)
        Validators::LaunchConfigurationNames.validate!(input[:launch_configuration_names], context: "#{context}[:launch_configuration_names]") unless input[:launch_configuration_names].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
      end
    end

    class DescribeLaunchConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLaunchConfigurationsOutput, context: context)
        Validators::LaunchConfigurations.validate!(input[:launch_configurations], context: "#{context}[:launch_configurations]") unless input[:launch_configurations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeLifecycleHookTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLifecycleHookTypesInput, context: context)
      end
    end

    class DescribeLifecycleHookTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLifecycleHookTypesOutput, context: context)
        Validators::AutoScalingNotificationTypes.validate!(input[:lifecycle_hook_types], context: "#{context}[:lifecycle_hook_types]") unless input[:lifecycle_hook_types].nil?
      end
    end

    class DescribeLifecycleHooksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLifecycleHooksInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Validators::LifecycleHookNames.validate!(input[:lifecycle_hook_names], context: "#{context}[:lifecycle_hook_names]") unless input[:lifecycle_hook_names].nil?
      end
    end

    class DescribeLifecycleHooksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLifecycleHooksOutput, context: context)
        Validators::LifecycleHooks.validate!(input[:lifecycle_hooks], context: "#{context}[:lifecycle_hooks]") unless input[:lifecycle_hooks].nil?
      end
    end

    class DescribeLoadBalancerTargetGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLoadBalancerTargetGroupsInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
      end
    end

    class DescribeLoadBalancerTargetGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLoadBalancerTargetGroupsOutput, context: context)
        Validators::LoadBalancerTargetGroupStates.validate!(input[:load_balancer_target_groups], context: "#{context}[:load_balancer_target_groups]") unless input[:load_balancer_target_groups].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeLoadBalancersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLoadBalancersInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
      end
    end

    class DescribeLoadBalancersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLoadBalancersOutput, context: context)
        Validators::LoadBalancerStates.validate!(input[:load_balancers], context: "#{context}[:load_balancers]") unless input[:load_balancers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeMetricCollectionTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMetricCollectionTypesInput, context: context)
      end
    end

    class DescribeMetricCollectionTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMetricCollectionTypesOutput, context: context)
        Validators::MetricCollectionTypes.validate!(input[:metrics], context: "#{context}[:metrics]") unless input[:metrics].nil?
        Validators::MetricGranularityTypes.validate!(input[:granularities], context: "#{context}[:granularities]") unless input[:granularities].nil?
      end
    end

    class DescribeNotificationConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNotificationConfigurationsInput, context: context)
        Validators::AutoScalingGroupNames.validate!(input[:auto_scaling_group_names], context: "#{context}[:auto_scaling_group_names]") unless input[:auto_scaling_group_names].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
      end
    end

    class DescribeNotificationConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNotificationConfigurationsOutput, context: context)
        Validators::NotificationConfigurations.validate!(input[:notification_configurations], context: "#{context}[:notification_configurations]") unless input[:notification_configurations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribePoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePoliciesInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Validators::PolicyNames.validate!(input[:policy_names], context: "#{context}[:policy_names]") unless input[:policy_names].nil?
        Validators::PolicyTypes.validate!(input[:policy_types], context: "#{context}[:policy_types]") unless input[:policy_types].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
      end
    end

    class DescribePoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePoliciesOutput, context: context)
        Validators::ScalingPolicies.validate!(input[:scaling_policies], context: "#{context}[:scaling_policies]") unless input[:scaling_policies].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeScalingActivitiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScalingActivitiesInput, context: context)
        Validators::ActivityIds.validate!(input[:activity_ids], context: "#{context}[:activity_ids]") unless input[:activity_ids].nil?
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Hearth::Validator.validate!(input[:include_deleted_groups], ::TrueClass, ::FalseClass, context: "#{context}[:include_deleted_groups]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeScalingActivitiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScalingActivitiesOutput, context: context)
        Validators::Activities.validate!(input[:activities], context: "#{context}[:activities]") unless input[:activities].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeScalingProcessTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScalingProcessTypesInput, context: context)
      end
    end

    class DescribeScalingProcessTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScalingProcessTypesOutput, context: context)
        Validators::Processes.validate!(input[:processes], context: "#{context}[:processes]") unless input[:processes].nil?
      end
    end

    class DescribeScheduledActionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScheduledActionsInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Validators::ScheduledActionNames.validate!(input[:scheduled_action_names], context: "#{context}[:scheduled_action_names]") unless input[:scheduled_action_names].nil?
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
      end
    end

    class DescribeScheduledActionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScheduledActionsOutput, context: context)
        Validators::ScheduledUpdateGroupActions.validate!(input[:scheduled_update_group_actions], context: "#{context}[:scheduled_update_group_actions]") unless input[:scheduled_update_group_actions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTagsInput, context: context)
        Validators::Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
      end
    end

    class DescribeTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTagsOutput, context: context)
        Validators::TagDescriptionList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeTerminationPolicyTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTerminationPolicyTypesInput, context: context)
      end
    end

    class DescribeTerminationPolicyTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTerminationPolicyTypesOutput, context: context)
        Validators::TerminationPolicies.validate!(input[:termination_policy_types], context: "#{context}[:termination_policy_types]") unless input[:termination_policy_types].nil?
      end
    end

    class DescribeWarmPoolInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWarmPoolInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Hearth::Validator.validate!(input[:max_records], ::Integer, context: "#{context}[:max_records]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeWarmPoolOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWarmPoolOutput, context: context)
        Validators::WarmPoolConfiguration.validate!(input[:warm_pool_configuration], context: "#{context}[:warm_pool_configuration]") unless input[:warm_pool_configuration].nil?
        Validators::Instances.validate!(input[:instances], context: "#{context}[:instances]") unless input[:instances].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DesiredConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DesiredConfiguration, context: context)
        Validators::LaunchTemplateSpecification.validate!(input[:launch_template], context: "#{context}[:launch_template]") unless input[:launch_template].nil?
        Validators::MixedInstancesPolicy.validate!(input[:mixed_instances_policy], context: "#{context}[:mixed_instances_policy]") unless input[:mixed_instances_policy].nil?
      end
    end

    class DetachInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachInstancesInput, context: context)
        Validators::InstanceIds.validate!(input[:instance_ids], context: "#{context}[:instance_ids]") unless input[:instance_ids].nil?
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Hearth::Validator.validate!(input[:should_decrement_desired_capacity], ::TrueClass, ::FalseClass, context: "#{context}[:should_decrement_desired_capacity]")
      end
    end

    class DetachInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachInstancesOutput, context: context)
        Validators::Activities.validate!(input[:activities], context: "#{context}[:activities]") unless input[:activities].nil?
      end
    end

    class DetachLoadBalancerTargetGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachLoadBalancerTargetGroupsInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Validators::TargetGroupARNs.validate!(input[:target_group_ar_ns], context: "#{context}[:target_group_ar_ns]") unless input[:target_group_ar_ns].nil?
      end
    end

    class DetachLoadBalancerTargetGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachLoadBalancerTargetGroupsOutput, context: context)
      end
    end

    class DetachLoadBalancersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachLoadBalancersInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Validators::LoadBalancerNames.validate!(input[:load_balancer_names], context: "#{context}[:load_balancer_names]") unless input[:load_balancer_names].nil?
      end
    end

    class DetachLoadBalancersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetachLoadBalancersOutput, context: context)
      end
    end

    class DisableMetricsCollectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableMetricsCollectionInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Validators::Metrics.validate!(input[:metrics], context: "#{context}[:metrics]") unless input[:metrics].nil?
      end
    end

    class DisableMetricsCollectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableMetricsCollectionOutput, context: context)
      end
    end

    class Ebs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Ebs, context: context)
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:volume_size], ::Integer, context: "#{context}[:volume_size]")
        Hearth::Validator.validate!(input[:volume_type], ::String, context: "#{context}[:volume_type]")
        Hearth::Validator.validate!(input[:delete_on_termination], ::TrueClass, ::FalseClass, context: "#{context}[:delete_on_termination]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
        Hearth::Validator.validate!(input[:throughput], ::Integer, context: "#{context}[:throughput]")
      end
    end

    class EnableMetricsCollectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableMetricsCollectionInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Validators::Metrics.validate!(input[:metrics], context: "#{context}[:metrics]") unless input[:metrics].nil?
        Hearth::Validator.validate!(input[:granularity], ::String, context: "#{context}[:granularity]")
      end
    end

    class EnableMetricsCollectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableMetricsCollectionOutput, context: context)
      end
    end

    class EnabledMetric
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnabledMetric, context: context)
        Hearth::Validator.validate!(input[:metric], ::String, context: "#{context}[:metric]")
        Hearth::Validator.validate!(input[:granularity], ::String, context: "#{context}[:granularity]")
      end
    end

    class EnabledMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EnabledMetric.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EnterStandbyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnterStandbyInput, context: context)
        Validators::InstanceIds.validate!(input[:instance_ids], context: "#{context}[:instance_ids]") unless input[:instance_ids].nil?
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Hearth::Validator.validate!(input[:should_decrement_desired_capacity], ::TrueClass, ::FalseClass, context: "#{context}[:should_decrement_desired_capacity]")
      end
    end

    class EnterStandbyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnterStandbyOutput, context: context)
        Validators::Activities.validate!(input[:activities], context: "#{context}[:activities]") unless input[:activities].nil?
      end
    end

    class ExcludedInstanceTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ExecutePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecutePolicyInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:honor_cooldown], ::TrueClass, ::FalseClass, context: "#{context}[:honor_cooldown]")
        Hearth::Validator.validate!(input[:metric_value], ::Float, context: "#{context}[:metric_value]")
        Hearth::Validator.validate!(input[:breach_threshold], ::Float, context: "#{context}[:breach_threshold]")
      end
    end

    class ExecutePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecutePolicyOutput, context: context)
      end
    end

    class ExitStandbyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExitStandbyInput, context: context)
        Validators::InstanceIds.validate!(input[:instance_ids], context: "#{context}[:instance_ids]") unless input[:instance_ids].nil?
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
      end
    end

    class ExitStandbyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExitStandbyOutput, context: context)
        Validators::Activities.validate!(input[:activities], context: "#{context}[:activities]") unless input[:activities].nil?
      end
    end

    class FailedScheduledUpdateGroupActionRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailedScheduledUpdateGroupActionRequest, context: context)
        Hearth::Validator.validate!(input[:scheduled_action_name], ::String, context: "#{context}[:scheduled_action_name]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class FailedScheduledUpdateGroupActionRequests
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FailedScheduledUpdateGroupActionRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Filter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Filter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::Values.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class Filters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Filter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetPredictiveScalingForecastInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPredictiveScalingForecastInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
      end
    end

    class GetPredictiveScalingForecastOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPredictiveScalingForecastOutput, context: context)
        Validators::LoadForecasts.validate!(input[:load_forecast], context: "#{context}[:load_forecast]") unless input[:load_forecast].nil?
        Validators::CapacityForecast.validate!(input[:capacity_forecast], context: "#{context}[:capacity_forecast]") unless input[:capacity_forecast].nil?
        Hearth::Validator.validate!(input[:update_time], ::Time, context: "#{context}[:update_time]")
      end
    end

    class Instance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Instance, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:lifecycle_state], ::String, context: "#{context}[:lifecycle_state]")
        Hearth::Validator.validate!(input[:health_status], ::String, context: "#{context}[:health_status]")
        Hearth::Validator.validate!(input[:launch_configuration_name], ::String, context: "#{context}[:launch_configuration_name]")
        Validators::LaunchTemplateSpecification.validate!(input[:launch_template], context: "#{context}[:launch_template]") unless input[:launch_template].nil?
        Hearth::Validator.validate!(input[:protected_from_scale_in], ::TrueClass, ::FalseClass, context: "#{context}[:protected_from_scale_in]")
        Hearth::Validator.validate!(input[:weighted_capacity], ::String, context: "#{context}[:weighted_capacity]")
      end
    end

    class InstanceGenerations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InstanceIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InstanceMetadataOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceMetadataOptions, context: context)
        Hearth::Validator.validate!(input[:http_tokens], ::String, context: "#{context}[:http_tokens]")
        Hearth::Validator.validate!(input[:http_put_response_hop_limit], ::Integer, context: "#{context}[:http_put_response_hop_limit]")
        Hearth::Validator.validate!(input[:http_endpoint], ::String, context: "#{context}[:http_endpoint]")
      end
    end

    class InstanceMonitoring
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceMonitoring, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class InstanceRefresh
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceRefresh, context: context)
        Hearth::Validator.validate!(input[:instance_refresh_id], ::String, context: "#{context}[:instance_refresh_id]")
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:percentage_complete], ::Integer, context: "#{context}[:percentage_complete]")
        Hearth::Validator.validate!(input[:instances_to_update], ::Integer, context: "#{context}[:instances_to_update]")
        Validators::InstanceRefreshProgressDetails.validate!(input[:progress_details], context: "#{context}[:progress_details]") unless input[:progress_details].nil?
        Validators::RefreshPreferences.validate!(input[:preferences], context: "#{context}[:preferences]") unless input[:preferences].nil?
        Validators::DesiredConfiguration.validate!(input[:desired_configuration], context: "#{context}[:desired_configuration]") unless input[:desired_configuration].nil?
      end
    end

    class InstanceRefreshIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InstanceRefreshInProgressFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceRefreshInProgressFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InstanceRefreshLivePoolProgress
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceRefreshLivePoolProgress, context: context)
        Hearth::Validator.validate!(input[:percentage_complete], ::Integer, context: "#{context}[:percentage_complete]")
        Hearth::Validator.validate!(input[:instances_to_update], ::Integer, context: "#{context}[:instances_to_update]")
      end
    end

    class InstanceRefreshProgressDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceRefreshProgressDetails, context: context)
        Validators::InstanceRefreshLivePoolProgress.validate!(input[:live_pool_progress], context: "#{context}[:live_pool_progress]") unless input[:live_pool_progress].nil?
        Validators::InstanceRefreshWarmPoolProgress.validate!(input[:warm_pool_progress], context: "#{context}[:warm_pool_progress]") unless input[:warm_pool_progress].nil?
      end
    end

    class InstanceRefreshWarmPoolProgress
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceRefreshWarmPoolProgress, context: context)
        Hearth::Validator.validate!(input[:percentage_complete], ::Integer, context: "#{context}[:percentage_complete]")
        Hearth::Validator.validate!(input[:instances_to_update], ::Integer, context: "#{context}[:instances_to_update]")
      end
    end

    class InstanceRefreshes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InstanceRefresh.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstanceRequirements
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceRequirements, context: context)
        Validators::VCpuCountRequest.validate!(input[:v_cpu_count], context: "#{context}[:v_cpu_count]") unless input[:v_cpu_count].nil?
        Validators::MemoryMiBRequest.validate!(input[:memory_mi_b], context: "#{context}[:memory_mi_b]") unless input[:memory_mi_b].nil?
        Validators::CpuManufacturers.validate!(input[:cpu_manufacturers], context: "#{context}[:cpu_manufacturers]") unless input[:cpu_manufacturers].nil?
        Validators::MemoryGiBPerVCpuRequest.validate!(input[:memory_gi_b_per_v_cpu], context: "#{context}[:memory_gi_b_per_v_cpu]") unless input[:memory_gi_b_per_v_cpu].nil?
        Validators::ExcludedInstanceTypes.validate!(input[:excluded_instance_types], context: "#{context}[:excluded_instance_types]") unless input[:excluded_instance_types].nil?
        Validators::InstanceGenerations.validate!(input[:instance_generations], context: "#{context}[:instance_generations]") unless input[:instance_generations].nil?
        Hearth::Validator.validate!(input[:spot_max_price_percentage_over_lowest_price], ::Integer, context: "#{context}[:spot_max_price_percentage_over_lowest_price]")
        Hearth::Validator.validate!(input[:on_demand_max_price_percentage_over_lowest_price], ::Integer, context: "#{context}[:on_demand_max_price_percentage_over_lowest_price]")
        Hearth::Validator.validate!(input[:bare_metal], ::String, context: "#{context}[:bare_metal]")
        Hearth::Validator.validate!(input[:burstable_performance], ::String, context: "#{context}[:burstable_performance]")
        Hearth::Validator.validate!(input[:require_hibernate_support], ::TrueClass, ::FalseClass, context: "#{context}[:require_hibernate_support]")
        Validators::NetworkInterfaceCountRequest.validate!(input[:network_interface_count], context: "#{context}[:network_interface_count]") unless input[:network_interface_count].nil?
        Hearth::Validator.validate!(input[:local_storage], ::String, context: "#{context}[:local_storage]")
        Validators::LocalStorageTypes.validate!(input[:local_storage_types], context: "#{context}[:local_storage_types]") unless input[:local_storage_types].nil?
        Validators::TotalLocalStorageGBRequest.validate!(input[:total_local_storage_gb], context: "#{context}[:total_local_storage_gb]") unless input[:total_local_storage_gb].nil?
        Validators::BaselineEbsBandwidthMbpsRequest.validate!(input[:baseline_ebs_bandwidth_mbps], context: "#{context}[:baseline_ebs_bandwidth_mbps]") unless input[:baseline_ebs_bandwidth_mbps].nil?
        Validators::AcceleratorTypes.validate!(input[:accelerator_types], context: "#{context}[:accelerator_types]") unless input[:accelerator_types].nil?
        Validators::AcceleratorCountRequest.validate!(input[:accelerator_count], context: "#{context}[:accelerator_count]") unless input[:accelerator_count].nil?
        Validators::AcceleratorManufacturers.validate!(input[:accelerator_manufacturers], context: "#{context}[:accelerator_manufacturers]") unless input[:accelerator_manufacturers].nil?
        Validators::AcceleratorNames.validate!(input[:accelerator_names], context: "#{context}[:accelerator_names]") unless input[:accelerator_names].nil?
        Validators::AcceleratorTotalMemoryMiBRequest.validate!(input[:accelerator_total_memory_mi_b], context: "#{context}[:accelerator_total_memory_mi_b]") unless input[:accelerator_total_memory_mi_b].nil?
      end
    end

    class InstanceReusePolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceReusePolicy, context: context)
        Hearth::Validator.validate!(input[:reuse_on_scale_in], ::TrueClass, ::FalseClass, context: "#{context}[:reuse_on_scale_in]")
      end
    end

    class Instances
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Instance.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstancesDistribution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstancesDistribution, context: context)
        Hearth::Validator.validate!(input[:on_demand_allocation_strategy], ::String, context: "#{context}[:on_demand_allocation_strategy]")
        Hearth::Validator.validate!(input[:on_demand_base_capacity], ::Integer, context: "#{context}[:on_demand_base_capacity]")
        Hearth::Validator.validate!(input[:on_demand_percentage_above_base_capacity], ::Integer, context: "#{context}[:on_demand_percentage_above_base_capacity]")
        Hearth::Validator.validate!(input[:spot_allocation_strategy], ::String, context: "#{context}[:spot_allocation_strategy]")
        Hearth::Validator.validate!(input[:spot_instance_pools], ::Integer, context: "#{context}[:spot_instance_pools]")
        Hearth::Validator.validate!(input[:spot_max_price], ::String, context: "#{context}[:spot_max_price]")
      end
    end

    class InvalidNextToken
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidNextToken, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LaunchConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchConfiguration, context: context)
        Hearth::Validator.validate!(input[:launch_configuration_name], ::String, context: "#{context}[:launch_configuration_name]")
        Hearth::Validator.validate!(input[:launch_configuration_arn], ::String, context: "#{context}[:launch_configuration_arn]")
        Hearth::Validator.validate!(input[:image_id], ::String, context: "#{context}[:image_id]")
        Hearth::Validator.validate!(input[:key_name], ::String, context: "#{context}[:key_name]")
        Validators::SecurityGroups.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        Hearth::Validator.validate!(input[:classic_link_vpc_id], ::String, context: "#{context}[:classic_link_vpc_id]")
        Validators::ClassicLinkVPCSecurityGroups.validate!(input[:classic_link_vpc_security_groups], context: "#{context}[:classic_link_vpc_security_groups]") unless input[:classic_link_vpc_security_groups].nil?
        Hearth::Validator.validate!(input[:user_data], ::String, context: "#{context}[:user_data]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:kernel_id], ::String, context: "#{context}[:kernel_id]")
        Hearth::Validator.validate!(input[:ramdisk_id], ::String, context: "#{context}[:ramdisk_id]")
        Validators::BlockDeviceMappings.validate!(input[:block_device_mappings], context: "#{context}[:block_device_mappings]") unless input[:block_device_mappings].nil?
        Validators::InstanceMonitoring.validate!(input[:instance_monitoring], context: "#{context}[:instance_monitoring]") unless input[:instance_monitoring].nil?
        Hearth::Validator.validate!(input[:spot_price], ::String, context: "#{context}[:spot_price]")
        Hearth::Validator.validate!(input[:iam_instance_profile], ::String, context: "#{context}[:iam_instance_profile]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:ebs_optimized], ::TrueClass, ::FalseClass, context: "#{context}[:ebs_optimized]")
        Hearth::Validator.validate!(input[:associate_public_ip_address], ::TrueClass, ::FalseClass, context: "#{context}[:associate_public_ip_address]")
        Hearth::Validator.validate!(input[:placement_tenancy], ::String, context: "#{context}[:placement_tenancy]")
        Validators::InstanceMetadataOptions.validate!(input[:metadata_options], context: "#{context}[:metadata_options]") unless input[:metadata_options].nil?
      end
    end

    class LaunchConfigurationNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LaunchConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LaunchConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LaunchTemplate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchTemplate, context: context)
        Validators::LaunchTemplateSpecification.validate!(input[:launch_template_specification], context: "#{context}[:launch_template_specification]") unless input[:launch_template_specification].nil?
        Validators::Overrides.validate!(input[:overrides], context: "#{context}[:overrides]") unless input[:overrides].nil?
      end
    end

    class LaunchTemplateOverrides
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchTemplateOverrides, context: context)
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:weighted_capacity], ::String, context: "#{context}[:weighted_capacity]")
        Validators::LaunchTemplateSpecification.validate!(input[:launch_template_specification], context: "#{context}[:launch_template_specification]") unless input[:launch_template_specification].nil?
        Validators::InstanceRequirements.validate!(input[:instance_requirements], context: "#{context}[:instance_requirements]") unless input[:instance_requirements].nil?
      end
    end

    class LaunchTemplateSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchTemplateSpecification, context: context)
        Hearth::Validator.validate!(input[:launch_template_id], ::String, context: "#{context}[:launch_template_id]")
        Hearth::Validator.validate!(input[:launch_template_name], ::String, context: "#{context}[:launch_template_name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class LifecycleHook
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifecycleHook, context: context)
        Hearth::Validator.validate!(input[:lifecycle_hook_name], ::String, context: "#{context}[:lifecycle_hook_name]")
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Hearth::Validator.validate!(input[:lifecycle_transition], ::String, context: "#{context}[:lifecycle_transition]")
        Hearth::Validator.validate!(input[:notification_target_arn], ::String, context: "#{context}[:notification_target_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:notification_metadata], ::String, context: "#{context}[:notification_metadata]")
        Hearth::Validator.validate!(input[:heartbeat_timeout], ::Integer, context: "#{context}[:heartbeat_timeout]")
        Hearth::Validator.validate!(input[:global_timeout], ::Integer, context: "#{context}[:global_timeout]")
        Hearth::Validator.validate!(input[:default_result], ::String, context: "#{context}[:default_result]")
      end
    end

    class LifecycleHookNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LifecycleHookSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifecycleHookSpecification, context: context)
        Hearth::Validator.validate!(input[:lifecycle_hook_name], ::String, context: "#{context}[:lifecycle_hook_name]")
        Hearth::Validator.validate!(input[:lifecycle_transition], ::String, context: "#{context}[:lifecycle_transition]")
        Hearth::Validator.validate!(input[:notification_metadata], ::String, context: "#{context}[:notification_metadata]")
        Hearth::Validator.validate!(input[:heartbeat_timeout], ::Integer, context: "#{context}[:heartbeat_timeout]")
        Hearth::Validator.validate!(input[:default_result], ::String, context: "#{context}[:default_result]")
        Hearth::Validator.validate!(input[:notification_target_arn], ::String, context: "#{context}[:notification_target_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class LifecycleHookSpecifications
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LifecycleHookSpecification.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LifecycleHooks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LifecycleHook.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LimitExceededFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LoadBalancerNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LoadBalancerState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoadBalancerState, context: context)
        Hearth::Validator.validate!(input[:load_balancer_name], ::String, context: "#{context}[:load_balancer_name]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class LoadBalancerStates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LoadBalancerState.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LoadBalancerTargetGroupState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoadBalancerTargetGroupState, context: context)
        Hearth::Validator.validate!(input[:load_balancer_target_group_arn], ::String, context: "#{context}[:load_balancer_target_group_arn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class LoadBalancerTargetGroupStates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LoadBalancerTargetGroupState.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LoadForecast
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoadForecast, context: context)
        Validators::PredictiveScalingForecastTimestamps.validate!(input[:timestamps], context: "#{context}[:timestamps]") unless input[:timestamps].nil?
        Validators::PredictiveScalingForecastValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Validators::PredictiveScalingMetricSpecification.validate!(input[:metric_specification], context: "#{context}[:metric_specification]") unless input[:metric_specification].nil?
      end
    end

    class LoadForecasts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LoadForecast.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LocalStorageTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MemoryGiBPerVCpuRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MemoryGiBPerVCpuRequest, context: context)
        Hearth::Validator.validate!(input[:min], ::Float, context: "#{context}[:min]")
        Hearth::Validator.validate!(input[:max], ::Float, context: "#{context}[:max]")
      end
    end

    class MemoryMiBRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MemoryMiBRequest, context: context)
        Hearth::Validator.validate!(input[:min], ::Integer, context: "#{context}[:min]")
        Hearth::Validator.validate!(input[:max], ::Integer, context: "#{context}[:max]")
      end
    end

    class Metric
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Metric, context: context)
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Validators::MetricDimensions.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
      end
    end

    class MetricCollectionType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricCollectionType, context: context)
        Hearth::Validator.validate!(input[:metric], ::String, context: "#{context}[:metric]")
      end
    end

    class MetricCollectionTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MetricCollectionType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricDataQueries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MetricDataQuery.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricDataQuery
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricDataQuery, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:expression], ::String, context: "#{context}[:expression]")
        Validators::MetricStat.validate!(input[:metric_stat], context: "#{context}[:metric_stat]") unless input[:metric_stat].nil?
        Hearth::Validator.validate!(input[:label], ::String, context: "#{context}[:label]")
        Hearth::Validator.validate!(input[:return_data], ::TrueClass, ::FalseClass, context: "#{context}[:return_data]")
      end
    end

    class MetricDimension
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricDimension, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class MetricDimensions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MetricDimension.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricGranularityType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricGranularityType, context: context)
        Hearth::Validator.validate!(input[:granularity], ::String, context: "#{context}[:granularity]")
      end
    end

    class MetricGranularityTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MetricGranularityType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricStat
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricStat, context: context)
        Validators::Metric.validate!(input[:metric], context: "#{context}[:metric]") unless input[:metric].nil?
        Hearth::Validator.validate!(input[:stat], ::String, context: "#{context}[:stat]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
      end
    end

    class Metrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MixedInstancesPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MixedInstancesPolicy, context: context)
        Validators::LaunchTemplate.validate!(input[:launch_template], context: "#{context}[:launch_template]") unless input[:launch_template].nil?
        Validators::InstancesDistribution.validate!(input[:instances_distribution], context: "#{context}[:instances_distribution]") unless input[:instances_distribution].nil?
      end
    end

    class NetworkInterfaceCountRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkInterfaceCountRequest, context: context)
        Hearth::Validator.validate!(input[:min], ::Integer, context: "#{context}[:min]")
        Hearth::Validator.validate!(input[:max], ::Integer, context: "#{context}[:max]")
      end
    end

    class NotificationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotificationConfiguration, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
        Hearth::Validator.validate!(input[:notification_type], ::String, context: "#{context}[:notification_type]")
      end
    end

    class NotificationConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::NotificationConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Overrides
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LaunchTemplateOverrides.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PolicyNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PolicyTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PredefinedMetricSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PredefinedMetricSpecification, context: context)
        Hearth::Validator.validate!(input[:predefined_metric_type], ::String, context: "#{context}[:predefined_metric_type]")
        Hearth::Validator.validate!(input[:resource_label], ::String, context: "#{context}[:resource_label]")
      end
    end

    class PredictiveScalingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PredictiveScalingConfiguration, context: context)
        Validators::PredictiveScalingMetricSpecifications.validate!(input[:metric_specifications], context: "#{context}[:metric_specifications]") unless input[:metric_specifications].nil?
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
        Hearth::Validator.validate!(input[:scheduling_buffer_time], ::Integer, context: "#{context}[:scheduling_buffer_time]")
        Hearth::Validator.validate!(input[:max_capacity_breach_behavior], ::String, context: "#{context}[:max_capacity_breach_behavior]")
        Hearth::Validator.validate!(input[:max_capacity_buffer], ::Integer, context: "#{context}[:max_capacity_buffer]")
      end
    end

    class PredictiveScalingCustomizedCapacityMetric
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PredictiveScalingCustomizedCapacityMetric, context: context)
        Validators::MetricDataQueries.validate!(input[:metric_data_queries], context: "#{context}[:metric_data_queries]") unless input[:metric_data_queries].nil?
      end
    end

    class PredictiveScalingCustomizedLoadMetric
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PredictiveScalingCustomizedLoadMetric, context: context)
        Validators::MetricDataQueries.validate!(input[:metric_data_queries], context: "#{context}[:metric_data_queries]") unless input[:metric_data_queries].nil?
      end
    end

    class PredictiveScalingCustomizedScalingMetric
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PredictiveScalingCustomizedScalingMetric, context: context)
        Validators::MetricDataQueries.validate!(input[:metric_data_queries], context: "#{context}[:metric_data_queries]") unless input[:metric_data_queries].nil?
      end
    end

    class PredictiveScalingForecastTimestamps
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Time, context: "#{context}[#{index}]")
        end
      end
    end

    class PredictiveScalingForecastValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Float, context: "#{context}[#{index}]")
        end
      end
    end

    class PredictiveScalingMetricSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PredictiveScalingMetricSpecification, context: context)
        Hearth::Validator.validate!(input[:target_value], ::Float, context: "#{context}[:target_value]")
        Validators::PredictiveScalingPredefinedMetricPair.validate!(input[:predefined_metric_pair_specification], context: "#{context}[:predefined_metric_pair_specification]") unless input[:predefined_metric_pair_specification].nil?
        Validators::PredictiveScalingPredefinedScalingMetric.validate!(input[:predefined_scaling_metric_specification], context: "#{context}[:predefined_scaling_metric_specification]") unless input[:predefined_scaling_metric_specification].nil?
        Validators::PredictiveScalingPredefinedLoadMetric.validate!(input[:predefined_load_metric_specification], context: "#{context}[:predefined_load_metric_specification]") unless input[:predefined_load_metric_specification].nil?
        Validators::PredictiveScalingCustomizedScalingMetric.validate!(input[:customized_scaling_metric_specification], context: "#{context}[:customized_scaling_metric_specification]") unless input[:customized_scaling_metric_specification].nil?
        Validators::PredictiveScalingCustomizedLoadMetric.validate!(input[:customized_load_metric_specification], context: "#{context}[:customized_load_metric_specification]") unless input[:customized_load_metric_specification].nil?
        Validators::PredictiveScalingCustomizedCapacityMetric.validate!(input[:customized_capacity_metric_specification], context: "#{context}[:customized_capacity_metric_specification]") unless input[:customized_capacity_metric_specification].nil?
      end
    end

    class PredictiveScalingMetricSpecifications
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PredictiveScalingMetricSpecification.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PredictiveScalingPredefinedLoadMetric
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PredictiveScalingPredefinedLoadMetric, context: context)
        Hearth::Validator.validate!(input[:predefined_metric_type], ::String, context: "#{context}[:predefined_metric_type]")
        Hearth::Validator.validate!(input[:resource_label], ::String, context: "#{context}[:resource_label]")
      end
    end

    class PredictiveScalingPredefinedMetricPair
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PredictiveScalingPredefinedMetricPair, context: context)
        Hearth::Validator.validate!(input[:predefined_metric_type], ::String, context: "#{context}[:predefined_metric_type]")
        Hearth::Validator.validate!(input[:resource_label], ::String, context: "#{context}[:resource_label]")
      end
    end

    class PredictiveScalingPredefinedScalingMetric
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PredictiveScalingPredefinedScalingMetric, context: context)
        Hearth::Validator.validate!(input[:predefined_metric_type], ::String, context: "#{context}[:predefined_metric_type]")
        Hearth::Validator.validate!(input[:resource_label], ::String, context: "#{context}[:resource_label]")
      end
    end

    class ProcessNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProcessType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProcessType, context: context)
        Hearth::Validator.validate!(input[:process_name], ::String, context: "#{context}[:process_name]")
      end
    end

    class Processes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ProcessType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutLifecycleHookInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutLifecycleHookInput, context: context)
        Hearth::Validator.validate!(input[:lifecycle_hook_name], ::String, context: "#{context}[:lifecycle_hook_name]")
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Hearth::Validator.validate!(input[:lifecycle_transition], ::String, context: "#{context}[:lifecycle_transition]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:notification_target_arn], ::String, context: "#{context}[:notification_target_arn]")
        Hearth::Validator.validate!(input[:notification_metadata], ::String, context: "#{context}[:notification_metadata]")
        Hearth::Validator.validate!(input[:heartbeat_timeout], ::Integer, context: "#{context}[:heartbeat_timeout]")
        Hearth::Validator.validate!(input[:default_result], ::String, context: "#{context}[:default_result]")
      end
    end

    class PutLifecycleHookOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutLifecycleHookOutput, context: context)
      end
    end

    class PutNotificationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutNotificationConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
        Validators::AutoScalingNotificationTypes.validate!(input[:notification_types], context: "#{context}[:notification_types]") unless input[:notification_types].nil?
      end
    end

    class PutNotificationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutNotificationConfigurationOutput, context: context)
      end
    end

    class PutScalingPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutScalingPolicyInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy_type], ::String, context: "#{context}[:policy_type]")
        Hearth::Validator.validate!(input[:adjustment_type], ::String, context: "#{context}[:adjustment_type]")
        Hearth::Validator.validate!(input[:min_adjustment_step], ::Integer, context: "#{context}[:min_adjustment_step]")
        Hearth::Validator.validate!(input[:min_adjustment_magnitude], ::Integer, context: "#{context}[:min_adjustment_magnitude]")
        Hearth::Validator.validate!(input[:scaling_adjustment], ::Integer, context: "#{context}[:scaling_adjustment]")
        Hearth::Validator.validate!(input[:cooldown], ::Integer, context: "#{context}[:cooldown]")
        Hearth::Validator.validate!(input[:metric_aggregation_type], ::String, context: "#{context}[:metric_aggregation_type]")
        Validators::StepAdjustments.validate!(input[:step_adjustments], context: "#{context}[:step_adjustments]") unless input[:step_adjustments].nil?
        Hearth::Validator.validate!(input[:estimated_instance_warmup], ::Integer, context: "#{context}[:estimated_instance_warmup]")
        Validators::TargetTrackingConfiguration.validate!(input[:target_tracking_configuration], context: "#{context}[:target_tracking_configuration]") unless input[:target_tracking_configuration].nil?
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Validators::PredictiveScalingConfiguration.validate!(input[:predictive_scaling_configuration], context: "#{context}[:predictive_scaling_configuration]") unless input[:predictive_scaling_configuration].nil?
      end
    end

    class PutScalingPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutScalingPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
        Validators::Alarms.validate!(input[:alarms], context: "#{context}[:alarms]") unless input[:alarms].nil?
      end
    end

    class PutScheduledUpdateGroupActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutScheduledUpdateGroupActionInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Hearth::Validator.validate!(input[:scheduled_action_name], ::String, context: "#{context}[:scheduled_action_name]")
        Hearth::Validator.validate!(input[:time], ::Time, context: "#{context}[:time]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:recurrence], ::String, context: "#{context}[:recurrence]")
        Hearth::Validator.validate!(input[:min_size], ::Integer, context: "#{context}[:min_size]")
        Hearth::Validator.validate!(input[:max_size], ::Integer, context: "#{context}[:max_size]")
        Hearth::Validator.validate!(input[:desired_capacity], ::Integer, context: "#{context}[:desired_capacity]")
        Hearth::Validator.validate!(input[:time_zone], ::String, context: "#{context}[:time_zone]")
      end
    end

    class PutScheduledUpdateGroupActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutScheduledUpdateGroupActionOutput, context: context)
      end
    end

    class PutWarmPoolInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutWarmPoolInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Hearth::Validator.validate!(input[:max_group_prepared_capacity], ::Integer, context: "#{context}[:max_group_prepared_capacity]")
        Hearth::Validator.validate!(input[:min_size], ::Integer, context: "#{context}[:min_size]")
        Hearth::Validator.validate!(input[:pool_state], ::String, context: "#{context}[:pool_state]")
        Validators::InstanceReusePolicy.validate!(input[:instance_reuse_policy], context: "#{context}[:instance_reuse_policy]") unless input[:instance_reuse_policy].nil?
      end
    end

    class PutWarmPoolOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutWarmPoolOutput, context: context)
      end
    end

    class RecordLifecycleActionHeartbeatInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecordLifecycleActionHeartbeatInput, context: context)
        Hearth::Validator.validate!(input[:lifecycle_hook_name], ::String, context: "#{context}[:lifecycle_hook_name]")
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Hearth::Validator.validate!(input[:lifecycle_action_token], ::String, context: "#{context}[:lifecycle_action_token]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class RecordLifecycleActionHeartbeatOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecordLifecycleActionHeartbeatOutput, context: context)
      end
    end

    class RefreshPreferences
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RefreshPreferences, context: context)
        Hearth::Validator.validate!(input[:min_healthy_percentage], ::Integer, context: "#{context}[:min_healthy_percentage]")
        Hearth::Validator.validate!(input[:instance_warmup], ::Integer, context: "#{context}[:instance_warmup]")
        Validators::CheckpointPercentages.validate!(input[:checkpoint_percentages], context: "#{context}[:checkpoint_percentages]") unless input[:checkpoint_percentages].nil?
        Hearth::Validator.validate!(input[:checkpoint_delay], ::Integer, context: "#{context}[:checkpoint_delay]")
        Hearth::Validator.validate!(input[:skip_matching], ::TrueClass, ::FalseClass, context: "#{context}[:skip_matching]")
      end
    end

    class ResourceContentionFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceContentionFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceInUseFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInUseFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResumeProcessesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResumeProcessesInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Validators::ProcessNames.validate!(input[:scaling_processes], context: "#{context}[:scaling_processes]") unless input[:scaling_processes].nil?
      end
    end

    class ResumeProcessesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResumeProcessesOutput, context: context)
      end
    end

    class ScalingActivityInProgressFault
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScalingActivityInProgressFault, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ScalingPolicies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ScalingPolicy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ScalingPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScalingPolicy, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
        Hearth::Validator.validate!(input[:policy_type], ::String, context: "#{context}[:policy_type]")
        Hearth::Validator.validate!(input[:adjustment_type], ::String, context: "#{context}[:adjustment_type]")
        Hearth::Validator.validate!(input[:min_adjustment_step], ::Integer, context: "#{context}[:min_adjustment_step]")
        Hearth::Validator.validate!(input[:min_adjustment_magnitude], ::Integer, context: "#{context}[:min_adjustment_magnitude]")
        Hearth::Validator.validate!(input[:scaling_adjustment], ::Integer, context: "#{context}[:scaling_adjustment]")
        Hearth::Validator.validate!(input[:cooldown], ::Integer, context: "#{context}[:cooldown]")
        Validators::StepAdjustments.validate!(input[:step_adjustments], context: "#{context}[:step_adjustments]") unless input[:step_adjustments].nil?
        Hearth::Validator.validate!(input[:metric_aggregation_type], ::String, context: "#{context}[:metric_aggregation_type]")
        Hearth::Validator.validate!(input[:estimated_instance_warmup], ::Integer, context: "#{context}[:estimated_instance_warmup]")
        Validators::Alarms.validate!(input[:alarms], context: "#{context}[:alarms]") unless input[:alarms].nil?
        Validators::TargetTrackingConfiguration.validate!(input[:target_tracking_configuration], context: "#{context}[:target_tracking_configuration]") unless input[:target_tracking_configuration].nil?
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Validators::PredictiveScalingConfiguration.validate!(input[:predictive_scaling_configuration], context: "#{context}[:predictive_scaling_configuration]") unless input[:predictive_scaling_configuration].nil?
      end
    end

    class ScheduledActionNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ScheduledUpdateGroupAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduledUpdateGroupAction, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Hearth::Validator.validate!(input[:scheduled_action_name], ::String, context: "#{context}[:scheduled_action_name]")
        Hearth::Validator.validate!(input[:scheduled_action_arn], ::String, context: "#{context}[:scheduled_action_arn]")
        Hearth::Validator.validate!(input[:time], ::Time, context: "#{context}[:time]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:recurrence], ::String, context: "#{context}[:recurrence]")
        Hearth::Validator.validate!(input[:min_size], ::Integer, context: "#{context}[:min_size]")
        Hearth::Validator.validate!(input[:max_size], ::Integer, context: "#{context}[:max_size]")
        Hearth::Validator.validate!(input[:desired_capacity], ::Integer, context: "#{context}[:desired_capacity]")
        Hearth::Validator.validate!(input[:time_zone], ::String, context: "#{context}[:time_zone]")
      end
    end

    class ScheduledUpdateGroupActionRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduledUpdateGroupActionRequest, context: context)
        Hearth::Validator.validate!(input[:scheduled_action_name], ::String, context: "#{context}[:scheduled_action_name]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:recurrence], ::String, context: "#{context}[:recurrence]")
        Hearth::Validator.validate!(input[:min_size], ::Integer, context: "#{context}[:min_size]")
        Hearth::Validator.validate!(input[:max_size], ::Integer, context: "#{context}[:max_size]")
        Hearth::Validator.validate!(input[:desired_capacity], ::Integer, context: "#{context}[:desired_capacity]")
        Hearth::Validator.validate!(input[:time_zone], ::String, context: "#{context}[:time_zone]")
      end
    end

    class ScheduledUpdateGroupActionRequests
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ScheduledUpdateGroupActionRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ScheduledUpdateGroupActions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ScheduledUpdateGroupAction.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SecurityGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ServiceLinkedRoleFailure
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceLinkedRoleFailure, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SetDesiredCapacityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetDesiredCapacityInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Hearth::Validator.validate!(input[:desired_capacity], ::Integer, context: "#{context}[:desired_capacity]")
        Hearth::Validator.validate!(input[:honor_cooldown], ::TrueClass, ::FalseClass, context: "#{context}[:honor_cooldown]")
      end
    end

    class SetDesiredCapacityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetDesiredCapacityOutput, context: context)
      end
    end

    class SetInstanceHealthInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetInstanceHealthInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:health_status], ::String, context: "#{context}[:health_status]")
        Hearth::Validator.validate!(input[:should_respect_grace_period], ::TrueClass, ::FalseClass, context: "#{context}[:should_respect_grace_period]")
      end
    end

    class SetInstanceHealthOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetInstanceHealthOutput, context: context)
      end
    end

    class SetInstanceProtectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetInstanceProtectionInput, context: context)
        Validators::InstanceIds.validate!(input[:instance_ids], context: "#{context}[:instance_ids]") unless input[:instance_ids].nil?
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Hearth::Validator.validate!(input[:protected_from_scale_in], ::TrueClass, ::FalseClass, context: "#{context}[:protected_from_scale_in]")
      end
    end

    class SetInstanceProtectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetInstanceProtectionOutput, context: context)
      end
    end

    class StartInstanceRefreshInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartInstanceRefreshInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Hearth::Validator.validate!(input[:strategy], ::String, context: "#{context}[:strategy]")
        Validators::DesiredConfiguration.validate!(input[:desired_configuration], context: "#{context}[:desired_configuration]") unless input[:desired_configuration].nil?
        Validators::RefreshPreferences.validate!(input[:preferences], context: "#{context}[:preferences]") unless input[:preferences].nil?
      end
    end

    class StartInstanceRefreshOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartInstanceRefreshOutput, context: context)
        Hearth::Validator.validate!(input[:instance_refresh_id], ::String, context: "#{context}[:instance_refresh_id]")
      end
    end

    class StepAdjustment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StepAdjustment, context: context)
        Hearth::Validator.validate!(input[:metric_interval_lower_bound], ::Float, context: "#{context}[:metric_interval_lower_bound]")
        Hearth::Validator.validate!(input[:metric_interval_upper_bound], ::Float, context: "#{context}[:metric_interval_upper_bound]")
        Hearth::Validator.validate!(input[:scaling_adjustment], ::Integer, context: "#{context}[:scaling_adjustment]")
      end
    end

    class StepAdjustments
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StepAdjustment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SuspendProcessesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SuspendProcessesInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Validators::ProcessNames.validate!(input[:scaling_processes], context: "#{context}[:scaling_processes]") unless input[:scaling_processes].nil?
      end
    end

    class SuspendProcessesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SuspendProcessesOutput, context: context)
      end
    end

    class SuspendedProcess
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SuspendedProcess, context: context)
        Hearth::Validator.validate!(input[:process_name], ::String, context: "#{context}[:process_name]")
        Hearth::Validator.validate!(input[:suspension_reason], ::String, context: "#{context}[:suspension_reason]")
      end
    end

    class SuspendedProcesses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SuspendedProcess.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:propagate_at_launch], ::TrueClass, ::FalseClass, context: "#{context}[:propagate_at_launch]")
      end
    end

    class TagDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagDescription, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:propagate_at_launch], ::TrueClass, ::FalseClass, context: "#{context}[:propagate_at_launch]")
      end
    end

    class TagDescriptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TagDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TargetGroupARNs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TargetTrackingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetTrackingConfiguration, context: context)
        Validators::PredefinedMetricSpecification.validate!(input[:predefined_metric_specification], context: "#{context}[:predefined_metric_specification]") unless input[:predefined_metric_specification].nil?
        Validators::CustomizedMetricSpecification.validate!(input[:customized_metric_specification], context: "#{context}[:customized_metric_specification]") unless input[:customized_metric_specification].nil?
        Hearth::Validator.validate!(input[:target_value], ::Float, context: "#{context}[:target_value]")
        Hearth::Validator.validate!(input[:disable_scale_in], ::TrueClass, ::FalseClass, context: "#{context}[:disable_scale_in]")
      end
    end

    class TerminateInstanceInAutoScalingGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TerminateInstanceInAutoScalingGroupInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:should_decrement_desired_capacity], ::TrueClass, ::FalseClass, context: "#{context}[:should_decrement_desired_capacity]")
      end
    end

    class TerminateInstanceInAutoScalingGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TerminateInstanceInAutoScalingGroupOutput, context: context)
        Validators::Activity.validate!(input[:activity], context: "#{context}[:activity]") unless input[:activity].nil?
      end
    end

    class TerminationPolicies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TotalLocalStorageGBRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TotalLocalStorageGBRequest, context: context)
        Hearth::Validator.validate!(input[:min], ::Float, context: "#{context}[:min]")
        Hearth::Validator.validate!(input[:max], ::Float, context: "#{context}[:max]")
      end
    end

    class UpdateAutoScalingGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAutoScalingGroupInput, context: context)
        Hearth::Validator.validate!(input[:auto_scaling_group_name], ::String, context: "#{context}[:auto_scaling_group_name]")
        Hearth::Validator.validate!(input[:launch_configuration_name], ::String, context: "#{context}[:launch_configuration_name]")
        Validators::LaunchTemplateSpecification.validate!(input[:launch_template], context: "#{context}[:launch_template]") unless input[:launch_template].nil?
        Validators::MixedInstancesPolicy.validate!(input[:mixed_instances_policy], context: "#{context}[:mixed_instances_policy]") unless input[:mixed_instances_policy].nil?
        Hearth::Validator.validate!(input[:min_size], ::Integer, context: "#{context}[:min_size]")
        Hearth::Validator.validate!(input[:max_size], ::Integer, context: "#{context}[:max_size]")
        Hearth::Validator.validate!(input[:desired_capacity], ::Integer, context: "#{context}[:desired_capacity]")
        Hearth::Validator.validate!(input[:default_cooldown], ::Integer, context: "#{context}[:default_cooldown]")
        Validators::AvailabilityZones.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
        Hearth::Validator.validate!(input[:health_check_type], ::String, context: "#{context}[:health_check_type]")
        Hearth::Validator.validate!(input[:health_check_grace_period], ::Integer, context: "#{context}[:health_check_grace_period]")
        Hearth::Validator.validate!(input[:placement_group], ::String, context: "#{context}[:placement_group]")
        Hearth::Validator.validate!(input[:vpc_zone_identifier], ::String, context: "#{context}[:vpc_zone_identifier]")
        Validators::TerminationPolicies.validate!(input[:termination_policies], context: "#{context}[:termination_policies]") unless input[:termination_policies].nil?
        Hearth::Validator.validate!(input[:new_instances_protected_from_scale_in], ::TrueClass, ::FalseClass, context: "#{context}[:new_instances_protected_from_scale_in]")
        Hearth::Validator.validate!(input[:service_linked_role_arn], ::String, context: "#{context}[:service_linked_role_arn]")
        Hearth::Validator.validate!(input[:max_instance_lifetime], ::Integer, context: "#{context}[:max_instance_lifetime]")
        Hearth::Validator.validate!(input[:capacity_rebalance], ::TrueClass, ::FalseClass, context: "#{context}[:capacity_rebalance]")
        Hearth::Validator.validate!(input[:context], ::String, context: "#{context}[:context]")
        Hearth::Validator.validate!(input[:desired_capacity_type], ::String, context: "#{context}[:desired_capacity_type]")
        Hearth::Validator.validate!(input[:default_instance_warmup], ::Integer, context: "#{context}[:default_instance_warmup]")
      end
    end

    class UpdateAutoScalingGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAutoScalingGroupOutput, context: context)
      end
    end

    class VCpuCountRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VCpuCountRequest, context: context)
        Hearth::Validator.validate!(input[:min], ::Integer, context: "#{context}[:min]")
        Hearth::Validator.validate!(input[:max], ::Integer, context: "#{context}[:max]")
      end
    end

    class Values
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class WarmPoolConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WarmPoolConfiguration, context: context)
        Hearth::Validator.validate!(input[:max_group_prepared_capacity], ::Integer, context: "#{context}[:max_group_prepared_capacity]")
        Hearth::Validator.validate!(input[:min_size], ::Integer, context: "#{context}[:min_size]")
        Hearth::Validator.validate!(input[:pool_state], ::String, context: "#{context}[:pool_state]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::InstanceReusePolicy.validate!(input[:instance_reuse_policy], context: "#{context}[:instance_reuse_policy]") unless input[:instance_reuse_policy].nil?
      end
    end

  end
end
