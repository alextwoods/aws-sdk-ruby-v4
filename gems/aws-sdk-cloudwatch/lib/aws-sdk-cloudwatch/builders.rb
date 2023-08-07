# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::CloudWatch
  # @api private
  module Builders

    class AlarmNames
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class AlarmTypes
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class AnomalyDetectorConfiguration
      def self.build(input, params, context: nil)
        AnomalyDetectorExcludedTimeRanges.build(input[:excluded_time_ranges], params, context: context + 'ExcludedTimeRanges' + '.member') unless input[:excluded_time_ranges].nil?
        params[context + 'MetricTimezone'] = input[:metric_timezone].to_s unless input[:metric_timezone].nil?
      end
    end

    class AnomalyDetectorExcludedTimeRanges
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Range.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class AnomalyDetectorTypes
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class Counts
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = Hearth::NumberHelper.serialize(element).to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class DashboardNames
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class DeleteAlarms
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteAlarms'
        params['Version'] = '2010-08-01'
        AlarmNames.build(input[:alarm_names], params, context: context + 'AlarmNames' + '.member') unless input[:alarm_names].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

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
        Dimensions.build(input[:dimensions], params, context: context + 'Dimensions' + '.member') unless input[:dimensions].nil?
        params[context + 'Stat'] = input[:stat].to_s unless input[:stat].nil?
        SingleMetricAnomalyDetector.build(input[:single_metric_anomaly_detector], params, context: context + 'SingleMetricAnomalyDetector' + '.') unless input[:single_metric_anomaly_detector].nil?
        MetricMathAnomalyDetector.build(input[:metric_math_anomaly_detector], params, context: context + 'MetricMathAnomalyDetector' + '.') unless input[:metric_math_anomaly_detector].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteDashboards
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteDashboards'
        params['Version'] = '2010-08-01'
        DashboardNames.build(input[:dashboard_names], params, context: context + 'DashboardNames' + '.member') unless input[:dashboard_names].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DeleteInsightRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DeleteInsightRules'
        params['Version'] = '2010-08-01'
        InsightRuleNames.build(input[:rule_names], params, context: context + 'RuleNames' + '.member') unless input[:rule_names].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

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
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

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
        AlarmTypes.build(input[:alarm_types], params, context: context + 'AlarmTypes' + '.member') unless input[:alarm_types].nil?
        params[context + 'HistoryItemType'] = input[:history_item_type].to_s unless input[:history_item_type].nil?
        params[context + 'StartDate'] = Hearth::TimeHelper.to_date_time(input[:start_date]) unless input[:start_date].nil?
        params[context + 'EndDate'] = Hearth::TimeHelper.to_date_time(input[:end_date]) unless input[:end_date].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'ScanBy'] = input[:scan_by].to_s unless input[:scan_by].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DescribeAlarms
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DescribeAlarms'
        params['Version'] = '2010-08-01'
        AlarmNames.build(input[:alarm_names], params, context: context + 'AlarmNames' + '.member') unless input[:alarm_names].nil?
        params[context + 'AlarmNamePrefix'] = input[:alarm_name_prefix].to_s unless input[:alarm_name_prefix].nil?
        AlarmTypes.build(input[:alarm_types], params, context: context + 'AlarmTypes' + '.member') unless input[:alarm_types].nil?
        params[context + 'ChildrenOfAlarmName'] = input[:children_of_alarm_name].to_s unless input[:children_of_alarm_name].nil?
        params[context + 'ParentsOfAlarmName'] = input[:parents_of_alarm_name].to_s unless input[:parents_of_alarm_name].nil?
        params[context + 'StateValue'] = input[:state_value].to_s unless input[:state_value].nil?
        params[context + 'ActionPrefix'] = input[:action_prefix].to_s unless input[:action_prefix].nil?
        params[context + 'MaxRecords'] = input[:max_records].to_s unless input[:max_records].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

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
        Dimensions.build(input[:dimensions], params, context: context + 'Dimensions' + '.member') unless input[:dimensions].nil?
        params[context + 'Period'] = input[:period].to_s unless input[:period].nil?
        params[context + 'Unit'] = input[:unit].to_s unless input[:unit].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

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
        Dimensions.build(input[:dimensions], params, context: context + 'Dimensions' + '.member') unless input[:dimensions].nil?
        AnomalyDetectorTypes.build(input[:anomaly_detector_types], params, context: context + 'AnomalyDetectorTypes' + '.member') unless input[:anomaly_detector_types].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

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
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class Dimension
      def self.build(input, params, context: nil)
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    class DimensionFilter
      def self.build(input, params, context: nil)
        params[context + 'Name'] = input[:name].to_s unless input[:name].nil?
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    class DimensionFilters
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          DimensionFilter.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class Dimensions
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Dimension.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class DisableAlarmActions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisableAlarmActions'
        params['Version'] = '2010-08-01'
        AlarmNames.build(input[:alarm_names], params, context: context + 'AlarmNames' + '.member') unless input[:alarm_names].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class DisableInsightRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'DisableInsightRules'
        params['Version'] = '2010-08-01'
        InsightRuleNames.build(input[:rule_names], params, context: context + 'RuleNames' + '.member') unless input[:rule_names].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class EnableAlarmActions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'EnableAlarmActions'
        params['Version'] = '2010-08-01'
        AlarmNames.build(input[:alarm_names], params, context: context + 'AlarmNames' + '.member') unless input[:alarm_names].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class EnableInsightRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'EnableInsightRules'
        params['Version'] = '2010-08-01'
        InsightRuleNames.build(input[:rule_names], params, context: context + 'RuleNames' + '.member') unless input[:rule_names].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ExtendedStatistics
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

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
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

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
        InsightRuleMetricList.build(input[:metrics], params, context: context + 'Metrics' + '.member') unless input[:metrics].nil?
        params[context + 'OrderBy'] = input[:order_by].to_s unless input[:order_by].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class GetMetricData
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'GetMetricData'
        params['Version'] = '2010-08-01'
        MetricDataQueries.build(input[:metric_data_queries], params, context: context + 'MetricDataQueries' + '.member') unless input[:metric_data_queries].nil?
        params[context + 'StartTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params[context + 'EndTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'ScanBy'] = input[:scan_by].to_s unless input[:scan_by].nil?
        params[context + 'MaxDatapoints'] = input[:max_datapoints].to_s unless input[:max_datapoints].nil?
        LabelOptions.build(input[:label_options], params, context: context + 'LabelOptions' + '.') unless input[:label_options].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

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
        Dimensions.build(input[:dimensions], params, context: context + 'Dimensions' + '.member') unless input[:dimensions].nil?
        params[context + 'StartTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params[context + 'EndTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        params[context + 'Period'] = input[:period].to_s unless input[:period].nil?
        Statistics.build(input[:statistics], params, context: context + 'Statistics' + '.member') unless input[:statistics].nil?
        ExtendedStatistics.build(input[:extended_statistics], params, context: context + 'ExtendedStatistics' + '.member') unless input[:extended_statistics].nil?
        params[context + 'Unit'] = input[:unit].to_s unless input[:unit].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

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
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

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
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class InsightRuleMetricList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class InsightRuleNames
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class LabelOptions
      def self.build(input, params, context: nil)
        params[context + 'Timezone'] = input[:timezone].to_s unless input[:timezone].nil?
      end
    end

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
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ListManagedInsightRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'ListManagedInsightRules'
        params['Version'] = '2010-08-01'
        params[context + 'ResourceARN'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

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
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

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
        DimensionFilters.build(input[:dimensions], params, context: context + 'Dimensions' + '.member') unless input[:dimensions].nil?
        params[context + 'NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params[context + 'RecentlyActive'] = input[:recently_active].to_s unless input[:recently_active].nil?
        params[context + 'IncludeLinkedAccounts'] = input[:include_linked_accounts].to_s unless input[:include_linked_accounts].nil?
        params[context + 'OwningAccount'] = input[:owning_account].to_s unless input[:owning_account].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

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
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class ManagedRule
      def self.build(input, params, context: nil)
        params[context + 'TemplateName'] = input[:template_name].to_s unless input[:template_name].nil?
        params[context + 'ResourceARN'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        TagList.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
      end
    end

    class ManagedRules
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          ManagedRule.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class Metric
      def self.build(input, params, context: nil)
        params[context + 'Namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        params[context + 'MetricName'] = input[:metric_name].to_s unless input[:metric_name].nil?
        Dimensions.build(input[:dimensions], params, context: context + 'Dimensions' + '.member') unless input[:dimensions].nil?
      end
    end

    class MetricData
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          MetricDatum.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class MetricDataQueries
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          MetricDataQuery.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class MetricDataQuery
      def self.build(input, params, context: nil)
        params[context + 'Id'] = input[:id].to_s unless input[:id].nil?
        MetricStat.build(input[:metric_stat], params, context: context + 'MetricStat' + '.') unless input[:metric_stat].nil?
        params[context + 'Expression'] = input[:expression].to_s unless input[:expression].nil?
        params[context + 'Label'] = input[:label].to_s unless input[:label].nil?
        params[context + 'ReturnData'] = input[:return_data].to_s unless input[:return_data].nil?
        params[context + 'Period'] = input[:period].to_s unless input[:period].nil?
        params[context + 'AccountId'] = input[:account_id].to_s unless input[:account_id].nil?
      end
    end

    class MetricDatum
      def self.build(input, params, context: nil)
        params[context + 'MetricName'] = input[:metric_name].to_s unless input[:metric_name].nil?
        Dimensions.build(input[:dimensions], params, context: context + 'Dimensions' + '.member') unless input[:dimensions].nil?
        params[context + 'Timestamp'] = Hearth::TimeHelper.to_date_time(input[:timestamp]) unless input[:timestamp].nil?
        params[context + 'Value'] = Hearth::NumberHelper.serialize(input[:value]).to_s unless input[:value].nil?
        StatisticSet.build(input[:statistic_values], params, context: context + 'StatisticValues' + '.') unless input[:statistic_values].nil?
        Values.build(input[:values], params, context: context + 'Values' + '.member') unless input[:values].nil?
        Counts.build(input[:counts], params, context: context + 'Counts' + '.member') unless input[:counts].nil?
        params[context + 'Unit'] = input[:unit].to_s unless input[:unit].nil?
        params[context + 'StorageResolution'] = input[:storage_resolution].to_s unless input[:storage_resolution].nil?
      end
    end

    class MetricMathAnomalyDetector
      def self.build(input, params, context: nil)
        MetricDataQueries.build(input[:metric_data_queries], params, context: context + 'MetricDataQueries' + '.member') unless input[:metric_data_queries].nil?
      end
    end

    class MetricStat
      def self.build(input, params, context: nil)
        Metric.build(input[:metric], params, context: context + 'Metric' + '.') unless input[:metric].nil?
        params[context + 'Period'] = input[:period].to_s unless input[:period].nil?
        params[context + 'Stat'] = input[:stat].to_s unless input[:stat].nil?
        params[context + 'Unit'] = input[:unit].to_s unless input[:unit].nil?
      end
    end

    class MetricStreamFilter
      def self.build(input, params, context: nil)
        params[context + 'Namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        MetricStreamFilterMetricNames.build(input[:metric_names], params, context: context + 'MetricNames' + '.member') unless input[:metric_names].nil?
      end
    end

    class MetricStreamFilterMetricNames
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class MetricStreamFilters
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          MetricStreamFilter.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class MetricStreamNames
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class MetricStreamStatisticsAdditionalStatistics
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class MetricStreamStatisticsConfiguration
      def self.build(input, params, context: nil)
        MetricStreamStatisticsIncludeMetrics.build(input[:include_metrics], params, context: context + 'IncludeMetrics' + '.member') unless input[:include_metrics].nil?
        MetricStreamStatisticsAdditionalStatistics.build(input[:additional_statistics], params, context: context + 'AdditionalStatistics' + '.member') unless input[:additional_statistics].nil?
      end
    end

    class MetricStreamStatisticsConfigurations
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          MetricStreamStatisticsConfiguration.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class MetricStreamStatisticsIncludeMetrics
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          MetricStreamStatisticsMetric.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class MetricStreamStatisticsMetric
      def self.build(input, params, context: nil)
        params[context + 'Namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        params[context + 'MetricName'] = input[:metric_name].to_s unless input[:metric_name].nil?
      end
    end

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
        Dimensions.build(input[:dimensions], params, context: context + 'Dimensions' + '.member') unless input[:dimensions].nil?
        params[context + 'Stat'] = input[:stat].to_s unless input[:stat].nil?
        AnomalyDetectorConfiguration.build(input[:configuration], params, context: context + 'Configuration' + '.') unless input[:configuration].nil?
        SingleMetricAnomalyDetector.build(input[:single_metric_anomaly_detector], params, context: context + 'SingleMetricAnomalyDetector' + '.') unless input[:single_metric_anomaly_detector].nil?
        MetricMathAnomalyDetector.build(input[:metric_math_anomaly_detector], params, context: context + 'MetricMathAnomalyDetector' + '.') unless input[:metric_math_anomaly_detector].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

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
        ResourceList.build(input[:alarm_actions], params, context: context + 'AlarmActions' + '.member') unless input[:alarm_actions].nil?
        params[context + 'AlarmDescription'] = input[:alarm_description].to_s unless input[:alarm_description].nil?
        params[context + 'AlarmName'] = input[:alarm_name].to_s unless input[:alarm_name].nil?
        params[context + 'AlarmRule'] = input[:alarm_rule].to_s unless input[:alarm_rule].nil?
        ResourceList.build(input[:insufficient_data_actions], params, context: context + 'InsufficientDataActions' + '.member') unless input[:insufficient_data_actions].nil?
        ResourceList.build(input[:ok_actions], params, context: context + 'OKActions' + '.member') unless input[:ok_actions].nil?
        TagList.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        params[context + 'ActionsSuppressor'] = input[:actions_suppressor].to_s unless input[:actions_suppressor].nil?
        params[context + 'ActionsSuppressorWaitPeriod'] = input[:actions_suppressor_wait_period].to_s unless input[:actions_suppressor_wait_period].nil?
        params[context + 'ActionsSuppressorExtensionPeriod'] = input[:actions_suppressor_extension_period].to_s unless input[:actions_suppressor_extension_period].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

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
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

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
        TagList.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class PutManagedInsightRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'PutManagedInsightRules'
        params['Version'] = '2010-08-01'
        ManagedRules.build(input[:managed_rules], params, context: context + 'ManagedRules' + '.member') unless input[:managed_rules].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

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
        ResourceList.build(input[:ok_actions], params, context: context + 'OKActions' + '.member') unless input[:ok_actions].nil?
        ResourceList.build(input[:alarm_actions], params, context: context + 'AlarmActions' + '.member') unless input[:alarm_actions].nil?
        ResourceList.build(input[:insufficient_data_actions], params, context: context + 'InsufficientDataActions' + '.member') unless input[:insufficient_data_actions].nil?
        params[context + 'MetricName'] = input[:metric_name].to_s unless input[:metric_name].nil?
        params[context + 'Namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        params[context + 'Statistic'] = input[:statistic].to_s unless input[:statistic].nil?
        params[context + 'ExtendedStatistic'] = input[:extended_statistic].to_s unless input[:extended_statistic].nil?
        Dimensions.build(input[:dimensions], params, context: context + 'Dimensions' + '.member') unless input[:dimensions].nil?
        params[context + 'Period'] = input[:period].to_s unless input[:period].nil?
        params[context + 'Unit'] = input[:unit].to_s unless input[:unit].nil?
        params[context + 'EvaluationPeriods'] = input[:evaluation_periods].to_s unless input[:evaluation_periods].nil?
        params[context + 'DatapointsToAlarm'] = input[:datapoints_to_alarm].to_s unless input[:datapoints_to_alarm].nil?
        params[context + 'Threshold'] = Hearth::NumberHelper.serialize(input[:threshold]).to_s unless input[:threshold].nil?
        params[context + 'ComparisonOperator'] = input[:comparison_operator].to_s unless input[:comparison_operator].nil?
        params[context + 'TreatMissingData'] = input[:treat_missing_data].to_s unless input[:treat_missing_data].nil?
        params[context + 'EvaluateLowSampleCountPercentile'] = input[:evaluate_low_sample_count_percentile].to_s unless input[:evaluate_low_sample_count_percentile].nil?
        MetricDataQueries.build(input[:metrics], params, context: context + 'Metrics' + '.member') unless input[:metrics].nil?
        TagList.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        params[context + 'ThresholdMetricId'] = input[:threshold_metric_id].to_s unless input[:threshold_metric_id].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

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
        MetricData.build(input[:metric_data], params, context: context + 'MetricData' + '.member') unless input[:metric_data].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

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
        MetricStreamFilters.build(input[:include_filters], params, context: context + 'IncludeFilters' + '.member') unless input[:include_filters].nil?
        MetricStreamFilters.build(input[:exclude_filters], params, context: context + 'ExcludeFilters' + '.member') unless input[:exclude_filters].nil?
        params[context + 'FirehoseArn'] = input[:firehose_arn].to_s unless input[:firehose_arn].nil?
        params[context + 'RoleArn'] = input[:role_arn].to_s unless input[:role_arn].nil?
        params[context + 'OutputFormat'] = input[:output_format].to_s unless input[:output_format].nil?
        TagList.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        MetricStreamStatisticsConfigurations.build(input[:statistics_configurations], params, context: context + 'StatisticsConfigurations' + '.member') unless input[:statistics_configurations].nil?
        params[context + 'IncludeLinkedAccountsMetrics'] = input[:include_linked_accounts_metrics].to_s unless input[:include_linked_accounts_metrics].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class Range
      def self.build(input, params, context: nil)
        params[context + 'StartTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params[context + 'EndTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
      end
    end

    class ResourceList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

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
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class SingleMetricAnomalyDetector
      def self.build(input, params, context: nil)
        params[context + 'Namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        params[context + 'MetricName'] = input[:metric_name].to_s unless input[:metric_name].nil?
        Dimensions.build(input[:dimensions], params, context: context + 'Dimensions' + '.member') unless input[:dimensions].nil?
        params[context + 'Stat'] = input[:stat].to_s unless input[:stat].nil?
      end
    end

    class StartMetricStreams
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'StartMetricStreams'
        params['Version'] = '2010-08-01'
        MetricStreamNames.build(input[:names], params, context: context + 'Names' + '.member') unless input[:names].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class StatisticSet
      def self.build(input, params, context: nil)
        params[context + 'SampleCount'] = Hearth::NumberHelper.serialize(input[:sample_count]).to_s unless input[:sample_count].nil?
        params[context + 'Sum'] = Hearth::NumberHelper.serialize(input[:sum]).to_s unless input[:sum].nil?
        params[context + 'Minimum'] = Hearth::NumberHelper.serialize(input[:minimum]).to_s unless input[:minimum].nil?
        params[context + 'Maximum'] = Hearth::NumberHelper.serialize(input[:maximum]).to_s unless input[:maximum].nil?
      end
    end

    class Statistics
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class StopMetricStreams
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        context = ''
        params = Hearth::Query::ParamList.new
        params['Action'] = 'StopMetricStreams'
        params['Version'] = '2010-08-01'
        MetricStreamNames.build(input[:names], params, context: context + 'Names' + '.member') unless input[:names].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class Tag
      def self.build(input, params, context: nil)
        params[context + 'Key'] = input[:key].to_s unless input[:key].nil?
        params[context + 'Value'] = input[:value].to_s unless input[:value].nil?
      end
    end

    class TagKeyList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = element.to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

    class TagList
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          Tag.build(element, params, context: context + ".#{index+1}" + '.') unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end

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
        TagList.build(input[:tags], params, context: context + 'Tags' + '.member') unless input[:tags].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

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
        TagKeyList.build(input[:tag_keys], params, context: context + 'TagKeys' + '.member') unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(params.to_s)
      end
    end

    class Values
      def self.build(input, params, context: '')
        input.each_with_index do |element, index|
          params[context + ".#{index+1}"] = Hearth::NumberHelper.serialize(element).to_s unless element.nil?
        end

        if input.empty?
          params[context[0...context.rindex('.')]] = ''
        end
      end
    end
  end
end
