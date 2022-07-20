# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::CodeGuruProfiler
  module Stubs

    # Operation Stubber for AddNotificationChannels
    class AddNotificationChannels
      def self.default(visited=[])
        {
          notification_configuration: NotificationConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['notificationConfiguration'] = NotificationConfiguration.stub(stub[:notification_configuration]) unless stub[:notification_configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for NotificationConfiguration
    class NotificationConfiguration
      def self.default(visited=[])
        return nil if visited.include?('NotificationConfiguration')
        visited = visited + ['NotificationConfiguration']
        {
          channels: Channels.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NotificationConfiguration.new
        data = {}
        data['channels'] = Channels.stub(stub[:channels]) unless stub[:channels].nil?
        data
      end
    end

    # List Stubber for Channels
    class Channels
      def self.default(visited=[])
        return nil if visited.include?('Channels')
        visited = visited + ['Channels']
        [
          Channel.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Channel.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Channel
    class Channel
      def self.default(visited=[])
        return nil if visited.include?('Channel')
        visited = visited + ['Channel']
        {
          id: 'id',
          uri: 'uri',
          event_publishers: EventPublishers.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Channel.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['uri'] = stub[:uri] unless stub[:uri].nil?
        data['eventPublishers'] = EventPublishers.stub(stub[:event_publishers]) unless stub[:event_publishers].nil?
        data
      end
    end

    # List Stubber for EventPublishers
    class EventPublishers
      def self.default(visited=[])
        return nil if visited.include?('EventPublishers')
        visited = visited + ['EventPublishers']
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

    # Operation Stubber for BatchGetFrameMetricData
    class BatchGetFrameMetricData
      def self.default(visited=[])
        {
          start_time: Time.now,
          end_time: Time.now,
          resolution: 'resolution',
          end_times: ListOfTimestamps.default(visited),
          unprocessed_end_times: UnprocessedEndTimeMap.default(visited),
          frame_metric_data: FrameMetricData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['startTime'] = Hearth::TimeHelper.to_date_time(stub[:start_time]) unless stub[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_date_time(stub[:end_time]) unless stub[:end_time].nil?
        data['resolution'] = stub[:resolution] unless stub[:resolution].nil?
        data['endTimes'] = ListOfTimestamps.stub(stub[:end_times]) unless stub[:end_times].nil?
        data['unprocessedEndTimes'] = UnprocessedEndTimeMap.stub(stub[:unprocessed_end_times]) unless stub[:unprocessed_end_times].nil?
        data['frameMetricData'] = FrameMetricData.stub(stub[:frame_metric_data]) unless stub[:frame_metric_data].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for FrameMetricData
    class FrameMetricData
      def self.default(visited=[])
        return nil if visited.include?('FrameMetricData')
        visited = visited + ['FrameMetricData']
        [
          FrameMetricDatum.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FrameMetricDatum.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FrameMetricDatum
    class FrameMetricDatum
      def self.default(visited=[])
        return nil if visited.include?('FrameMetricDatum')
        visited = visited + ['FrameMetricDatum']
        {
          frame_metric: FrameMetric.default(visited),
          values: FrameMetricValues.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FrameMetricDatum.new
        data = {}
        data['frameMetric'] = FrameMetric.stub(stub[:frame_metric]) unless stub[:frame_metric].nil?
        data['values'] = FrameMetricValues.stub(stub[:values]) unless stub[:values].nil?
        data
      end
    end

    # List Stubber for FrameMetricValues
    class FrameMetricValues
      def self.default(visited=[])
        return nil if visited.include?('FrameMetricValues')
        visited = visited + ['FrameMetricValues']
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

    # Structure Stubber for FrameMetric
    class FrameMetric
      def self.default(visited=[])
        return nil if visited.include?('FrameMetric')
        visited = visited + ['FrameMetric']
        {
          frame_name: 'frame_name',
          type: 'type',
          thread_states: ThreadStates.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FrameMetric.new
        data = {}
        data['frameName'] = stub[:frame_name] unless stub[:frame_name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['threadStates'] = ThreadStates.stub(stub[:thread_states]) unless stub[:thread_states].nil?
        data
      end
    end

    # List Stubber for ThreadStates
    class ThreadStates
      def self.default(visited=[])
        return nil if visited.include?('ThreadStates')
        visited = visited + ['ThreadStates']
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

    # Map Stubber for UnprocessedEndTimeMap
    class UnprocessedEndTimeMap
      def self.default(visited=[])
        return nil if visited.include?('UnprocessedEndTimeMap')
        visited = visited + ['UnprocessedEndTimeMap']
        {
          test_key: ListOfTimestamps.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = ListOfTimestamps.stub(value) unless value.nil?
        end
        data
      end
    end

    # List Stubber for ListOfTimestamps
    class ListOfTimestamps
      def self.default(visited=[])
        return nil if visited.include?('ListOfTimestamps')
        visited = visited + ['ListOfTimestamps']
        [
          TimestampStructure.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TimestampStructure.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TimestampStructure
    class TimestampStructure
      def self.default(visited=[])
        return nil if visited.include?('TimestampStructure')
        visited = visited + ['TimestampStructure']
        {
          value: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::TimestampStructure.new
        data = {}
        data['value'] = Hearth::TimeHelper.to_date_time(stub[:value]) unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for ConfigureAgent
    class ConfigureAgent
      def self.default(visited=[])
        {
          configuration: AgentConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = AgentConfiguration.stub(stub[:configuration]) unless stub[:configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AgentConfiguration
    class AgentConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AgentConfiguration')
        visited = visited + ['AgentConfiguration']
        {
          should_profile: false,
          period_in_seconds: 1,
          agent_parameters: AgentParameters.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AgentConfiguration.new
        data = {}
        data['shouldProfile'] = stub[:should_profile] unless stub[:should_profile].nil?
        data['periodInSeconds'] = stub[:period_in_seconds] unless stub[:period_in_seconds].nil?
        data['agentParameters'] = AgentParameters.stub(stub[:agent_parameters]) unless stub[:agent_parameters].nil?
        data
      end
    end

    # Map Stubber for AgentParameters
    class AgentParameters
      def self.default(visited=[])
        return nil if visited.include?('AgentParameters')
        visited = visited + ['AgentParameters']
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

    # Operation Stubber for CreateProfilingGroup
    class CreateProfilingGroup
      def self.default(visited=[])
        {
          profiling_group: ProfilingGroupDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data = ProfilingGroupDescription.stub(stub[:profiling_group]) unless stub[:profiling_group].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ProfilingGroupDescription
    class ProfilingGroupDescription
      def self.default(visited=[])
        return nil if visited.include?('ProfilingGroupDescription')
        visited = visited + ['ProfilingGroupDescription']
        {
          name: 'name',
          agent_orchestration_config: AgentOrchestrationConfig.default(visited),
          arn: 'arn',
          created_at: Time.now,
          updated_at: Time.now,
          profiling_status: ProfilingStatus.default(visited),
          compute_platform: 'compute_platform',
          tags: TagsMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProfilingGroupDescription.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['agentOrchestrationConfig'] = AgentOrchestrationConfig.stub(stub[:agent_orchestration_config]) unless stub[:agent_orchestration_config].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['createdAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['updatedAt'] = Hearth::TimeHelper.to_date_time(stub[:updated_at]) unless stub[:updated_at].nil?
        data['profilingStatus'] = ProfilingStatus.stub(stub[:profiling_status]) unless stub[:profiling_status].nil?
        data['computePlatform'] = stub[:compute_platform] unless stub[:compute_platform].nil?
        data['tags'] = TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Map Stubber for TagsMap
    class TagsMap
      def self.default(visited=[])
        return nil if visited.include?('TagsMap')
        visited = visited + ['TagsMap']
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

    # Structure Stubber for ProfilingStatus
    class ProfilingStatus
      def self.default(visited=[])
        return nil if visited.include?('ProfilingStatus')
        visited = visited + ['ProfilingStatus']
        {
          latest_agent_profile_reported_at: Time.now,
          latest_aggregated_profile: AggregatedProfileTime.default(visited),
          latest_agent_orchestrated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ProfilingStatus.new
        data = {}
        data['latestAgentProfileReportedAt'] = Hearth::TimeHelper.to_date_time(stub[:latest_agent_profile_reported_at]) unless stub[:latest_agent_profile_reported_at].nil?
        data['latestAggregatedProfile'] = AggregatedProfileTime.stub(stub[:latest_aggregated_profile]) unless stub[:latest_aggregated_profile].nil?
        data['latestAgentOrchestratedAt'] = Hearth::TimeHelper.to_date_time(stub[:latest_agent_orchestrated_at]) unless stub[:latest_agent_orchestrated_at].nil?
        data
      end
    end

    # Structure Stubber for AggregatedProfileTime
    class AggregatedProfileTime
      def self.default(visited=[])
        return nil if visited.include?('AggregatedProfileTime')
        visited = visited + ['AggregatedProfileTime']
        {
          start: Time.now,
          period: 'period',
        }
      end

      def self.stub(stub)
        stub ||= Types::AggregatedProfileTime.new
        data = {}
        data['start'] = Hearth::TimeHelper.to_date_time(stub[:start]) unless stub[:start].nil?
        data['period'] = stub[:period] unless stub[:period].nil?
        data
      end
    end

    # Structure Stubber for AgentOrchestrationConfig
    class AgentOrchestrationConfig
      def self.default(visited=[])
        return nil if visited.include?('AgentOrchestrationConfig')
        visited = visited + ['AgentOrchestrationConfig']
        {
          profiling_enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AgentOrchestrationConfig.new
        data = {}
        data['profilingEnabled'] = stub[:profiling_enabled] unless stub[:profiling_enabled].nil?
        data
      end
    end

    # Operation Stubber for DeleteProfilingGroup
    class DeleteProfilingGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DescribeProfilingGroup
    class DescribeProfilingGroup
      def self.default(visited=[])
        {
          profiling_group: ProfilingGroupDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = ProfilingGroupDescription.stub(stub[:profiling_group]) unless stub[:profiling_group].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetFindingsReportAccountSummary
    class GetFindingsReportAccountSummary
      def self.default(visited=[])
        {
          report_summaries: FindingsReportSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['reportSummaries'] = FindingsReportSummaries.stub(stub[:report_summaries]) unless stub[:report_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for FindingsReportSummaries
    class FindingsReportSummaries
      def self.default(visited=[])
        return nil if visited.include?('FindingsReportSummaries')
        visited = visited + ['FindingsReportSummaries']
        [
          FindingsReportSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FindingsReportSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FindingsReportSummary
    class FindingsReportSummary
      def self.default(visited=[])
        return nil if visited.include?('FindingsReportSummary')
        visited = visited + ['FindingsReportSummary']
        {
          id: 'id',
          profiling_group_name: 'profiling_group_name',
          profile_start_time: Time.now,
          profile_end_time: Time.now,
          total_number_of_findings: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::FindingsReportSummary.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['profilingGroupName'] = stub[:profiling_group_name] unless stub[:profiling_group_name].nil?
        data['profileStartTime'] = Hearth::TimeHelper.to_date_time(stub[:profile_start_time]) unless stub[:profile_start_time].nil?
        data['profileEndTime'] = Hearth::TimeHelper.to_date_time(stub[:profile_end_time]) unless stub[:profile_end_time].nil?
        data['totalNumberOfFindings'] = stub[:total_number_of_findings] unless stub[:total_number_of_findings].nil?
        data
      end
    end

    # Operation Stubber for GetNotificationConfiguration
    class GetNotificationConfiguration
      def self.default(visited=[])
        {
          notification_configuration: NotificationConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['notificationConfiguration'] = NotificationConfiguration.stub(stub[:notification_configuration]) unless stub[:notification_configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetPolicy
    class GetPolicy
      def self.default(visited=[])
        {
          policy: 'policy',
          revision_id: 'revision_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['policy'] = stub[:policy] unless stub[:policy].nil?
        data['revisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetProfile
    class GetProfile
      def self.default(visited=[])
        {
          profile: 'profile',
          content_type: 'content_type',
          content_encoding: 'content_encoding',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = stub[:content_type] unless stub[:content_type].nil? || stub[:content_type].empty?
        http_resp.headers['Content-Encoding'] = stub[:content_encoding] unless stub[:content_encoding].nil? || stub[:content_encoding].empty?
        http_resp.headers['Content-Type'] = 'application/octet-stream'
        http_resp.body = ::StringIO.new(stub[:profile] || '')
      end
    end

    # Operation Stubber for GetRecommendations
    class GetRecommendations
      def self.default(visited=[])
        {
          profiling_group_name: 'profiling_group_name',
          profile_start_time: Time.now,
          profile_end_time: Time.now,
          recommendations: Recommendations.default(visited),
          anomalies: Anomalies.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['profilingGroupName'] = stub[:profiling_group_name] unless stub[:profiling_group_name].nil?
        data['profileStartTime'] = Hearth::TimeHelper.to_date_time(stub[:profile_start_time]) unless stub[:profile_start_time].nil?
        data['profileEndTime'] = Hearth::TimeHelper.to_date_time(stub[:profile_end_time]) unless stub[:profile_end_time].nil?
        data['recommendations'] = Recommendations.stub(stub[:recommendations]) unless stub[:recommendations].nil?
        data['anomalies'] = Anomalies.stub(stub[:anomalies]) unless stub[:anomalies].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Anomalies
    class Anomalies
      def self.default(visited=[])
        return nil if visited.include?('Anomalies')
        visited = visited + ['Anomalies']
        [
          Anomaly.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Anomaly.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Anomaly
    class Anomaly
      def self.default(visited=[])
        return nil if visited.include?('Anomaly')
        visited = visited + ['Anomaly']
        {
          metric: Metric.default(visited),
          reason: 'reason',
          instances: AnomalyInstances.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Anomaly.new
        data = {}
        data['metric'] = Metric.stub(stub[:metric]) unless stub[:metric].nil?
        data['reason'] = stub[:reason] unless stub[:reason].nil?
        data['instances'] = AnomalyInstances.stub(stub[:instances]) unless stub[:instances].nil?
        data
      end
    end

    # List Stubber for AnomalyInstances
    class AnomalyInstances
      def self.default(visited=[])
        return nil if visited.include?('AnomalyInstances')
        visited = visited + ['AnomalyInstances']
        [
          AnomalyInstance.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AnomalyInstance.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AnomalyInstance
    class AnomalyInstance
      def self.default(visited=[])
        return nil if visited.include?('AnomalyInstance')
        visited = visited + ['AnomalyInstance']
        {
          id: 'id',
          start_time: Time.now,
          end_time: Time.now,
          user_feedback: UserFeedback.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AnomalyInstance.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['startTime'] = Hearth::TimeHelper.to_date_time(stub[:start_time]) unless stub[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_date_time(stub[:end_time]) unless stub[:end_time].nil?
        data['userFeedback'] = UserFeedback.stub(stub[:user_feedback]) unless stub[:user_feedback].nil?
        data
      end
    end

    # Structure Stubber for UserFeedback
    class UserFeedback
      def self.default(visited=[])
        return nil if visited.include?('UserFeedback')
        visited = visited + ['UserFeedback']
        {
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::UserFeedback.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for Metric
    class Metric
      def self.default(visited=[])
        return nil if visited.include?('Metric')
        visited = visited + ['Metric']
        {
          frame_name: 'frame_name',
          type: 'type',
          thread_states: Strings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Metric.new
        data = {}
        data['frameName'] = stub[:frame_name] unless stub[:frame_name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['threadStates'] = Strings.stub(stub[:thread_states]) unless stub[:thread_states].nil?
        data
      end
    end

    # List Stubber for Strings
    class Strings
      def self.default(visited=[])
        return nil if visited.include?('Strings')
        visited = visited + ['Strings']
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

    # List Stubber for Recommendations
    class Recommendations
      def self.default(visited=[])
        return nil if visited.include?('Recommendations')
        visited = visited + ['Recommendations']
        [
          Recommendation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Recommendation.stub(element) unless element.nil?
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
          all_matches_count: 1,
          all_matches_sum: 1.0,
          pattern: Pattern.default(visited),
          top_matches: Matches.default(visited),
          start_time: Time.now,
          end_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Recommendation.new
        data = {}
        data['allMatchesCount'] = stub[:all_matches_count] unless stub[:all_matches_count].nil?
        data['allMatchesSum'] = Hearth::NumberHelper.serialize(stub[:all_matches_sum])
        data['pattern'] = Pattern.stub(stub[:pattern]) unless stub[:pattern].nil?
        data['topMatches'] = Matches.stub(stub[:top_matches]) unless stub[:top_matches].nil?
        data['startTime'] = Hearth::TimeHelper.to_date_time(stub[:start_time]) unless stub[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_date_time(stub[:end_time]) unless stub[:end_time].nil?
        data
      end
    end

    # List Stubber for Matches
    class Matches
      def self.default(visited=[])
        return nil if visited.include?('Matches')
        visited = visited + ['Matches']
        [
          Match.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Match.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Match
    class Match
      def self.default(visited=[])
        return nil if visited.include?('Match')
        visited = visited + ['Match']
        {
          target_frames_index: 1,
          frame_address: 'frame_address',
          threshold_breach_value: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::Match.new
        data = {}
        data['targetFramesIndex'] = stub[:target_frames_index] unless stub[:target_frames_index].nil?
        data['frameAddress'] = stub[:frame_address] unless stub[:frame_address].nil?
        data['thresholdBreachValue'] = Hearth::NumberHelper.serialize(stub[:threshold_breach_value])
        data
      end
    end

    # Structure Stubber for Pattern
    class Pattern
      def self.default(visited=[])
        return nil if visited.include?('Pattern')
        visited = visited + ['Pattern']
        {
          id: 'id',
          name: 'name',
          description: 'description',
          resolution_steps: 'resolution_steps',
          target_frames: TargetFrames.default(visited),
          threshold_percent: 1.0,
          counters_to_aggregate: Strings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Pattern.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['resolutionSteps'] = stub[:resolution_steps] unless stub[:resolution_steps].nil?
        data['targetFrames'] = TargetFrames.stub(stub[:target_frames]) unless stub[:target_frames].nil?
        data['thresholdPercent'] = Hearth::NumberHelper.serialize(stub[:threshold_percent])
        data['countersToAggregate'] = Strings.stub(stub[:counters_to_aggregate]) unless stub[:counters_to_aggregate].nil?
        data
      end
    end

    # List Stubber for TargetFrames
    class TargetFrames
      def self.default(visited=[])
        return nil if visited.include?('TargetFrames')
        visited = visited + ['TargetFrames']
        [
          TargetFrame.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TargetFrame.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for TargetFrame
    class TargetFrame
      def self.default(visited=[])
        return nil if visited.include?('TargetFrame')
        visited = visited + ['TargetFrame']
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

    # Operation Stubber for ListFindingsReports
    class ListFindingsReports
      def self.default(visited=[])
        {
          findings_report_summaries: FindingsReportSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['findingsReportSummaries'] = FindingsReportSummaries.stub(stub[:findings_report_summaries]) unless stub[:findings_report_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListProfileTimes
    class ListProfileTimes
      def self.default(visited=[])
        {
          profile_times: ProfileTimes.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['profileTimes'] = ProfileTimes.stub(stub[:profile_times]) unless stub[:profile_times].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ProfileTimes
    class ProfileTimes
      def self.default(visited=[])
        return nil if visited.include?('ProfileTimes')
        visited = visited + ['ProfileTimes']
        [
          ProfileTime.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProfileTime.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProfileTime
    class ProfileTime
      def self.default(visited=[])
        return nil if visited.include?('ProfileTime')
        visited = visited + ['ProfileTime']
        {
          start: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ProfileTime.new
        data = {}
        data['start'] = Hearth::TimeHelper.to_date_time(stub[:start]) unless stub[:start].nil?
        data
      end
    end

    # Operation Stubber for ListProfilingGroups
    class ListProfilingGroups
      def self.default(visited=[])
        {
          profiling_group_names: ProfilingGroupNames.default(visited),
          profiling_groups: ProfilingGroupDescriptions.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['profilingGroupNames'] = ProfilingGroupNames.stub(stub[:profiling_group_names]) unless stub[:profiling_group_names].nil?
        data['profilingGroups'] = ProfilingGroupDescriptions.stub(stub[:profiling_groups]) unless stub[:profiling_groups].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ProfilingGroupDescriptions
    class ProfilingGroupDescriptions
      def self.default(visited=[])
        return nil if visited.include?('ProfilingGroupDescriptions')
        visited = visited + ['ProfilingGroupDescriptions']
        [
          ProfilingGroupDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProfilingGroupDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for ProfilingGroupNames
    class ProfilingGroupNames
      def self.default(visited=[])
        return nil if visited.include?('ProfilingGroupNames')
        visited = visited + ['ProfilingGroupNames']
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

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagsMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PostAgentProfile
    class PostAgentProfile
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for PutPermission
    class PutPermission
      def self.default(visited=[])
        {
          policy: 'policy',
          revision_id: 'revision_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['policy'] = stub[:policy] unless stub[:policy].nil?
        data['revisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RemoveNotificationChannel
    class RemoveNotificationChannel
      def self.default(visited=[])
        {
          notification_configuration: NotificationConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['notificationConfiguration'] = NotificationConfiguration.stub(stub[:notification_configuration]) unless stub[:notification_configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RemovePermission
    class RemovePermission
      def self.default(visited=[])
        {
          policy: 'policy',
          revision_id: 'revision_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['policy'] = stub[:policy] unless stub[:policy].nil?
        data['revisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for SubmitFeedback
    class SubmitFeedback
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
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
        http_resp.status = 204
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
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateProfilingGroup
    class UpdateProfilingGroup
      def self.default(visited=[])
        {
          profiling_group: ProfilingGroupDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = ProfilingGroupDescription.stub(stub[:profiling_group]) unless stub[:profiling_group].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
