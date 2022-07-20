# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::PI
  module Parsers

    # Operation Parser for DescribeDimensionKeys
    class DescribeDimensionKeys
      def self.parse(http_resp)
        data = Types::DescribeDimensionKeysOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.aligned_start_time = Time.at(map['AlignedStartTime'].to_i) if map['AlignedStartTime']
        data.aligned_end_time = Time.at(map['AlignedEndTime'].to_i) if map['AlignedEndTime']
        data.partition_keys = (ResponsePartitionKeyList.parse(map['PartitionKeys']) unless map['PartitionKeys'].nil?)
        data.keys = (DimensionKeyDescriptionList.parse(map['Keys']) unless map['Keys'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DimensionKeyDescriptionList
      def self.parse(list)
        list.map do |value|
          DimensionKeyDescription.parse(value) unless value.nil?
        end
      end
    end

    class DimensionKeyDescription
      def self.parse(map)
        data = Types::DimensionKeyDescription.new
        data.dimensions = (DimensionMap.parse(map['Dimensions']) unless map['Dimensions'].nil?)
        data.total = Hearth::NumberHelper.deserialize(map['Total'])
        data.additional_metrics = (AdditionalMetricsMap.parse(map['AdditionalMetrics']) unless map['AdditionalMetrics'].nil?)
        data.partitions = (MetricValuesList.parse(map['Partitions']) unless map['Partitions'].nil?)
        return data
      end
    end

    class MetricValuesList
      def self.parse(list)
        list.map do |value|
          Hearth::NumberHelper.deserialize(value) unless value.nil?
        end
      end
    end

    class AdditionalMetricsMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Hearth::NumberHelper.deserialize(value) unless value.nil?
        end
        data
      end
    end

    class DimensionMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ResponsePartitionKeyList
      def self.parse(list)
        list.map do |value|
          ResponsePartitionKey.parse(value) unless value.nil?
        end
      end
    end

    class ResponsePartitionKey
      def self.parse(map)
        data = Types::ResponsePartitionKey.new
        data.dimensions = (DimensionMap.parse(map['Dimensions']) unless map['Dimensions'].nil?)
        return data
      end
    end

    # Error Parser for NotAuthorizedException
    class NotAuthorizedException
      def self.parse(http_resp)
        data = Types::NotAuthorizedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidArgumentException
    class InvalidArgumentException
      def self.parse(http_resp)
        data = Types::InvalidArgumentException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServiceError
    class InternalServiceError
      def self.parse(http_resp)
        data = Types::InternalServiceError.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for GetDimensionKeyDetails
    class GetDimensionKeyDetails
      def self.parse(http_resp)
        data = Types::GetDimensionKeyDetailsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.dimensions = (DimensionKeyDetailList.parse(map['Dimensions']) unless map['Dimensions'].nil?)
        data
      end
    end

    class DimensionKeyDetailList
      def self.parse(list)
        list.map do |value|
          DimensionKeyDetail.parse(value) unless value.nil?
        end
      end
    end

    class DimensionKeyDetail
      def self.parse(map)
        data = Types::DimensionKeyDetail.new
        data.value = map['Value']
        data.dimension = map['Dimension']
        data.status = map['Status']
        return data
      end
    end

    # Operation Parser for GetResourceMetadata
    class GetResourceMetadata
      def self.parse(http_resp)
        data = Types::GetResourceMetadataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.identifier = map['Identifier']
        data.features = (FeatureMetadataMap.parse(map['Features']) unless map['Features'].nil?)
        data
      end
    end

    class FeatureMetadataMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = FeatureMetadata.parse(value) unless value.nil?
        end
        data
      end
    end

    class FeatureMetadata
      def self.parse(map)
        data = Types::FeatureMetadata.new
        data.status = map['Status']
        return data
      end
    end

    # Operation Parser for GetResourceMetrics
    class GetResourceMetrics
      def self.parse(http_resp)
        data = Types::GetResourceMetricsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.aligned_start_time = Time.at(map['AlignedStartTime'].to_i) if map['AlignedStartTime']
        data.aligned_end_time = Time.at(map['AlignedEndTime'].to_i) if map['AlignedEndTime']
        data.identifier = map['Identifier']
        data.metric_list = (MetricKeyDataPointsList.parse(map['MetricList']) unless map['MetricList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class MetricKeyDataPointsList
      def self.parse(list)
        list.map do |value|
          MetricKeyDataPoints.parse(value) unless value.nil?
        end
      end
    end

    class MetricKeyDataPoints
      def self.parse(map)
        data = Types::MetricKeyDataPoints.new
        data.key = (ResponseResourceMetricKey.parse(map['Key']) unless map['Key'].nil?)
        data.data_points = (DataPointsList.parse(map['DataPoints']) unless map['DataPoints'].nil?)
        return data
      end
    end

    class DataPointsList
      def self.parse(list)
        list.map do |value|
          DataPoint.parse(value) unless value.nil?
        end
      end
    end

    class DataPoint
      def self.parse(map)
        data = Types::DataPoint.new
        data.timestamp = Time.at(map['Timestamp'].to_i) if map['Timestamp']
        data.value = Hearth::NumberHelper.deserialize(map['Value'])
        return data
      end
    end

    class ResponseResourceMetricKey
      def self.parse(map)
        data = Types::ResponseResourceMetricKey.new
        data.metric = map['Metric']
        data.dimensions = (DimensionMap.parse(map['Dimensions']) unless map['Dimensions'].nil?)
        return data
      end
    end

    # Operation Parser for ListAvailableResourceDimensions
    class ListAvailableResourceDimensions
      def self.parse(http_resp)
        data = Types::ListAvailableResourceDimensionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.metric_dimensions = (MetricDimensionsList.parse(map['MetricDimensions']) unless map['MetricDimensions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class MetricDimensionsList
      def self.parse(list)
        list.map do |value|
          MetricDimensionGroups.parse(value) unless value.nil?
        end
      end
    end

    class MetricDimensionGroups
      def self.parse(map)
        data = Types::MetricDimensionGroups.new
        data.metric = map['Metric']
        data.groups = (DimensionGroupDetailList.parse(map['Groups']) unless map['Groups'].nil?)
        return data
      end
    end

    class DimensionGroupDetailList
      def self.parse(list)
        list.map do |value|
          DimensionGroupDetail.parse(value) unless value.nil?
        end
      end
    end

    class DimensionGroupDetail
      def self.parse(map)
        data = Types::DimensionGroupDetail.new
        data.group = map['Group']
        data.dimensions = (DimensionDetailList.parse(map['Dimensions']) unless map['Dimensions'].nil?)
        return data
      end
    end

    class DimensionDetailList
      def self.parse(list)
        list.map do |value|
          DimensionDetail.parse(value) unless value.nil?
        end
      end
    end

    class DimensionDetail
      def self.parse(map)
        data = Types::DimensionDetail.new
        data.identifier = map['Identifier']
        return data
      end
    end

    # Operation Parser for ListAvailableResourceMetrics
    class ListAvailableResourceMetrics
      def self.parse(http_resp)
        data = Types::ListAvailableResourceMetricsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.metrics = (ResponseResourceMetricList.parse(map['Metrics']) unless map['Metrics'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ResponseResourceMetricList
      def self.parse(list)
        list.map do |value|
          ResponseResourceMetric.parse(value) unless value.nil?
        end
      end
    end

    class ResponseResourceMetric
      def self.parse(map)
        data = Types::ResponseResourceMetric.new
        data.metric = map['Metric']
        data.description = map['Description']
        data.unit = map['Unit']
        return data
      end
    end
  end
end
