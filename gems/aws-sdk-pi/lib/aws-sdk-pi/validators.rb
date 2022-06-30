# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::PI
  module Validators

    class AdditionalMetricsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AdditionalMetricsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::Float, context: "#{context}[:#{key}]")
        end
      end
    end

    class DataPoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataPoint, context: context)
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:value], ::Float, context: "#{context}[:value]")
      end
    end

    class DataPointsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DataPoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DescribeDimensionKeysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDimensionKeysInput, context: context)
        Hearth::Validator.validate!(input[:service_type], ::String, context: "#{context}[:service_type]")
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:metric], ::String, context: "#{context}[:metric]")
        Hearth::Validator.validate!(input[:period_in_seconds], ::Integer, context: "#{context}[:period_in_seconds]")
        Validators::DimensionGroup.validate!(input[:group_by], context: "#{context}[:group_by]") unless input[:group_by].nil?
        Validators::AdditionalMetricsList.validate!(input[:additional_metrics], context: "#{context}[:additional_metrics]") unless input[:additional_metrics].nil?
        Validators::DimensionGroup.validate!(input[:partition_by], context: "#{context}[:partition_by]") unless input[:partition_by].nil?
        Validators::MetricQueryFilterMap.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeDimensionKeysOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDimensionKeysOutput, context: context)
        Hearth::Validator.validate!(input[:aligned_start_time], ::Time, context: "#{context}[:aligned_start_time]")
        Hearth::Validator.validate!(input[:aligned_end_time], ::Time, context: "#{context}[:aligned_end_time]")
        Validators::ResponsePartitionKeyList.validate!(input[:partition_keys], context: "#{context}[:partition_keys]") unless input[:partition_keys].nil?
        Validators::DimensionKeyDescriptionList.validate!(input[:keys], context: "#{context}[:keys]") unless input[:keys].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DimensionDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DimensionDetail, context: context)
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
      end
    end

    class DimensionDetailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DimensionDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DimensionGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DimensionGroup, context: context)
        Hearth::Validator.validate!(input[:group], ::String, context: "#{context}[:group]")
        Validators::RequestStringList.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class DimensionGroupDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DimensionGroupDetail, context: context)
        Hearth::Validator.validate!(input[:group], ::String, context: "#{context}[:group]")
        Validators::DimensionDetailList.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
      end
    end

    class DimensionGroupDetailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DimensionGroupDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DimensionKeyDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DimensionKeyDescription, context: context)
        Validators::DimensionMap.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
        Hearth::Validator.validate!(input[:total], ::Float, context: "#{context}[:total]")
        Validators::AdditionalMetricsMap.validate!(input[:additional_metrics], context: "#{context}[:additional_metrics]") unless input[:additional_metrics].nil?
        Validators::MetricValuesList.validate!(input[:partitions], context: "#{context}[:partitions]") unless input[:partitions].nil?
      end
    end

    class DimensionKeyDescriptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DimensionKeyDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DimensionKeyDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DimensionKeyDetail, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:dimension], ::String, context: "#{context}[:dimension]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DimensionKeyDetailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DimensionKeyDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DimensionMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class DimensionsMetricList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FeatureMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FeatureMetadata, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class FeatureMetadataMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::FeatureMetadata.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class GetDimensionKeyDetailsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDimensionKeyDetailsInput, context: context)
        Hearth::Validator.validate!(input[:service_type], ::String, context: "#{context}[:service_type]")
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        Hearth::Validator.validate!(input[:group], ::String, context: "#{context}[:group]")
        Hearth::Validator.validate!(input[:group_identifier], ::String, context: "#{context}[:group_identifier]")
        Validators::RequestedDimensionList.validate!(input[:requested_dimensions], context: "#{context}[:requested_dimensions]") unless input[:requested_dimensions].nil?
      end
    end

    class GetDimensionKeyDetailsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDimensionKeyDetailsOutput, context: context)
        Validators::DimensionKeyDetailList.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
      end
    end

    class GetResourceMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourceMetadataInput, context: context)
        Hearth::Validator.validate!(input[:service_type], ::String, context: "#{context}[:service_type]")
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
      end
    end

    class GetResourceMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourceMetadataOutput, context: context)
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        Validators::FeatureMetadataMap.validate!(input[:features], context: "#{context}[:features]") unless input[:features].nil?
      end
    end

    class GetResourceMetricsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourceMetricsInput, context: context)
        Hearth::Validator.validate!(input[:service_type], ::String, context: "#{context}[:service_type]")
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        Validators::MetricQueryList.validate!(input[:metric_queries], context: "#{context}[:metric_queries]") unless input[:metric_queries].nil?
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:period_in_seconds], ::Integer, context: "#{context}[:period_in_seconds]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetResourceMetricsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourceMetricsOutput, context: context)
        Hearth::Validator.validate!(input[:aligned_start_time], ::Time, context: "#{context}[:aligned_start_time]")
        Hearth::Validator.validate!(input[:aligned_end_time], ::Time, context: "#{context}[:aligned_end_time]")
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        Validators::MetricKeyDataPointsList.validate!(input[:metric_list], context: "#{context}[:metric_list]") unless input[:metric_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class InternalServiceError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServiceError, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidArgumentException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidArgumentException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListAvailableResourceDimensionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAvailableResourceDimensionsInput, context: context)
        Hearth::Validator.validate!(input[:service_type], ::String, context: "#{context}[:service_type]")
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        Validators::DimensionsMetricList.validate!(input[:metrics], context: "#{context}[:metrics]") unless input[:metrics].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAvailableResourceDimensionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAvailableResourceDimensionsOutput, context: context)
        Validators::MetricDimensionsList.validate!(input[:metric_dimensions], context: "#{context}[:metric_dimensions]") unless input[:metric_dimensions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAvailableResourceMetricsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAvailableResourceMetricsInput, context: context)
        Hearth::Validator.validate!(input[:service_type], ::String, context: "#{context}[:service_type]")
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        Validators::MetricTypeList.validate!(input[:metric_types], context: "#{context}[:metric_types]") unless input[:metric_types].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAvailableResourceMetricsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAvailableResourceMetricsOutput, context: context)
        Validators::ResponseResourceMetricList.validate!(input[:metrics], context: "#{context}[:metrics]") unless input[:metrics].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class MetricDimensionGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricDimensionGroups, context: context)
        Hearth::Validator.validate!(input[:metric], ::String, context: "#{context}[:metric]")
        Validators::DimensionGroupDetailList.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
      end
    end

    class MetricDimensionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MetricDimensionGroups.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricKeyDataPoints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricKeyDataPoints, context: context)
        Validators::ResponseResourceMetricKey.validate!(input[:key], context: "#{context}[:key]") unless input[:key].nil?
        Validators::DataPointsList.validate!(input[:data_points], context: "#{context}[:data_points]") unless input[:data_points].nil?
      end
    end

    class MetricKeyDataPointsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MetricKeyDataPoints.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricQuery
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricQuery, context: context)
        Hearth::Validator.validate!(input[:metric], ::String, context: "#{context}[:metric]")
        Validators::DimensionGroup.validate!(input[:group_by], context: "#{context}[:group_by]") unless input[:group_by].nil?
        Validators::MetricQueryFilterMap.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
      end
    end

    class MetricQueryFilterMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class MetricQueryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MetricQuery.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MetricValuesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Float, context: "#{context}[#{index}]")
        end
      end
    end

    class NotAuthorizedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotAuthorizedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RequestStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RequestedDimensionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResponsePartitionKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResponsePartitionKey, context: context)
        Validators::DimensionMap.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
      end
    end

    class ResponsePartitionKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResponsePartitionKey.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResponseResourceMetric
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResponseResourceMetric, context: context)
        Hearth::Validator.validate!(input[:metric], ::String, context: "#{context}[:metric]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
      end
    end

    class ResponseResourceMetricKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResponseResourceMetricKey, context: context)
        Hearth::Validator.validate!(input[:metric], ::String, context: "#{context}[:metric]")
        Validators::DimensionMap.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
      end
    end

    class ResponseResourceMetricList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResponseResourceMetric.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
