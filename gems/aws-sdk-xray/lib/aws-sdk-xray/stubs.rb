# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::XRay
  module Stubs

    # Operation Stubber for BatchGetTraces
    class BatchGetTraces
      def self.default(visited=[])
        {
          traces: TraceList.default(visited),
          unprocessed_trace_ids: UnprocessedTraceIdList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Traces'] = Stubs::TraceList.stub(stub[:traces]) unless stub[:traces].nil?
        data['UnprocessedTraceIds'] = Stubs::UnprocessedTraceIdList.stub(stub[:unprocessed_trace_ids]) unless stub[:unprocessed_trace_ids].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for UnprocessedTraceIdList
    class UnprocessedTraceIdList
      def self.default(visited=[])
        return nil if visited.include?('UnprocessedTraceIdList')
        visited = visited + ['UnprocessedTraceIdList']
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

    # List Stubber for TraceList
    class TraceList
      def self.default(visited=[])
        return nil if visited.include?('TraceList')
        visited = visited + ['TraceList']
        [
          Trace.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Trace.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Trace
    class Trace
      def self.default(visited=[])
        return nil if visited.include?('Trace')
        visited = visited + ['Trace']
        {
          id: 'id',
          duration: 1.0,
          limit_exceeded: false,
          segments: SegmentList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Trace.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Duration'] = Hearth::NumberHelper.serialize(stub[:duration])
        data['LimitExceeded'] = stub[:limit_exceeded] unless stub[:limit_exceeded].nil?
        data['Segments'] = Stubs::SegmentList.stub(stub[:segments]) unless stub[:segments].nil?
        data
      end
    end

    # List Stubber for SegmentList
    class SegmentList
      def self.default(visited=[])
        return nil if visited.include?('SegmentList')
        visited = visited + ['SegmentList']
        [
          Segment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Segment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Segment
    class Segment
      def self.default(visited=[])
        return nil if visited.include?('Segment')
        visited = visited + ['Segment']
        {
          id: 'id',
          document: 'document',
        }
      end

      def self.stub(stub)
        stub ||= Types::Segment.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Document'] = stub[:document] unless stub[:document].nil?
        data
      end
    end

    # Operation Stubber for CreateGroup
    class CreateGroup
      def self.default(visited=[])
        {
          group: Group.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Group'] = Stubs::Group.stub(stub[:group]) unless stub[:group].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Group
    class Group
      def self.default(visited=[])
        return nil if visited.include?('Group')
        visited = visited + ['Group']
        {
          group_name: 'group_name',
          group_arn: 'group_arn',
          filter_expression: 'filter_expression',
          insights_configuration: InsightsConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Group.new
        data = {}
        data['GroupName'] = stub[:group_name] unless stub[:group_name].nil?
        data['GroupARN'] = stub[:group_arn] unless stub[:group_arn].nil?
        data['FilterExpression'] = stub[:filter_expression] unless stub[:filter_expression].nil?
        data['InsightsConfiguration'] = Stubs::InsightsConfiguration.stub(stub[:insights_configuration]) unless stub[:insights_configuration].nil?
        data
      end
    end

    # Structure Stubber for InsightsConfiguration
    class InsightsConfiguration
      def self.default(visited=[])
        return nil if visited.include?('InsightsConfiguration')
        visited = visited + ['InsightsConfiguration']
        {
          insights_enabled: false,
          notifications_enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::InsightsConfiguration.new
        data = {}
        data['InsightsEnabled'] = stub[:insights_enabled] unless stub[:insights_enabled].nil?
        data['NotificationsEnabled'] = stub[:notifications_enabled] unless stub[:notifications_enabled].nil?
        data
      end
    end

    # Operation Stubber for CreateSamplingRule
    class CreateSamplingRule
      def self.default(visited=[])
        {
          sampling_rule_record: SamplingRuleRecord.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SamplingRuleRecord'] = Stubs::SamplingRuleRecord.stub(stub[:sampling_rule_record]) unless stub[:sampling_rule_record].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for SamplingRuleRecord
    class SamplingRuleRecord
      def self.default(visited=[])
        return nil if visited.include?('SamplingRuleRecord')
        visited = visited + ['SamplingRuleRecord']
        {
          sampling_rule: SamplingRule.default(visited),
          created_at: Time.now,
          modified_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::SamplingRuleRecord.new
        data = {}
        data['SamplingRule'] = Stubs::SamplingRule.stub(stub[:sampling_rule]) unless stub[:sampling_rule].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['ModifiedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:modified_at]).to_i unless stub[:modified_at].nil?
        data
      end
    end

    # Structure Stubber for SamplingRule
    class SamplingRule
      def self.default(visited=[])
        return nil if visited.include?('SamplingRule')
        visited = visited + ['SamplingRule']
        {
          rule_name: 'rule_name',
          rule_arn: 'rule_arn',
          resource_arn: 'resource_arn',
          priority: 1,
          fixed_rate: 1.0,
          reservoir_size: 1,
          service_name: 'service_name',
          service_type: 'service_type',
          host: 'host',
          http_method: 'http_method',
          url_path: 'url_path',
          version: 1,
          attributes: AttributeMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SamplingRule.new
        data = {}
        data['RuleName'] = stub[:rule_name] unless stub[:rule_name].nil?
        data['RuleARN'] = stub[:rule_arn] unless stub[:rule_arn].nil?
        data['ResourceARN'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['Priority'] = stub[:priority] unless stub[:priority].nil?
        data['FixedRate'] = Hearth::NumberHelper.serialize(stub[:fixed_rate])
        data['ReservoirSize'] = stub[:reservoir_size] unless stub[:reservoir_size].nil?
        data['ServiceName'] = stub[:service_name] unless stub[:service_name].nil?
        data['ServiceType'] = stub[:service_type] unless stub[:service_type].nil?
        data['Host'] = stub[:host] unless stub[:host].nil?
        data['HTTPMethod'] = stub[:http_method] unless stub[:http_method].nil?
        data['URLPath'] = stub[:url_path] unless stub[:url_path].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['Attributes'] = Stubs::AttributeMap.stub(stub[:attributes]) unless stub[:attributes].nil?
        data
      end
    end

    # Map Stubber for AttributeMap
    class AttributeMap
      def self.default(visited=[])
        return nil if visited.include?('AttributeMap')
        visited = visited + ['AttributeMap']
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

    # Operation Stubber for DeleteGroup
    class DeleteGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSamplingRule
    class DeleteSamplingRule
      def self.default(visited=[])
        {
          sampling_rule_record: SamplingRuleRecord.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SamplingRuleRecord'] = Stubs::SamplingRuleRecord.stub(stub[:sampling_rule_record]) unless stub[:sampling_rule_record].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetEncryptionConfig
    class GetEncryptionConfig
      def self.default(visited=[])
        {
          encryption_config: EncryptionConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['EncryptionConfig'] = Stubs::EncryptionConfig.stub(stub[:encryption_config]) unless stub[:encryption_config].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for EncryptionConfig
    class EncryptionConfig
      def self.default(visited=[])
        return nil if visited.include?('EncryptionConfig')
        visited = visited + ['EncryptionConfig']
        {
          key_id: 'key_id',
          status: 'status',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::EncryptionConfig.new
        data = {}
        data['KeyId'] = stub[:key_id] unless stub[:key_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Operation Stubber for GetGroup
    class GetGroup
      def self.default(visited=[])
        {
          group: Group.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Group'] = Stubs::Group.stub(stub[:group]) unless stub[:group].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetGroups
    class GetGroups
      def self.default(visited=[])
        {
          groups: GroupSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Groups'] = Stubs::GroupSummaryList.stub(stub[:groups]) unless stub[:groups].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for GroupSummaryList
    class GroupSummaryList
      def self.default(visited=[])
        return nil if visited.include?('GroupSummaryList')
        visited = visited + ['GroupSummaryList']
        [
          GroupSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::GroupSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GroupSummary
    class GroupSummary
      def self.default(visited=[])
        return nil if visited.include?('GroupSummary')
        visited = visited + ['GroupSummary']
        {
          group_name: 'group_name',
          group_arn: 'group_arn',
          filter_expression: 'filter_expression',
          insights_configuration: InsightsConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GroupSummary.new
        data = {}
        data['GroupName'] = stub[:group_name] unless stub[:group_name].nil?
        data['GroupARN'] = stub[:group_arn] unless stub[:group_arn].nil?
        data['FilterExpression'] = stub[:filter_expression] unless stub[:filter_expression].nil?
        data['InsightsConfiguration'] = Stubs::InsightsConfiguration.stub(stub[:insights_configuration]) unless stub[:insights_configuration].nil?
        data
      end
    end

    # Operation Stubber for GetInsight
    class GetInsight
      def self.default(visited=[])
        {
          insight: Insight.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Insight'] = Stubs::Insight.stub(stub[:insight]) unless stub[:insight].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Insight
    class Insight
      def self.default(visited=[])
        return nil if visited.include?('Insight')
        visited = visited + ['Insight']
        {
          insight_id: 'insight_id',
          group_arn: 'group_arn',
          group_name: 'group_name',
          root_cause_service_id: ServiceId.default(visited),
          categories: InsightCategoryList.default(visited),
          state: 'state',
          start_time: Time.now,
          end_time: Time.now,
          summary: 'summary',
          client_request_impact_statistics: RequestImpactStatistics.default(visited),
          root_cause_service_request_impact_statistics: RequestImpactStatistics.default(visited),
          top_anomalous_services: AnomalousServiceList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Insight.new
        data = {}
        data['InsightId'] = stub[:insight_id] unless stub[:insight_id].nil?
        data['GroupARN'] = stub[:group_arn] unless stub[:group_arn].nil?
        data['GroupName'] = stub[:group_name] unless stub[:group_name].nil?
        data['RootCauseServiceId'] = Stubs::ServiceId.stub(stub[:root_cause_service_id]) unless stub[:root_cause_service_id].nil?
        data['Categories'] = Stubs::InsightCategoryList.stub(stub[:categories]) unless stub[:categories].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['Summary'] = stub[:summary] unless stub[:summary].nil?
        data['ClientRequestImpactStatistics'] = Stubs::RequestImpactStatistics.stub(stub[:client_request_impact_statistics]) unless stub[:client_request_impact_statistics].nil?
        data['RootCauseServiceRequestImpactStatistics'] = Stubs::RequestImpactStatistics.stub(stub[:root_cause_service_request_impact_statistics]) unless stub[:root_cause_service_request_impact_statistics].nil?
        data['TopAnomalousServices'] = Stubs::AnomalousServiceList.stub(stub[:top_anomalous_services]) unless stub[:top_anomalous_services].nil?
        data
      end
    end

    # List Stubber for AnomalousServiceList
    class AnomalousServiceList
      def self.default(visited=[])
        return nil if visited.include?('AnomalousServiceList')
        visited = visited + ['AnomalousServiceList']
        [
          AnomalousService.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AnomalousService.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AnomalousService
    class AnomalousService
      def self.default(visited=[])
        return nil if visited.include?('AnomalousService')
        visited = visited + ['AnomalousService']
        {
          service_id: ServiceId.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AnomalousService.new
        data = {}
        data['ServiceId'] = Stubs::ServiceId.stub(stub[:service_id]) unless stub[:service_id].nil?
        data
      end
    end

    # Structure Stubber for ServiceId
    class ServiceId
      def self.default(visited=[])
        return nil if visited.include?('ServiceId')
        visited = visited + ['ServiceId']
        {
          name: 'name',
          names: ServiceNames.default(visited),
          account_id: 'account_id',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceId.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Names'] = Stubs::ServiceNames.stub(stub[:names]) unless stub[:names].nil?
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
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

    # Structure Stubber for RequestImpactStatistics
    class RequestImpactStatistics
      def self.default(visited=[])
        return nil if visited.include?('RequestImpactStatistics')
        visited = visited + ['RequestImpactStatistics']
        {
          fault_count: 1,
          ok_count: 1,
          total_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RequestImpactStatistics.new
        data = {}
        data['FaultCount'] = stub[:fault_count] unless stub[:fault_count].nil?
        data['OkCount'] = stub[:ok_count] unless stub[:ok_count].nil?
        data['TotalCount'] = stub[:total_count] unless stub[:total_count].nil?
        data
      end
    end

    # List Stubber for InsightCategoryList
    class InsightCategoryList
      def self.default(visited=[])
        return nil if visited.include?('InsightCategoryList')
        visited = visited + ['InsightCategoryList']
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

    # Operation Stubber for GetInsightEvents
    class GetInsightEvents
      def self.default(visited=[])
        {
          insight_events: InsightEventList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['InsightEvents'] = Stubs::InsightEventList.stub(stub[:insight_events]) unless stub[:insight_events].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for InsightEventList
    class InsightEventList
      def self.default(visited=[])
        return nil if visited.include?('InsightEventList')
        visited = visited + ['InsightEventList']
        [
          InsightEvent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InsightEvent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InsightEvent
    class InsightEvent
      def self.default(visited=[])
        return nil if visited.include?('InsightEvent')
        visited = visited + ['InsightEvent']
        {
          summary: 'summary',
          event_time: Time.now,
          client_request_impact_statistics: RequestImpactStatistics.default(visited),
          root_cause_service_request_impact_statistics: RequestImpactStatistics.default(visited),
          top_anomalous_services: AnomalousServiceList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InsightEvent.new
        data = {}
        data['Summary'] = stub[:summary] unless stub[:summary].nil?
        data['EventTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:event_time]).to_i unless stub[:event_time].nil?
        data['ClientRequestImpactStatistics'] = Stubs::RequestImpactStatistics.stub(stub[:client_request_impact_statistics]) unless stub[:client_request_impact_statistics].nil?
        data['RootCauseServiceRequestImpactStatistics'] = Stubs::RequestImpactStatistics.stub(stub[:root_cause_service_request_impact_statistics]) unless stub[:root_cause_service_request_impact_statistics].nil?
        data['TopAnomalousServices'] = Stubs::AnomalousServiceList.stub(stub[:top_anomalous_services]) unless stub[:top_anomalous_services].nil?
        data
      end
    end

    # Operation Stubber for GetInsightImpactGraph
    class GetInsightImpactGraph
      def self.default(visited=[])
        {
          insight_id: 'insight_id',
          start_time: Time.now,
          end_time: Time.now,
          service_graph_start_time: Time.now,
          service_graph_end_time: Time.now,
          services: InsightImpactGraphServiceList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['InsightId'] = stub[:insight_id] unless stub[:insight_id].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['ServiceGraphStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:service_graph_start_time]).to_i unless stub[:service_graph_start_time].nil?
        data['ServiceGraphEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:service_graph_end_time]).to_i unless stub[:service_graph_end_time].nil?
        data['Services'] = Stubs::InsightImpactGraphServiceList.stub(stub[:services]) unless stub[:services].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for InsightImpactGraphServiceList
    class InsightImpactGraphServiceList
      def self.default(visited=[])
        return nil if visited.include?('InsightImpactGraphServiceList')
        visited = visited + ['InsightImpactGraphServiceList']
        [
          InsightImpactGraphService.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InsightImpactGraphService.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InsightImpactGraphService
    class InsightImpactGraphService
      def self.default(visited=[])
        return nil if visited.include?('InsightImpactGraphService')
        visited = visited + ['InsightImpactGraphService']
        {
          reference_id: 1,
          type: 'type',
          name: 'name',
          names: ServiceNames.default(visited),
          account_id: 'account_id',
          edges: InsightImpactGraphEdgeList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InsightImpactGraphService.new
        data = {}
        data['ReferenceId'] = stub[:reference_id] unless stub[:reference_id].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Names'] = Stubs::ServiceNames.stub(stub[:names]) unless stub[:names].nil?
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['Edges'] = Stubs::InsightImpactGraphEdgeList.stub(stub[:edges]) unless stub[:edges].nil?
        data
      end
    end

    # List Stubber for InsightImpactGraphEdgeList
    class InsightImpactGraphEdgeList
      def self.default(visited=[])
        return nil if visited.include?('InsightImpactGraphEdgeList')
        visited = visited + ['InsightImpactGraphEdgeList']
        [
          InsightImpactGraphEdge.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InsightImpactGraphEdge.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InsightImpactGraphEdge
    class InsightImpactGraphEdge
      def self.default(visited=[])
        return nil if visited.include?('InsightImpactGraphEdge')
        visited = visited + ['InsightImpactGraphEdge']
        {
          reference_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::InsightImpactGraphEdge.new
        data = {}
        data['ReferenceId'] = stub[:reference_id] unless stub[:reference_id].nil?
        data
      end
    end

    # Operation Stubber for GetInsightSummaries
    class GetInsightSummaries
      def self.default(visited=[])
        {
          insight_summaries: InsightSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['InsightSummaries'] = Stubs::InsightSummaryList.stub(stub[:insight_summaries]) unless stub[:insight_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for InsightSummaryList
    class InsightSummaryList
      def self.default(visited=[])
        return nil if visited.include?('InsightSummaryList')
        visited = visited + ['InsightSummaryList']
        [
          InsightSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InsightSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InsightSummary
    class InsightSummary
      def self.default(visited=[])
        return nil if visited.include?('InsightSummary')
        visited = visited + ['InsightSummary']
        {
          insight_id: 'insight_id',
          group_arn: 'group_arn',
          group_name: 'group_name',
          root_cause_service_id: ServiceId.default(visited),
          categories: InsightCategoryList.default(visited),
          state: 'state',
          start_time: Time.now,
          end_time: Time.now,
          summary: 'summary',
          client_request_impact_statistics: RequestImpactStatistics.default(visited),
          root_cause_service_request_impact_statistics: RequestImpactStatistics.default(visited),
          top_anomalous_services: AnomalousServiceList.default(visited),
          last_update_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::InsightSummary.new
        data = {}
        data['InsightId'] = stub[:insight_id] unless stub[:insight_id].nil?
        data['GroupARN'] = stub[:group_arn] unless stub[:group_arn].nil?
        data['GroupName'] = stub[:group_name] unless stub[:group_name].nil?
        data['RootCauseServiceId'] = Stubs::ServiceId.stub(stub[:root_cause_service_id]) unless stub[:root_cause_service_id].nil?
        data['Categories'] = Stubs::InsightCategoryList.stub(stub[:categories]) unless stub[:categories].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['Summary'] = stub[:summary] unless stub[:summary].nil?
        data['ClientRequestImpactStatistics'] = Stubs::RequestImpactStatistics.stub(stub[:client_request_impact_statistics]) unless stub[:client_request_impact_statistics].nil?
        data['RootCauseServiceRequestImpactStatistics'] = Stubs::RequestImpactStatistics.stub(stub[:root_cause_service_request_impact_statistics]) unless stub[:root_cause_service_request_impact_statistics].nil?
        data['TopAnomalousServices'] = Stubs::AnomalousServiceList.stub(stub[:top_anomalous_services]) unless stub[:top_anomalous_services].nil?
        data['LastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data
      end
    end

    # Operation Stubber for GetSamplingRules
    class GetSamplingRules
      def self.default(visited=[])
        {
          sampling_rule_records: SamplingRuleRecordList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SamplingRuleRecords'] = Stubs::SamplingRuleRecordList.stub(stub[:sampling_rule_records]) unless stub[:sampling_rule_records].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SamplingRuleRecordList
    class SamplingRuleRecordList
      def self.default(visited=[])
        return nil if visited.include?('SamplingRuleRecordList')
        visited = visited + ['SamplingRuleRecordList']
        [
          SamplingRuleRecord.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SamplingRuleRecord.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetSamplingStatisticSummaries
    class GetSamplingStatisticSummaries
      def self.default(visited=[])
        {
          sampling_statistic_summaries: SamplingStatisticSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SamplingStatisticSummaries'] = Stubs::SamplingStatisticSummaryList.stub(stub[:sampling_statistic_summaries]) unless stub[:sampling_statistic_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SamplingStatisticSummaryList
    class SamplingStatisticSummaryList
      def self.default(visited=[])
        return nil if visited.include?('SamplingStatisticSummaryList')
        visited = visited + ['SamplingStatisticSummaryList']
        [
          SamplingStatisticSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SamplingStatisticSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SamplingStatisticSummary
    class SamplingStatisticSummary
      def self.default(visited=[])
        return nil if visited.include?('SamplingStatisticSummary')
        visited = visited + ['SamplingStatisticSummary']
        {
          rule_name: 'rule_name',
          timestamp: Time.now,
          request_count: 1,
          borrow_count: 1,
          sampled_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SamplingStatisticSummary.new
        data = {}
        data['RuleName'] = stub[:rule_name] unless stub[:rule_name].nil?
        data['Timestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:timestamp]).to_i unless stub[:timestamp].nil?
        data['RequestCount'] = stub[:request_count] unless stub[:request_count].nil?
        data['BorrowCount'] = stub[:borrow_count] unless stub[:borrow_count].nil?
        data['SampledCount'] = stub[:sampled_count] unless stub[:sampled_count].nil?
        data
      end
    end

    # Operation Stubber for GetSamplingTargets
    class GetSamplingTargets
      def self.default(visited=[])
        {
          sampling_target_documents: SamplingTargetDocumentList.default(visited),
          last_rule_modification: Time.now,
          unprocessed_statistics: UnprocessedStatisticsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SamplingTargetDocuments'] = Stubs::SamplingTargetDocumentList.stub(stub[:sampling_target_documents]) unless stub[:sampling_target_documents].nil?
        data['LastRuleModification'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_rule_modification]).to_i unless stub[:last_rule_modification].nil?
        data['UnprocessedStatistics'] = Stubs::UnprocessedStatisticsList.stub(stub[:unprocessed_statistics]) unless stub[:unprocessed_statistics].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for UnprocessedStatisticsList
    class UnprocessedStatisticsList
      def self.default(visited=[])
        return nil if visited.include?('UnprocessedStatisticsList')
        visited = visited + ['UnprocessedStatisticsList']
        [
          UnprocessedStatistics.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UnprocessedStatistics.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UnprocessedStatistics
    class UnprocessedStatistics
      def self.default(visited=[])
        return nil if visited.include?('UnprocessedStatistics')
        visited = visited + ['UnprocessedStatistics']
        {
          rule_name: 'rule_name',
          error_code: 'error_code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::UnprocessedStatistics.new
        data = {}
        data['RuleName'] = stub[:rule_name] unless stub[:rule_name].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # List Stubber for SamplingTargetDocumentList
    class SamplingTargetDocumentList
      def self.default(visited=[])
        return nil if visited.include?('SamplingTargetDocumentList')
        visited = visited + ['SamplingTargetDocumentList']
        [
          SamplingTargetDocument.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SamplingTargetDocument.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SamplingTargetDocument
    class SamplingTargetDocument
      def self.default(visited=[])
        return nil if visited.include?('SamplingTargetDocument')
        visited = visited + ['SamplingTargetDocument']
        {
          rule_name: 'rule_name',
          fixed_rate: 1.0,
          reservoir_quota: 1,
          reservoir_quota_ttl: Time.now,
          interval: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SamplingTargetDocument.new
        data = {}
        data['RuleName'] = stub[:rule_name] unless stub[:rule_name].nil?
        data['FixedRate'] = Hearth::NumberHelper.serialize(stub[:fixed_rate])
        data['ReservoirQuota'] = stub[:reservoir_quota] unless stub[:reservoir_quota].nil?
        data['ReservoirQuotaTTL'] = Hearth::TimeHelper.to_epoch_seconds(stub[:reservoir_quota_ttl]).to_i unless stub[:reservoir_quota_ttl].nil?
        data['Interval'] = stub[:interval] unless stub[:interval].nil?
        data
      end
    end

    # Operation Stubber for GetServiceGraph
    class GetServiceGraph
      def self.default(visited=[])
        {
          start_time: Time.now,
          end_time: Time.now,
          services: ServiceList.default(visited),
          contains_old_group_versions: false,
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['Services'] = Stubs::ServiceList.stub(stub[:services]) unless stub[:services].nil?
        data['ContainsOldGroupVersions'] = stub[:contains_old_group_versions] unless stub[:contains_old_group_versions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ServiceList
    class ServiceList
      def self.default(visited=[])
        return nil if visited.include?('ServiceList')
        visited = visited + ['ServiceList']
        [
          Service.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Service.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Service
    class Service
      def self.default(visited=[])
        return nil if visited.include?('Service')
        visited = visited + ['Service']
        {
          reference_id: 1,
          name: 'name',
          names: ServiceNames.default(visited),
          root: false,
          account_id: 'account_id',
          type: 'type',
          state: 'state',
          start_time: Time.now,
          end_time: Time.now,
          edges: EdgeList.default(visited),
          summary_statistics: ServiceStatistics.default(visited),
          duration_histogram: Histogram.default(visited),
          response_time_histogram: Histogram.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Service.new
        data = {}
        data['ReferenceId'] = stub[:reference_id] unless stub[:reference_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Names'] = Stubs::ServiceNames.stub(stub[:names]) unless stub[:names].nil?
        data['Root'] = stub[:root] unless stub[:root].nil?
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['Edges'] = Stubs::EdgeList.stub(stub[:edges]) unless stub[:edges].nil?
        data['SummaryStatistics'] = Stubs::ServiceStatistics.stub(stub[:summary_statistics]) unless stub[:summary_statistics].nil?
        data['DurationHistogram'] = Stubs::Histogram.stub(stub[:duration_histogram]) unless stub[:duration_histogram].nil?
        data['ResponseTimeHistogram'] = Stubs::Histogram.stub(stub[:response_time_histogram]) unless stub[:response_time_histogram].nil?
        data
      end
    end

    # List Stubber for Histogram
    class Histogram
      def self.default(visited=[])
        return nil if visited.include?('Histogram')
        visited = visited + ['Histogram']
        [
          HistogramEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::HistogramEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for HistogramEntry
    class HistogramEntry
      def self.default(visited=[])
        return nil if visited.include?('HistogramEntry')
        visited = visited + ['HistogramEntry']
        {
          value: 1.0,
          count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::HistogramEntry.new
        data = {}
        data['Value'] = Hearth::NumberHelper.serialize(stub[:value])
        data['Count'] = stub[:count] unless stub[:count].nil?
        data
      end
    end

    # Structure Stubber for ServiceStatistics
    class ServiceStatistics
      def self.default(visited=[])
        return nil if visited.include?('ServiceStatistics')
        visited = visited + ['ServiceStatistics']
        {
          ok_count: 1,
          error_statistics: ErrorStatistics.default(visited),
          fault_statistics: FaultStatistics.default(visited),
          total_count: 1,
          total_response_time: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceStatistics.new
        data = {}
        data['OkCount'] = stub[:ok_count] unless stub[:ok_count].nil?
        data['ErrorStatistics'] = Stubs::ErrorStatistics.stub(stub[:error_statistics]) unless stub[:error_statistics].nil?
        data['FaultStatistics'] = Stubs::FaultStatistics.stub(stub[:fault_statistics]) unless stub[:fault_statistics].nil?
        data['TotalCount'] = stub[:total_count] unless stub[:total_count].nil?
        data['TotalResponseTime'] = Hearth::NumberHelper.serialize(stub[:total_response_time])
        data
      end
    end

    # Structure Stubber for FaultStatistics
    class FaultStatistics
      def self.default(visited=[])
        return nil if visited.include?('FaultStatistics')
        visited = visited + ['FaultStatistics']
        {
          other_count: 1,
          total_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::FaultStatistics.new
        data = {}
        data['OtherCount'] = stub[:other_count] unless stub[:other_count].nil?
        data['TotalCount'] = stub[:total_count] unless stub[:total_count].nil?
        data
      end
    end

    # Structure Stubber for ErrorStatistics
    class ErrorStatistics
      def self.default(visited=[])
        return nil if visited.include?('ErrorStatistics')
        visited = visited + ['ErrorStatistics']
        {
          throttle_count: 1,
          other_count: 1,
          total_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ErrorStatistics.new
        data = {}
        data['ThrottleCount'] = stub[:throttle_count] unless stub[:throttle_count].nil?
        data['OtherCount'] = stub[:other_count] unless stub[:other_count].nil?
        data['TotalCount'] = stub[:total_count] unless stub[:total_count].nil?
        data
      end
    end

    # List Stubber for EdgeList
    class EdgeList
      def self.default(visited=[])
        return nil if visited.include?('EdgeList')
        visited = visited + ['EdgeList']
        [
          Edge.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Edge.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Edge
    class Edge
      def self.default(visited=[])
        return nil if visited.include?('Edge')
        visited = visited + ['Edge']
        {
          reference_id: 1,
          start_time: Time.now,
          end_time: Time.now,
          summary_statistics: EdgeStatistics.default(visited),
          response_time_histogram: Histogram.default(visited),
          aliases: AliasList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Edge.new
        data = {}
        data['ReferenceId'] = stub[:reference_id] unless stub[:reference_id].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['SummaryStatistics'] = Stubs::EdgeStatistics.stub(stub[:summary_statistics]) unless stub[:summary_statistics].nil?
        data['ResponseTimeHistogram'] = Stubs::Histogram.stub(stub[:response_time_histogram]) unless stub[:response_time_histogram].nil?
        data['Aliases'] = Stubs::AliasList.stub(stub[:aliases]) unless stub[:aliases].nil?
        data
      end
    end

    # List Stubber for AliasList
    class AliasList
      def self.default(visited=[])
        return nil if visited.include?('AliasList')
        visited = visited + ['AliasList']
        [
          Alias.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Alias.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Alias
    class Alias
      def self.default(visited=[])
        return nil if visited.include?('Alias')
        visited = visited + ['Alias']
        {
          name: 'name',
          names: AliasNames.default(visited),
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Alias.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Names'] = Stubs::AliasNames.stub(stub[:names]) unless stub[:names].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # List Stubber for AliasNames
    class AliasNames
      def self.default(visited=[])
        return nil if visited.include?('AliasNames')
        visited = visited + ['AliasNames']
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

    # Structure Stubber for EdgeStatistics
    class EdgeStatistics
      def self.default(visited=[])
        return nil if visited.include?('EdgeStatistics')
        visited = visited + ['EdgeStatistics']
        {
          ok_count: 1,
          error_statistics: ErrorStatistics.default(visited),
          fault_statistics: FaultStatistics.default(visited),
          total_count: 1,
          total_response_time: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::EdgeStatistics.new
        data = {}
        data['OkCount'] = stub[:ok_count] unless stub[:ok_count].nil?
        data['ErrorStatistics'] = Stubs::ErrorStatistics.stub(stub[:error_statistics]) unless stub[:error_statistics].nil?
        data['FaultStatistics'] = Stubs::FaultStatistics.stub(stub[:fault_statistics]) unless stub[:fault_statistics].nil?
        data['TotalCount'] = stub[:total_count] unless stub[:total_count].nil?
        data['TotalResponseTime'] = Hearth::NumberHelper.serialize(stub[:total_response_time])
        data
      end
    end

    # Operation Stubber for GetTimeSeriesServiceStatistics
    class GetTimeSeriesServiceStatistics
      def self.default(visited=[])
        {
          time_series_service_statistics: TimeSeriesServiceStatisticsList.default(visited),
          contains_old_group_versions: false,
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['TimeSeriesServiceStatistics'] = Stubs::TimeSeriesServiceStatisticsList.stub(stub[:time_series_service_statistics]) unless stub[:time_series_service_statistics].nil?
        data['ContainsOldGroupVersions'] = stub[:contains_old_group_versions] unless stub[:contains_old_group_versions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TimeSeriesServiceStatisticsList
    class TimeSeriesServiceStatisticsList
      def self.default(visited=[])
        return nil if visited.include?('TimeSeriesServiceStatisticsList')
        visited = visited + ['TimeSeriesServiceStatisticsList']
        [
          TimeSeriesServiceStatistics.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TimeSeriesServiceStatistics.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TimeSeriesServiceStatistics
    class TimeSeriesServiceStatistics
      def self.default(visited=[])
        return nil if visited.include?('TimeSeriesServiceStatistics')
        visited = visited + ['TimeSeriesServiceStatistics']
        {
          timestamp: Time.now,
          edge_summary_statistics: EdgeStatistics.default(visited),
          service_summary_statistics: ServiceStatistics.default(visited),
          service_forecast_statistics: ForecastStatistics.default(visited),
          response_time_histogram: Histogram.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TimeSeriesServiceStatistics.new
        data = {}
        data['Timestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:timestamp]).to_i unless stub[:timestamp].nil?
        data['EdgeSummaryStatistics'] = Stubs::EdgeStatistics.stub(stub[:edge_summary_statistics]) unless stub[:edge_summary_statistics].nil?
        data['ServiceSummaryStatistics'] = Stubs::ServiceStatistics.stub(stub[:service_summary_statistics]) unless stub[:service_summary_statistics].nil?
        data['ServiceForecastStatistics'] = Stubs::ForecastStatistics.stub(stub[:service_forecast_statistics]) unless stub[:service_forecast_statistics].nil?
        data['ResponseTimeHistogram'] = Stubs::Histogram.stub(stub[:response_time_histogram]) unless stub[:response_time_histogram].nil?
        data
      end
    end

    # Structure Stubber for ForecastStatistics
    class ForecastStatistics
      def self.default(visited=[])
        return nil if visited.include?('ForecastStatistics')
        visited = visited + ['ForecastStatistics']
        {
          fault_count_high: 1,
          fault_count_low: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ForecastStatistics.new
        data = {}
        data['FaultCountHigh'] = stub[:fault_count_high] unless stub[:fault_count_high].nil?
        data['FaultCountLow'] = stub[:fault_count_low] unless stub[:fault_count_low].nil?
        data
      end
    end

    # Operation Stubber for GetTraceGraph
    class GetTraceGraph
      def self.default(visited=[])
        {
          services: ServiceList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Services'] = Stubs::ServiceList.stub(stub[:services]) unless stub[:services].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetTraceSummaries
    class GetTraceSummaries
      def self.default(visited=[])
        {
          trace_summaries: TraceSummaryList.default(visited),
          approximate_time: Time.now,
          traces_processed_count: 1,
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['TraceSummaries'] = Stubs::TraceSummaryList.stub(stub[:trace_summaries]) unless stub[:trace_summaries].nil?
        data['ApproximateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:approximate_time]).to_i unless stub[:approximate_time].nil?
        data['TracesProcessedCount'] = stub[:traces_processed_count] unless stub[:traces_processed_count].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TraceSummaryList
    class TraceSummaryList
      def self.default(visited=[])
        return nil if visited.include?('TraceSummaryList')
        visited = visited + ['TraceSummaryList']
        [
          TraceSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TraceSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TraceSummary
    class TraceSummary
      def self.default(visited=[])
        return nil if visited.include?('TraceSummary')
        visited = visited + ['TraceSummary']
        {
          id: 'id',
          duration: 1.0,
          response_time: 1.0,
          has_fault: false,
          has_error: false,
          has_throttle: false,
          is_partial: false,
          http: Http.default(visited),
          annotations: Annotations.default(visited),
          users: TraceUsers.default(visited),
          service_ids: ServiceIds.default(visited),
          resource_ar_ns: TraceResourceARNs.default(visited),
          instance_ids: TraceInstanceIds.default(visited),
          availability_zones: TraceAvailabilityZones.default(visited),
          entry_point: ServiceId.default(visited),
          fault_root_causes: FaultRootCauses.default(visited),
          error_root_causes: ErrorRootCauses.default(visited),
          response_time_root_causes: ResponseTimeRootCauses.default(visited),
          revision: 1,
          matched_event_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::TraceSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Duration'] = Hearth::NumberHelper.serialize(stub[:duration])
        data['ResponseTime'] = Hearth::NumberHelper.serialize(stub[:response_time])
        data['HasFault'] = stub[:has_fault] unless stub[:has_fault].nil?
        data['HasError'] = stub[:has_error] unless stub[:has_error].nil?
        data['HasThrottle'] = stub[:has_throttle] unless stub[:has_throttle].nil?
        data['IsPartial'] = stub[:is_partial] unless stub[:is_partial].nil?
        data['Http'] = Stubs::Http.stub(stub[:http]) unless stub[:http].nil?
        data['Annotations'] = Stubs::Annotations.stub(stub[:annotations]) unless stub[:annotations].nil?
        data['Users'] = Stubs::TraceUsers.stub(stub[:users]) unless stub[:users].nil?
        data['ServiceIds'] = Stubs::ServiceIds.stub(stub[:service_ids]) unless stub[:service_ids].nil?
        data['ResourceARNs'] = Stubs::TraceResourceARNs.stub(stub[:resource_ar_ns]) unless stub[:resource_ar_ns].nil?
        data['InstanceIds'] = Stubs::TraceInstanceIds.stub(stub[:instance_ids]) unless stub[:instance_ids].nil?
        data['AvailabilityZones'] = Stubs::TraceAvailabilityZones.stub(stub[:availability_zones]) unless stub[:availability_zones].nil?
        data['EntryPoint'] = Stubs::ServiceId.stub(stub[:entry_point]) unless stub[:entry_point].nil?
        data['FaultRootCauses'] = Stubs::FaultRootCauses.stub(stub[:fault_root_causes]) unless stub[:fault_root_causes].nil?
        data['ErrorRootCauses'] = Stubs::ErrorRootCauses.stub(stub[:error_root_causes]) unless stub[:error_root_causes].nil?
        data['ResponseTimeRootCauses'] = Stubs::ResponseTimeRootCauses.stub(stub[:response_time_root_causes]) unless stub[:response_time_root_causes].nil?
        data['Revision'] = stub[:revision] unless stub[:revision].nil?
        data['MatchedEventTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:matched_event_time]).to_i unless stub[:matched_event_time].nil?
        data
      end
    end

    # List Stubber for ResponseTimeRootCauses
    class ResponseTimeRootCauses
      def self.default(visited=[])
        return nil if visited.include?('ResponseTimeRootCauses')
        visited = visited + ['ResponseTimeRootCauses']
        [
          ResponseTimeRootCause.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResponseTimeRootCause.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResponseTimeRootCause
    class ResponseTimeRootCause
      def self.default(visited=[])
        return nil if visited.include?('ResponseTimeRootCause')
        visited = visited + ['ResponseTimeRootCause']
        {
          services: ResponseTimeRootCauseServices.default(visited),
          client_impacting: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ResponseTimeRootCause.new
        data = {}
        data['Services'] = Stubs::ResponseTimeRootCauseServices.stub(stub[:services]) unless stub[:services].nil?
        data['ClientImpacting'] = stub[:client_impacting] unless stub[:client_impacting].nil?
        data
      end
    end

    # List Stubber for ResponseTimeRootCauseServices
    class ResponseTimeRootCauseServices
      def self.default(visited=[])
        return nil if visited.include?('ResponseTimeRootCauseServices')
        visited = visited + ['ResponseTimeRootCauseServices']
        [
          ResponseTimeRootCauseService.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResponseTimeRootCauseService.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResponseTimeRootCauseService
    class ResponseTimeRootCauseService
      def self.default(visited=[])
        return nil if visited.include?('ResponseTimeRootCauseService')
        visited = visited + ['ResponseTimeRootCauseService']
        {
          name: 'name',
          names: ServiceNames.default(visited),
          type: 'type',
          account_id: 'account_id',
          entity_path: ResponseTimeRootCauseEntityPath.default(visited),
          inferred: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ResponseTimeRootCauseService.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Names'] = Stubs::ServiceNames.stub(stub[:names]) unless stub[:names].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['EntityPath'] = Stubs::ResponseTimeRootCauseEntityPath.stub(stub[:entity_path]) unless stub[:entity_path].nil?
        data['Inferred'] = stub[:inferred] unless stub[:inferred].nil?
        data
      end
    end

    # List Stubber for ResponseTimeRootCauseEntityPath
    class ResponseTimeRootCauseEntityPath
      def self.default(visited=[])
        return nil if visited.include?('ResponseTimeRootCauseEntityPath')
        visited = visited + ['ResponseTimeRootCauseEntityPath']
        [
          ResponseTimeRootCauseEntity.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResponseTimeRootCauseEntity.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResponseTimeRootCauseEntity
    class ResponseTimeRootCauseEntity
      def self.default(visited=[])
        return nil if visited.include?('ResponseTimeRootCauseEntity')
        visited = visited + ['ResponseTimeRootCauseEntity']
        {
          name: 'name',
          coverage: 1.0,
          remote: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ResponseTimeRootCauseEntity.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Coverage'] = Hearth::NumberHelper.serialize(stub[:coverage])
        data['Remote'] = stub[:remote] unless stub[:remote].nil?
        data
      end
    end

    # List Stubber for ErrorRootCauses
    class ErrorRootCauses
      def self.default(visited=[])
        return nil if visited.include?('ErrorRootCauses')
        visited = visited + ['ErrorRootCauses']
        [
          ErrorRootCause.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ErrorRootCause.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ErrorRootCause
    class ErrorRootCause
      def self.default(visited=[])
        return nil if visited.include?('ErrorRootCause')
        visited = visited + ['ErrorRootCause']
        {
          services: ErrorRootCauseServices.default(visited),
          client_impacting: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ErrorRootCause.new
        data = {}
        data['Services'] = Stubs::ErrorRootCauseServices.stub(stub[:services]) unless stub[:services].nil?
        data['ClientImpacting'] = stub[:client_impacting] unless stub[:client_impacting].nil?
        data
      end
    end

    # List Stubber for ErrorRootCauseServices
    class ErrorRootCauseServices
      def self.default(visited=[])
        return nil if visited.include?('ErrorRootCauseServices')
        visited = visited + ['ErrorRootCauseServices']
        [
          ErrorRootCauseService.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ErrorRootCauseService.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ErrorRootCauseService
    class ErrorRootCauseService
      def self.default(visited=[])
        return nil if visited.include?('ErrorRootCauseService')
        visited = visited + ['ErrorRootCauseService']
        {
          name: 'name',
          names: ServiceNames.default(visited),
          type: 'type',
          account_id: 'account_id',
          entity_path: ErrorRootCauseEntityPath.default(visited),
          inferred: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ErrorRootCauseService.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Names'] = Stubs::ServiceNames.stub(stub[:names]) unless stub[:names].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['EntityPath'] = Stubs::ErrorRootCauseEntityPath.stub(stub[:entity_path]) unless stub[:entity_path].nil?
        data['Inferred'] = stub[:inferred] unless stub[:inferred].nil?
        data
      end
    end

    # List Stubber for ErrorRootCauseEntityPath
    class ErrorRootCauseEntityPath
      def self.default(visited=[])
        return nil if visited.include?('ErrorRootCauseEntityPath')
        visited = visited + ['ErrorRootCauseEntityPath']
        [
          ErrorRootCauseEntity.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ErrorRootCauseEntity.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ErrorRootCauseEntity
    class ErrorRootCauseEntity
      def self.default(visited=[])
        return nil if visited.include?('ErrorRootCauseEntity')
        visited = visited + ['ErrorRootCauseEntity']
        {
          name: 'name',
          exceptions: RootCauseExceptions.default(visited),
          remote: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ErrorRootCauseEntity.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Exceptions'] = Stubs::RootCauseExceptions.stub(stub[:exceptions]) unless stub[:exceptions].nil?
        data['Remote'] = stub[:remote] unless stub[:remote].nil?
        data
      end
    end

    # List Stubber for RootCauseExceptions
    class RootCauseExceptions
      def self.default(visited=[])
        return nil if visited.include?('RootCauseExceptions')
        visited = visited + ['RootCauseExceptions']
        [
          RootCauseException.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RootCauseException.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RootCauseException
    class RootCauseException
      def self.default(visited=[])
        return nil if visited.include?('RootCauseException')
        visited = visited + ['RootCauseException']
        {
          name: 'name',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::RootCauseException.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # List Stubber for FaultRootCauses
    class FaultRootCauses
      def self.default(visited=[])
        return nil if visited.include?('FaultRootCauses')
        visited = visited + ['FaultRootCauses']
        [
          FaultRootCause.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::FaultRootCause.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FaultRootCause
    class FaultRootCause
      def self.default(visited=[])
        return nil if visited.include?('FaultRootCause')
        visited = visited + ['FaultRootCause']
        {
          services: FaultRootCauseServices.default(visited),
          client_impacting: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::FaultRootCause.new
        data = {}
        data['Services'] = Stubs::FaultRootCauseServices.stub(stub[:services]) unless stub[:services].nil?
        data['ClientImpacting'] = stub[:client_impacting] unless stub[:client_impacting].nil?
        data
      end
    end

    # List Stubber for FaultRootCauseServices
    class FaultRootCauseServices
      def self.default(visited=[])
        return nil if visited.include?('FaultRootCauseServices')
        visited = visited + ['FaultRootCauseServices']
        [
          FaultRootCauseService.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::FaultRootCauseService.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FaultRootCauseService
    class FaultRootCauseService
      def self.default(visited=[])
        return nil if visited.include?('FaultRootCauseService')
        visited = visited + ['FaultRootCauseService']
        {
          name: 'name',
          names: ServiceNames.default(visited),
          type: 'type',
          account_id: 'account_id',
          entity_path: FaultRootCauseEntityPath.default(visited),
          inferred: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::FaultRootCauseService.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Names'] = Stubs::ServiceNames.stub(stub[:names]) unless stub[:names].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['EntityPath'] = Stubs::FaultRootCauseEntityPath.stub(stub[:entity_path]) unless stub[:entity_path].nil?
        data['Inferred'] = stub[:inferred] unless stub[:inferred].nil?
        data
      end
    end

    # List Stubber for FaultRootCauseEntityPath
    class FaultRootCauseEntityPath
      def self.default(visited=[])
        return nil if visited.include?('FaultRootCauseEntityPath')
        visited = visited + ['FaultRootCauseEntityPath']
        [
          FaultRootCauseEntity.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::FaultRootCauseEntity.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FaultRootCauseEntity
    class FaultRootCauseEntity
      def self.default(visited=[])
        return nil if visited.include?('FaultRootCauseEntity')
        visited = visited + ['FaultRootCauseEntity']
        {
          name: 'name',
          exceptions: RootCauseExceptions.default(visited),
          remote: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::FaultRootCauseEntity.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Exceptions'] = Stubs::RootCauseExceptions.stub(stub[:exceptions]) unless stub[:exceptions].nil?
        data['Remote'] = stub[:remote] unless stub[:remote].nil?
        data
      end
    end

    # List Stubber for TraceAvailabilityZones
    class TraceAvailabilityZones
      def self.default(visited=[])
        return nil if visited.include?('TraceAvailabilityZones')
        visited = visited + ['TraceAvailabilityZones']
        [
          AvailabilityZoneDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AvailabilityZoneDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AvailabilityZoneDetail
    class AvailabilityZoneDetail
      def self.default(visited=[])
        return nil if visited.include?('AvailabilityZoneDetail')
        visited = visited + ['AvailabilityZoneDetail']
        {
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AvailabilityZoneDetail.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # List Stubber for TraceInstanceIds
    class TraceInstanceIds
      def self.default(visited=[])
        return nil if visited.include?('TraceInstanceIds')
        visited = visited + ['TraceInstanceIds']
        [
          InstanceIdDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InstanceIdDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InstanceIdDetail
    class InstanceIdDetail
      def self.default(visited=[])
        return nil if visited.include?('InstanceIdDetail')
        visited = visited + ['InstanceIdDetail']
        {
          id: 'id',
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceIdDetail.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data
      end
    end

    # List Stubber for TraceResourceARNs
    class TraceResourceARNs
      def self.default(visited=[])
        return nil if visited.include?('TraceResourceARNs')
        visited = visited + ['TraceResourceARNs']
        [
          ResourceARNDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResourceARNDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceARNDetail
    class ResourceARNDetail
      def self.default(visited=[])
        return nil if visited.include?('ResourceARNDetail')
        visited = visited + ['ResourceARNDetail']
        {
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceARNDetail.new
        data = {}
        data['ARN'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # List Stubber for ServiceIds
    class ServiceIds
      def self.default(visited=[])
        return nil if visited.include?('ServiceIds')
        visited = visited + ['ServiceIds']
        [
          ServiceId.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ServiceId.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for TraceUsers
    class TraceUsers
      def self.default(visited=[])
        return nil if visited.include?('TraceUsers')
        visited = visited + ['TraceUsers']
        [
          TraceUser.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TraceUser.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TraceUser
    class TraceUser
      def self.default(visited=[])
        return nil if visited.include?('TraceUser')
        visited = visited + ['TraceUser']
        {
          user_name: 'user_name',
          service_ids: ServiceIds.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TraceUser.new
        data = {}
        data['UserName'] = stub[:user_name] unless stub[:user_name].nil?
        data['ServiceIds'] = Stubs::ServiceIds.stub(stub[:service_ids]) unless stub[:service_ids].nil?
        data
      end
    end

    # Map Stubber for Annotations
    class Annotations
      def self.default(visited=[])
        return nil if visited.include?('Annotations')
        visited = visited + ['Annotations']
        {
          test_key: ValuesWithServiceIds.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::ValuesWithServiceIds.stub(value) unless value.nil?
        end
        data
      end
    end

    # List Stubber for ValuesWithServiceIds
    class ValuesWithServiceIds
      def self.default(visited=[])
        return nil if visited.include?('ValuesWithServiceIds')
        visited = visited + ['ValuesWithServiceIds']
        [
          ValueWithServiceIds.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ValueWithServiceIds.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ValueWithServiceIds
    class ValueWithServiceIds
      def self.default(visited=[])
        return nil if visited.include?('ValueWithServiceIds')
        visited = visited + ['ValueWithServiceIds']
        {
          annotation_value: AnnotationValue.default(visited),
          service_ids: ServiceIds.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ValueWithServiceIds.new
        data = {}
        data['AnnotationValue'] = Stubs::AnnotationValue.stub(stub[:annotation_value]) unless stub[:annotation_value].nil?
        data['ServiceIds'] = Stubs::ServiceIds.stub(stub[:service_ids]) unless stub[:service_ids].nil?
        data
      end
    end

    # Union Stubber for AnnotationValue
    class AnnotationValue
      def self.default(visited=[])
        return nil if visited.include?('AnnotationValue')
        visited = visited + ['AnnotationValue']
        {
          number_value: 1.0,
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::AnnotationValue::NumberValue
          data['NumberValue'] = Hearth::NumberHelper.serialize(stub.__getobj__)
        when Types::AnnotationValue::BooleanValue
          data['BooleanValue'] = stub.__getobj__
        when Types::AnnotationValue::StringValue
          data['StringValue'] = stub.__getobj__
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::AnnotationValue"
        end

        data
      end
    end

    # Structure Stubber for Http
    class Http
      def self.default(visited=[])
        return nil if visited.include?('Http')
        visited = visited + ['Http']
        {
          http_url: 'http_url',
          http_status: 1,
          http_method: 'http_method',
          user_agent: 'user_agent',
          client_ip: 'client_ip',
        }
      end

      def self.stub(stub)
        stub ||= Types::Http.new
        data = {}
        data['HttpURL'] = stub[:http_url] unless stub[:http_url].nil?
        data['HttpStatus'] = stub[:http_status] unless stub[:http_status].nil?
        data['HttpMethod'] = stub[:http_method] unless stub[:http_method].nil?
        data['UserAgent'] = stub[:user_agent] unless stub[:user_agent].nil?
        data['ClientIp'] = stub[:client_ip] unless stub[:client_ip].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
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

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for PutEncryptionConfig
    class PutEncryptionConfig
      def self.default(visited=[])
        {
          encryption_config: EncryptionConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['EncryptionConfig'] = Stubs::EncryptionConfig.stub(stub[:encryption_config]) unless stub[:encryption_config].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutTelemetryRecords
    class PutTelemetryRecords
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutTraceSegments
    class PutTraceSegments
      def self.default(visited=[])
        {
          unprocessed_trace_segments: UnprocessedTraceSegmentList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['UnprocessedTraceSegments'] = Stubs::UnprocessedTraceSegmentList.stub(stub[:unprocessed_trace_segments]) unless stub[:unprocessed_trace_segments].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for UnprocessedTraceSegmentList
    class UnprocessedTraceSegmentList
      def self.default(visited=[])
        return nil if visited.include?('UnprocessedTraceSegmentList')
        visited = visited + ['UnprocessedTraceSegmentList']
        [
          UnprocessedTraceSegment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UnprocessedTraceSegment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UnprocessedTraceSegment
    class UnprocessedTraceSegment
      def self.default(visited=[])
        return nil if visited.include?('UnprocessedTraceSegment')
        visited = visited + ['UnprocessedTraceSegment']
        {
          id: 'id',
          error_code: 'error_code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::UnprocessedTraceSegment.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
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
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateGroup
    class UpdateGroup
      def self.default(visited=[])
        {
          group: Group.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Group'] = Stubs::Group.stub(stub[:group]) unless stub[:group].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateSamplingRule
    class UpdateSamplingRule
      def self.default(visited=[])
        {
          sampling_rule_record: SamplingRuleRecord.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SamplingRuleRecord'] = Stubs::SamplingRuleRecord.stub(stub[:sampling_rule_record]) unless stub[:sampling_rule_record].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
