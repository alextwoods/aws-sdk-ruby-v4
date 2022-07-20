# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AutoScalingPlans
  module Stubs

    # Operation Stubber for CreateScalingPlan
    class CreateScalingPlan
      def self.default(visited=[])
        {
          scaling_plan_version: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ScalingPlanVersion'] = stub[:scaling_plan_version] unless stub[:scaling_plan_version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteScalingPlan
    class DeleteScalingPlan
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

    # Operation Stubber for DescribeScalingPlanResources
    class DescribeScalingPlanResources
      def self.default(visited=[])
        {
          scaling_plan_resources: ScalingPlanResources.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ScalingPlanResources'] = Stubs::ScalingPlanResources.stub(stub[:scaling_plan_resources]) unless stub[:scaling_plan_resources].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ScalingPlanResources
    class ScalingPlanResources
      def self.default(visited=[])
        return nil if visited.include?('ScalingPlanResources')
        visited = visited + ['ScalingPlanResources']
        [
          ScalingPlanResource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ScalingPlanResource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ScalingPlanResource
    class ScalingPlanResource
      def self.default(visited=[])
        return nil if visited.include?('ScalingPlanResource')
        visited = visited + ['ScalingPlanResource']
        {
          scaling_plan_name: 'scaling_plan_name',
          scaling_plan_version: 1,
          service_namespace: 'service_namespace',
          resource_id: 'resource_id',
          scalable_dimension: 'scalable_dimension',
          scaling_policies: ScalingPolicies.default(visited),
          scaling_status_code: 'scaling_status_code',
          scaling_status_message: 'scaling_status_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ScalingPlanResource.new
        data = {}
        data['ScalingPlanName'] = stub[:scaling_plan_name] unless stub[:scaling_plan_name].nil?
        data['ScalingPlanVersion'] = stub[:scaling_plan_version] unless stub[:scaling_plan_version].nil?
        data['ServiceNamespace'] = stub[:service_namespace] unless stub[:service_namespace].nil?
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['ScalableDimension'] = stub[:scalable_dimension] unless stub[:scalable_dimension].nil?
        data['ScalingPolicies'] = Stubs::ScalingPolicies.stub(stub[:scaling_policies]) unless stub[:scaling_policies].nil?
        data['ScalingStatusCode'] = stub[:scaling_status_code] unless stub[:scaling_status_code].nil?
        data['ScalingStatusMessage'] = stub[:scaling_status_message] unless stub[:scaling_status_message].nil?
        data
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
          data << Stubs::ScalingPolicy.stub(element) unless element.nil?
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
          policy_name: 'policy_name',
          policy_type: 'policy_type',
          target_tracking_configuration: TargetTrackingConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ScalingPolicy.new
        data = {}
        data['PolicyName'] = stub[:policy_name] unless stub[:policy_name].nil?
        data['PolicyType'] = stub[:policy_type] unless stub[:policy_type].nil?
        data['TargetTrackingConfiguration'] = Stubs::TargetTrackingConfiguration.stub(stub[:target_tracking_configuration]) unless stub[:target_tracking_configuration].nil?
        data
      end
    end

    # Structure Stubber for TargetTrackingConfiguration
    class TargetTrackingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('TargetTrackingConfiguration')
        visited = visited + ['TargetTrackingConfiguration']
        {
          predefined_scaling_metric_specification: PredefinedScalingMetricSpecification.default(visited),
          customized_scaling_metric_specification: CustomizedScalingMetricSpecification.default(visited),
          target_value: 1.0,
          disable_scale_in: false,
          scale_out_cooldown: 1,
          scale_in_cooldown: 1,
          estimated_instance_warmup: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::TargetTrackingConfiguration.new
        data = {}
        data['PredefinedScalingMetricSpecification'] = Stubs::PredefinedScalingMetricSpecification.stub(stub[:predefined_scaling_metric_specification]) unless stub[:predefined_scaling_metric_specification].nil?
        data['CustomizedScalingMetricSpecification'] = Stubs::CustomizedScalingMetricSpecification.stub(stub[:customized_scaling_metric_specification]) unless stub[:customized_scaling_metric_specification].nil?
        data['TargetValue'] = Hearth::NumberHelper.serialize(stub[:target_value])
        data['DisableScaleIn'] = stub[:disable_scale_in] unless stub[:disable_scale_in].nil?
        data['ScaleOutCooldown'] = stub[:scale_out_cooldown] unless stub[:scale_out_cooldown].nil?
        data['ScaleInCooldown'] = stub[:scale_in_cooldown] unless stub[:scale_in_cooldown].nil?
        data['EstimatedInstanceWarmup'] = stub[:estimated_instance_warmup] unless stub[:estimated_instance_warmup].nil?
        data
      end
    end

    # Structure Stubber for CustomizedScalingMetricSpecification
    class CustomizedScalingMetricSpecification
      def self.default(visited=[])
        return nil if visited.include?('CustomizedScalingMetricSpecification')
        visited = visited + ['CustomizedScalingMetricSpecification']
        {
          metric_name: 'metric_name',
          namespace: 'namespace',
          dimensions: MetricDimensions.default(visited),
          statistic: 'statistic',
          unit: 'unit',
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomizedScalingMetricSpecification.new
        data = {}
        data['MetricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['Namespace'] = stub[:namespace] unless stub[:namespace].nil?
        data['Dimensions'] = Stubs::MetricDimensions.stub(stub[:dimensions]) unless stub[:dimensions].nil?
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
          data << Stubs::MetricDimension.stub(element) unless element.nil?
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

    # Structure Stubber for PredefinedScalingMetricSpecification
    class PredefinedScalingMetricSpecification
      def self.default(visited=[])
        return nil if visited.include?('PredefinedScalingMetricSpecification')
        visited = visited + ['PredefinedScalingMetricSpecification']
        {
          predefined_scaling_metric_type: 'predefined_scaling_metric_type',
          resource_label: 'resource_label',
        }
      end

      def self.stub(stub)
        stub ||= Types::PredefinedScalingMetricSpecification.new
        data = {}
        data['PredefinedScalingMetricType'] = stub[:predefined_scaling_metric_type] unless stub[:predefined_scaling_metric_type].nil?
        data['ResourceLabel'] = stub[:resource_label] unless stub[:resource_label].nil?
        data
      end
    end

    # Operation Stubber for DescribeScalingPlans
    class DescribeScalingPlans
      def self.default(visited=[])
        {
          scaling_plans: ScalingPlans.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ScalingPlans'] = Stubs::ScalingPlans.stub(stub[:scaling_plans]) unless stub[:scaling_plans].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ScalingPlans
    class ScalingPlans
      def self.default(visited=[])
        return nil if visited.include?('ScalingPlans')
        visited = visited + ['ScalingPlans']
        [
          ScalingPlan.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ScalingPlan.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ScalingPlan
    class ScalingPlan
      def self.default(visited=[])
        return nil if visited.include?('ScalingPlan')
        visited = visited + ['ScalingPlan']
        {
          scaling_plan_name: 'scaling_plan_name',
          scaling_plan_version: 1,
          application_source: ApplicationSource.default(visited),
          scaling_instructions: ScalingInstructions.default(visited),
          status_code: 'status_code',
          status_message: 'status_message',
          status_start_time: Time.now,
          creation_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ScalingPlan.new
        data = {}
        data['ScalingPlanName'] = stub[:scaling_plan_name] unless stub[:scaling_plan_name].nil?
        data['ScalingPlanVersion'] = stub[:scaling_plan_version] unless stub[:scaling_plan_version].nil?
        data['ApplicationSource'] = Stubs::ApplicationSource.stub(stub[:application_source]) unless stub[:application_source].nil?
        data['ScalingInstructions'] = Stubs::ScalingInstructions.stub(stub[:scaling_instructions]) unless stub[:scaling_instructions].nil?
        data['StatusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['StatusStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:status_start_time]).to_i unless stub[:status_start_time].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data
      end
    end

    # List Stubber for ScalingInstructions
    class ScalingInstructions
      def self.default(visited=[])
        return nil if visited.include?('ScalingInstructions')
        visited = visited + ['ScalingInstructions']
        [
          ScalingInstruction.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ScalingInstruction.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ScalingInstruction
    class ScalingInstruction
      def self.default(visited=[])
        return nil if visited.include?('ScalingInstruction')
        visited = visited + ['ScalingInstruction']
        {
          service_namespace: 'service_namespace',
          resource_id: 'resource_id',
          scalable_dimension: 'scalable_dimension',
          min_capacity: 1,
          max_capacity: 1,
          target_tracking_configurations: TargetTrackingConfigurations.default(visited),
          predefined_load_metric_specification: PredefinedLoadMetricSpecification.default(visited),
          customized_load_metric_specification: CustomizedLoadMetricSpecification.default(visited),
          scheduled_action_buffer_time: 1,
          predictive_scaling_max_capacity_behavior: 'predictive_scaling_max_capacity_behavior',
          predictive_scaling_max_capacity_buffer: 1,
          predictive_scaling_mode: 'predictive_scaling_mode',
          scaling_policy_update_behavior: 'scaling_policy_update_behavior',
          disable_dynamic_scaling: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ScalingInstruction.new
        data = {}
        data['ServiceNamespace'] = stub[:service_namespace] unless stub[:service_namespace].nil?
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['ScalableDimension'] = stub[:scalable_dimension] unless stub[:scalable_dimension].nil?
        data['MinCapacity'] = stub[:min_capacity] unless stub[:min_capacity].nil?
        data['MaxCapacity'] = stub[:max_capacity] unless stub[:max_capacity].nil?
        data['TargetTrackingConfigurations'] = Stubs::TargetTrackingConfigurations.stub(stub[:target_tracking_configurations]) unless stub[:target_tracking_configurations].nil?
        data['PredefinedLoadMetricSpecification'] = Stubs::PredefinedLoadMetricSpecification.stub(stub[:predefined_load_metric_specification]) unless stub[:predefined_load_metric_specification].nil?
        data['CustomizedLoadMetricSpecification'] = Stubs::CustomizedLoadMetricSpecification.stub(stub[:customized_load_metric_specification]) unless stub[:customized_load_metric_specification].nil?
        data['ScheduledActionBufferTime'] = stub[:scheduled_action_buffer_time] unless stub[:scheduled_action_buffer_time].nil?
        data['PredictiveScalingMaxCapacityBehavior'] = stub[:predictive_scaling_max_capacity_behavior] unless stub[:predictive_scaling_max_capacity_behavior].nil?
        data['PredictiveScalingMaxCapacityBuffer'] = stub[:predictive_scaling_max_capacity_buffer] unless stub[:predictive_scaling_max_capacity_buffer].nil?
        data['PredictiveScalingMode'] = stub[:predictive_scaling_mode] unless stub[:predictive_scaling_mode].nil?
        data['ScalingPolicyUpdateBehavior'] = stub[:scaling_policy_update_behavior] unless stub[:scaling_policy_update_behavior].nil?
        data['DisableDynamicScaling'] = stub[:disable_dynamic_scaling] unless stub[:disable_dynamic_scaling].nil?
        data
      end
    end

    # Structure Stubber for CustomizedLoadMetricSpecification
    class CustomizedLoadMetricSpecification
      def self.default(visited=[])
        return nil if visited.include?('CustomizedLoadMetricSpecification')
        visited = visited + ['CustomizedLoadMetricSpecification']
        {
          metric_name: 'metric_name',
          namespace: 'namespace',
          dimensions: MetricDimensions.default(visited),
          statistic: 'statistic',
          unit: 'unit',
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomizedLoadMetricSpecification.new
        data = {}
        data['MetricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['Namespace'] = stub[:namespace] unless stub[:namespace].nil?
        data['Dimensions'] = Stubs::MetricDimensions.stub(stub[:dimensions]) unless stub[:dimensions].nil?
        data['Statistic'] = stub[:statistic] unless stub[:statistic].nil?
        data['Unit'] = stub[:unit] unless stub[:unit].nil?
        data
      end
    end

    # Structure Stubber for PredefinedLoadMetricSpecification
    class PredefinedLoadMetricSpecification
      def self.default(visited=[])
        return nil if visited.include?('PredefinedLoadMetricSpecification')
        visited = visited + ['PredefinedLoadMetricSpecification']
        {
          predefined_load_metric_type: 'predefined_load_metric_type',
          resource_label: 'resource_label',
        }
      end

      def self.stub(stub)
        stub ||= Types::PredefinedLoadMetricSpecification.new
        data = {}
        data['PredefinedLoadMetricType'] = stub[:predefined_load_metric_type] unless stub[:predefined_load_metric_type].nil?
        data['ResourceLabel'] = stub[:resource_label] unless stub[:resource_label].nil?
        data
      end
    end

    # List Stubber for TargetTrackingConfigurations
    class TargetTrackingConfigurations
      def self.default(visited=[])
        return nil if visited.include?('TargetTrackingConfigurations')
        visited = visited + ['TargetTrackingConfigurations']
        [
          TargetTrackingConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TargetTrackingConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ApplicationSource
    class ApplicationSource
      def self.default(visited=[])
        return nil if visited.include?('ApplicationSource')
        visited = visited + ['ApplicationSource']
        {
          cloud_formation_stack_arn: 'cloud_formation_stack_arn',
          tag_filters: TagFilters.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationSource.new
        data = {}
        data['CloudFormationStackARN'] = stub[:cloud_formation_stack_arn] unless stub[:cloud_formation_stack_arn].nil?
        data['TagFilters'] = Stubs::TagFilters.stub(stub[:tag_filters]) unless stub[:tag_filters].nil?
        data
      end
    end

    # List Stubber for TagFilters
    class TagFilters
      def self.default(visited=[])
        return nil if visited.include?('TagFilters')
        visited = visited + ['TagFilters']
        [
          TagFilter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TagFilter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TagFilter
    class TagFilter
      def self.default(visited=[])
        return nil if visited.include?('TagFilter')
        visited = visited + ['TagFilter']
        {
          key: 'key',
          values: TagValues.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TagFilter.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Values'] = Stubs::TagValues.stub(stub[:values]) unless stub[:values].nil?
        data
      end
    end

    # List Stubber for TagValues
    class TagValues
      def self.default(visited=[])
        return nil if visited.include?('TagValues')
        visited = visited + ['TagValues']
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

    # Operation Stubber for GetScalingPlanResourceForecastData
    class GetScalingPlanResourceForecastData
      def self.default(visited=[])
        {
          datapoints: Datapoints.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Datapoints'] = Stubs::Datapoints.stub(stub[:datapoints]) unless stub[:datapoints].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Datapoints
    class Datapoints
      def self.default(visited=[])
        return nil if visited.include?('Datapoints')
        visited = visited + ['Datapoints']
        [
          Datapoint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Datapoint.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Datapoint
    class Datapoint
      def self.default(visited=[])
        return nil if visited.include?('Datapoint')
        visited = visited + ['Datapoint']
        {
          timestamp: Time.now,
          value: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::Datapoint.new
        data = {}
        data['Timestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:timestamp]).to_i unless stub[:timestamp].nil?
        data['Value'] = Hearth::NumberHelper.serialize(stub[:value])
        data
      end
    end

    # Operation Stubber for UpdateScalingPlan
    class UpdateScalingPlan
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
  end
end
