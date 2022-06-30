# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodeGuruProfiler
  module Validators

    class AddNotificationChannelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddNotificationChannelsInput, context: context)
        Hearth::Validator.validate!(input[:profiling_group_name], ::String, context: "#{context}[:profiling_group_name]")
        Validators::Channels.validate!(input[:channels], context: "#{context}[:channels]") unless input[:channels].nil?
      end
    end

    class AddNotificationChannelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddNotificationChannelsOutput, context: context)
        Validators::NotificationConfiguration.validate!(input[:notification_configuration], context: "#{context}[:notification_configuration]") unless input[:notification_configuration].nil?
      end
    end

    class AgentConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AgentConfiguration, context: context)
        Hearth::Validator.validate!(input[:should_profile], ::TrueClass, ::FalseClass, context: "#{context}[:should_profile]")
        Hearth::Validator.validate!(input[:period_in_seconds], ::Integer, context: "#{context}[:period_in_seconds]")
        Validators::AgentParameters.validate!(input[:agent_parameters], context: "#{context}[:agent_parameters]") unless input[:agent_parameters].nil?
      end
    end

    class AgentOrchestrationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AgentOrchestrationConfig, context: context)
        Hearth::Validator.validate!(input[:profiling_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:profiling_enabled]")
      end
    end

    class AgentParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class AggregatedProfileTime
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AggregatedProfileTime, context: context)
        Hearth::Validator.validate!(input[:start], ::Time, context: "#{context}[:start]")
        Hearth::Validator.validate!(input[:period], ::String, context: "#{context}[:period]")
      end
    end

    class Anomalies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Anomaly.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Anomaly
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Anomaly, context: context)
        Validators::Metric.validate!(input[:metric], context: "#{context}[:metric]") unless input[:metric].nil?
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Validators::AnomalyInstances.validate!(input[:instances], context: "#{context}[:instances]") unless input[:instances].nil?
      end
    end

    class AnomalyInstance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnomalyInstance, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Validators::UserFeedback.validate!(input[:user_feedback], context: "#{context}[:user_feedback]") unless input[:user_feedback].nil?
      end
    end

    class AnomalyInstances
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AnomalyInstance.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchGetFrameMetricDataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetFrameMetricDataInput, context: context)
        Hearth::Validator.validate!(input[:profiling_group_name], ::String, context: "#{context}[:profiling_group_name]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:period], ::String, context: "#{context}[:period]")
        Hearth::Validator.validate!(input[:target_resolution], ::String, context: "#{context}[:target_resolution]")
        Validators::FrameMetrics.validate!(input[:frame_metrics], context: "#{context}[:frame_metrics]") unless input[:frame_metrics].nil?
      end
    end

    class BatchGetFrameMetricDataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetFrameMetricDataOutput, context: context)
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:resolution], ::String, context: "#{context}[:resolution]")
        Validators::ListOfTimestamps.validate!(input[:end_times], context: "#{context}[:end_times]") unless input[:end_times].nil?
        Validators::UnprocessedEndTimeMap.validate!(input[:unprocessed_end_times], context: "#{context}[:unprocessed_end_times]") unless input[:unprocessed_end_times].nil?
        Validators::FrameMetricData.validate!(input[:frame_metric_data], context: "#{context}[:frame_metric_data]") unless input[:frame_metric_data].nil?
      end
    end

    class Channel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Channel, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:uri], ::String, context: "#{context}[:uri]")
        Validators::EventPublishers.validate!(input[:event_publishers], context: "#{context}[:event_publishers]") unless input[:event_publishers].nil?
      end
    end

    class Channels
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Set, context: context)
        input.each_with_index do |element, index|
          Validators::Channel.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConfigureAgentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigureAgentInput, context: context)
        Hearth::Validator.validate!(input[:profiling_group_name], ::String, context: "#{context}[:profiling_group_name]")
        Hearth::Validator.validate!(input[:fleet_instance_id], ::String, context: "#{context}[:fleet_instance_id]")
        Validators::Metadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
      end
    end

    class ConfigureAgentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigureAgentOutput, context: context)
        Validators::AgentConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateProfilingGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProfilingGroupInput, context: context)
        Hearth::Validator.validate!(input[:profiling_group_name], ::String, context: "#{context}[:profiling_group_name]")
        Hearth::Validator.validate!(input[:compute_platform], ::String, context: "#{context}[:compute_platform]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Validators::AgentOrchestrationConfig.validate!(input[:agent_orchestration_config], context: "#{context}[:agent_orchestration_config]") unless input[:agent_orchestration_config].nil?
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateProfilingGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProfilingGroupOutput, context: context)
        Validators::ProfilingGroupDescription.validate!(input[:profiling_group], context: "#{context}[:profiling_group]") unless input[:profiling_group].nil?
      end
    end

    class DeleteProfilingGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProfilingGroupInput, context: context)
        Hearth::Validator.validate!(input[:profiling_group_name], ::String, context: "#{context}[:profiling_group_name]")
      end
    end

    class DeleteProfilingGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProfilingGroupOutput, context: context)
      end
    end

    class DescribeProfilingGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProfilingGroupInput, context: context)
        Hearth::Validator.validate!(input[:profiling_group_name], ::String, context: "#{context}[:profiling_group_name]")
      end
    end

    class DescribeProfilingGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProfilingGroupOutput, context: context)
        Validators::ProfilingGroupDescription.validate!(input[:profiling_group], context: "#{context}[:profiling_group]") unless input[:profiling_group].nil?
      end
    end

    class EventPublishers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Set, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FindingsReportSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FindingsReportSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FindingsReportSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FindingsReportSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:profiling_group_name], ::String, context: "#{context}[:profiling_group_name]")
        Hearth::Validator.validate!(input[:profile_start_time], ::Time, context: "#{context}[:profile_start_time]")
        Hearth::Validator.validate!(input[:profile_end_time], ::Time, context: "#{context}[:profile_end_time]")
        Hearth::Validator.validate!(input[:total_number_of_findings], ::Integer, context: "#{context}[:total_number_of_findings]")
      end
    end

    class FrameMetric
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FrameMetric, context: context)
        Hearth::Validator.validate!(input[:frame_name], ::String, context: "#{context}[:frame_name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::ThreadStates.validate!(input[:thread_states], context: "#{context}[:thread_states]") unless input[:thread_states].nil?
      end
    end

    class FrameMetricData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FrameMetricDatum.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FrameMetricDatum
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FrameMetricDatum, context: context)
        Validators::FrameMetric.validate!(input[:frame_metric], context: "#{context}[:frame_metric]") unless input[:frame_metric].nil?
        Validators::FrameMetricValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class FrameMetricValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Float, context: "#{context}[#{index}]")
        end
      end
    end

    class FrameMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FrameMetric.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetFindingsReportAccountSummaryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFindingsReportAccountSummaryInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:daily_reports_only], ::TrueClass, ::FalseClass, context: "#{context}[:daily_reports_only]")
      end
    end

    class GetFindingsReportAccountSummaryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFindingsReportAccountSummaryOutput, context: context)
        Validators::FindingsReportSummaries.validate!(input[:report_summaries], context: "#{context}[:report_summaries]") unless input[:report_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetNotificationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetNotificationConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:profiling_group_name], ::String, context: "#{context}[:profiling_group_name]")
      end
    end

    class GetNotificationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetNotificationConfigurationOutput, context: context)
        Validators::NotificationConfiguration.validate!(input[:notification_configuration], context: "#{context}[:notification_configuration]") unless input[:notification_configuration].nil?
      end
    end

    class GetPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPolicyInput, context: context)
        Hearth::Validator.validate!(input[:profiling_group_name], ::String, context: "#{context}[:profiling_group_name]")
      end
    end

    class GetPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class GetProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetProfileInput, context: context)
        Hearth::Validator.validate!(input[:profiling_group_name], ::String, context: "#{context}[:profiling_group_name]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:period], ::String, context: "#{context}[:period]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:max_depth], ::Integer, context: "#{context}[:max_depth]")
        Hearth::Validator.validate!(input[:accept], ::String, context: "#{context}[:accept]")
      end
    end

    class GetProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetProfileOutput, context: context)
        Hearth::Validator.validate!(input[:profile], ::String, context: "#{context}[:profile]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:content_encoding], ::String, context: "#{context}[:content_encoding]")
      end
    end

    class GetRecommendationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRecommendationsInput, context: context)
        Hearth::Validator.validate!(input[:profiling_group_name], ::String, context: "#{context}[:profiling_group_name]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:locale], ::String, context: "#{context}[:locale]")
      end
    end

    class GetRecommendationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRecommendationsOutput, context: context)
        Hearth::Validator.validate!(input[:profiling_group_name], ::String, context: "#{context}[:profiling_group_name]")
        Hearth::Validator.validate!(input[:profile_start_time], ::Time, context: "#{context}[:profile_start_time]")
        Hearth::Validator.validate!(input[:profile_end_time], ::Time, context: "#{context}[:profile_end_time]")
        Validators::Recommendations.validate!(input[:recommendations], context: "#{context}[:recommendations]") unless input[:recommendations].nil?
        Validators::Anomalies.validate!(input[:anomalies], context: "#{context}[:anomalies]") unless input[:anomalies].nil?
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListFindingsReportsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFindingsReportsInput, context: context)
        Hearth::Validator.validate!(input[:profiling_group_name], ::String, context: "#{context}[:profiling_group_name]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:daily_reports_only], ::TrueClass, ::FalseClass, context: "#{context}[:daily_reports_only]")
      end
    end

    class ListFindingsReportsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFindingsReportsOutput, context: context)
        Validators::FindingsReportSummaries.validate!(input[:findings_report_summaries], context: "#{context}[:findings_report_summaries]") unless input[:findings_report_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOfTimestamps
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TimestampStructure.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListProfileTimesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProfileTimesInput, context: context)
        Hearth::Validator.validate!(input[:profiling_group_name], ::String, context: "#{context}[:profiling_group_name]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:period], ::String, context: "#{context}[:period]")
        Hearth::Validator.validate!(input[:order_by], ::String, context: "#{context}[:order_by]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListProfileTimesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProfileTimesOutput, context: context)
        Validators::ProfileTimes.validate!(input[:profile_times], context: "#{context}[:profile_times]") unless input[:profile_times].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListProfilingGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProfilingGroupsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:include_description], ::TrueClass, ::FalseClass, context: "#{context}[:include_description]")
      end
    end

    class ListProfilingGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProfilingGroupsOutput, context: context)
        Validators::ProfilingGroupNames.validate!(input[:profiling_group_names], context: "#{context}[:profiling_group_names]") unless input[:profiling_group_names].nil?
        Validators::ProfilingGroupDescriptions.validate!(input[:profiling_groups], context: "#{context}[:profiling_groups]") unless input[:profiling_groups].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class Match
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Match, context: context)
        Hearth::Validator.validate!(input[:target_frames_index], ::Integer, context: "#{context}[:target_frames_index]")
        Hearth::Validator.validate!(input[:frame_address], ::String, context: "#{context}[:frame_address]")
        Hearth::Validator.validate!(input[:threshold_breach_value], ::Float, context: "#{context}[:threshold_breach_value]")
      end
    end

    class Matches
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Match.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Metadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class Metric
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Metric, context: context)
        Hearth::Validator.validate!(input[:frame_name], ::String, context: "#{context}[:frame_name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::Strings.validate!(input[:thread_states], context: "#{context}[:thread_states]") unless input[:thread_states].nil?
      end
    end

    class NotificationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotificationConfiguration, context: context)
        Validators::Channels.validate!(input[:channels], context: "#{context}[:channels]") unless input[:channels].nil?
      end
    end

    class Pattern
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Pattern, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:resolution_steps], ::String, context: "#{context}[:resolution_steps]")
        Validators::TargetFrames.validate!(input[:target_frames], context: "#{context}[:target_frames]") unless input[:target_frames].nil?
        Hearth::Validator.validate!(input[:threshold_percent], ::Float, context: "#{context}[:threshold_percent]")
        Validators::Strings.validate!(input[:counters_to_aggregate], context: "#{context}[:counters_to_aggregate]") unless input[:counters_to_aggregate].nil?
      end
    end

    class PostAgentProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PostAgentProfileInput, context: context)
        Hearth::Validator.validate!(input[:profiling_group_name], ::String, context: "#{context}[:profiling_group_name]")
        Hearth::Validator.validate!(input[:agent_profile], ::String, context: "#{context}[:agent_profile]")
        Hearth::Validator.validate!(input[:profile_token], ::String, context: "#{context}[:profile_token]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
      end
    end

    class PostAgentProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PostAgentProfileOutput, context: context)
      end
    end

    class Principals
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProfileTime
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProfileTime, context: context)
        Hearth::Validator.validate!(input[:start], ::Time, context: "#{context}[:start]")
      end
    end

    class ProfileTimes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ProfileTime.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProfilingGroupDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProfilingGroupDescription, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::AgentOrchestrationConfig.validate!(input[:agent_orchestration_config], context: "#{context}[:agent_orchestration_config]") unless input[:agent_orchestration_config].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Validators::ProfilingStatus.validate!(input[:profiling_status], context: "#{context}[:profiling_status]") unless input[:profiling_status].nil?
        Hearth::Validator.validate!(input[:compute_platform], ::String, context: "#{context}[:compute_platform]")
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ProfilingGroupDescriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ProfilingGroupDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProfilingGroupNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProfilingStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProfilingStatus, context: context)
        Hearth::Validator.validate!(input[:latest_agent_profile_reported_at], ::Time, context: "#{context}[:latest_agent_profile_reported_at]")
        Validators::AggregatedProfileTime.validate!(input[:latest_aggregated_profile], context: "#{context}[:latest_aggregated_profile]") unless input[:latest_aggregated_profile].nil?
        Hearth::Validator.validate!(input[:latest_agent_orchestrated_at], ::Time, context: "#{context}[:latest_agent_orchestrated_at]")
      end
    end

    class PutPermissionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutPermissionInput, context: context)
        Hearth::Validator.validate!(input[:profiling_group_name], ::String, context: "#{context}[:profiling_group_name]")
        Hearth::Validator.validate!(input[:action_group], ::String, context: "#{context}[:action_group]")
        Validators::Principals.validate!(input[:principals], context: "#{context}[:principals]") unless input[:principals].nil?
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class PutPermissionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutPermissionOutput, context: context)
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class Recommendation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Recommendation, context: context)
        Hearth::Validator.validate!(input[:all_matches_count], ::Integer, context: "#{context}[:all_matches_count]")
        Hearth::Validator.validate!(input[:all_matches_sum], ::Float, context: "#{context}[:all_matches_sum]")
        Validators::Pattern.validate!(input[:pattern], context: "#{context}[:pattern]") unless input[:pattern].nil?
        Validators::Matches.validate!(input[:top_matches], context: "#{context}[:top_matches]") unless input[:top_matches].nil?
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
      end
    end

    class Recommendations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Recommendation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RemoveNotificationChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveNotificationChannelInput, context: context)
        Hearth::Validator.validate!(input[:profiling_group_name], ::String, context: "#{context}[:profiling_group_name]")
        Hearth::Validator.validate!(input[:channel_id], ::String, context: "#{context}[:channel_id]")
      end
    end

    class RemoveNotificationChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveNotificationChannelOutput, context: context)
        Validators::NotificationConfiguration.validate!(input[:notification_configuration], context: "#{context}[:notification_configuration]") unless input[:notification_configuration].nil?
      end
    end

    class RemovePermissionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemovePermissionInput, context: context)
        Hearth::Validator.validate!(input[:profiling_group_name], ::String, context: "#{context}[:profiling_group_name]")
        Hearth::Validator.validate!(input[:action_group], ::String, context: "#{context}[:action_group]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class RemovePermissionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemovePermissionOutput, context: context)
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Strings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SubmitFeedbackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubmitFeedbackInput, context: context)
        Hearth::Validator.validate!(input[:profiling_group_name], ::String, context: "#{context}[:profiling_group_name]")
        Hearth::Validator.validate!(input[:anomaly_instance_id], ::String, context: "#{context}[:anomaly_instance_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
      end
    end

    class SubmitFeedbackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubmitFeedbackOutput, context: context)
      end
    end

    class TagKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TagsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TargetFrame
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TargetFrames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TargetFrame.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ThreadStates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TimestampStructure
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimestampStructure, context: context)
        Hearth::Validator.validate!(input[:value], ::Time, context: "#{context}[:value]")
      end
    end

    class UnprocessedEndTimeMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::ListOfTimestamps.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeys.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateProfilingGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProfilingGroupInput, context: context)
        Hearth::Validator.validate!(input[:profiling_group_name], ::String, context: "#{context}[:profiling_group_name]")
        Validators::AgentOrchestrationConfig.validate!(input[:agent_orchestration_config], context: "#{context}[:agent_orchestration_config]") unless input[:agent_orchestration_config].nil?
      end
    end

    class UpdateProfilingGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProfilingGroupOutput, context: context)
        Validators::ProfilingGroupDescription.validate!(input[:profiling_group], context: "#{context}[:profiling_group]") unless input[:profiling_group].nil?
      end
    end

    class UserFeedback
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserFeedback, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
