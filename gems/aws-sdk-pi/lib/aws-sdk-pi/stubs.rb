# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::PI
  module Stubs

    # Operation Stubber for DescribeDimensionKeys
    class DescribeDimensionKeys
      def self.default(visited=[])
        {
          aligned_start_time: Time.now,
          aligned_end_time: Time.now,
          partition_keys: ResponsePartitionKeyList.default(visited),
          keys: DimensionKeyDescriptionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AlignedStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:aligned_start_time]).to_i unless stub[:aligned_start_time].nil?
        data['AlignedEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:aligned_end_time]).to_i unless stub[:aligned_end_time].nil?
        data['PartitionKeys'] = ResponsePartitionKeyList.stub(stub[:partition_keys]) unless stub[:partition_keys].nil?
        data['Keys'] = DimensionKeyDescriptionList.stub(stub[:keys]) unless stub[:keys].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DimensionKeyDescriptionList
    class DimensionKeyDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('DimensionKeyDescriptionList')
        visited = visited + ['DimensionKeyDescriptionList']
        [
          DimensionKeyDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DimensionKeyDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DimensionKeyDescription
    class DimensionKeyDescription
      def self.default(visited=[])
        return nil if visited.include?('DimensionKeyDescription')
        visited = visited + ['DimensionKeyDescription']
        {
          dimensions: DimensionMap.default(visited),
          total: 1.0,
          additional_metrics: AdditionalMetricsMap.default(visited),
          partitions: MetricValuesList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DimensionKeyDescription.new
        data = {}
        data['Dimensions'] = DimensionMap.stub(stub[:dimensions]) unless stub[:dimensions].nil?
        data['Total'] = Hearth::NumberHelper.serialize(stub[:total])
        data['AdditionalMetrics'] = AdditionalMetricsMap.stub(stub[:additional_metrics]) unless stub[:additional_metrics].nil?
        data['Partitions'] = MetricValuesList.stub(stub[:partitions]) unless stub[:partitions].nil?
        data
      end
    end

    # List Stubber for MetricValuesList
    class MetricValuesList
      def self.default(visited=[])
        return nil if visited.include?('MetricValuesList')
        visited = visited + ['MetricValuesList']
        [
          1.0
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Hearth::NumberHelper.serialize(element)
        end
        data
      end
    end

    # Map Stubber for AdditionalMetricsMap
    class AdditionalMetricsMap
      def self.default(visited=[])
        return nil if visited.include?('AdditionalMetricsMap')
        visited = visited + ['AdditionalMetricsMap']
        {
          test_key: 1.0
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Hearth::NumberHelper.serialize(value)
        end
        data
      end
    end

    # Map Stubber for DimensionMap
    class DimensionMap
      def self.default(visited=[])
        return nil if visited.include?('DimensionMap')
        visited = visited + ['DimensionMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Stubber for ResponsePartitionKeyList
    class ResponsePartitionKeyList
      def self.default(visited=[])
        return nil if visited.include?('ResponsePartitionKeyList')
        visited = visited + ['ResponsePartitionKeyList']
        [
          ResponsePartitionKey.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ResponsePartitionKey.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResponsePartitionKey
    class ResponsePartitionKey
      def self.default(visited=[])
        return nil if visited.include?('ResponsePartitionKey')
        visited = visited + ['ResponsePartitionKey']
        {
          dimensions: DimensionMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResponsePartitionKey.new
        data = {}
        data['Dimensions'] = DimensionMap.stub(stub[:dimensions]) unless stub[:dimensions].nil?
        data
      end
    end

    # Operation Stubber for GetDimensionKeyDetails
    class GetDimensionKeyDetails
      def self.default(visited=[])
        {
          dimensions: DimensionKeyDetailList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Dimensions'] = DimensionKeyDetailList.stub(stub[:dimensions]) unless stub[:dimensions].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DimensionKeyDetailList
    class DimensionKeyDetailList
      def self.default(visited=[])
        return nil if visited.include?('DimensionKeyDetailList')
        visited = visited + ['DimensionKeyDetailList']
        [
          DimensionKeyDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DimensionKeyDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DimensionKeyDetail
    class DimensionKeyDetail
      def self.default(visited=[])
        return nil if visited.include?('DimensionKeyDetail')
        visited = visited + ['DimensionKeyDetail']
        {
          value: 'value',
          dimension: 'dimension',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::DimensionKeyDetail.new
        data = {}
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['Dimension'] = stub[:dimension] unless stub[:dimension].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for GetResourceMetadata
    class GetResourceMetadata
      def self.default(visited=[])
        {
          identifier: 'identifier',
          features: FeatureMetadataMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Identifier'] = stub[:identifier] unless stub[:identifier].nil?
        data['Features'] = FeatureMetadataMap.stub(stub[:features]) unless stub[:features].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Map Stubber for FeatureMetadataMap
    class FeatureMetadataMap
      def self.default(visited=[])
        return nil if visited.include?('FeatureMetadataMap')
        visited = visited + ['FeatureMetadataMap']
        {
          test_key: FeatureMetadata.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = FeatureMetadata.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for FeatureMetadata
    class FeatureMetadata
      def self.default(visited=[])
        return nil if visited.include?('FeatureMetadata')
        visited = visited + ['FeatureMetadata']
        {
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::FeatureMetadata.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for GetResourceMetrics
    class GetResourceMetrics
      def self.default(visited=[])
        {
          aligned_start_time: Time.now,
          aligned_end_time: Time.now,
          identifier: 'identifier',
          metric_list: MetricKeyDataPointsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AlignedStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:aligned_start_time]).to_i unless stub[:aligned_start_time].nil?
        data['AlignedEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:aligned_end_time]).to_i unless stub[:aligned_end_time].nil?
        data['Identifier'] = stub[:identifier] unless stub[:identifier].nil?
        data['MetricList'] = MetricKeyDataPointsList.stub(stub[:metric_list]) unless stub[:metric_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for MetricKeyDataPointsList
    class MetricKeyDataPointsList
      def self.default(visited=[])
        return nil if visited.include?('MetricKeyDataPointsList')
        visited = visited + ['MetricKeyDataPointsList']
        [
          MetricKeyDataPoints.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MetricKeyDataPoints.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MetricKeyDataPoints
    class MetricKeyDataPoints
      def self.default(visited=[])
        return nil if visited.include?('MetricKeyDataPoints')
        visited = visited + ['MetricKeyDataPoints']
        {
          key: ResponseResourceMetricKey.default(visited),
          data_points: DataPointsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MetricKeyDataPoints.new
        data = {}
        data['Key'] = ResponseResourceMetricKey.stub(stub[:key]) unless stub[:key].nil?
        data['DataPoints'] = DataPointsList.stub(stub[:data_points]) unless stub[:data_points].nil?
        data
      end
    end

    # List Stubber for DataPointsList
    class DataPointsList
      def self.default(visited=[])
        return nil if visited.include?('DataPointsList')
        visited = visited + ['DataPointsList']
        [
          DataPoint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DataPoint.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DataPoint
    class DataPoint
      def self.default(visited=[])
        return nil if visited.include?('DataPoint')
        visited = visited + ['DataPoint']
        {
          timestamp: Time.now,
          value: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::DataPoint.new
        data = {}
        data['Timestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:timestamp]).to_i unless stub[:timestamp].nil?
        data['Value'] = Hearth::NumberHelper.serialize(stub[:value])
        data
      end
    end

    # Structure Stubber for ResponseResourceMetricKey
    class ResponseResourceMetricKey
      def self.default(visited=[])
        return nil if visited.include?('ResponseResourceMetricKey')
        visited = visited + ['ResponseResourceMetricKey']
        {
          metric: 'metric',
          dimensions: DimensionMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResponseResourceMetricKey.new
        data = {}
        data['Metric'] = stub[:metric] unless stub[:metric].nil?
        data['Dimensions'] = DimensionMap.stub(stub[:dimensions]) unless stub[:dimensions].nil?
        data
      end
    end

    # Operation Stubber for ListAvailableResourceDimensions
    class ListAvailableResourceDimensions
      def self.default(visited=[])
        {
          metric_dimensions: MetricDimensionsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['MetricDimensions'] = MetricDimensionsList.stub(stub[:metric_dimensions]) unless stub[:metric_dimensions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for MetricDimensionsList
    class MetricDimensionsList
      def self.default(visited=[])
        return nil if visited.include?('MetricDimensionsList')
        visited = visited + ['MetricDimensionsList']
        [
          MetricDimensionGroups.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MetricDimensionGroups.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MetricDimensionGroups
    class MetricDimensionGroups
      def self.default(visited=[])
        return nil if visited.include?('MetricDimensionGroups')
        visited = visited + ['MetricDimensionGroups']
        {
          metric: 'metric',
          groups: DimensionGroupDetailList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MetricDimensionGroups.new
        data = {}
        data['Metric'] = stub[:metric] unless stub[:metric].nil?
        data['Groups'] = DimensionGroupDetailList.stub(stub[:groups]) unless stub[:groups].nil?
        data
      end
    end

    # List Stubber for DimensionGroupDetailList
    class DimensionGroupDetailList
      def self.default(visited=[])
        return nil if visited.include?('DimensionGroupDetailList')
        visited = visited + ['DimensionGroupDetailList']
        [
          DimensionGroupDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DimensionGroupDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DimensionGroupDetail
    class DimensionGroupDetail
      def self.default(visited=[])
        return nil if visited.include?('DimensionGroupDetail')
        visited = visited + ['DimensionGroupDetail']
        {
          group: 'group',
          dimensions: DimensionDetailList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DimensionGroupDetail.new
        data = {}
        data['Group'] = stub[:group] unless stub[:group].nil?
        data['Dimensions'] = DimensionDetailList.stub(stub[:dimensions]) unless stub[:dimensions].nil?
        data
      end
    end

    # List Stubber for DimensionDetailList
    class DimensionDetailList
      def self.default(visited=[])
        return nil if visited.include?('DimensionDetailList')
        visited = visited + ['DimensionDetailList']
        [
          DimensionDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DimensionDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DimensionDetail
    class DimensionDetail
      def self.default(visited=[])
        return nil if visited.include?('DimensionDetail')
        visited = visited + ['DimensionDetail']
        {
          identifier: 'identifier',
        }
      end

      def self.stub(stub)
        stub ||= Types::DimensionDetail.new
        data = {}
        data['Identifier'] = stub[:identifier] unless stub[:identifier].nil?
        data
      end
    end

    # Operation Stubber for ListAvailableResourceMetrics
    class ListAvailableResourceMetrics
      def self.default(visited=[])
        {
          metrics: ResponseResourceMetricList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Metrics'] = ResponseResourceMetricList.stub(stub[:metrics]) unless stub[:metrics].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ResponseResourceMetricList
    class ResponseResourceMetricList
      def self.default(visited=[])
        return nil if visited.include?('ResponseResourceMetricList')
        visited = visited + ['ResponseResourceMetricList']
        [
          ResponseResourceMetric.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ResponseResourceMetric.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResponseResourceMetric
    class ResponseResourceMetric
      def self.default(visited=[])
        return nil if visited.include?('ResponseResourceMetric')
        visited = visited + ['ResponseResourceMetric']
        {
          metric: 'metric',
          description: 'description',
          unit: 'unit',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResponseResourceMetric.new
        data = {}
        data['Metric'] = stub[:metric] unless stub[:metric].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Unit'] = stub[:unit] unless stub[:unit].nil?
        data
      end
    end
  end
end
