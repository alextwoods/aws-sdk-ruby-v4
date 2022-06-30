# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DevOpsGuru
  module Stubs

    # Operation Stubber for AddNotificationChannel
    class AddNotificationChannel
      def self.default(visited=[])
        {
          id: 'id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Id'] = stub[:id] unless stub[:id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteInsight
    class DeleteInsight
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAccountHealth
    class DescribeAccountHealth
      def self.default(visited=[])
        {
          open_reactive_insights: 1,
          open_proactive_insights: 1,
          metrics_analyzed: 1,
          resource_hours: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['OpenReactiveInsights'] = stub[:open_reactive_insights] unless stub[:open_reactive_insights].nil?
        data['OpenProactiveInsights'] = stub[:open_proactive_insights] unless stub[:open_proactive_insights].nil?
        data['MetricsAnalyzed'] = stub[:metrics_analyzed] unless stub[:metrics_analyzed].nil?
        data['ResourceHours'] = stub[:resource_hours] unless stub[:resource_hours].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeAccountOverview
    class DescribeAccountOverview
      def self.default(visited=[])
        {
          reactive_insights: 1,
          proactive_insights: 1,
          mean_time_to_recover_in_milliseconds: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ReactiveInsights'] = stub[:reactive_insights] unless stub[:reactive_insights].nil?
        data['ProactiveInsights'] = stub[:proactive_insights] unless stub[:proactive_insights].nil?
        data['MeanTimeToRecoverInMilliseconds'] = stub[:mean_time_to_recover_in_milliseconds] unless stub[:mean_time_to_recover_in_milliseconds].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeAnomaly
    class DescribeAnomaly
      def self.default(visited=[])
        {
          proactive_anomaly: Stubs::ProactiveAnomaly.default(visited),
          reactive_anomaly: Stubs::ReactiveAnomaly.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ProactiveAnomaly'] = Stubs::ProactiveAnomaly.stub(stub[:proactive_anomaly]) unless stub[:proactive_anomaly].nil?
        data['ReactiveAnomaly'] = Stubs::ReactiveAnomaly.stub(stub[:reactive_anomaly]) unless stub[:reactive_anomaly].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ReactiveAnomaly
    class ReactiveAnomaly
      def self.default(visited=[])
        return nil if visited.include?('ReactiveAnomaly')
        visited = visited + ['ReactiveAnomaly']
        {
          id: 'id',
          severity: 'severity',
          status: 'status',
          anomaly_time_range: Stubs::AnomalyTimeRange.default(visited),
          anomaly_reported_time_range: Stubs::AnomalyReportedTimeRange.default(visited),
          source_details: Stubs::AnomalySourceDetails.default(visited),
          associated_insight_id: 'associated_insight_id',
          resource_collection: Stubs::ResourceCollection.default(visited),
          type: 'type',
          name: 'name',
          description: 'description',
          causal_anomaly_id: 'causal_anomaly_id',
          anomaly_resources: Stubs::AnomalyResources.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReactiveAnomaly.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Severity'] = stub[:severity] unless stub[:severity].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['AnomalyTimeRange'] = Stubs::AnomalyTimeRange.stub(stub[:anomaly_time_range]) unless stub[:anomaly_time_range].nil?
        data['AnomalyReportedTimeRange'] = Stubs::AnomalyReportedTimeRange.stub(stub[:anomaly_reported_time_range]) unless stub[:anomaly_reported_time_range].nil?
        data['SourceDetails'] = Stubs::AnomalySourceDetails.stub(stub[:source_details]) unless stub[:source_details].nil?
        data['AssociatedInsightId'] = stub[:associated_insight_id] unless stub[:associated_insight_id].nil?
        data['ResourceCollection'] = Stubs::ResourceCollection.stub(stub[:resource_collection]) unless stub[:resource_collection].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CausalAnomalyId'] = stub[:causal_anomaly_id] unless stub[:causal_anomaly_id].nil?
        data['AnomalyResources'] = Stubs::AnomalyResources.stub(stub[:anomaly_resources]) unless stub[:anomaly_resources].nil?
        data
      end
    end

    # List Stubber for AnomalyResources
    class AnomalyResources
      def self.default(visited=[])
        return nil if visited.include?('AnomalyResources')
        visited = visited + ['AnomalyResources']
        [
          Stubs::AnomalyResource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AnomalyResource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AnomalyResource
    class AnomalyResource
      def self.default(visited=[])
        return nil if visited.include?('AnomalyResource')
        visited = visited + ['AnomalyResource']
        {
          name: 'name',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AnomalyResource.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for ResourceCollection
    class ResourceCollection
      def self.default(visited=[])
        return nil if visited.include?('ResourceCollection')
        visited = visited + ['ResourceCollection']
        {
          cloud_formation: Stubs::CloudFormationCollection.default(visited),
          tags: Stubs::TagCollections.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceCollection.new
        data = {}
        data['CloudFormation'] = Stubs::CloudFormationCollection.stub(stub[:cloud_formation]) unless stub[:cloud_formation].nil?
        data['Tags'] = Stubs::TagCollections.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # List Stubber for TagCollections
    class TagCollections
      def self.default(visited=[])
        return nil if visited.include?('TagCollections')
        visited = visited + ['TagCollections']
        [
          Stubs::TagCollection.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TagCollection.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TagCollection
    class TagCollection
      def self.default(visited=[])
        return nil if visited.include?('TagCollection')
        visited = visited + ['TagCollection']
        {
          app_boundary_key: 'app_boundary_key',
          tag_values: Stubs::TagValues.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TagCollection.new
        data = {}
        data['AppBoundaryKey'] = stub[:app_boundary_key] unless stub[:app_boundary_key].nil?
        data['TagValues'] = Stubs::TagValues.stub(stub[:tag_values]) unless stub[:tag_values].nil?
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

    # Structure Stubber for CloudFormationCollection
    class CloudFormationCollection
      def self.default(visited=[])
        return nil if visited.include?('CloudFormationCollection')
        visited = visited + ['CloudFormationCollection']
        {
          stack_names: Stubs::StackNames.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudFormationCollection.new
        data = {}
        data['StackNames'] = Stubs::StackNames.stub(stub[:stack_names]) unless stub[:stack_names].nil?
        data
      end
    end

    # List Stubber for StackNames
    class StackNames
      def self.default(visited=[])
        return nil if visited.include?('StackNames')
        visited = visited + ['StackNames']
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

    # Structure Stubber for AnomalySourceDetails
    class AnomalySourceDetails
      def self.default(visited=[])
        return nil if visited.include?('AnomalySourceDetails')
        visited = visited + ['AnomalySourceDetails']
        {
          cloud_watch_metrics: Stubs::CloudWatchMetricsDetails.default(visited),
          performance_insights_metrics: Stubs::PerformanceInsightsMetricsDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AnomalySourceDetails.new
        data = {}
        data['CloudWatchMetrics'] = Stubs::CloudWatchMetricsDetails.stub(stub[:cloud_watch_metrics]) unless stub[:cloud_watch_metrics].nil?
        data['PerformanceInsightsMetrics'] = Stubs::PerformanceInsightsMetricsDetails.stub(stub[:performance_insights_metrics]) unless stub[:performance_insights_metrics].nil?
        data
      end
    end

    # List Stubber for PerformanceInsightsMetricsDetails
    class PerformanceInsightsMetricsDetails
      def self.default(visited=[])
        return nil if visited.include?('PerformanceInsightsMetricsDetails')
        visited = visited + ['PerformanceInsightsMetricsDetails']
        [
          Stubs::PerformanceInsightsMetricsDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PerformanceInsightsMetricsDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PerformanceInsightsMetricsDetail
    class PerformanceInsightsMetricsDetail
      def self.default(visited=[])
        return nil if visited.include?('PerformanceInsightsMetricsDetail')
        visited = visited + ['PerformanceInsightsMetricsDetail']
        {
          metric_display_name: 'metric_display_name',
          unit: 'unit',
          metric_query: Stubs::PerformanceInsightsMetricQuery.default(visited),
          reference_data: Stubs::PerformanceInsightsReferenceDataList.default(visited),
          stats_at_anomaly: Stubs::PerformanceInsightsStats.default(visited),
          stats_at_baseline: Stubs::PerformanceInsightsStats.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PerformanceInsightsMetricsDetail.new
        data = {}
        data['MetricDisplayName'] = stub[:metric_display_name] unless stub[:metric_display_name].nil?
        data['Unit'] = stub[:unit] unless stub[:unit].nil?
        data['MetricQuery'] = Stubs::PerformanceInsightsMetricQuery.stub(stub[:metric_query]) unless stub[:metric_query].nil?
        data['ReferenceData'] = Stubs::PerformanceInsightsReferenceDataList.stub(stub[:reference_data]) unless stub[:reference_data].nil?
        data['StatsAtAnomaly'] = Stubs::PerformanceInsightsStats.stub(stub[:stats_at_anomaly]) unless stub[:stats_at_anomaly].nil?
        data['StatsAtBaseline'] = Stubs::PerformanceInsightsStats.stub(stub[:stats_at_baseline]) unless stub[:stats_at_baseline].nil?
        data
      end
    end

    # List Stubber for PerformanceInsightsStats
    class PerformanceInsightsStats
      def self.default(visited=[])
        return nil if visited.include?('PerformanceInsightsStats')
        visited = visited + ['PerformanceInsightsStats']
        [
          Stubs::PerformanceInsightsStat.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PerformanceInsightsStat.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PerformanceInsightsStat
    class PerformanceInsightsStat
      def self.default(visited=[])
        return nil if visited.include?('PerformanceInsightsStat')
        visited = visited + ['PerformanceInsightsStat']
        {
          type: 'type',
          value: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::PerformanceInsightsStat.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Value'] = Hearth::NumberHelper.serialize(stub[:value])
        data
      end
    end

    # List Stubber for PerformanceInsightsReferenceDataList
    class PerformanceInsightsReferenceDataList
      def self.default(visited=[])
        return nil if visited.include?('PerformanceInsightsReferenceDataList')
        visited = visited + ['PerformanceInsightsReferenceDataList']
        [
          Stubs::PerformanceInsightsReferenceData.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PerformanceInsightsReferenceData.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PerformanceInsightsReferenceData
    class PerformanceInsightsReferenceData
      def self.default(visited=[])
        return nil if visited.include?('PerformanceInsightsReferenceData')
        visited = visited + ['PerformanceInsightsReferenceData']
        {
          name: 'name',
          comparison_values: Stubs::PerformanceInsightsReferenceComparisonValues.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PerformanceInsightsReferenceData.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ComparisonValues'] = Stubs::PerformanceInsightsReferenceComparisonValues.stub(stub[:comparison_values]) unless stub[:comparison_values].nil?
        data
      end
    end

    # Structure Stubber for PerformanceInsightsReferenceComparisonValues
    class PerformanceInsightsReferenceComparisonValues
      def self.default(visited=[])
        return nil if visited.include?('PerformanceInsightsReferenceComparisonValues')
        visited = visited + ['PerformanceInsightsReferenceComparisonValues']
        {
          reference_scalar: Stubs::PerformanceInsightsReferenceScalar.default(visited),
          reference_metric: Stubs::PerformanceInsightsReferenceMetric.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PerformanceInsightsReferenceComparisonValues.new
        data = {}
        data['ReferenceScalar'] = Stubs::PerformanceInsightsReferenceScalar.stub(stub[:reference_scalar]) unless stub[:reference_scalar].nil?
        data['ReferenceMetric'] = Stubs::PerformanceInsightsReferenceMetric.stub(stub[:reference_metric]) unless stub[:reference_metric].nil?
        data
      end
    end

    # Structure Stubber for PerformanceInsightsReferenceMetric
    class PerformanceInsightsReferenceMetric
      def self.default(visited=[])
        return nil if visited.include?('PerformanceInsightsReferenceMetric')
        visited = visited + ['PerformanceInsightsReferenceMetric']
        {
          metric_query: Stubs::PerformanceInsightsMetricQuery.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PerformanceInsightsReferenceMetric.new
        data = {}
        data['MetricQuery'] = Stubs::PerformanceInsightsMetricQuery.stub(stub[:metric_query]) unless stub[:metric_query].nil?
        data
      end
    end

    # Structure Stubber for PerformanceInsightsMetricQuery
    class PerformanceInsightsMetricQuery
      def self.default(visited=[])
        return nil if visited.include?('PerformanceInsightsMetricQuery')
        visited = visited + ['PerformanceInsightsMetricQuery']
        {
          metric: 'metric',
          group_by: Stubs::PerformanceInsightsMetricDimensionGroup.default(visited),
          filter: Stubs::PerformanceInsightsMetricFilterMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PerformanceInsightsMetricQuery.new
        data = {}
        data['Metric'] = stub[:metric] unless stub[:metric].nil?
        data['GroupBy'] = Stubs::PerformanceInsightsMetricDimensionGroup.stub(stub[:group_by]) unless stub[:group_by].nil?
        data['Filter'] = Stubs::PerformanceInsightsMetricFilterMap.stub(stub[:filter]) unless stub[:filter].nil?
        data
      end
    end

    # Map Stubber for PerformanceInsightsMetricFilterMap
    class PerformanceInsightsMetricFilterMap
      def self.default(visited=[])
        return nil if visited.include?('PerformanceInsightsMetricFilterMap')
        visited = visited + ['PerformanceInsightsMetricFilterMap']
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

    # Structure Stubber for PerformanceInsightsMetricDimensionGroup
    class PerformanceInsightsMetricDimensionGroup
      def self.default(visited=[])
        return nil if visited.include?('PerformanceInsightsMetricDimensionGroup')
        visited = visited + ['PerformanceInsightsMetricDimensionGroup']
        {
          group: 'group',
          dimensions: Stubs::PerformanceInsightsMetricDimensions.default(visited),
          limit: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::PerformanceInsightsMetricDimensionGroup.new
        data = {}
        data['Group'] = stub[:group] unless stub[:group].nil?
        data['Dimensions'] = Stubs::PerformanceInsightsMetricDimensions.stub(stub[:dimensions]) unless stub[:dimensions].nil?
        data['Limit'] = stub[:limit] unless stub[:limit].nil?
        data
      end
    end

    # List Stubber for PerformanceInsightsMetricDimensions
    class PerformanceInsightsMetricDimensions
      def self.default(visited=[])
        return nil if visited.include?('PerformanceInsightsMetricDimensions')
        visited = visited + ['PerformanceInsightsMetricDimensions']
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

    # Structure Stubber for PerformanceInsightsReferenceScalar
    class PerformanceInsightsReferenceScalar
      def self.default(visited=[])
        return nil if visited.include?('PerformanceInsightsReferenceScalar')
        visited = visited + ['PerformanceInsightsReferenceScalar']
        {
          value: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::PerformanceInsightsReferenceScalar.new
        data = {}
        data['Value'] = Hearth::NumberHelper.serialize(stub[:value])
        data
      end
    end

    # List Stubber for CloudWatchMetricsDetails
    class CloudWatchMetricsDetails
      def self.default(visited=[])
        return nil if visited.include?('CloudWatchMetricsDetails')
        visited = visited + ['CloudWatchMetricsDetails']
        [
          Stubs::CloudWatchMetricsDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CloudWatchMetricsDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CloudWatchMetricsDetail
    class CloudWatchMetricsDetail
      def self.default(visited=[])
        return nil if visited.include?('CloudWatchMetricsDetail')
        visited = visited + ['CloudWatchMetricsDetail']
        {
          metric_name: 'metric_name',
          namespace: 'namespace',
          dimensions: Stubs::CloudWatchMetricsDimensions.default(visited),
          stat: 'stat',
          unit: 'unit',
          period: 1,
          metric_data_summary: Stubs::CloudWatchMetricsDataSummary.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudWatchMetricsDetail.new
        data = {}
        data['MetricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['Namespace'] = stub[:namespace] unless stub[:namespace].nil?
        data['Dimensions'] = Stubs::CloudWatchMetricsDimensions.stub(stub[:dimensions]) unless stub[:dimensions].nil?
        data['Stat'] = stub[:stat] unless stub[:stat].nil?
        data['Unit'] = stub[:unit] unless stub[:unit].nil?
        data['Period'] = stub[:period] unless stub[:period].nil?
        data['MetricDataSummary'] = Stubs::CloudWatchMetricsDataSummary.stub(stub[:metric_data_summary]) unless stub[:metric_data_summary].nil?
        data
      end
    end

    # Structure Stubber for CloudWatchMetricsDataSummary
    class CloudWatchMetricsDataSummary
      def self.default(visited=[])
        return nil if visited.include?('CloudWatchMetricsDataSummary')
        visited = visited + ['CloudWatchMetricsDataSummary']
        {
          timestamp_metric_value_pair_list: Stubs::TimestampMetricValuePairList.default(visited),
          status_code: 'status_code',
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudWatchMetricsDataSummary.new
        data = {}
        data['TimestampMetricValuePairList'] = Stubs::TimestampMetricValuePairList.stub(stub[:timestamp_metric_value_pair_list]) unless stub[:timestamp_metric_value_pair_list].nil?
        data['StatusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data
      end
    end

    # List Stubber for TimestampMetricValuePairList
    class TimestampMetricValuePairList
      def self.default(visited=[])
        return nil if visited.include?('TimestampMetricValuePairList')
        visited = visited + ['TimestampMetricValuePairList']
        [
          Stubs::TimestampMetricValuePair.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TimestampMetricValuePair.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TimestampMetricValuePair
    class TimestampMetricValuePair
      def self.default(visited=[])
        return nil if visited.include?('TimestampMetricValuePair')
        visited = visited + ['TimestampMetricValuePair']
        {
          timestamp: Time.now,
          metric_value: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::TimestampMetricValuePair.new
        data = {}
        data['Timestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:timestamp]).to_i unless stub[:timestamp].nil?
        data['MetricValue'] = Hearth::NumberHelper.serialize(stub[:metric_value])
        data
      end
    end

    # List Stubber for CloudWatchMetricsDimensions
    class CloudWatchMetricsDimensions
      def self.default(visited=[])
        return nil if visited.include?('CloudWatchMetricsDimensions')
        visited = visited + ['CloudWatchMetricsDimensions']
        [
          Stubs::CloudWatchMetricsDimension.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CloudWatchMetricsDimension.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CloudWatchMetricsDimension
    class CloudWatchMetricsDimension
      def self.default(visited=[])
        return nil if visited.include?('CloudWatchMetricsDimension')
        visited = visited + ['CloudWatchMetricsDimension']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudWatchMetricsDimension.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for AnomalyReportedTimeRange
    class AnomalyReportedTimeRange
      def self.default(visited=[])
        return nil if visited.include?('AnomalyReportedTimeRange')
        visited = visited + ['AnomalyReportedTimeRange']
        {
          open_time: Time.now,
          close_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AnomalyReportedTimeRange.new
        data = {}
        data['OpenTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:open_time]).to_i unless stub[:open_time].nil?
        data['CloseTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:close_time]).to_i unless stub[:close_time].nil?
        data
      end
    end

    # Structure Stubber for AnomalyTimeRange
    class AnomalyTimeRange
      def self.default(visited=[])
        return nil if visited.include?('AnomalyTimeRange')
        visited = visited + ['AnomalyTimeRange']
        {
          start_time: Time.now,
          end_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AnomalyTimeRange.new
        data = {}
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data
      end
    end

    # Structure Stubber for ProactiveAnomaly
    class ProactiveAnomaly
      def self.default(visited=[])
        return nil if visited.include?('ProactiveAnomaly')
        visited = visited + ['ProactiveAnomaly']
        {
          id: 'id',
          severity: 'severity',
          status: 'status',
          update_time: Time.now,
          anomaly_time_range: Stubs::AnomalyTimeRange.default(visited),
          anomaly_reported_time_range: Stubs::AnomalyReportedTimeRange.default(visited),
          prediction_time_range: Stubs::PredictionTimeRange.default(visited),
          source_details: Stubs::AnomalySourceDetails.default(visited),
          associated_insight_id: 'associated_insight_id',
          resource_collection: Stubs::ResourceCollection.default(visited),
          limit: 1.0,
          source_metadata: Stubs::AnomalySourceMetadata.default(visited),
          anomaly_resources: Stubs::AnomalyResources.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProactiveAnomaly.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Severity'] = stub[:severity] unless stub[:severity].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['UpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:update_time]).to_i unless stub[:update_time].nil?
        data['AnomalyTimeRange'] = Stubs::AnomalyTimeRange.stub(stub[:anomaly_time_range]) unless stub[:anomaly_time_range].nil?
        data['AnomalyReportedTimeRange'] = Stubs::AnomalyReportedTimeRange.stub(stub[:anomaly_reported_time_range]) unless stub[:anomaly_reported_time_range].nil?
        data['PredictionTimeRange'] = Stubs::PredictionTimeRange.stub(stub[:prediction_time_range]) unless stub[:prediction_time_range].nil?
        data['SourceDetails'] = Stubs::AnomalySourceDetails.stub(stub[:source_details]) unless stub[:source_details].nil?
        data['AssociatedInsightId'] = stub[:associated_insight_id] unless stub[:associated_insight_id].nil?
        data['ResourceCollection'] = Stubs::ResourceCollection.stub(stub[:resource_collection]) unless stub[:resource_collection].nil?
        data['Limit'] = Hearth::NumberHelper.serialize(stub[:limit])
        data['SourceMetadata'] = Stubs::AnomalySourceMetadata.stub(stub[:source_metadata]) unless stub[:source_metadata].nil?
        data['AnomalyResources'] = Stubs::AnomalyResources.stub(stub[:anomaly_resources]) unless stub[:anomaly_resources].nil?
        data
      end
    end

    # Structure Stubber for AnomalySourceMetadata
    class AnomalySourceMetadata
      def self.default(visited=[])
        return nil if visited.include?('AnomalySourceMetadata')
        visited = visited + ['AnomalySourceMetadata']
        {
          source: 'source',
          source_resource_name: 'source_resource_name',
          source_resource_type: 'source_resource_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AnomalySourceMetadata.new
        data = {}
        data['Source'] = stub[:source] unless stub[:source].nil?
        data['SourceResourceName'] = stub[:source_resource_name] unless stub[:source_resource_name].nil?
        data['SourceResourceType'] = stub[:source_resource_type] unless stub[:source_resource_type].nil?
        data
      end
    end

    # Structure Stubber for PredictionTimeRange
    class PredictionTimeRange
      def self.default(visited=[])
        return nil if visited.include?('PredictionTimeRange')
        visited = visited + ['PredictionTimeRange']
        {
          start_time: Time.now,
          end_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::PredictionTimeRange.new
        data = {}
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data
      end
    end

    # Operation Stubber for DescribeEventSourcesConfig
    class DescribeEventSourcesConfig
      def self.default(visited=[])
        {
          event_sources: Stubs::EventSourcesConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['EventSources'] = Stubs::EventSourcesConfig.stub(stub[:event_sources]) unless stub[:event_sources].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for EventSourcesConfig
    class EventSourcesConfig
      def self.default(visited=[])
        return nil if visited.include?('EventSourcesConfig')
        visited = visited + ['EventSourcesConfig']
        {
          amazon_code_guru_profiler: Stubs::AmazonCodeGuruProfilerIntegration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EventSourcesConfig.new
        data = {}
        data['AmazonCodeGuruProfiler'] = Stubs::AmazonCodeGuruProfilerIntegration.stub(stub[:amazon_code_guru_profiler]) unless stub[:amazon_code_guru_profiler].nil?
        data
      end
    end

    # Structure Stubber for AmazonCodeGuruProfilerIntegration
    class AmazonCodeGuruProfilerIntegration
      def self.default(visited=[])
        return nil if visited.include?('AmazonCodeGuruProfilerIntegration')
        visited = visited + ['AmazonCodeGuruProfilerIntegration']
        {
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::AmazonCodeGuruProfilerIntegration.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for DescribeFeedback
    class DescribeFeedback
      def self.default(visited=[])
        {
          insight_feedback: Stubs::InsightFeedback.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['InsightFeedback'] = Stubs::InsightFeedback.stub(stub[:insight_feedback]) unless stub[:insight_feedback].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for InsightFeedback
    class InsightFeedback
      def self.default(visited=[])
        return nil if visited.include?('InsightFeedback')
        visited = visited + ['InsightFeedback']
        {
          id: 'id',
          feedback: 'feedback',
        }
      end

      def self.stub(stub)
        stub ||= Types::InsightFeedback.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Feedback'] = stub[:feedback] unless stub[:feedback].nil?
        data
      end
    end

    # Operation Stubber for DescribeInsight
    class DescribeInsight
      def self.default(visited=[])
        {
          proactive_insight: Stubs::ProactiveInsight.default(visited),
          reactive_insight: Stubs::ReactiveInsight.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ProactiveInsight'] = Stubs::ProactiveInsight.stub(stub[:proactive_insight]) unless stub[:proactive_insight].nil?
        data['ReactiveInsight'] = Stubs::ReactiveInsight.stub(stub[:reactive_insight]) unless stub[:reactive_insight].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ReactiveInsight
    class ReactiveInsight
      def self.default(visited=[])
        return nil if visited.include?('ReactiveInsight')
        visited = visited + ['ReactiveInsight']
        {
          id: 'id',
          name: 'name',
          severity: 'severity',
          status: 'status',
          insight_time_range: Stubs::InsightTimeRange.default(visited),
          resource_collection: Stubs::ResourceCollection.default(visited),
          ssm_ops_item_id: 'ssm_ops_item_id',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::ReactiveInsight.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Severity'] = stub[:severity] unless stub[:severity].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['InsightTimeRange'] = Stubs::InsightTimeRange.stub(stub[:insight_time_range]) unless stub[:insight_time_range].nil?
        data['ResourceCollection'] = Stubs::ResourceCollection.stub(stub[:resource_collection]) unless stub[:resource_collection].nil?
        data['SsmOpsItemId'] = stub[:ssm_ops_item_id] unless stub[:ssm_ops_item_id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Structure Stubber for InsightTimeRange
    class InsightTimeRange
      def self.default(visited=[])
        return nil if visited.include?('InsightTimeRange')
        visited = visited + ['InsightTimeRange']
        {
          start_time: Time.now,
          end_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::InsightTimeRange.new
        data = {}
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data
      end
    end

    # Structure Stubber for ProactiveInsight
    class ProactiveInsight
      def self.default(visited=[])
        return nil if visited.include?('ProactiveInsight')
        visited = visited + ['ProactiveInsight']
        {
          id: 'id',
          name: 'name',
          severity: 'severity',
          status: 'status',
          insight_time_range: Stubs::InsightTimeRange.default(visited),
          prediction_time_range: Stubs::PredictionTimeRange.default(visited),
          resource_collection: Stubs::ResourceCollection.default(visited),
          ssm_ops_item_id: 'ssm_ops_item_id',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProactiveInsight.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Severity'] = stub[:severity] unless stub[:severity].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['InsightTimeRange'] = Stubs::InsightTimeRange.stub(stub[:insight_time_range]) unless stub[:insight_time_range].nil?
        data['PredictionTimeRange'] = Stubs::PredictionTimeRange.stub(stub[:prediction_time_range]) unless stub[:prediction_time_range].nil?
        data['ResourceCollection'] = Stubs::ResourceCollection.stub(stub[:resource_collection]) unless stub[:resource_collection].nil?
        data['SsmOpsItemId'] = stub[:ssm_ops_item_id] unless stub[:ssm_ops_item_id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for DescribeOrganizationHealth
    class DescribeOrganizationHealth
      def self.default(visited=[])
        {
          open_reactive_insights: 1,
          open_proactive_insights: 1,
          metrics_analyzed: 1,
          resource_hours: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['OpenReactiveInsights'] = stub[:open_reactive_insights] unless stub[:open_reactive_insights].nil?
        data['OpenProactiveInsights'] = stub[:open_proactive_insights] unless stub[:open_proactive_insights].nil?
        data['MetricsAnalyzed'] = stub[:metrics_analyzed] unless stub[:metrics_analyzed].nil?
        data['ResourceHours'] = stub[:resource_hours] unless stub[:resource_hours].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeOrganizationOverview
    class DescribeOrganizationOverview
      def self.default(visited=[])
        {
          reactive_insights: 1,
          proactive_insights: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ReactiveInsights'] = stub[:reactive_insights] unless stub[:reactive_insights].nil?
        data['ProactiveInsights'] = stub[:proactive_insights] unless stub[:proactive_insights].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeOrganizationResourceCollectionHealth
    class DescribeOrganizationResourceCollectionHealth
      def self.default(visited=[])
        {
          cloud_formation: Stubs::CloudFormationHealths.default(visited),
          service: Stubs::ServiceHealths.default(visited),
          account: Stubs::AccountHealths.default(visited),
          next_token: 'next_token',
          tags: Stubs::TagHealths.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CloudFormation'] = Stubs::CloudFormationHealths.stub(stub[:cloud_formation]) unless stub[:cloud_formation].nil?
        data['Service'] = Stubs::ServiceHealths.stub(stub[:service]) unless stub[:service].nil?
        data['Account'] = Stubs::AccountHealths.stub(stub[:account]) unless stub[:account].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Tags'] = Stubs::TagHealths.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TagHealths
    class TagHealths
      def self.default(visited=[])
        return nil if visited.include?('TagHealths')
        visited = visited + ['TagHealths']
        [
          Stubs::TagHealth.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TagHealth.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TagHealth
    class TagHealth
      def self.default(visited=[])
        return nil if visited.include?('TagHealth')
        visited = visited + ['TagHealth']
        {
          app_boundary_key: 'app_boundary_key',
          tag_value: 'tag_value',
          insight: Stubs::InsightHealth.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TagHealth.new
        data = {}
        data['AppBoundaryKey'] = stub[:app_boundary_key] unless stub[:app_boundary_key].nil?
        data['TagValue'] = stub[:tag_value] unless stub[:tag_value].nil?
        data['Insight'] = Stubs::InsightHealth.stub(stub[:insight]) unless stub[:insight].nil?
        data
      end
    end

    # Structure Stubber for InsightHealth
    class InsightHealth
      def self.default(visited=[])
        return nil if visited.include?('InsightHealth')
        visited = visited + ['InsightHealth']
        {
          open_proactive_insights: 1,
          open_reactive_insights: 1,
          mean_time_to_recover_in_milliseconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::InsightHealth.new
        data = {}
        data['OpenProactiveInsights'] = stub[:open_proactive_insights] unless stub[:open_proactive_insights].nil?
        data['OpenReactiveInsights'] = stub[:open_reactive_insights] unless stub[:open_reactive_insights].nil?
        data['MeanTimeToRecoverInMilliseconds'] = stub[:mean_time_to_recover_in_milliseconds] unless stub[:mean_time_to_recover_in_milliseconds].nil?
        data
      end
    end

    # List Stubber for AccountHealths
    class AccountHealths
      def self.default(visited=[])
        return nil if visited.include?('AccountHealths')
        visited = visited + ['AccountHealths']
        [
          Stubs::AccountHealth.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AccountHealth.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AccountHealth
    class AccountHealth
      def self.default(visited=[])
        return nil if visited.include?('AccountHealth')
        visited = visited + ['AccountHealth']
        {
          account_id: 'account_id',
          insight: Stubs::AccountInsightHealth.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AccountHealth.new
        data = {}
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['Insight'] = Stubs::AccountInsightHealth.stub(stub[:insight]) unless stub[:insight].nil?
        data
      end
    end

    # Structure Stubber for AccountInsightHealth
    class AccountInsightHealth
      def self.default(visited=[])
        return nil if visited.include?('AccountInsightHealth')
        visited = visited + ['AccountInsightHealth']
        {
          open_proactive_insights: 1,
          open_reactive_insights: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AccountInsightHealth.new
        data = {}
        data['OpenProactiveInsights'] = stub[:open_proactive_insights] unless stub[:open_proactive_insights].nil?
        data['OpenReactiveInsights'] = stub[:open_reactive_insights] unless stub[:open_reactive_insights].nil?
        data
      end
    end

    # List Stubber for ServiceHealths
    class ServiceHealths
      def self.default(visited=[])
        return nil if visited.include?('ServiceHealths')
        visited = visited + ['ServiceHealths']
        [
          Stubs::ServiceHealth.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ServiceHealth.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ServiceHealth
    class ServiceHealth
      def self.default(visited=[])
        return nil if visited.include?('ServiceHealth')
        visited = visited + ['ServiceHealth']
        {
          service_name: 'service_name',
          insight: Stubs::ServiceInsightHealth.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceHealth.new
        data = {}
        data['ServiceName'] = stub[:service_name] unless stub[:service_name].nil?
        data['Insight'] = Stubs::ServiceInsightHealth.stub(stub[:insight]) unless stub[:insight].nil?
        data
      end
    end

    # Structure Stubber for ServiceInsightHealth
    class ServiceInsightHealth
      def self.default(visited=[])
        return nil if visited.include?('ServiceInsightHealth')
        visited = visited + ['ServiceInsightHealth']
        {
          open_proactive_insights: 1,
          open_reactive_insights: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceInsightHealth.new
        data = {}
        data['OpenProactiveInsights'] = stub[:open_proactive_insights] unless stub[:open_proactive_insights].nil?
        data['OpenReactiveInsights'] = stub[:open_reactive_insights] unless stub[:open_reactive_insights].nil?
        data
      end
    end

    # List Stubber for CloudFormationHealths
    class CloudFormationHealths
      def self.default(visited=[])
        return nil if visited.include?('CloudFormationHealths')
        visited = visited + ['CloudFormationHealths']
        [
          Stubs::CloudFormationHealth.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CloudFormationHealth.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CloudFormationHealth
    class CloudFormationHealth
      def self.default(visited=[])
        return nil if visited.include?('CloudFormationHealth')
        visited = visited + ['CloudFormationHealth']
        {
          stack_name: 'stack_name',
          insight: Stubs::InsightHealth.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudFormationHealth.new
        data = {}
        data['StackName'] = stub[:stack_name] unless stub[:stack_name].nil?
        data['Insight'] = Stubs::InsightHealth.stub(stub[:insight]) unless stub[:insight].nil?
        data
      end
    end

    # Operation Stubber for DescribeResourceCollectionHealth
    class DescribeResourceCollectionHealth
      def self.default(visited=[])
        {
          cloud_formation: Stubs::CloudFormationHealths.default(visited),
          service: Stubs::ServiceHealths.default(visited),
          next_token: 'next_token',
          tags: Stubs::TagHealths.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CloudFormation'] = Stubs::CloudFormationHealths.stub(stub[:cloud_formation]) unless stub[:cloud_formation].nil?
        data['Service'] = Stubs::ServiceHealths.stub(stub[:service]) unless stub[:service].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Tags'] = Stubs::TagHealths.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeServiceIntegration
    class DescribeServiceIntegration
      def self.default(visited=[])
        {
          service_integration: Stubs::ServiceIntegrationConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ServiceIntegration'] = Stubs::ServiceIntegrationConfig.stub(stub[:service_integration]) unless stub[:service_integration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ServiceIntegrationConfig
    class ServiceIntegrationConfig
      def self.default(visited=[])
        return nil if visited.include?('ServiceIntegrationConfig')
        visited = visited + ['ServiceIntegrationConfig']
        {
          ops_center: Stubs::OpsCenterIntegration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceIntegrationConfig.new
        data = {}
        data['OpsCenter'] = Stubs::OpsCenterIntegration.stub(stub[:ops_center]) unless stub[:ops_center].nil?
        data
      end
    end

    # Structure Stubber for OpsCenterIntegration
    class OpsCenterIntegration
      def self.default(visited=[])
        return nil if visited.include?('OpsCenterIntegration')
        visited = visited + ['OpsCenterIntegration']
        {
          opt_in_status: 'opt_in_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::OpsCenterIntegration.new
        data = {}
        data['OptInStatus'] = stub[:opt_in_status] unless stub[:opt_in_status].nil?
        data
      end
    end

    # Operation Stubber for GetCostEstimation
    class GetCostEstimation
      def self.default(visited=[])
        {
          resource_collection: Stubs::CostEstimationResourceCollectionFilter.default(visited),
          status: 'status',
          costs: Stubs::ServiceResourceCosts.default(visited),
          time_range: Stubs::CostEstimationTimeRange.default(visited),
          total_cost: 1.0,
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ResourceCollection'] = Stubs::CostEstimationResourceCollectionFilter.stub(stub[:resource_collection]) unless stub[:resource_collection].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Costs'] = Stubs::ServiceResourceCosts.stub(stub[:costs]) unless stub[:costs].nil?
        data['TimeRange'] = Stubs::CostEstimationTimeRange.stub(stub[:time_range]) unless stub[:time_range].nil?
        data['TotalCost'] = Hearth::NumberHelper.serialize(stub[:total_cost])
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for CostEstimationTimeRange
    class CostEstimationTimeRange
      def self.default(visited=[])
        return nil if visited.include?('CostEstimationTimeRange')
        visited = visited + ['CostEstimationTimeRange']
        {
          start_time: Time.now,
          end_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::CostEstimationTimeRange.new
        data = {}
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data
      end
    end

    # List Stubber for ServiceResourceCosts
    class ServiceResourceCosts
      def self.default(visited=[])
        return nil if visited.include?('ServiceResourceCosts')
        visited = visited + ['ServiceResourceCosts']
        [
          Stubs::ServiceResourceCost.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ServiceResourceCost.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ServiceResourceCost
    class ServiceResourceCost
      def self.default(visited=[])
        return nil if visited.include?('ServiceResourceCost')
        visited = visited + ['ServiceResourceCost']
        {
          type: 'type',
          state: 'state',
          count: 1,
          unit_cost: 1.0,
          cost: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceResourceCost.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Count'] = stub[:count] unless stub[:count].nil?
        data['UnitCost'] = Hearth::NumberHelper.serialize(stub[:unit_cost])
        data['Cost'] = Hearth::NumberHelper.serialize(stub[:cost])
        data
      end
    end

    # Structure Stubber for CostEstimationResourceCollectionFilter
    class CostEstimationResourceCollectionFilter
      def self.default(visited=[])
        return nil if visited.include?('CostEstimationResourceCollectionFilter')
        visited = visited + ['CostEstimationResourceCollectionFilter']
        {
          cloud_formation: Stubs::CloudFormationCostEstimationResourceCollectionFilter.default(visited),
          tags: Stubs::TagCostEstimationResourceCollectionFilters.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CostEstimationResourceCollectionFilter.new
        data = {}
        data['CloudFormation'] = Stubs::CloudFormationCostEstimationResourceCollectionFilter.stub(stub[:cloud_formation]) unless stub[:cloud_formation].nil?
        data['Tags'] = Stubs::TagCostEstimationResourceCollectionFilters.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # List Stubber for TagCostEstimationResourceCollectionFilters
    class TagCostEstimationResourceCollectionFilters
      def self.default(visited=[])
        return nil if visited.include?('TagCostEstimationResourceCollectionFilters')
        visited = visited + ['TagCostEstimationResourceCollectionFilters']
        [
          Stubs::TagCostEstimationResourceCollectionFilter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TagCostEstimationResourceCollectionFilter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TagCostEstimationResourceCollectionFilter
    class TagCostEstimationResourceCollectionFilter
      def self.default(visited=[])
        return nil if visited.include?('TagCostEstimationResourceCollectionFilter')
        visited = visited + ['TagCostEstimationResourceCollectionFilter']
        {
          app_boundary_key: 'app_boundary_key',
          tag_values: Stubs::CostEstimationTagValues.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TagCostEstimationResourceCollectionFilter.new
        data = {}
        data['AppBoundaryKey'] = stub[:app_boundary_key] unless stub[:app_boundary_key].nil?
        data['TagValues'] = Stubs::CostEstimationTagValues.stub(stub[:tag_values]) unless stub[:tag_values].nil?
        data
      end
    end

    # List Stubber for CostEstimationTagValues
    class CostEstimationTagValues
      def self.default(visited=[])
        return nil if visited.include?('CostEstimationTagValues')
        visited = visited + ['CostEstimationTagValues']
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

    # Structure Stubber for CloudFormationCostEstimationResourceCollectionFilter
    class CloudFormationCostEstimationResourceCollectionFilter
      def self.default(visited=[])
        return nil if visited.include?('CloudFormationCostEstimationResourceCollectionFilter')
        visited = visited + ['CloudFormationCostEstimationResourceCollectionFilter']
        {
          stack_names: Stubs::CostEstimationStackNames.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudFormationCostEstimationResourceCollectionFilter.new
        data = {}
        data['StackNames'] = Stubs::CostEstimationStackNames.stub(stub[:stack_names]) unless stub[:stack_names].nil?
        data
      end
    end

    # List Stubber for CostEstimationStackNames
    class CostEstimationStackNames
      def self.default(visited=[])
        return nil if visited.include?('CostEstimationStackNames')
        visited = visited + ['CostEstimationStackNames']
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

    # Operation Stubber for GetResourceCollection
    class GetResourceCollection
      def self.default(visited=[])
        {
          resource_collection: Stubs::ResourceCollectionFilter.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ResourceCollection'] = Stubs::ResourceCollectionFilter.stub(stub[:resource_collection]) unless stub[:resource_collection].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ResourceCollectionFilter
    class ResourceCollectionFilter
      def self.default(visited=[])
        return nil if visited.include?('ResourceCollectionFilter')
        visited = visited + ['ResourceCollectionFilter']
        {
          cloud_formation: Stubs::CloudFormationCollectionFilter.default(visited),
          tags: Stubs::TagCollectionFilters.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceCollectionFilter.new
        data = {}
        data['CloudFormation'] = Stubs::CloudFormationCollectionFilter.stub(stub[:cloud_formation]) unless stub[:cloud_formation].nil?
        data['Tags'] = Stubs::TagCollectionFilters.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # List Stubber for TagCollectionFilters
    class TagCollectionFilters
      def self.default(visited=[])
        return nil if visited.include?('TagCollectionFilters')
        visited = visited + ['TagCollectionFilters']
        [
          Stubs::TagCollectionFilter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TagCollectionFilter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TagCollectionFilter
    class TagCollectionFilter
      def self.default(visited=[])
        return nil if visited.include?('TagCollectionFilter')
        visited = visited + ['TagCollectionFilter']
        {
          app_boundary_key: 'app_boundary_key',
          tag_values: Stubs::TagValues.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TagCollectionFilter.new
        data = {}
        data['AppBoundaryKey'] = stub[:app_boundary_key] unless stub[:app_boundary_key].nil?
        data['TagValues'] = Stubs::TagValues.stub(stub[:tag_values]) unless stub[:tag_values].nil?
        data
      end
    end

    # Structure Stubber for CloudFormationCollectionFilter
    class CloudFormationCollectionFilter
      def self.default(visited=[])
        return nil if visited.include?('CloudFormationCollectionFilter')
        visited = visited + ['CloudFormationCollectionFilter']
        {
          stack_names: Stubs::StackNames.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudFormationCollectionFilter.new
        data = {}
        data['StackNames'] = Stubs::StackNames.stub(stub[:stack_names]) unless stub[:stack_names].nil?
        data
      end
    end

    # Operation Stubber for ListAnomaliesForInsight
    class ListAnomaliesForInsight
      def self.default(visited=[])
        {
          proactive_anomalies: Stubs::ProactiveAnomalies.default(visited),
          reactive_anomalies: Stubs::ReactiveAnomalies.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ProactiveAnomalies'] = Stubs::ProactiveAnomalies.stub(stub[:proactive_anomalies]) unless stub[:proactive_anomalies].nil?
        data['ReactiveAnomalies'] = Stubs::ReactiveAnomalies.stub(stub[:reactive_anomalies]) unless stub[:reactive_anomalies].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ReactiveAnomalies
    class ReactiveAnomalies
      def self.default(visited=[])
        return nil if visited.include?('ReactiveAnomalies')
        visited = visited + ['ReactiveAnomalies']
        [
          Stubs::ReactiveAnomalySummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ReactiveAnomalySummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReactiveAnomalySummary
    class ReactiveAnomalySummary
      def self.default(visited=[])
        return nil if visited.include?('ReactiveAnomalySummary')
        visited = visited + ['ReactiveAnomalySummary']
        {
          id: 'id',
          severity: 'severity',
          status: 'status',
          anomaly_time_range: Stubs::AnomalyTimeRange.default(visited),
          anomaly_reported_time_range: Stubs::AnomalyReportedTimeRange.default(visited),
          source_details: Stubs::AnomalySourceDetails.default(visited),
          associated_insight_id: 'associated_insight_id',
          resource_collection: Stubs::ResourceCollection.default(visited),
          type: 'type',
          name: 'name',
          description: 'description',
          causal_anomaly_id: 'causal_anomaly_id',
          anomaly_resources: Stubs::AnomalyResources.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReactiveAnomalySummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Severity'] = stub[:severity] unless stub[:severity].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['AnomalyTimeRange'] = Stubs::AnomalyTimeRange.stub(stub[:anomaly_time_range]) unless stub[:anomaly_time_range].nil?
        data['AnomalyReportedTimeRange'] = Stubs::AnomalyReportedTimeRange.stub(stub[:anomaly_reported_time_range]) unless stub[:anomaly_reported_time_range].nil?
        data['SourceDetails'] = Stubs::AnomalySourceDetails.stub(stub[:source_details]) unless stub[:source_details].nil?
        data['AssociatedInsightId'] = stub[:associated_insight_id] unless stub[:associated_insight_id].nil?
        data['ResourceCollection'] = Stubs::ResourceCollection.stub(stub[:resource_collection]) unless stub[:resource_collection].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CausalAnomalyId'] = stub[:causal_anomaly_id] unless stub[:causal_anomaly_id].nil?
        data['AnomalyResources'] = Stubs::AnomalyResources.stub(stub[:anomaly_resources]) unless stub[:anomaly_resources].nil?
        data
      end
    end

    # List Stubber for ProactiveAnomalies
    class ProactiveAnomalies
      def self.default(visited=[])
        return nil if visited.include?('ProactiveAnomalies')
        visited = visited + ['ProactiveAnomalies']
        [
          Stubs::ProactiveAnomalySummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ProactiveAnomalySummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProactiveAnomalySummary
    class ProactiveAnomalySummary
      def self.default(visited=[])
        return nil if visited.include?('ProactiveAnomalySummary')
        visited = visited + ['ProactiveAnomalySummary']
        {
          id: 'id',
          severity: 'severity',
          status: 'status',
          update_time: Time.now,
          anomaly_time_range: Stubs::AnomalyTimeRange.default(visited),
          anomaly_reported_time_range: Stubs::AnomalyReportedTimeRange.default(visited),
          prediction_time_range: Stubs::PredictionTimeRange.default(visited),
          source_details: Stubs::AnomalySourceDetails.default(visited),
          associated_insight_id: 'associated_insight_id',
          resource_collection: Stubs::ResourceCollection.default(visited),
          limit: 1.0,
          source_metadata: Stubs::AnomalySourceMetadata.default(visited),
          anomaly_resources: Stubs::AnomalyResources.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProactiveAnomalySummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Severity'] = stub[:severity] unless stub[:severity].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['UpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:update_time]).to_i unless stub[:update_time].nil?
        data['AnomalyTimeRange'] = Stubs::AnomalyTimeRange.stub(stub[:anomaly_time_range]) unless stub[:anomaly_time_range].nil?
        data['AnomalyReportedTimeRange'] = Stubs::AnomalyReportedTimeRange.stub(stub[:anomaly_reported_time_range]) unless stub[:anomaly_reported_time_range].nil?
        data['PredictionTimeRange'] = Stubs::PredictionTimeRange.stub(stub[:prediction_time_range]) unless stub[:prediction_time_range].nil?
        data['SourceDetails'] = Stubs::AnomalySourceDetails.stub(stub[:source_details]) unless stub[:source_details].nil?
        data['AssociatedInsightId'] = stub[:associated_insight_id] unless stub[:associated_insight_id].nil?
        data['ResourceCollection'] = Stubs::ResourceCollection.stub(stub[:resource_collection]) unless stub[:resource_collection].nil?
        data['Limit'] = Hearth::NumberHelper.serialize(stub[:limit])
        data['SourceMetadata'] = Stubs::AnomalySourceMetadata.stub(stub[:source_metadata]) unless stub[:source_metadata].nil?
        data['AnomalyResources'] = Stubs::AnomalyResources.stub(stub[:anomaly_resources]) unless stub[:anomaly_resources].nil?
        data
      end
    end

    # Operation Stubber for ListEvents
    class ListEvents
      def self.default(visited=[])
        {
          events: Stubs::Events.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Events'] = Stubs::Events.stub(stub[:events]) unless stub[:events].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Events
    class Events
      def self.default(visited=[])
        return nil if visited.include?('Events')
        visited = visited + ['Events']
        [
          Stubs::Event.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Event.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Event
    class Event
      def self.default(visited=[])
        return nil if visited.include?('Event')
        visited = visited + ['Event']
        {
          resource_collection: Stubs::ResourceCollection.default(visited),
          id: 'id',
          time: Time.now,
          event_source: 'event_source',
          name: 'name',
          data_source: 'data_source',
          event_class: 'event_class',
          resources: Stubs::EventResources.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Event.new
        data = {}
        data['ResourceCollection'] = Stubs::ResourceCollection.stub(stub[:resource_collection]) unless stub[:resource_collection].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Time'] = Hearth::TimeHelper.to_epoch_seconds(stub[:time]).to_i unless stub[:time].nil?
        data['EventSource'] = stub[:event_source] unless stub[:event_source].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['DataSource'] = stub[:data_source] unless stub[:data_source].nil?
        data['EventClass'] = stub[:event_class] unless stub[:event_class].nil?
        data['Resources'] = Stubs::EventResources.stub(stub[:resources]) unless stub[:resources].nil?
        data
      end
    end

    # List Stubber for EventResources
    class EventResources
      def self.default(visited=[])
        return nil if visited.include?('EventResources')
        visited = visited + ['EventResources']
        [
          Stubs::EventResource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EventResource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EventResource
    class EventResource
      def self.default(visited=[])
        return nil if visited.include?('EventResource')
        visited = visited + ['EventResource']
        {
          type: 'type',
          name: 'name',
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::EventResource.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for ListInsights
    class ListInsights
      def self.default(visited=[])
        {
          proactive_insights: Stubs::ProactiveInsights.default(visited),
          reactive_insights: Stubs::ReactiveInsights.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ProactiveInsights'] = Stubs::ProactiveInsights.stub(stub[:proactive_insights]) unless stub[:proactive_insights].nil?
        data['ReactiveInsights'] = Stubs::ReactiveInsights.stub(stub[:reactive_insights]) unless stub[:reactive_insights].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ReactiveInsights
    class ReactiveInsights
      def self.default(visited=[])
        return nil if visited.include?('ReactiveInsights')
        visited = visited + ['ReactiveInsights']
        [
          Stubs::ReactiveInsightSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ReactiveInsightSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReactiveInsightSummary
    class ReactiveInsightSummary
      def self.default(visited=[])
        return nil if visited.include?('ReactiveInsightSummary')
        visited = visited + ['ReactiveInsightSummary']
        {
          id: 'id',
          name: 'name',
          severity: 'severity',
          status: 'status',
          insight_time_range: Stubs::InsightTimeRange.default(visited),
          resource_collection: Stubs::ResourceCollection.default(visited),
          service_collection: Stubs::ServiceCollection.default(visited),
          associated_resource_arns: Stubs::AssociatedResourceArns.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReactiveInsightSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Severity'] = stub[:severity] unless stub[:severity].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['InsightTimeRange'] = Stubs::InsightTimeRange.stub(stub[:insight_time_range]) unless stub[:insight_time_range].nil?
        data['ResourceCollection'] = Stubs::ResourceCollection.stub(stub[:resource_collection]) unless stub[:resource_collection].nil?
        data['ServiceCollection'] = Stubs::ServiceCollection.stub(stub[:service_collection]) unless stub[:service_collection].nil?
        data['AssociatedResourceArns'] = Stubs::AssociatedResourceArns.stub(stub[:associated_resource_arns]) unless stub[:associated_resource_arns].nil?
        data
      end
    end

    # List Stubber for AssociatedResourceArns
    class AssociatedResourceArns
      def self.default(visited=[])
        return nil if visited.include?('AssociatedResourceArns')
        visited = visited + ['AssociatedResourceArns']
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

    # Structure Stubber for ServiceCollection
    class ServiceCollection
      def self.default(visited=[])
        return nil if visited.include?('ServiceCollection')
        visited = visited + ['ServiceCollection']
        {
          service_names: Stubs::ServiceNames.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceCollection.new
        data = {}
        data['ServiceNames'] = Stubs::ServiceNames.stub(stub[:service_names]) unless stub[:service_names].nil?
        data
      end
    end

    # List Stubber for ServiceNames
    class ServiceNames
      def self.default(visited=[])
        return nil if visited.include?('ServiceNames')
        visited = visited + ['ServiceNames']
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

    # List Stubber for ProactiveInsights
    class ProactiveInsights
      def self.default(visited=[])
        return nil if visited.include?('ProactiveInsights')
        visited = visited + ['ProactiveInsights']
        [
          Stubs::ProactiveInsightSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ProactiveInsightSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProactiveInsightSummary
    class ProactiveInsightSummary
      def self.default(visited=[])
        return nil if visited.include?('ProactiveInsightSummary')
        visited = visited + ['ProactiveInsightSummary']
        {
          id: 'id',
          name: 'name',
          severity: 'severity',
          status: 'status',
          insight_time_range: Stubs::InsightTimeRange.default(visited),
          prediction_time_range: Stubs::PredictionTimeRange.default(visited),
          resource_collection: Stubs::ResourceCollection.default(visited),
          service_collection: Stubs::ServiceCollection.default(visited),
          associated_resource_arns: Stubs::AssociatedResourceArns.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProactiveInsightSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Severity'] = stub[:severity] unless stub[:severity].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['InsightTimeRange'] = Stubs::InsightTimeRange.stub(stub[:insight_time_range]) unless stub[:insight_time_range].nil?
        data['PredictionTimeRange'] = Stubs::PredictionTimeRange.stub(stub[:prediction_time_range]) unless stub[:prediction_time_range].nil?
        data['ResourceCollection'] = Stubs::ResourceCollection.stub(stub[:resource_collection]) unless stub[:resource_collection].nil?
        data['ServiceCollection'] = Stubs::ServiceCollection.stub(stub[:service_collection]) unless stub[:service_collection].nil?
        data['AssociatedResourceArns'] = Stubs::AssociatedResourceArns.stub(stub[:associated_resource_arns]) unless stub[:associated_resource_arns].nil?
        data
      end
    end

    # Operation Stubber for ListNotificationChannels
    class ListNotificationChannels
      def self.default(visited=[])
        {
          channels: Stubs::Channels.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Channels'] = Stubs::Channels.stub(stub[:channels]) unless stub[:channels].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Channels
    class Channels
      def self.default(visited=[])
        return nil if visited.include?('Channels')
        visited = visited + ['Channels']
        [
          Stubs::NotificationChannel.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::NotificationChannel.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NotificationChannel
    class NotificationChannel
      def self.default(visited=[])
        return nil if visited.include?('NotificationChannel')
        visited = visited + ['NotificationChannel']
        {
          id: 'id',
          config: Stubs::NotificationChannelConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NotificationChannel.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Config'] = Stubs::NotificationChannelConfig.stub(stub[:config]) unless stub[:config].nil?
        data
      end
    end

    # Structure Stubber for NotificationChannelConfig
    class NotificationChannelConfig
      def self.default(visited=[])
        return nil if visited.include?('NotificationChannelConfig')
        visited = visited + ['NotificationChannelConfig']
        {
          sns: Stubs::SnsChannelConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NotificationChannelConfig.new
        data = {}
        data['Sns'] = Stubs::SnsChannelConfig.stub(stub[:sns]) unless stub[:sns].nil?
        data
      end
    end

    # Structure Stubber for SnsChannelConfig
    class SnsChannelConfig
      def self.default(visited=[])
        return nil if visited.include?('SnsChannelConfig')
        visited = visited + ['SnsChannelConfig']
        {
          topic_arn: 'topic_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::SnsChannelConfig.new
        data = {}
        data['TopicArn'] = stub[:topic_arn] unless stub[:topic_arn].nil?
        data
      end
    end

    # Operation Stubber for ListOrganizationInsights
    class ListOrganizationInsights
      def self.default(visited=[])
        {
          proactive_insights: Stubs::ProactiveOrganizationInsights.default(visited),
          reactive_insights: Stubs::ReactiveOrganizationInsights.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ProactiveInsights'] = Stubs::ProactiveOrganizationInsights.stub(stub[:proactive_insights]) unless stub[:proactive_insights].nil?
        data['ReactiveInsights'] = Stubs::ReactiveOrganizationInsights.stub(stub[:reactive_insights]) unless stub[:reactive_insights].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ReactiveOrganizationInsights
    class ReactiveOrganizationInsights
      def self.default(visited=[])
        return nil if visited.include?('ReactiveOrganizationInsights')
        visited = visited + ['ReactiveOrganizationInsights']
        [
          Stubs::ReactiveOrganizationInsightSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ReactiveOrganizationInsightSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReactiveOrganizationInsightSummary
    class ReactiveOrganizationInsightSummary
      def self.default(visited=[])
        return nil if visited.include?('ReactiveOrganizationInsightSummary')
        visited = visited + ['ReactiveOrganizationInsightSummary']
        {
          id: 'id',
          account_id: 'account_id',
          organizational_unit_id: 'organizational_unit_id',
          name: 'name',
          severity: 'severity',
          status: 'status',
          insight_time_range: Stubs::InsightTimeRange.default(visited),
          resource_collection: Stubs::ResourceCollection.default(visited),
          service_collection: Stubs::ServiceCollection.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReactiveOrganizationInsightSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['OrganizationalUnitId'] = stub[:organizational_unit_id] unless stub[:organizational_unit_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Severity'] = stub[:severity] unless stub[:severity].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['InsightTimeRange'] = Stubs::InsightTimeRange.stub(stub[:insight_time_range]) unless stub[:insight_time_range].nil?
        data['ResourceCollection'] = Stubs::ResourceCollection.stub(stub[:resource_collection]) unless stub[:resource_collection].nil?
        data['ServiceCollection'] = Stubs::ServiceCollection.stub(stub[:service_collection]) unless stub[:service_collection].nil?
        data
      end
    end

    # List Stubber for ProactiveOrganizationInsights
    class ProactiveOrganizationInsights
      def self.default(visited=[])
        return nil if visited.include?('ProactiveOrganizationInsights')
        visited = visited + ['ProactiveOrganizationInsights']
        [
          Stubs::ProactiveOrganizationInsightSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ProactiveOrganizationInsightSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProactiveOrganizationInsightSummary
    class ProactiveOrganizationInsightSummary
      def self.default(visited=[])
        return nil if visited.include?('ProactiveOrganizationInsightSummary')
        visited = visited + ['ProactiveOrganizationInsightSummary']
        {
          id: 'id',
          account_id: 'account_id',
          organizational_unit_id: 'organizational_unit_id',
          name: 'name',
          severity: 'severity',
          status: 'status',
          insight_time_range: Stubs::InsightTimeRange.default(visited),
          prediction_time_range: Stubs::PredictionTimeRange.default(visited),
          resource_collection: Stubs::ResourceCollection.default(visited),
          service_collection: Stubs::ServiceCollection.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProactiveOrganizationInsightSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['OrganizationalUnitId'] = stub[:organizational_unit_id] unless stub[:organizational_unit_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Severity'] = stub[:severity] unless stub[:severity].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['InsightTimeRange'] = Stubs::InsightTimeRange.stub(stub[:insight_time_range]) unless stub[:insight_time_range].nil?
        data['PredictionTimeRange'] = Stubs::PredictionTimeRange.stub(stub[:prediction_time_range]) unless stub[:prediction_time_range].nil?
        data['ResourceCollection'] = Stubs::ResourceCollection.stub(stub[:resource_collection]) unless stub[:resource_collection].nil?
        data['ServiceCollection'] = Stubs::ServiceCollection.stub(stub[:service_collection]) unless stub[:service_collection].nil?
        data
      end
    end

    # Operation Stubber for ListRecommendations
    class ListRecommendations
      def self.default(visited=[])
        {
          recommendations: Stubs::Recommendations.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Recommendations'] = Stubs::Recommendations.stub(stub[:recommendations]) unless stub[:recommendations].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Recommendations
    class Recommendations
      def self.default(visited=[])
        return nil if visited.include?('Recommendations')
        visited = visited + ['Recommendations']
        [
          Stubs::Recommendation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Recommendation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Recommendation
    class Recommendation
      def self.default(visited=[])
        return nil if visited.include?('Recommendation')
        visited = visited + ['Recommendation']
        {
          description: 'description',
          link: 'link',
          name: 'name',
          reason: 'reason',
          related_events: Stubs::RecommendationRelatedEvents.default(visited),
          related_anomalies: Stubs::RecommendationRelatedAnomalies.default(visited),
          category: 'category',
        }
      end

      def self.stub(stub)
        stub ||= Types::Recommendation.new
        data = {}
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Link'] = stub[:link] unless stub[:link].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Reason'] = stub[:reason] unless stub[:reason].nil?
        data['RelatedEvents'] = Stubs::RecommendationRelatedEvents.stub(stub[:related_events]) unless stub[:related_events].nil?
        data['RelatedAnomalies'] = Stubs::RecommendationRelatedAnomalies.stub(stub[:related_anomalies]) unless stub[:related_anomalies].nil?
        data['Category'] = stub[:category] unless stub[:category].nil?
        data
      end
    end

    # List Stubber for RecommendationRelatedAnomalies
    class RecommendationRelatedAnomalies
      def self.default(visited=[])
        return nil if visited.include?('RecommendationRelatedAnomalies')
        visited = visited + ['RecommendationRelatedAnomalies']
        [
          Stubs::RecommendationRelatedAnomaly.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RecommendationRelatedAnomaly.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecommendationRelatedAnomaly
    class RecommendationRelatedAnomaly
      def self.default(visited=[])
        return nil if visited.include?('RecommendationRelatedAnomaly')
        visited = visited + ['RecommendationRelatedAnomaly']
        {
          resources: Stubs::RecommendationRelatedAnomalyResources.default(visited),
          source_details: Stubs::RelatedAnomalySourceDetails.default(visited),
          anomaly_id: 'anomaly_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::RecommendationRelatedAnomaly.new
        data = {}
        data['Resources'] = Stubs::RecommendationRelatedAnomalyResources.stub(stub[:resources]) unless stub[:resources].nil?
        data['SourceDetails'] = Stubs::RelatedAnomalySourceDetails.stub(stub[:source_details]) unless stub[:source_details].nil?
        data['AnomalyId'] = stub[:anomaly_id] unless stub[:anomaly_id].nil?
        data
      end
    end

    # List Stubber for RelatedAnomalySourceDetails
    class RelatedAnomalySourceDetails
      def self.default(visited=[])
        return nil if visited.include?('RelatedAnomalySourceDetails')
        visited = visited + ['RelatedAnomalySourceDetails']
        [
          Stubs::RecommendationRelatedAnomalySourceDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RecommendationRelatedAnomalySourceDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecommendationRelatedAnomalySourceDetail
    class RecommendationRelatedAnomalySourceDetail
      def self.default(visited=[])
        return nil if visited.include?('RecommendationRelatedAnomalySourceDetail')
        visited = visited + ['RecommendationRelatedAnomalySourceDetail']
        {
          cloud_watch_metrics: Stubs::RecommendationRelatedCloudWatchMetricsSourceDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RecommendationRelatedAnomalySourceDetail.new
        data = {}
        data['CloudWatchMetrics'] = Stubs::RecommendationRelatedCloudWatchMetricsSourceDetails.stub(stub[:cloud_watch_metrics]) unless stub[:cloud_watch_metrics].nil?
        data
      end
    end

    # List Stubber for RecommendationRelatedCloudWatchMetricsSourceDetails
    class RecommendationRelatedCloudWatchMetricsSourceDetails
      def self.default(visited=[])
        return nil if visited.include?('RecommendationRelatedCloudWatchMetricsSourceDetails')
        visited = visited + ['RecommendationRelatedCloudWatchMetricsSourceDetails']
        [
          Stubs::RecommendationRelatedCloudWatchMetricsSourceDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RecommendationRelatedCloudWatchMetricsSourceDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecommendationRelatedCloudWatchMetricsSourceDetail
    class RecommendationRelatedCloudWatchMetricsSourceDetail
      def self.default(visited=[])
        return nil if visited.include?('RecommendationRelatedCloudWatchMetricsSourceDetail')
        visited = visited + ['RecommendationRelatedCloudWatchMetricsSourceDetail']
        {
          metric_name: 'metric_name',
          namespace: 'namespace',
        }
      end

      def self.stub(stub)
        stub ||= Types::RecommendationRelatedCloudWatchMetricsSourceDetail.new
        data = {}
        data['MetricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['Namespace'] = stub[:namespace] unless stub[:namespace].nil?
        data
      end
    end

    # List Stubber for RecommendationRelatedAnomalyResources
    class RecommendationRelatedAnomalyResources
      def self.default(visited=[])
        return nil if visited.include?('RecommendationRelatedAnomalyResources')
        visited = visited + ['RecommendationRelatedAnomalyResources']
        [
          Stubs::RecommendationRelatedAnomalyResource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RecommendationRelatedAnomalyResource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecommendationRelatedAnomalyResource
    class RecommendationRelatedAnomalyResource
      def self.default(visited=[])
        return nil if visited.include?('RecommendationRelatedAnomalyResource')
        visited = visited + ['RecommendationRelatedAnomalyResource']
        {
          name: 'name',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::RecommendationRelatedAnomalyResource.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # List Stubber for RecommendationRelatedEvents
    class RecommendationRelatedEvents
      def self.default(visited=[])
        return nil if visited.include?('RecommendationRelatedEvents')
        visited = visited + ['RecommendationRelatedEvents']
        [
          Stubs::RecommendationRelatedEvent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RecommendationRelatedEvent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecommendationRelatedEvent
    class RecommendationRelatedEvent
      def self.default(visited=[])
        return nil if visited.include?('RecommendationRelatedEvent')
        visited = visited + ['RecommendationRelatedEvent']
        {
          name: 'name',
          resources: Stubs::RecommendationRelatedEventResources.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RecommendationRelatedEvent.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Resources'] = Stubs::RecommendationRelatedEventResources.stub(stub[:resources]) unless stub[:resources].nil?
        data
      end
    end

    # List Stubber for RecommendationRelatedEventResources
    class RecommendationRelatedEventResources
      def self.default(visited=[])
        return nil if visited.include?('RecommendationRelatedEventResources')
        visited = visited + ['RecommendationRelatedEventResources']
        [
          Stubs::RecommendationRelatedEventResource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RecommendationRelatedEventResource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecommendationRelatedEventResource
    class RecommendationRelatedEventResource
      def self.default(visited=[])
        return nil if visited.include?('RecommendationRelatedEventResource')
        visited = visited + ['RecommendationRelatedEventResource']
        {
          name: 'name',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::RecommendationRelatedEventResource.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Operation Stubber for PutFeedback
    class PutFeedback
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for RemoveNotificationChannel
    class RemoveNotificationChannel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for SearchInsights
    class SearchInsights
      def self.default(visited=[])
        {
          proactive_insights: Stubs::ProactiveInsights.default(visited),
          reactive_insights: Stubs::ReactiveInsights.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ProactiveInsights'] = Stubs::ProactiveInsights.stub(stub[:proactive_insights]) unless stub[:proactive_insights].nil?
        data['ReactiveInsights'] = Stubs::ReactiveInsights.stub(stub[:reactive_insights]) unless stub[:reactive_insights].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for SearchOrganizationInsights
    class SearchOrganizationInsights
      def self.default(visited=[])
        {
          proactive_insights: Stubs::ProactiveInsights.default(visited),
          reactive_insights: Stubs::ReactiveInsights.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ProactiveInsights'] = Stubs::ProactiveInsights.stub(stub[:proactive_insights]) unless stub[:proactive_insights].nil?
        data['ReactiveInsights'] = Stubs::ReactiveInsights.stub(stub[:reactive_insights]) unless stub[:reactive_insights].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartCostEstimation
    class StartCostEstimation
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateEventSourcesConfig
    class UpdateEventSourcesConfig
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateResourceCollection
    class UpdateResourceCollection
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateServiceIntegration
    class UpdateServiceIntegration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end
  end
end
