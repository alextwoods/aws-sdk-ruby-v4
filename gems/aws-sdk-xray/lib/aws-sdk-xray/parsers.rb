# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::XRay
  module Parsers

    # Operation Parser for BatchGetTraces
    class BatchGetTraces
      def self.parse(http_resp)
        data = Types::BatchGetTracesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.traces = (Parsers::TraceList.parse(map['Traces']) unless map['Traces'].nil?)
        data.unprocessed_trace_ids = (Parsers::UnprocessedTraceIdList.parse(map['UnprocessedTraceIds']) unless map['UnprocessedTraceIds'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class UnprocessedTraceIdList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class TraceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Trace.parse(value) unless value.nil?
        end
        data
      end
    end

    class Trace
      def self.parse(map)
        data = Types::Trace.new
        data.id = map['Id']
        data.duration = Hearth::NumberHelper.deserialize(map['Duration'])
        data.limit_exceeded = map['LimitExceeded']
        data.segments = (Parsers::SegmentList.parse(map['Segments']) unless map['Segments'].nil?)
        return data
      end
    end

    class SegmentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Segment.parse(value) unless value.nil?
        end
        data
      end
    end

    class Segment
      def self.parse(map)
        data = Types::Segment.new
        data.id = map['Id']
        data.document = map['Document']
        return data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ThrottledException
    class ThrottledException
      def self.parse(http_resp)
        data = Types::ThrottledException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateGroup
    class CreateGroup
      def self.parse(http_resp)
        data = Types::CreateGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.group = (Parsers::Group.parse(map['Group']) unless map['Group'].nil?)
        data
      end
    end

    class Group
      def self.parse(map)
        data = Types::Group.new
        data.group_name = map['GroupName']
        data.group_arn = map['GroupARN']
        data.filter_expression = map['FilterExpression']
        data.insights_configuration = (Parsers::InsightsConfiguration.parse(map['InsightsConfiguration']) unless map['InsightsConfiguration'].nil?)
        return data
      end
    end

    class InsightsConfiguration
      def self.parse(map)
        data = Types::InsightsConfiguration.new
        data.insights_enabled = map['InsightsEnabled']
        data.notifications_enabled = map['NotificationsEnabled']
        return data
      end
    end

    # Operation Parser for CreateSamplingRule
    class CreateSamplingRule
      def self.parse(http_resp)
        data = Types::CreateSamplingRuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.sampling_rule_record = (Parsers::SamplingRuleRecord.parse(map['SamplingRuleRecord']) unless map['SamplingRuleRecord'].nil?)
        data
      end
    end

    class SamplingRuleRecord
      def self.parse(map)
        data = Types::SamplingRuleRecord.new
        data.sampling_rule = (Parsers::SamplingRule.parse(map['SamplingRule']) unless map['SamplingRule'].nil?)
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.modified_at = Time.at(map['ModifiedAt'].to_i) if map['ModifiedAt']
        return data
      end
    end

    class SamplingRule
      def self.parse(map)
        data = Types::SamplingRule.new
        data.rule_name = map['RuleName']
        data.rule_arn = map['RuleARN']
        data.resource_arn = map['ResourceARN']
        data.priority = map['Priority']
        data.fixed_rate = Hearth::NumberHelper.deserialize(map['FixedRate'])
        data.reservoir_size = map['ReservoirSize']
        data.service_name = map['ServiceName']
        data.service_type = map['ServiceType']
        data.host = map['Host']
        data.http_method = map['HTTPMethod']
        data.url_path = map['URLPath']
        data.version = map['Version']
        data.attributes = (Parsers::AttributeMap.parse(map['Attributes']) unless map['Attributes'].nil?)
        return data
      end
    end

    class AttributeMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for RuleLimitExceededException
    class RuleLimitExceededException
      def self.parse(http_resp)
        data = Types::RuleLimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteGroup
    class DeleteGroup
      def self.parse(http_resp)
        data = Types::DeleteGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteSamplingRule
    class DeleteSamplingRule
      def self.parse(http_resp)
        data = Types::DeleteSamplingRuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.sampling_rule_record = (Parsers::SamplingRuleRecord.parse(map['SamplingRuleRecord']) unless map['SamplingRuleRecord'].nil?)
        data
      end
    end

    # Operation Parser for GetEncryptionConfig
    class GetEncryptionConfig
      def self.parse(http_resp)
        data = Types::GetEncryptionConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.encryption_config = (Parsers::EncryptionConfig.parse(map['EncryptionConfig']) unless map['EncryptionConfig'].nil?)
        data
      end
    end

    class EncryptionConfig
      def self.parse(map)
        data = Types::EncryptionConfig.new
        data.key_id = map['KeyId']
        data.status = map['Status']
        data.type = map['Type']
        return data
      end
    end

    # Operation Parser for GetGroup
    class GetGroup
      def self.parse(http_resp)
        data = Types::GetGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.group = (Parsers::Group.parse(map['Group']) unless map['Group'].nil?)
        data
      end
    end

    # Operation Parser for GetGroups
    class GetGroups
      def self.parse(http_resp)
        data = Types::GetGroupsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.groups = (Parsers::GroupSummaryList.parse(map['Groups']) unless map['Groups'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class GroupSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::GroupSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class GroupSummary
      def self.parse(map)
        data = Types::GroupSummary.new
        data.group_name = map['GroupName']
        data.group_arn = map['GroupARN']
        data.filter_expression = map['FilterExpression']
        data.insights_configuration = (Parsers::InsightsConfiguration.parse(map['InsightsConfiguration']) unless map['InsightsConfiguration'].nil?)
        return data
      end
    end

    # Operation Parser for GetInsight
    class GetInsight
      def self.parse(http_resp)
        data = Types::GetInsightOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.insight = (Parsers::Insight.parse(map['Insight']) unless map['Insight'].nil?)
        data
      end
    end

    class Insight
      def self.parse(map)
        data = Types::Insight.new
        data.insight_id = map['InsightId']
        data.group_arn = map['GroupARN']
        data.group_name = map['GroupName']
        data.root_cause_service_id = (Parsers::ServiceId.parse(map['RootCauseServiceId']) unless map['RootCauseServiceId'].nil?)
        data.categories = (Parsers::InsightCategoryList.parse(map['Categories']) unless map['Categories'].nil?)
        data.state = map['State']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.summary = map['Summary']
        data.client_request_impact_statistics = (Parsers::RequestImpactStatistics.parse(map['ClientRequestImpactStatistics']) unless map['ClientRequestImpactStatistics'].nil?)
        data.root_cause_service_request_impact_statistics = (Parsers::RequestImpactStatistics.parse(map['RootCauseServiceRequestImpactStatistics']) unless map['RootCauseServiceRequestImpactStatistics'].nil?)
        data.top_anomalous_services = (Parsers::AnomalousServiceList.parse(map['TopAnomalousServices']) unless map['TopAnomalousServices'].nil?)
        return data
      end
    end

    class AnomalousServiceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AnomalousService.parse(value) unless value.nil?
        end
        data
      end
    end

    class AnomalousService
      def self.parse(map)
        data = Types::AnomalousService.new
        data.service_id = (Parsers::ServiceId.parse(map['ServiceId']) unless map['ServiceId'].nil?)
        return data
      end
    end

    class ServiceId
      def self.parse(map)
        data = Types::ServiceId.new
        data.name = map['Name']
        data.names = (Parsers::ServiceNames.parse(map['Names']) unless map['Names'].nil?)
        data.account_id = map['AccountId']
        data.type = map['Type']
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

    class RequestImpactStatistics
      def self.parse(map)
        data = Types::RequestImpactStatistics.new
        data.fault_count = map['FaultCount']
        data.ok_count = map['OkCount']
        data.total_count = map['TotalCount']
        return data
      end
    end

    class InsightCategoryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetInsightEvents
    class GetInsightEvents
      def self.parse(http_resp)
        data = Types::GetInsightEventsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.insight_events = (Parsers::InsightEventList.parse(map['InsightEvents']) unless map['InsightEvents'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class InsightEventList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::InsightEvent.parse(value) unless value.nil?
        end
        data
      end
    end

    class InsightEvent
      def self.parse(map)
        data = Types::InsightEvent.new
        data.summary = map['Summary']
        data.event_time = Time.at(map['EventTime'].to_i) if map['EventTime']
        data.client_request_impact_statistics = (Parsers::RequestImpactStatistics.parse(map['ClientRequestImpactStatistics']) unless map['ClientRequestImpactStatistics'].nil?)
        data.root_cause_service_request_impact_statistics = (Parsers::RequestImpactStatistics.parse(map['RootCauseServiceRequestImpactStatistics']) unless map['RootCauseServiceRequestImpactStatistics'].nil?)
        data.top_anomalous_services = (Parsers::AnomalousServiceList.parse(map['TopAnomalousServices']) unless map['TopAnomalousServices'].nil?)
        return data
      end
    end

    # Operation Parser for GetInsightImpactGraph
    class GetInsightImpactGraph
      def self.parse(http_resp)
        data = Types::GetInsightImpactGraphOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.insight_id = map['InsightId']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.service_graph_start_time = Time.at(map['ServiceGraphStartTime'].to_i) if map['ServiceGraphStartTime']
        data.service_graph_end_time = Time.at(map['ServiceGraphEndTime'].to_i) if map['ServiceGraphEndTime']
        data.services = (Parsers::InsightImpactGraphServiceList.parse(map['Services']) unless map['Services'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class InsightImpactGraphServiceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::InsightImpactGraphService.parse(value) unless value.nil?
        end
        data
      end
    end

    class InsightImpactGraphService
      def self.parse(map)
        data = Types::InsightImpactGraphService.new
        data.reference_id = map['ReferenceId']
        data.type = map['Type']
        data.name = map['Name']
        data.names = (Parsers::ServiceNames.parse(map['Names']) unless map['Names'].nil?)
        data.account_id = map['AccountId']
        data.edges = (Parsers::InsightImpactGraphEdgeList.parse(map['Edges']) unless map['Edges'].nil?)
        return data
      end
    end

    class InsightImpactGraphEdgeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::InsightImpactGraphEdge.parse(value) unless value.nil?
        end
        data
      end
    end

    class InsightImpactGraphEdge
      def self.parse(map)
        data = Types::InsightImpactGraphEdge.new
        data.reference_id = map['ReferenceId']
        return data
      end
    end

    # Operation Parser for GetInsightSummaries
    class GetInsightSummaries
      def self.parse(http_resp)
        data = Types::GetInsightSummariesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.insight_summaries = (Parsers::InsightSummaryList.parse(map['InsightSummaries']) unless map['InsightSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class InsightSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::InsightSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class InsightSummary
      def self.parse(map)
        data = Types::InsightSummary.new
        data.insight_id = map['InsightId']
        data.group_arn = map['GroupARN']
        data.group_name = map['GroupName']
        data.root_cause_service_id = (Parsers::ServiceId.parse(map['RootCauseServiceId']) unless map['RootCauseServiceId'].nil?)
        data.categories = (Parsers::InsightCategoryList.parse(map['Categories']) unless map['Categories'].nil?)
        data.state = map['State']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.summary = map['Summary']
        data.client_request_impact_statistics = (Parsers::RequestImpactStatistics.parse(map['ClientRequestImpactStatistics']) unless map['ClientRequestImpactStatistics'].nil?)
        data.root_cause_service_request_impact_statistics = (Parsers::RequestImpactStatistics.parse(map['RootCauseServiceRequestImpactStatistics']) unless map['RootCauseServiceRequestImpactStatistics'].nil?)
        data.top_anomalous_services = (Parsers::AnomalousServiceList.parse(map['TopAnomalousServices']) unless map['TopAnomalousServices'].nil?)
        data.last_update_time = Time.at(map['LastUpdateTime'].to_i) if map['LastUpdateTime']
        return data
      end
    end

    # Operation Parser for GetSamplingRules
    class GetSamplingRules
      def self.parse(http_resp)
        data = Types::GetSamplingRulesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.sampling_rule_records = (Parsers::SamplingRuleRecordList.parse(map['SamplingRuleRecords']) unless map['SamplingRuleRecords'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class SamplingRuleRecordList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SamplingRuleRecord.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetSamplingStatisticSummaries
    class GetSamplingStatisticSummaries
      def self.parse(http_resp)
        data = Types::GetSamplingStatisticSummariesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.sampling_statistic_summaries = (Parsers::SamplingStatisticSummaryList.parse(map['SamplingStatisticSummaries']) unless map['SamplingStatisticSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class SamplingStatisticSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SamplingStatisticSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class SamplingStatisticSummary
      def self.parse(map)
        data = Types::SamplingStatisticSummary.new
        data.rule_name = map['RuleName']
        data.timestamp = Time.at(map['Timestamp'].to_i) if map['Timestamp']
        data.request_count = map['RequestCount']
        data.borrow_count = map['BorrowCount']
        data.sampled_count = map['SampledCount']
        return data
      end
    end

    # Operation Parser for GetSamplingTargets
    class GetSamplingTargets
      def self.parse(http_resp)
        data = Types::GetSamplingTargetsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.sampling_target_documents = (Parsers::SamplingTargetDocumentList.parse(map['SamplingTargetDocuments']) unless map['SamplingTargetDocuments'].nil?)
        data.last_rule_modification = Time.at(map['LastRuleModification'].to_i) if map['LastRuleModification']
        data.unprocessed_statistics = (Parsers::UnprocessedStatisticsList.parse(map['UnprocessedStatistics']) unless map['UnprocessedStatistics'].nil?)
        data
      end
    end

    class UnprocessedStatisticsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::UnprocessedStatistics.parse(value) unless value.nil?
        end
        data
      end
    end

    class UnprocessedStatistics
      def self.parse(map)
        data = Types::UnprocessedStatistics.new
        data.rule_name = map['RuleName']
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        return data
      end
    end

    class SamplingTargetDocumentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SamplingTargetDocument.parse(value) unless value.nil?
        end
        data
      end
    end

    class SamplingTargetDocument
      def self.parse(map)
        data = Types::SamplingTargetDocument.new
        data.rule_name = map['RuleName']
        data.fixed_rate = Hearth::NumberHelper.deserialize(map['FixedRate'])
        data.reservoir_quota = map['ReservoirQuota']
        data.reservoir_quota_ttl = Time.at(map['ReservoirQuotaTTL'].to_i) if map['ReservoirQuotaTTL']
        data.interval = map['Interval']
        return data
      end
    end

    # Operation Parser for GetServiceGraph
    class GetServiceGraph
      def self.parse(http_resp)
        data = Types::GetServiceGraphOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.services = (Parsers::ServiceList.parse(map['Services']) unless map['Services'].nil?)
        data.contains_old_group_versions = map['ContainsOldGroupVersions']
        data.next_token = map['NextToken']
        data
      end
    end

    class ServiceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Service.parse(value) unless value.nil?
        end
        data
      end
    end

    class Service
      def self.parse(map)
        data = Types::Service.new
        data.reference_id = map['ReferenceId']
        data.name = map['Name']
        data.names = (Parsers::ServiceNames.parse(map['Names']) unless map['Names'].nil?)
        data.root = map['Root']
        data.account_id = map['AccountId']
        data.type = map['Type']
        data.state = map['State']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.edges = (Parsers::EdgeList.parse(map['Edges']) unless map['Edges'].nil?)
        data.summary_statistics = (Parsers::ServiceStatistics.parse(map['SummaryStatistics']) unless map['SummaryStatistics'].nil?)
        data.duration_histogram = (Parsers::Histogram.parse(map['DurationHistogram']) unless map['DurationHistogram'].nil?)
        data.response_time_histogram = (Parsers::Histogram.parse(map['ResponseTimeHistogram']) unless map['ResponseTimeHistogram'].nil?)
        return data
      end
    end

    class Histogram
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::HistogramEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class HistogramEntry
      def self.parse(map)
        data = Types::HistogramEntry.new
        data.value = Hearth::NumberHelper.deserialize(map['Value'])
        data.count = map['Count']
        return data
      end
    end

    class ServiceStatistics
      def self.parse(map)
        data = Types::ServiceStatistics.new
        data.ok_count = map['OkCount']
        data.error_statistics = (Parsers::ErrorStatistics.parse(map['ErrorStatistics']) unless map['ErrorStatistics'].nil?)
        data.fault_statistics = (Parsers::FaultStatistics.parse(map['FaultStatistics']) unless map['FaultStatistics'].nil?)
        data.total_count = map['TotalCount']
        data.total_response_time = Hearth::NumberHelper.deserialize(map['TotalResponseTime'])
        return data
      end
    end

    class FaultStatistics
      def self.parse(map)
        data = Types::FaultStatistics.new
        data.other_count = map['OtherCount']
        data.total_count = map['TotalCount']
        return data
      end
    end

    class ErrorStatistics
      def self.parse(map)
        data = Types::ErrorStatistics.new
        data.throttle_count = map['ThrottleCount']
        data.other_count = map['OtherCount']
        data.total_count = map['TotalCount']
        return data
      end
    end

    class EdgeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Edge.parse(value) unless value.nil?
        end
        data
      end
    end

    class Edge
      def self.parse(map)
        data = Types::Edge.new
        data.reference_id = map['ReferenceId']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.summary_statistics = (Parsers::EdgeStatistics.parse(map['SummaryStatistics']) unless map['SummaryStatistics'].nil?)
        data.response_time_histogram = (Parsers::Histogram.parse(map['ResponseTimeHistogram']) unless map['ResponseTimeHistogram'].nil?)
        data.aliases = (Parsers::AliasList.parse(map['Aliases']) unless map['Aliases'].nil?)
        return data
      end
    end

    class AliasList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Alias.parse(value) unless value.nil?
        end
        data
      end
    end

    class Alias
      def self.parse(map)
        data = Types::Alias.new
        data.name = map['Name']
        data.names = (Parsers::AliasNames.parse(map['Names']) unless map['Names'].nil?)
        data.type = map['Type']
        return data
      end
    end

    class AliasNames
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class EdgeStatistics
      def self.parse(map)
        data = Types::EdgeStatistics.new
        data.ok_count = map['OkCount']
        data.error_statistics = (Parsers::ErrorStatistics.parse(map['ErrorStatistics']) unless map['ErrorStatistics'].nil?)
        data.fault_statistics = (Parsers::FaultStatistics.parse(map['FaultStatistics']) unless map['FaultStatistics'].nil?)
        data.total_count = map['TotalCount']
        data.total_response_time = Hearth::NumberHelper.deserialize(map['TotalResponseTime'])
        return data
      end
    end

    # Operation Parser for GetTimeSeriesServiceStatistics
    class GetTimeSeriesServiceStatistics
      def self.parse(http_resp)
        data = Types::GetTimeSeriesServiceStatisticsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.time_series_service_statistics = (Parsers::TimeSeriesServiceStatisticsList.parse(map['TimeSeriesServiceStatistics']) unless map['TimeSeriesServiceStatistics'].nil?)
        data.contains_old_group_versions = map['ContainsOldGroupVersions']
        data.next_token = map['NextToken']
        data
      end
    end

    class TimeSeriesServiceStatisticsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::TimeSeriesServiceStatistics.parse(value) unless value.nil?
        end
        data
      end
    end

    class TimeSeriesServiceStatistics
      def self.parse(map)
        data = Types::TimeSeriesServiceStatistics.new
        data.timestamp = Time.at(map['Timestamp'].to_i) if map['Timestamp']
        data.edge_summary_statistics = (Parsers::EdgeStatistics.parse(map['EdgeSummaryStatistics']) unless map['EdgeSummaryStatistics'].nil?)
        data.service_summary_statistics = (Parsers::ServiceStatistics.parse(map['ServiceSummaryStatistics']) unless map['ServiceSummaryStatistics'].nil?)
        data.service_forecast_statistics = (Parsers::ForecastStatistics.parse(map['ServiceForecastStatistics']) unless map['ServiceForecastStatistics'].nil?)
        data.response_time_histogram = (Parsers::Histogram.parse(map['ResponseTimeHistogram']) unless map['ResponseTimeHistogram'].nil?)
        return data
      end
    end

    class ForecastStatistics
      def self.parse(map)
        data = Types::ForecastStatistics.new
        data.fault_count_high = map['FaultCountHigh']
        data.fault_count_low = map['FaultCountLow']
        return data
      end
    end

    # Operation Parser for GetTraceGraph
    class GetTraceGraph
      def self.parse(http_resp)
        data = Types::GetTraceGraphOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.services = (Parsers::ServiceList.parse(map['Services']) unless map['Services'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for GetTraceSummaries
    class GetTraceSummaries
      def self.parse(http_resp)
        data = Types::GetTraceSummariesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.trace_summaries = (Parsers::TraceSummaryList.parse(map['TraceSummaries']) unless map['TraceSummaries'].nil?)
        data.approximate_time = Time.at(map['ApproximateTime'].to_i) if map['ApproximateTime']
        data.traces_processed_count = map['TracesProcessedCount']
        data.next_token = map['NextToken']
        data
      end
    end

    class TraceSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::TraceSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class TraceSummary
      def self.parse(map)
        data = Types::TraceSummary.new
        data.id = map['Id']
        data.duration = Hearth::NumberHelper.deserialize(map['Duration'])
        data.response_time = Hearth::NumberHelper.deserialize(map['ResponseTime'])
        data.has_fault = map['HasFault']
        data.has_error = map['HasError']
        data.has_throttle = map['HasThrottle']
        data.is_partial = map['IsPartial']
        data.http = (Parsers::Http.parse(map['Http']) unless map['Http'].nil?)
        data.annotations = (Parsers::Annotations.parse(map['Annotations']) unless map['Annotations'].nil?)
        data.users = (Parsers::TraceUsers.parse(map['Users']) unless map['Users'].nil?)
        data.service_ids = (Parsers::ServiceIds.parse(map['ServiceIds']) unless map['ServiceIds'].nil?)
        data.resource_ar_ns = (Parsers::TraceResourceARNs.parse(map['ResourceARNs']) unless map['ResourceARNs'].nil?)
        data.instance_ids = (Parsers::TraceInstanceIds.parse(map['InstanceIds']) unless map['InstanceIds'].nil?)
        data.availability_zones = (Parsers::TraceAvailabilityZones.parse(map['AvailabilityZones']) unless map['AvailabilityZones'].nil?)
        data.entry_point = (Parsers::ServiceId.parse(map['EntryPoint']) unless map['EntryPoint'].nil?)
        data.fault_root_causes = (Parsers::FaultRootCauses.parse(map['FaultRootCauses']) unless map['FaultRootCauses'].nil?)
        data.error_root_causes = (Parsers::ErrorRootCauses.parse(map['ErrorRootCauses']) unless map['ErrorRootCauses'].nil?)
        data.response_time_root_causes = (Parsers::ResponseTimeRootCauses.parse(map['ResponseTimeRootCauses']) unless map['ResponseTimeRootCauses'].nil?)
        data.revision = map['Revision']
        data.matched_event_time = Time.at(map['MatchedEventTime'].to_i) if map['MatchedEventTime']
        return data
      end
    end

    class ResponseTimeRootCauses
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ResponseTimeRootCause.parse(value) unless value.nil?
        end
        data
      end
    end

    class ResponseTimeRootCause
      def self.parse(map)
        data = Types::ResponseTimeRootCause.new
        data.services = (Parsers::ResponseTimeRootCauseServices.parse(map['Services']) unless map['Services'].nil?)
        data.client_impacting = map['ClientImpacting']
        return data
      end
    end

    class ResponseTimeRootCauseServices
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ResponseTimeRootCauseService.parse(value) unless value.nil?
        end
        data
      end
    end

    class ResponseTimeRootCauseService
      def self.parse(map)
        data = Types::ResponseTimeRootCauseService.new
        data.name = map['Name']
        data.names = (Parsers::ServiceNames.parse(map['Names']) unless map['Names'].nil?)
        data.type = map['Type']
        data.account_id = map['AccountId']
        data.entity_path = (Parsers::ResponseTimeRootCauseEntityPath.parse(map['EntityPath']) unless map['EntityPath'].nil?)
        data.inferred = map['Inferred']
        return data
      end
    end

    class ResponseTimeRootCauseEntityPath
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ResponseTimeRootCauseEntity.parse(value) unless value.nil?
        end
        data
      end
    end

    class ResponseTimeRootCauseEntity
      def self.parse(map)
        data = Types::ResponseTimeRootCauseEntity.new
        data.name = map['Name']
        data.coverage = Hearth::NumberHelper.deserialize(map['Coverage'])
        data.remote = map['Remote']
        return data
      end
    end

    class ErrorRootCauses
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ErrorRootCause.parse(value) unless value.nil?
        end
        data
      end
    end

    class ErrorRootCause
      def self.parse(map)
        data = Types::ErrorRootCause.new
        data.services = (Parsers::ErrorRootCauseServices.parse(map['Services']) unless map['Services'].nil?)
        data.client_impacting = map['ClientImpacting']
        return data
      end
    end

    class ErrorRootCauseServices
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ErrorRootCauseService.parse(value) unless value.nil?
        end
        data
      end
    end

    class ErrorRootCauseService
      def self.parse(map)
        data = Types::ErrorRootCauseService.new
        data.name = map['Name']
        data.names = (Parsers::ServiceNames.parse(map['Names']) unless map['Names'].nil?)
        data.type = map['Type']
        data.account_id = map['AccountId']
        data.entity_path = (Parsers::ErrorRootCauseEntityPath.parse(map['EntityPath']) unless map['EntityPath'].nil?)
        data.inferred = map['Inferred']
        return data
      end
    end

    class ErrorRootCauseEntityPath
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ErrorRootCauseEntity.parse(value) unless value.nil?
        end
        data
      end
    end

    class ErrorRootCauseEntity
      def self.parse(map)
        data = Types::ErrorRootCauseEntity.new
        data.name = map['Name']
        data.exceptions = (Parsers::RootCauseExceptions.parse(map['Exceptions']) unless map['Exceptions'].nil?)
        data.remote = map['Remote']
        return data
      end
    end

    class RootCauseExceptions
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RootCauseException.parse(value) unless value.nil?
        end
        data
      end
    end

    class RootCauseException
      def self.parse(map)
        data = Types::RootCauseException.new
        data.name = map['Name']
        data.message = map['Message']
        return data
      end
    end

    class FaultRootCauses
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::FaultRootCause.parse(value) unless value.nil?
        end
        data
      end
    end

    class FaultRootCause
      def self.parse(map)
        data = Types::FaultRootCause.new
        data.services = (Parsers::FaultRootCauseServices.parse(map['Services']) unless map['Services'].nil?)
        data.client_impacting = map['ClientImpacting']
        return data
      end
    end

    class FaultRootCauseServices
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::FaultRootCauseService.parse(value) unless value.nil?
        end
        data
      end
    end

    class FaultRootCauseService
      def self.parse(map)
        data = Types::FaultRootCauseService.new
        data.name = map['Name']
        data.names = (Parsers::ServiceNames.parse(map['Names']) unless map['Names'].nil?)
        data.type = map['Type']
        data.account_id = map['AccountId']
        data.entity_path = (Parsers::FaultRootCauseEntityPath.parse(map['EntityPath']) unless map['EntityPath'].nil?)
        data.inferred = map['Inferred']
        return data
      end
    end

    class FaultRootCauseEntityPath
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::FaultRootCauseEntity.parse(value) unless value.nil?
        end
        data
      end
    end

    class FaultRootCauseEntity
      def self.parse(map)
        data = Types::FaultRootCauseEntity.new
        data.name = map['Name']
        data.exceptions = (Parsers::RootCauseExceptions.parse(map['Exceptions']) unless map['Exceptions'].nil?)
        data.remote = map['Remote']
        return data
      end
    end

    class TraceAvailabilityZones
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AvailabilityZoneDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class AvailabilityZoneDetail
      def self.parse(map)
        data = Types::AvailabilityZoneDetail.new
        data.name = map['Name']
        return data
      end
    end

    class TraceInstanceIds
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::InstanceIdDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class InstanceIdDetail
      def self.parse(map)
        data = Types::InstanceIdDetail.new
        data.id = map['Id']
        return data
      end
    end

    class TraceResourceARNs
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ResourceARNDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class ResourceARNDetail
      def self.parse(map)
        data = Types::ResourceARNDetail.new
        data.arn = map['ARN']
        return data
      end
    end

    class ServiceIds
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ServiceId.parse(value) unless value.nil?
        end
        data
      end
    end

    class TraceUsers
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::TraceUser.parse(value) unless value.nil?
        end
        data
      end
    end

    class TraceUser
      def self.parse(map)
        data = Types::TraceUser.new
        data.user_name = map['UserName']
        data.service_ids = (Parsers::ServiceIds.parse(map['ServiceIds']) unless map['ServiceIds'].nil?)
        return data
      end
    end

    class Annotations
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::ValuesWithServiceIds.parse(value) unless value.nil?
        end
        data
      end
    end

    class ValuesWithServiceIds
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ValueWithServiceIds.parse(value) unless value.nil?
        end
        data
      end
    end

    class ValueWithServiceIds
      def self.parse(map)
        data = Types::ValueWithServiceIds.new
        data.annotation_value = (Parsers::AnnotationValue.parse(map['AnnotationValue']) unless map['AnnotationValue'].nil?)
        data.service_ids = (Parsers::ServiceIds.parse(map['ServiceIds']) unless map['ServiceIds'].nil?)
        return data
      end
    end

    class AnnotationValue
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'NumberValue'
          value = Hearth::NumberHelper.deserialize(value)
          Types::AnnotationValue::NumberValue.new(value) if value
        when 'BooleanValue'
          value = value
          Types::AnnotationValue::BooleanValue.new(value) if value
        when 'StringValue'
          value = value
          Types::AnnotationValue::StringValue.new(value) if value
        else
          Types::AnnotationValue::Unknown.new({name: key, value: value})
        end
      end
    end

    class Http
      def self.parse(map)
        data = Types::Http.new
        data.http_url = map['HttpURL']
        data.http_status = map['HttpStatus']
        data.http_method = map['HttpMethod']
        data.user_agent = map['UserAgent']
        data.client_ip = map['ClientIp']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class TagList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Tag.parse(value) unless value.nil?
        end
        data
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_name = map['ResourceName']
        data
      end
    end

    # Operation Parser for PutEncryptionConfig
    class PutEncryptionConfig
      def self.parse(http_resp)
        data = Types::PutEncryptionConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.encryption_config = (Parsers::EncryptionConfig.parse(map['EncryptionConfig']) unless map['EncryptionConfig'].nil?)
        data
      end
    end

    # Operation Parser for PutTelemetryRecords
    class PutTelemetryRecords
      def self.parse(http_resp)
        data = Types::PutTelemetryRecordsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for PutTraceSegments
    class PutTraceSegments
      def self.parse(http_resp)
        data = Types::PutTraceSegmentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.unprocessed_trace_segments = (Parsers::UnprocessedTraceSegmentList.parse(map['UnprocessedTraceSegments']) unless map['UnprocessedTraceSegments'].nil?)
        data
      end
    end

    class UnprocessedTraceSegmentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::UnprocessedTraceSegment.parse(value) unless value.nil?
        end
        data
      end
    end

    class UnprocessedTraceSegment
      def self.parse(map)
        data = Types::UnprocessedTraceSegment.new
        data.id = map['Id']
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        return data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for TooManyTagsException
    class TooManyTagsException
      def self.parse(http_resp)
        data = Types::TooManyTagsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_name = map['ResourceName']
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateGroup
    class UpdateGroup
      def self.parse(http_resp)
        data = Types::UpdateGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.group = (Parsers::Group.parse(map['Group']) unless map['Group'].nil?)
        data
      end
    end

    # Operation Parser for UpdateSamplingRule
    class UpdateSamplingRule
      def self.parse(http_resp)
        data = Types::UpdateSamplingRuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.sampling_rule_record = (Parsers::SamplingRuleRecord.parse(map['SamplingRuleRecord']) unless map['SamplingRuleRecord'].nil?)
        data
      end
    end
  end
end
