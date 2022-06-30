# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::PI
  module Params

    module AdditionalMetricsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AdditionalMetricsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module DataPoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataPoint, context: context)
        type = Types::DataPoint.new
        type.timestamp = params[:timestamp]
        type.value = params[:value]
        type
      end
    end

    module DataPointsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataPoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DescribeDimensionKeysInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDimensionKeysInput, context: context)
        type = Types::DescribeDimensionKeysInput.new
        type.service_type = params[:service_type]
        type.identifier = params[:identifier]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.metric = params[:metric]
        type.period_in_seconds = params[:period_in_seconds]
        type.group_by = DimensionGroup.build(params[:group_by], context: "#{context}[:group_by]") unless params[:group_by].nil?
        type.additional_metrics = AdditionalMetricsList.build(params[:additional_metrics], context: "#{context}[:additional_metrics]") unless params[:additional_metrics].nil?
        type.partition_by = DimensionGroup.build(params[:partition_by], context: "#{context}[:partition_by]") unless params[:partition_by].nil?
        type.filter = MetricQueryFilterMap.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeDimensionKeysOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDimensionKeysOutput, context: context)
        type = Types::DescribeDimensionKeysOutput.new
        type.aligned_start_time = params[:aligned_start_time]
        type.aligned_end_time = params[:aligned_end_time]
        type.partition_keys = ResponsePartitionKeyList.build(params[:partition_keys], context: "#{context}[:partition_keys]") unless params[:partition_keys].nil?
        type.keys = DimensionKeyDescriptionList.build(params[:keys], context: "#{context}[:keys]") unless params[:keys].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DimensionDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DimensionDetail, context: context)
        type = Types::DimensionDetail.new
        type.identifier = params[:identifier]
        type
      end
    end

    module DimensionDetailList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DimensionDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DimensionGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DimensionGroup, context: context)
        type = Types::DimensionGroup.new
        type.group = params[:group]
        type.dimensions = RequestStringList.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.limit = params[:limit]
        type
      end
    end

    module DimensionGroupDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DimensionGroupDetail, context: context)
        type = Types::DimensionGroupDetail.new
        type.group = params[:group]
        type.dimensions = DimensionDetailList.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type
      end
    end

    module DimensionGroupDetailList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DimensionGroupDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DimensionKeyDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DimensionKeyDescription, context: context)
        type = Types::DimensionKeyDescription.new
        type.dimensions = DimensionMap.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.total = params[:total]
        type.additional_metrics = AdditionalMetricsMap.build(params[:additional_metrics], context: "#{context}[:additional_metrics]") unless params[:additional_metrics].nil?
        type.partitions = MetricValuesList.build(params[:partitions], context: "#{context}[:partitions]") unless params[:partitions].nil?
        type
      end
    end

    module DimensionKeyDescriptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DimensionKeyDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DimensionKeyDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DimensionKeyDetail, context: context)
        type = Types::DimensionKeyDetail.new
        type.value = params[:value]
        type.dimension = params[:dimension]
        type.status = params[:status]
        type
      end
    end

    module DimensionKeyDetailList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DimensionKeyDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DimensionMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module DimensionsMetricList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FeatureMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FeatureMetadata, context: context)
        type = Types::FeatureMetadata.new
        type.status = params[:status]
        type
      end
    end

    module FeatureMetadataMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = FeatureMetadata.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module GetDimensionKeyDetailsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDimensionKeyDetailsInput, context: context)
        type = Types::GetDimensionKeyDetailsInput.new
        type.service_type = params[:service_type]
        type.identifier = params[:identifier]
        type.group = params[:group]
        type.group_identifier = params[:group_identifier]
        type.requested_dimensions = RequestedDimensionList.build(params[:requested_dimensions], context: "#{context}[:requested_dimensions]") unless params[:requested_dimensions].nil?
        type
      end
    end

    module GetDimensionKeyDetailsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDimensionKeyDetailsOutput, context: context)
        type = Types::GetDimensionKeyDetailsOutput.new
        type.dimensions = DimensionKeyDetailList.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type
      end
    end

    module GetResourceMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourceMetadataInput, context: context)
        type = Types::GetResourceMetadataInput.new
        type.service_type = params[:service_type]
        type.identifier = params[:identifier]
        type
      end
    end

    module GetResourceMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourceMetadataOutput, context: context)
        type = Types::GetResourceMetadataOutput.new
        type.identifier = params[:identifier]
        type.features = FeatureMetadataMap.build(params[:features], context: "#{context}[:features]") unless params[:features].nil?
        type
      end
    end

    module GetResourceMetricsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourceMetricsInput, context: context)
        type = Types::GetResourceMetricsInput.new
        type.service_type = params[:service_type]
        type.identifier = params[:identifier]
        type.metric_queries = MetricQueryList.build(params[:metric_queries], context: "#{context}[:metric_queries]") unless params[:metric_queries].nil?
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.period_in_seconds = params[:period_in_seconds]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetResourceMetricsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourceMetricsOutput, context: context)
        type = Types::GetResourceMetricsOutput.new
        type.aligned_start_time = params[:aligned_start_time]
        type.aligned_end_time = params[:aligned_end_time]
        type.identifier = params[:identifier]
        type.metric_list = MetricKeyDataPointsList.build(params[:metric_list], context: "#{context}[:metric_list]") unless params[:metric_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module InternalServiceError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServiceError, context: context)
        type = Types::InternalServiceError.new
        type.message = params[:message]
        type
      end
    end

    module InvalidArgumentException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidArgumentException, context: context)
        type = Types::InvalidArgumentException.new
        type.message = params[:message]
        type
      end
    end

    module ListAvailableResourceDimensionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAvailableResourceDimensionsInput, context: context)
        type = Types::ListAvailableResourceDimensionsInput.new
        type.service_type = params[:service_type]
        type.identifier = params[:identifier]
        type.metrics = DimensionsMetricList.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAvailableResourceDimensionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAvailableResourceDimensionsOutput, context: context)
        type = Types::ListAvailableResourceDimensionsOutput.new
        type.metric_dimensions = MetricDimensionsList.build(params[:metric_dimensions], context: "#{context}[:metric_dimensions]") unless params[:metric_dimensions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAvailableResourceMetricsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAvailableResourceMetricsInput, context: context)
        type = Types::ListAvailableResourceMetricsInput.new
        type.service_type = params[:service_type]
        type.identifier = params[:identifier]
        type.metric_types = MetricTypeList.build(params[:metric_types], context: "#{context}[:metric_types]") unless params[:metric_types].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAvailableResourceMetricsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAvailableResourceMetricsOutput, context: context)
        type = Types::ListAvailableResourceMetricsOutput.new
        type.metrics = ResponseResourceMetricList.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module MetricDimensionGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricDimensionGroups, context: context)
        type = Types::MetricDimensionGroups.new
        type.metric = params[:metric]
        type.groups = DimensionGroupDetailList.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type
      end
    end

    module MetricDimensionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricDimensionGroups.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetricKeyDataPoints
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricKeyDataPoints, context: context)
        type = Types::MetricKeyDataPoints.new
        type.key = ResponseResourceMetricKey.build(params[:key], context: "#{context}[:key]") unless params[:key].nil?
        type.data_points = DataPointsList.build(params[:data_points], context: "#{context}[:data_points]") unless params[:data_points].nil?
        type
      end
    end

    module MetricKeyDataPointsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricKeyDataPoints.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetricQuery
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricQuery, context: context)
        type = Types::MetricQuery.new
        type.metric = params[:metric]
        type.group_by = DimensionGroup.build(params[:group_by], context: "#{context}[:group_by]") unless params[:group_by].nil?
        type.filter = MetricQueryFilterMap.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type
      end
    end

    module MetricQueryFilterMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module MetricQueryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricQuery.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetricTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module MetricValuesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module NotAuthorizedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotAuthorizedException, context: context)
        type = Types::NotAuthorizedException.new
        type.message = params[:message]
        type
      end
    end

    module RequestStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RequestedDimensionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResponsePartitionKey
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResponsePartitionKey, context: context)
        type = Types::ResponsePartitionKey.new
        type.dimensions = DimensionMap.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type
      end
    end

    module ResponsePartitionKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResponsePartitionKey.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResponseResourceMetric
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResponseResourceMetric, context: context)
        type = Types::ResponseResourceMetric.new
        type.metric = params[:metric]
        type.description = params[:description]
        type.unit = params[:unit]
        type
      end
    end

    module ResponseResourceMetricKey
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResponseResourceMetricKey, context: context)
        type = Types::ResponseResourceMetricKey.new
        type.metric = params[:metric]
        type.dimensions = DimensionMap.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type
      end
    end

    module ResponseResourceMetricList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResponseResourceMetric.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
