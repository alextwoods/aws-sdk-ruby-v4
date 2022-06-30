# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::ApplicationAutoScaling
  module Builders

    # Operation Builder for DeleteScalingPolicy
    class DeleteScalingPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AnyScaleFrontendService.DeleteScalingPolicy'
        data = {}
        data['PolicyName'] = input[:policy_name] unless input[:policy_name].nil?
        data['ServiceNamespace'] = input[:service_namespace] unless input[:service_namespace].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['ScalableDimension'] = input[:scalable_dimension] unless input[:scalable_dimension].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteScheduledAction
    class DeleteScheduledAction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AnyScaleFrontendService.DeleteScheduledAction'
        data = {}
        data['ServiceNamespace'] = input[:service_namespace] unless input[:service_namespace].nil?
        data['ScheduledActionName'] = input[:scheduled_action_name] unless input[:scheduled_action_name].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['ScalableDimension'] = input[:scalable_dimension] unless input[:scalable_dimension].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeregisterScalableTarget
    class DeregisterScalableTarget
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AnyScaleFrontendService.DeregisterScalableTarget'
        data = {}
        data['ServiceNamespace'] = input[:service_namespace] unless input[:service_namespace].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['ScalableDimension'] = input[:scalable_dimension] unless input[:scalable_dimension].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeScalableTargets
    class DescribeScalableTargets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AnyScaleFrontendService.DescribeScalableTargets'
        data = {}
        data['ServiceNamespace'] = input[:service_namespace] unless input[:service_namespace].nil?
        data['ResourceIds'] = Builders::ResourceIdsMaxLen1600.build(input[:resource_ids]) unless input[:resource_ids].nil?
        data['ScalableDimension'] = input[:scalable_dimension] unless input[:scalable_dimension].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ResourceIdsMaxLen1600
    class ResourceIdsMaxLen1600
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeScalingActivities
    class DescribeScalingActivities
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AnyScaleFrontendService.DescribeScalingActivities'
        data = {}
        data['ServiceNamespace'] = input[:service_namespace] unless input[:service_namespace].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['ScalableDimension'] = input[:scalable_dimension] unless input[:scalable_dimension].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeScalingPolicies
    class DescribeScalingPolicies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AnyScaleFrontendService.DescribeScalingPolicies'
        data = {}
        data['PolicyNames'] = Builders::ResourceIdsMaxLen1600.build(input[:policy_names]) unless input[:policy_names].nil?
        data['ServiceNamespace'] = input[:service_namespace] unless input[:service_namespace].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['ScalableDimension'] = input[:scalable_dimension] unless input[:scalable_dimension].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeScheduledActions
    class DescribeScheduledActions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AnyScaleFrontendService.DescribeScheduledActions'
        data = {}
        data['ScheduledActionNames'] = Builders::ResourceIdsMaxLen1600.build(input[:scheduled_action_names]) unless input[:scheduled_action_names].nil?
        data['ServiceNamespace'] = input[:service_namespace] unless input[:service_namespace].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['ScalableDimension'] = input[:scalable_dimension] unless input[:scalable_dimension].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutScalingPolicy
    class PutScalingPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AnyScaleFrontendService.PutScalingPolicy'
        data = {}
        data['PolicyName'] = input[:policy_name] unless input[:policy_name].nil?
        data['ServiceNamespace'] = input[:service_namespace] unless input[:service_namespace].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['ScalableDimension'] = input[:scalable_dimension] unless input[:scalable_dimension].nil?
        data['PolicyType'] = input[:policy_type] unless input[:policy_type].nil?
        data['StepScalingPolicyConfiguration'] = Builders::StepScalingPolicyConfiguration.build(input[:step_scaling_policy_configuration]) unless input[:step_scaling_policy_configuration].nil?
        data['TargetTrackingScalingPolicyConfiguration'] = Builders::TargetTrackingScalingPolicyConfiguration.build(input[:target_tracking_scaling_policy_configuration]) unless input[:target_tracking_scaling_policy_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TargetTrackingScalingPolicyConfiguration
    class TargetTrackingScalingPolicyConfiguration
      def self.build(input)
        data = {}
        data['TargetValue'] = Hearth::NumberHelper.serialize(input[:target_value]) unless input[:target_value].nil?
        data['PredefinedMetricSpecification'] = Builders::PredefinedMetricSpecification.build(input[:predefined_metric_specification]) unless input[:predefined_metric_specification].nil?
        data['CustomizedMetricSpecification'] = Builders::CustomizedMetricSpecification.build(input[:customized_metric_specification]) unless input[:customized_metric_specification].nil?
        data['ScaleOutCooldown'] = input[:scale_out_cooldown] unless input[:scale_out_cooldown].nil?
        data['ScaleInCooldown'] = input[:scale_in_cooldown] unless input[:scale_in_cooldown].nil?
        data['DisableScaleIn'] = input[:disable_scale_in] unless input[:disable_scale_in].nil?
        data
      end
    end

    # Structure Builder for CustomizedMetricSpecification
    class CustomizedMetricSpecification
      def self.build(input)
        data = {}
        data['MetricName'] = input[:metric_name] unless input[:metric_name].nil?
        data['Namespace'] = input[:namespace] unless input[:namespace].nil?
        data['Dimensions'] = Builders::MetricDimensions.build(input[:dimensions]) unless input[:dimensions].nil?
        data['Statistic'] = input[:statistic] unless input[:statistic].nil?
        data['Unit'] = input[:unit] unless input[:unit].nil?
        data
      end
    end

    # List Builder for MetricDimensions
    class MetricDimensions
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::MetricDimension.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MetricDimension
    class MetricDimension
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for PredefinedMetricSpecification
    class PredefinedMetricSpecification
      def self.build(input)
        data = {}
        data['PredefinedMetricType'] = input[:predefined_metric_type] unless input[:predefined_metric_type].nil?
        data['ResourceLabel'] = input[:resource_label] unless input[:resource_label].nil?
        data
      end
    end

    # Structure Builder for StepScalingPolicyConfiguration
    class StepScalingPolicyConfiguration
      def self.build(input)
        data = {}
        data['AdjustmentType'] = input[:adjustment_type] unless input[:adjustment_type].nil?
        data['StepAdjustments'] = Builders::StepAdjustments.build(input[:step_adjustments]) unless input[:step_adjustments].nil?
        data['MinAdjustmentMagnitude'] = input[:min_adjustment_magnitude] unless input[:min_adjustment_magnitude].nil?
        data['Cooldown'] = input[:cooldown] unless input[:cooldown].nil?
        data['MetricAggregationType'] = input[:metric_aggregation_type] unless input[:metric_aggregation_type].nil?
        data
      end
    end

    # List Builder for StepAdjustments
    class StepAdjustments
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::StepAdjustment.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for StepAdjustment
    class StepAdjustment
      def self.build(input)
        data = {}
        data['MetricIntervalLowerBound'] = Hearth::NumberHelper.serialize(input[:metric_interval_lower_bound]) unless input[:metric_interval_lower_bound].nil?
        data['MetricIntervalUpperBound'] = Hearth::NumberHelper.serialize(input[:metric_interval_upper_bound]) unless input[:metric_interval_upper_bound].nil?
        data['ScalingAdjustment'] = input[:scaling_adjustment] unless input[:scaling_adjustment].nil?
        data
      end
    end

    # Operation Builder for PutScheduledAction
    class PutScheduledAction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AnyScaleFrontendService.PutScheduledAction'
        data = {}
        data['ServiceNamespace'] = input[:service_namespace] unless input[:service_namespace].nil?
        data['Schedule'] = input[:schedule] unless input[:schedule].nil?
        data['Timezone'] = input[:timezone] unless input[:timezone].nil?
        data['ScheduledActionName'] = input[:scheduled_action_name] unless input[:scheduled_action_name].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['ScalableDimension'] = input[:scalable_dimension] unless input[:scalable_dimension].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['ScalableTargetAction'] = Builders::ScalableTargetAction.build(input[:scalable_target_action]) unless input[:scalable_target_action].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ScalableTargetAction
    class ScalableTargetAction
      def self.build(input)
        data = {}
        data['MinCapacity'] = input[:min_capacity] unless input[:min_capacity].nil?
        data['MaxCapacity'] = input[:max_capacity] unless input[:max_capacity].nil?
        data
      end
    end

    # Operation Builder for RegisterScalableTarget
    class RegisterScalableTarget
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AnyScaleFrontendService.RegisterScalableTarget'
        data = {}
        data['ServiceNamespace'] = input[:service_namespace] unless input[:service_namespace].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['ScalableDimension'] = input[:scalable_dimension] unless input[:scalable_dimension].nil?
        data['MinCapacity'] = input[:min_capacity] unless input[:min_capacity].nil?
        data['MaxCapacity'] = input[:max_capacity] unless input[:max_capacity].nil?
        data['RoleARN'] = input[:role_arn] unless input[:role_arn].nil?
        data['SuspendedState'] = Builders::SuspendedState.build(input[:suspended_state]) unless input[:suspended_state].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SuspendedState
    class SuspendedState
      def self.build(input)
        data = {}
        data['DynamicScalingInSuspended'] = input[:dynamic_scaling_in_suspended] unless input[:dynamic_scaling_in_suspended].nil?
        data['DynamicScalingOutSuspended'] = input[:dynamic_scaling_out_suspended] unless input[:dynamic_scaling_out_suspended].nil?
        data['ScheduledScalingSuspended'] = input[:scheduled_scaling_suspended] unless input[:scheduled_scaling_suspended].nil?
        data
      end
    end
  end
end
