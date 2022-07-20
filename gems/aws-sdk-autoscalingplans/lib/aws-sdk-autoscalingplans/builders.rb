# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AutoScalingPlans
  module Builders

    # Operation Builder for CreateScalingPlan
    class CreateScalingPlan
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AnyScaleScalingPlannerFrontendService.CreateScalingPlan'
        data = {}
        data['ScalingPlanName'] = input[:scaling_plan_name] unless input[:scaling_plan_name].nil?
        data['ApplicationSource'] = Builders::ApplicationSource.build(input[:application_source]) unless input[:application_source].nil?
        data['ScalingInstructions'] = Builders::ScalingInstructions.build(input[:scaling_instructions]) unless input[:scaling_instructions].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ScalingInstructions
    class ScalingInstructions
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ScalingInstruction.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ScalingInstruction
    class ScalingInstruction
      def self.build(input)
        data = {}
        data['ServiceNamespace'] = input[:service_namespace] unless input[:service_namespace].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['ScalableDimension'] = input[:scalable_dimension] unless input[:scalable_dimension].nil?
        data['MinCapacity'] = input[:min_capacity] unless input[:min_capacity].nil?
        data['MaxCapacity'] = input[:max_capacity] unless input[:max_capacity].nil?
        data['TargetTrackingConfigurations'] = Builders::TargetTrackingConfigurations.build(input[:target_tracking_configurations]) unless input[:target_tracking_configurations].nil?
        data['PredefinedLoadMetricSpecification'] = Builders::PredefinedLoadMetricSpecification.build(input[:predefined_load_metric_specification]) unless input[:predefined_load_metric_specification].nil?
        data['CustomizedLoadMetricSpecification'] = Builders::CustomizedLoadMetricSpecification.build(input[:customized_load_metric_specification]) unless input[:customized_load_metric_specification].nil?
        data['ScheduledActionBufferTime'] = input[:scheduled_action_buffer_time] unless input[:scheduled_action_buffer_time].nil?
        data['PredictiveScalingMaxCapacityBehavior'] = input[:predictive_scaling_max_capacity_behavior] unless input[:predictive_scaling_max_capacity_behavior].nil?
        data['PredictiveScalingMaxCapacityBuffer'] = input[:predictive_scaling_max_capacity_buffer] unless input[:predictive_scaling_max_capacity_buffer].nil?
        data['PredictiveScalingMode'] = input[:predictive_scaling_mode] unless input[:predictive_scaling_mode].nil?
        data['ScalingPolicyUpdateBehavior'] = input[:scaling_policy_update_behavior] unless input[:scaling_policy_update_behavior].nil?
        data['DisableDynamicScaling'] = input[:disable_dynamic_scaling] unless input[:disable_dynamic_scaling].nil?
        data
      end
    end

    # Structure Builder for CustomizedLoadMetricSpecification
    class CustomizedLoadMetricSpecification
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

    # Structure Builder for PredefinedLoadMetricSpecification
    class PredefinedLoadMetricSpecification
      def self.build(input)
        data = {}
        data['PredefinedLoadMetricType'] = input[:predefined_load_metric_type] unless input[:predefined_load_metric_type].nil?
        data['ResourceLabel'] = input[:resource_label] unless input[:resource_label].nil?
        data
      end
    end

    # List Builder for TargetTrackingConfigurations
    class TargetTrackingConfigurations
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::TargetTrackingConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TargetTrackingConfiguration
    class TargetTrackingConfiguration
      def self.build(input)
        data = {}
        data['PredefinedScalingMetricSpecification'] = Builders::PredefinedScalingMetricSpecification.build(input[:predefined_scaling_metric_specification]) unless input[:predefined_scaling_metric_specification].nil?
        data['CustomizedScalingMetricSpecification'] = Builders::CustomizedScalingMetricSpecification.build(input[:customized_scaling_metric_specification]) unless input[:customized_scaling_metric_specification].nil?
        data['TargetValue'] = Hearth::NumberHelper.serialize(input[:target_value]) unless input[:target_value].nil?
        data['DisableScaleIn'] = input[:disable_scale_in] unless input[:disable_scale_in].nil?
        data['ScaleOutCooldown'] = input[:scale_out_cooldown] unless input[:scale_out_cooldown].nil?
        data['ScaleInCooldown'] = input[:scale_in_cooldown] unless input[:scale_in_cooldown].nil?
        data['EstimatedInstanceWarmup'] = input[:estimated_instance_warmup] unless input[:estimated_instance_warmup].nil?
        data
      end
    end

    # Structure Builder for CustomizedScalingMetricSpecification
    class CustomizedScalingMetricSpecification
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

    # Structure Builder for PredefinedScalingMetricSpecification
    class PredefinedScalingMetricSpecification
      def self.build(input)
        data = {}
        data['PredefinedScalingMetricType'] = input[:predefined_scaling_metric_type] unless input[:predefined_scaling_metric_type].nil?
        data['ResourceLabel'] = input[:resource_label] unless input[:resource_label].nil?
        data
      end
    end

    # Structure Builder for ApplicationSource
    class ApplicationSource
      def self.build(input)
        data = {}
        data['CloudFormationStackARN'] = input[:cloud_formation_stack_arn] unless input[:cloud_formation_stack_arn].nil?
        data['TagFilters'] = Builders::TagFilters.build(input[:tag_filters]) unless input[:tag_filters].nil?
        data
      end
    end

    # List Builder for TagFilters
    class TagFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::TagFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TagFilter
    class TagFilter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Values'] = Builders::TagValues.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for TagValues
    class TagValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteScalingPlan
    class DeleteScalingPlan
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AnyScaleScalingPlannerFrontendService.DeleteScalingPlan'
        data = {}
        data['ScalingPlanName'] = input[:scaling_plan_name] unless input[:scaling_plan_name].nil?
        data['ScalingPlanVersion'] = input[:scaling_plan_version] unless input[:scaling_plan_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeScalingPlanResources
    class DescribeScalingPlanResources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AnyScaleScalingPlannerFrontendService.DescribeScalingPlanResources'
        data = {}
        data['ScalingPlanName'] = input[:scaling_plan_name] unless input[:scaling_plan_name].nil?
        data['ScalingPlanVersion'] = input[:scaling_plan_version] unless input[:scaling_plan_version].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeScalingPlans
    class DescribeScalingPlans
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AnyScaleScalingPlannerFrontendService.DescribeScalingPlans'
        data = {}
        data['ScalingPlanNames'] = Builders::ScalingPlanNames.build(input[:scaling_plan_names]) unless input[:scaling_plan_names].nil?
        data['ScalingPlanVersion'] = input[:scaling_plan_version] unless input[:scaling_plan_version].nil?
        data['ApplicationSources'] = Builders::ApplicationSources.build(input[:application_sources]) unless input[:application_sources].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ApplicationSources
    class ApplicationSources
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ApplicationSource.build(element) unless element.nil?
        end
        data
      end
    end

    # List Builder for ScalingPlanNames
    class ScalingPlanNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetScalingPlanResourceForecastData
    class GetScalingPlanResourceForecastData
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AnyScaleScalingPlannerFrontendService.GetScalingPlanResourceForecastData'
        data = {}
        data['ScalingPlanName'] = input[:scaling_plan_name] unless input[:scaling_plan_name].nil?
        data['ScalingPlanVersion'] = input[:scaling_plan_version] unless input[:scaling_plan_version].nil?
        data['ServiceNamespace'] = input[:service_namespace] unless input[:service_namespace].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['ScalableDimension'] = input[:scalable_dimension] unless input[:scalable_dimension].nil?
        data['ForecastDataType'] = input[:forecast_data_type] unless input[:forecast_data_type].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateScalingPlan
    class UpdateScalingPlan
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AnyScaleScalingPlannerFrontendService.UpdateScalingPlan'
        data = {}
        data['ScalingPlanName'] = input[:scaling_plan_name] unless input[:scaling_plan_name].nil?
        data['ScalingPlanVersion'] = input[:scaling_plan_version] unless input[:scaling_plan_version].nil?
        data['ApplicationSource'] = Builders::ApplicationSource.build(input[:application_source]) unless input[:application_source].nil?
        data['ScalingInstructions'] = Builders::ScalingInstructions.build(input[:scaling_instructions]) unless input[:scaling_instructions].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
