# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudWatch
  module Builders

    # Operation Builder for DeleteAlarms
    class DeleteAlarms
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteAlarms'
        params['Version'] = '2010-08-01'
        Builders::AlarmNames.build(input[:alarm_names], params, context: context + 'AlarmNames' + '.member') unless input[:alarm_names].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for AlarmNames
    class AlarmNames
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DeleteAnomalyDetector
    class DeleteAnomalyDetector
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteAnomalyDetector'
        params['Version'] = '2010-08-01'
        params[context + 'Namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        params[context + 'MetricName'] = input[:metric_name].to_s unless input[:metric_name].nil?
        Builders::Dimensions.build(input[:dimensions], params, context: context + 'Dimensions' + '.member') unless input[:dimensions].nil?
        params[context + 'Stat'] = input[:stat].to_s unless input[:stat].nil?
        Builders::SingleMetricAnomalyDetector.build(input[:single_metric_anomaly_detector], params, context: context + 'SingleMetricAnomalyDetector' + '.') unless input[:single_metric_anomaly_detector].nil?
        Builders::MetricMathAnomalyDetector.build(input[:metric_math_anomaly_detector], params, context: context + 'MetricMathAnomalyDetector' + '.') unless input[:metric_math_anomaly_detector].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for MetricMathAnomalyDetector
    class MetricMathAnomalyDetector
      def self.build(input, params, context: nil)
        Builders::MetricDataQueries.build(input[:metric_data_queries], params, context: context + 'MetricDataQueries' + '.member') unless input[:metric_data_queries].nil?
      end
    end

    # List Builder for MetricDataQueries
    class MetricDataQueries
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::MetricDataQuery.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for MetricDataQuery
    class MetricDataQuery
      def self.build(input, params, context: nil)
        params[context + 'Id'] = input[:id].to_s unless input[:id].nil?
        Builders::MetricStat.build(input[:metric_stat], params, context: context + 'MetricStat' + '.') unless input[:metric_stat].nil?
        params[context + 'Expression'] = input[:expression].to_s unless input[:expression].nil?
        params[context + 'Label'] = input[:label].to_s unless input[:label].nil?
        params[context + 'ReturnData'] = input[:return_data].to_s unless input[:return_data].nil?
        params[context + 'Period'] = input[:period].to_s unless input[:period].nil?
        params[context + 'AccountId'] = input[:account_id].to_s unless input[:account_id].nil?
      end
    end

    # Structure Builder for MetricStat
    class MetricStat
      def self.build(input, params, context: nil)
        Builders::Metric.build(input[:metric], params, context: context + 'Metric' + '.') unless input[:metric].nil?
        params[context + 'Period'] = input[:period].to_s unless input[:period].nil?
        params[context + 'Stat'] = input[:stat].to_s unless input[:stat].nil?
        params[context + 'Unit'] = input[:unit].to_s unless input[:unit].nil?
      end
    end

    # Structure Builder for Metric
    class Metric
      def self.build(input, params, context: nil)
        params[context + 'Namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        params[context + 'MetricName'] = input[:metric_name].to_s unless input[:metric_name].nil?
        Builders::Dimensions.build(input[:dimensions], params, context: context + 'Dimensions' + '.member') unless input[:dimensions].nil?
      end
    end

    # List Builder for Dimensions
    class Dimensions
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::Dimension.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for Dimension
    class Dimension
      def self.build(input, params, context: nil)
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    # Structure Builder for SingleMetricAnomalyDetector
    class SingleMetricAnomalyDetector
      def self.build(input, params, context: nil)
        params[context + 'Namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        params[context + 'MetricName'] = input[:metric_name].to_s unless input[:metric_name].nil?
        Builders::Dimensions.build(input[:dimensions], params, context: context + 'Dimensions' + '.member') unless input[:dimensions].nil?
        params[context + 'Stat'] = input[:stat].to_s unless input[:stat].nil?
      end
    end

    # Operation Builder for DeleteDashboards
    class DeleteDashboards
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteDashboards'
        params['Version'] = '2010-08-01'
        Builders::DashboardNames.build(input[:dashboard_names], params, context: context + 'DashboardNames' + '.member') unless input[:dashboard_names].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for DashboardNames
    class DashboardNames
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DeleteInsightRules
    class DeleteInsightRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteInsightRules'
        params['Version'] = '2010-08-01'
        Builders::InsightRuleNames.build(input[:rule_names], params, context: context + 'RuleNames' + '.member') unless input[:rule_names].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for InsightRuleNames
    class InsightRuleNames
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DeleteMetricStream
    class DeleteMetricStream
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteMetricStream'
        params['Version'] = '2010-08-01'
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeAlarmHistory
    class DescribeAlarmHistory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeAlarmHistory'
        params['Version'] = '2010-08-01'
        params[context + 'AlarmName'] = input[:alarm_name].to_s unless input[:alarm_name].nil?
        Builders::AlarmTypes.build(input[:alarm_types], params, context: context + 'AlarmTypes' + '.member') unless input[:alarm_types].nil?
        params[context + 'HistoryItemType'] = input[:history_item_type].to_s unless input[:history_item_type].nil?
        params[context + 'StartDate'] = Hearth::TimeHelper.to_date_time(input[:start_date]) unless input[:start_date].nil?
        params[context + 'EndDate'] = Hearth::TimeHelper.to_date_time(input[:end_date]) unless input[:end_date].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'ScanBy'] = input[:scan_by].to_s unless input[:scan_by].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for AlarmTypes
    class AlarmTypes
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeAlarms
    class DescribeAlarms
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeAlarms'
        params['Version'] = '2010-08-01'
        Builders::AlarmNames.build(input[:alarm_names], params, context: context + 'AlarmNames' + '.member') unless input[:alarm_names].nil?
        params[context + 'AlarmNamePrefix'] = input[:alarm_name_prefix].to_s unless input[:alarm_name_prefix].nil?
        Builders::AlarmTypes.build(input[:alarm_types], params, context: context + 'AlarmTypes' + '.member') unless input[:alarm_types].nil?
        params[context + 'ChildrenOfAlarmName'] = input[:children_of_alarm_name].to_s unless input[:children_of_alarm_name].nil?
        params[context + 'ParentsOfAlarmName'] = input[:parents_of_alarm_name].to_s unless input[:parents_of_alarm_name].nil?
        params[context + 'StateValue'] = input[:state_value].to_s unless input[:state_value].nil?
        params[context + 'ActionPrefix'] = input[:action_prefix].to_s unless input[:action_prefix].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeAlarmsForMetric
    class DescribeAlarmsForMetric
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeAlarmsForMetric'
        params['Version'] = '2010-08-01'
        params[context + 'MetricName'] = input[:metric_name].to_s unless input[:metric_name].nil?
        params[context + 'Namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        params[context + 'Statistic'] = input[:statistic].to_s unless input[:statistic].nil?
        params[context + 'ExtendedStatistic'] = input[:extended_statistic].to_s unless input[:extended_statistic].nil?
        Builders::Dimensions.build(input[:dimensions], params, context: context + 'Dimensions' + '.member') unless input[:dimensions].nil?
        params[context + 'Period'] = input[:period].to_s unless input[:period].nil?
        params[context + 'Unit'] = input[:unit].to_s unless input[:unit].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DescribeAnomalyDetectors
    class DescribeAnomalyDetectors
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeAnomalyDetectors'
        params['Version'] = '2010-08-01'
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params[context + 'Namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        params[context + 'MetricName'] = input[:metric_name].to_s unless input[:metric_name].nil?
        Builders::Dimensions.build(input[:dimensions], params, context: context + 'Dimensions' + '.member') unless input[:dimensions].nil?
        Builders::AnomalyDetectorTypes.build(input[:anomaly_detector_types], params, context: context + 'AnomalyDetectorTypes' + '.member') unless input[:anomaly_detector_types].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for AnomalyDetectorTypes
    class AnomalyDetectorTypes
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for DescribeInsightRules
    class DescribeInsightRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeInsightRules'
        params['Version'] = '2010-08-01'
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DisableAlarmActions
    class DisableAlarmActions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisableAlarmActions'
        params['Version'] = '2010-08-01'
        Builders::AlarmNames.build(input[:alarm_names], params, context: context + 'AlarmNames' + '.member') unless input[:alarm_names].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for DisableInsightRules
    class DisableInsightRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisableInsightRules'
        params['Version'] = '2010-08-01'
        Builders::InsightRuleNames.build(input[:rule_names], params, context: context + 'RuleNames' + '.member') unless input[:rule_names].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for EnableAlarmActions
    class EnableAlarmActions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'EnableAlarmActions'
        params['Version'] = '2010-08-01'
        Builders::AlarmNames.build(input[:alarm_names], params, context: context + 'AlarmNames' + '.member') unless input[:alarm_names].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for EnableInsightRules
    class EnableInsightRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'EnableInsightRules'
        params['Version'] = '2010-08-01'
        Builders::InsightRuleNames.build(input[:rule_names], params, context: context + 'RuleNames' + '.member') unless input[:rule_names].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetDashboard
    class GetDashboard
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetDashboard'
        params['Version'] = '2010-08-01'
        params[context + 'DashboardName'] = input[:dashboard_name].to_s unless input[:dashboard_name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetInsightRuleReport
    class GetInsightRuleReport
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetInsightRuleReport'
        params['Version'] = '2010-08-01'
        params[context + 'RuleName'] = input[:rule_name].to_s unless input[:rule_name].nil?
        params[context + 'StartTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params[context + 'EndTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        params[context + 'Period'] = input[:period].to_s unless input[:period].nil?
        params[context + 'MaxContributorCount'] = input[:max_contributor_count].to_s unless input[:max_contributor_count].nil?
        Builders::InsightRuleMetricList.build(input[:metrics], params, context: context + 'Metrics' + '.member') unless input[:metrics].nil?
        params[context + 'OrderBy'] = input[:order_by].to_s unless input[:order_by].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for InsightRuleMetricList
    class InsightRuleMetricList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for GetMetricData
    class GetMetricData
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetMetricData'
        params['Version'] = '2010-08-01'
        Builders::MetricDataQueries.build(input[:metric_data_queries], params, context: context + 'MetricDataQueries' + '.member') unless input[:metric_data_queries].nil?
        params[context + 'StartTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params[context + 'EndTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'ScanBy'] = input[:scan_by].to_s unless input[:scan_by].nil?
        params[context + 'MaxDatapoints'] = input[:max_datapoints].to_s unless input[:max_datapoints].nil?
        Builders::LabelOptions.build(input[:label_options], params, context: context + 'LabelOptions' + '.') unless input[:label_options].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for LabelOptions
    class LabelOptions
      def self.build(input, params, context: nil)
        params[context + 'Timezone'] = input[:timezone].to_s unless input[:timezone].nil?
      end
    end

    # Operation Builder for GetMetricStatistics
    class GetMetricStatistics
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetMetricStatistics'
        params['Version'] = '2010-08-01'
        params[context + 'Namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        params[context + 'MetricName'] = input[:metric_name].to_s unless input[:metric_name].nil?
        Builders::Dimensions.build(input[:dimensions], params, context: context + 'Dimensions' + '.member') unless input[:dimensions].nil?
        params[context + 'StartTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params[context + 'EndTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        params[context + 'Period'] = input[:period].to_s unless input[:period].nil?
        Builders::Statistics.build(input[:statistics], params, context: context + 'Statistics' + '.member') unless input[:statistics].nil?
        Builders::ExtendedStatistics.build(input[:extended_statistics], params, context: context + 'ExtendedStatistics' + '.member') unless input[:extended_statistics].nil?
        params[context + 'Unit'] = input[:unit].to_s unless input[:unit].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for ExtendedStatistics
    class ExtendedStatistics
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for Statistics
    class Statistics
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for GetMetricStream
    class GetMetricStream
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetMetricStream'
        params['Version'] = '2010-08-01'
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for GetMetricWidgetImage
    class GetMetricWidgetImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetMetricWidgetImage'
        params['Version'] = '2010-08-01'
        params[context + 'MetricWidget'] = input[:metric_widget].to_s unless input[:metric_widget].nil?
        params[context + 'OutputFormat'] = input[:output_format].to_s unless input[:output_format].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListDashboards
    class ListDashboards
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListDashboards'
        params['Version'] = '2010-08-01'
        params[context + 'DashboardNamePrefix'] = input[:dashboard_name_prefix].to_s unless input[:dashboard_name_prefix].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListMetricStreams
    class ListMetricStreams
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListMetricStreams'
        params['Version'] = '2010-08-01'
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for ListMetrics
    class ListMetrics
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListMetrics'
        params['Version'] = '2010-08-01'
        params[context + 'Namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        params[context + 'MetricName'] = input[:metric_name].to_s unless input[:metric_name].nil?
        Builders::DimensionFilters.build(input[:dimensions], params, context: context + 'Dimensions' + '.member') unless input[:dimensions].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'RecentlyActive'] = input[:recently_active].to_s unless input[:recently_active].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for DimensionFilters
    class DimensionFilters
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::DimensionFilter.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for DimensionFilter
    class DimensionFilter
      def self.build(input, params, context: nil)
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListTagsForResource'
        params['Version'] = '2010-08-01'
        params[context + 'ResourceARN'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for PutAnomalyDetector
    class PutAnomalyDetector
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'PutAnomalyDetector'
        params['Version'] = '2010-08-01'
        params[context + 'Namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        params[context + 'MetricName'] = input[:metric_name].to_s unless input[:metric_name].nil?
        Builders::Dimensions.build(input[:dimensions], params, context: context + 'Dimensions' + '.member') unless input[:dimensions].nil?
        params[context + 'Stat'] = input[:stat].to_s unless input[:stat].nil?
        Builders::AnomalyDetectorConfiguration.build(input[:configuration], params, context: context + 'Configuration' + '.') unless input[:configuration].nil?
        Builders::SingleMetricAnomalyDetector.build(input[:single_metric_anomaly_detector], params, context: context + 'SingleMetricAnomalyDetector' + '.') unless input[:single_metric_anomaly_detector].nil?
        Builders::MetricMathAnomalyDetector.build(input[:metric_math_anomaly_detector], params, context: context + 'MetricMathAnomalyDetector' + '.') unless input[:metric_math_anomaly_detector].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Structure Builder for AnomalyDetectorConfiguration
    class AnomalyDetectorConfiguration
      def self.build(input, params, context: nil)
        Builders::AnomalyDetectorExcludedTimeRanges.build(input[:excluded_time_ranges], params, context: context + 'ExcludedTimeRanges' + '.member') unless input[:excluded_time_ranges].nil?
        params[context + 'MetricTimezone'] = input[:metric_timezone].to_s unless input[:metric_timezone].nil?
      end
    end

    # List Builder for AnomalyDetectorExcludedTimeRanges
    class AnomalyDetectorExcludedTimeRanges
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::Range.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for Range
    class Range
      def self.build(input, params, context: nil)
        params[context + 'StartTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params[context + 'EndTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
      end
    end

    # Operation Builder for PutCompositeAlarm
    class PutCompositeAlarm
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'PutCompositeAlarm'
        params['Version'] = '2010-08-01'
        params[context + 'ActionsEnabled'] = input[:actions_enabled].to_s unless input[:actions_enabled].nil?
        Builders::ResourceList.build(input[:alarm_actions], params, context: context + 'AlarmActions' + '.member') unless input[:alarm_actions].nil?
        params[context + 'AlarmDescription'] = input[:alarm_description].to_s unless input[:alarm_description].nil?
        params[context + 'AlarmName'] = input[:alarm_name].to_s unless input[:alarm_name].nil?
        params[context + 'AlarmRule'] = input[:alarm_rule].to_s unless input[:alarm_rule].nil?
        Builders::ResourceList.build(input[:insufficient_data_actions], params, context: context + 'InsufficientDataActions' + '.member') unless input[:insufficient_data_actions].nil?
        Builders::ResourceList.build(input[:ok_actions], params, context: context + 'OKActions' + '.member') unless input[:ok_actions].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::Tag.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input, params, context: nil)
        params[context + 'Key'] = input[:key].to_s unless input[:key].nil?
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    # List Builder for ResourceList
    class ResourceList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for PutDashboard
    class PutDashboard
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'PutDashboard'
        params['Version'] = '2010-08-01'
        params[context + 'DashboardName'] = input[:dashboard_name].to_s unless input[:dashboard_name].nil?
        params[context + 'DashboardBody'] = input[:dashboard_body].to_s unless input[:dashboard_body].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for PutInsightRule
    class PutInsightRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'PutInsightRule'
        params['Version'] = '2010-08-01'
        params[context + 'RuleName'] = input[:rule_name].to_s unless input[:rule_name].nil?
        params[context + 'RuleState'] = input[:rule_state].to_s unless input[:rule_state].nil?
        params[context + 'RuleDefinition'] = input[:rule_definition].to_s unless input[:rule_definition].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for PutMetricAlarm
    class PutMetricAlarm
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'PutMetricAlarm'
        params['Version'] = '2010-08-01'
        params[context + 'AlarmName'] = input[:alarm_name].to_s unless input[:alarm_name].nil?
        params[context + 'AlarmDescription'] = input[:alarm_description].to_s unless input[:alarm_description].nil?
        params[context + 'ActionsEnabled'] = input[:actions_enabled].to_s unless input[:actions_enabled].nil?
        Builders::ResourceList.build(input[:ok_actions], params, context: context + 'OKActions' + '.member') unless input[:ok_actions].nil?
        Builders::ResourceList.build(input[:alarm_actions], params, context: context + 'AlarmActions' + '.member') unless input[:alarm_actions].nil?
        Builders::ResourceList.build(input[:insufficient_data_actions], params, context: context + 'InsufficientDataActions' + '.member') unless input[:insufficient_data_actions].nil?
        params[context + 'MetricName'] = input[:metric_name].to_s unless input[:metric_name].nil?
        params[context + 'Namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        params[context + 'Statistic'] = input[:statistic].to_s unless input[:statistic].nil?
        params[context + 'ExtendedStatistic'] = input[:extended_statistic].to_s unless input[:extended_statistic].nil?
        Builders::Dimensions.build(input[:dimensions], params, context: context + 'Dimensions' + '.member') unless input[:dimensions].nil?
        params[context + 'Period'] = input[:period].to_s unless input[:period].nil?
        params[context + 'Unit'] = input[:unit].to_s unless input[:unit].nil?
        params[context + 'EvaluationPeriods'] = input[:evaluation_periods].to_s unless input[:evaluation_periods].nil?
        params[context + 'DatapointsToAlarm'] = input[:datapoints_to_alarm].to_s unless input[:datapoints_to_alarm].nil?
        params[context + 'Threshold'] = Hearth::NumberHelper.serialize(input[:threshold]).to_s unless input[:threshold].nil?
        params[context + 'ComparisonOperator'] = input[:comparison_operator].to_s unless input[:comparison_operator].nil?
        params[context + 'TreatMissingData'] = input[:treat_missing_data].to_s unless input[:treat_missing_data].nil?
        params[context + 'EvaluateLowSampleCountPercentile'] = input[:evaluate_low_sample_count_percentile].to_s unless input[:evaluate_low_sample_count_percentile].nil?
        Builders::MetricDataQueries.build(input[:metrics], params, context: context + 'Metrics' + '.member') unless input[:metrics].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        params[context + 'ThresholdMetricId'] = input[:threshold_metric_id].to_s unless input[:threshold_metric_id].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for PutMetricData
    class PutMetricData
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'PutMetricData'
        params['Version'] = '2010-08-01'
        params[context + 'Namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        Builders::MetricData.build(input[:metric_data], params, context: context + 'MetricData' + '.member') unless input[:metric_data].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for MetricData
    class MetricData
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::MetricDatum.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for MetricDatum
    class MetricDatum
      def self.build(input, params, context: nil)
        params[context + 'MetricName'] = input[:metric_name].to_s unless input[:metric_name].nil?
        Builders::Dimensions.build(input[:dimensions], params, context: context + 'Dimensions' + '.member') unless input[:dimensions].nil?
        params[context + 'Timestamp'] = Hearth::TimeHelper.to_date_time(input[:timestamp]) unless input[:timestamp].nil?
        params[context + 'Value'] = Hearth::NumberHelper.serialize(input[:value]).to_s unless input[:value].nil?
        Builders::StatisticSet.build(input[:statistic_values], params, context: context + 'StatisticValues' + '.') unless input[:statistic_values].nil?
        Builders::Values.build(input[:values], params, context: context + 'Values' + '.member') unless input[:values].nil?
        Builders::Counts.build(input[:counts], params, context: context + 'Counts' + '.member') unless input[:counts].nil?
        params[context + 'Unit'] = input[:unit].to_s unless input[:unit].nil?
        params[context + 'StorageResolution'] = input[:storage_resolution].to_s unless input[:storage_resolution].nil?
      end
    end

    # List Builder for Counts
    class Counts
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = Hearth::NumberHelper.serialize(element).to_s unless element.nil?
        end
      end
    end

    # List Builder for Values
    class Values
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = Hearth::NumberHelper.serialize(element).to_s unless element.nil?
        end
      end
    end

    # Structure Builder for StatisticSet
    class StatisticSet
      def self.build(input, params, context: nil)
        params[context + 'SampleCount'] = Hearth::NumberHelper.serialize(input[:sample_count]).to_s unless input[:sample_count].nil?
        params[context + 'Sum'] = Hearth::NumberHelper.serialize(input[:sum]).to_s unless input[:sum].nil?
        params[context + 'Minimum'] = Hearth::NumberHelper.serialize(input[:minimum]).to_s unless input[:minimum].nil?
        params[context + 'Maximum'] = Hearth::NumberHelper.serialize(input[:maximum]).to_s unless input[:maximum].nil?
      end
    end

    # Operation Builder for PutMetricStream
    class PutMetricStream
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'PutMetricStream'
        params['Version'] = '2010-08-01'
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        Builders::MetricStreamFilters.build(input[:include_filters], params, context: context + 'IncludeFilters' + '.member') unless input[:include_filters].nil?
        Builders::MetricStreamFilters.build(input[:exclude_filters], params, context: context + 'ExcludeFilters' + '.member') unless input[:exclude_filters].nil?
        params[context + 'FirehoseArn'] = input[:firehose_arn].to_s unless input[:firehose_arn].nil?
        params[context + 'RoleArn'] = input[:role_arn].to_s unless input[:role_arn].nil?
        params[context + 'OutputFormat'] = input[:output_format].to_s unless input[:output_format].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        Builders::MetricStreamStatisticsConfigurations.build(input[:statistics_configurations], params, context: context + 'StatisticsConfigurations' + '.member') unless input[:statistics_configurations].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for MetricStreamStatisticsConfigurations
    class MetricStreamStatisticsConfigurations
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::MetricStreamStatisticsConfiguration.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for MetricStreamStatisticsConfiguration
    class MetricStreamStatisticsConfiguration
      def self.build(input, params, context: nil)
        Builders::MetricStreamStatisticsIncludeMetrics.build(input[:include_metrics], params, context: context + 'IncludeMetrics' + '.member') unless input[:include_metrics].nil?
        Builders::MetricStreamStatisticsAdditionalStatistics.build(input[:additional_statistics], params, context: context + 'AdditionalStatistics' + '.member') unless input[:additional_statistics].nil?
      end
    end

    # List Builder for MetricStreamStatisticsAdditionalStatistics
    class MetricStreamStatisticsAdditionalStatistics
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # List Builder for MetricStreamStatisticsIncludeMetrics
    class MetricStreamStatisticsIncludeMetrics
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::MetricStreamStatisticsMetric.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for MetricStreamStatisticsMetric
    class MetricStreamStatisticsMetric
      def self.build(input, params, context: nil)
        params[context + 'Namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        params[context + 'MetricName'] = input[:metric_name].to_s unless input[:metric_name].nil?
      end
    end

    # List Builder for MetricStreamFilters
    class MetricStreamFilters
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Builders::MetricStreamFilter.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end
      end
    end

    # Structure Builder for MetricStreamFilter
    class MetricStreamFilter
      def self.build(input, params, context: nil)
        params[context + 'Namespace'] = input[:namespace].to_s unless input[:namespace].nil?
      end
    end

    # Operation Builder for SetAlarmState
    class SetAlarmState
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'SetAlarmState'
        params['Version'] = '2010-08-01'
        params[context + 'AlarmName'] = input[:alarm_name].to_s unless input[:alarm_name].nil?
        params[context + 'StateValue'] = input[:state_value].to_s unless input[:state_value].nil?
        params[context + 'StateReason'] = input[:state_reason].to_s unless input[:state_reason].nil?
        params[context + 'StateReasonData'] = input[:state_reason_data].to_s unless input[:state_reason_data].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for StartMetricStreams
    class StartMetricStreams
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'StartMetricStreams'
        params['Version'] = '2010-08-01'
        Builders::MetricStreamNames.build(input[:names], params, context: context + 'Names' + '.member') unless input[:names].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for MetricStreamNames
    class MetricStreamNames
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end

    # Operation Builder for StopMetricStreams
    class StopMetricStreams
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'StopMetricStreams'
        params['Version'] = '2010-08-01'
        Builders::MetricStreamNames.build(input[:names], params, context: context + 'Names' + '.member') unless input[:names].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'TagResource'
        params['Version'] = '2010-08-01'
        params[context + 'ResourceARN'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        Builders::TagList.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'UntagResource'
        params['Version'] = '2010-08-01'
        params[context + 'ResourceARN'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        Builders::TagKeyList.build(input[:tag_keys], params, context: context + 'TagKeys' + '.member') unless input[:tag_keys].nil?
        http_req.body = StringIO.new(params.to_s)
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end
      end
    end
  end
end
