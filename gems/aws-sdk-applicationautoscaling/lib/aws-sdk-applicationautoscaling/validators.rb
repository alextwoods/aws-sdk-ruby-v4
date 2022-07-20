# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::ApplicationAutoScaling
  module Validators

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
          Alarm.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConcurrentUpdateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentUpdateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CustomizedMetricSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomizedMetricSpecification, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        MetricDimensions.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
        Hearth::Validator.validate!(input[:statistic], ::String, context: "#{context}[:statistic]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
      end
    end

    class DeleteScalingPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteScalingPolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:service_namespace], ::String, context: "#{context}[:service_namespace]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:scalable_dimension], ::String, context: "#{context}[:scalable_dimension]")
      end
    end

    class DeleteScalingPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteScalingPolicyOutput, context: context)
      end
    end

    class DeleteScheduledActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteScheduledActionInput, context: context)
        Hearth::Validator.validate!(input[:service_namespace], ::String, context: "#{context}[:service_namespace]")
        Hearth::Validator.validate!(input[:scheduled_action_name], ::String, context: "#{context}[:scheduled_action_name]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:scalable_dimension], ::String, context: "#{context}[:scalable_dimension]")
      end
    end

    class DeleteScheduledActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteScheduledActionOutput, context: context)
      end
    end

    class DeregisterScalableTargetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterScalableTargetInput, context: context)
        Hearth::Validator.validate!(input[:service_namespace], ::String, context: "#{context}[:service_namespace]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:scalable_dimension], ::String, context: "#{context}[:scalable_dimension]")
      end
    end

    class DeregisterScalableTargetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterScalableTargetOutput, context: context)
      end
    end

    class DescribeScalableTargetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScalableTargetsInput, context: context)
        Hearth::Validator.validate!(input[:service_namespace], ::String, context: "#{context}[:service_namespace]")
        ResourceIdsMaxLen1600.validate!(input[:resource_ids], context: "#{context}[:resource_ids]") unless input[:resource_ids].nil?
        Hearth::Validator.validate!(input[:scalable_dimension], ::String, context: "#{context}[:scalable_dimension]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeScalableTargetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScalableTargetsOutput, context: context)
        ScalableTargets.validate!(input[:scalable_targets], context: "#{context}[:scalable_targets]") unless input[:scalable_targets].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeScalingActivitiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScalingActivitiesInput, context: context)
        Hearth::Validator.validate!(input[:service_namespace], ::String, context: "#{context}[:service_namespace]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:scalable_dimension], ::String, context: "#{context}[:scalable_dimension]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeScalingActivitiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScalingActivitiesOutput, context: context)
        ScalingActivities.validate!(input[:scaling_activities], context: "#{context}[:scaling_activities]") unless input[:scaling_activities].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeScalingPoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScalingPoliciesInput, context: context)
        ResourceIdsMaxLen1600.validate!(input[:policy_names], context: "#{context}[:policy_names]") unless input[:policy_names].nil?
        Hearth::Validator.validate!(input[:service_namespace], ::String, context: "#{context}[:service_namespace]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:scalable_dimension], ::String, context: "#{context}[:scalable_dimension]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeScalingPoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScalingPoliciesOutput, context: context)
        ScalingPolicies.validate!(input[:scaling_policies], context: "#{context}[:scaling_policies]") unless input[:scaling_policies].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeScheduledActionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScheduledActionsInput, context: context)
        ResourceIdsMaxLen1600.validate!(input[:scheduled_action_names], context: "#{context}[:scheduled_action_names]") unless input[:scheduled_action_names].nil?
        Hearth::Validator.validate!(input[:service_namespace], ::String, context: "#{context}[:service_namespace]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:scalable_dimension], ::String, context: "#{context}[:scalable_dimension]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeScheduledActionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScheduledActionsOutput, context: context)
        ScheduledActions.validate!(input[:scheduled_actions], context: "#{context}[:scheduled_actions]") unless input[:scheduled_actions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class FailedResourceAccessException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailedResourceAccessException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InternalServiceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServiceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidNextTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidNextTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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
          MetricDimension.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ObjectNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ObjectNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PredefinedMetricSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PredefinedMetricSpecification, context: context)
        Hearth::Validator.validate!(input[:predefined_metric_type], ::String, context: "#{context}[:predefined_metric_type]")
        Hearth::Validator.validate!(input[:resource_label], ::String, context: "#{context}[:resource_label]")
      end
    end

    class PutScalingPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutScalingPolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:service_namespace], ::String, context: "#{context}[:service_namespace]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:scalable_dimension], ::String, context: "#{context}[:scalable_dimension]")
        Hearth::Validator.validate!(input[:policy_type], ::String, context: "#{context}[:policy_type]")
        StepScalingPolicyConfiguration.validate!(input[:step_scaling_policy_configuration], context: "#{context}[:step_scaling_policy_configuration]") unless input[:step_scaling_policy_configuration].nil?
        TargetTrackingScalingPolicyConfiguration.validate!(input[:target_tracking_scaling_policy_configuration], context: "#{context}[:target_tracking_scaling_policy_configuration]") unless input[:target_tracking_scaling_policy_configuration].nil?
      end
    end

    class PutScalingPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutScalingPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
        Alarms.validate!(input[:alarms], context: "#{context}[:alarms]") unless input[:alarms].nil?
      end
    end

    class PutScheduledActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutScheduledActionInput, context: context)
        Hearth::Validator.validate!(input[:service_namespace], ::String, context: "#{context}[:service_namespace]")
        Hearth::Validator.validate!(input[:schedule], ::String, context: "#{context}[:schedule]")
        Hearth::Validator.validate!(input[:timezone], ::String, context: "#{context}[:timezone]")
        Hearth::Validator.validate!(input[:scheduled_action_name], ::String, context: "#{context}[:scheduled_action_name]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:scalable_dimension], ::String, context: "#{context}[:scalable_dimension]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        ScalableTargetAction.validate!(input[:scalable_target_action], context: "#{context}[:scalable_target_action]") unless input[:scalable_target_action].nil?
      end
    end

    class PutScheduledActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutScheduledActionOutput, context: context)
      end
    end

    class RegisterScalableTargetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterScalableTargetInput, context: context)
        Hearth::Validator.validate!(input[:service_namespace], ::String, context: "#{context}[:service_namespace]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:scalable_dimension], ::String, context: "#{context}[:scalable_dimension]")
        Hearth::Validator.validate!(input[:min_capacity], ::Integer, context: "#{context}[:min_capacity]")
        Hearth::Validator.validate!(input[:max_capacity], ::Integer, context: "#{context}[:max_capacity]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        SuspendedState.validate!(input[:suspended_state], context: "#{context}[:suspended_state]") unless input[:suspended_state].nil?
      end
    end

    class RegisterScalableTargetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterScalableTargetOutput, context: context)
      end
    end

    class ResourceIdsMaxLen1600
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ScalableTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScalableTarget, context: context)
        Hearth::Validator.validate!(input[:service_namespace], ::String, context: "#{context}[:service_namespace]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:scalable_dimension], ::String, context: "#{context}[:scalable_dimension]")
        Hearth::Validator.validate!(input[:min_capacity], ::Integer, context: "#{context}[:min_capacity]")
        Hearth::Validator.validate!(input[:max_capacity], ::Integer, context: "#{context}[:max_capacity]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        SuspendedState.validate!(input[:suspended_state], context: "#{context}[:suspended_state]") unless input[:suspended_state].nil?
      end
    end

    class ScalableTargetAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScalableTargetAction, context: context)
        Hearth::Validator.validate!(input[:min_capacity], ::Integer, context: "#{context}[:min_capacity]")
        Hearth::Validator.validate!(input[:max_capacity], ::Integer, context: "#{context}[:max_capacity]")
      end
    end

    class ScalableTargets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ScalableTarget.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ScalingActivities
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ScalingActivity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ScalingActivity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScalingActivity, context: context)
        Hearth::Validator.validate!(input[:activity_id], ::String, context: "#{context}[:activity_id]")
        Hearth::Validator.validate!(input[:service_namespace], ::String, context: "#{context}[:service_namespace]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:scalable_dimension], ::String, context: "#{context}[:scalable_dimension]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:cause], ::String, context: "#{context}[:cause]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:details], ::String, context: "#{context}[:details]")
      end
    end

    class ScalingPolicies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ScalingPolicy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ScalingPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScalingPolicy, context: context)
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:service_namespace], ::String, context: "#{context}[:service_namespace]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:scalable_dimension], ::String, context: "#{context}[:scalable_dimension]")
        Hearth::Validator.validate!(input[:policy_type], ::String, context: "#{context}[:policy_type]")
        StepScalingPolicyConfiguration.validate!(input[:step_scaling_policy_configuration], context: "#{context}[:step_scaling_policy_configuration]") unless input[:step_scaling_policy_configuration].nil?
        TargetTrackingScalingPolicyConfiguration.validate!(input[:target_tracking_scaling_policy_configuration], context: "#{context}[:target_tracking_scaling_policy_configuration]") unless input[:target_tracking_scaling_policy_configuration].nil?
        Alarms.validate!(input[:alarms], context: "#{context}[:alarms]") unless input[:alarms].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class ScheduledAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduledAction, context: context)
        Hearth::Validator.validate!(input[:scheduled_action_name], ::String, context: "#{context}[:scheduled_action_name]")
        Hearth::Validator.validate!(input[:scheduled_action_arn], ::String, context: "#{context}[:scheduled_action_arn]")
        Hearth::Validator.validate!(input[:service_namespace], ::String, context: "#{context}[:service_namespace]")
        Hearth::Validator.validate!(input[:schedule], ::String, context: "#{context}[:schedule]")
        Hearth::Validator.validate!(input[:timezone], ::String, context: "#{context}[:timezone]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:scalable_dimension], ::String, context: "#{context}[:scalable_dimension]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        ScalableTargetAction.validate!(input[:scalable_target_action], context: "#{context}[:scalable_target_action]") unless input[:scalable_target_action].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class ScheduledActions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ScheduledAction.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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
          StepAdjustment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StepScalingPolicyConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StepScalingPolicyConfiguration, context: context)
        Hearth::Validator.validate!(input[:adjustment_type], ::String, context: "#{context}[:adjustment_type]")
        StepAdjustments.validate!(input[:step_adjustments], context: "#{context}[:step_adjustments]") unless input[:step_adjustments].nil?
        Hearth::Validator.validate!(input[:min_adjustment_magnitude], ::Integer, context: "#{context}[:min_adjustment_magnitude]")
        Hearth::Validator.validate!(input[:cooldown], ::Integer, context: "#{context}[:cooldown]")
        Hearth::Validator.validate!(input[:metric_aggregation_type], ::String, context: "#{context}[:metric_aggregation_type]")
      end
    end

    class SuspendedState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SuspendedState, context: context)
        Hearth::Validator.validate!(input[:dynamic_scaling_in_suspended], ::TrueClass, ::FalseClass, context: "#{context}[:dynamic_scaling_in_suspended]")
        Hearth::Validator.validate!(input[:dynamic_scaling_out_suspended], ::TrueClass, ::FalseClass, context: "#{context}[:dynamic_scaling_out_suspended]")
        Hearth::Validator.validate!(input[:scheduled_scaling_suspended], ::TrueClass, ::FalseClass, context: "#{context}[:scheduled_scaling_suspended]")
      end
    end

    class TargetTrackingScalingPolicyConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetTrackingScalingPolicyConfiguration, context: context)
        Hearth::Validator.validate!(input[:target_value], ::Float, context: "#{context}[:target_value]")
        PredefinedMetricSpecification.validate!(input[:predefined_metric_specification], context: "#{context}[:predefined_metric_specification]") unless input[:predefined_metric_specification].nil?
        CustomizedMetricSpecification.validate!(input[:customized_metric_specification], context: "#{context}[:customized_metric_specification]") unless input[:customized_metric_specification].nil?
        Hearth::Validator.validate!(input[:scale_out_cooldown], ::Integer, context: "#{context}[:scale_out_cooldown]")
        Hearth::Validator.validate!(input[:scale_in_cooldown], ::Integer, context: "#{context}[:scale_in_cooldown]")
        Hearth::Validator.validate!(input[:disable_scale_in], ::TrueClass, ::FalseClass, context: "#{context}[:disable_scale_in]")
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
