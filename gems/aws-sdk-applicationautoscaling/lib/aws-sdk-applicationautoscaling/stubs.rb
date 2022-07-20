# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::ApplicationAutoScaling
  module Stubs

    # Operation Stubber for DeleteScalingPolicy
    class DeleteScalingPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteScheduledAction
    class DeleteScheduledAction
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeregisterScalableTarget
    class DeregisterScalableTarget
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeScalableTargets
    class DescribeScalableTargets
      def self.default(visited=[])
        {
          scalable_targets: ScalableTargets.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ScalableTargets'] = ScalableTargets.stub(stub[:scalable_targets]) unless stub[:scalable_targets].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ScalableTargets
    class ScalableTargets
      def self.default(visited=[])
        return nil if visited.include?('ScalableTargets')
        visited = visited + ['ScalableTargets']
        [
          ScalableTarget.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ScalableTarget.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ScalableTarget
    class ScalableTarget
      def self.default(visited=[])
        return nil if visited.include?('ScalableTarget')
        visited = visited + ['ScalableTarget']
        {
          service_namespace: 'service_namespace',
          resource_id: 'resource_id',
          scalable_dimension: 'scalable_dimension',
          min_capacity: 1,
          max_capacity: 1,
          role_arn: 'role_arn',
          creation_time: Time.now,
          suspended_state: SuspendedState.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ScalableTarget.new
        data = {}
        data['ServiceNamespace'] = stub[:service_namespace] unless stub[:service_namespace].nil?
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['ScalableDimension'] = stub[:scalable_dimension] unless stub[:scalable_dimension].nil?
        data['MinCapacity'] = stub[:min_capacity] unless stub[:min_capacity].nil?
        data['MaxCapacity'] = stub[:max_capacity] unless stub[:max_capacity].nil?
        data['RoleARN'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['SuspendedState'] = SuspendedState.stub(stub[:suspended_state]) unless stub[:suspended_state].nil?
        data
      end
    end

    # Structure Stubber for SuspendedState
    class SuspendedState
      def self.default(visited=[])
        return nil if visited.include?('SuspendedState')
        visited = visited + ['SuspendedState']
        {
          dynamic_scaling_in_suspended: false,
          dynamic_scaling_out_suspended: false,
          scheduled_scaling_suspended: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::SuspendedState.new
        data = {}
        data['DynamicScalingInSuspended'] = stub[:dynamic_scaling_in_suspended] unless stub[:dynamic_scaling_in_suspended].nil?
        data['DynamicScalingOutSuspended'] = stub[:dynamic_scaling_out_suspended] unless stub[:dynamic_scaling_out_suspended].nil?
        data['ScheduledScalingSuspended'] = stub[:scheduled_scaling_suspended] unless stub[:scheduled_scaling_suspended].nil?
        data
      end
    end

    # Operation Stubber for DescribeScalingActivities
    class DescribeScalingActivities
      def self.default(visited=[])
        {
          scaling_activities: ScalingActivities.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ScalingActivities'] = ScalingActivities.stub(stub[:scaling_activities]) unless stub[:scaling_activities].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ScalingActivities
    class ScalingActivities
      def self.default(visited=[])
        return nil if visited.include?('ScalingActivities')
        visited = visited + ['ScalingActivities']
        [
          ScalingActivity.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ScalingActivity.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ScalingActivity
    class ScalingActivity
      def self.default(visited=[])
        return nil if visited.include?('ScalingActivity')
        visited = visited + ['ScalingActivity']
        {
          activity_id: 'activity_id',
          service_namespace: 'service_namespace',
          resource_id: 'resource_id',
          scalable_dimension: 'scalable_dimension',
          description: 'description',
          cause: 'cause',
          start_time: Time.now,
          end_time: Time.now,
          status_code: 'status_code',
          status_message: 'status_message',
          details: 'details',
        }
      end

      def self.stub(stub)
        stub ||= Types::ScalingActivity.new
        data = {}
        data['ActivityId'] = stub[:activity_id] unless stub[:activity_id].nil?
        data['ServiceNamespace'] = stub[:service_namespace] unless stub[:service_namespace].nil?
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['ScalableDimension'] = stub[:scalable_dimension] unless stub[:scalable_dimension].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Cause'] = stub[:cause] unless stub[:cause].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['StatusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['Details'] = stub[:details] unless stub[:details].nil?
        data
      end
    end

    # Operation Stubber for DescribeScalingPolicies
    class DescribeScalingPolicies
      def self.default(visited=[])
        {
          scaling_policies: ScalingPolicies.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ScalingPolicies'] = ScalingPolicies.stub(stub[:scaling_policies]) unless stub[:scaling_policies].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ScalingPolicies
    class ScalingPolicies
      def self.default(visited=[])
        return nil if visited.include?('ScalingPolicies')
        visited = visited + ['ScalingPolicies']
        [
          ScalingPolicy.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ScalingPolicy.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ScalingPolicy
    class ScalingPolicy
      def self.default(visited=[])
        return nil if visited.include?('ScalingPolicy')
        visited = visited + ['ScalingPolicy']
        {
          policy_arn: 'policy_arn',
          policy_name: 'policy_name',
          service_namespace: 'service_namespace',
          resource_id: 'resource_id',
          scalable_dimension: 'scalable_dimension',
          policy_type: 'policy_type',
          step_scaling_policy_configuration: StepScalingPolicyConfiguration.default(visited),
          target_tracking_scaling_policy_configuration: TargetTrackingScalingPolicyConfiguration.default(visited),
          alarms: Alarms.default(visited),
          creation_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ScalingPolicy.new
        data = {}
        data['PolicyARN'] = stub[:policy_arn] unless stub[:policy_arn].nil?
        data['PolicyName'] = stub[:policy_name] unless stub[:policy_name].nil?
        data['ServiceNamespace'] = stub[:service_namespace] unless stub[:service_namespace].nil?
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['ScalableDimension'] = stub[:scalable_dimension] unless stub[:scalable_dimension].nil?
        data['PolicyType'] = stub[:policy_type] unless stub[:policy_type].nil?
        data['StepScalingPolicyConfiguration'] = StepScalingPolicyConfiguration.stub(stub[:step_scaling_policy_configuration]) unless stub[:step_scaling_policy_configuration].nil?
        data['TargetTrackingScalingPolicyConfiguration'] = TargetTrackingScalingPolicyConfiguration.stub(stub[:target_tracking_scaling_policy_configuration]) unless stub[:target_tracking_scaling_policy_configuration].nil?
        data['Alarms'] = Alarms.stub(stub[:alarms]) unless stub[:alarms].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data
      end
    end

    # List Stubber for Alarms
    class Alarms
      def self.default(visited=[])
        return nil if visited.include?('Alarms')
        visited = visited + ['Alarms']
        [
          Alarm.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Alarm.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Alarm
    class Alarm
      def self.default(visited=[])
        return nil if visited.include?('Alarm')
        visited = visited + ['Alarm']
        {
          alarm_name: 'alarm_name',
          alarm_arn: 'alarm_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Alarm.new
        data = {}
        data['AlarmName'] = stub[:alarm_name] unless stub[:alarm_name].nil?
        data['AlarmARN'] = stub[:alarm_arn] unless stub[:alarm_arn].nil?
        data
      end
    end

    # Structure Stubber for TargetTrackingScalingPolicyConfiguration
    class TargetTrackingScalingPolicyConfiguration
      def self.default(visited=[])
        return nil if visited.include?('TargetTrackingScalingPolicyConfiguration')
        visited = visited + ['TargetTrackingScalingPolicyConfiguration']
        {
          target_value: 1.0,
          predefined_metric_specification: PredefinedMetricSpecification.default(visited),
          customized_metric_specification: CustomizedMetricSpecification.default(visited),
          scale_out_cooldown: 1,
          scale_in_cooldown: 1,
          disable_scale_in: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::TargetTrackingScalingPolicyConfiguration.new
        data = {}
        data['TargetValue'] = Hearth::NumberHelper.serialize(stub[:target_value])
        data['PredefinedMetricSpecification'] = PredefinedMetricSpecification.stub(stub[:predefined_metric_specification]) unless stub[:predefined_metric_specification].nil?
        data['CustomizedMetricSpecification'] = CustomizedMetricSpecification.stub(stub[:customized_metric_specification]) unless stub[:customized_metric_specification].nil?
        data['ScaleOutCooldown'] = stub[:scale_out_cooldown] unless stub[:scale_out_cooldown].nil?
        data['ScaleInCooldown'] = stub[:scale_in_cooldown] unless stub[:scale_in_cooldown].nil?
        data['DisableScaleIn'] = stub[:disable_scale_in] unless stub[:disable_scale_in].nil?
        data
      end
    end

    # Structure Stubber for CustomizedMetricSpecification
    class CustomizedMetricSpecification
      def self.default(visited=[])
        return nil if visited.include?('CustomizedMetricSpecification')
        visited = visited + ['CustomizedMetricSpecification']
        {
          metric_name: 'metric_name',
          namespace: 'namespace',
          dimensions: MetricDimensions.default(visited),
          statistic: 'statistic',
          unit: 'unit',
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomizedMetricSpecification.new
        data = {}
        data['MetricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['Namespace'] = stub[:namespace] unless stub[:namespace].nil?
        data['Dimensions'] = MetricDimensions.stub(stub[:dimensions]) unless stub[:dimensions].nil?
        data['Statistic'] = stub[:statistic] unless stub[:statistic].nil?
        data['Unit'] = stub[:unit] unless stub[:unit].nil?
        data
      end
    end

    # List Stubber for MetricDimensions
    class MetricDimensions
      def self.default(visited=[])
        return nil if visited.include?('MetricDimensions')
        visited = visited + ['MetricDimensions']
        [
          MetricDimension.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MetricDimension.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MetricDimension
    class MetricDimension
      def self.default(visited=[])
        return nil if visited.include?('MetricDimension')
        visited = visited + ['MetricDimension']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::MetricDimension.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for PredefinedMetricSpecification
    class PredefinedMetricSpecification
      def self.default(visited=[])
        return nil if visited.include?('PredefinedMetricSpecification')
        visited = visited + ['PredefinedMetricSpecification']
        {
          predefined_metric_type: 'predefined_metric_type',
          resource_label: 'resource_label',
        }
      end

      def self.stub(stub)
        stub ||= Types::PredefinedMetricSpecification.new
        data = {}
        data['PredefinedMetricType'] = stub[:predefined_metric_type] unless stub[:predefined_metric_type].nil?
        data['ResourceLabel'] = stub[:resource_label] unless stub[:resource_label].nil?
        data
      end
    end

    # Structure Stubber for StepScalingPolicyConfiguration
    class StepScalingPolicyConfiguration
      def self.default(visited=[])
        return nil if visited.include?('StepScalingPolicyConfiguration')
        visited = visited + ['StepScalingPolicyConfiguration']
        {
          adjustment_type: 'adjustment_type',
          step_adjustments: StepAdjustments.default(visited),
          min_adjustment_magnitude: 1,
          cooldown: 1,
          metric_aggregation_type: 'metric_aggregation_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::StepScalingPolicyConfiguration.new
        data = {}
        data['AdjustmentType'] = stub[:adjustment_type] unless stub[:adjustment_type].nil?
        data['StepAdjustments'] = StepAdjustments.stub(stub[:step_adjustments]) unless stub[:step_adjustments].nil?
        data['MinAdjustmentMagnitude'] = stub[:min_adjustment_magnitude] unless stub[:min_adjustment_magnitude].nil?
        data['Cooldown'] = stub[:cooldown] unless stub[:cooldown].nil?
        data['MetricAggregationType'] = stub[:metric_aggregation_type] unless stub[:metric_aggregation_type].nil?
        data
      end
    end

    # List Stubber for StepAdjustments
    class StepAdjustments
      def self.default(visited=[])
        return nil if visited.include?('StepAdjustments')
        visited = visited + ['StepAdjustments']
        [
          StepAdjustment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << StepAdjustment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StepAdjustment
    class StepAdjustment
      def self.default(visited=[])
        return nil if visited.include?('StepAdjustment')
        visited = visited + ['StepAdjustment']
        {
          metric_interval_lower_bound: 1.0,
          metric_interval_upper_bound: 1.0,
          scaling_adjustment: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::StepAdjustment.new
        data = {}
        data['MetricIntervalLowerBound'] = Hearth::NumberHelper.serialize(stub[:metric_interval_lower_bound])
        data['MetricIntervalUpperBound'] = Hearth::NumberHelper.serialize(stub[:metric_interval_upper_bound])
        data['ScalingAdjustment'] = stub[:scaling_adjustment] unless stub[:scaling_adjustment].nil?
        data
      end
    end

    # Operation Stubber for DescribeScheduledActions
    class DescribeScheduledActions
      def self.default(visited=[])
        {
          scheduled_actions: ScheduledActions.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ScheduledActions'] = ScheduledActions.stub(stub[:scheduled_actions]) unless stub[:scheduled_actions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ScheduledActions
    class ScheduledActions
      def self.default(visited=[])
        return nil if visited.include?('ScheduledActions')
        visited = visited + ['ScheduledActions']
        [
          ScheduledAction.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ScheduledAction.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ScheduledAction
    class ScheduledAction
      def self.default(visited=[])
        return nil if visited.include?('ScheduledAction')
        visited = visited + ['ScheduledAction']
        {
          scheduled_action_name: 'scheduled_action_name',
          scheduled_action_arn: 'scheduled_action_arn',
          service_namespace: 'service_namespace',
          schedule: 'schedule',
          timezone: 'timezone',
          resource_id: 'resource_id',
          scalable_dimension: 'scalable_dimension',
          start_time: Time.now,
          end_time: Time.now,
          scalable_target_action: ScalableTargetAction.default(visited),
          creation_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ScheduledAction.new
        data = {}
        data['ScheduledActionName'] = stub[:scheduled_action_name] unless stub[:scheduled_action_name].nil?
        data['ScheduledActionARN'] = stub[:scheduled_action_arn] unless stub[:scheduled_action_arn].nil?
        data['ServiceNamespace'] = stub[:service_namespace] unless stub[:service_namespace].nil?
        data['Schedule'] = stub[:schedule] unless stub[:schedule].nil?
        data['Timezone'] = stub[:timezone] unless stub[:timezone].nil?
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['ScalableDimension'] = stub[:scalable_dimension] unless stub[:scalable_dimension].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['ScalableTargetAction'] = ScalableTargetAction.stub(stub[:scalable_target_action]) unless stub[:scalable_target_action].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data
      end
    end

    # Structure Stubber for ScalableTargetAction
    class ScalableTargetAction
      def self.default(visited=[])
        return nil if visited.include?('ScalableTargetAction')
        visited = visited + ['ScalableTargetAction']
        {
          min_capacity: 1,
          max_capacity: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ScalableTargetAction.new
        data = {}
        data['MinCapacity'] = stub[:min_capacity] unless stub[:min_capacity].nil?
        data['MaxCapacity'] = stub[:max_capacity] unless stub[:max_capacity].nil?
        data
      end
    end

    # Operation Stubber for PutScalingPolicy
    class PutScalingPolicy
      def self.default(visited=[])
        {
          policy_arn: 'policy_arn',
          alarms: Alarms.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PolicyARN'] = stub[:policy_arn] unless stub[:policy_arn].nil?
        data['Alarms'] = Alarms.stub(stub[:alarms]) unless stub[:alarms].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutScheduledAction
    class PutScheduledAction
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RegisterScalableTarget
    class RegisterScalableTarget
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
