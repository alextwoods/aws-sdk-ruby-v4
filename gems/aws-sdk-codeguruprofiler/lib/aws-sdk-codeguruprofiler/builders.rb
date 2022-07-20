# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::CodeGuruProfiler
  module Builders

    # Operation Builder for AddNotificationChannels
    class AddNotificationChannels
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:profiling_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :profiling_group_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/profilingGroups/%<profilingGroupName>s/notificationConfiguration',
            profilingGroupName: Hearth::HTTP.uri_escape(input[:profiling_group_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['channels'] = Channels.build(input[:channels]) unless input[:channels].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Channels
    class Channels
      def self.build(input)
        data = []
        input.each do |element|
          data << Channel.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Channel
    class Channel
      def self.build(input)
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data['uri'] = input[:uri] unless input[:uri].nil?
        data['eventPublishers'] = EventPublishers.build(input[:event_publishers]) unless input[:event_publishers].nil?
        data
      end
    end

    # List Builder for EventPublishers
    class EventPublishers
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchGetFrameMetricData
    class BatchGetFrameMetricData
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:profiling_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :profiling_group_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/profilingGroups/%<profilingGroupName>s/frames/-/metrics',
            profilingGroupName: Hearth::HTTP.uri_escape(input[:profiling_group_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['startTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params['endTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        params['period'] = input[:period].to_s unless input[:period].nil?
        params['targetResolution'] = input[:target_resolution].to_s unless input[:target_resolution].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['frameMetrics'] = FrameMetrics.build(input[:frame_metrics]) unless input[:frame_metrics].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for FrameMetrics
    class FrameMetrics
      def self.build(input)
        data = []
        input.each do |element|
          data << FrameMetric.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for FrameMetric
    class FrameMetric
      def self.build(input)
        data = {}
        data['frameName'] = input[:frame_name] unless input[:frame_name].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['threadStates'] = ThreadStates.build(input[:thread_states]) unless input[:thread_states].nil?
        data
      end
    end

    # List Builder for ThreadStates
    class ThreadStates
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ConfigureAgent
    class ConfigureAgent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:profiling_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :profiling_group_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/profilingGroups/%<profilingGroupName>s/configureAgent',
            profilingGroupName: Hearth::HTTP.uri_escape(input[:profiling_group_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['fleetInstanceId'] = input[:fleet_instance_id] unless input[:fleet_instance_id].nil?
        data['metadata'] = Metadata.build(input[:metadata]) unless input[:metadata].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for Metadata
    class Metadata
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateProfilingGroup
    class CreateProfilingGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/profilingGroups')
        params = Hearth::Query::ParamList.new
        params['clientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['profilingGroupName'] = input[:profiling_group_name] unless input[:profiling_group_name].nil?
        data['computePlatform'] = input[:compute_platform] unless input[:compute_platform].nil?
        data['agentOrchestrationConfig'] = AgentOrchestrationConfig.build(input[:agent_orchestration_config]) unless input[:agent_orchestration_config].nil?
        data['tags'] = TagsMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagsMap
    class TagsMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for AgentOrchestrationConfig
    class AgentOrchestrationConfig
      def self.build(input)
        data = {}
        data['profilingEnabled'] = input[:profiling_enabled] unless input[:profiling_enabled].nil?
        data
      end
    end

    # Operation Builder for DeleteProfilingGroup
    class DeleteProfilingGroup
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:profiling_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :profiling_group_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/profilingGroups/%<profilingGroupName>s',
            profilingGroupName: Hearth::HTTP.uri_escape(input[:profiling_group_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeProfilingGroup
    class DescribeProfilingGroup
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:profiling_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :profiling_group_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/profilingGroups/%<profilingGroupName>s',
            profilingGroupName: Hearth::HTTP.uri_escape(input[:profiling_group_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetFindingsReportAccountSummary
    class GetFindingsReportAccountSummary
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/internal/findingsReports')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['dailyReportsOnly'] = input[:daily_reports_only].to_s unless input[:daily_reports_only].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetNotificationConfiguration
    class GetNotificationConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:profiling_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :profiling_group_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/profilingGroups/%<profilingGroupName>s/notificationConfiguration',
            profilingGroupName: Hearth::HTTP.uri_escape(input[:profiling_group_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetPolicy
    class GetPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:profiling_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :profiling_group_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/profilingGroups/%<profilingGroupName>s/policy',
            profilingGroupName: Hearth::HTTP.uri_escape(input[:profiling_group_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetProfile
    class GetProfile
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:profiling_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :profiling_group_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/profilingGroups/%<profilingGroupName>s/profile',
            profilingGroupName: Hearth::HTTP.uri_escape(input[:profiling_group_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['startTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params['period'] = input[:period].to_s unless input[:period].nil?
        params['endTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        params['maxDepth'] = input[:max_depth].to_s unless input[:max_depth].nil?
        http_req.append_query_params(params)
        http_req.headers['Accept'] = input[:accept] unless input[:accept].nil? || input[:accept].empty?
      end
    end

    # Operation Builder for GetRecommendations
    class GetRecommendations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:profiling_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :profiling_group_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/internal/profilingGroups/%<profilingGroupName>s/recommendations',
            profilingGroupName: Hearth::HTTP.uri_escape(input[:profiling_group_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['startTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params['endTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        params['locale'] = input[:locale].to_s unless input[:locale].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListFindingsReports
    class ListFindingsReports
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:profiling_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :profiling_group_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/internal/profilingGroups/%<profilingGroupName>s/findingsReports',
            profilingGroupName: Hearth::HTTP.uri_escape(input[:profiling_group_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['startTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params['endTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['dailyReportsOnly'] = input[:daily_reports_only].to_s unless input[:daily_reports_only].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListProfileTimes
    class ListProfileTimes
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:profiling_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :profiling_group_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/profilingGroups/%<profilingGroupName>s/profileTimes',
            profilingGroupName: Hearth::HTTP.uri_escape(input[:profiling_group_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['startTime'] = Hearth::TimeHelper.to_date_time(input[:start_time]) unless input[:start_time].nil?
        params['endTime'] = Hearth::TimeHelper.to_date_time(input[:end_time]) unless input[:end_time].nil?
        params['period'] = input[:period].to_s unless input[:period].nil?
        params['orderBy'] = input[:order_by].to_s unless input[:order_by].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListProfilingGroups
    class ListProfilingGroups
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/profilingGroups')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['includeDescription'] = input[:include_description].to_s unless input[:include_description].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PostAgentProfile
    class PostAgentProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:profiling_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :profiling_group_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/profilingGroups/%<profilingGroupName>s/agentProfile',
            profilingGroupName: Hearth::HTTP.uri_escape(input[:profiling_group_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['profileToken'] = input[:profile_token].to_s unless input[:profile_token].nil?
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/octet-stream'
        http_req.body = ::StringIO.new(input[:agent_profile] || '')
        http_req.headers['Content-Type'] = input[:content_type] unless input[:content_type].nil? || input[:content_type].empty?
      end
    end

    # Operation Builder for PutPermission
    class PutPermission
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:profiling_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :profiling_group_name cannot be nil or empty."
        end
        if input[:action_group].to_s.empty?
          raise ArgumentError, "HTTP label :action_group cannot be nil or empty."
        end
        http_req.append_path(format(
            '/profilingGroups/%<profilingGroupName>s/policy/%<actionGroup>s',
            profilingGroupName: Hearth::HTTP.uri_escape(input[:profiling_group_name].to_s),
            actionGroup: Hearth::HTTP.uri_escape(input[:action_group].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['principals'] = Principals.build(input[:principals]) unless input[:principals].nil?
        data['revisionId'] = input[:revision_id] unless input[:revision_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Principals
    class Principals
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for RemoveNotificationChannel
    class RemoveNotificationChannel
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:profiling_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :profiling_group_name cannot be nil or empty."
        end
        if input[:channel_id].to_s.empty?
          raise ArgumentError, "HTTP label :channel_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/profilingGroups/%<profilingGroupName>s/notificationConfiguration/%<channelId>s',
            profilingGroupName: Hearth::HTTP.uri_escape(input[:profiling_group_name].to_s),
            channelId: Hearth::HTTP.uri_escape(input[:channel_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for RemovePermission
    class RemovePermission
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:profiling_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :profiling_group_name cannot be nil or empty."
        end
        if input[:action_group].to_s.empty?
          raise ArgumentError, "HTTP label :action_group cannot be nil or empty."
        end
        http_req.append_path(format(
            '/profilingGroups/%<profilingGroupName>s/policy/%<actionGroup>s',
            profilingGroupName: Hearth::HTTP.uri_escape(input[:profiling_group_name].to_s),
            actionGroup: Hearth::HTTP.uri_escape(input[:action_group].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['revisionId'] = input[:revision_id].to_s unless input[:revision_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for SubmitFeedback
    class SubmitFeedback
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:profiling_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :profiling_group_name cannot be nil or empty."
        end
        if input[:anomaly_instance_id].to_s.empty?
          raise ArgumentError, "HTTP label :anomaly_instance_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/internal/profilingGroups/%<profilingGroupName>s/anomalies/%<anomalyInstanceId>s/feedback',
            profilingGroupName: Hearth::HTTP.uri_escape(input[:profiling_group_name].to_s),
            anomalyInstanceId: Hearth::HTTP.uri_escape(input[:anomaly_instance_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['comment'] = input[:comment] unless input[:comment].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = TagsMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for TagKeys
    class TagKeys
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateProfilingGroup
    class UpdateProfilingGroup
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:profiling_group_name].to_s.empty?
          raise ArgumentError, "HTTP label :profiling_group_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/profilingGroups/%<profilingGroupName>s',
            profilingGroupName: Hearth::HTTP.uri_escape(input[:profiling_group_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['agentOrchestrationConfig'] = AgentOrchestrationConfig.build(input[:agent_orchestration_config]) unless input[:agent_orchestration_config].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
