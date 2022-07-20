# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AutoScalingPlans
  module Parsers

    # Operation Parser for CreateScalingPlan
    class CreateScalingPlan
      def self.parse(http_resp)
        data = Types::CreateScalingPlanOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.scaling_plan_version = map['ScalingPlanVersion']
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

    # Operation Parser for DeleteScalingPlan
    class DeleteScalingPlan
      def self.parse(http_resp)
        data = Types::DeleteScalingPlanOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
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

    # Operation Parser for DescribeScalingPlanResources
    class DescribeScalingPlanResources
      def self.parse(http_resp)
        data = Types::DescribeScalingPlanResourcesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.scaling_plan_resources = (Parsers::ScalingPlanResources.parse(map['ScalingPlanResources']) unless map['ScalingPlanResources'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ScalingPlanResources
      def self.parse(list)
        list.map do |value|
          Parsers::ScalingPlanResource.parse(value) unless value.nil?
        end
      end
    end

    class ScalingPlanResource
      def self.parse(map)
        data = Types::ScalingPlanResource.new
        data.scaling_plan_name = map['ScalingPlanName']
        data.scaling_plan_version = map['ScalingPlanVersion']
        data.service_namespace = map['ServiceNamespace']
        data.resource_id = map['ResourceId']
        data.scalable_dimension = map['ScalableDimension']
        data.scaling_policies = (Parsers::ScalingPolicies.parse(map['ScalingPolicies']) unless map['ScalingPolicies'].nil?)
        data.scaling_status_code = map['ScalingStatusCode']
        data.scaling_status_message = map['ScalingStatusMessage']
        return data
      end
    end

    class ScalingPolicies
      def self.parse(list)
        list.map do |value|
          Parsers::ScalingPolicy.parse(value) unless value.nil?
        end
      end
    end

    class ScalingPolicy
      def self.parse(map)
        data = Types::ScalingPolicy.new
        data.policy_name = map['PolicyName']
        data.policy_type = map['PolicyType']
        data.target_tracking_configuration = (Parsers::TargetTrackingConfiguration.parse(map['TargetTrackingConfiguration']) unless map['TargetTrackingConfiguration'].nil?)
        return data
      end
    end

    class TargetTrackingConfiguration
      def self.parse(map)
        data = Types::TargetTrackingConfiguration.new
        data.predefined_scaling_metric_specification = (Parsers::PredefinedScalingMetricSpecification.parse(map['PredefinedScalingMetricSpecification']) unless map['PredefinedScalingMetricSpecification'].nil?)
        data.customized_scaling_metric_specification = (Parsers::CustomizedScalingMetricSpecification.parse(map['CustomizedScalingMetricSpecification']) unless map['CustomizedScalingMetricSpecification'].nil?)
        data.target_value = Hearth::NumberHelper.deserialize(map['TargetValue'])
        data.disable_scale_in = map['DisableScaleIn']
        data.scale_out_cooldown = map['ScaleOutCooldown']
        data.scale_in_cooldown = map['ScaleInCooldown']
        data.estimated_instance_warmup = map['EstimatedInstanceWarmup']
        return data
      end
    end

    class CustomizedScalingMetricSpecification
      def self.parse(map)
        data = Types::CustomizedScalingMetricSpecification.new
        data.metric_name = map['MetricName']
        data.namespace = map['Namespace']
        data.dimensions = (Parsers::MetricDimensions.parse(map['Dimensions']) unless map['Dimensions'].nil?)
        data.statistic = map['Statistic']
        data.unit = map['Unit']
        return data
      end
    end

    class MetricDimensions
      def self.parse(list)
        list.map do |value|
          Parsers::MetricDimension.parse(value) unless value.nil?
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

    class PredefinedScalingMetricSpecification
      def self.parse(map)
        data = Types::PredefinedScalingMetricSpecification.new
        data.predefined_scaling_metric_type = map['PredefinedScalingMetricType']
        data.resource_label = map['ResourceLabel']
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

    # Operation Parser for DescribeScalingPlans
    class DescribeScalingPlans
      def self.parse(http_resp)
        data = Types::DescribeScalingPlansOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.scaling_plans = (Parsers::ScalingPlans.parse(map['ScalingPlans']) unless map['ScalingPlans'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ScalingPlans
      def self.parse(list)
        list.map do |value|
          Parsers::ScalingPlan.parse(value) unless value.nil?
        end
      end
    end

    class ScalingPlan
      def self.parse(map)
        data = Types::ScalingPlan.new
        data.scaling_plan_name = map['ScalingPlanName']
        data.scaling_plan_version = map['ScalingPlanVersion']
        data.application_source = (Parsers::ApplicationSource.parse(map['ApplicationSource']) unless map['ApplicationSource'].nil?)
        data.scaling_instructions = (Parsers::ScalingInstructions.parse(map['ScalingInstructions']) unless map['ScalingInstructions'].nil?)
        data.status_code = map['StatusCode']
        data.status_message = map['StatusMessage']
        data.status_start_time = Time.at(map['StatusStartTime'].to_i) if map['StatusStartTime']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        return data
      end
    end

    class ScalingInstructions
      def self.parse(list)
        list.map do |value|
          Parsers::ScalingInstruction.parse(value) unless value.nil?
        end
      end
    end

    class ScalingInstruction
      def self.parse(map)
        data = Types::ScalingInstruction.new
        data.service_namespace = map['ServiceNamespace']
        data.resource_id = map['ResourceId']
        data.scalable_dimension = map['ScalableDimension']
        data.min_capacity = map['MinCapacity']
        data.max_capacity = map['MaxCapacity']
        data.target_tracking_configurations = (Parsers::TargetTrackingConfigurations.parse(map['TargetTrackingConfigurations']) unless map['TargetTrackingConfigurations'].nil?)
        data.predefined_load_metric_specification = (Parsers::PredefinedLoadMetricSpecification.parse(map['PredefinedLoadMetricSpecification']) unless map['PredefinedLoadMetricSpecification'].nil?)
        data.customized_load_metric_specification = (Parsers::CustomizedLoadMetricSpecification.parse(map['CustomizedLoadMetricSpecification']) unless map['CustomizedLoadMetricSpecification'].nil?)
        data.scheduled_action_buffer_time = map['ScheduledActionBufferTime']
        data.predictive_scaling_max_capacity_behavior = map['PredictiveScalingMaxCapacityBehavior']
        data.predictive_scaling_max_capacity_buffer = map['PredictiveScalingMaxCapacityBuffer']
        data.predictive_scaling_mode = map['PredictiveScalingMode']
        data.scaling_policy_update_behavior = map['ScalingPolicyUpdateBehavior']
        data.disable_dynamic_scaling = map['DisableDynamicScaling']
        return data
      end
    end

    class CustomizedLoadMetricSpecification
      def self.parse(map)
        data = Types::CustomizedLoadMetricSpecification.new
        data.metric_name = map['MetricName']
        data.namespace = map['Namespace']
        data.dimensions = (Parsers::MetricDimensions.parse(map['Dimensions']) unless map['Dimensions'].nil?)
        data.statistic = map['Statistic']
        data.unit = map['Unit']
        return data
      end
    end

    class PredefinedLoadMetricSpecification
      def self.parse(map)
        data = Types::PredefinedLoadMetricSpecification.new
        data.predefined_load_metric_type = map['PredefinedLoadMetricType']
        data.resource_label = map['ResourceLabel']
        return data
      end
    end

    class TargetTrackingConfigurations
      def self.parse(list)
        list.map do |value|
          Parsers::TargetTrackingConfiguration.parse(value) unless value.nil?
        end
      end
    end

    class ApplicationSource
      def self.parse(map)
        data = Types::ApplicationSource.new
        data.cloud_formation_stack_arn = map['CloudFormationStackARN']
        data.tag_filters = (Parsers::TagFilters.parse(map['TagFilters']) unless map['TagFilters'].nil?)
        return data
      end
    end

    class TagFilters
      def self.parse(list)
        list.map do |value|
          Parsers::TagFilter.parse(value) unless value.nil?
        end
      end
    end

    class TagFilter
      def self.parse(map)
        data = Types::TagFilter.new
        data.key = map['Key']
        data.values = (Parsers::TagValues.parse(map['Values']) unless map['Values'].nil?)
        return data
      end
    end

    class TagValues
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for GetScalingPlanResourceForecastData
    class GetScalingPlanResourceForecastData
      def self.parse(http_resp)
        data = Types::GetScalingPlanResourceForecastDataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.datapoints = (Parsers::Datapoints.parse(map['Datapoints']) unless map['Datapoints'].nil?)
        data
      end
    end

    class Datapoints
      def self.parse(list)
        list.map do |value|
          Parsers::Datapoint.parse(value) unless value.nil?
        end
      end
    end

    class Datapoint
      def self.parse(map)
        data = Types::Datapoint.new
        data.timestamp = Time.at(map['Timestamp'].to_i) if map['Timestamp']
        data.value = Hearth::NumberHelper.deserialize(map['Value'])
        return data
      end
    end

    # Operation Parser for UpdateScalingPlan
    class UpdateScalingPlan
      def self.parse(http_resp)
        data = Types::UpdateScalingPlanOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
