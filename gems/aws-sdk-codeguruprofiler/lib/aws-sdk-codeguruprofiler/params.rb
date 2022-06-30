# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::CodeGuruProfiler
  module Params

    module AddNotificationChannelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddNotificationChannelsInput, context: context)
        type = Types::AddNotificationChannelsInput.new
        type.profiling_group_name = params[:profiling_group_name]
        type.channels = Channels.build(params[:channels], context: "#{context}[:channels]") unless params[:channels].nil?
        type
      end
    end

    module AddNotificationChannelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddNotificationChannelsOutput, context: context)
        type = Types::AddNotificationChannelsOutput.new
        type.notification_configuration = NotificationConfiguration.build(params[:notification_configuration], context: "#{context}[:notification_configuration]") unless params[:notification_configuration].nil?
        type
      end
    end

    module AgentConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AgentConfiguration, context: context)
        type = Types::AgentConfiguration.new
        type.should_profile = params[:should_profile]
        type.period_in_seconds = params[:period_in_seconds]
        type.agent_parameters = AgentParameters.build(params[:agent_parameters], context: "#{context}[:agent_parameters]") unless params[:agent_parameters].nil?
        type
      end
    end

    module AgentOrchestrationConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AgentOrchestrationConfig, context: context)
        type = Types::AgentOrchestrationConfig.new
        type.profiling_enabled = params[:profiling_enabled]
        type
      end
    end

    module AgentParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module AggregatedProfileTime
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AggregatedProfileTime, context: context)
        type = Types::AggregatedProfileTime.new
        type.start = params[:start]
        type.period = params[:period]
        type
      end
    end

    module Anomalies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Anomaly.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Anomaly
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Anomaly, context: context)
        type = Types::Anomaly.new
        type.metric = Metric.build(params[:metric], context: "#{context}[:metric]") unless params[:metric].nil?
        type.reason = params[:reason]
        type.instances = AnomalyInstances.build(params[:instances], context: "#{context}[:instances]") unless params[:instances].nil?
        type
      end
    end

    module AnomalyInstance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnomalyInstance, context: context)
        type = Types::AnomalyInstance.new
        type.id = params[:id]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.user_feedback = UserFeedback.build(params[:user_feedback], context: "#{context}[:user_feedback]") unless params[:user_feedback].nil?
        type
      end
    end

    module AnomalyInstances
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AnomalyInstance.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchGetFrameMetricDataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetFrameMetricDataInput, context: context)
        type = Types::BatchGetFrameMetricDataInput.new
        type.profiling_group_name = params[:profiling_group_name]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.period = params[:period]
        type.target_resolution = params[:target_resolution]
        type.frame_metrics = FrameMetrics.build(params[:frame_metrics], context: "#{context}[:frame_metrics]") unless params[:frame_metrics].nil?
        type
      end
    end

    module BatchGetFrameMetricDataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetFrameMetricDataOutput, context: context)
        type = Types::BatchGetFrameMetricDataOutput.new
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.resolution = params[:resolution]
        type.end_times = ListOfTimestamps.build(params[:end_times], context: "#{context}[:end_times]") unless params[:end_times].nil?
        type.unprocessed_end_times = UnprocessedEndTimeMap.build(params[:unprocessed_end_times], context: "#{context}[:unprocessed_end_times]") unless params[:unprocessed_end_times].nil?
        type.frame_metric_data = FrameMetricData.build(params[:frame_metric_data], context: "#{context}[:frame_metric_data]") unless params[:frame_metric_data].nil?
        type
      end
    end

    module Channel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Channel, context: context)
        type = Types::Channel.new
        type.id = params[:id]
        type.uri = params[:uri]
        type.event_publishers = EventPublishers.build(params[:event_publishers], context: "#{context}[:event_publishers]") unless params[:event_publishers].nil?
        type
      end
    end

    module Channels
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Set, ::Array, context: context)
        data = Set.new
        params.each_with_index do |element, index|
          data << Channel.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConfigureAgentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigureAgentInput, context: context)
        type = Types::ConfigureAgentInput.new
        type.profiling_group_name = params[:profiling_group_name]
        type.fleet_instance_id = params[:fleet_instance_id]
        type.metadata = Metadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type
      end
    end

    module ConfigureAgentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigureAgentOutput, context: context)
        type = Types::ConfigureAgentOutput.new
        type.configuration = AgentConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module CreateProfilingGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProfilingGroupInput, context: context)
        type = Types::CreateProfilingGroupInput.new
        type.profiling_group_name = params[:profiling_group_name]
        type.compute_platform = params[:compute_platform]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.agent_orchestration_config = AgentOrchestrationConfig.build(params[:agent_orchestration_config], context: "#{context}[:agent_orchestration_config]") unless params[:agent_orchestration_config].nil?
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateProfilingGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProfilingGroupOutput, context: context)
        type = Types::CreateProfilingGroupOutput.new
        type.profiling_group = ProfilingGroupDescription.build(params[:profiling_group], context: "#{context}[:profiling_group]") unless params[:profiling_group].nil?
        type
      end
    end

    module DeleteProfilingGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProfilingGroupInput, context: context)
        type = Types::DeleteProfilingGroupInput.new
        type.profiling_group_name = params[:profiling_group_name]
        type
      end
    end

    module DeleteProfilingGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProfilingGroupOutput, context: context)
        type = Types::DeleteProfilingGroupOutput.new
        type
      end
    end

    module DescribeProfilingGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProfilingGroupInput, context: context)
        type = Types::DescribeProfilingGroupInput.new
        type.profiling_group_name = params[:profiling_group_name]
        type
      end
    end

    module DescribeProfilingGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProfilingGroupOutput, context: context)
        type = Types::DescribeProfilingGroupOutput.new
        type.profiling_group = ProfilingGroupDescription.build(params[:profiling_group], context: "#{context}[:profiling_group]") unless params[:profiling_group].nil?
        type
      end
    end

    module EventPublishers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Set, ::Array, context: context)
        data = Set.new
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FindingsReportSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FindingsReportSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FindingsReportSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FindingsReportSummary, context: context)
        type = Types::FindingsReportSummary.new
        type.id = params[:id]
        type.profiling_group_name = params[:profiling_group_name]
        type.profile_start_time = params[:profile_start_time]
        type.profile_end_time = params[:profile_end_time]
        type.total_number_of_findings = params[:total_number_of_findings]
        type
      end
    end

    module FrameMetric
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FrameMetric, context: context)
        type = Types::FrameMetric.new
        type.frame_name = params[:frame_name]
        type.type = params[:type]
        type.thread_states = ThreadStates.build(params[:thread_states], context: "#{context}[:thread_states]") unless params[:thread_states].nil?
        type
      end
    end

    module FrameMetricData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FrameMetricDatum.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FrameMetricDatum
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FrameMetricDatum, context: context)
        type = Types::FrameMetricDatum.new
        type.frame_metric = FrameMetric.build(params[:frame_metric], context: "#{context}[:frame_metric]") unless params[:frame_metric].nil?
        type.values = FrameMetricValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module FrameMetricValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FrameMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FrameMetric.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetFindingsReportAccountSummaryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFindingsReportAccountSummaryInput, context: context)
        type = Types::GetFindingsReportAccountSummaryInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.daily_reports_only = params[:daily_reports_only]
        type
      end
    end

    module GetFindingsReportAccountSummaryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFindingsReportAccountSummaryOutput, context: context)
        type = Types::GetFindingsReportAccountSummaryOutput.new
        type.report_summaries = FindingsReportSummaries.build(params[:report_summaries], context: "#{context}[:report_summaries]") unless params[:report_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetNotificationConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetNotificationConfigurationInput, context: context)
        type = Types::GetNotificationConfigurationInput.new
        type.profiling_group_name = params[:profiling_group_name]
        type
      end
    end

    module GetNotificationConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetNotificationConfigurationOutput, context: context)
        type = Types::GetNotificationConfigurationOutput.new
        type.notification_configuration = NotificationConfiguration.build(params[:notification_configuration], context: "#{context}[:notification_configuration]") unless params[:notification_configuration].nil?
        type
      end
    end

    module GetPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPolicyInput, context: context)
        type = Types::GetPolicyInput.new
        type.profiling_group_name = params[:profiling_group_name]
        type
      end
    end

    module GetPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPolicyOutput, context: context)
        type = Types::GetPolicyOutput.new
        type.policy = params[:policy]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module GetProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetProfileInput, context: context)
        type = Types::GetProfileInput.new
        type.profiling_group_name = params[:profiling_group_name]
        type.start_time = params[:start_time]
        type.period = params[:period]
        type.end_time = params[:end_time]
        type.max_depth = params[:max_depth]
        type.accept = params[:accept]
        type
      end
    end

    module GetProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetProfileOutput, context: context)
        type = Types::GetProfileOutput.new
        type.profile = params[:profile]
        type.content_type = params[:content_type]
        type.content_encoding = params[:content_encoding]
        type
      end
    end

    module GetRecommendationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRecommendationsInput, context: context)
        type = Types::GetRecommendationsInput.new
        type.profiling_group_name = params[:profiling_group_name]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.locale = params[:locale]
        type
      end
    end

    module GetRecommendationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRecommendationsOutput, context: context)
        type = Types::GetRecommendationsOutput.new
        type.profiling_group_name = params[:profiling_group_name]
        type.profile_start_time = params[:profile_start_time]
        type.profile_end_time = params[:profile_end_time]
        type.recommendations = Recommendations.build(params[:recommendations], context: "#{context}[:recommendations]") unless params[:recommendations].nil?
        type.anomalies = Anomalies.build(params[:anomalies], context: "#{context}[:anomalies]") unless params[:anomalies].nil?
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module ListFindingsReportsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFindingsReportsInput, context: context)
        type = Types::ListFindingsReportsInput.new
        type.profiling_group_name = params[:profiling_group_name]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.daily_reports_only = params[:daily_reports_only]
        type
      end
    end

    module ListFindingsReportsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFindingsReportsOutput, context: context)
        type = Types::ListFindingsReportsOutput.new
        type.findings_report_summaries = FindingsReportSummaries.build(params[:findings_report_summaries], context: "#{context}[:findings_report_summaries]") unless params[:findings_report_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOfTimestamps
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TimestampStructure.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListProfileTimesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProfileTimesInput, context: context)
        type = Types::ListProfileTimesInput.new
        type.profiling_group_name = params[:profiling_group_name]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.period = params[:period]
        type.order_by = params[:order_by]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListProfileTimesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProfileTimesOutput, context: context)
        type = Types::ListProfileTimesOutput.new
        type.profile_times = ProfileTimes.build(params[:profile_times], context: "#{context}[:profile_times]") unless params[:profile_times].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListProfilingGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProfilingGroupsInput, context: context)
        type = Types::ListProfilingGroupsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.include_description = params[:include_description]
        type
      end
    end

    module ListProfilingGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProfilingGroupsOutput, context: context)
        type = Types::ListProfilingGroupsOutput.new
        type.profiling_group_names = ProfilingGroupNames.build(params[:profiling_group_names], context: "#{context}[:profiling_group_names]") unless params[:profiling_group_names].nil?
        type.profiling_groups = ProfilingGroupDescriptions.build(params[:profiling_groups], context: "#{context}[:profiling_groups]") unless params[:profiling_groups].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module Match
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Match, context: context)
        type = Types::Match.new
        type.target_frames_index = params[:target_frames_index]
        type.frame_address = params[:frame_address]
        type.threshold_breach_value = params[:threshold_breach_value]
        type
      end
    end

    module Matches
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Match.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Metadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Metric
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Metric, context: context)
        type = Types::Metric.new
        type.frame_name = params[:frame_name]
        type.type = params[:type]
        type.thread_states = Strings.build(params[:thread_states], context: "#{context}[:thread_states]") unless params[:thread_states].nil?
        type
      end
    end

    module NotificationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotificationConfiguration, context: context)
        type = Types::NotificationConfiguration.new
        type.channels = Channels.build(params[:channels], context: "#{context}[:channels]") unless params[:channels].nil?
        type
      end
    end

    module Pattern
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Pattern, context: context)
        type = Types::Pattern.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.resolution_steps = params[:resolution_steps]
        type.target_frames = TargetFrames.build(params[:target_frames], context: "#{context}[:target_frames]") unless params[:target_frames].nil?
        type.threshold_percent = params[:threshold_percent]
        type.counters_to_aggregate = Strings.build(params[:counters_to_aggregate], context: "#{context}[:counters_to_aggregate]") unless params[:counters_to_aggregate].nil?
        type
      end
    end

    module PostAgentProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PostAgentProfileInput, context: context)
        type = Types::PostAgentProfileInput.new
        type.profiling_group_name = params[:profiling_group_name]
        type.agent_profile = params[:agent_profile]
        type.profile_token = params[:profile_token] || SecureRandom.uuid
        type.content_type = params[:content_type]
        type
      end
    end

    module PostAgentProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PostAgentProfileOutput, context: context)
        type = Types::PostAgentProfileOutput.new
        type
      end
    end

    module Principals
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ProfileTime
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProfileTime, context: context)
        type = Types::ProfileTime.new
        type.start = params[:start]
        type
      end
    end

    module ProfileTimes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProfileTime.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProfilingGroupDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProfilingGroupDescription, context: context)
        type = Types::ProfilingGroupDescription.new
        type.name = params[:name]
        type.agent_orchestration_config = AgentOrchestrationConfig.build(params[:agent_orchestration_config], context: "#{context}[:agent_orchestration_config]") unless params[:agent_orchestration_config].nil?
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type.profiling_status = ProfilingStatus.build(params[:profiling_status], context: "#{context}[:profiling_status]") unless params[:profiling_status].nil?
        type.compute_platform = params[:compute_platform]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ProfilingGroupDescriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProfilingGroupDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProfilingGroupNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ProfilingStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProfilingStatus, context: context)
        type = Types::ProfilingStatus.new
        type.latest_agent_profile_reported_at = params[:latest_agent_profile_reported_at]
        type.latest_aggregated_profile = AggregatedProfileTime.build(params[:latest_aggregated_profile], context: "#{context}[:latest_aggregated_profile]") unless params[:latest_aggregated_profile].nil?
        type.latest_agent_orchestrated_at = params[:latest_agent_orchestrated_at]
        type
      end
    end

    module PutPermissionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutPermissionInput, context: context)
        type = Types::PutPermissionInput.new
        type.profiling_group_name = params[:profiling_group_name]
        type.action_group = params[:action_group]
        type.principals = Principals.build(params[:principals], context: "#{context}[:principals]") unless params[:principals].nil?
        type.revision_id = params[:revision_id]
        type
      end
    end

    module PutPermissionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutPermissionOutput, context: context)
        type = Types::PutPermissionOutput.new
        type.policy = params[:policy]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module Recommendation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Recommendation, context: context)
        type = Types::Recommendation.new
        type.all_matches_count = params[:all_matches_count]
        type.all_matches_sum = params[:all_matches_sum]
        type.pattern = Pattern.build(params[:pattern], context: "#{context}[:pattern]") unless params[:pattern].nil?
        type.top_matches = Matches.build(params[:top_matches], context: "#{context}[:top_matches]") unless params[:top_matches].nil?
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module Recommendations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Recommendation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RemoveNotificationChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveNotificationChannelInput, context: context)
        type = Types::RemoveNotificationChannelInput.new
        type.profiling_group_name = params[:profiling_group_name]
        type.channel_id = params[:channel_id]
        type
      end
    end

    module RemoveNotificationChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveNotificationChannelOutput, context: context)
        type = Types::RemoveNotificationChannelOutput.new
        type.notification_configuration = NotificationConfiguration.build(params[:notification_configuration], context: "#{context}[:notification_configuration]") unless params[:notification_configuration].nil?
        type
      end
    end

    module RemovePermissionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemovePermissionInput, context: context)
        type = Types::RemovePermissionInput.new
        type.profiling_group_name = params[:profiling_group_name]
        type.action_group = params[:action_group]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module RemovePermissionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemovePermissionOutput, context: context)
        type = Types::RemovePermissionOutput.new
        type.policy = params[:policy]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type
      end
    end

    module Strings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SubmitFeedbackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubmitFeedbackInput, context: context)
        type = Types::SubmitFeedbackInput.new
        type.profiling_group_name = params[:profiling_group_name]
        type.anomaly_instance_id = params[:anomaly_instance_id]
        type.type = params[:type]
        type.comment = params[:comment]
        type
      end
    end

    module SubmitFeedbackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubmitFeedbackOutput, context: context)
        type = Types::SubmitFeedbackOutput.new
        type
      end
    end

    module TagKeys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module TagsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TargetFrame
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TargetFrames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TargetFrame.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ThreadStates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module TimestampStructure
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimestampStructure, context: context)
        type = Types::TimestampStructure.new
        type.value = params[:value]
        type
      end
    end

    module UnprocessedEndTimeMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ListOfTimestamps.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeys.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateProfilingGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProfilingGroupInput, context: context)
        type = Types::UpdateProfilingGroupInput.new
        type.profiling_group_name = params[:profiling_group_name]
        type.agent_orchestration_config = AgentOrchestrationConfig.build(params[:agent_orchestration_config], context: "#{context}[:agent_orchestration_config]") unless params[:agent_orchestration_config].nil?
        type
      end
    end

    module UpdateProfilingGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProfilingGroupOutput, context: context)
        type = Types::UpdateProfilingGroupOutput.new
        type.profiling_group = ProfilingGroupDescription.build(params[:profiling_group], context: "#{context}[:profiling_group]") unless params[:profiling_group].nil?
        type
      end
    end

    module UserFeedback
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserFeedback, context: context)
        type = Types::UserFeedback.new
        type.type = params[:type]
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

  end
end
