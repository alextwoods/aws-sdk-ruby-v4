# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'
require 'stringio'

module AWS::SDK::CloudWatch
  module Stubs

    # Operation Stubber for DeleteAlarms
    class DeleteAlarms
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteAlarmsResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('DeleteAlarmsResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAnomalyDetector
    class DeleteAnomalyDetector
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteAnomalyDetectorResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('DeleteAnomalyDetectorResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDashboards
    class DeleteDashboards
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteDashboardsResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('DeleteDashboardsResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteInsightRules
    class DeleteInsightRules
      def self.default(visited=[])
        {
          failures: BatchFailures.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteInsightRulesResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('DeleteInsightRulesResult')
        xml << Hearth::XML::Node.new('Failures', BatchFailures.stub('member', stub[:failures])) unless stub[:failures].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for BatchFailures
    class BatchFailures
      def self.default(visited=[])
        return nil if visited.include?('BatchFailures')
        visited = visited + ['BatchFailures']
        [
          PartialFailure.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << PartialFailure.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for PartialFailure
    class PartialFailure
      def self.default(visited=[])
        return nil if visited.include?('PartialFailure')
        visited = visited + ['PartialFailure']
        {
          failure_resource: 'failure_resource',
          exception_type: 'exception_type',
          failure_code: 'failure_code',
          failure_description: 'failure_description',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PartialFailure.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('FailureResource', stub[:failure_resource].to_s) unless stub[:failure_resource].nil?
        xml << Hearth::XML::Node.new('ExceptionType', stub[:exception_type].to_s) unless stub[:exception_type].nil?
        xml << Hearth::XML::Node.new('FailureCode', stub[:failure_code].to_s) unless stub[:failure_code].nil?
        xml << Hearth::XML::Node.new('FailureDescription', stub[:failure_description].to_s) unless stub[:failure_description].nil?
        xml
      end
    end

    # Operation Stubber for DeleteMetricStream
    class DeleteMetricStream
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteMetricStreamResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('DeleteMetricStreamResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAlarmHistory
    class DescribeAlarmHistory
      def self.default(visited=[])
        {
          alarm_history_items: AlarmHistoryItems.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeAlarmHistoryResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('DescribeAlarmHistoryResult')
        xml << Hearth::XML::Node.new('AlarmHistoryItems', AlarmHistoryItems.stub('member', stub[:alarm_history_items])) unless stub[:alarm_history_items].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for AlarmHistoryItems
    class AlarmHistoryItems
      def self.default(visited=[])
        return nil if visited.include?('AlarmHistoryItems')
        visited = visited + ['AlarmHistoryItems']
        [
          AlarmHistoryItem.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << AlarmHistoryItem.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for AlarmHistoryItem
    class AlarmHistoryItem
      def self.default(visited=[])
        return nil if visited.include?('AlarmHistoryItem')
        visited = visited + ['AlarmHistoryItem']
        {
          alarm_name: 'alarm_name',
          alarm_type: 'alarm_type',
          timestamp: Time.now,
          history_item_type: 'history_item_type',
          history_summary: 'history_summary',
          history_data: 'history_data',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AlarmHistoryItem.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('AlarmName', stub[:alarm_name].to_s) unless stub[:alarm_name].nil?
        xml << Hearth::XML::Node.new('AlarmType', stub[:alarm_type].to_s) unless stub[:alarm_type].nil?
        xml << Hearth::XML::Node.new('Timestamp', Hearth::TimeHelper.to_date_time(stub[:timestamp])) unless stub[:timestamp].nil?
        xml << Hearth::XML::Node.new('HistoryItemType', stub[:history_item_type].to_s) unless stub[:history_item_type].nil?
        xml << Hearth::XML::Node.new('HistorySummary', stub[:history_summary].to_s) unless stub[:history_summary].nil?
        xml << Hearth::XML::Node.new('HistoryData', stub[:history_data].to_s) unless stub[:history_data].nil?
        xml
      end
    end

    # Operation Stubber for DescribeAlarms
    class DescribeAlarms
      def self.default(visited=[])
        {
          composite_alarms: CompositeAlarms.default(visited),
          metric_alarms: MetricAlarms.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeAlarmsResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('DescribeAlarmsResult')
        xml << Hearth::XML::Node.new('CompositeAlarms', CompositeAlarms.stub('member', stub[:composite_alarms])) unless stub[:composite_alarms].nil?
        xml << Hearth::XML::Node.new('MetricAlarms', MetricAlarms.stub('member', stub[:metric_alarms])) unless stub[:metric_alarms].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for MetricAlarms
    class MetricAlarms
      def self.default(visited=[])
        return nil if visited.include?('MetricAlarms')
        visited = visited + ['MetricAlarms']
        [
          MetricAlarm.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << MetricAlarm.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for MetricAlarm
    class MetricAlarm
      def self.default(visited=[])
        return nil if visited.include?('MetricAlarm')
        visited = visited + ['MetricAlarm']
        {
          alarm_name: 'alarm_name',
          alarm_arn: 'alarm_arn',
          alarm_description: 'alarm_description',
          alarm_configuration_updated_timestamp: Time.now,
          actions_enabled: false,
          ok_actions: ResourceList.default(visited),
          alarm_actions: ResourceList.default(visited),
          insufficient_data_actions: ResourceList.default(visited),
          state_value: 'state_value',
          state_reason: 'state_reason',
          state_reason_data: 'state_reason_data',
          state_updated_timestamp: Time.now,
          metric_name: 'metric_name',
          namespace: 'namespace',
          statistic: 'statistic',
          extended_statistic: 'extended_statistic',
          dimensions: Dimensions.default(visited),
          period: 1,
          unit: 'unit',
          evaluation_periods: 1,
          datapoints_to_alarm: 1,
          threshold: 1.0,
          comparison_operator: 'comparison_operator',
          treat_missing_data: 'treat_missing_data',
          evaluate_low_sample_count_percentile: 'evaluate_low_sample_count_percentile',
          metrics: MetricDataQueries.default(visited),
          threshold_metric_id: 'threshold_metric_id',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::MetricAlarm.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('AlarmName', stub[:alarm_name].to_s) unless stub[:alarm_name].nil?
        xml << Hearth::XML::Node.new('AlarmArn', stub[:alarm_arn].to_s) unless stub[:alarm_arn].nil?
        xml << Hearth::XML::Node.new('AlarmDescription', stub[:alarm_description].to_s) unless stub[:alarm_description].nil?
        xml << Hearth::XML::Node.new('AlarmConfigurationUpdatedTimestamp', Hearth::TimeHelper.to_date_time(stub[:alarm_configuration_updated_timestamp])) unless stub[:alarm_configuration_updated_timestamp].nil?
        xml << Hearth::XML::Node.new('ActionsEnabled', stub[:actions_enabled].to_s) unless stub[:actions_enabled].nil?
        xml << Hearth::XML::Node.new('OKActions', ResourceList.stub('member', stub[:ok_actions])) unless stub[:ok_actions].nil?
        xml << Hearth::XML::Node.new('AlarmActions', ResourceList.stub('member', stub[:alarm_actions])) unless stub[:alarm_actions].nil?
        xml << Hearth::XML::Node.new('InsufficientDataActions', ResourceList.stub('member', stub[:insufficient_data_actions])) unless stub[:insufficient_data_actions].nil?
        xml << Hearth::XML::Node.new('StateValue', stub[:state_value].to_s) unless stub[:state_value].nil?
        xml << Hearth::XML::Node.new('StateReason', stub[:state_reason].to_s) unless stub[:state_reason].nil?
        xml << Hearth::XML::Node.new('StateReasonData', stub[:state_reason_data].to_s) unless stub[:state_reason_data].nil?
        xml << Hearth::XML::Node.new('StateUpdatedTimestamp', Hearth::TimeHelper.to_date_time(stub[:state_updated_timestamp])) unless stub[:state_updated_timestamp].nil?
        xml << Hearth::XML::Node.new('MetricName', stub[:metric_name].to_s) unless stub[:metric_name].nil?
        xml << Hearth::XML::Node.new('Namespace', stub[:namespace].to_s) unless stub[:namespace].nil?
        xml << Hearth::XML::Node.new('Statistic', stub[:statistic].to_s) unless stub[:statistic].nil?
        xml << Hearth::XML::Node.new('ExtendedStatistic', stub[:extended_statistic].to_s) unless stub[:extended_statistic].nil?
        xml << Hearth::XML::Node.new('Dimensions', Dimensions.stub('member', stub[:dimensions])) unless stub[:dimensions].nil?
        xml << Hearth::XML::Node.new('Period', stub[:period].to_s) unless stub[:period].nil?
        xml << Hearth::XML::Node.new('Unit', stub[:unit].to_s) unless stub[:unit].nil?
        xml << Hearth::XML::Node.new('EvaluationPeriods', stub[:evaluation_periods].to_s) unless stub[:evaluation_periods].nil?
        xml << Hearth::XML::Node.new('DatapointsToAlarm', stub[:datapoints_to_alarm].to_s) unless stub[:datapoints_to_alarm].nil?
        xml << Hearth::XML::Node.new('Threshold', Hearth::NumberHelper.serialize(stub[:threshold]).to_s) unless stub[:threshold].nil?
        xml << Hearth::XML::Node.new('ComparisonOperator', stub[:comparison_operator].to_s) unless stub[:comparison_operator].nil?
        xml << Hearth::XML::Node.new('TreatMissingData', stub[:treat_missing_data].to_s) unless stub[:treat_missing_data].nil?
        xml << Hearth::XML::Node.new('EvaluateLowSampleCountPercentile', stub[:evaluate_low_sample_count_percentile].to_s) unless stub[:evaluate_low_sample_count_percentile].nil?
        xml << Hearth::XML::Node.new('Metrics', MetricDataQueries.stub('member', stub[:metrics])) unless stub[:metrics].nil?
        xml << Hearth::XML::Node.new('ThresholdMetricId', stub[:threshold_metric_id].to_s) unless stub[:threshold_metric_id].nil?
        xml
      end
    end

    # List Stubber for MetricDataQueries
    class MetricDataQueries
      def self.default(visited=[])
        return nil if visited.include?('MetricDataQueries')
        visited = visited + ['MetricDataQueries']
        [
          MetricDataQuery.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << MetricDataQuery.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for MetricDataQuery
    class MetricDataQuery
      def self.default(visited=[])
        return nil if visited.include?('MetricDataQuery')
        visited = visited + ['MetricDataQuery']
        {
          id: 'id',
          metric_stat: MetricStat.default(visited),
          expression: 'expression',
          label: 'label',
          return_data: false,
          period: 1,
          account_id: 'account_id',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::MetricDataQuery.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << MetricStat.stub('MetricStat', stub[:metric_stat]) unless stub[:metric_stat].nil?
        xml << Hearth::XML::Node.new('Expression', stub[:expression].to_s) unless stub[:expression].nil?
        xml << Hearth::XML::Node.new('Label', stub[:label].to_s) unless stub[:label].nil?
        xml << Hearth::XML::Node.new('ReturnData', stub[:return_data].to_s) unless stub[:return_data].nil?
        xml << Hearth::XML::Node.new('Period', stub[:period].to_s) unless stub[:period].nil?
        xml << Hearth::XML::Node.new('AccountId', stub[:account_id].to_s) unless stub[:account_id].nil?
        xml
      end
    end

    # Structure Stubber for MetricStat
    class MetricStat
      def self.default(visited=[])
        return nil if visited.include?('MetricStat')
        visited = visited + ['MetricStat']
        {
          metric: Metric.default(visited),
          period: 1,
          stat: 'stat',
          unit: 'unit',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::MetricStat.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Metric.stub('Metric', stub[:metric]) unless stub[:metric].nil?
        xml << Hearth::XML::Node.new('Period', stub[:period].to_s) unless stub[:period].nil?
        xml << Hearth::XML::Node.new('Stat', stub[:stat].to_s) unless stub[:stat].nil?
        xml << Hearth::XML::Node.new('Unit', stub[:unit].to_s) unless stub[:unit].nil?
        xml
      end
    end

    # Structure Stubber for Metric
    class Metric
      def self.default(visited=[])
        return nil if visited.include?('Metric')
        visited = visited + ['Metric']
        {
          namespace: 'namespace',
          metric_name: 'metric_name',
          dimensions: Dimensions.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Metric.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Namespace', stub[:namespace].to_s) unless stub[:namespace].nil?
        xml << Hearth::XML::Node.new('MetricName', stub[:metric_name].to_s) unless stub[:metric_name].nil?
        xml << Hearth::XML::Node.new('Dimensions', Dimensions.stub('member', stub[:dimensions])) unless stub[:dimensions].nil?
        xml
      end
    end

    # List Stubber for Dimensions
    class Dimensions
      def self.default(visited=[])
        return nil if visited.include?('Dimensions')
        visited = visited + ['Dimensions']
        [
          Dimension.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Dimension.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Dimension
    class Dimension
      def self.default(visited=[])
        return nil if visited.include?('Dimension')
        visited = visited + ['Dimension']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Dimension.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('Value', stub[:value].to_s) unless stub[:value].nil?
        xml
      end
    end

    # List Stubber for ResourceList
    class ResourceList
      def self.default(visited=[])
        return nil if visited.include?('ResourceList')
        visited = visited + ['ResourceList']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # List Stubber for CompositeAlarms
    class CompositeAlarms
      def self.default(visited=[])
        return nil if visited.include?('CompositeAlarms')
        visited = visited + ['CompositeAlarms']
        [
          CompositeAlarm.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << CompositeAlarm.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for CompositeAlarm
    class CompositeAlarm
      def self.default(visited=[])
        return nil if visited.include?('CompositeAlarm')
        visited = visited + ['CompositeAlarm']
        {
          actions_enabled: false,
          alarm_actions: ResourceList.default(visited),
          alarm_arn: 'alarm_arn',
          alarm_configuration_updated_timestamp: Time.now,
          alarm_description: 'alarm_description',
          alarm_name: 'alarm_name',
          alarm_rule: 'alarm_rule',
          insufficient_data_actions: ResourceList.default(visited),
          ok_actions: ResourceList.default(visited),
          state_reason: 'state_reason',
          state_reason_data: 'state_reason_data',
          state_updated_timestamp: Time.now,
          state_value: 'state_value',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CompositeAlarm.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ActionsEnabled', stub[:actions_enabled].to_s) unless stub[:actions_enabled].nil?
        xml << Hearth::XML::Node.new('AlarmActions', ResourceList.stub('member', stub[:alarm_actions])) unless stub[:alarm_actions].nil?
        xml << Hearth::XML::Node.new('AlarmArn', stub[:alarm_arn].to_s) unless stub[:alarm_arn].nil?
        xml << Hearth::XML::Node.new('AlarmConfigurationUpdatedTimestamp', Hearth::TimeHelper.to_date_time(stub[:alarm_configuration_updated_timestamp])) unless stub[:alarm_configuration_updated_timestamp].nil?
        xml << Hearth::XML::Node.new('AlarmDescription', stub[:alarm_description].to_s) unless stub[:alarm_description].nil?
        xml << Hearth::XML::Node.new('AlarmName', stub[:alarm_name].to_s) unless stub[:alarm_name].nil?
        xml << Hearth::XML::Node.new('AlarmRule', stub[:alarm_rule].to_s) unless stub[:alarm_rule].nil?
        xml << Hearth::XML::Node.new('InsufficientDataActions', ResourceList.stub('member', stub[:insufficient_data_actions])) unless stub[:insufficient_data_actions].nil?
        xml << Hearth::XML::Node.new('OKActions', ResourceList.stub('member', stub[:ok_actions])) unless stub[:ok_actions].nil?
        xml << Hearth::XML::Node.new('StateReason', stub[:state_reason].to_s) unless stub[:state_reason].nil?
        xml << Hearth::XML::Node.new('StateReasonData', stub[:state_reason_data].to_s) unless stub[:state_reason_data].nil?
        xml << Hearth::XML::Node.new('StateUpdatedTimestamp', Hearth::TimeHelper.to_date_time(stub[:state_updated_timestamp])) unless stub[:state_updated_timestamp].nil?
        xml << Hearth::XML::Node.new('StateValue', stub[:state_value].to_s) unless stub[:state_value].nil?
        xml
      end
    end

    # Operation Stubber for DescribeAlarmsForMetric
    class DescribeAlarmsForMetric
      def self.default(visited=[])
        {
          metric_alarms: MetricAlarms.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeAlarmsForMetricResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('DescribeAlarmsForMetricResult')
        xml << Hearth::XML::Node.new('MetricAlarms', MetricAlarms.stub('member', stub[:metric_alarms])) unless stub[:metric_alarms].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAnomalyDetectors
    class DescribeAnomalyDetectors
      def self.default(visited=[])
        {
          anomaly_detectors: AnomalyDetectors.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeAnomalyDetectorsResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('DescribeAnomalyDetectorsResult')
        xml << Hearth::XML::Node.new('AnomalyDetectors', AnomalyDetectors.stub('member', stub[:anomaly_detectors])) unless stub[:anomaly_detectors].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for AnomalyDetectors
    class AnomalyDetectors
      def self.default(visited=[])
        return nil if visited.include?('AnomalyDetectors')
        visited = visited + ['AnomalyDetectors']
        [
          AnomalyDetector.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << AnomalyDetector.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for AnomalyDetector
    class AnomalyDetector
      def self.default(visited=[])
        return nil if visited.include?('AnomalyDetector')
        visited = visited + ['AnomalyDetector']
        {
          namespace: 'namespace',
          metric_name: 'metric_name',
          dimensions: Dimensions.default(visited),
          stat: 'stat',
          configuration: AnomalyDetectorConfiguration.default(visited),
          state_value: 'state_value',
          single_metric_anomaly_detector: SingleMetricAnomalyDetector.default(visited),
          metric_math_anomaly_detector: MetricMathAnomalyDetector.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AnomalyDetector.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Namespace', stub[:namespace].to_s) unless stub[:namespace].nil?
        xml << Hearth::XML::Node.new('MetricName', stub[:metric_name].to_s) unless stub[:metric_name].nil?
        xml << Hearth::XML::Node.new('Dimensions', Dimensions.stub('member', stub[:dimensions])) unless stub[:dimensions].nil?
        xml << Hearth::XML::Node.new('Stat', stub[:stat].to_s) unless stub[:stat].nil?
        xml << AnomalyDetectorConfiguration.stub('Configuration', stub[:configuration]) unless stub[:configuration].nil?
        xml << Hearth::XML::Node.new('StateValue', stub[:state_value].to_s) unless stub[:state_value].nil?
        xml << SingleMetricAnomalyDetector.stub('SingleMetricAnomalyDetector', stub[:single_metric_anomaly_detector]) unless stub[:single_metric_anomaly_detector].nil?
        xml << MetricMathAnomalyDetector.stub('MetricMathAnomalyDetector', stub[:metric_math_anomaly_detector]) unless stub[:metric_math_anomaly_detector].nil?
        xml
      end
    end

    # Structure Stubber for MetricMathAnomalyDetector
    class MetricMathAnomalyDetector
      def self.default(visited=[])
        return nil if visited.include?('MetricMathAnomalyDetector')
        visited = visited + ['MetricMathAnomalyDetector']
        {
          metric_data_queries: MetricDataQueries.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::MetricMathAnomalyDetector.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('MetricDataQueries', MetricDataQueries.stub('member', stub[:metric_data_queries])) unless stub[:metric_data_queries].nil?
        xml
      end
    end

    # Structure Stubber for SingleMetricAnomalyDetector
    class SingleMetricAnomalyDetector
      def self.default(visited=[])
        return nil if visited.include?('SingleMetricAnomalyDetector')
        visited = visited + ['SingleMetricAnomalyDetector']
        {
          namespace: 'namespace',
          metric_name: 'metric_name',
          dimensions: Dimensions.default(visited),
          stat: 'stat',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::SingleMetricAnomalyDetector.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Namespace', stub[:namespace].to_s) unless stub[:namespace].nil?
        xml << Hearth::XML::Node.new('MetricName', stub[:metric_name].to_s) unless stub[:metric_name].nil?
        xml << Hearth::XML::Node.new('Dimensions', Dimensions.stub('member', stub[:dimensions])) unless stub[:dimensions].nil?
        xml << Hearth::XML::Node.new('Stat', stub[:stat].to_s) unless stub[:stat].nil?
        xml
      end
    end

    # Structure Stubber for AnomalyDetectorConfiguration
    class AnomalyDetectorConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AnomalyDetectorConfiguration')
        visited = visited + ['AnomalyDetectorConfiguration']
        {
          excluded_time_ranges: AnomalyDetectorExcludedTimeRanges.default(visited),
          metric_timezone: 'metric_timezone',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AnomalyDetectorConfiguration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ExcludedTimeRanges', AnomalyDetectorExcludedTimeRanges.stub('member', stub[:excluded_time_ranges])) unless stub[:excluded_time_ranges].nil?
        xml << Hearth::XML::Node.new('MetricTimezone', stub[:metric_timezone].to_s) unless stub[:metric_timezone].nil?
        xml
      end
    end

    # List Stubber for AnomalyDetectorExcludedTimeRanges
    class AnomalyDetectorExcludedTimeRanges
      def self.default(visited=[])
        return nil if visited.include?('AnomalyDetectorExcludedTimeRanges')
        visited = visited + ['AnomalyDetectorExcludedTimeRanges']
        [
          Range.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Range.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Range
    class Range
      def self.default(visited=[])
        return nil if visited.include?('Range')
        visited = visited + ['Range']
        {
          start_time: Time.now,
          end_time: Time.now,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Range.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('StartTime', Hearth::TimeHelper.to_date_time(stub[:start_time])) unless stub[:start_time].nil?
        xml << Hearth::XML::Node.new('EndTime', Hearth::TimeHelper.to_date_time(stub[:end_time])) unless stub[:end_time].nil?
        xml
      end
    end

    # Operation Stubber for DescribeInsightRules
    class DescribeInsightRules
      def self.default(visited=[])
        {
          next_token: 'next_token',
          insight_rules: InsightRules.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeInsightRulesResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('DescribeInsightRulesResult')
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        xml << Hearth::XML::Node.new('InsightRules', InsightRules.stub('member', stub[:insight_rules])) unless stub[:insight_rules].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for InsightRules
    class InsightRules
      def self.default(visited=[])
        return nil if visited.include?('InsightRules')
        visited = visited + ['InsightRules']
        [
          InsightRule.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << InsightRule.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for InsightRule
    class InsightRule
      def self.default(visited=[])
        return nil if visited.include?('InsightRule')
        visited = visited + ['InsightRule']
        {
          name: 'name',
          state: 'state',
          schema: 'schema',
          definition: 'definition',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::InsightRule.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('State', stub[:state].to_s) unless stub[:state].nil?
        xml << Hearth::XML::Node.new('Schema', stub[:schema].to_s) unless stub[:schema].nil?
        xml << Hearth::XML::Node.new('Definition', stub[:definition].to_s) unless stub[:definition].nil?
        xml
      end
    end

    # Operation Stubber for DisableAlarmActions
    class DisableAlarmActions
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DisableAlarmActionsResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('DisableAlarmActionsResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisableInsightRules
    class DisableInsightRules
      def self.default(visited=[])
        {
          failures: BatchFailures.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DisableInsightRulesResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('DisableInsightRulesResult')
        xml << Hearth::XML::Node.new('Failures', BatchFailures.stub('member', stub[:failures])) unless stub[:failures].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for EnableAlarmActions
    class EnableAlarmActions
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('EnableAlarmActionsResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('EnableAlarmActionsResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for EnableInsightRules
    class EnableInsightRules
      def self.default(visited=[])
        {
          failures: BatchFailures.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('EnableInsightRulesResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('EnableInsightRulesResult')
        xml << Hearth::XML::Node.new('Failures', BatchFailures.stub('member', stub[:failures])) unless stub[:failures].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetDashboard
    class GetDashboard
      def self.default(visited=[])
        {
          dashboard_arn: 'dashboard_arn',
          dashboard_body: 'dashboard_body',
          dashboard_name: 'dashboard_name',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetDashboardResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('GetDashboardResult')
        xml << Hearth::XML::Node.new('DashboardArn', stub[:dashboard_arn].to_s) unless stub[:dashboard_arn].nil?
        xml << Hearth::XML::Node.new('DashboardBody', stub[:dashboard_body].to_s) unless stub[:dashboard_body].nil?
        xml << Hearth::XML::Node.new('DashboardName', stub[:dashboard_name].to_s) unless stub[:dashboard_name].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetInsightRuleReport
    class GetInsightRuleReport
      def self.default(visited=[])
        {
          key_labels: InsightRuleContributorKeyLabels.default(visited),
          aggregation_statistic: 'aggregation_statistic',
          aggregate_value: 1.0,
          approximate_unique_count: 1,
          contributors: InsightRuleContributors.default(visited),
          metric_datapoints: InsightRuleMetricDatapoints.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetInsightRuleReportResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('GetInsightRuleReportResult')
        xml << Hearth::XML::Node.new('KeyLabels', InsightRuleContributorKeyLabels.stub('member', stub[:key_labels])) unless stub[:key_labels].nil?
        xml << Hearth::XML::Node.new('AggregationStatistic', stub[:aggregation_statistic].to_s) unless stub[:aggregation_statistic].nil?
        xml << Hearth::XML::Node.new('AggregateValue', Hearth::NumberHelper.serialize(stub[:aggregate_value]).to_s) unless stub[:aggregate_value].nil?
        xml << Hearth::XML::Node.new('ApproximateUniqueCount', stub[:approximate_unique_count].to_s) unless stub[:approximate_unique_count].nil?
        xml << Hearth::XML::Node.new('Contributors', InsightRuleContributors.stub('member', stub[:contributors])) unless stub[:contributors].nil?
        xml << Hearth::XML::Node.new('MetricDatapoints', InsightRuleMetricDatapoints.stub('member', stub[:metric_datapoints])) unless stub[:metric_datapoints].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for InsightRuleMetricDatapoints
    class InsightRuleMetricDatapoints
      def self.default(visited=[])
        return nil if visited.include?('InsightRuleMetricDatapoints')
        visited = visited + ['InsightRuleMetricDatapoints']
        [
          InsightRuleMetricDatapoint.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << InsightRuleMetricDatapoint.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for InsightRuleMetricDatapoint
    class InsightRuleMetricDatapoint
      def self.default(visited=[])
        return nil if visited.include?('InsightRuleMetricDatapoint')
        visited = visited + ['InsightRuleMetricDatapoint']
        {
          timestamp: Time.now,
          unique_contributors: 1.0,
          max_contributor_value: 1.0,
          sample_count: 1.0,
          average: 1.0,
          sum: 1.0,
          minimum: 1.0,
          maximum: 1.0,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::InsightRuleMetricDatapoint.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Timestamp', Hearth::TimeHelper.to_date_time(stub[:timestamp])) unless stub[:timestamp].nil?
        xml << Hearth::XML::Node.new('UniqueContributors', Hearth::NumberHelper.serialize(stub[:unique_contributors]).to_s) unless stub[:unique_contributors].nil?
        xml << Hearth::XML::Node.new('MaxContributorValue', Hearth::NumberHelper.serialize(stub[:max_contributor_value]).to_s) unless stub[:max_contributor_value].nil?
        xml << Hearth::XML::Node.new('SampleCount', Hearth::NumberHelper.serialize(stub[:sample_count]).to_s) unless stub[:sample_count].nil?
        xml << Hearth::XML::Node.new('Average', Hearth::NumberHelper.serialize(stub[:average]).to_s) unless stub[:average].nil?
        xml << Hearth::XML::Node.new('Sum', Hearth::NumberHelper.serialize(stub[:sum]).to_s) unless stub[:sum].nil?
        xml << Hearth::XML::Node.new('Minimum', Hearth::NumberHelper.serialize(stub[:minimum]).to_s) unless stub[:minimum].nil?
        xml << Hearth::XML::Node.new('Maximum', Hearth::NumberHelper.serialize(stub[:maximum]).to_s) unless stub[:maximum].nil?
        xml
      end
    end

    # List Stubber for InsightRuleContributors
    class InsightRuleContributors
      def self.default(visited=[])
        return nil if visited.include?('InsightRuleContributors')
        visited = visited + ['InsightRuleContributors']
        [
          InsightRuleContributor.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << InsightRuleContributor.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for InsightRuleContributor
    class InsightRuleContributor
      def self.default(visited=[])
        return nil if visited.include?('InsightRuleContributor')
        visited = visited + ['InsightRuleContributor']
        {
          keys: InsightRuleContributorKeys.default(visited),
          approximate_aggregate_value: 1.0,
          datapoints: InsightRuleContributorDatapoints.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::InsightRuleContributor.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Keys', InsightRuleContributorKeys.stub('member', stub[:keys])) unless stub[:keys].nil?
        xml << Hearth::XML::Node.new('ApproximateAggregateValue', Hearth::NumberHelper.serialize(stub[:approximate_aggregate_value]).to_s) unless stub[:approximate_aggregate_value].nil?
        xml << Hearth::XML::Node.new('Datapoints', InsightRuleContributorDatapoints.stub('member', stub[:datapoints])) unless stub[:datapoints].nil?
        xml
      end
    end

    # List Stubber for InsightRuleContributorDatapoints
    class InsightRuleContributorDatapoints
      def self.default(visited=[])
        return nil if visited.include?('InsightRuleContributorDatapoints')
        visited = visited + ['InsightRuleContributorDatapoints']
        [
          InsightRuleContributorDatapoint.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << InsightRuleContributorDatapoint.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for InsightRuleContributorDatapoint
    class InsightRuleContributorDatapoint
      def self.default(visited=[])
        return nil if visited.include?('InsightRuleContributorDatapoint')
        visited = visited + ['InsightRuleContributorDatapoint']
        {
          timestamp: Time.now,
          approximate_value: 1.0,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::InsightRuleContributorDatapoint.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Timestamp', Hearth::TimeHelper.to_date_time(stub[:timestamp])) unless stub[:timestamp].nil?
        xml << Hearth::XML::Node.new('ApproximateValue', Hearth::NumberHelper.serialize(stub[:approximate_value]).to_s) unless stub[:approximate_value].nil?
        xml
      end
    end

    # List Stubber for InsightRuleContributorKeys
    class InsightRuleContributorKeys
      def self.default(visited=[])
        return nil if visited.include?('InsightRuleContributorKeys')
        visited = visited + ['InsightRuleContributorKeys']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # List Stubber for InsightRuleContributorKeyLabels
    class InsightRuleContributorKeyLabels
      def self.default(visited=[])
        return nil if visited.include?('InsightRuleContributorKeyLabels')
        visited = visited + ['InsightRuleContributorKeyLabels']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for GetMetricData
    class GetMetricData
      def self.default(visited=[])
        {
          metric_data_results: MetricDataResults.default(visited),
          next_token: 'next_token',
          messages: MetricDataResultMessages.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetMetricDataResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('GetMetricDataResult')
        xml << Hearth::XML::Node.new('MetricDataResults', MetricDataResults.stub('member', stub[:metric_data_results])) unless stub[:metric_data_results].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        xml << Hearth::XML::Node.new('Messages', MetricDataResultMessages.stub('member', stub[:messages])) unless stub[:messages].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for MetricDataResultMessages
    class MetricDataResultMessages
      def self.default(visited=[])
        return nil if visited.include?('MetricDataResultMessages')
        visited = visited + ['MetricDataResultMessages']
        [
          MessageData.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << MessageData.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for MessageData
    class MessageData
      def self.default(visited=[])
        return nil if visited.include?('MessageData')
        visited = visited + ['MessageData']
        {
          code: 'code',
          value: 'value',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::MessageData.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Code', stub[:code].to_s) unless stub[:code].nil?
        xml << Hearth::XML::Node.new('Value', stub[:value].to_s) unless stub[:value].nil?
        xml
      end
    end

    # List Stubber for MetricDataResults
    class MetricDataResults
      def self.default(visited=[])
        return nil if visited.include?('MetricDataResults')
        visited = visited + ['MetricDataResults']
        [
          MetricDataResult.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << MetricDataResult.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for MetricDataResult
    class MetricDataResult
      def self.default(visited=[])
        return nil if visited.include?('MetricDataResult')
        visited = visited + ['MetricDataResult']
        {
          id: 'id',
          label: 'label',
          timestamps: Timestamps.default(visited),
          values: DatapointValues.default(visited),
          status_code: 'status_code',
          messages: MetricDataResultMessages.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::MetricDataResult.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('Label', stub[:label].to_s) unless stub[:label].nil?
        xml << Hearth::XML::Node.new('Timestamps', Timestamps.stub('member', stub[:timestamps])) unless stub[:timestamps].nil?
        xml << Hearth::XML::Node.new('Values', DatapointValues.stub('member', stub[:values])) unless stub[:values].nil?
        xml << Hearth::XML::Node.new('StatusCode', stub[:status_code].to_s) unless stub[:status_code].nil?
        xml << Hearth::XML::Node.new('Messages', MetricDataResultMessages.stub('member', stub[:messages])) unless stub[:messages].nil?
        xml
      end
    end

    # List Stubber for DatapointValues
    class DatapointValues
      def self.default(visited=[])
        return nil if visited.include?('DatapointValues')
        visited = visited + ['DatapointValues']
        [
          1.0
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, Hearth::NumberHelper.serialize(element).to_s) unless element.nil?
        end
        xml
      end
    end

    # List Stubber for Timestamps
    class Timestamps
      def self.default(visited=[])
        return nil if visited.include?('Timestamps')
        visited = visited + ['Timestamps']
        [
          Time.now
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, Hearth::TimeHelper.to_date_time(element)) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for GetMetricStatistics
    class GetMetricStatistics
      def self.default(visited=[])
        {
          label: 'label',
          datapoints: Datapoints.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetMetricStatisticsResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('GetMetricStatisticsResult')
        xml << Hearth::XML::Node.new('Label', stub[:label].to_s) unless stub[:label].nil?
        xml << Hearth::XML::Node.new('Datapoints', Datapoints.stub('member', stub[:datapoints])) unless stub[:datapoints].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for Datapoints
    class Datapoints
      def self.default(visited=[])
        return nil if visited.include?('Datapoints')
        visited = visited + ['Datapoints']
        [
          Datapoint.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Datapoint.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Datapoint
    class Datapoint
      def self.default(visited=[])
        return nil if visited.include?('Datapoint')
        visited = visited + ['Datapoint']
        {
          timestamp: Time.now,
          sample_count: 1.0,
          average: 1.0,
          sum: 1.0,
          minimum: 1.0,
          maximum: 1.0,
          unit: 'unit',
          extended_statistics: DatapointValueMap.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Datapoint.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Timestamp', Hearth::TimeHelper.to_date_time(stub[:timestamp])) unless stub[:timestamp].nil?
        xml << Hearth::XML::Node.new('SampleCount', Hearth::NumberHelper.serialize(stub[:sample_count]).to_s) unless stub[:sample_count].nil?
        xml << Hearth::XML::Node.new('Average', Hearth::NumberHelper.serialize(stub[:average]).to_s) unless stub[:average].nil?
        xml << Hearth::XML::Node.new('Sum', Hearth::NumberHelper.serialize(stub[:sum]).to_s) unless stub[:sum].nil?
        xml << Hearth::XML::Node.new('Minimum', Hearth::NumberHelper.serialize(stub[:minimum]).to_s) unless stub[:minimum].nil?
        xml << Hearth::XML::Node.new('Maximum', Hearth::NumberHelper.serialize(stub[:maximum]).to_s) unless stub[:maximum].nil?
        xml << Hearth::XML::Node.new('Unit', stub[:unit].to_s) unless stub[:unit].nil?
        xml << Hearth::XML::Node.new('ExtendedStatistics', DatapointValueMap.stub('entry', stub[:extended_statistics])) unless stub[:extended_statistics].nil?
        xml
      end
    end

    # Map Stubber for DatapointValueMap
    class DatapointValueMap
      def self.default(visited=[])
        return nil if visited.include?('DatapointValueMap')
        visited = visited + ['DatapointValueMap']
        {
          test_key: 1.0
        }
      end

      def self.stub(node_name, stub)
        nodes = []
        stub.each do |key, value|
          xml = Hearth::XML::Node.new(node_name)
          xml << Hearth::XML::Node.new('key', key.to_s) unless key.nil?
          xml << Hearth::XML::Node.new('value', Hearth::NumberHelper.serialize(value).to_s) unless value.nil?
          nodes << xml
        end
        nodes
      end
    end

    # Operation Stubber for GetMetricStream
    class GetMetricStream
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
          include_filters: MetricStreamFilters.default(visited),
          exclude_filters: MetricStreamFilters.default(visited),
          firehose_arn: 'firehose_arn',
          role_arn: 'role_arn',
          state: 'state',
          creation_date: Time.now,
          last_update_date: Time.now,
          output_format: 'output_format',
          statistics_configurations: MetricStreamStatisticsConfigurations.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetMetricStreamResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('GetMetricStreamResult')
        xml << Hearth::XML::Node.new('Arn', stub[:arn].to_s) unless stub[:arn].nil?
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('IncludeFilters', MetricStreamFilters.stub('member', stub[:include_filters])) unless stub[:include_filters].nil?
        xml << Hearth::XML::Node.new('ExcludeFilters', MetricStreamFilters.stub('member', stub[:exclude_filters])) unless stub[:exclude_filters].nil?
        xml << Hearth::XML::Node.new('FirehoseArn', stub[:firehose_arn].to_s) unless stub[:firehose_arn].nil?
        xml << Hearth::XML::Node.new('RoleArn', stub[:role_arn].to_s) unless stub[:role_arn].nil?
        xml << Hearth::XML::Node.new('State', stub[:state].to_s) unless stub[:state].nil?
        xml << Hearth::XML::Node.new('CreationDate', Hearth::TimeHelper.to_date_time(stub[:creation_date])) unless stub[:creation_date].nil?
        xml << Hearth::XML::Node.new('LastUpdateDate', Hearth::TimeHelper.to_date_time(stub[:last_update_date])) unless stub[:last_update_date].nil?
        xml << Hearth::XML::Node.new('OutputFormat', stub[:output_format].to_s) unless stub[:output_format].nil?
        xml << Hearth::XML::Node.new('StatisticsConfigurations', MetricStreamStatisticsConfigurations.stub('member', stub[:statistics_configurations])) unless stub[:statistics_configurations].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for MetricStreamStatisticsConfigurations
    class MetricStreamStatisticsConfigurations
      def self.default(visited=[])
        return nil if visited.include?('MetricStreamStatisticsConfigurations')
        visited = visited + ['MetricStreamStatisticsConfigurations']
        [
          MetricStreamStatisticsConfiguration.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << MetricStreamStatisticsConfiguration.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for MetricStreamStatisticsConfiguration
    class MetricStreamStatisticsConfiguration
      def self.default(visited=[])
        return nil if visited.include?('MetricStreamStatisticsConfiguration')
        visited = visited + ['MetricStreamStatisticsConfiguration']
        {
          include_metrics: MetricStreamStatisticsIncludeMetrics.default(visited),
          additional_statistics: MetricStreamStatisticsAdditionalStatistics.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::MetricStreamStatisticsConfiguration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('IncludeMetrics', MetricStreamStatisticsIncludeMetrics.stub('member', stub[:include_metrics])) unless stub[:include_metrics].nil?
        xml << Hearth::XML::Node.new('AdditionalStatistics', MetricStreamStatisticsAdditionalStatistics.stub('member', stub[:additional_statistics])) unless stub[:additional_statistics].nil?
        xml
      end
    end

    # List Stubber for MetricStreamStatisticsAdditionalStatistics
    class MetricStreamStatisticsAdditionalStatistics
      def self.default(visited=[])
        return nil if visited.include?('MetricStreamStatisticsAdditionalStatistics')
        visited = visited + ['MetricStreamStatisticsAdditionalStatistics']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # List Stubber for MetricStreamStatisticsIncludeMetrics
    class MetricStreamStatisticsIncludeMetrics
      def self.default(visited=[])
        return nil if visited.include?('MetricStreamStatisticsIncludeMetrics')
        visited = visited + ['MetricStreamStatisticsIncludeMetrics']
        [
          MetricStreamStatisticsMetric.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << MetricStreamStatisticsMetric.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for MetricStreamStatisticsMetric
    class MetricStreamStatisticsMetric
      def self.default(visited=[])
        return nil if visited.include?('MetricStreamStatisticsMetric')
        visited = visited + ['MetricStreamStatisticsMetric']
        {
          namespace: 'namespace',
          metric_name: 'metric_name',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::MetricStreamStatisticsMetric.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Namespace', stub[:namespace].to_s) unless stub[:namespace].nil?
        xml << Hearth::XML::Node.new('MetricName', stub[:metric_name].to_s) unless stub[:metric_name].nil?
        xml
      end
    end

    # List Stubber for MetricStreamFilters
    class MetricStreamFilters
      def self.default(visited=[])
        return nil if visited.include?('MetricStreamFilters')
        visited = visited + ['MetricStreamFilters']
        [
          MetricStreamFilter.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << MetricStreamFilter.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for MetricStreamFilter
    class MetricStreamFilter
      def self.default(visited=[])
        return nil if visited.include?('MetricStreamFilter')
        visited = visited + ['MetricStreamFilter']
        {
          namespace: 'namespace',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::MetricStreamFilter.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Namespace', stub[:namespace].to_s) unless stub[:namespace].nil?
        xml
      end
    end

    # Operation Stubber for GetMetricWidgetImage
    class GetMetricWidgetImage
      def self.default(visited=[])
        {
          metric_widget_image: 'metric_widget_image',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetMetricWidgetImageResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('GetMetricWidgetImageResult')
        xml << Hearth::XML::Node.new('MetricWidgetImage', ::Base64::encode64(stub[:metric_widget_image]).strip) unless stub[:metric_widget_image].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListDashboards
    class ListDashboards
      def self.default(visited=[])
        {
          dashboard_entries: DashboardEntries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListDashboardsResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('ListDashboardsResult')
        xml << Hearth::XML::Node.new('DashboardEntries', DashboardEntries.stub('member', stub[:dashboard_entries])) unless stub[:dashboard_entries].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for DashboardEntries
    class DashboardEntries
      def self.default(visited=[])
        return nil if visited.include?('DashboardEntries')
        visited = visited + ['DashboardEntries']
        [
          DashboardEntry.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << DashboardEntry.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for DashboardEntry
    class DashboardEntry
      def self.default(visited=[])
        return nil if visited.include?('DashboardEntry')
        visited = visited + ['DashboardEntry']
        {
          dashboard_name: 'dashboard_name',
          dashboard_arn: 'dashboard_arn',
          last_modified: Time.now,
          size: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DashboardEntry.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DashboardName', stub[:dashboard_name].to_s) unless stub[:dashboard_name].nil?
        xml << Hearth::XML::Node.new('DashboardArn', stub[:dashboard_arn].to_s) unless stub[:dashboard_arn].nil?
        xml << Hearth::XML::Node.new('LastModified', Hearth::TimeHelper.to_date_time(stub[:last_modified])) unless stub[:last_modified].nil?
        xml << Hearth::XML::Node.new('Size', stub[:size].to_s) unless stub[:size].nil?
        xml
      end
    end

    # Operation Stubber for ListMetricStreams
    class ListMetricStreams
      def self.default(visited=[])
        {
          next_token: 'next_token',
          entries: MetricStreamEntries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListMetricStreamsResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('ListMetricStreamsResult')
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        xml << Hearth::XML::Node.new('Entries', MetricStreamEntries.stub('member', stub[:entries])) unless stub[:entries].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for MetricStreamEntries
    class MetricStreamEntries
      def self.default(visited=[])
        return nil if visited.include?('MetricStreamEntries')
        visited = visited + ['MetricStreamEntries']
        [
          MetricStreamEntry.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << MetricStreamEntry.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for MetricStreamEntry
    class MetricStreamEntry
      def self.default(visited=[])
        return nil if visited.include?('MetricStreamEntry')
        visited = visited + ['MetricStreamEntry']
        {
          arn: 'arn',
          creation_date: Time.now,
          last_update_date: Time.now,
          name: 'name',
          firehose_arn: 'firehose_arn',
          state: 'state',
          output_format: 'output_format',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::MetricStreamEntry.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Arn', stub[:arn].to_s) unless stub[:arn].nil?
        xml << Hearth::XML::Node.new('CreationDate', Hearth::TimeHelper.to_date_time(stub[:creation_date])) unless stub[:creation_date].nil?
        xml << Hearth::XML::Node.new('LastUpdateDate', Hearth::TimeHelper.to_date_time(stub[:last_update_date])) unless stub[:last_update_date].nil?
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('FirehoseArn', stub[:firehose_arn].to_s) unless stub[:firehose_arn].nil?
        xml << Hearth::XML::Node.new('State', stub[:state].to_s) unless stub[:state].nil?
        xml << Hearth::XML::Node.new('OutputFormat', stub[:output_format].to_s) unless stub[:output_format].nil?
        xml
      end
    end

    # Operation Stubber for ListMetrics
    class ListMetrics
      def self.default(visited=[])
        {
          metrics: Metrics.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListMetricsResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('ListMetricsResult')
        xml << Hearth::XML::Node.new('Metrics', Metrics.stub('member', stub[:metrics])) unless stub[:metrics].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for Metrics
    class Metrics
      def self.default(visited=[])
        return nil if visited.include?('Metrics')
        visited = visited + ['Metrics']
        [
          Metric.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Metric.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ListTagsForResourceResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('ListTagsForResourceResult')
        xml << Hearth::XML::Node.new('Tags', TagList.stub('member', stub[:tags])) unless stub[:tags].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Tag.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Tag.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Key', stub[:key].to_s) unless stub[:key].nil?
        xml << Hearth::XML::Node.new('Value', stub[:value].to_s) unless stub[:value].nil?
        xml
      end
    end

    # Operation Stubber for PutAnomalyDetector
    class PutAnomalyDetector
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('PutAnomalyDetectorResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('PutAnomalyDetectorResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutCompositeAlarm
    class PutCompositeAlarm
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('PutCompositeAlarmResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('PutCompositeAlarmResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutDashboard
    class PutDashboard
      def self.default(visited=[])
        {
          dashboard_validation_messages: DashboardValidationMessages.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('PutDashboardResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('PutDashboardResult')
        xml << Hearth::XML::Node.new('DashboardValidationMessages', DashboardValidationMessages.stub('member', stub[:dashboard_validation_messages])) unless stub[:dashboard_validation_messages].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for DashboardValidationMessages
    class DashboardValidationMessages
      def self.default(visited=[])
        return nil if visited.include?('DashboardValidationMessages')
        visited = visited + ['DashboardValidationMessages']
        [
          DashboardValidationMessage.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << DashboardValidationMessage.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for DashboardValidationMessage
    class DashboardValidationMessage
      def self.default(visited=[])
        return nil if visited.include?('DashboardValidationMessage')
        visited = visited + ['DashboardValidationMessage']
        {
          data_path: 'data_path',
          message: 'message',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DashboardValidationMessage.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('DataPath', stub[:data_path].to_s) unless stub[:data_path].nil?
        xml << Hearth::XML::Node.new('Message', stub[:message].to_s) unless stub[:message].nil?
        xml
      end
    end

    # Operation Stubber for PutInsightRule
    class PutInsightRule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('PutInsightRuleResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('PutInsightRuleResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutMetricAlarm
    class PutMetricAlarm
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('PutMetricAlarmResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('PutMetricAlarmResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutMetricData
    class PutMetricData
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('PutMetricDataResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('PutMetricDataResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutMetricStream
    class PutMetricStream
      def self.default(visited=[])
        {
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('PutMetricStreamResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('PutMetricStreamResult')
        xml << Hearth::XML::Node.new('Arn', stub[:arn].to_s) unless stub[:arn].nil?
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetAlarmState
    class SetAlarmState
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SetAlarmStateResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('SetAlarmStateResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartMetricStreams
    class StartMetricStreams
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('StartMetricStreamsResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('StartMetricStreamsResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopMetricStreams
    class StopMetricStreams
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('StopMetricStreamsResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('StopMetricStreamsResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('TagResourceResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('TagResourceResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UntagResourceResponse')
        response.attributes['xmlns'] = 'http://monitoring.amazonaws.com/doc/2010-08-01/'
        xml = Hearth::XML::Node.new('UntagResourceResult')
        response << xml
        http_resp.body = ::StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end
  end
end
