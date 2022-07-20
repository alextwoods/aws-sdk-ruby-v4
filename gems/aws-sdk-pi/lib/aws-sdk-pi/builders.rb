# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::PI
  module Builders

    # Operation Builder for DescribeDimensionKeys
    class DescribeDimensionKeys
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PerformanceInsightsv20180227.DescribeDimensionKeys'
        data = {}
        data['ServiceType'] = input[:service_type] unless input[:service_type].nil?
        data['Identifier'] = input[:identifier] unless input[:identifier].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['Metric'] = input[:metric] unless input[:metric].nil?
        data['PeriodInSeconds'] = input[:period_in_seconds] unless input[:period_in_seconds].nil?
        data['GroupBy'] = DimensionGroup.build(input[:group_by]) unless input[:group_by].nil?
        data['AdditionalMetrics'] = AdditionalMetricsList.build(input[:additional_metrics]) unless input[:additional_metrics].nil?
        data['PartitionBy'] = DimensionGroup.build(input[:partition_by]) unless input[:partition_by].nil?
        data['Filter'] = MetricQueryFilterMap.build(input[:filter]) unless input[:filter].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for MetricQueryFilterMap
    class MetricQueryFilterMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for DimensionGroup
    class DimensionGroup
      def self.build(input)
        data = {}
        data['Group'] = input[:group] unless input[:group].nil?
        data['Dimensions'] = RequestStringList.build(input[:dimensions]) unless input[:dimensions].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data
      end
    end

    # List Builder for RequestStringList
    class RequestStringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for AdditionalMetricsList
    class AdditionalMetricsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetDimensionKeyDetails
    class GetDimensionKeyDetails
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PerformanceInsightsv20180227.GetDimensionKeyDetails'
        data = {}
        data['ServiceType'] = input[:service_type] unless input[:service_type].nil?
        data['Identifier'] = input[:identifier] unless input[:identifier].nil?
        data['Group'] = input[:group] unless input[:group].nil?
        data['GroupIdentifier'] = input[:group_identifier] unless input[:group_identifier].nil?
        data['RequestedDimensions'] = RequestedDimensionList.build(input[:requested_dimensions]) unless input[:requested_dimensions].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RequestedDimensionList
    class RequestedDimensionList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetResourceMetadata
    class GetResourceMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PerformanceInsightsv20180227.GetResourceMetadata'
        data = {}
        data['ServiceType'] = input[:service_type] unless input[:service_type].nil?
        data['Identifier'] = input[:identifier] unless input[:identifier].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetResourceMetrics
    class GetResourceMetrics
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PerformanceInsightsv20180227.GetResourceMetrics'
        data = {}
        data['ServiceType'] = input[:service_type] unless input[:service_type].nil?
        data['Identifier'] = input[:identifier] unless input[:identifier].nil?
        data['MetricQueries'] = MetricQueryList.build(input[:metric_queries]) unless input[:metric_queries].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['PeriodInSeconds'] = input[:period_in_seconds] unless input[:period_in_seconds].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for MetricQueryList
    class MetricQueryList
      def self.build(input)
        data = []
        input.each do |element|
          data << MetricQuery.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MetricQuery
    class MetricQuery
      def self.build(input)
        data = {}
        data['Metric'] = input[:metric] unless input[:metric].nil?
        data['GroupBy'] = DimensionGroup.build(input[:group_by]) unless input[:group_by].nil?
        data['Filter'] = MetricQueryFilterMap.build(input[:filter]) unless input[:filter].nil?
        data
      end
    end

    # Operation Builder for ListAvailableResourceDimensions
    class ListAvailableResourceDimensions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PerformanceInsightsv20180227.ListAvailableResourceDimensions'
        data = {}
        data['ServiceType'] = input[:service_type] unless input[:service_type].nil?
        data['Identifier'] = input[:identifier] unless input[:identifier].nil?
        data['Metrics'] = DimensionsMetricList.build(input[:metrics]) unless input[:metrics].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DimensionsMetricList
    class DimensionsMetricList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListAvailableResourceMetrics
    class ListAvailableResourceMetrics
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PerformanceInsightsv20180227.ListAvailableResourceMetrics'
        data = {}
        data['ServiceType'] = input[:service_type] unless input[:service_type].nil?
        data['Identifier'] = input[:identifier] unless input[:identifier].nil?
        data['MetricTypes'] = MetricTypeList.build(input[:metric_types]) unless input[:metric_types].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for MetricTypeList
    class MetricTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end
  end
end
