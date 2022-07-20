# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AutoScalingPlans
  module Params

    module ApplicationSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationSource, context: context)
        type = Types::ApplicationSource.new
        type.cloud_formation_stack_arn = params[:cloud_formation_stack_arn]
        type.tag_filters = TagFilters.build(params[:tag_filters], context: "#{context}[:tag_filters]") unless params[:tag_filters].nil?
        type
      end
    end

    module ApplicationSources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ApplicationSource.build(element, context: "#{context}[#{index}]") unless element.nil?
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

    module CreateScalingPlanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateScalingPlanInput, context: context)
        type = Types::CreateScalingPlanInput.new
        type.scaling_plan_name = params[:scaling_plan_name]
        type.application_source = ApplicationSource.build(params[:application_source], context: "#{context}[:application_source]") unless params[:application_source].nil?
        type.scaling_instructions = ScalingInstructions.build(params[:scaling_instructions], context: "#{context}[:scaling_instructions]") unless params[:scaling_instructions].nil?
        type
      end
    end

    module CreateScalingPlanOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateScalingPlanOutput, context: context)
        type = Types::CreateScalingPlanOutput.new
        type.scaling_plan_version = params[:scaling_plan_version]
        type
      end
    end

    module CustomizedLoadMetricSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomizedLoadMetricSpecification, context: context)
        type = Types::CustomizedLoadMetricSpecification.new
        type.metric_name = params[:metric_name]
        type.namespace = params[:namespace]
        type.dimensions = MetricDimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.statistic = params[:statistic]
        type.unit = params[:unit]
        type
      end
    end

    module CustomizedScalingMetricSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomizedScalingMetricSpecification, context: context)
        type = Types::CustomizedScalingMetricSpecification.new
        type.metric_name = params[:metric_name]
        type.namespace = params[:namespace]
        type.dimensions = MetricDimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.statistic = params[:statistic]
        type.unit = params[:unit]
        type
      end
    end

    module Datapoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Datapoint, context: context)
        type = Types::Datapoint.new
        type.timestamp = params[:timestamp]
        type.value = params[:value]
        type
      end
    end

    module Datapoints
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Datapoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteScalingPlanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteScalingPlanInput, context: context)
        type = Types::DeleteScalingPlanInput.new
        type.scaling_plan_name = params[:scaling_plan_name]
        type.scaling_plan_version = params[:scaling_plan_version]
        type
      end
    end

    module DeleteScalingPlanOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteScalingPlanOutput, context: context)
        type = Types::DeleteScalingPlanOutput.new
        type
      end
    end

    module DescribeScalingPlanResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScalingPlanResourcesInput, context: context)
        type = Types::DescribeScalingPlanResourcesInput.new
        type.scaling_plan_name = params[:scaling_plan_name]
        type.scaling_plan_version = params[:scaling_plan_version]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeScalingPlanResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScalingPlanResourcesOutput, context: context)
        type = Types::DescribeScalingPlanResourcesOutput.new
        type.scaling_plan_resources = ScalingPlanResources.build(params[:scaling_plan_resources], context: "#{context}[:scaling_plan_resources]") unless params[:scaling_plan_resources].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeScalingPlansInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScalingPlansInput, context: context)
        type = Types::DescribeScalingPlansInput.new
        type.scaling_plan_names = ScalingPlanNames.build(params[:scaling_plan_names], context: "#{context}[:scaling_plan_names]") unless params[:scaling_plan_names].nil?
        type.scaling_plan_version = params[:scaling_plan_version]
        type.application_sources = ApplicationSources.build(params[:application_sources], context: "#{context}[:application_sources]") unless params[:application_sources].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeScalingPlansOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScalingPlansOutput, context: context)
        type = Types::DescribeScalingPlansOutput.new
        type.scaling_plans = ScalingPlans.build(params[:scaling_plans], context: "#{context}[:scaling_plans]") unless params[:scaling_plans].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetScalingPlanResourceForecastDataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetScalingPlanResourceForecastDataInput, context: context)
        type = Types::GetScalingPlanResourceForecastDataInput.new
        type.scaling_plan_name = params[:scaling_plan_name]
        type.scaling_plan_version = params[:scaling_plan_version]
        type.service_namespace = params[:service_namespace]
        type.resource_id = params[:resource_id]
        type.scalable_dimension = params[:scalable_dimension]
        type.forecast_data_type = params[:forecast_data_type]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module GetScalingPlanResourceForecastDataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetScalingPlanResourceForecastDataOutput, context: context)
        type = Types::GetScalingPlanResourceForecastDataOutput.new
        type.datapoints = Datapoints.build(params[:datapoints], context: "#{context}[:datapoints]") unless params[:datapoints].nil?
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

    module PredefinedLoadMetricSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PredefinedLoadMetricSpecification, context: context)
        type = Types::PredefinedLoadMetricSpecification.new
        type.predefined_load_metric_type = params[:predefined_load_metric_type]
        type.resource_label = params[:resource_label]
        type
      end
    end

    module PredefinedScalingMetricSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PredefinedScalingMetricSpecification, context: context)
        type = Types::PredefinedScalingMetricSpecification.new
        type.predefined_scaling_metric_type = params[:predefined_scaling_metric_type]
        type.resource_label = params[:resource_label]
        type
      end
    end

    module ScalingInstruction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScalingInstruction, context: context)
        type = Types::ScalingInstruction.new
        type.service_namespace = params[:service_namespace]
        type.resource_id = params[:resource_id]
        type.scalable_dimension = params[:scalable_dimension]
        type.min_capacity = params[:min_capacity]
        type.max_capacity = params[:max_capacity]
        type.target_tracking_configurations = TargetTrackingConfigurations.build(params[:target_tracking_configurations], context: "#{context}[:target_tracking_configurations]") unless params[:target_tracking_configurations].nil?
        type.predefined_load_metric_specification = PredefinedLoadMetricSpecification.build(params[:predefined_load_metric_specification], context: "#{context}[:predefined_load_metric_specification]") unless params[:predefined_load_metric_specification].nil?
        type.customized_load_metric_specification = CustomizedLoadMetricSpecification.build(params[:customized_load_metric_specification], context: "#{context}[:customized_load_metric_specification]") unless params[:customized_load_metric_specification].nil?
        type.scheduled_action_buffer_time = params[:scheduled_action_buffer_time]
        type.predictive_scaling_max_capacity_behavior = params[:predictive_scaling_max_capacity_behavior]
        type.predictive_scaling_max_capacity_buffer = params[:predictive_scaling_max_capacity_buffer]
        type.predictive_scaling_mode = params[:predictive_scaling_mode]
        type.scaling_policy_update_behavior = params[:scaling_policy_update_behavior]
        type.disable_dynamic_scaling = params[:disable_dynamic_scaling]
        type
      end
    end

    module ScalingInstructions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ScalingInstruction.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ScalingPlan
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScalingPlan, context: context)
        type = Types::ScalingPlan.new
        type.scaling_plan_name = params[:scaling_plan_name]
        type.scaling_plan_version = params[:scaling_plan_version]
        type.application_source = ApplicationSource.build(params[:application_source], context: "#{context}[:application_source]") unless params[:application_source].nil?
        type.scaling_instructions = ScalingInstructions.build(params[:scaling_instructions], context: "#{context}[:scaling_instructions]") unless params[:scaling_instructions].nil?
        type.status_code = params[:status_code]
        type.status_message = params[:status_message]
        type.status_start_time = params[:status_start_time]
        type.creation_time = params[:creation_time]
        type
      end
    end

    module ScalingPlanNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ScalingPlanResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScalingPlanResource, context: context)
        type = Types::ScalingPlanResource.new
        type.scaling_plan_name = params[:scaling_plan_name]
        type.scaling_plan_version = params[:scaling_plan_version]
        type.service_namespace = params[:service_namespace]
        type.resource_id = params[:resource_id]
        type.scalable_dimension = params[:scalable_dimension]
        type.scaling_policies = ScalingPolicies.build(params[:scaling_policies], context: "#{context}[:scaling_policies]") unless params[:scaling_policies].nil?
        type.scaling_status_code = params[:scaling_status_code]
        type.scaling_status_message = params[:scaling_status_message]
        type
      end
    end

    module ScalingPlanResources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ScalingPlanResource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ScalingPlans
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ScalingPlan.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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
        type.policy_name = params[:policy_name]
        type.policy_type = params[:policy_type]
        type.target_tracking_configuration = TargetTrackingConfiguration.build(params[:target_tracking_configuration], context: "#{context}[:target_tracking_configuration]") unless params[:target_tracking_configuration].nil?
        type
      end
    end

    module TagFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagFilter, context: context)
        type = Types::TagFilter.new
        type.key = params[:key]
        type.values = TagValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module TagFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TagFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagValues
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
        type.predefined_scaling_metric_specification = PredefinedScalingMetricSpecification.build(params[:predefined_scaling_metric_specification], context: "#{context}[:predefined_scaling_metric_specification]") unless params[:predefined_scaling_metric_specification].nil?
        type.customized_scaling_metric_specification = CustomizedScalingMetricSpecification.build(params[:customized_scaling_metric_specification], context: "#{context}[:customized_scaling_metric_specification]") unless params[:customized_scaling_metric_specification].nil?
        type.target_value = params[:target_value]
        type.disable_scale_in = params[:disable_scale_in]
        type.scale_out_cooldown = params[:scale_out_cooldown]
        type.scale_in_cooldown = params[:scale_in_cooldown]
        type.estimated_instance_warmup = params[:estimated_instance_warmup]
        type
      end
    end

    module TargetTrackingConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TargetTrackingConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UpdateScalingPlanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateScalingPlanInput, context: context)
        type = Types::UpdateScalingPlanInput.new
        type.scaling_plan_name = params[:scaling_plan_name]
        type.scaling_plan_version = params[:scaling_plan_version]
        type.application_source = ApplicationSource.build(params[:application_source], context: "#{context}[:application_source]") unless params[:application_source].nil?
        type.scaling_instructions = ScalingInstructions.build(params[:scaling_instructions], context: "#{context}[:scaling_instructions]") unless params[:scaling_instructions].nil?
        type
      end
    end

    module UpdateScalingPlanOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateScalingPlanOutput, context: context)
        type = Types::UpdateScalingPlanOutput.new
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
