# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodeGuruProfiler
  module Parsers

    # Operation Parser for AddNotificationChannels
    class AddNotificationChannels
      def self.parse(http_resp)
        data = Types::AddNotificationChannelsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.notification_configuration = (Parsers::NotificationConfiguration.parse(map['notificationConfiguration']) unless map['notificationConfiguration'].nil?)
        data
      end
    end

    class NotificationConfiguration
      def self.parse(map)
        data = Types::NotificationConfiguration.new
        data.channels = (Parsers::Channels.parse(map['channels']) unless map['channels'].nil?)
        return data
      end
    end

    class Channels
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Channel.parse(value) unless value.nil?
        end
        data
      end
    end

    class Channel
      def self.parse(map)
        data = Types::Channel.new
        data.id = map['id']
        data.uri = map['uri']
        data.event_publishers = (Parsers::EventPublishers.parse(map['eventPublishers']) unless map['eventPublishers'].nil?)
        return data
      end
    end

    class EventPublishers
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for BatchGetFrameMetricData
    class BatchGetFrameMetricData
      def self.parse(http_resp)
        data = Types::BatchGetFrameMetricDataOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.start_time = Time.parse(map['startTime']) if map['startTime']
        data.end_time = Time.parse(map['endTime']) if map['endTime']
        data.resolution = map['resolution']
        data.end_times = (Parsers::ListOfTimestamps.parse(map['endTimes']) unless map['endTimes'].nil?)
        data.unprocessed_end_times = (Parsers::UnprocessedEndTimeMap.parse(map['unprocessedEndTimes']) unless map['unprocessedEndTimes'].nil?)
        data.frame_metric_data = (Parsers::FrameMetricData.parse(map['frameMetricData']) unless map['frameMetricData'].nil?)
        data
      end
    end

    class FrameMetricData
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::FrameMetricDatum.parse(value) unless value.nil?
        end
        data
      end
    end

    class FrameMetricDatum
      def self.parse(map)
        data = Types::FrameMetricDatum.new
        data.frame_metric = (Parsers::FrameMetric.parse(map['frameMetric']) unless map['frameMetric'].nil?)
        data.values = (Parsers::FrameMetricValues.parse(map['values']) unless map['values'].nil?)
        return data
      end
    end

    class FrameMetricValues
      def self.parse(list)
        data = []
        list.map do |value|
          data << Hearth::NumberHelper.deserialize(value) unless value.nil?
        end
        data
      end
    end

    class FrameMetric
      def self.parse(map)
        data = Types::FrameMetric.new
        data.frame_name = map['frameName']
        data.type = map['type']
        data.thread_states = (Parsers::ThreadStates.parse(map['threadStates']) unless map['threadStates'].nil?)
        return data
      end
    end

    class ThreadStates
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class UnprocessedEndTimeMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::ListOfTimestamps.parse(value) unless value.nil?
        end
        data
      end
    end

    class ListOfTimestamps
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::TimestampStructure.parse(value) unless value.nil?
        end
        data
      end
    end

    class TimestampStructure
      def self.parse(map)
        data = Types::TimestampStructure.new
        data.value = Time.parse(map['value']) if map['value']
        return data
      end
    end

    # Operation Parser for ConfigureAgent
    class ConfigureAgent
      def self.parse(http_resp)
        data = Types::ConfigureAgentOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.configuration = Parsers::AgentConfiguration.parse(json)
        data
      end
    end

    class AgentConfiguration
      def self.parse(map)
        data = Types::AgentConfiguration.new
        data.should_profile = map['shouldProfile']
        data.period_in_seconds = map['periodInSeconds']
        data.agent_parameters = (Parsers::AgentParameters.parse(map['agentParameters']) unless map['agentParameters'].nil?)
        return data
      end
    end

    class AgentParameters
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateProfilingGroup
    class CreateProfilingGroup
      def self.parse(http_resp)
        data = Types::CreateProfilingGroupOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.profiling_group = Parsers::ProfilingGroupDescription.parse(json)
        data
      end
    end

    class ProfilingGroupDescription
      def self.parse(map)
        data = Types::ProfilingGroupDescription.new
        data.name = map['name']
        data.agent_orchestration_config = (Parsers::AgentOrchestrationConfig.parse(map['agentOrchestrationConfig']) unless map['agentOrchestrationConfig'].nil?)
        data.arn = map['arn']
        data.created_at = Time.parse(map['createdAt']) if map['createdAt']
        data.updated_at = Time.parse(map['updatedAt']) if map['updatedAt']
        data.profiling_status = (Parsers::ProfilingStatus.parse(map['profilingStatus']) unless map['profilingStatus'].nil?)
        data.compute_platform = map['computePlatform']
        data.tags = (Parsers::TagsMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class TagsMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ProfilingStatus
      def self.parse(map)
        data = Types::ProfilingStatus.new
        data.latest_agent_profile_reported_at = Time.parse(map['latestAgentProfileReportedAt']) if map['latestAgentProfileReportedAt']
        data.latest_aggregated_profile = (Parsers::AggregatedProfileTime.parse(map['latestAggregatedProfile']) unless map['latestAggregatedProfile'].nil?)
        data.latest_agent_orchestrated_at = Time.parse(map['latestAgentOrchestratedAt']) if map['latestAgentOrchestratedAt']
        return data
      end
    end

    class AggregatedProfileTime
      def self.parse(map)
        data = Types::AggregatedProfileTime.new
        data.start = Time.parse(map['start']) if map['start']
        data.period = map['period']
        return data
      end
    end

    class AgentOrchestrationConfig
      def self.parse(map)
        data = Types::AgentOrchestrationConfig.new
        data.profiling_enabled = map['profilingEnabled']
        return data
      end
    end

    # Operation Parser for DeleteProfilingGroup
    class DeleteProfilingGroup
      def self.parse(http_resp)
        data = Types::DeleteProfilingGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeProfilingGroup
    class DescribeProfilingGroup
      def self.parse(http_resp)
        data = Types::DescribeProfilingGroupOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.profiling_group = Parsers::ProfilingGroupDescription.parse(json)
        data
      end
    end

    # Operation Parser for GetFindingsReportAccountSummary
    class GetFindingsReportAccountSummary
      def self.parse(http_resp)
        data = Types::GetFindingsReportAccountSummaryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.report_summaries = (Parsers::FindingsReportSummaries.parse(map['reportSummaries']) unless map['reportSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class FindingsReportSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::FindingsReportSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class FindingsReportSummary
      def self.parse(map)
        data = Types::FindingsReportSummary.new
        data.id = map['id']
        data.profiling_group_name = map['profilingGroupName']
        data.profile_start_time = Time.parse(map['profileStartTime']) if map['profileStartTime']
        data.profile_end_time = Time.parse(map['profileEndTime']) if map['profileEndTime']
        data.total_number_of_findings = map['totalNumberOfFindings']
        return data
      end
    end

    # Operation Parser for GetNotificationConfiguration
    class GetNotificationConfiguration
      def self.parse(http_resp)
        data = Types::GetNotificationConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.notification_configuration = (Parsers::NotificationConfiguration.parse(map['notificationConfiguration']) unless map['notificationConfiguration'].nil?)
        data
      end
    end

    # Operation Parser for GetPolicy
    class GetPolicy
      def self.parse(http_resp)
        data = Types::GetPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policy = map['policy']
        data.revision_id = map['revisionId']
        data
      end
    end

    # Operation Parser for GetProfile
    class GetProfile
      def self.parse(http_resp)
        data = Types::GetProfileOutput.new
        data.content_type = http_resp.headers['Content-Type']
        data.content_encoding = http_resp.headers['Content-Encoding']
        payload = http_resp.body.read
        data.profile = payload unless payload.empty?
        data
      end
    end

    # Operation Parser for GetRecommendations
    class GetRecommendations
      def self.parse(http_resp)
        data = Types::GetRecommendationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.profiling_group_name = map['profilingGroupName']
        data.profile_start_time = Time.parse(map['profileStartTime']) if map['profileStartTime']
        data.profile_end_time = Time.parse(map['profileEndTime']) if map['profileEndTime']
        data.recommendations = (Parsers::Recommendations.parse(map['recommendations']) unless map['recommendations'].nil?)
        data.anomalies = (Parsers::Anomalies.parse(map['anomalies']) unless map['anomalies'].nil?)
        data
      end
    end

    class Anomalies
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Anomaly.parse(value) unless value.nil?
        end
        data
      end
    end

    class Anomaly
      def self.parse(map)
        data = Types::Anomaly.new
        data.metric = (Parsers::Metric.parse(map['metric']) unless map['metric'].nil?)
        data.reason = map['reason']
        data.instances = (Parsers::AnomalyInstances.parse(map['instances']) unless map['instances'].nil?)
        return data
      end
    end

    class AnomalyInstances
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AnomalyInstance.parse(value) unless value.nil?
        end
        data
      end
    end

    class AnomalyInstance
      def self.parse(map)
        data = Types::AnomalyInstance.new
        data.id = map['id']
        data.start_time = Time.parse(map['startTime']) if map['startTime']
        data.end_time = Time.parse(map['endTime']) if map['endTime']
        data.user_feedback = (Parsers::UserFeedback.parse(map['userFeedback']) unless map['userFeedback'].nil?)
        return data
      end
    end

    class UserFeedback
      def self.parse(map)
        data = Types::UserFeedback.new
        data.type = map['type']
        return data
      end
    end

    class Metric
      def self.parse(map)
        data = Types::Metric.new
        data.frame_name = map['frameName']
        data.type = map['type']
        data.thread_states = (Parsers::Strings.parse(map['threadStates']) unless map['threadStates'].nil?)
        return data
      end
    end

    class Strings
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
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
        data.all_matches_count = map['allMatchesCount']
        data.all_matches_sum = Hearth::NumberHelper.deserialize(map['allMatchesSum'])
        data.pattern = (Parsers::Pattern.parse(map['pattern']) unless map['pattern'].nil?)
        data.top_matches = (Parsers::Matches.parse(map['topMatches']) unless map['topMatches'].nil?)
        data.start_time = Time.parse(map['startTime']) if map['startTime']
        data.end_time = Time.parse(map['endTime']) if map['endTime']
        return data
      end
    end

    class Matches
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Match.parse(value) unless value.nil?
        end
        data
      end
    end

    class Match
      def self.parse(map)
        data = Types::Match.new
        data.target_frames_index = map['targetFramesIndex']
        data.frame_address = map['frameAddress']
        data.threshold_breach_value = Hearth::NumberHelper.deserialize(map['thresholdBreachValue'])
        return data
      end
    end

    class Pattern
      def self.parse(map)
        data = Types::Pattern.new
        data.id = map['id']
        data.name = map['name']
        data.description = map['description']
        data.resolution_steps = map['resolutionSteps']
        data.target_frames = (Parsers::TargetFrames.parse(map['targetFrames']) unless map['targetFrames'].nil?)
        data.threshold_percent = Hearth::NumberHelper.deserialize(map['thresholdPercent'])
        data.counters_to_aggregate = (Parsers::Strings.parse(map['countersToAggregate']) unless map['countersToAggregate'].nil?)
        return data
      end
    end

    class TargetFrames
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::TargetFrame.parse(value) unless value.nil?
        end
        data
      end
    end

    class TargetFrame
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListFindingsReports
    class ListFindingsReports
      def self.parse(http_resp)
        data = Types::ListFindingsReportsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.findings_report_summaries = (Parsers::FindingsReportSummaries.parse(map['findingsReportSummaries']) unless map['findingsReportSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListProfileTimes
    class ListProfileTimes
      def self.parse(http_resp)
        data = Types::ListProfileTimesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.profile_times = (Parsers::ProfileTimes.parse(map['profileTimes']) unless map['profileTimes'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ProfileTimes
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ProfileTime.parse(value) unless value.nil?
        end
        data
      end
    end

    class ProfileTime
      def self.parse(map)
        data = Types::ProfileTime.new
        data.start = Time.parse(map['start']) if map['start']
        return data
      end
    end

    # Operation Parser for ListProfilingGroups
    class ListProfilingGroups
      def self.parse(http_resp)
        data = Types::ListProfilingGroupsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.profiling_group_names = (Parsers::ProfilingGroupNames.parse(map['profilingGroupNames']) unless map['profilingGroupNames'].nil?)
        data.profiling_groups = (Parsers::ProfilingGroupDescriptions.parse(map['profilingGroups']) unless map['profilingGroups'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ProfilingGroupDescriptions
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ProfilingGroupDescription.parse(value) unless value.nil?
        end
        data
      end
    end

    class ProfilingGroupNames
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagsMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for PostAgentProfile
    class PostAgentProfile
      def self.parse(http_resp)
        data = Types::PostAgentProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for PutPermission
    class PutPermission
      def self.parse(http_resp)
        data = Types::PutPermissionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policy = map['policy']
        data.revision_id = map['revisionId']
        data
      end
    end

    # Operation Parser for RemoveNotificationChannel
    class RemoveNotificationChannel
      def self.parse(http_resp)
        data = Types::RemoveNotificationChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.notification_configuration = (Parsers::NotificationConfiguration.parse(map['notificationConfiguration']) unless map['notificationConfiguration'].nil?)
        data
      end
    end

    # Operation Parser for RemovePermission
    class RemovePermission
      def self.parse(http_resp)
        data = Types::RemovePermissionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policy = map['policy']
        data.revision_id = map['revisionId']
        data
      end
    end

    # Operation Parser for SubmitFeedback
    class SubmitFeedback
      def self.parse(http_resp)
        data = Types::SubmitFeedbackOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
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

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateProfilingGroup
    class UpdateProfilingGroup
      def self.parse(http_resp)
        data = Types::UpdateProfilingGroupOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.profiling_group = Parsers::ProfilingGroupDescription.parse(json)
        data
      end
    end
  end
end
