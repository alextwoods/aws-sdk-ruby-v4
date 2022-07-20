# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AutoScaling
  module Params

    module AcceleratorCountRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceleratorCountRequest, context: context)
        type = Types::AcceleratorCountRequest.new
        type.min = params[:min]
        type.max = params[:max]
        type
      end
    end

    module AcceleratorManufacturers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AcceleratorNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AcceleratorTotalMemoryMiBRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceleratorTotalMemoryMiBRequest, context: context)
        type = Types::AcceleratorTotalMemoryMiBRequest.new
        type.min = params[:min]
        type.max = params[:max]
        type
      end
    end

    module AcceleratorTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ActiveInstanceRefreshNotFoundFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActiveInstanceRefreshNotFoundFault, context: context)
        type = Types::ActiveInstanceRefreshNotFoundFault.new
        type.message = params[:message]
        type
      end
    end

    module Activities
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Activity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Activity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Activity, context: context)
        type = Types::Activity.new
        type.activity_id = params[:activity_id]
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.description = params[:description]
        type.cause = params[:cause]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.status_code = params[:status_code]
        type.status_message = params[:status_message]
        type.progress = params[:progress]
        type.details = params[:details]
        type.auto_scaling_group_state = params[:auto_scaling_group_state]
        type.auto_scaling_group_arn = params[:auto_scaling_group_arn]
        type
      end
    end

    module ActivityIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AdjustmentType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdjustmentType, context: context)
        type = Types::AdjustmentType.new
        type.adjustment_type = params[:adjustment_type]
        type
      end
    end

    module AdjustmentTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AdjustmentType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Alarm
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Alarm, context: context)
        type = Types::Alarm.new
        type.alarm_name = params[:alarm_name]
        type.alarm_arn = params[:alarm_arn]
        type
      end
    end

    module Alarms
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Alarm.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AlreadyExistsFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlreadyExistsFault, context: context)
        type = Types::AlreadyExistsFault.new
        type.message = params[:message]
        type
      end
    end

    module AttachInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachInstancesInput, context: context)
        type = Types::AttachInstancesInput.new
        type.instance_ids = InstanceIds.build(params[:instance_ids], context: "#{context}[:instance_ids]") unless params[:instance_ids].nil?
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type
      end
    end

    module AttachInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachInstancesOutput, context: context)
        type = Types::AttachInstancesOutput.new
        type
      end
    end

    module AttachLoadBalancerTargetGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachLoadBalancerTargetGroupsInput, context: context)
        type = Types::AttachLoadBalancerTargetGroupsInput.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.target_group_ar_ns = TargetGroupARNs.build(params[:target_group_ar_ns], context: "#{context}[:target_group_ar_ns]") unless params[:target_group_ar_ns].nil?
        type
      end
    end

    module AttachLoadBalancerTargetGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachLoadBalancerTargetGroupsOutput, context: context)
        type = Types::AttachLoadBalancerTargetGroupsOutput.new
        type
      end
    end

    module AttachLoadBalancersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachLoadBalancersInput, context: context)
        type = Types::AttachLoadBalancersInput.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.load_balancer_names = LoadBalancerNames.build(params[:load_balancer_names], context: "#{context}[:load_balancer_names]") unless params[:load_balancer_names].nil?
        type
      end
    end

    module AttachLoadBalancersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachLoadBalancersOutput, context: context)
        type = Types::AttachLoadBalancersOutput.new
        type
      end
    end

    module AutoScalingGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoScalingGroup, context: context)
        type = Types::AutoScalingGroup.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.auto_scaling_group_arn = params[:auto_scaling_group_arn]
        type.launch_configuration_name = params[:launch_configuration_name]
        type.launch_template = LaunchTemplateSpecification.build(params[:launch_template], context: "#{context}[:launch_template]") unless params[:launch_template].nil?
        type.mixed_instances_policy = MixedInstancesPolicy.build(params[:mixed_instances_policy], context: "#{context}[:mixed_instances_policy]") unless params[:mixed_instances_policy].nil?
        type.min_size = params[:min_size]
        type.max_size = params[:max_size]
        type.desired_capacity = params[:desired_capacity]
        type.predicted_capacity = params[:predicted_capacity]
        type.default_cooldown = params[:default_cooldown]
        type.availability_zones = AvailabilityZones.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.load_balancer_names = LoadBalancerNames.build(params[:load_balancer_names], context: "#{context}[:load_balancer_names]") unless params[:load_balancer_names].nil?
        type.target_group_ar_ns = TargetGroupARNs.build(params[:target_group_ar_ns], context: "#{context}[:target_group_ar_ns]") unless params[:target_group_ar_ns].nil?
        type.health_check_type = params[:health_check_type]
        type.health_check_grace_period = params[:health_check_grace_period]
        type.instances = Instances.build(params[:instances], context: "#{context}[:instances]") unless params[:instances].nil?
        type.created_time = params[:created_time]
        type.suspended_processes = SuspendedProcesses.build(params[:suspended_processes], context: "#{context}[:suspended_processes]") unless params[:suspended_processes].nil?
        type.placement_group = params[:placement_group]
        type.vpc_zone_identifier = params[:vpc_zone_identifier]
        type.enabled_metrics = EnabledMetrics.build(params[:enabled_metrics], context: "#{context}[:enabled_metrics]") unless params[:enabled_metrics].nil?
        type.status = params[:status]
        type.tags = TagDescriptionList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.termination_policies = TerminationPolicies.build(params[:termination_policies], context: "#{context}[:termination_policies]") unless params[:termination_policies].nil?
        type.new_instances_protected_from_scale_in = params[:new_instances_protected_from_scale_in]
        type.service_linked_role_arn = params[:service_linked_role_arn]
        type.max_instance_lifetime = params[:max_instance_lifetime]
        type.capacity_rebalance = params[:capacity_rebalance]
        type.warm_pool_configuration = WarmPoolConfiguration.build(params[:warm_pool_configuration], context: "#{context}[:warm_pool_configuration]") unless params[:warm_pool_configuration].nil?
        type.warm_pool_size = params[:warm_pool_size]
        type.context = params[:context]
        type.desired_capacity_type = params[:desired_capacity_type]
        type.default_instance_warmup = params[:default_instance_warmup]
        type
      end
    end

    module AutoScalingGroupNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AutoScalingGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AutoScalingGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AutoScalingInstanceDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoScalingInstanceDetails, context: context)
        type = Types::AutoScalingInstanceDetails.new
        type.instance_id = params[:instance_id]
        type.instance_type = params[:instance_type]
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.availability_zone = params[:availability_zone]
        type.lifecycle_state = params[:lifecycle_state]
        type.health_status = params[:health_status]
        type.launch_configuration_name = params[:launch_configuration_name]
        type.launch_template = LaunchTemplateSpecification.build(params[:launch_template], context: "#{context}[:launch_template]") unless params[:launch_template].nil?
        type.protected_from_scale_in = params[:protected_from_scale_in]
        type.weighted_capacity = params[:weighted_capacity]
        type
      end
    end

    module AutoScalingInstances
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AutoScalingInstanceDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AutoScalingNotificationTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AvailabilityZones
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BaselineEbsBandwidthMbpsRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BaselineEbsBandwidthMbpsRequest, context: context)
        type = Types::BaselineEbsBandwidthMbpsRequest.new
        type.min = params[:min]
        type.max = params[:max]
        type
      end
    end

    module BatchDeleteScheduledActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteScheduledActionInput, context: context)
        type = Types::BatchDeleteScheduledActionInput.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.scheduled_action_names = ScheduledActionNames.build(params[:scheduled_action_names], context: "#{context}[:scheduled_action_names]") unless params[:scheduled_action_names].nil?
        type
      end
    end

    module BatchDeleteScheduledActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteScheduledActionOutput, context: context)
        type = Types::BatchDeleteScheduledActionOutput.new
        type.failed_scheduled_actions = FailedScheduledUpdateGroupActionRequests.build(params[:failed_scheduled_actions], context: "#{context}[:failed_scheduled_actions]") unless params[:failed_scheduled_actions].nil?
        type
      end
    end

    module BatchPutScheduledUpdateGroupActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchPutScheduledUpdateGroupActionInput, context: context)
        type = Types::BatchPutScheduledUpdateGroupActionInput.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.scheduled_update_group_actions = ScheduledUpdateGroupActionRequests.build(params[:scheduled_update_group_actions], context: "#{context}[:scheduled_update_group_actions]") unless params[:scheduled_update_group_actions].nil?
        type
      end
    end

    module BatchPutScheduledUpdateGroupActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchPutScheduledUpdateGroupActionOutput, context: context)
        type = Types::BatchPutScheduledUpdateGroupActionOutput.new
        type.failed_scheduled_update_group_actions = FailedScheduledUpdateGroupActionRequests.build(params[:failed_scheduled_update_group_actions], context: "#{context}[:failed_scheduled_update_group_actions]") unless params[:failed_scheduled_update_group_actions].nil?
        type
      end
    end

    module BlockDeviceMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BlockDeviceMapping, context: context)
        type = Types::BlockDeviceMapping.new
        type.virtual_name = params[:virtual_name]
        type.device_name = params[:device_name]
        type.ebs = Ebs.build(params[:ebs], context: "#{context}[:ebs]") unless params[:ebs].nil?
        type.no_device = params[:no_device]
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

    module CancelInstanceRefreshInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelInstanceRefreshInput, context: context)
        type = Types::CancelInstanceRefreshInput.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type
      end
    end

    module CancelInstanceRefreshOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelInstanceRefreshOutput, context: context)
        type = Types::CancelInstanceRefreshOutput.new
        type.instance_refresh_id = params[:instance_refresh_id]
        type
      end
    end

    module CapacityForecast
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CapacityForecast, context: context)
        type = Types::CapacityForecast.new
        type.timestamps = PredictiveScalingForecastTimestamps.build(params[:timestamps], context: "#{context}[:timestamps]") unless params[:timestamps].nil?
        type.values = PredictiveScalingForecastValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module CheckpointPercentages
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ClassicLinkVPCSecurityGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CompleteLifecycleActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CompleteLifecycleActionInput, context: context)
        type = Types::CompleteLifecycleActionInput.new
        type.lifecycle_hook_name = params[:lifecycle_hook_name]
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.lifecycle_action_token = params[:lifecycle_action_token]
        type.lifecycle_action_result = params[:lifecycle_action_result]
        type.instance_id = params[:instance_id]
        type
      end
    end

    module CompleteLifecycleActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CompleteLifecycleActionOutput, context: context)
        type = Types::CompleteLifecycleActionOutput.new
        type
      end
    end

    module CpuManufacturers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CreateAutoScalingGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAutoScalingGroupInput, context: context)
        type = Types::CreateAutoScalingGroupInput.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.launch_configuration_name = params[:launch_configuration_name]
        type.launch_template = LaunchTemplateSpecification.build(params[:launch_template], context: "#{context}[:launch_template]") unless params[:launch_template].nil?
        type.mixed_instances_policy = MixedInstancesPolicy.build(params[:mixed_instances_policy], context: "#{context}[:mixed_instances_policy]") unless params[:mixed_instances_policy].nil?
        type.instance_id = params[:instance_id]
        type.min_size = params[:min_size]
        type.max_size = params[:max_size]
        type.desired_capacity = params[:desired_capacity]
        type.default_cooldown = params[:default_cooldown]
        type.availability_zones = AvailabilityZones.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.load_balancer_names = LoadBalancerNames.build(params[:load_balancer_names], context: "#{context}[:load_balancer_names]") unless params[:load_balancer_names].nil?
        type.target_group_ar_ns = TargetGroupARNs.build(params[:target_group_ar_ns], context: "#{context}[:target_group_ar_ns]") unless params[:target_group_ar_ns].nil?
        type.health_check_type = params[:health_check_type]
        type.health_check_grace_period = params[:health_check_grace_period]
        type.placement_group = params[:placement_group]
        type.vpc_zone_identifier = params[:vpc_zone_identifier]
        type.termination_policies = TerminationPolicies.build(params[:termination_policies], context: "#{context}[:termination_policies]") unless params[:termination_policies].nil?
        type.new_instances_protected_from_scale_in = params[:new_instances_protected_from_scale_in]
        type.capacity_rebalance = params[:capacity_rebalance]
        type.lifecycle_hook_specification_list = LifecycleHookSpecifications.build(params[:lifecycle_hook_specification_list], context: "#{context}[:lifecycle_hook_specification_list]") unless params[:lifecycle_hook_specification_list].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.service_linked_role_arn = params[:service_linked_role_arn]
        type.max_instance_lifetime = params[:max_instance_lifetime]
        type.context = params[:context]
        type.desired_capacity_type = params[:desired_capacity_type]
        type.default_instance_warmup = params[:default_instance_warmup]
        type
      end
    end

    module CreateAutoScalingGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAutoScalingGroupOutput, context: context)
        type = Types::CreateAutoScalingGroupOutput.new
        type
      end
    end

    module CreateLaunchConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLaunchConfigurationInput, context: context)
        type = Types::CreateLaunchConfigurationInput.new
        type.launch_configuration_name = params[:launch_configuration_name]
        type.image_id = params[:image_id]
        type.key_name = params[:key_name]
        type.security_groups = SecurityGroups.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.classic_link_vpc_id = params[:classic_link_vpc_id]
        type.classic_link_vpc_security_groups = ClassicLinkVPCSecurityGroups.build(params[:classic_link_vpc_security_groups], context: "#{context}[:classic_link_vpc_security_groups]") unless params[:classic_link_vpc_security_groups].nil?
        type.user_data = params[:user_data]
        type.instance_id = params[:instance_id]
        type.instance_type = params[:instance_type]
        type.kernel_id = params[:kernel_id]
        type.ramdisk_id = params[:ramdisk_id]
        type.block_device_mappings = BlockDeviceMappings.build(params[:block_device_mappings], context: "#{context}[:block_device_mappings]") unless params[:block_device_mappings].nil?
        type.instance_monitoring = InstanceMonitoring.build(params[:instance_monitoring], context: "#{context}[:instance_monitoring]") unless params[:instance_monitoring].nil?
        type.spot_price = params[:spot_price]
        type.iam_instance_profile = params[:iam_instance_profile]
        type.ebs_optimized = params[:ebs_optimized]
        type.associate_public_ip_address = params[:associate_public_ip_address]
        type.placement_tenancy = params[:placement_tenancy]
        type.metadata_options = InstanceMetadataOptions.build(params[:metadata_options], context: "#{context}[:metadata_options]") unless params[:metadata_options].nil?
        type
      end
    end

    module CreateLaunchConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLaunchConfigurationOutput, context: context)
        type = Types::CreateLaunchConfigurationOutput.new
        type
      end
    end

    module CreateOrUpdateTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateOrUpdateTagsInput, context: context)
        type = Types::CreateOrUpdateTagsInput.new
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateOrUpdateTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateOrUpdateTagsOutput, context: context)
        type = Types::CreateOrUpdateTagsOutput.new
        type
      end
    end

    module CustomizedMetricSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomizedMetricSpecification, context: context)
        type = Types::CustomizedMetricSpecification.new
        type.metric_name = params[:metric_name]
        type.namespace = params[:namespace]
        type.dimensions = MetricDimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.statistic = params[:statistic]
        type.unit = params[:unit]
        type
      end
    end

    module DeleteAutoScalingGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAutoScalingGroupInput, context: context)
        type = Types::DeleteAutoScalingGroupInput.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.force_delete = params[:force_delete]
        type
      end
    end

    module DeleteAutoScalingGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAutoScalingGroupOutput, context: context)
        type = Types::DeleteAutoScalingGroupOutput.new
        type
      end
    end

    module DeleteLaunchConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLaunchConfigurationInput, context: context)
        type = Types::DeleteLaunchConfigurationInput.new
        type.launch_configuration_name = params[:launch_configuration_name]
        type
      end
    end

    module DeleteLaunchConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLaunchConfigurationOutput, context: context)
        type = Types::DeleteLaunchConfigurationOutput.new
        type
      end
    end

    module DeleteLifecycleHookInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLifecycleHookInput, context: context)
        type = Types::DeleteLifecycleHookInput.new
        type.lifecycle_hook_name = params[:lifecycle_hook_name]
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type
      end
    end

    module DeleteLifecycleHookOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLifecycleHookOutput, context: context)
        type = Types::DeleteLifecycleHookOutput.new
        type
      end
    end

    module DeleteNotificationConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNotificationConfigurationInput, context: context)
        type = Types::DeleteNotificationConfigurationInput.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.topic_arn = params[:topic_arn]
        type
      end
    end

    module DeleteNotificationConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNotificationConfigurationOutput, context: context)
        type = Types::DeleteNotificationConfigurationOutput.new
        type
      end
    end

    module DeletePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePolicyInput, context: context)
        type = Types::DeletePolicyInput.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.policy_name = params[:policy_name]
        type
      end
    end

    module DeletePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePolicyOutput, context: context)
        type = Types::DeletePolicyOutput.new
        type
      end
    end

    module DeleteScheduledActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteScheduledActionInput, context: context)
        type = Types::DeleteScheduledActionInput.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.scheduled_action_name = params[:scheduled_action_name]
        type
      end
    end

    module DeleteScheduledActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteScheduledActionOutput, context: context)
        type = Types::DeleteScheduledActionOutput.new
        type
      end
    end

    module DeleteTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTagsInput, context: context)
        type = Types::DeleteTagsInput.new
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DeleteTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTagsOutput, context: context)
        type = Types::DeleteTagsOutput.new
        type
      end
    end

    module DeleteWarmPoolInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWarmPoolInput, context: context)
        type = Types::DeleteWarmPoolInput.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.force_delete = params[:force_delete]
        type
      end
    end

    module DeleteWarmPoolOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWarmPoolOutput, context: context)
        type = Types::DeleteWarmPoolOutput.new
        type
      end
    end

    module DescribeAccountLimitsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountLimitsInput, context: context)
        type = Types::DescribeAccountLimitsInput.new
        type
      end
    end

    module DescribeAccountLimitsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountLimitsOutput, context: context)
        type = Types::DescribeAccountLimitsOutput.new
        type.max_number_of_auto_scaling_groups = params[:max_number_of_auto_scaling_groups]
        type.max_number_of_launch_configurations = params[:max_number_of_launch_configurations]
        type.number_of_auto_scaling_groups = params[:number_of_auto_scaling_groups]
        type.number_of_launch_configurations = params[:number_of_launch_configurations]
        type
      end
    end

    module DescribeAdjustmentTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAdjustmentTypesInput, context: context)
        type = Types::DescribeAdjustmentTypesInput.new
        type
      end
    end

    module DescribeAdjustmentTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAdjustmentTypesOutput, context: context)
        type = Types::DescribeAdjustmentTypesOutput.new
        type.adjustment_types = AdjustmentTypes.build(params[:adjustment_types], context: "#{context}[:adjustment_types]") unless params[:adjustment_types].nil?
        type
      end
    end

    module DescribeAutoScalingGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAutoScalingGroupsInput, context: context)
        type = Types::DescribeAutoScalingGroupsInput.new
        type.auto_scaling_group_names = AutoScalingGroupNames.build(params[:auto_scaling_group_names], context: "#{context}[:auto_scaling_group_names]") unless params[:auto_scaling_group_names].nil?
        type.next_token = params[:next_token]
        type.max_records = params[:max_records]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module DescribeAutoScalingGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAutoScalingGroupsOutput, context: context)
        type = Types::DescribeAutoScalingGroupsOutput.new
        type.auto_scaling_groups = AutoScalingGroups.build(params[:auto_scaling_groups], context: "#{context}[:auto_scaling_groups]") unless params[:auto_scaling_groups].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeAutoScalingInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAutoScalingInstancesInput, context: context)
        type = Types::DescribeAutoScalingInstancesInput.new
        type.instance_ids = InstanceIds.build(params[:instance_ids], context: "#{context}[:instance_ids]") unless params[:instance_ids].nil?
        type.max_records = params[:max_records]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeAutoScalingInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAutoScalingInstancesOutput, context: context)
        type = Types::DescribeAutoScalingInstancesOutput.new
        type.auto_scaling_instances = AutoScalingInstances.build(params[:auto_scaling_instances], context: "#{context}[:auto_scaling_instances]") unless params[:auto_scaling_instances].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeAutoScalingNotificationTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAutoScalingNotificationTypesInput, context: context)
        type = Types::DescribeAutoScalingNotificationTypesInput.new
        type
      end
    end

    module DescribeAutoScalingNotificationTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAutoScalingNotificationTypesOutput, context: context)
        type = Types::DescribeAutoScalingNotificationTypesOutput.new
        type.auto_scaling_notification_types = AutoScalingNotificationTypes.build(params[:auto_scaling_notification_types], context: "#{context}[:auto_scaling_notification_types]") unless params[:auto_scaling_notification_types].nil?
        type
      end
    end

    module DescribeInstanceRefreshesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstanceRefreshesInput, context: context)
        type = Types::DescribeInstanceRefreshesInput.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.instance_refresh_ids = InstanceRefreshIds.build(params[:instance_refresh_ids], context: "#{context}[:instance_refresh_ids]") unless params[:instance_refresh_ids].nil?
        type.next_token = params[:next_token]
        type.max_records = params[:max_records]
        type
      end
    end

    module DescribeInstanceRefreshesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstanceRefreshesOutput, context: context)
        type = Types::DescribeInstanceRefreshesOutput.new
        type.instance_refreshes = InstanceRefreshes.build(params[:instance_refreshes], context: "#{context}[:instance_refreshes]") unless params[:instance_refreshes].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeLaunchConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLaunchConfigurationsInput, context: context)
        type = Types::DescribeLaunchConfigurationsInput.new
        type.launch_configuration_names = LaunchConfigurationNames.build(params[:launch_configuration_names], context: "#{context}[:launch_configuration_names]") unless params[:launch_configuration_names].nil?
        type.next_token = params[:next_token]
        type.max_records = params[:max_records]
        type
      end
    end

    module DescribeLaunchConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLaunchConfigurationsOutput, context: context)
        type = Types::DescribeLaunchConfigurationsOutput.new
        type.launch_configurations = LaunchConfigurations.build(params[:launch_configurations], context: "#{context}[:launch_configurations]") unless params[:launch_configurations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeLifecycleHookTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLifecycleHookTypesInput, context: context)
        type = Types::DescribeLifecycleHookTypesInput.new
        type
      end
    end

    module DescribeLifecycleHookTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLifecycleHookTypesOutput, context: context)
        type = Types::DescribeLifecycleHookTypesOutput.new
        type.lifecycle_hook_types = AutoScalingNotificationTypes.build(params[:lifecycle_hook_types], context: "#{context}[:lifecycle_hook_types]") unless params[:lifecycle_hook_types].nil?
        type
      end
    end

    module DescribeLifecycleHooksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLifecycleHooksInput, context: context)
        type = Types::DescribeLifecycleHooksInput.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.lifecycle_hook_names = LifecycleHookNames.build(params[:lifecycle_hook_names], context: "#{context}[:lifecycle_hook_names]") unless params[:lifecycle_hook_names].nil?
        type
      end
    end

    module DescribeLifecycleHooksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLifecycleHooksOutput, context: context)
        type = Types::DescribeLifecycleHooksOutput.new
        type.lifecycle_hooks = LifecycleHooks.build(params[:lifecycle_hooks], context: "#{context}[:lifecycle_hooks]") unless params[:lifecycle_hooks].nil?
        type
      end
    end

    module DescribeLoadBalancerTargetGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLoadBalancerTargetGroupsInput, context: context)
        type = Types::DescribeLoadBalancerTargetGroupsInput.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.next_token = params[:next_token]
        type.max_records = params[:max_records]
        type
      end
    end

    module DescribeLoadBalancerTargetGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLoadBalancerTargetGroupsOutput, context: context)
        type = Types::DescribeLoadBalancerTargetGroupsOutput.new
        type.load_balancer_target_groups = LoadBalancerTargetGroupStates.build(params[:load_balancer_target_groups], context: "#{context}[:load_balancer_target_groups]") unless params[:load_balancer_target_groups].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeLoadBalancersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLoadBalancersInput, context: context)
        type = Types::DescribeLoadBalancersInput.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.next_token = params[:next_token]
        type.max_records = params[:max_records]
        type
      end
    end

    module DescribeLoadBalancersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLoadBalancersOutput, context: context)
        type = Types::DescribeLoadBalancersOutput.new
        type.load_balancers = LoadBalancerStates.build(params[:load_balancers], context: "#{context}[:load_balancers]") unless params[:load_balancers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeMetricCollectionTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMetricCollectionTypesInput, context: context)
        type = Types::DescribeMetricCollectionTypesInput.new
        type
      end
    end

    module DescribeMetricCollectionTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMetricCollectionTypesOutput, context: context)
        type = Types::DescribeMetricCollectionTypesOutput.new
        type.metrics = MetricCollectionTypes.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type.granularities = MetricGranularityTypes.build(params[:granularities], context: "#{context}[:granularities]") unless params[:granularities].nil?
        type
      end
    end

    module DescribeNotificationConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNotificationConfigurationsInput, context: context)
        type = Types::DescribeNotificationConfigurationsInput.new
        type.auto_scaling_group_names = AutoScalingGroupNames.build(params[:auto_scaling_group_names], context: "#{context}[:auto_scaling_group_names]") unless params[:auto_scaling_group_names].nil?
        type.next_token = params[:next_token]
        type.max_records = params[:max_records]
        type
      end
    end

    module DescribeNotificationConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNotificationConfigurationsOutput, context: context)
        type = Types::DescribeNotificationConfigurationsOutput.new
        type.notification_configurations = NotificationConfigurations.build(params[:notification_configurations], context: "#{context}[:notification_configurations]") unless params[:notification_configurations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribePoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePoliciesInput, context: context)
        type = Types::DescribePoliciesInput.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.policy_names = PolicyNames.build(params[:policy_names], context: "#{context}[:policy_names]") unless params[:policy_names].nil?
        type.policy_types = PolicyTypes.build(params[:policy_types], context: "#{context}[:policy_types]") unless params[:policy_types].nil?
        type.next_token = params[:next_token]
        type.max_records = params[:max_records]
        type
      end
    end

    module DescribePoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePoliciesOutput, context: context)
        type = Types::DescribePoliciesOutput.new
        type.scaling_policies = ScalingPolicies.build(params[:scaling_policies], context: "#{context}[:scaling_policies]") unless params[:scaling_policies].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeScalingActivitiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScalingActivitiesInput, context: context)
        type = Types::DescribeScalingActivitiesInput.new
        type.activity_ids = ActivityIds.build(params[:activity_ids], context: "#{context}[:activity_ids]") unless params[:activity_ids].nil?
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.include_deleted_groups = params[:include_deleted_groups]
        type.max_records = params[:max_records]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeScalingActivitiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScalingActivitiesOutput, context: context)
        type = Types::DescribeScalingActivitiesOutput.new
        type.activities = Activities.build(params[:activities], context: "#{context}[:activities]") unless params[:activities].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeScalingProcessTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScalingProcessTypesInput, context: context)
        type = Types::DescribeScalingProcessTypesInput.new
        type
      end
    end

    module DescribeScalingProcessTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScalingProcessTypesOutput, context: context)
        type = Types::DescribeScalingProcessTypesOutput.new
        type.processes = Processes.build(params[:processes], context: "#{context}[:processes]") unless params[:processes].nil?
        type
      end
    end

    module DescribeScheduledActionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScheduledActionsInput, context: context)
        type = Types::DescribeScheduledActionsInput.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.scheduled_action_names = ScheduledActionNames.build(params[:scheduled_action_names], context: "#{context}[:scheduled_action_names]") unless params[:scheduled_action_names].nil?
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.next_token = params[:next_token]
        type.max_records = params[:max_records]
        type
      end
    end

    module DescribeScheduledActionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScheduledActionsOutput, context: context)
        type = Types::DescribeScheduledActionsOutput.new
        type.scheduled_update_group_actions = ScheduledUpdateGroupActions.build(params[:scheduled_update_group_actions], context: "#{context}[:scheduled_update_group_actions]") unless params[:scheduled_update_group_actions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTagsInput, context: context)
        type = Types::DescribeTagsInput.new
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_records = params[:max_records]
        type
      end
    end

    module DescribeTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTagsOutput, context: context)
        type = Types::DescribeTagsOutput.new
        type.tags = TagDescriptionList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeTerminationPolicyTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTerminationPolicyTypesInput, context: context)
        type = Types::DescribeTerminationPolicyTypesInput.new
        type
      end
    end

    module DescribeTerminationPolicyTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTerminationPolicyTypesOutput, context: context)
        type = Types::DescribeTerminationPolicyTypesOutput.new
        type.termination_policy_types = TerminationPolicies.build(params[:termination_policy_types], context: "#{context}[:termination_policy_types]") unless params[:termination_policy_types].nil?
        type
      end
    end

    module DescribeWarmPoolInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWarmPoolInput, context: context)
        type = Types::DescribeWarmPoolInput.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.max_records = params[:max_records]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeWarmPoolOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWarmPoolOutput, context: context)
        type = Types::DescribeWarmPoolOutput.new
        type.warm_pool_configuration = WarmPoolConfiguration.build(params[:warm_pool_configuration], context: "#{context}[:warm_pool_configuration]") unless params[:warm_pool_configuration].nil?
        type.instances = Instances.build(params[:instances], context: "#{context}[:instances]") unless params[:instances].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DesiredConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DesiredConfiguration, context: context)
        type = Types::DesiredConfiguration.new
        type.launch_template = LaunchTemplateSpecification.build(params[:launch_template], context: "#{context}[:launch_template]") unless params[:launch_template].nil?
        type.mixed_instances_policy = MixedInstancesPolicy.build(params[:mixed_instances_policy], context: "#{context}[:mixed_instances_policy]") unless params[:mixed_instances_policy].nil?
        type
      end
    end

    module DetachInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachInstancesInput, context: context)
        type = Types::DetachInstancesInput.new
        type.instance_ids = InstanceIds.build(params[:instance_ids], context: "#{context}[:instance_ids]") unless params[:instance_ids].nil?
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.should_decrement_desired_capacity = params[:should_decrement_desired_capacity]
        type
      end
    end

    module DetachInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachInstancesOutput, context: context)
        type = Types::DetachInstancesOutput.new
        type.activities = Activities.build(params[:activities], context: "#{context}[:activities]") unless params[:activities].nil?
        type
      end
    end

    module DetachLoadBalancerTargetGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachLoadBalancerTargetGroupsInput, context: context)
        type = Types::DetachLoadBalancerTargetGroupsInput.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.target_group_ar_ns = TargetGroupARNs.build(params[:target_group_ar_ns], context: "#{context}[:target_group_ar_ns]") unless params[:target_group_ar_ns].nil?
        type
      end
    end

    module DetachLoadBalancerTargetGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachLoadBalancerTargetGroupsOutput, context: context)
        type = Types::DetachLoadBalancerTargetGroupsOutput.new
        type
      end
    end

    module DetachLoadBalancersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachLoadBalancersInput, context: context)
        type = Types::DetachLoadBalancersInput.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.load_balancer_names = LoadBalancerNames.build(params[:load_balancer_names], context: "#{context}[:load_balancer_names]") unless params[:load_balancer_names].nil?
        type
      end
    end

    module DetachLoadBalancersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetachLoadBalancersOutput, context: context)
        type = Types::DetachLoadBalancersOutput.new
        type
      end
    end

    module DisableMetricsCollectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableMetricsCollectionInput, context: context)
        type = Types::DisableMetricsCollectionInput.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.metrics = Metrics.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type
      end
    end

    module DisableMetricsCollectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableMetricsCollectionOutput, context: context)
        type = Types::DisableMetricsCollectionOutput.new
        type
      end
    end

    module Ebs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Ebs, context: context)
        type = Types::Ebs.new
        type.snapshot_id = params[:snapshot_id]
        type.volume_size = params[:volume_size]
        type.volume_type = params[:volume_type]
        type.delete_on_termination = params[:delete_on_termination]
        type.iops = params[:iops]
        type.encrypted = params[:encrypted]
        type.throughput = params[:throughput]
        type
      end
    end

    module EnableMetricsCollectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableMetricsCollectionInput, context: context)
        type = Types::EnableMetricsCollectionInput.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.metrics = Metrics.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type.granularity = params[:granularity]
        type
      end
    end

    module EnableMetricsCollectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableMetricsCollectionOutput, context: context)
        type = Types::EnableMetricsCollectionOutput.new
        type
      end
    end

    module EnabledMetric
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnabledMetric, context: context)
        type = Types::EnabledMetric.new
        type.metric = params[:metric]
        type.granularity = params[:granularity]
        type
      end
    end

    module EnabledMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EnabledMetric.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EnterStandbyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnterStandbyInput, context: context)
        type = Types::EnterStandbyInput.new
        type.instance_ids = InstanceIds.build(params[:instance_ids], context: "#{context}[:instance_ids]") unless params[:instance_ids].nil?
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.should_decrement_desired_capacity = params[:should_decrement_desired_capacity]
        type
      end
    end

    module EnterStandbyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnterStandbyOutput, context: context)
        type = Types::EnterStandbyOutput.new
        type.activities = Activities.build(params[:activities], context: "#{context}[:activities]") unless params[:activities].nil?
        type
      end
    end

    module ExcludedInstanceTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ExecutePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecutePolicyInput, context: context)
        type = Types::ExecutePolicyInput.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.policy_name = params[:policy_name]
        type.honor_cooldown = params[:honor_cooldown]
        type.metric_value = params[:metric_value]
        type.breach_threshold = params[:breach_threshold]
        type
      end
    end

    module ExecutePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecutePolicyOutput, context: context)
        type = Types::ExecutePolicyOutput.new
        type
      end
    end

    module ExitStandbyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExitStandbyInput, context: context)
        type = Types::ExitStandbyInput.new
        type.instance_ids = InstanceIds.build(params[:instance_ids], context: "#{context}[:instance_ids]") unless params[:instance_ids].nil?
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type
      end
    end

    module ExitStandbyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExitStandbyOutput, context: context)
        type = Types::ExitStandbyOutput.new
        type.activities = Activities.build(params[:activities], context: "#{context}[:activities]") unless params[:activities].nil?
        type
      end
    end

    module FailedScheduledUpdateGroupActionRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailedScheduledUpdateGroupActionRequest, context: context)
        type = Types::FailedScheduledUpdateGroupActionRequest.new
        type.scheduled_action_name = params[:scheduled_action_name]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module FailedScheduledUpdateGroupActionRequests
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FailedScheduledUpdateGroupActionRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Filter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Filter, context: context)
        type = Types::Filter.new
        type.name = params[:name]
        type.values = Values.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module Filters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Filter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetPredictiveScalingForecastInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPredictiveScalingForecastInput, context: context)
        type = Types::GetPredictiveScalingForecastInput.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.policy_name = params[:policy_name]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module GetPredictiveScalingForecastOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPredictiveScalingForecastOutput, context: context)
        type = Types::GetPredictiveScalingForecastOutput.new
        type.load_forecast = LoadForecasts.build(params[:load_forecast], context: "#{context}[:load_forecast]") unless params[:load_forecast].nil?
        type.capacity_forecast = CapacityForecast.build(params[:capacity_forecast], context: "#{context}[:capacity_forecast]") unless params[:capacity_forecast].nil?
        type.update_time = params[:update_time]
        type
      end
    end

    module Instance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Instance, context: context)
        type = Types::Instance.new
        type.instance_id = params[:instance_id]
        type.instance_type = params[:instance_type]
        type.availability_zone = params[:availability_zone]
        type.lifecycle_state = params[:lifecycle_state]
        type.health_status = params[:health_status]
        type.launch_configuration_name = params[:launch_configuration_name]
        type.launch_template = LaunchTemplateSpecification.build(params[:launch_template], context: "#{context}[:launch_template]") unless params[:launch_template].nil?
        type.protected_from_scale_in = params[:protected_from_scale_in]
        type.weighted_capacity = params[:weighted_capacity]
        type
      end
    end

    module InstanceGenerations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InstanceIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InstanceMetadataOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceMetadataOptions, context: context)
        type = Types::InstanceMetadataOptions.new
        type.http_tokens = params[:http_tokens]
        type.http_put_response_hop_limit = params[:http_put_response_hop_limit]
        type.http_endpoint = params[:http_endpoint]
        type
      end
    end

    module InstanceMonitoring
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceMonitoring, context: context)
        type = Types::InstanceMonitoring.new
        type.enabled = params[:enabled]
        type
      end
    end

    module InstanceRefresh
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceRefresh, context: context)
        type = Types::InstanceRefresh.new
        type.instance_refresh_id = params[:instance_refresh_id]
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.status = params[:status]
        type.status_reason = params[:status_reason]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.percentage_complete = params[:percentage_complete]
        type.instances_to_update = params[:instances_to_update]
        type.progress_details = InstanceRefreshProgressDetails.build(params[:progress_details], context: "#{context}[:progress_details]") unless params[:progress_details].nil?
        type.preferences = RefreshPreferences.build(params[:preferences], context: "#{context}[:preferences]") unless params[:preferences].nil?
        type.desired_configuration = DesiredConfiguration.build(params[:desired_configuration], context: "#{context}[:desired_configuration]") unless params[:desired_configuration].nil?
        type
      end
    end

    module InstanceRefreshIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InstanceRefreshInProgressFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceRefreshInProgressFault, context: context)
        type = Types::InstanceRefreshInProgressFault.new
        type.message = params[:message]
        type
      end
    end

    module InstanceRefreshLivePoolProgress
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceRefreshLivePoolProgress, context: context)
        type = Types::InstanceRefreshLivePoolProgress.new
        type.percentage_complete = params[:percentage_complete]
        type.instances_to_update = params[:instances_to_update]
        type
      end
    end

    module InstanceRefreshProgressDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceRefreshProgressDetails, context: context)
        type = Types::InstanceRefreshProgressDetails.new
        type.live_pool_progress = InstanceRefreshLivePoolProgress.build(params[:live_pool_progress], context: "#{context}[:live_pool_progress]") unless params[:live_pool_progress].nil?
        type.warm_pool_progress = InstanceRefreshWarmPoolProgress.build(params[:warm_pool_progress], context: "#{context}[:warm_pool_progress]") unless params[:warm_pool_progress].nil?
        type
      end
    end

    module InstanceRefreshWarmPoolProgress
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceRefreshWarmPoolProgress, context: context)
        type = Types::InstanceRefreshWarmPoolProgress.new
        type.percentage_complete = params[:percentage_complete]
        type.instances_to_update = params[:instances_to_update]
        type
      end
    end

    module InstanceRefreshes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceRefresh.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstanceRequirements
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceRequirements, context: context)
        type = Types::InstanceRequirements.new
        type.v_cpu_count = VCpuCountRequest.build(params[:v_cpu_count], context: "#{context}[:v_cpu_count]") unless params[:v_cpu_count].nil?
        type.memory_mi_b = MemoryMiBRequest.build(params[:memory_mi_b], context: "#{context}[:memory_mi_b]") unless params[:memory_mi_b].nil?
        type.cpu_manufacturers = CpuManufacturers.build(params[:cpu_manufacturers], context: "#{context}[:cpu_manufacturers]") unless params[:cpu_manufacturers].nil?
        type.memory_gi_b_per_v_cpu = MemoryGiBPerVCpuRequest.build(params[:memory_gi_b_per_v_cpu], context: "#{context}[:memory_gi_b_per_v_cpu]") unless params[:memory_gi_b_per_v_cpu].nil?
        type.excluded_instance_types = ExcludedInstanceTypes.build(params[:excluded_instance_types], context: "#{context}[:excluded_instance_types]") unless params[:excluded_instance_types].nil?
        type.instance_generations = InstanceGenerations.build(params[:instance_generations], context: "#{context}[:instance_generations]") unless params[:instance_generations].nil?
        type.spot_max_price_percentage_over_lowest_price = params[:spot_max_price_percentage_over_lowest_price]
        type.on_demand_max_price_percentage_over_lowest_price = params[:on_demand_max_price_percentage_over_lowest_price]
        type.bare_metal = params[:bare_metal]
        type.burstable_performance = params[:burstable_performance]
        type.require_hibernate_support = params[:require_hibernate_support]
        type.network_interface_count = NetworkInterfaceCountRequest.build(params[:network_interface_count], context: "#{context}[:network_interface_count]") unless params[:network_interface_count].nil?
        type.local_storage = params[:local_storage]
        type.local_storage_types = LocalStorageTypes.build(params[:local_storage_types], context: "#{context}[:local_storage_types]") unless params[:local_storage_types].nil?
        type.total_local_storage_gb = TotalLocalStorageGBRequest.build(params[:total_local_storage_gb], context: "#{context}[:total_local_storage_gb]") unless params[:total_local_storage_gb].nil?
        type.baseline_ebs_bandwidth_mbps = BaselineEbsBandwidthMbpsRequest.build(params[:baseline_ebs_bandwidth_mbps], context: "#{context}[:baseline_ebs_bandwidth_mbps]") unless params[:baseline_ebs_bandwidth_mbps].nil?
        type.accelerator_types = AcceleratorTypes.build(params[:accelerator_types], context: "#{context}[:accelerator_types]") unless params[:accelerator_types].nil?
        type.accelerator_count = AcceleratorCountRequest.build(params[:accelerator_count], context: "#{context}[:accelerator_count]") unless params[:accelerator_count].nil?
        type.accelerator_manufacturers = AcceleratorManufacturers.build(params[:accelerator_manufacturers], context: "#{context}[:accelerator_manufacturers]") unless params[:accelerator_manufacturers].nil?
        type.accelerator_names = AcceleratorNames.build(params[:accelerator_names], context: "#{context}[:accelerator_names]") unless params[:accelerator_names].nil?
        type.accelerator_total_memory_mi_b = AcceleratorTotalMemoryMiBRequest.build(params[:accelerator_total_memory_mi_b], context: "#{context}[:accelerator_total_memory_mi_b]") unless params[:accelerator_total_memory_mi_b].nil?
        type
      end
    end

    module InstanceReusePolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceReusePolicy, context: context)
        type = Types::InstanceReusePolicy.new
        type.reuse_on_scale_in = params[:reuse_on_scale_in]
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

    module InstancesDistribution
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstancesDistribution, context: context)
        type = Types::InstancesDistribution.new
        type.on_demand_allocation_strategy = params[:on_demand_allocation_strategy]
        type.on_demand_base_capacity = params[:on_demand_base_capacity]
        type.on_demand_percentage_above_base_capacity = params[:on_demand_percentage_above_base_capacity]
        type.spot_allocation_strategy = params[:spot_allocation_strategy]
        type.spot_instance_pools = params[:spot_instance_pools]
        type.spot_max_price = params[:spot_max_price]
        type
      end
    end

    module InvalidNextToken
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidNextToken, context: context)
        type = Types::InvalidNextToken.new
        type.message = params[:message]
        type
      end
    end

    module LaunchConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchConfiguration, context: context)
        type = Types::LaunchConfiguration.new
        type.launch_configuration_name = params[:launch_configuration_name]
        type.launch_configuration_arn = params[:launch_configuration_arn]
        type.image_id = params[:image_id]
        type.key_name = params[:key_name]
        type.security_groups = SecurityGroups.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.classic_link_vpc_id = params[:classic_link_vpc_id]
        type.classic_link_vpc_security_groups = ClassicLinkVPCSecurityGroups.build(params[:classic_link_vpc_security_groups], context: "#{context}[:classic_link_vpc_security_groups]") unless params[:classic_link_vpc_security_groups].nil?
        type.user_data = params[:user_data]
        type.instance_type = params[:instance_type]
        type.kernel_id = params[:kernel_id]
        type.ramdisk_id = params[:ramdisk_id]
        type.block_device_mappings = BlockDeviceMappings.build(params[:block_device_mappings], context: "#{context}[:block_device_mappings]") unless params[:block_device_mappings].nil?
        type.instance_monitoring = InstanceMonitoring.build(params[:instance_monitoring], context: "#{context}[:instance_monitoring]") unless params[:instance_monitoring].nil?
        type.spot_price = params[:spot_price]
        type.iam_instance_profile = params[:iam_instance_profile]
        type.created_time = params[:created_time]
        type.ebs_optimized = params[:ebs_optimized]
        type.associate_public_ip_address = params[:associate_public_ip_address]
        type.placement_tenancy = params[:placement_tenancy]
        type.metadata_options = InstanceMetadataOptions.build(params[:metadata_options], context: "#{context}[:metadata_options]") unless params[:metadata_options].nil?
        type
      end
    end

    module LaunchConfigurationNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LaunchConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LaunchConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LaunchTemplate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchTemplate, context: context)
        type = Types::LaunchTemplate.new
        type.launch_template_specification = LaunchTemplateSpecification.build(params[:launch_template_specification], context: "#{context}[:launch_template_specification]") unless params[:launch_template_specification].nil?
        type.overrides = Overrides.build(params[:overrides], context: "#{context}[:overrides]") unless params[:overrides].nil?
        type
      end
    end

    module LaunchTemplateOverrides
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchTemplateOverrides, context: context)
        type = Types::LaunchTemplateOverrides.new
        type.instance_type = params[:instance_type]
        type.weighted_capacity = params[:weighted_capacity]
        type.launch_template_specification = LaunchTemplateSpecification.build(params[:launch_template_specification], context: "#{context}[:launch_template_specification]") unless params[:launch_template_specification].nil?
        type.instance_requirements = InstanceRequirements.build(params[:instance_requirements], context: "#{context}[:instance_requirements]") unless params[:instance_requirements].nil?
        type
      end
    end

    module LaunchTemplateSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchTemplateSpecification, context: context)
        type = Types::LaunchTemplateSpecification.new
        type.launch_template_id = params[:launch_template_id]
        type.launch_template_name = params[:launch_template_name]
        type.version = params[:version]
        type
      end
    end

    module LifecycleHook
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LifecycleHook, context: context)
        type = Types::LifecycleHook.new
        type.lifecycle_hook_name = params[:lifecycle_hook_name]
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.lifecycle_transition = params[:lifecycle_transition]
        type.notification_target_arn = params[:notification_target_arn]
        type.role_arn = params[:role_arn]
        type.notification_metadata = params[:notification_metadata]
        type.heartbeat_timeout = params[:heartbeat_timeout]
        type.global_timeout = params[:global_timeout]
        type.default_result = params[:default_result]
        type
      end
    end

    module LifecycleHookNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LifecycleHookSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LifecycleHookSpecification, context: context)
        type = Types::LifecycleHookSpecification.new
        type.lifecycle_hook_name = params[:lifecycle_hook_name]
        type.lifecycle_transition = params[:lifecycle_transition]
        type.notification_metadata = params[:notification_metadata]
        type.heartbeat_timeout = params[:heartbeat_timeout]
        type.default_result = params[:default_result]
        type.notification_target_arn = params[:notification_target_arn]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module LifecycleHookSpecifications
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LifecycleHookSpecification.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LifecycleHooks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LifecycleHook.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LimitExceededFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededFault, context: context)
        type = Types::LimitExceededFault.new
        type.message = params[:message]
        type
      end
    end

    module LoadBalancerNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LoadBalancerState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoadBalancerState, context: context)
        type = Types::LoadBalancerState.new
        type.load_balancer_name = params[:load_balancer_name]
        type.state = params[:state]
        type
      end
    end

    module LoadBalancerStates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LoadBalancerState.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LoadBalancerTargetGroupState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoadBalancerTargetGroupState, context: context)
        type = Types::LoadBalancerTargetGroupState.new
        type.load_balancer_target_group_arn = params[:load_balancer_target_group_arn]
        type.state = params[:state]
        type
      end
    end

    module LoadBalancerTargetGroupStates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LoadBalancerTargetGroupState.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LoadForecast
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoadForecast, context: context)
        type = Types::LoadForecast.new
        type.timestamps = PredictiveScalingForecastTimestamps.build(params[:timestamps], context: "#{context}[:timestamps]") unless params[:timestamps].nil?
        type.values = PredictiveScalingForecastValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.metric_specification = PredictiveScalingMetricSpecification.build(params[:metric_specification], context: "#{context}[:metric_specification]") unless params[:metric_specification].nil?
        type
      end
    end

    module LoadForecasts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LoadForecast.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LocalStorageTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module MemoryGiBPerVCpuRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MemoryGiBPerVCpuRequest, context: context)
        type = Types::MemoryGiBPerVCpuRequest.new
        type.min = params[:min]
        type.max = params[:max]
        type
      end
    end

    module MemoryMiBRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MemoryMiBRequest, context: context)
        type = Types::MemoryMiBRequest.new
        type.min = params[:min]
        type.max = params[:max]
        type
      end
    end

    module Metric
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Metric, context: context)
        type = Types::Metric.new
        type.namespace = params[:namespace]
        type.metric_name = params[:metric_name]
        type.dimensions = MetricDimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type
      end
    end

    module MetricCollectionType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricCollectionType, context: context)
        type = Types::MetricCollectionType.new
        type.metric = params[:metric]
        type
      end
    end

    module MetricCollectionTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricCollectionType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetricDataQueries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricDataQuery.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetricDataQuery
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricDataQuery, context: context)
        type = Types::MetricDataQuery.new
        type.id = params[:id]
        type.expression = params[:expression]
        type.metric_stat = MetricStat.build(params[:metric_stat], context: "#{context}[:metric_stat]") unless params[:metric_stat].nil?
        type.label = params[:label]
        type.return_data = params[:return_data]
        type
      end
    end

    module MetricDimension
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricDimension, context: context)
        type = Types::MetricDimension.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module MetricDimensions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricDimension.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetricGranularityType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricGranularityType, context: context)
        type = Types::MetricGranularityType.new
        type.granularity = params[:granularity]
        type
      end
    end

    module MetricGranularityTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricGranularityType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetricStat
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricStat, context: context)
        type = Types::MetricStat.new
        type.metric = Metric.build(params[:metric], context: "#{context}[:metric]") unless params[:metric].nil?
        type.stat = params[:stat]
        type.unit = params[:unit]
        type
      end
    end

    module Metrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module MixedInstancesPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MixedInstancesPolicy, context: context)
        type = Types::MixedInstancesPolicy.new
        type.launch_template = LaunchTemplate.build(params[:launch_template], context: "#{context}[:launch_template]") unless params[:launch_template].nil?
        type.instances_distribution = InstancesDistribution.build(params[:instances_distribution], context: "#{context}[:instances_distribution]") unless params[:instances_distribution].nil?
        type
      end
    end

    module NetworkInterfaceCountRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkInterfaceCountRequest, context: context)
        type = Types::NetworkInterfaceCountRequest.new
        type.min = params[:min]
        type.max = params[:max]
        type
      end
    end

    module NotificationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotificationConfiguration, context: context)
        type = Types::NotificationConfiguration.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.topic_arn = params[:topic_arn]
        type.notification_type = params[:notification_type]
        type
      end
    end

    module NotificationConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NotificationConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Overrides
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LaunchTemplateOverrides.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PolicyNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PolicyTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PredefinedMetricSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PredefinedMetricSpecification, context: context)
        type = Types::PredefinedMetricSpecification.new
        type.predefined_metric_type = params[:predefined_metric_type]
        type.resource_label = params[:resource_label]
        type
      end
    end

    module PredictiveScalingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PredictiveScalingConfiguration, context: context)
        type = Types::PredictiveScalingConfiguration.new
        type.metric_specifications = PredictiveScalingMetricSpecifications.build(params[:metric_specifications], context: "#{context}[:metric_specifications]") unless params[:metric_specifications].nil?
        type.mode = params[:mode]
        type.scheduling_buffer_time = params[:scheduling_buffer_time]
        type.max_capacity_breach_behavior = params[:max_capacity_breach_behavior]
        type.max_capacity_buffer = params[:max_capacity_buffer]
        type
      end
    end

    module PredictiveScalingCustomizedCapacityMetric
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PredictiveScalingCustomizedCapacityMetric, context: context)
        type = Types::PredictiveScalingCustomizedCapacityMetric.new
        type.metric_data_queries = MetricDataQueries.build(params[:metric_data_queries], context: "#{context}[:metric_data_queries]") unless params[:metric_data_queries].nil?
        type
      end
    end

    module PredictiveScalingCustomizedLoadMetric
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PredictiveScalingCustomizedLoadMetric, context: context)
        type = Types::PredictiveScalingCustomizedLoadMetric.new
        type.metric_data_queries = MetricDataQueries.build(params[:metric_data_queries], context: "#{context}[:metric_data_queries]") unless params[:metric_data_queries].nil?
        type
      end
    end

    module PredictiveScalingCustomizedScalingMetric
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PredictiveScalingCustomizedScalingMetric, context: context)
        type = Types::PredictiveScalingCustomizedScalingMetric.new
        type.metric_data_queries = MetricDataQueries.build(params[:metric_data_queries], context: "#{context}[:metric_data_queries]") unless params[:metric_data_queries].nil?
        type
      end
    end

    module PredictiveScalingForecastTimestamps
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PredictiveScalingForecastValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PredictiveScalingMetricSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PredictiveScalingMetricSpecification, context: context)
        type = Types::PredictiveScalingMetricSpecification.new
        type.target_value = params[:target_value]
        type.predefined_metric_pair_specification = PredictiveScalingPredefinedMetricPair.build(params[:predefined_metric_pair_specification], context: "#{context}[:predefined_metric_pair_specification]") unless params[:predefined_metric_pair_specification].nil?
        type.predefined_scaling_metric_specification = PredictiveScalingPredefinedScalingMetric.build(params[:predefined_scaling_metric_specification], context: "#{context}[:predefined_scaling_metric_specification]") unless params[:predefined_scaling_metric_specification].nil?
        type.predefined_load_metric_specification = PredictiveScalingPredefinedLoadMetric.build(params[:predefined_load_metric_specification], context: "#{context}[:predefined_load_metric_specification]") unless params[:predefined_load_metric_specification].nil?
        type.customized_scaling_metric_specification = PredictiveScalingCustomizedScalingMetric.build(params[:customized_scaling_metric_specification], context: "#{context}[:customized_scaling_metric_specification]") unless params[:customized_scaling_metric_specification].nil?
        type.customized_load_metric_specification = PredictiveScalingCustomizedLoadMetric.build(params[:customized_load_metric_specification], context: "#{context}[:customized_load_metric_specification]") unless params[:customized_load_metric_specification].nil?
        type.customized_capacity_metric_specification = PredictiveScalingCustomizedCapacityMetric.build(params[:customized_capacity_metric_specification], context: "#{context}[:customized_capacity_metric_specification]") unless params[:customized_capacity_metric_specification].nil?
        type
      end
    end

    module PredictiveScalingMetricSpecifications
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PredictiveScalingMetricSpecification.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PredictiveScalingPredefinedLoadMetric
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PredictiveScalingPredefinedLoadMetric, context: context)
        type = Types::PredictiveScalingPredefinedLoadMetric.new
        type.predefined_metric_type = params[:predefined_metric_type]
        type.resource_label = params[:resource_label]
        type
      end
    end

    module PredictiveScalingPredefinedMetricPair
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PredictiveScalingPredefinedMetricPair, context: context)
        type = Types::PredictiveScalingPredefinedMetricPair.new
        type.predefined_metric_type = params[:predefined_metric_type]
        type.resource_label = params[:resource_label]
        type
      end
    end

    module PredictiveScalingPredefinedScalingMetric
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PredictiveScalingPredefinedScalingMetric, context: context)
        type = Types::PredictiveScalingPredefinedScalingMetric.new
        type.predefined_metric_type = params[:predefined_metric_type]
        type.resource_label = params[:resource_label]
        type
      end
    end

    module ProcessNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ProcessType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProcessType, context: context)
        type = Types::ProcessType.new
        type.process_name = params[:process_name]
        type
      end
    end

    module Processes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProcessType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutLifecycleHookInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutLifecycleHookInput, context: context)
        type = Types::PutLifecycleHookInput.new
        type.lifecycle_hook_name = params[:lifecycle_hook_name]
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.lifecycle_transition = params[:lifecycle_transition]
        type.role_arn = params[:role_arn]
        type.notification_target_arn = params[:notification_target_arn]
        type.notification_metadata = params[:notification_metadata]
        type.heartbeat_timeout = params[:heartbeat_timeout]
        type.default_result = params[:default_result]
        type
      end
    end

    module PutLifecycleHookOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutLifecycleHookOutput, context: context)
        type = Types::PutLifecycleHookOutput.new
        type
      end
    end

    module PutNotificationConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutNotificationConfigurationInput, context: context)
        type = Types::PutNotificationConfigurationInput.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.topic_arn = params[:topic_arn]
        type.notification_types = AutoScalingNotificationTypes.build(params[:notification_types], context: "#{context}[:notification_types]") unless params[:notification_types].nil?
        type
      end
    end

    module PutNotificationConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutNotificationConfigurationOutput, context: context)
        type = Types::PutNotificationConfigurationOutput.new
        type
      end
    end

    module PutScalingPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutScalingPolicyInput, context: context)
        type = Types::PutScalingPolicyInput.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.policy_name = params[:policy_name]
        type.policy_type = params[:policy_type]
        type.adjustment_type = params[:adjustment_type]
        type.min_adjustment_step = params[:min_adjustment_step]
        type.min_adjustment_magnitude = params[:min_adjustment_magnitude]
        type.scaling_adjustment = params[:scaling_adjustment]
        type.cooldown = params[:cooldown]
        type.metric_aggregation_type = params[:metric_aggregation_type]
        type.step_adjustments = StepAdjustments.build(params[:step_adjustments], context: "#{context}[:step_adjustments]") unless params[:step_adjustments].nil?
        type.estimated_instance_warmup = params[:estimated_instance_warmup]
        type.target_tracking_configuration = TargetTrackingConfiguration.build(params[:target_tracking_configuration], context: "#{context}[:target_tracking_configuration]") unless params[:target_tracking_configuration].nil?
        type.enabled = params[:enabled]
        type.predictive_scaling_configuration = PredictiveScalingConfiguration.build(params[:predictive_scaling_configuration], context: "#{context}[:predictive_scaling_configuration]") unless params[:predictive_scaling_configuration].nil?
        type
      end
    end

    module PutScalingPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutScalingPolicyOutput, context: context)
        type = Types::PutScalingPolicyOutput.new
        type.policy_arn = params[:policy_arn]
        type.alarms = Alarms.build(params[:alarms], context: "#{context}[:alarms]") unless params[:alarms].nil?
        type
      end
    end

    module PutScheduledUpdateGroupActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutScheduledUpdateGroupActionInput, context: context)
        type = Types::PutScheduledUpdateGroupActionInput.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.scheduled_action_name = params[:scheduled_action_name]
        type.time = params[:time]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.recurrence = params[:recurrence]
        type.min_size = params[:min_size]
        type.max_size = params[:max_size]
        type.desired_capacity = params[:desired_capacity]
        type.time_zone = params[:time_zone]
        type
      end
    end

    module PutScheduledUpdateGroupActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutScheduledUpdateGroupActionOutput, context: context)
        type = Types::PutScheduledUpdateGroupActionOutput.new
        type
      end
    end

    module PutWarmPoolInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutWarmPoolInput, context: context)
        type = Types::PutWarmPoolInput.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.max_group_prepared_capacity = params[:max_group_prepared_capacity]
        type.min_size = params[:min_size]
        type.pool_state = params[:pool_state]
        type.instance_reuse_policy = InstanceReusePolicy.build(params[:instance_reuse_policy], context: "#{context}[:instance_reuse_policy]") unless params[:instance_reuse_policy].nil?
        type
      end
    end

    module PutWarmPoolOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutWarmPoolOutput, context: context)
        type = Types::PutWarmPoolOutput.new
        type
      end
    end

    module RecordLifecycleActionHeartbeatInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecordLifecycleActionHeartbeatInput, context: context)
        type = Types::RecordLifecycleActionHeartbeatInput.new
        type.lifecycle_hook_name = params[:lifecycle_hook_name]
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.lifecycle_action_token = params[:lifecycle_action_token]
        type.instance_id = params[:instance_id]
        type
      end
    end

    module RecordLifecycleActionHeartbeatOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecordLifecycleActionHeartbeatOutput, context: context)
        type = Types::RecordLifecycleActionHeartbeatOutput.new
        type
      end
    end

    module RefreshPreferences
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RefreshPreferences, context: context)
        type = Types::RefreshPreferences.new
        type.min_healthy_percentage = params[:min_healthy_percentage]
        type.instance_warmup = params[:instance_warmup]
        type.checkpoint_percentages = CheckpointPercentages.build(params[:checkpoint_percentages], context: "#{context}[:checkpoint_percentages]") unless params[:checkpoint_percentages].nil?
        type.checkpoint_delay = params[:checkpoint_delay]
        type.skip_matching = params[:skip_matching]
        type
      end
    end

    module ResourceContentionFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceContentionFault, context: context)
        type = Types::ResourceContentionFault.new
        type.message = params[:message]
        type
      end
    end

    module ResourceInUseFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInUseFault, context: context)
        type = Types::ResourceInUseFault.new
        type.message = params[:message]
        type
      end
    end

    module ResumeProcessesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResumeProcessesInput, context: context)
        type = Types::ResumeProcessesInput.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.scaling_processes = ProcessNames.build(params[:scaling_processes], context: "#{context}[:scaling_processes]") unless params[:scaling_processes].nil?
        type
      end
    end

    module ResumeProcessesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResumeProcessesOutput, context: context)
        type = Types::ResumeProcessesOutput.new
        type
      end
    end

    module ScalingActivityInProgressFault
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScalingActivityInProgressFault, context: context)
        type = Types::ScalingActivityInProgressFault.new
        type.message = params[:message]
        type
      end
    end

    module ScalingPolicies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ScalingPolicy.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ScalingPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScalingPolicy, context: context)
        type = Types::ScalingPolicy.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.policy_name = params[:policy_name]
        type.policy_arn = params[:policy_arn]
        type.policy_type = params[:policy_type]
        type.adjustment_type = params[:adjustment_type]
        type.min_adjustment_step = params[:min_adjustment_step]
        type.min_adjustment_magnitude = params[:min_adjustment_magnitude]
        type.scaling_adjustment = params[:scaling_adjustment]
        type.cooldown = params[:cooldown]
        type.step_adjustments = StepAdjustments.build(params[:step_adjustments], context: "#{context}[:step_adjustments]") unless params[:step_adjustments].nil?
        type.metric_aggregation_type = params[:metric_aggregation_type]
        type.estimated_instance_warmup = params[:estimated_instance_warmup]
        type.alarms = Alarms.build(params[:alarms], context: "#{context}[:alarms]") unless params[:alarms].nil?
        type.target_tracking_configuration = TargetTrackingConfiguration.build(params[:target_tracking_configuration], context: "#{context}[:target_tracking_configuration]") unless params[:target_tracking_configuration].nil?
        type.enabled = params[:enabled]
        type.predictive_scaling_configuration = PredictiveScalingConfiguration.build(params[:predictive_scaling_configuration], context: "#{context}[:predictive_scaling_configuration]") unless params[:predictive_scaling_configuration].nil?
        type
      end
    end

    module ScheduledActionNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ScheduledUpdateGroupAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduledUpdateGroupAction, context: context)
        type = Types::ScheduledUpdateGroupAction.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.scheduled_action_name = params[:scheduled_action_name]
        type.scheduled_action_arn = params[:scheduled_action_arn]
        type.time = params[:time]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.recurrence = params[:recurrence]
        type.min_size = params[:min_size]
        type.max_size = params[:max_size]
        type.desired_capacity = params[:desired_capacity]
        type.time_zone = params[:time_zone]
        type
      end
    end

    module ScheduledUpdateGroupActionRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduledUpdateGroupActionRequest, context: context)
        type = Types::ScheduledUpdateGroupActionRequest.new
        type.scheduled_action_name = params[:scheduled_action_name]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.recurrence = params[:recurrence]
        type.min_size = params[:min_size]
        type.max_size = params[:max_size]
        type.desired_capacity = params[:desired_capacity]
        type.time_zone = params[:time_zone]
        type
      end
    end

    module ScheduledUpdateGroupActionRequests
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ScheduledUpdateGroupActionRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ScheduledUpdateGroupActions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ScheduledUpdateGroupAction.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SecurityGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ServiceLinkedRoleFailure
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceLinkedRoleFailure, context: context)
        type = Types::ServiceLinkedRoleFailure.new
        type.message = params[:message]
        type
      end
    end

    module SetDesiredCapacityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetDesiredCapacityInput, context: context)
        type = Types::SetDesiredCapacityInput.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.desired_capacity = params[:desired_capacity]
        type.honor_cooldown = params[:honor_cooldown]
        type
      end
    end

    module SetDesiredCapacityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetDesiredCapacityOutput, context: context)
        type = Types::SetDesiredCapacityOutput.new
        type
      end
    end

    module SetInstanceHealthInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetInstanceHealthInput, context: context)
        type = Types::SetInstanceHealthInput.new
        type.instance_id = params[:instance_id]
        type.health_status = params[:health_status]
        type.should_respect_grace_period = params[:should_respect_grace_period]
        type
      end
    end

    module SetInstanceHealthOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetInstanceHealthOutput, context: context)
        type = Types::SetInstanceHealthOutput.new
        type
      end
    end

    module SetInstanceProtectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetInstanceProtectionInput, context: context)
        type = Types::SetInstanceProtectionInput.new
        type.instance_ids = InstanceIds.build(params[:instance_ids], context: "#{context}[:instance_ids]") unless params[:instance_ids].nil?
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.protected_from_scale_in = params[:protected_from_scale_in]
        type
      end
    end

    module SetInstanceProtectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetInstanceProtectionOutput, context: context)
        type = Types::SetInstanceProtectionOutput.new
        type
      end
    end

    module StartInstanceRefreshInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartInstanceRefreshInput, context: context)
        type = Types::StartInstanceRefreshInput.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.strategy = params[:strategy]
        type.desired_configuration = DesiredConfiguration.build(params[:desired_configuration], context: "#{context}[:desired_configuration]") unless params[:desired_configuration].nil?
        type.preferences = RefreshPreferences.build(params[:preferences], context: "#{context}[:preferences]") unless params[:preferences].nil?
        type
      end
    end

    module StartInstanceRefreshOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartInstanceRefreshOutput, context: context)
        type = Types::StartInstanceRefreshOutput.new
        type.instance_refresh_id = params[:instance_refresh_id]
        type
      end
    end

    module StepAdjustment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StepAdjustment, context: context)
        type = Types::StepAdjustment.new
        type.metric_interval_lower_bound = params[:metric_interval_lower_bound]
        type.metric_interval_upper_bound = params[:metric_interval_upper_bound]
        type.scaling_adjustment = params[:scaling_adjustment]
        type
      end
    end

    module StepAdjustments
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StepAdjustment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SuspendProcessesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SuspendProcessesInput, context: context)
        type = Types::SuspendProcessesInput.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.scaling_processes = ProcessNames.build(params[:scaling_processes], context: "#{context}[:scaling_processes]") unless params[:scaling_processes].nil?
        type
      end
    end

    module SuspendProcessesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SuspendProcessesOutput, context: context)
        type = Types::SuspendProcessesOutput.new
        type
      end
    end

    module SuspendedProcess
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SuspendedProcess, context: context)
        type = Types::SuspendedProcess.new
        type.process_name = params[:process_name]
        type.suspension_reason = params[:suspension_reason]
        type
      end
    end

    module SuspendedProcesses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SuspendedProcess.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type.key = params[:key]
        type.value = params[:value]
        type.propagate_at_launch = params[:propagate_at_launch]
        type
      end
    end

    module TagDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagDescription, context: context)
        type = Types::TagDescription.new
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type.key = params[:key]
        type.value = params[:value]
        type.propagate_at_launch = params[:propagate_at_launch]
        type
      end
    end

    module TagDescriptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TagDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TargetGroupARNs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TargetTrackingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetTrackingConfiguration, context: context)
        type = Types::TargetTrackingConfiguration.new
        type.predefined_metric_specification = PredefinedMetricSpecification.build(params[:predefined_metric_specification], context: "#{context}[:predefined_metric_specification]") unless params[:predefined_metric_specification].nil?
        type.customized_metric_specification = CustomizedMetricSpecification.build(params[:customized_metric_specification], context: "#{context}[:customized_metric_specification]") unless params[:customized_metric_specification].nil?
        type.target_value = params[:target_value]
        type.disable_scale_in = params[:disable_scale_in]
        type
      end
    end

    module TerminateInstanceInAutoScalingGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TerminateInstanceInAutoScalingGroupInput, context: context)
        type = Types::TerminateInstanceInAutoScalingGroupInput.new
        type.instance_id = params[:instance_id]
        type.should_decrement_desired_capacity = params[:should_decrement_desired_capacity]
        type
      end
    end

    module TerminateInstanceInAutoScalingGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TerminateInstanceInAutoScalingGroupOutput, context: context)
        type = Types::TerminateInstanceInAutoScalingGroupOutput.new
        type.activity = Activity.build(params[:activity], context: "#{context}[:activity]") unless params[:activity].nil?
        type
      end
    end

    module TerminationPolicies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TotalLocalStorageGBRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TotalLocalStorageGBRequest, context: context)
        type = Types::TotalLocalStorageGBRequest.new
        type.min = params[:min]
        type.max = params[:max]
        type
      end
    end

    module UpdateAutoScalingGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAutoScalingGroupInput, context: context)
        type = Types::UpdateAutoScalingGroupInput.new
        type.auto_scaling_group_name = params[:auto_scaling_group_name]
        type.launch_configuration_name = params[:launch_configuration_name]
        type.launch_template = LaunchTemplateSpecification.build(params[:launch_template], context: "#{context}[:launch_template]") unless params[:launch_template].nil?
        type.mixed_instances_policy = MixedInstancesPolicy.build(params[:mixed_instances_policy], context: "#{context}[:mixed_instances_policy]") unless params[:mixed_instances_policy].nil?
        type.min_size = params[:min_size]
        type.max_size = params[:max_size]
        type.desired_capacity = params[:desired_capacity]
        type.default_cooldown = params[:default_cooldown]
        type.availability_zones = AvailabilityZones.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type.health_check_type = params[:health_check_type]
        type.health_check_grace_period = params[:health_check_grace_period]
        type.placement_group = params[:placement_group]
        type.vpc_zone_identifier = params[:vpc_zone_identifier]
        type.termination_policies = TerminationPolicies.build(params[:termination_policies], context: "#{context}[:termination_policies]") unless params[:termination_policies].nil?
        type.new_instances_protected_from_scale_in = params[:new_instances_protected_from_scale_in]
        type.service_linked_role_arn = params[:service_linked_role_arn]
        type.max_instance_lifetime = params[:max_instance_lifetime]
        type.capacity_rebalance = params[:capacity_rebalance]
        type.context = params[:context]
        type.desired_capacity_type = params[:desired_capacity_type]
        type.default_instance_warmup = params[:default_instance_warmup]
        type
      end
    end

    module UpdateAutoScalingGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAutoScalingGroupOutput, context: context)
        type = Types::UpdateAutoScalingGroupOutput.new
        type
      end
    end

    module VCpuCountRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VCpuCountRequest, context: context)
        type = Types::VCpuCountRequest.new
        type.min = params[:min]
        type.max = params[:max]
        type
      end
    end

    module Values
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module WarmPoolConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WarmPoolConfiguration, context: context)
        type = Types::WarmPoolConfiguration.new
        type.max_group_prepared_capacity = params[:max_group_prepared_capacity]
        type.min_size = params[:min_size]
        type.pool_state = params[:pool_state]
        type.status = params[:status]
        type.instance_reuse_policy = InstanceReusePolicy.build(params[:instance_reuse_policy], context: "#{context}[:instance_reuse_policy]") unless params[:instance_reuse_policy].nil?
        type
      end
    end

  end
end
