# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ApplicationAutoScaling
  module Parsers

    # Operation Parser for DeleteScalingPolicy
    class DeleteScalingPolicy
      def self.parse(http_resp)
        data = Types::DeleteScalingPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
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
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ObjectNotFoundException
    class ObjectNotFoundException
      def self.parse(http_resp)
        data = Types::ObjectNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ConcurrentUpdateException
    class ConcurrentUpdateException
      def self.parse(http_resp)
        data = Types::ConcurrentUpdateException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServiceException
    class InternalServiceException
      def self.parse(http_resp)
        data = Types::InternalServiceException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteScheduledAction
    class DeleteScheduledAction
      def self.parse(http_resp)
        data = Types::DeleteScheduledActionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeregisterScalableTarget
    class DeregisterScalableTarget
      def self.parse(http_resp)
        data = Types::DeregisterScalableTargetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeScalableTargets
    class DescribeScalableTargets
      def self.parse(http_resp)
        data = Types::DescribeScalableTargetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.scalable_targets = (ScalableTargets.parse(map['ScalableTargets']) unless map['ScalableTargets'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ScalableTargets
      def self.parse(list)
        list.map do |value|
          ScalableTarget.parse(value) unless value.nil?
        end
      end
    end

    class ScalableTarget
      def self.parse(map)
        data = Types::ScalableTarget.new
        data.service_namespace = map['ServiceNamespace']
        data.resource_id = map['ResourceId']
        data.scalable_dimension = map['ScalableDimension']
        data.min_capacity = map['MinCapacity']
        data.max_capacity = map['MaxCapacity']
        data.role_arn = map['RoleARN']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.suspended_state = (SuspendedState.parse(map['SuspendedState']) unless map['SuspendedState'].nil?)
        return data
      end
    end

    class SuspendedState
      def self.parse(map)
        data = Types::SuspendedState.new
        data.dynamic_scaling_in_suspended = map['DynamicScalingInSuspended']
        data.dynamic_scaling_out_suspended = map['DynamicScalingOutSuspended']
        data.scheduled_scaling_suspended = map['ScheduledScalingSuspended']
        return data
      end
    end

    # Error Parser for InvalidNextTokenException
    class InvalidNextTokenException
      def self.parse(http_resp)
        data = Types::InvalidNextTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeScalingActivities
    class DescribeScalingActivities
      def self.parse(http_resp)
        data = Types::DescribeScalingActivitiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.scaling_activities = (ScalingActivities.parse(map['ScalingActivities']) unless map['ScalingActivities'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ScalingActivities
      def self.parse(list)
        list.map do |value|
          ScalingActivity.parse(value) unless value.nil?
        end
      end
    end

    class ScalingActivity
      def self.parse(map)
        data = Types::ScalingActivity.new
        data.activity_id = map['ActivityId']
        data.service_namespace = map['ServiceNamespace']
        data.resource_id = map['ResourceId']
        data.scalable_dimension = map['ScalableDimension']
        data.description = map['Description']
        data.cause = map['Cause']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.status_code = map['StatusCode']
        data.status_message = map['StatusMessage']
        data.details = map['Details']
        return data
      end
    end

    # Operation Parser for DescribeScalingPolicies
    class DescribeScalingPolicies
      def self.parse(http_resp)
        data = Types::DescribeScalingPoliciesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.scaling_policies = (ScalingPolicies.parse(map['ScalingPolicies']) unless map['ScalingPolicies'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ScalingPolicies
      def self.parse(list)
        list.map do |value|
          ScalingPolicy.parse(value) unless value.nil?
        end
      end
    end

    class ScalingPolicy
      def self.parse(map)
        data = Types::ScalingPolicy.new
        data.policy_arn = map['PolicyARN']
        data.policy_name = map['PolicyName']
        data.service_namespace = map['ServiceNamespace']
        data.resource_id = map['ResourceId']
        data.scalable_dimension = map['ScalableDimension']
        data.policy_type = map['PolicyType']
        data.step_scaling_policy_configuration = (StepScalingPolicyConfiguration.parse(map['StepScalingPolicyConfiguration']) unless map['StepScalingPolicyConfiguration'].nil?)
        data.target_tracking_scaling_policy_configuration = (TargetTrackingScalingPolicyConfiguration.parse(map['TargetTrackingScalingPolicyConfiguration']) unless map['TargetTrackingScalingPolicyConfiguration'].nil?)
        data.alarms = (Alarms.parse(map['Alarms']) unless map['Alarms'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        return data
      end
    end

    class Alarms
      def self.parse(list)
        list.map do |value|
          Alarm.parse(value) unless value.nil?
        end
      end
    end

    class Alarm
      def self.parse(map)
        data = Types::Alarm.new
        data.alarm_name = map['AlarmName']
        data.alarm_arn = map['AlarmARN']
        return data
      end
    end

    class TargetTrackingScalingPolicyConfiguration
      def self.parse(map)
        data = Types::TargetTrackingScalingPolicyConfiguration.new
        data.target_value = Hearth::NumberHelper.deserialize(map['TargetValue'])
        data.predefined_metric_specification = (PredefinedMetricSpecification.parse(map['PredefinedMetricSpecification']) unless map['PredefinedMetricSpecification'].nil?)
        data.customized_metric_specification = (CustomizedMetricSpecification.parse(map['CustomizedMetricSpecification']) unless map['CustomizedMetricSpecification'].nil?)
        data.scale_out_cooldown = map['ScaleOutCooldown']
        data.scale_in_cooldown = map['ScaleInCooldown']
        data.disable_scale_in = map['DisableScaleIn']
        return data
      end
    end

    class CustomizedMetricSpecification
      def self.parse(map)
        data = Types::CustomizedMetricSpecification.new
        data.metric_name = map['MetricName']
        data.namespace = map['Namespace']
        data.dimensions = (MetricDimensions.parse(map['Dimensions']) unless map['Dimensions'].nil?)
        data.statistic = map['Statistic']
        data.unit = map['Unit']
        return data
      end
    end

    class MetricDimensions
      def self.parse(list)
        list.map do |value|
          MetricDimension.parse(value) unless value.nil?
        end
      end
    end

    class MetricDimension
      def self.parse(map)
        data = Types::MetricDimension.new
        data.name = map['Name']
        data.value = map['Value']
        return data
      end
    end

    class PredefinedMetricSpecification
      def self.parse(map)
        data = Types::PredefinedMetricSpecification.new
        data.predefined_metric_type = map['PredefinedMetricType']
        data.resource_label = map['ResourceLabel']
        return data
      end
    end

    class StepScalingPolicyConfiguration
      def self.parse(map)
        data = Types::StepScalingPolicyConfiguration.new
        data.adjustment_type = map['AdjustmentType']
        data.step_adjustments = (StepAdjustments.parse(map['StepAdjustments']) unless map['StepAdjustments'].nil?)
        data.min_adjustment_magnitude = map['MinAdjustmentMagnitude']
        data.cooldown = map['Cooldown']
        data.metric_aggregation_type = map['MetricAggregationType']
        return data
      end
    end

    class StepAdjustments
      def self.parse(list)
        list.map do |value|
          StepAdjustment.parse(value) unless value.nil?
        end
      end
    end

    class StepAdjustment
      def self.parse(map)
        data = Types::StepAdjustment.new
        data.metric_interval_lower_bound = Hearth::NumberHelper.deserialize(map['MetricIntervalLowerBound'])
        data.metric_interval_upper_bound = Hearth::NumberHelper.deserialize(map['MetricIntervalUpperBound'])
        data.scaling_adjustment = map['ScalingAdjustment']
        return data
      end
    end

    # Error Parser for FailedResourceAccessException
    class FailedResourceAccessException
      def self.parse(http_resp)
        data = Types::FailedResourceAccessException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeScheduledActions
    class DescribeScheduledActions
      def self.parse(http_resp)
        data = Types::DescribeScheduledActionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.scheduled_actions = (ScheduledActions.parse(map['ScheduledActions']) unless map['ScheduledActions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ScheduledActions
      def self.parse(list)
        list.map do |value|
          ScheduledAction.parse(value) unless value.nil?
        end
      end
    end

    class ScheduledAction
      def self.parse(map)
        data = Types::ScheduledAction.new
        data.scheduled_action_name = map['ScheduledActionName']
        data.scheduled_action_arn = map['ScheduledActionARN']
        data.service_namespace = map['ServiceNamespace']
        data.schedule = map['Schedule']
        data.timezone = map['Timezone']
        data.resource_id = map['ResourceId']
        data.scalable_dimension = map['ScalableDimension']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.scalable_target_action = (ScalableTargetAction.parse(map['ScalableTargetAction']) unless map['ScalableTargetAction'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        return data
      end
    end

    class ScalableTargetAction
      def self.parse(map)
        data = Types::ScalableTargetAction.new
        data.min_capacity = map['MinCapacity']
        data.max_capacity = map['MaxCapacity']
        return data
      end
    end

    # Operation Parser for PutScalingPolicy
    class PutScalingPolicy
      def self.parse(http_resp)
        data = Types::PutScalingPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.policy_arn = map['PolicyARN']
        data.alarms = (Alarms.parse(map['Alarms']) unless map['Alarms'].nil?)
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
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for PutScheduledAction
    class PutScheduledAction
      def self.parse(http_resp)
        data = Types::PutScheduledActionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for RegisterScalableTarget
    class RegisterScalableTarget
      def self.parse(http_resp)
        data = Types::RegisterScalableTargetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
