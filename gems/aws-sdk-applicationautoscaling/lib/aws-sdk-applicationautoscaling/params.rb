# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::ApplicationAutoScaling
  module Params

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

    module ConcurrentUpdateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConcurrentUpdateException, context: context)
        type = Types::ConcurrentUpdateException.new
        type.message = params[:message]
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

    module DeleteScalingPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteScalingPolicyInput, context: context)
        type = Types::DeleteScalingPolicyInput.new
        type.policy_name = params[:policy_name]
        type.service_namespace = params[:service_namespace]
        type.resource_id = params[:resource_id]
        type.scalable_dimension = params[:scalable_dimension]
        type
      end
    end

    module DeleteScalingPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteScalingPolicyOutput, context: context)
        type = Types::DeleteScalingPolicyOutput.new
        type
      end
    end

    module DeleteScheduledActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteScheduledActionInput, context: context)
        type = Types::DeleteScheduledActionInput.new
        type.service_namespace = params[:service_namespace]
        type.scheduled_action_name = params[:scheduled_action_name]
        type.resource_id = params[:resource_id]
        type.scalable_dimension = params[:scalable_dimension]
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

    module DeregisterScalableTargetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterScalableTargetInput, context: context)
        type = Types::DeregisterScalableTargetInput.new
        type.service_namespace = params[:service_namespace]
        type.resource_id = params[:resource_id]
        type.scalable_dimension = params[:scalable_dimension]
        type
      end
    end

    module DeregisterScalableTargetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterScalableTargetOutput, context: context)
        type = Types::DeregisterScalableTargetOutput.new
        type
      end
    end

    module DescribeScalableTargetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScalableTargetsInput, context: context)
        type = Types::DescribeScalableTargetsInput.new
        type.service_namespace = params[:service_namespace]
        type.resource_ids = ResourceIdsMaxLen1600.build(params[:resource_ids], context: "#{context}[:resource_ids]") unless params[:resource_ids].nil?
        type.scalable_dimension = params[:scalable_dimension]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeScalableTargetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScalableTargetsOutput, context: context)
        type = Types::DescribeScalableTargetsOutput.new
        type.scalable_targets = ScalableTargets.build(params[:scalable_targets], context: "#{context}[:scalable_targets]") unless params[:scalable_targets].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeScalingActivitiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScalingActivitiesInput, context: context)
        type = Types::DescribeScalingActivitiesInput.new
        type.service_namespace = params[:service_namespace]
        type.resource_id = params[:resource_id]
        type.scalable_dimension = params[:scalable_dimension]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeScalingActivitiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScalingActivitiesOutput, context: context)
        type = Types::DescribeScalingActivitiesOutput.new
        type.scaling_activities = ScalingActivities.build(params[:scaling_activities], context: "#{context}[:scaling_activities]") unless params[:scaling_activities].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeScalingPoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScalingPoliciesInput, context: context)
        type = Types::DescribeScalingPoliciesInput.new
        type.policy_names = ResourceIdsMaxLen1600.build(params[:policy_names], context: "#{context}[:policy_names]") unless params[:policy_names].nil?
        type.service_namespace = params[:service_namespace]
        type.resource_id = params[:resource_id]
        type.scalable_dimension = params[:scalable_dimension]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeScalingPoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScalingPoliciesOutput, context: context)
        type = Types::DescribeScalingPoliciesOutput.new
        type.scaling_policies = ScalingPolicies.build(params[:scaling_policies], context: "#{context}[:scaling_policies]") unless params[:scaling_policies].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeScheduledActionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScheduledActionsInput, context: context)
        type = Types::DescribeScheduledActionsInput.new
        type.scheduled_action_names = ResourceIdsMaxLen1600.build(params[:scheduled_action_names], context: "#{context}[:scheduled_action_names]") unless params[:scheduled_action_names].nil?
        type.service_namespace = params[:service_namespace]
        type.resource_id = params[:resource_id]
        type.scalable_dimension = params[:scalable_dimension]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeScheduledActionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScheduledActionsOutput, context: context)
        type = Types::DescribeScheduledActionsOutput.new
        type.scheduled_actions = ScheduledActions.build(params[:scheduled_actions], context: "#{context}[:scheduled_actions]") unless params[:scheduled_actions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module FailedResourceAccessException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailedResourceAccessException, context: context)
        type = Types::FailedResourceAccessException.new
        type.message = params[:message]
        type
      end
    end

    module InternalServiceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServiceException, context: context)
        type = Types::InternalServiceException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidNextTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidNextTokenException, context: context)
        type = Types::InvalidNextTokenException.new
        type.message = params[:message]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
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

    module ObjectNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ObjectNotFoundException, context: context)
        type = Types::ObjectNotFoundException.new
        type.message = params[:message]
        type
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

    module PutScalingPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutScalingPolicyInput, context: context)
        type = Types::PutScalingPolicyInput.new
        type.policy_name = params[:policy_name]
        type.service_namespace = params[:service_namespace]
        type.resource_id = params[:resource_id]
        type.scalable_dimension = params[:scalable_dimension]
        type.policy_type = params[:policy_type]
        type.step_scaling_policy_configuration = StepScalingPolicyConfiguration.build(params[:step_scaling_policy_configuration], context: "#{context}[:step_scaling_policy_configuration]") unless params[:step_scaling_policy_configuration].nil?
        type.target_tracking_scaling_policy_configuration = TargetTrackingScalingPolicyConfiguration.build(params[:target_tracking_scaling_policy_configuration], context: "#{context}[:target_tracking_scaling_policy_configuration]") unless params[:target_tracking_scaling_policy_configuration].nil?
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

    module PutScheduledActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutScheduledActionInput, context: context)
        type = Types::PutScheduledActionInput.new
        type.service_namespace = params[:service_namespace]
        type.schedule = params[:schedule]
        type.timezone = params[:timezone]
        type.scheduled_action_name = params[:scheduled_action_name]
        type.resource_id = params[:resource_id]
        type.scalable_dimension = params[:scalable_dimension]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.scalable_target_action = ScalableTargetAction.build(params[:scalable_target_action], context: "#{context}[:scalable_target_action]") unless params[:scalable_target_action].nil?
        type
      end
    end

    module PutScheduledActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutScheduledActionOutput, context: context)
        type = Types::PutScheduledActionOutput.new
        type
      end
    end

    module RegisterScalableTargetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterScalableTargetInput, context: context)
        type = Types::RegisterScalableTargetInput.new
        type.service_namespace = params[:service_namespace]
        type.resource_id = params[:resource_id]
        type.scalable_dimension = params[:scalable_dimension]
        type.min_capacity = params[:min_capacity]
        type.max_capacity = params[:max_capacity]
        type.role_arn = params[:role_arn]
        type.suspended_state = SuspendedState.build(params[:suspended_state], context: "#{context}[:suspended_state]") unless params[:suspended_state].nil?
        type
      end
    end

    module RegisterScalableTargetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterScalableTargetOutput, context: context)
        type = Types::RegisterScalableTargetOutput.new
        type
      end
    end

    module ResourceIdsMaxLen1600
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ScalableTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScalableTarget, context: context)
        type = Types::ScalableTarget.new
        type.service_namespace = params[:service_namespace]
        type.resource_id = params[:resource_id]
        type.scalable_dimension = params[:scalable_dimension]
        type.min_capacity = params[:min_capacity]
        type.max_capacity = params[:max_capacity]
        type.role_arn = params[:role_arn]
        type.creation_time = params[:creation_time]
        type.suspended_state = SuspendedState.build(params[:suspended_state], context: "#{context}[:suspended_state]") unless params[:suspended_state].nil?
        type
      end
    end

    module ScalableTargetAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScalableTargetAction, context: context)
        type = Types::ScalableTargetAction.new
        type.min_capacity = params[:min_capacity]
        type.max_capacity = params[:max_capacity]
        type
      end
    end

    module ScalableTargets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ScalableTarget.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ScalingActivities
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ScalingActivity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ScalingActivity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScalingActivity, context: context)
        type = Types::ScalingActivity.new
        type.activity_id = params[:activity_id]
        type.service_namespace = params[:service_namespace]
        type.resource_id = params[:resource_id]
        type.scalable_dimension = params[:scalable_dimension]
        type.description = params[:description]
        type.cause = params[:cause]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.status_code = params[:status_code]
        type.status_message = params[:status_message]
        type.details = params[:details]
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
        type.policy_arn = params[:policy_arn]
        type.policy_name = params[:policy_name]
        type.service_namespace = params[:service_namespace]
        type.resource_id = params[:resource_id]
        type.scalable_dimension = params[:scalable_dimension]
        type.policy_type = params[:policy_type]
        type.step_scaling_policy_configuration = StepScalingPolicyConfiguration.build(params[:step_scaling_policy_configuration], context: "#{context}[:step_scaling_policy_configuration]") unless params[:step_scaling_policy_configuration].nil?
        type.target_tracking_scaling_policy_configuration = TargetTrackingScalingPolicyConfiguration.build(params[:target_tracking_scaling_policy_configuration], context: "#{context}[:target_tracking_scaling_policy_configuration]") unless params[:target_tracking_scaling_policy_configuration].nil?
        type.alarms = Alarms.build(params[:alarms], context: "#{context}[:alarms]") unless params[:alarms].nil?
        type.creation_time = params[:creation_time]
        type
      end
    end

    module ScheduledAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduledAction, context: context)
        type = Types::ScheduledAction.new
        type.scheduled_action_name = params[:scheduled_action_name]
        type.scheduled_action_arn = params[:scheduled_action_arn]
        type.service_namespace = params[:service_namespace]
        type.schedule = params[:schedule]
        type.timezone = params[:timezone]
        type.resource_id = params[:resource_id]
        type.scalable_dimension = params[:scalable_dimension]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.scalable_target_action = ScalableTargetAction.build(params[:scalable_target_action], context: "#{context}[:scalable_target_action]") unless params[:scalable_target_action].nil?
        type.creation_time = params[:creation_time]
        type
      end
    end

    module ScheduledActions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ScheduledAction.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module StepScalingPolicyConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StepScalingPolicyConfiguration, context: context)
        type = Types::StepScalingPolicyConfiguration.new
        type.adjustment_type = params[:adjustment_type]
        type.step_adjustments = StepAdjustments.build(params[:step_adjustments], context: "#{context}[:step_adjustments]") unless params[:step_adjustments].nil?
        type.min_adjustment_magnitude = params[:min_adjustment_magnitude]
        type.cooldown = params[:cooldown]
        type.metric_aggregation_type = params[:metric_aggregation_type]
        type
      end
    end

    module SuspendedState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SuspendedState, context: context)
        type = Types::SuspendedState.new
        type.dynamic_scaling_in_suspended = params[:dynamic_scaling_in_suspended]
        type.dynamic_scaling_out_suspended = params[:dynamic_scaling_out_suspended]
        type.scheduled_scaling_suspended = params[:scheduled_scaling_suspended]
        type
      end
    end

    module TargetTrackingScalingPolicyConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetTrackingScalingPolicyConfiguration, context: context)
        type = Types::TargetTrackingScalingPolicyConfiguration.new
        type.target_value = params[:target_value]
        type.predefined_metric_specification = PredefinedMetricSpecification.build(params[:predefined_metric_specification], context: "#{context}[:predefined_metric_specification]") unless params[:predefined_metric_specification].nil?
        type.customized_metric_specification = CustomizedMetricSpecification.build(params[:customized_metric_specification], context: "#{context}[:customized_metric_specification]") unless params[:customized_metric_specification].nil?
        type.scale_out_cooldown = params[:scale_out_cooldown]
        type.scale_in_cooldown = params[:scale_in_cooldown]
        type.disable_scale_in = params[:disable_scale_in]
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

  end
end
