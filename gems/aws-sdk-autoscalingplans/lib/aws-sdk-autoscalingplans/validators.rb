# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AutoScalingPlans
  module Validators

    class ApplicationSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationSource, context: context)
        Hearth::Validator.validate!(input[:cloud_formation_stack_arn], ::String, context: "#{context}[:cloud_formation_stack_arn]")
        Validators::TagFilters.validate!(input[:tag_filters], context: "#{context}[:tag_filters]") unless input[:tag_filters].nil?
      end
    end

    class ApplicationSources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ApplicationSource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConcurrentUpdateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentUpdateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateScalingPlanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateScalingPlanInput, context: context)
        Hearth::Validator.validate!(input[:scaling_plan_name], ::String, context: "#{context}[:scaling_plan_name]")
        Validators::ApplicationSource.validate!(input[:application_source], context: "#{context}[:application_source]") unless input[:application_source].nil?
        Validators::ScalingInstructions.validate!(input[:scaling_instructions], context: "#{context}[:scaling_instructions]") unless input[:scaling_instructions].nil?
      end
    end

    class CreateScalingPlanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateScalingPlanOutput, context: context)
        Hearth::Validator.validate!(input[:scaling_plan_version], ::Integer, context: "#{context}[:scaling_plan_version]")
      end
    end

    class CustomizedLoadMetricSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomizedLoadMetricSpecification, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Validators::MetricDimensions.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
        Hearth::Validator.validate!(input[:statistic], ::String, context: "#{context}[:statistic]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
      end
    end

    class CustomizedScalingMetricSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomizedScalingMetricSpecification, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Validators::MetricDimensions.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
        Hearth::Validator.validate!(input[:statistic], ::String, context: "#{context}[:statistic]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
      end
    end

    class Datapoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Datapoint, context: context)
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:value], ::Float, context: "#{context}[:value]")
      end
    end

    class Datapoints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Datapoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteScalingPlanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteScalingPlanInput, context: context)
        Hearth::Validator.validate!(input[:scaling_plan_name], ::String, context: "#{context}[:scaling_plan_name]")
        Hearth::Validator.validate!(input[:scaling_plan_version], ::Integer, context: "#{context}[:scaling_plan_version]")
      end
    end

    class DeleteScalingPlanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteScalingPlanOutput, context: context)
      end
    end

    class DescribeScalingPlanResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScalingPlanResourcesInput, context: context)
        Hearth::Validator.validate!(input[:scaling_plan_name], ::String, context: "#{context}[:scaling_plan_name]")
        Hearth::Validator.validate!(input[:scaling_plan_version], ::Integer, context: "#{context}[:scaling_plan_version]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeScalingPlanResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScalingPlanResourcesOutput, context: context)
        Validators::ScalingPlanResources.validate!(input[:scaling_plan_resources], context: "#{context}[:scaling_plan_resources]") unless input[:scaling_plan_resources].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeScalingPlansInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScalingPlansInput, context: context)
        Validators::ScalingPlanNames.validate!(input[:scaling_plan_names], context: "#{context}[:scaling_plan_names]") unless input[:scaling_plan_names].nil?
        Hearth::Validator.validate!(input[:scaling_plan_version], ::Integer, context: "#{context}[:scaling_plan_version]")
        Validators::ApplicationSources.validate!(input[:application_sources], context: "#{context}[:application_sources]") unless input[:application_sources].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeScalingPlansOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScalingPlansOutput, context: context)
        Validators::ScalingPlans.validate!(input[:scaling_plans], context: "#{context}[:scaling_plans]") unless input[:scaling_plans].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetScalingPlanResourceForecastDataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetScalingPlanResourceForecastDataInput, context: context)
        Hearth::Validator.validate!(input[:scaling_plan_name], ::String, context: "#{context}[:scaling_plan_name]")
        Hearth::Validator.validate!(input[:scaling_plan_version], ::Integer, context: "#{context}[:scaling_plan_version]")
        Hearth::Validator.validate!(input[:service_namespace], ::String, context: "#{context}[:service_namespace]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:scalable_dimension], ::String, context: "#{context}[:scalable_dimension]")
        Hearth::Validator.validate!(input[:forecast_data_type], ::String, context: "#{context}[:forecast_data_type]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
      end
    end

    class GetScalingPlanResourceForecastDataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetScalingPlanResourceForecastDataOutput, context: context)
        Validators::Datapoints.validate!(input[:datapoints], context: "#{context}[:datapoints]") unless input[:datapoints].nil?
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
          Validators::MetricDimension.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ObjectNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ObjectNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PredefinedLoadMetricSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PredefinedLoadMetricSpecification, context: context)
        Hearth::Validator.validate!(input[:predefined_load_metric_type], ::String, context: "#{context}[:predefined_load_metric_type]")
        Hearth::Validator.validate!(input[:resource_label], ::String, context: "#{context}[:resource_label]")
      end
    end

    class PredefinedScalingMetricSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PredefinedScalingMetricSpecification, context: context)
        Hearth::Validator.validate!(input[:predefined_scaling_metric_type], ::String, context: "#{context}[:predefined_scaling_metric_type]")
        Hearth::Validator.validate!(input[:resource_label], ::String, context: "#{context}[:resource_label]")
      end
    end

    class ScalingInstruction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScalingInstruction, context: context)
        Hearth::Validator.validate!(input[:service_namespace], ::String, context: "#{context}[:service_namespace]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:scalable_dimension], ::String, context: "#{context}[:scalable_dimension]")
        Hearth::Validator.validate!(input[:min_capacity], ::Integer, context: "#{context}[:min_capacity]")
        Hearth::Validator.validate!(input[:max_capacity], ::Integer, context: "#{context}[:max_capacity]")
        Validators::TargetTrackingConfigurations.validate!(input[:target_tracking_configurations], context: "#{context}[:target_tracking_configurations]") unless input[:target_tracking_configurations].nil?
        Validators::PredefinedLoadMetricSpecification.validate!(input[:predefined_load_metric_specification], context: "#{context}[:predefined_load_metric_specification]") unless input[:predefined_load_metric_specification].nil?
        Validators::CustomizedLoadMetricSpecification.validate!(input[:customized_load_metric_specification], context: "#{context}[:customized_load_metric_specification]") unless input[:customized_load_metric_specification].nil?
        Hearth::Validator.validate!(input[:scheduled_action_buffer_time], ::Integer, context: "#{context}[:scheduled_action_buffer_time]")
        Hearth::Validator.validate!(input[:predictive_scaling_max_capacity_behavior], ::String, context: "#{context}[:predictive_scaling_max_capacity_behavior]")
        Hearth::Validator.validate!(input[:predictive_scaling_max_capacity_buffer], ::Integer, context: "#{context}[:predictive_scaling_max_capacity_buffer]")
        Hearth::Validator.validate!(input[:predictive_scaling_mode], ::String, context: "#{context}[:predictive_scaling_mode]")
        Hearth::Validator.validate!(input[:scaling_policy_update_behavior], ::String, context: "#{context}[:scaling_policy_update_behavior]")
        Hearth::Validator.validate!(input[:disable_dynamic_scaling], ::TrueClass, ::FalseClass, context: "#{context}[:disable_dynamic_scaling]")
      end
    end

    class ScalingInstructions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ScalingInstruction.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ScalingPlan
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScalingPlan, context: context)
        Hearth::Validator.validate!(input[:scaling_plan_name], ::String, context: "#{context}[:scaling_plan_name]")
        Hearth::Validator.validate!(input[:scaling_plan_version], ::Integer, context: "#{context}[:scaling_plan_version]")
        Validators::ApplicationSource.validate!(input[:application_source], context: "#{context}[:application_source]") unless input[:application_source].nil?
        Validators::ScalingInstructions.validate!(input[:scaling_instructions], context: "#{context}[:scaling_instructions]") unless input[:scaling_instructions].nil?
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:status_start_time], ::Time, context: "#{context}[:status_start_time]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class ScalingPlanNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ScalingPlanResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScalingPlanResource, context: context)
        Hearth::Validator.validate!(input[:scaling_plan_name], ::String, context: "#{context}[:scaling_plan_name]")
        Hearth::Validator.validate!(input[:scaling_plan_version], ::Integer, context: "#{context}[:scaling_plan_version]")
        Hearth::Validator.validate!(input[:service_namespace], ::String, context: "#{context}[:service_namespace]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:scalable_dimension], ::String, context: "#{context}[:scalable_dimension]")
        Validators::ScalingPolicies.validate!(input[:scaling_policies], context: "#{context}[:scaling_policies]") unless input[:scaling_policies].nil?
        Hearth::Validator.validate!(input[:scaling_status_code], ::String, context: "#{context}[:scaling_status_code]")
        Hearth::Validator.validate!(input[:scaling_status_message], ::String, context: "#{context}[:scaling_status_message]")
      end
    end

    class ScalingPlanResources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ScalingPlanResource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ScalingPlans
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ScalingPlan.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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
        Hearth::Validator.validate!(input[:policy_name], ::String, context: "#{context}[:policy_name]")
        Hearth::Validator.validate!(input[:policy_type], ::String, context: "#{context}[:policy_type]")
        Validators::TargetTrackingConfiguration.validate!(input[:target_tracking_configuration], context: "#{context}[:target_tracking_configuration]") unless input[:target_tracking_configuration].nil?
      end
    end

    class TagFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagFilter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Validators::TagValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class TagFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TagFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagValues
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
        Validators::PredefinedScalingMetricSpecification.validate!(input[:predefined_scaling_metric_specification], context: "#{context}[:predefined_scaling_metric_specification]") unless input[:predefined_scaling_metric_specification].nil?
        Validators::CustomizedScalingMetricSpecification.validate!(input[:customized_scaling_metric_specification], context: "#{context}[:customized_scaling_metric_specification]") unless input[:customized_scaling_metric_specification].nil?
        Hearth::Validator.validate!(input[:target_value], ::Float, context: "#{context}[:target_value]")
        Hearth::Validator.validate!(input[:disable_scale_in], ::TrueClass, ::FalseClass, context: "#{context}[:disable_scale_in]")
        Hearth::Validator.validate!(input[:scale_out_cooldown], ::Integer, context: "#{context}[:scale_out_cooldown]")
        Hearth::Validator.validate!(input[:scale_in_cooldown], ::Integer, context: "#{context}[:scale_in_cooldown]")
        Hearth::Validator.validate!(input[:estimated_instance_warmup], ::Integer, context: "#{context}[:estimated_instance_warmup]")
      end
    end

    class TargetTrackingConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TargetTrackingConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UpdateScalingPlanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateScalingPlanInput, context: context)
        Hearth::Validator.validate!(input[:scaling_plan_name], ::String, context: "#{context}[:scaling_plan_name]")
        Hearth::Validator.validate!(input[:scaling_plan_version], ::Integer, context: "#{context}[:scaling_plan_version]")
        Validators::ApplicationSource.validate!(input[:application_source], context: "#{context}[:application_source]") unless input[:application_source].nil?
        Validators::ScalingInstructions.validate!(input[:scaling_instructions], context: "#{context}[:scaling_instructions]") unless input[:scaling_instructions].nil?
      end
    end

    class UpdateScalingPlanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateScalingPlanOutput, context: context)
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
