# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::CloudWatch
  module Parsers

    # Operation Parser for DeleteAlarms
    class DeleteAlarms
      def self.parse(http_resp)
        data = Types::DeleteAlarmsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteAlarmsResult')
        data
      end
    end

    # Error Parser for ResourceNotFound
    class ResourceNotFound
      def self.parse(http_resp)
        data = Types::ResourceNotFound.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteAnomalyDetector
    class DeleteAnomalyDetector
      def self.parse(http_resp)
        data = Types::DeleteAnomalyDetectorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteAnomalyDetectorResult')
        data
      end
    end

    # Error Parser for InternalServiceFault
    class InternalServiceFault
      def self.parse(http_resp)
        data = Types::InternalServiceFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidParameterCombinationException
    class InvalidParameterCombinationException
      def self.parse(http_resp)
        data = Types::InvalidParameterCombinationException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for InvalidParameterValueException
    class InvalidParameterValueException
      def self.parse(http_resp)
        data = Types::InvalidParameterValueException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for MissingRequiredParameterException
    class MissingRequiredParameterException
      def self.parse(http_resp)
        data = Types::MissingRequiredParameterException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('ResourceType') do |node|
          data.resource_type = (node.text || '')
        end
        xml.at('ResourceId') do |node|
          data.resource_id = (node.text || '')
        end
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteDashboards
    class DeleteDashboards
      def self.parse(http_resp)
        data = Types::DeleteDashboardsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteDashboardsResult')
        data
      end
    end

    # Error Parser for DashboardNotFoundError
    class DashboardNotFoundError
      def self.parse(http_resp)
        data = Types::DashboardNotFoundError.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DeleteInsightRules
    class DeleteInsightRules
      def self.parse(http_resp)
        data = Types::DeleteInsightRulesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteInsightRulesResult')
        xml.at('Failures') do |node|
          children = node.children('member')
          data.failures = BatchFailures.parse(children)
        end
        data
      end
    end

    class BatchFailures
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << PartialFailure.parse(node)
        end
        data
      end
    end

    class PartialFailure
      def self.parse(xml)
        data = Types::PartialFailure.new
        xml.at('FailureResource') do |node|
          data.failure_resource = (node.text || '')
        end
        xml.at('ExceptionType') do |node|
          data.exception_type = (node.text || '')
        end
        xml.at('FailureCode') do |node|
          data.failure_code = (node.text || '')
        end
        xml.at('FailureDescription') do |node|
          data.failure_description = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DeleteMetricStream
    class DeleteMetricStream
      def self.parse(http_resp)
        data = Types::DeleteMetricStreamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DeleteMetricStreamResult')
        data
      end
    end

    # Operation Parser for DescribeAlarmHistory
    class DescribeAlarmHistory
      def self.parse(http_resp)
        data = Types::DescribeAlarmHistoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeAlarmHistoryResult')
        xml.at('AlarmHistoryItems') do |node|
          children = node.children('member')
          data.alarm_history_items = AlarmHistoryItems.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class AlarmHistoryItems
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << AlarmHistoryItem.parse(node)
        end
        data
      end
    end

    class AlarmHistoryItem
      def self.parse(xml)
        data = Types::AlarmHistoryItem.new
        xml.at('AlarmName') do |node|
          data.alarm_name = (node.text || '')
        end
        xml.at('AlarmType') do |node|
          data.alarm_type = (node.text || '')
        end
        xml.at('Timestamp') do |node|
          data.timestamp = Time.parse(node.text) if node.text
        end
        xml.at('HistoryItemType') do |node|
          data.history_item_type = (node.text || '')
        end
        xml.at('HistorySummary') do |node|
          data.history_summary = (node.text || '')
        end
        xml.at('HistoryData') do |node|
          data.history_data = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for InvalidNextToken
    class InvalidNextToken
      def self.parse(http_resp)
        data = Types::InvalidNextToken.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for DescribeAlarms
    class DescribeAlarms
      def self.parse(http_resp)
        data = Types::DescribeAlarmsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeAlarmsResult')
        xml.at('CompositeAlarms') do |node|
          children = node.children('member')
          data.composite_alarms = CompositeAlarms.parse(children)
        end
        xml.at('MetricAlarms') do |node|
          children = node.children('member')
          data.metric_alarms = MetricAlarms.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class MetricAlarms
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << MetricAlarm.parse(node)
        end
        data
      end
    end

    class MetricAlarm
      def self.parse(xml)
        data = Types::MetricAlarm.new
        xml.at('AlarmName') do |node|
          data.alarm_name = (node.text || '')
        end
        xml.at('AlarmArn') do |node|
          data.alarm_arn = (node.text || '')
        end
        xml.at('AlarmDescription') do |node|
          data.alarm_description = (node.text || '')
        end
        xml.at('AlarmConfigurationUpdatedTimestamp') do |node|
          data.alarm_configuration_updated_timestamp = Time.parse(node.text) if node.text
        end
        xml.at('ActionsEnabled') do |node|
          data.actions_enabled = (node.text == 'true')
        end
        xml.at('OKActions') do |node|
          children = node.children('member')
          data.ok_actions = ResourceList.parse(children)
        end
        xml.at('AlarmActions') do |node|
          children = node.children('member')
          data.alarm_actions = ResourceList.parse(children)
        end
        xml.at('InsufficientDataActions') do |node|
          children = node.children('member')
          data.insufficient_data_actions = ResourceList.parse(children)
        end
        xml.at('StateValue') do |node|
          data.state_value = (node.text || '')
        end
        xml.at('StateReason') do |node|
          data.state_reason = (node.text || '')
        end
        xml.at('StateReasonData') do |node|
          data.state_reason_data = (node.text || '')
        end
        xml.at('StateUpdatedTimestamp') do |node|
          data.state_updated_timestamp = Time.parse(node.text) if node.text
        end
        xml.at('MetricName') do |node|
          data.metric_name = (node.text || '')
        end
        xml.at('Namespace') do |node|
          data.namespace = (node.text || '')
        end
        xml.at('Statistic') do |node|
          data.statistic = (node.text || '')
        end
        xml.at('ExtendedStatistic') do |node|
          data.extended_statistic = (node.text || '')
        end
        xml.at('Dimensions') do |node|
          children = node.children('member')
          data.dimensions = Dimensions.parse(children)
        end
        xml.at('Period') do |node|
          data.period = node.text&.to_i
        end
        xml.at('Unit') do |node|
          data.unit = (node.text || '')
        end
        xml.at('EvaluationPeriods') do |node|
          data.evaluation_periods = node.text&.to_i
        end
        xml.at('DatapointsToAlarm') do |node|
          data.datapoints_to_alarm = node.text&.to_i
        end
        xml.at('Threshold') do |node|
          data.threshold = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('ComparisonOperator') do |node|
          data.comparison_operator = (node.text || '')
        end
        xml.at('TreatMissingData') do |node|
          data.treat_missing_data = (node.text || '')
        end
        xml.at('EvaluateLowSampleCountPercentile') do |node|
          data.evaluate_low_sample_count_percentile = (node.text || '')
        end
        xml.at('Metrics') do |node|
          children = node.children('member')
          data.metrics = MetricDataQueries.parse(children)
        end
        xml.at('ThresholdMetricId') do |node|
          data.threshold_metric_id = (node.text || '')
        end
        return data
      end
    end

    class MetricDataQueries
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << MetricDataQuery.parse(node)
        end
        data
      end
    end

    class MetricDataQuery
      def self.parse(xml)
        data = Types::MetricDataQuery.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('MetricStat') do |node|
          data.metric_stat = MetricStat.parse(node)
        end
        xml.at('Expression') do |node|
          data.expression = (node.text || '')
        end
        xml.at('Label') do |node|
          data.label = (node.text || '')
        end
        xml.at('ReturnData') do |node|
          data.return_data = (node.text == 'true')
        end
        xml.at('Period') do |node|
          data.period = node.text&.to_i
        end
        xml.at('AccountId') do |node|
          data.account_id = (node.text || '')
        end
        return data
      end
    end

    class MetricStat
      def self.parse(xml)
        data = Types::MetricStat.new
        xml.at('Metric') do |node|
          data.metric = Metric.parse(node)
        end
        xml.at('Period') do |node|
          data.period = node.text&.to_i
        end
        xml.at('Stat') do |node|
          data.stat = (node.text || '')
        end
        xml.at('Unit') do |node|
          data.unit = (node.text || '')
        end
        return data
      end
    end

    class Metric
      def self.parse(xml)
        data = Types::Metric.new
        xml.at('Namespace') do |node|
          data.namespace = (node.text || '')
        end
        xml.at('MetricName') do |node|
          data.metric_name = (node.text || '')
        end
        xml.at('Dimensions') do |node|
          children = node.children('member')
          data.dimensions = Dimensions.parse(children)
        end
        return data
      end
    end

    class Dimensions
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Dimension.parse(node)
        end
        data
      end
    end

    class Dimension
      def self.parse(xml)
        data = Types::Dimension.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('Value') do |node|
          data.value = (node.text || '')
        end
        return data
      end
    end

    class ResourceList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class CompositeAlarms
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << CompositeAlarm.parse(node)
        end
        data
      end
    end

    class CompositeAlarm
      def self.parse(xml)
        data = Types::CompositeAlarm.new
        xml.at('ActionsEnabled') do |node|
          data.actions_enabled = (node.text == 'true')
        end
        xml.at('AlarmActions') do |node|
          children = node.children('member')
          data.alarm_actions = ResourceList.parse(children)
        end
        xml.at('AlarmArn') do |node|
          data.alarm_arn = (node.text || '')
        end
        xml.at('AlarmConfigurationUpdatedTimestamp') do |node|
          data.alarm_configuration_updated_timestamp = Time.parse(node.text) if node.text
        end
        xml.at('AlarmDescription') do |node|
          data.alarm_description = (node.text || '')
        end
        xml.at('AlarmName') do |node|
          data.alarm_name = (node.text || '')
        end
        xml.at('AlarmRule') do |node|
          data.alarm_rule = (node.text || '')
        end
        xml.at('InsufficientDataActions') do |node|
          children = node.children('member')
          data.insufficient_data_actions = ResourceList.parse(children)
        end
        xml.at('OKActions') do |node|
          children = node.children('member')
          data.ok_actions = ResourceList.parse(children)
        end
        xml.at('StateReason') do |node|
          data.state_reason = (node.text || '')
        end
        xml.at('StateReasonData') do |node|
          data.state_reason_data = (node.text || '')
        end
        xml.at('StateUpdatedTimestamp') do |node|
          data.state_updated_timestamp = Time.parse(node.text) if node.text
        end
        xml.at('StateValue') do |node|
          data.state_value = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DescribeAlarmsForMetric
    class DescribeAlarmsForMetric
      def self.parse(http_resp)
        data = Types::DescribeAlarmsForMetricOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeAlarmsForMetricResult')
        xml.at('MetricAlarms') do |node|
          children = node.children('member')
          data.metric_alarms = MetricAlarms.parse(children)
        end
        data
      end
    end

    # Operation Parser for DescribeAnomalyDetectors
    class DescribeAnomalyDetectors
      def self.parse(http_resp)
        data = Types::DescribeAnomalyDetectorsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeAnomalyDetectorsResult')
        xml.at('AnomalyDetectors') do |node|
          children = node.children('member')
          data.anomaly_detectors = AnomalyDetectors.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class AnomalyDetectors
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << AnomalyDetector.parse(node)
        end
        data
      end
    end

    class AnomalyDetector
      def self.parse(xml)
        data = Types::AnomalyDetector.new
        xml.at('Namespace') do |node|
          data.namespace = (node.text || '')
        end
        xml.at('MetricName') do |node|
          data.metric_name = (node.text || '')
        end
        xml.at('Dimensions') do |node|
          children = node.children('member')
          data.dimensions = Dimensions.parse(children)
        end
        xml.at('Stat') do |node|
          data.stat = (node.text || '')
        end
        xml.at('Configuration') do |node|
          data.configuration = AnomalyDetectorConfiguration.parse(node)
        end
        xml.at('StateValue') do |node|
          data.state_value = (node.text || '')
        end
        xml.at('SingleMetricAnomalyDetector') do |node|
          data.single_metric_anomaly_detector = SingleMetricAnomalyDetector.parse(node)
        end
        xml.at('MetricMathAnomalyDetector') do |node|
          data.metric_math_anomaly_detector = MetricMathAnomalyDetector.parse(node)
        end
        return data
      end
    end

    class MetricMathAnomalyDetector
      def self.parse(xml)
        data = Types::MetricMathAnomalyDetector.new
        xml.at('MetricDataQueries') do |node|
          children = node.children('member')
          data.metric_data_queries = MetricDataQueries.parse(children)
        end
        return data
      end
    end

    class SingleMetricAnomalyDetector
      def self.parse(xml)
        data = Types::SingleMetricAnomalyDetector.new
        xml.at('Namespace') do |node|
          data.namespace = (node.text || '')
        end
        xml.at('MetricName') do |node|
          data.metric_name = (node.text || '')
        end
        xml.at('Dimensions') do |node|
          children = node.children('member')
          data.dimensions = Dimensions.parse(children)
        end
        xml.at('Stat') do |node|
          data.stat = (node.text || '')
        end
        return data
      end
    end

    class AnomalyDetectorConfiguration
      def self.parse(xml)
        data = Types::AnomalyDetectorConfiguration.new
        xml.at('ExcludedTimeRanges') do |node|
          children = node.children('member')
          data.excluded_time_ranges = AnomalyDetectorExcludedTimeRanges.parse(children)
        end
        xml.at('MetricTimezone') do |node|
          data.metric_timezone = (node.text || '')
        end
        return data
      end
    end

    class AnomalyDetectorExcludedTimeRanges
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Range.parse(node)
        end
        data
      end
    end

    class Range
      def self.parse(xml)
        data = Types::Range.new
        xml.at('StartTime') do |node|
          data.start_time = Time.parse(node.text) if node.text
        end
        xml.at('EndTime') do |node|
          data.end_time = Time.parse(node.text) if node.text
        end
        return data
      end
    end

    # Operation Parser for DescribeInsightRules
    class DescribeInsightRules
      def self.parse(http_resp)
        data = Types::DescribeInsightRulesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DescribeInsightRulesResult')
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.at('InsightRules') do |node|
          children = node.children('member')
          data.insight_rules = InsightRules.parse(children)
        end
        data
      end
    end

    class InsightRules
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << InsightRule.parse(node)
        end
        data
      end
    end

    class InsightRule
      def self.parse(xml)
        data = Types::InsightRule.new
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('State') do |node|
          data.state = (node.text || '')
        end
        xml.at('Schema') do |node|
          data.schema = (node.text || '')
        end
        xml.at('Definition') do |node|
          data.definition = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for DisableAlarmActions
    class DisableAlarmActions
      def self.parse(http_resp)
        data = Types::DisableAlarmActionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DisableAlarmActionsResult')
        data
      end
    end

    # Operation Parser for DisableInsightRules
    class DisableInsightRules
      def self.parse(http_resp)
        data = Types::DisableInsightRulesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('DisableInsightRulesResult')
        xml.at('Failures') do |node|
          children = node.children('member')
          data.failures = BatchFailures.parse(children)
        end
        data
      end
    end

    # Operation Parser for EnableAlarmActions
    class EnableAlarmActions
      def self.parse(http_resp)
        data = Types::EnableAlarmActionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('EnableAlarmActionsResult')
        data
      end
    end

    # Operation Parser for EnableInsightRules
    class EnableInsightRules
      def self.parse(http_resp)
        data = Types::EnableInsightRulesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('EnableInsightRulesResult')
        xml.at('Failures') do |node|
          children = node.children('member')
          data.failures = BatchFailures.parse(children)
        end
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetDashboard
    class GetDashboard
      def self.parse(http_resp)
        data = Types::GetDashboardOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetDashboardResult')
        xml.at('DashboardArn') do |node|
          data.dashboard_arn = (node.text || '')
        end
        xml.at('DashboardBody') do |node|
          data.dashboard_body = (node.text || '')
        end
        xml.at('DashboardName') do |node|
          data.dashboard_name = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetInsightRuleReport
    class GetInsightRuleReport
      def self.parse(http_resp)
        data = Types::GetInsightRuleReportOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetInsightRuleReportResult')
        xml.at('KeyLabels') do |node|
          children = node.children('member')
          data.key_labels = InsightRuleContributorKeyLabels.parse(children)
        end
        xml.at('AggregationStatistic') do |node|
          data.aggregation_statistic = (node.text || '')
        end
        xml.at('AggregateValue') do |node|
          data.aggregate_value = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('ApproximateUniqueCount') do |node|
          data.approximate_unique_count = node.text&.to_i
        end
        xml.at('Contributors') do |node|
          children = node.children('member')
          data.contributors = InsightRuleContributors.parse(children)
        end
        xml.at('MetricDatapoints') do |node|
          children = node.children('member')
          data.metric_datapoints = InsightRuleMetricDatapoints.parse(children)
        end
        data
      end
    end

    class InsightRuleMetricDatapoints
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << InsightRuleMetricDatapoint.parse(node)
        end
        data
      end
    end

    class InsightRuleMetricDatapoint
      def self.parse(xml)
        data = Types::InsightRuleMetricDatapoint.new
        xml.at('Timestamp') do |node|
          data.timestamp = Time.parse(node.text) if node.text
        end
        xml.at('UniqueContributors') do |node|
          data.unique_contributors = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('MaxContributorValue') do |node|
          data.max_contributor_value = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('SampleCount') do |node|
          data.sample_count = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('Average') do |node|
          data.average = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('Sum') do |node|
          data.sum = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('Minimum') do |node|
          data.minimum = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('Maximum') do |node|
          data.maximum = Hearth::NumberHelper.deserialize(node.text)
        end
        return data
      end
    end

    class InsightRuleContributors
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << InsightRuleContributor.parse(node)
        end
        data
      end
    end

    class InsightRuleContributor
      def self.parse(xml)
        data = Types::InsightRuleContributor.new
        xml.at('Keys') do |node|
          children = node.children('member')
          data.keys = InsightRuleContributorKeys.parse(children)
        end
        xml.at('ApproximateAggregateValue') do |node|
          data.approximate_aggregate_value = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('Datapoints') do |node|
          children = node.children('member')
          data.datapoints = InsightRuleContributorDatapoints.parse(children)
        end
        return data
      end
    end

    class InsightRuleContributorDatapoints
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << InsightRuleContributorDatapoint.parse(node)
        end
        data
      end
    end

    class InsightRuleContributorDatapoint
      def self.parse(xml)
        data = Types::InsightRuleContributorDatapoint.new
        xml.at('Timestamp') do |node|
          data.timestamp = Time.parse(node.text) if node.text
        end
        xml.at('ApproximateValue') do |node|
          data.approximate_value = Hearth::NumberHelper.deserialize(node.text)
        end
        return data
      end
    end

    class InsightRuleContributorKeys
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class InsightRuleContributorKeyLabels
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    # Operation Parser for GetMetricData
    class GetMetricData
      def self.parse(http_resp)
        data = Types::GetMetricDataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetMetricDataResult')
        xml.at('MetricDataResults') do |node|
          children = node.children('member')
          data.metric_data_results = MetricDataResults.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.at('Messages') do |node|
          children = node.children('member')
          data.messages = MetricDataResultMessages.parse(children)
        end
        data
      end
    end

    class MetricDataResultMessages
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << MessageData.parse(node)
        end
        data
      end
    end

    class MessageData
      def self.parse(xml)
        data = Types::MessageData.new
        xml.at('Code') do |node|
          data.code = (node.text || '')
        end
        xml.at('Value') do |node|
          data.value = (node.text || '')
        end
        return data
      end
    end

    class MetricDataResults
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << MetricDataResult.parse(node)
        end
        data
      end
    end

    class MetricDataResult
      def self.parse(xml)
        data = Types::MetricDataResult.new
        xml.at('Id') do |node|
          data.id = (node.text || '')
        end
        xml.at('Label') do |node|
          data.label = (node.text || '')
        end
        xml.at('Timestamps') do |node|
          children = node.children('member')
          data.timestamps = Timestamps.parse(children)
        end
        xml.at('Values') do |node|
          children = node.children('member')
          data.values = DatapointValues.parse(children)
        end
        xml.at('StatusCode') do |node|
          data.status_code = (node.text || '')
        end
        xml.at('Messages') do |node|
          children = node.children('member')
          data.messages = MetricDataResultMessages.parse(children)
        end
        return data
      end
    end

    class DatapointValues
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Hearth::NumberHelper.deserialize(node.text)
        end
        data
      end
    end

    class Timestamps
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Time.parse(node.text) if node.text
        end
        data
      end
    end

    # Operation Parser for GetMetricStatistics
    class GetMetricStatistics
      def self.parse(http_resp)
        data = Types::GetMetricStatisticsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetMetricStatisticsResult')
        xml.at('Label') do |node|
          data.label = (node.text || '')
        end
        xml.at('Datapoints') do |node|
          children = node.children('member')
          data.datapoints = Datapoints.parse(children)
        end
        data
      end
    end

    class Datapoints
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Datapoint.parse(node)
        end
        data
      end
    end

    class Datapoint
      def self.parse(xml)
        data = Types::Datapoint.new
        xml.at('Timestamp') do |node|
          data.timestamp = Time.parse(node.text) if node.text
        end
        xml.at('SampleCount') do |node|
          data.sample_count = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('Average') do |node|
          data.average = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('Sum') do |node|
          data.sum = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('Minimum') do |node|
          data.minimum = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('Maximum') do |node|
          data.maximum = Hearth::NumberHelper.deserialize(node.text)
        end
        xml.at('Unit') do |node|
          data.unit = (node.text || '')
        end
        xml.at('ExtendedStatistics') do |node|
          children = node.children('entry')
          data.extended_statistics = DatapointValueMap.parse(children)
        end
        return data
      end
    end

    class DatapointValueMap
      def self.parse(xml)
        data = {}
        xml.each do |entry_node|
          key = entry_node.at('key').text
          node = entry_node.at('value')
          data[key] = Hearth::NumberHelper.deserialize(node.text)
        end
        data
      end
    end

    # Operation Parser for GetMetricStream
    class GetMetricStream
      def self.parse(http_resp)
        data = Types::GetMetricStreamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetMetricStreamResult')
        xml.at('Arn') do |node|
          data.arn = (node.text || '')
        end
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('IncludeFilters') do |node|
          children = node.children('member')
          data.include_filters = MetricStreamFilters.parse(children)
        end
        xml.at('ExcludeFilters') do |node|
          children = node.children('member')
          data.exclude_filters = MetricStreamFilters.parse(children)
        end
        xml.at('FirehoseArn') do |node|
          data.firehose_arn = (node.text || '')
        end
        xml.at('RoleArn') do |node|
          data.role_arn = (node.text || '')
        end
        xml.at('State') do |node|
          data.state = (node.text || '')
        end
        xml.at('CreationDate') do |node|
          data.creation_date = Time.parse(node.text) if node.text
        end
        xml.at('LastUpdateDate') do |node|
          data.last_update_date = Time.parse(node.text) if node.text
        end
        xml.at('OutputFormat') do |node|
          data.output_format = (node.text || '')
        end
        xml.at('StatisticsConfigurations') do |node|
          children = node.children('member')
          data.statistics_configurations = MetricStreamStatisticsConfigurations.parse(children)
        end
        data
      end
    end

    class MetricStreamStatisticsConfigurations
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << MetricStreamStatisticsConfiguration.parse(node)
        end
        data
      end
    end

    class MetricStreamStatisticsConfiguration
      def self.parse(xml)
        data = Types::MetricStreamStatisticsConfiguration.new
        xml.at('IncludeMetrics') do |node|
          children = node.children('member')
          data.include_metrics = MetricStreamStatisticsIncludeMetrics.parse(children)
        end
        xml.at('AdditionalStatistics') do |node|
          children = node.children('member')
          data.additional_statistics = MetricStreamStatisticsAdditionalStatistics.parse(children)
        end
        return data
      end
    end

    class MetricStreamStatisticsAdditionalStatistics
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << (node.text || '')
        end
        data
      end
    end

    class MetricStreamStatisticsIncludeMetrics
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << MetricStreamStatisticsMetric.parse(node)
        end
        data
      end
    end

    class MetricStreamStatisticsMetric
      def self.parse(xml)
        data = Types::MetricStreamStatisticsMetric.new
        xml.at('Namespace') do |node|
          data.namespace = (node.text || '')
        end
        xml.at('MetricName') do |node|
          data.metric_name = (node.text || '')
        end
        return data
      end
    end

    class MetricStreamFilters
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << MetricStreamFilter.parse(node)
        end
        data
      end
    end

    class MetricStreamFilter
      def self.parse(xml)
        data = Types::MetricStreamFilter.new
        xml.at('Namespace') do |node|
          data.namespace = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for GetMetricWidgetImage
    class GetMetricWidgetImage
      def self.parse(http_resp)
        data = Types::GetMetricWidgetImageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('GetMetricWidgetImageResult')
        xml.at('MetricWidgetImage') do |node|
          data.metric_widget_image = ((::Base64::decode64(node.text) unless node.text.nil?) || '')
        end
        data
      end
    end

    # Operation Parser for ListDashboards
    class ListDashboards
      def self.parse(http_resp)
        data = Types::ListDashboardsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListDashboardsResult')
        xml.at('DashboardEntries') do |node|
          children = node.children('member')
          data.dashboard_entries = DashboardEntries.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class DashboardEntries
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << DashboardEntry.parse(node)
        end
        data
      end
    end

    class DashboardEntry
      def self.parse(xml)
        data = Types::DashboardEntry.new
        xml.at('DashboardName') do |node|
          data.dashboard_name = (node.text || '')
        end
        xml.at('DashboardArn') do |node|
          data.dashboard_arn = (node.text || '')
        end
        xml.at('LastModified') do |node|
          data.last_modified = Time.parse(node.text) if node.text
        end
        xml.at('Size') do |node|
          data.size = node.text&.to_i
        end
        return data
      end
    end

    # Operation Parser for ListMetricStreams
    class ListMetricStreams
      def self.parse(http_resp)
        data = Types::ListMetricStreamsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListMetricStreamsResult')
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        xml.at('Entries') do |node|
          children = node.children('member')
          data.entries = MetricStreamEntries.parse(children)
        end
        data
      end
    end

    class MetricStreamEntries
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << MetricStreamEntry.parse(node)
        end
        data
      end
    end

    class MetricStreamEntry
      def self.parse(xml)
        data = Types::MetricStreamEntry.new
        xml.at('Arn') do |node|
          data.arn = (node.text || '')
        end
        xml.at('CreationDate') do |node|
          data.creation_date = Time.parse(node.text) if node.text
        end
        xml.at('LastUpdateDate') do |node|
          data.last_update_date = Time.parse(node.text) if node.text
        end
        xml.at('Name') do |node|
          data.name = (node.text || '')
        end
        xml.at('FirehoseArn') do |node|
          data.firehose_arn = (node.text || '')
        end
        xml.at('State') do |node|
          data.state = (node.text || '')
        end
        xml.at('OutputFormat') do |node|
          data.output_format = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for ListMetrics
    class ListMetrics
      def self.parse(http_resp)
        data = Types::ListMetricsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListMetricsResult')
        xml.at('Metrics') do |node|
          children = node.children('member')
          data.metrics = Metrics.parse(children)
        end
        xml.at('NextToken') do |node|
          data.next_token = (node.text || '')
        end
        data
      end
    end

    class Metrics
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Metric.parse(node)
        end
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('ListTagsForResourceResult')
        xml.at('Tags') do |node|
          children = node.children('member')
          data.tags = TagList.parse(children)
        end
        data
      end
    end

    class TagList
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << Tag.parse(node)
        end
        data
      end
    end

    class Tag
      def self.parse(xml)
        data = Types::Tag.new
        xml.at('Key') do |node|
          data.key = (node.text || '')
        end
        xml.at('Value') do |node|
          data.value = (node.text || '')
        end
        return data
      end
    end

    # Operation Parser for PutAnomalyDetector
    class PutAnomalyDetector
      def self.parse(http_resp)
        data = Types::PutAnomalyDetectorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('PutAnomalyDetectorResult')
        data
      end
    end

    # Operation Parser for PutCompositeAlarm
    class PutCompositeAlarm
      def self.parse(http_resp)
        data = Types::PutCompositeAlarmOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('PutCompositeAlarmResult')
        data
      end
    end

    # Error Parser for LimitExceededFault
    class LimitExceededFault
      def self.parse(http_resp)
        data = Types::LimitExceededFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for PutDashboard
    class PutDashboard
      def self.parse(http_resp)
        data = Types::PutDashboardOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('PutDashboardResult')
        xml.at('DashboardValidationMessages') do |node|
          children = node.children('member')
          data.dashboard_validation_messages = DashboardValidationMessages.parse(children)
        end
        data
      end
    end

    class DashboardValidationMessages
      def self.parse(xml)
        data = []
        xml.each do |node|
          data << DashboardValidationMessage.parse(node)
        end
        data
      end
    end

    class DashboardValidationMessage
      def self.parse(xml)
        data = Types::DashboardValidationMessage.new
        xml.at('DataPath') do |node|
          data.data_path = (node.text || '')
        end
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        return data
      end
    end

    # Error Parser for DashboardInvalidInputError
    class DashboardInvalidInputError
      def self.parse(http_resp)
        data = Types::DashboardInvalidInputError.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        xml.at('dashboardValidationMessages') do |node|
          children = node.children('member')
          data.dashboard_validation_messages = DashboardValidationMessages.parse(children)
        end
        data
      end
    end

    # Operation Parser for PutInsightRule
    class PutInsightRule
      def self.parse(http_resp)
        data = Types::PutInsightRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('PutInsightRuleResult')
        data
      end
    end

    # Operation Parser for PutMetricAlarm
    class PutMetricAlarm
      def self.parse(http_resp)
        data = Types::PutMetricAlarmOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('PutMetricAlarmResult')
        data
      end
    end

    # Operation Parser for PutMetricData
    class PutMetricData
      def self.parse(http_resp)
        data = Types::PutMetricDataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('PutMetricDataResult')
        data
      end
    end

    # Operation Parser for PutMetricStream
    class PutMetricStream
      def self.parse(http_resp)
        data = Types::PutMetricStreamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('PutMetricStreamResult')
        xml.at('Arn') do |node|
          data.arn = (node.text || '')
        end
        data
      end
    end

    # Error Parser for ConcurrentModificationException
    class ConcurrentModificationException
      def self.parse(http_resp)
        data = Types::ConcurrentModificationException.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('Message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for SetAlarmState
    class SetAlarmState
      def self.parse(http_resp)
        data = Types::SetAlarmStateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('SetAlarmStateResult')
        data
      end
    end

    # Error Parser for InvalidFormatFault
    class InvalidFormatFault
      def self.parse(http_resp)
        data = Types::InvalidFormatFault.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('Error')
        xml.at('message') do |node|
          data.message = (node.text || '')
        end
        data
      end
    end

    # Operation Parser for StartMetricStreams
    class StartMetricStreams
      def self.parse(http_resp)
        data = Types::StartMetricStreamsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('StartMetricStreamsResult')
        data
      end
    end

    # Operation Parser for StopMetricStreams
    class StopMetricStreams
      def self.parse(http_resp)
        data = Types::StopMetricStreamsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('StopMetricStreamsResult')
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('TagResourceResult')
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        xml = Hearth::XML.parse(body).at('UntagResourceResult')
        data
      end
    end
  end
end
