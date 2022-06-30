# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::DevOpsGuru
  module Parsers

    # Operation Parser for AddNotificationChannel
    class AddNotificationChannel
      def self.parse(http_resp)
        data = Types::AddNotificationChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['Id']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.reason = map['Reason']
        data.fields = (Parsers::ValidationExceptionFields.parse(map['Fields']) unless map['Fields'].nil?)
        data
      end
    end

    class ValidationExceptionFields
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ValidationExceptionField.parse(value) unless value.nil?
        end
        data
      end
    end

    class ValidationExceptionField
      def self.parse(map)
        data = Types::ValidationExceptionField.new
        data.name = map['Name']
        data.message = map['Message']
        return data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        data.retry_after_seconds = http_resp.headers['Retry-After'].to_i unless http_resp.headers['Retry-After'].nil?
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        data.retry_after_seconds = http_resp.headers['Retry-After'].to_i unless http_resp.headers['Retry-After'].nil?
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.quota_code = map['QuotaCode']
        data.service_code = map['ServiceCode']
        data
      end
    end

    # Operation Parser for DeleteInsight
    class DeleteInsight
      def self.parse(http_resp)
        data = Types::DeleteInsightOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeAccountHealth
    class DescribeAccountHealth
      def self.parse(http_resp)
        data = Types::DescribeAccountHealthOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.open_reactive_insights = map['OpenReactiveInsights']
        data.open_proactive_insights = map['OpenProactiveInsights']
        data.metrics_analyzed = map['MetricsAnalyzed']
        data.resource_hours = map['ResourceHours']
        data
      end
    end

    # Operation Parser for DescribeAccountOverview
    class DescribeAccountOverview
      def self.parse(http_resp)
        data = Types::DescribeAccountOverviewOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.reactive_insights = map['ReactiveInsights']
        data.proactive_insights = map['ProactiveInsights']
        data.mean_time_to_recover_in_milliseconds = map['MeanTimeToRecoverInMilliseconds']
        data
      end
    end

    # Operation Parser for DescribeAnomaly
    class DescribeAnomaly
      def self.parse(http_resp)
        data = Types::DescribeAnomalyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.proactive_anomaly = (Parsers::ProactiveAnomaly.parse(map['ProactiveAnomaly']) unless map['ProactiveAnomaly'].nil?)
        data.reactive_anomaly = (Parsers::ReactiveAnomaly.parse(map['ReactiveAnomaly']) unless map['ReactiveAnomaly'].nil?)
        data
      end
    end

    class ReactiveAnomaly
      def self.parse(map)
        data = Types::ReactiveAnomaly.new
        data.id = map['Id']
        data.severity = map['Severity']
        data.status = map['Status']
        data.anomaly_time_range = (Parsers::AnomalyTimeRange.parse(map['AnomalyTimeRange']) unless map['AnomalyTimeRange'].nil?)
        data.anomaly_reported_time_range = (Parsers::AnomalyReportedTimeRange.parse(map['AnomalyReportedTimeRange']) unless map['AnomalyReportedTimeRange'].nil?)
        data.source_details = (Parsers::AnomalySourceDetails.parse(map['SourceDetails']) unless map['SourceDetails'].nil?)
        data.associated_insight_id = map['AssociatedInsightId']
        data.resource_collection = (Parsers::ResourceCollection.parse(map['ResourceCollection']) unless map['ResourceCollection'].nil?)
        data.type = map['Type']
        data.name = map['Name']
        data.description = map['Description']
        data.causal_anomaly_id = map['CausalAnomalyId']
        data.anomaly_resources = (Parsers::AnomalyResources.parse(map['AnomalyResources']) unless map['AnomalyResources'].nil?)
        return data
      end
    end

    class AnomalyResources
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AnomalyResource.parse(value) unless value.nil?
        end
        data
      end
    end

    class AnomalyResource
      def self.parse(map)
        data = Types::AnomalyResource.new
        data.name = map['Name']
        data.type = map['Type']
        return data
      end
    end

    class ResourceCollection
      def self.parse(map)
        data = Types::ResourceCollection.new
        data.cloud_formation = (Parsers::CloudFormationCollection.parse(map['CloudFormation']) unless map['CloudFormation'].nil?)
        data.tags = (Parsers::TagCollections.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class TagCollections
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::TagCollection.parse(value) unless value.nil?
        end
        data
      end
    end

    class TagCollection
      def self.parse(map)
        data = Types::TagCollection.new
        data.app_boundary_key = map['AppBoundaryKey']
        data.tag_values = (Parsers::TagValues.parse(map['TagValues']) unless map['TagValues'].nil?)
        return data
      end
    end

    class TagValues
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class CloudFormationCollection
      def self.parse(map)
        data = Types::CloudFormationCollection.new
        data.stack_names = (Parsers::StackNames.parse(map['StackNames']) unless map['StackNames'].nil?)
        return data
      end
    end

    class StackNames
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class AnomalySourceDetails
      def self.parse(map)
        data = Types::AnomalySourceDetails.new
        data.cloud_watch_metrics = (Parsers::CloudWatchMetricsDetails.parse(map['CloudWatchMetrics']) unless map['CloudWatchMetrics'].nil?)
        data.performance_insights_metrics = (Parsers::PerformanceInsightsMetricsDetails.parse(map['PerformanceInsightsMetrics']) unless map['PerformanceInsightsMetrics'].nil?)
        return data
      end
    end

    class PerformanceInsightsMetricsDetails
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PerformanceInsightsMetricsDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class PerformanceInsightsMetricsDetail
      def self.parse(map)
        data = Types::PerformanceInsightsMetricsDetail.new
        data.metric_display_name = map['MetricDisplayName']
        data.unit = map['Unit']
        data.metric_query = (Parsers::PerformanceInsightsMetricQuery.parse(map['MetricQuery']) unless map['MetricQuery'].nil?)
        data.reference_data = (Parsers::PerformanceInsightsReferenceDataList.parse(map['ReferenceData']) unless map['ReferenceData'].nil?)
        data.stats_at_anomaly = (Parsers::PerformanceInsightsStats.parse(map['StatsAtAnomaly']) unless map['StatsAtAnomaly'].nil?)
        data.stats_at_baseline = (Parsers::PerformanceInsightsStats.parse(map['StatsAtBaseline']) unless map['StatsAtBaseline'].nil?)
        return data
      end
    end

    class PerformanceInsightsStats
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PerformanceInsightsStat.parse(value) unless value.nil?
        end
        data
      end
    end

    class PerformanceInsightsStat
      def self.parse(map)
        data = Types::PerformanceInsightsStat.new
        data.type = map['Type']
        data.value = Hearth::NumberHelper.deserialize(map['Value'])
        return data
      end
    end

    class PerformanceInsightsReferenceDataList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PerformanceInsightsReferenceData.parse(value) unless value.nil?
        end
        data
      end
    end

    class PerformanceInsightsReferenceData
      def self.parse(map)
        data = Types::PerformanceInsightsReferenceData.new
        data.name = map['Name']
        data.comparison_values = (Parsers::PerformanceInsightsReferenceComparisonValues.parse(map['ComparisonValues']) unless map['ComparisonValues'].nil?)
        return data
      end
    end

    class PerformanceInsightsReferenceComparisonValues
      def self.parse(map)
        data = Types::PerformanceInsightsReferenceComparisonValues.new
        data.reference_scalar = (Parsers::PerformanceInsightsReferenceScalar.parse(map['ReferenceScalar']) unless map['ReferenceScalar'].nil?)
        data.reference_metric = (Parsers::PerformanceInsightsReferenceMetric.parse(map['ReferenceMetric']) unless map['ReferenceMetric'].nil?)
        return data
      end
    end

    class PerformanceInsightsReferenceMetric
      def self.parse(map)
        data = Types::PerformanceInsightsReferenceMetric.new
        data.metric_query = (Parsers::PerformanceInsightsMetricQuery.parse(map['MetricQuery']) unless map['MetricQuery'].nil?)
        return data
      end
    end

    class PerformanceInsightsMetricQuery
      def self.parse(map)
        data = Types::PerformanceInsightsMetricQuery.new
        data.metric = map['Metric']
        data.group_by = (Parsers::PerformanceInsightsMetricDimensionGroup.parse(map['GroupBy']) unless map['GroupBy'].nil?)
        data.filter = (Parsers::PerformanceInsightsMetricFilterMap.parse(map['Filter']) unless map['Filter'].nil?)
        return data
      end
    end

    class PerformanceInsightsMetricFilterMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class PerformanceInsightsMetricDimensionGroup
      def self.parse(map)
        data = Types::PerformanceInsightsMetricDimensionGroup.new
        data.group = map['Group']
        data.dimensions = (Parsers::PerformanceInsightsMetricDimensions.parse(map['Dimensions']) unless map['Dimensions'].nil?)
        data.limit = map['Limit']
        return data
      end
    end

    class PerformanceInsightsMetricDimensions
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class PerformanceInsightsReferenceScalar
      def self.parse(map)
        data = Types::PerformanceInsightsReferenceScalar.new
        data.value = Hearth::NumberHelper.deserialize(map['Value'])
        return data
      end
    end

    class CloudWatchMetricsDetails
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CloudWatchMetricsDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class CloudWatchMetricsDetail
      def self.parse(map)
        data = Types::CloudWatchMetricsDetail.new
        data.metric_name = map['MetricName']
        data.namespace = map['Namespace']
        data.dimensions = (Parsers::CloudWatchMetricsDimensions.parse(map['Dimensions']) unless map['Dimensions'].nil?)
        data.stat = map['Stat']
        data.unit = map['Unit']
        data.period = map['Period']
        data.metric_data_summary = (Parsers::CloudWatchMetricsDataSummary.parse(map['MetricDataSummary']) unless map['MetricDataSummary'].nil?)
        return data
      end
    end

    class CloudWatchMetricsDataSummary
      def self.parse(map)
        data = Types::CloudWatchMetricsDataSummary.new
        data.timestamp_metric_value_pair_list = (Parsers::TimestampMetricValuePairList.parse(map['TimestampMetricValuePairList']) unless map['TimestampMetricValuePairList'].nil?)
        data.status_code = map['StatusCode']
        return data
      end
    end

    class TimestampMetricValuePairList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::TimestampMetricValuePair.parse(value) unless value.nil?
        end
        data
      end
    end

    class TimestampMetricValuePair
      def self.parse(map)
        data = Types::TimestampMetricValuePair.new
        data.timestamp = Time.at(map['Timestamp'].to_i) if map['Timestamp']
        data.metric_value = Hearth::NumberHelper.deserialize(map['MetricValue'])
        return data
      end
    end

    class CloudWatchMetricsDimensions
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CloudWatchMetricsDimension.parse(value) unless value.nil?
        end
        data
      end
    end

    class CloudWatchMetricsDimension
      def self.parse(map)
        data = Types::CloudWatchMetricsDimension.new
        data.name = map['Name']
        data.value = map['Value']
        return data
      end
    end

    class AnomalyReportedTimeRange
      def self.parse(map)
        data = Types::AnomalyReportedTimeRange.new
        data.open_time = Time.at(map['OpenTime'].to_i) if map['OpenTime']
        data.close_time = Time.at(map['CloseTime'].to_i) if map['CloseTime']
        return data
      end
    end

    class AnomalyTimeRange
      def self.parse(map)
        data = Types::AnomalyTimeRange.new
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        return data
      end
    end

    class ProactiveAnomaly
      def self.parse(map)
        data = Types::ProactiveAnomaly.new
        data.id = map['Id']
        data.severity = map['Severity']
        data.status = map['Status']
        data.update_time = Time.at(map['UpdateTime'].to_i) if map['UpdateTime']
        data.anomaly_time_range = (Parsers::AnomalyTimeRange.parse(map['AnomalyTimeRange']) unless map['AnomalyTimeRange'].nil?)
        data.anomaly_reported_time_range = (Parsers::AnomalyReportedTimeRange.parse(map['AnomalyReportedTimeRange']) unless map['AnomalyReportedTimeRange'].nil?)
        data.prediction_time_range = (Parsers::PredictionTimeRange.parse(map['PredictionTimeRange']) unless map['PredictionTimeRange'].nil?)
        data.source_details = (Parsers::AnomalySourceDetails.parse(map['SourceDetails']) unless map['SourceDetails'].nil?)
        data.associated_insight_id = map['AssociatedInsightId']
        data.resource_collection = (Parsers::ResourceCollection.parse(map['ResourceCollection']) unless map['ResourceCollection'].nil?)
        data.limit = Hearth::NumberHelper.deserialize(map['Limit'])
        data.source_metadata = (Parsers::AnomalySourceMetadata.parse(map['SourceMetadata']) unless map['SourceMetadata'].nil?)
        data.anomaly_resources = (Parsers::AnomalyResources.parse(map['AnomalyResources']) unless map['AnomalyResources'].nil?)
        return data
      end
    end

    class AnomalySourceMetadata
      def self.parse(map)
        data = Types::AnomalySourceMetadata.new
        data.source = map['Source']
        data.source_resource_name = map['SourceResourceName']
        data.source_resource_type = map['SourceResourceType']
        return data
      end
    end

    class PredictionTimeRange
      def self.parse(map)
        data = Types::PredictionTimeRange.new
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        return data
      end
    end

    # Operation Parser for DescribeEventSourcesConfig
    class DescribeEventSourcesConfig
      def self.parse(http_resp)
        data = Types::DescribeEventSourcesConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.event_sources = (Parsers::EventSourcesConfig.parse(map['EventSources']) unless map['EventSources'].nil?)
        data
      end
    end

    class EventSourcesConfig
      def self.parse(map)
        data = Types::EventSourcesConfig.new
        data.amazon_code_guru_profiler = (Parsers::AmazonCodeGuruProfilerIntegration.parse(map['AmazonCodeGuruProfiler']) unless map['AmazonCodeGuruProfiler'].nil?)
        return data
      end
    end

    class AmazonCodeGuruProfilerIntegration
      def self.parse(map)
        data = Types::AmazonCodeGuruProfilerIntegration.new
        data.status = map['Status']
        return data
      end
    end

    # Operation Parser for DescribeFeedback
    class DescribeFeedback
      def self.parse(http_resp)
        data = Types::DescribeFeedbackOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.insight_feedback = (Parsers::InsightFeedback.parse(map['InsightFeedback']) unless map['InsightFeedback'].nil?)
        data
      end
    end

    class InsightFeedback
      def self.parse(map)
        data = Types::InsightFeedback.new
        data.id = map['Id']
        data.feedback = map['Feedback']
        return data
      end
    end

    # Operation Parser for DescribeInsight
    class DescribeInsight
      def self.parse(http_resp)
        data = Types::DescribeInsightOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.proactive_insight = (Parsers::ProactiveInsight.parse(map['ProactiveInsight']) unless map['ProactiveInsight'].nil?)
        data.reactive_insight = (Parsers::ReactiveInsight.parse(map['ReactiveInsight']) unless map['ReactiveInsight'].nil?)
        data
      end
    end

    class ReactiveInsight
      def self.parse(map)
        data = Types::ReactiveInsight.new
        data.id = map['Id']
        data.name = map['Name']
        data.severity = map['Severity']
        data.status = map['Status']
        data.insight_time_range = (Parsers::InsightTimeRange.parse(map['InsightTimeRange']) unless map['InsightTimeRange'].nil?)
        data.resource_collection = (Parsers::ResourceCollection.parse(map['ResourceCollection']) unless map['ResourceCollection'].nil?)
        data.ssm_ops_item_id = map['SsmOpsItemId']
        data.description = map['Description']
        return data
      end
    end

    class InsightTimeRange
      def self.parse(map)
        data = Types::InsightTimeRange.new
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        return data
      end
    end

    class ProactiveInsight
      def self.parse(map)
        data = Types::ProactiveInsight.new
        data.id = map['Id']
        data.name = map['Name']
        data.severity = map['Severity']
        data.status = map['Status']
        data.insight_time_range = (Parsers::InsightTimeRange.parse(map['InsightTimeRange']) unless map['InsightTimeRange'].nil?)
        data.prediction_time_range = (Parsers::PredictionTimeRange.parse(map['PredictionTimeRange']) unless map['PredictionTimeRange'].nil?)
        data.resource_collection = (Parsers::ResourceCollection.parse(map['ResourceCollection']) unless map['ResourceCollection'].nil?)
        data.ssm_ops_item_id = map['SsmOpsItemId']
        data.description = map['Description']
        return data
      end
    end

    # Operation Parser for DescribeOrganizationHealth
    class DescribeOrganizationHealth
      def self.parse(http_resp)
        data = Types::DescribeOrganizationHealthOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.open_reactive_insights = map['OpenReactiveInsights']
        data.open_proactive_insights = map['OpenProactiveInsights']
        data.metrics_analyzed = map['MetricsAnalyzed']
        data.resource_hours = map['ResourceHours']
        data
      end
    end

    # Operation Parser for DescribeOrganizationOverview
    class DescribeOrganizationOverview
      def self.parse(http_resp)
        data = Types::DescribeOrganizationOverviewOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.reactive_insights = map['ReactiveInsights']
        data.proactive_insights = map['ProactiveInsights']
        data
      end
    end

    # Operation Parser for DescribeOrganizationResourceCollectionHealth
    class DescribeOrganizationResourceCollectionHealth
      def self.parse(http_resp)
        data = Types::DescribeOrganizationResourceCollectionHealthOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cloud_formation = (Parsers::CloudFormationHealths.parse(map['CloudFormation']) unless map['CloudFormation'].nil?)
        data.service = (Parsers::ServiceHealths.parse(map['Service']) unless map['Service'].nil?)
        data.account = (Parsers::AccountHealths.parse(map['Account']) unless map['Account'].nil?)
        data.next_token = map['NextToken']
        data.tags = (Parsers::TagHealths.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class TagHealths
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::TagHealth.parse(value) unless value.nil?
        end
        data
      end
    end

    class TagHealth
      def self.parse(map)
        data = Types::TagHealth.new
        data.app_boundary_key = map['AppBoundaryKey']
        data.tag_value = map['TagValue']
        data.insight = (Parsers::InsightHealth.parse(map['Insight']) unless map['Insight'].nil?)
        return data
      end
    end

    class InsightHealth
      def self.parse(map)
        data = Types::InsightHealth.new
        data.open_proactive_insights = map['OpenProactiveInsights']
        data.open_reactive_insights = map['OpenReactiveInsights']
        data.mean_time_to_recover_in_milliseconds = map['MeanTimeToRecoverInMilliseconds']
        return data
      end
    end

    class AccountHealths
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AccountHealth.parse(value) unless value.nil?
        end
        data
      end
    end

    class AccountHealth
      def self.parse(map)
        data = Types::AccountHealth.new
        data.account_id = map['AccountId']
        data.insight = (Parsers::AccountInsightHealth.parse(map['Insight']) unless map['Insight'].nil?)
        return data
      end
    end

    class AccountInsightHealth
      def self.parse(map)
        data = Types::AccountInsightHealth.new
        data.open_proactive_insights = map['OpenProactiveInsights']
        data.open_reactive_insights = map['OpenReactiveInsights']
        return data
      end
    end

    class ServiceHealths
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ServiceHealth.parse(value) unless value.nil?
        end
        data
      end
    end

    class ServiceHealth
      def self.parse(map)
        data = Types::ServiceHealth.new
        data.service_name = map['ServiceName']
        data.insight = (Parsers::ServiceInsightHealth.parse(map['Insight']) unless map['Insight'].nil?)
        return data
      end
    end

    class ServiceInsightHealth
      def self.parse(map)
        data = Types::ServiceInsightHealth.new
        data.open_proactive_insights = map['OpenProactiveInsights']
        data.open_reactive_insights = map['OpenReactiveInsights']
        return data
      end
    end

    class CloudFormationHealths
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CloudFormationHealth.parse(value) unless value.nil?
        end
        data
      end
    end

    class CloudFormationHealth
      def self.parse(map)
        data = Types::CloudFormationHealth.new
        data.stack_name = map['StackName']
        data.insight = (Parsers::InsightHealth.parse(map['Insight']) unless map['Insight'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeResourceCollectionHealth
    class DescribeResourceCollectionHealth
      def self.parse(http_resp)
        data = Types::DescribeResourceCollectionHealthOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cloud_formation = (Parsers::CloudFormationHealths.parse(map['CloudFormation']) unless map['CloudFormation'].nil?)
        data.service = (Parsers::ServiceHealths.parse(map['Service']) unless map['Service'].nil?)
        data.next_token = map['NextToken']
        data.tags = (Parsers::TagHealths.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for DescribeServiceIntegration
    class DescribeServiceIntegration
      def self.parse(http_resp)
        data = Types::DescribeServiceIntegrationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.service_integration = (Parsers::ServiceIntegrationConfig.parse(map['ServiceIntegration']) unless map['ServiceIntegration'].nil?)
        data
      end
    end

    class ServiceIntegrationConfig
      def self.parse(map)
        data = Types::ServiceIntegrationConfig.new
        data.ops_center = (Parsers::OpsCenterIntegration.parse(map['OpsCenter']) unless map['OpsCenter'].nil?)
        return data
      end
    end

    class OpsCenterIntegration
      def self.parse(map)
        data = Types::OpsCenterIntegration.new
        data.opt_in_status = map['OptInStatus']
        return data
      end
    end

    # Operation Parser for GetCostEstimation
    class GetCostEstimation
      def self.parse(http_resp)
        data = Types::GetCostEstimationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_collection = (Parsers::CostEstimationResourceCollectionFilter.parse(map['ResourceCollection']) unless map['ResourceCollection'].nil?)
        data.status = map['Status']
        data.costs = (Parsers::ServiceResourceCosts.parse(map['Costs']) unless map['Costs'].nil?)
        data.time_range = (Parsers::CostEstimationTimeRange.parse(map['TimeRange']) unless map['TimeRange'].nil?)
        data.total_cost = Hearth::NumberHelper.deserialize(map['TotalCost'])
        data.next_token = map['NextToken']
        data
      end
    end

    class CostEstimationTimeRange
      def self.parse(map)
        data = Types::CostEstimationTimeRange.new
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        return data
      end
    end

    class ServiceResourceCosts
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ServiceResourceCost.parse(value) unless value.nil?
        end
        data
      end
    end

    class ServiceResourceCost
      def self.parse(map)
        data = Types::ServiceResourceCost.new
        data.type = map['Type']
        data.state = map['State']
        data.count = map['Count']
        data.unit_cost = Hearth::NumberHelper.deserialize(map['UnitCost'])
        data.cost = Hearth::NumberHelper.deserialize(map['Cost'])
        return data
      end
    end

    class CostEstimationResourceCollectionFilter
      def self.parse(map)
        data = Types::CostEstimationResourceCollectionFilter.new
        data.cloud_formation = (Parsers::CloudFormationCostEstimationResourceCollectionFilter.parse(map['CloudFormation']) unless map['CloudFormation'].nil?)
        data.tags = (Parsers::TagCostEstimationResourceCollectionFilters.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class TagCostEstimationResourceCollectionFilters
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::TagCostEstimationResourceCollectionFilter.parse(value) unless value.nil?
        end
        data
      end
    end

    class TagCostEstimationResourceCollectionFilter
      def self.parse(map)
        data = Types::TagCostEstimationResourceCollectionFilter.new
        data.app_boundary_key = map['AppBoundaryKey']
        data.tag_values = (Parsers::CostEstimationTagValues.parse(map['TagValues']) unless map['TagValues'].nil?)
        return data
      end
    end

    class CostEstimationTagValues
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class CloudFormationCostEstimationResourceCollectionFilter
      def self.parse(map)
        data = Types::CloudFormationCostEstimationResourceCollectionFilter.new
        data.stack_names = (Parsers::CostEstimationStackNames.parse(map['StackNames']) unless map['StackNames'].nil?)
        return data
      end
    end

    class CostEstimationStackNames
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetResourceCollection
    class GetResourceCollection
      def self.parse(http_resp)
        data = Types::GetResourceCollectionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_collection = (Parsers::ResourceCollectionFilter.parse(map['ResourceCollection']) unless map['ResourceCollection'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ResourceCollectionFilter
      def self.parse(map)
        data = Types::ResourceCollectionFilter.new
        data.cloud_formation = (Parsers::CloudFormationCollectionFilter.parse(map['CloudFormation']) unless map['CloudFormation'].nil?)
        data.tags = (Parsers::TagCollectionFilters.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class TagCollectionFilters
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::TagCollectionFilter.parse(value) unless value.nil?
        end
        data
      end
    end

    class TagCollectionFilter
      def self.parse(map)
        data = Types::TagCollectionFilter.new
        data.app_boundary_key = map['AppBoundaryKey']
        data.tag_values = (Parsers::TagValues.parse(map['TagValues']) unless map['TagValues'].nil?)
        return data
      end
    end

    class CloudFormationCollectionFilter
      def self.parse(map)
        data = Types::CloudFormationCollectionFilter.new
        data.stack_names = (Parsers::StackNames.parse(map['StackNames']) unless map['StackNames'].nil?)
        return data
      end
    end

    # Operation Parser for ListAnomaliesForInsight
    class ListAnomaliesForInsight
      def self.parse(http_resp)
        data = Types::ListAnomaliesForInsightOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.proactive_anomalies = (Parsers::ProactiveAnomalies.parse(map['ProactiveAnomalies']) unless map['ProactiveAnomalies'].nil?)
        data.reactive_anomalies = (Parsers::ReactiveAnomalies.parse(map['ReactiveAnomalies']) unless map['ReactiveAnomalies'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ReactiveAnomalies
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ReactiveAnomalySummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ReactiveAnomalySummary
      def self.parse(map)
        data = Types::ReactiveAnomalySummary.new
        data.id = map['Id']
        data.severity = map['Severity']
        data.status = map['Status']
        data.anomaly_time_range = (Parsers::AnomalyTimeRange.parse(map['AnomalyTimeRange']) unless map['AnomalyTimeRange'].nil?)
        data.anomaly_reported_time_range = (Parsers::AnomalyReportedTimeRange.parse(map['AnomalyReportedTimeRange']) unless map['AnomalyReportedTimeRange'].nil?)
        data.source_details = (Parsers::AnomalySourceDetails.parse(map['SourceDetails']) unless map['SourceDetails'].nil?)
        data.associated_insight_id = map['AssociatedInsightId']
        data.resource_collection = (Parsers::ResourceCollection.parse(map['ResourceCollection']) unless map['ResourceCollection'].nil?)
        data.type = map['Type']
        data.name = map['Name']
        data.description = map['Description']
        data.causal_anomaly_id = map['CausalAnomalyId']
        data.anomaly_resources = (Parsers::AnomalyResources.parse(map['AnomalyResources']) unless map['AnomalyResources'].nil?)
        return data
      end
    end

    class ProactiveAnomalies
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ProactiveAnomalySummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ProactiveAnomalySummary
      def self.parse(map)
        data = Types::ProactiveAnomalySummary.new
        data.id = map['Id']
        data.severity = map['Severity']
        data.status = map['Status']
        data.update_time = Time.at(map['UpdateTime'].to_i) if map['UpdateTime']
        data.anomaly_time_range = (Parsers::AnomalyTimeRange.parse(map['AnomalyTimeRange']) unless map['AnomalyTimeRange'].nil?)
        data.anomaly_reported_time_range = (Parsers::AnomalyReportedTimeRange.parse(map['AnomalyReportedTimeRange']) unless map['AnomalyReportedTimeRange'].nil?)
        data.prediction_time_range = (Parsers::PredictionTimeRange.parse(map['PredictionTimeRange']) unless map['PredictionTimeRange'].nil?)
        data.source_details = (Parsers::AnomalySourceDetails.parse(map['SourceDetails']) unless map['SourceDetails'].nil?)
        data.associated_insight_id = map['AssociatedInsightId']
        data.resource_collection = (Parsers::ResourceCollection.parse(map['ResourceCollection']) unless map['ResourceCollection'].nil?)
        data.limit = Hearth::NumberHelper.deserialize(map['Limit'])
        data.source_metadata = (Parsers::AnomalySourceMetadata.parse(map['SourceMetadata']) unless map['SourceMetadata'].nil?)
        data.anomaly_resources = (Parsers::AnomalyResources.parse(map['AnomalyResources']) unless map['AnomalyResources'].nil?)
        return data
      end
    end

    # Operation Parser for ListEvents
    class ListEvents
      def self.parse(http_resp)
        data = Types::ListEventsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.events = (Parsers::Events.parse(map['Events']) unless map['Events'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Events
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Event.parse(value) unless value.nil?
        end
        data
      end
    end

    class Event
      def self.parse(map)
        data = Types::Event.new
        data.resource_collection = (Parsers::ResourceCollection.parse(map['ResourceCollection']) unless map['ResourceCollection'].nil?)
        data.id = map['Id']
        data.time = Time.at(map['Time'].to_i) if map['Time']
        data.event_source = map['EventSource']
        data.name = map['Name']
        data.data_source = map['DataSource']
        data.event_class = map['EventClass']
        data.resources = (Parsers::EventResources.parse(map['Resources']) unless map['Resources'].nil?)
        return data
      end
    end

    class EventResources
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::EventResource.parse(value) unless value.nil?
        end
        data
      end
    end

    class EventResource
      def self.parse(map)
        data = Types::EventResource.new
        data.type = map['Type']
        data.name = map['Name']
        data.arn = map['Arn']
        return data
      end
    end

    # Operation Parser for ListInsights
    class ListInsights
      def self.parse(http_resp)
        data = Types::ListInsightsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.proactive_insights = (Parsers::ProactiveInsights.parse(map['ProactiveInsights']) unless map['ProactiveInsights'].nil?)
        data.reactive_insights = (Parsers::ReactiveInsights.parse(map['ReactiveInsights']) unless map['ReactiveInsights'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ReactiveInsights
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ReactiveInsightSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ReactiveInsightSummary
      def self.parse(map)
        data = Types::ReactiveInsightSummary.new
        data.id = map['Id']
        data.name = map['Name']
        data.severity = map['Severity']
        data.status = map['Status']
        data.insight_time_range = (Parsers::InsightTimeRange.parse(map['InsightTimeRange']) unless map['InsightTimeRange'].nil?)
        data.resource_collection = (Parsers::ResourceCollection.parse(map['ResourceCollection']) unless map['ResourceCollection'].nil?)
        data.service_collection = (Parsers::ServiceCollection.parse(map['ServiceCollection']) unless map['ServiceCollection'].nil?)
        data.associated_resource_arns = (Parsers::AssociatedResourceArns.parse(map['AssociatedResourceArns']) unless map['AssociatedResourceArns'].nil?)
        return data
      end
    end

    class AssociatedResourceArns
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class ServiceCollection
      def self.parse(map)
        data = Types::ServiceCollection.new
        data.service_names = (Parsers::ServiceNames.parse(map['ServiceNames']) unless map['ServiceNames'].nil?)
        return data
      end
    end

    class ServiceNames
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class ProactiveInsights
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ProactiveInsightSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ProactiveInsightSummary
      def self.parse(map)
        data = Types::ProactiveInsightSummary.new
        data.id = map['Id']
        data.name = map['Name']
        data.severity = map['Severity']
        data.status = map['Status']
        data.insight_time_range = (Parsers::InsightTimeRange.parse(map['InsightTimeRange']) unless map['InsightTimeRange'].nil?)
        data.prediction_time_range = (Parsers::PredictionTimeRange.parse(map['PredictionTimeRange']) unless map['PredictionTimeRange'].nil?)
        data.resource_collection = (Parsers::ResourceCollection.parse(map['ResourceCollection']) unless map['ResourceCollection'].nil?)
        data.service_collection = (Parsers::ServiceCollection.parse(map['ServiceCollection']) unless map['ServiceCollection'].nil?)
        data.associated_resource_arns = (Parsers::AssociatedResourceArns.parse(map['AssociatedResourceArns']) unless map['AssociatedResourceArns'].nil?)
        return data
      end
    end

    # Operation Parser for ListNotificationChannels
    class ListNotificationChannels
      def self.parse(http_resp)
        data = Types::ListNotificationChannelsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channels = (Parsers::Channels.parse(map['Channels']) unless map['Channels'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Channels
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::NotificationChannel.parse(value) unless value.nil?
        end
        data
      end
    end

    class NotificationChannel
      def self.parse(map)
        data = Types::NotificationChannel.new
        data.id = map['Id']
        data.config = (Parsers::NotificationChannelConfig.parse(map['Config']) unless map['Config'].nil?)
        return data
      end
    end

    class NotificationChannelConfig
      def self.parse(map)
        data = Types::NotificationChannelConfig.new
        data.sns = (Parsers::SnsChannelConfig.parse(map['Sns']) unless map['Sns'].nil?)
        return data
      end
    end

    class SnsChannelConfig
      def self.parse(map)
        data = Types::SnsChannelConfig.new
        data.topic_arn = map['TopicArn']
        return data
      end
    end

    # Operation Parser for ListOrganizationInsights
    class ListOrganizationInsights
      def self.parse(http_resp)
        data = Types::ListOrganizationInsightsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.proactive_insights = (Parsers::ProactiveOrganizationInsights.parse(map['ProactiveInsights']) unless map['ProactiveInsights'].nil?)
        data.reactive_insights = (Parsers::ReactiveOrganizationInsights.parse(map['ReactiveInsights']) unless map['ReactiveInsights'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ReactiveOrganizationInsights
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ReactiveOrganizationInsightSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ReactiveOrganizationInsightSummary
      def self.parse(map)
        data = Types::ReactiveOrganizationInsightSummary.new
        data.id = map['Id']
        data.account_id = map['AccountId']
        data.organizational_unit_id = map['OrganizationalUnitId']
        data.name = map['Name']
        data.severity = map['Severity']
        data.status = map['Status']
        data.insight_time_range = (Parsers::InsightTimeRange.parse(map['InsightTimeRange']) unless map['InsightTimeRange'].nil?)
        data.resource_collection = (Parsers::ResourceCollection.parse(map['ResourceCollection']) unless map['ResourceCollection'].nil?)
        data.service_collection = (Parsers::ServiceCollection.parse(map['ServiceCollection']) unless map['ServiceCollection'].nil?)
        return data
      end
    end

    class ProactiveOrganizationInsights
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ProactiveOrganizationInsightSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ProactiveOrganizationInsightSummary
      def self.parse(map)
        data = Types::ProactiveOrganizationInsightSummary.new
        data.id = map['Id']
        data.account_id = map['AccountId']
        data.organizational_unit_id = map['OrganizationalUnitId']
        data.name = map['Name']
        data.severity = map['Severity']
        data.status = map['Status']
        data.insight_time_range = (Parsers::InsightTimeRange.parse(map['InsightTimeRange']) unless map['InsightTimeRange'].nil?)
        data.prediction_time_range = (Parsers::PredictionTimeRange.parse(map['PredictionTimeRange']) unless map['PredictionTimeRange'].nil?)
        data.resource_collection = (Parsers::ResourceCollection.parse(map['ResourceCollection']) unless map['ResourceCollection'].nil?)
        data.service_collection = (Parsers::ServiceCollection.parse(map['ServiceCollection']) unless map['ServiceCollection'].nil?)
        return data
      end
    end

    # Operation Parser for ListRecommendations
    class ListRecommendations
      def self.parse(http_resp)
        data = Types::ListRecommendationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.recommendations = (Parsers::Recommendations.parse(map['Recommendations']) unless map['Recommendations'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Recommendations
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Recommendation.parse(value) unless value.nil?
        end
        data
      end
    end

    class Recommendation
      def self.parse(map)
        data = Types::Recommendation.new
        data.description = map['Description']
        data.link = map['Link']
        data.name = map['Name']
        data.reason = map['Reason']
        data.related_events = (Parsers::RecommendationRelatedEvents.parse(map['RelatedEvents']) unless map['RelatedEvents'].nil?)
        data.related_anomalies = (Parsers::RecommendationRelatedAnomalies.parse(map['RelatedAnomalies']) unless map['RelatedAnomalies'].nil?)
        data.category = map['Category']
        return data
      end
    end

    class RecommendationRelatedAnomalies
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RecommendationRelatedAnomaly.parse(value) unless value.nil?
        end
        data
      end
    end

    class RecommendationRelatedAnomaly
      def self.parse(map)
        data = Types::RecommendationRelatedAnomaly.new
        data.resources = (Parsers::RecommendationRelatedAnomalyResources.parse(map['Resources']) unless map['Resources'].nil?)
        data.source_details = (Parsers::RelatedAnomalySourceDetails.parse(map['SourceDetails']) unless map['SourceDetails'].nil?)
        data.anomaly_id = map['AnomalyId']
        return data
      end
    end

    class RelatedAnomalySourceDetails
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RecommendationRelatedAnomalySourceDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class RecommendationRelatedAnomalySourceDetail
      def self.parse(map)
        data = Types::RecommendationRelatedAnomalySourceDetail.new
        data.cloud_watch_metrics = (Parsers::RecommendationRelatedCloudWatchMetricsSourceDetails.parse(map['CloudWatchMetrics']) unless map['CloudWatchMetrics'].nil?)
        return data
      end
    end

    class RecommendationRelatedCloudWatchMetricsSourceDetails
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RecommendationRelatedCloudWatchMetricsSourceDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class RecommendationRelatedCloudWatchMetricsSourceDetail
      def self.parse(map)
        data = Types::RecommendationRelatedCloudWatchMetricsSourceDetail.new
        data.metric_name = map['MetricName']
        data.namespace = map['Namespace']
        return data
      end
    end

    class RecommendationRelatedAnomalyResources
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RecommendationRelatedAnomalyResource.parse(value) unless value.nil?
        end
        data
      end
    end

    class RecommendationRelatedAnomalyResource
      def self.parse(map)
        data = Types::RecommendationRelatedAnomalyResource.new
        data.name = map['Name']
        data.type = map['Type']
        return data
      end
    end

    class RecommendationRelatedEvents
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RecommendationRelatedEvent.parse(value) unless value.nil?
        end
        data
      end
    end

    class RecommendationRelatedEvent
      def self.parse(map)
        data = Types::RecommendationRelatedEvent.new
        data.name = map['Name']
        data.resources = (Parsers::RecommendationRelatedEventResources.parse(map['Resources']) unless map['Resources'].nil?)
        return data
      end
    end

    class RecommendationRelatedEventResources
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RecommendationRelatedEventResource.parse(value) unless value.nil?
        end
        data
      end
    end

    class RecommendationRelatedEventResource
      def self.parse(map)
        data = Types::RecommendationRelatedEventResource.new
        data.name = map['Name']
        data.type = map['Type']
        return data
      end
    end

    # Operation Parser for PutFeedback
    class PutFeedback
      def self.parse(http_resp)
        data = Types::PutFeedbackOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for RemoveNotificationChannel
    class RemoveNotificationChannel
      def self.parse(http_resp)
        data = Types::RemoveNotificationChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for SearchInsights
    class SearchInsights
      def self.parse(http_resp)
        data = Types::SearchInsightsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.proactive_insights = (Parsers::ProactiveInsights.parse(map['ProactiveInsights']) unless map['ProactiveInsights'].nil?)
        data.reactive_insights = (Parsers::ReactiveInsights.parse(map['ReactiveInsights']) unless map['ReactiveInsights'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for SearchOrganizationInsights
    class SearchOrganizationInsights
      def self.parse(http_resp)
        data = Types::SearchOrganizationInsightsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.proactive_insights = (Parsers::ProactiveInsights.parse(map['ProactiveInsights']) unless map['ProactiveInsights'].nil?)
        data.reactive_insights = (Parsers::ReactiveInsights.parse(map['ReactiveInsights']) unless map['ReactiveInsights'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for StartCostEstimation
    class StartCostEstimation
      def self.parse(http_resp)
        data = Types::StartCostEstimationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateEventSourcesConfig
    class UpdateEventSourcesConfig
      def self.parse(http_resp)
        data = Types::UpdateEventSourcesConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateResourceCollection
    class UpdateResourceCollection
      def self.parse(http_resp)
        data = Types::UpdateResourceCollectionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateServiceIntegration
    class UpdateServiceIntegration
      def self.parse(http_resp)
        data = Types::UpdateServiceIntegrationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
