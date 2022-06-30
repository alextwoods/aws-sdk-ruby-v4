# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DevOpsGuru
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AccountHealth
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountHealth, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Validators::AccountInsightHealth.validate!(input[:insight], context: "#{context}[:insight]") unless input[:insight].nil?
      end
    end

    class AccountHealths
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AccountHealth.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AccountIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AccountInsightHealth
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountInsightHealth, context: context)
        Hearth::Validator.validate!(input[:open_proactive_insights], ::Integer, context: "#{context}[:open_proactive_insights]")
        Hearth::Validator.validate!(input[:open_reactive_insights], ::Integer, context: "#{context}[:open_reactive_insights]")
      end
    end

    class AddNotificationChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddNotificationChannelInput, context: context)
        Validators::NotificationChannelConfig.validate!(input[:config], context: "#{context}[:config]") unless input[:config].nil?
      end
    end

    class AddNotificationChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddNotificationChannelOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class AmazonCodeGuruProfilerIntegration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AmazonCodeGuruProfilerIntegration, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class AnomalyReportedTimeRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnomalyReportedTimeRange, context: context)
        Hearth::Validator.validate!(input[:open_time], ::Time, context: "#{context}[:open_time]")
        Hearth::Validator.validate!(input[:close_time], ::Time, context: "#{context}[:close_time]")
      end
    end

    class AnomalyResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnomalyResource, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class AnomalyResources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AnomalyResource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AnomalySourceDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnomalySourceDetails, context: context)
        Validators::CloudWatchMetricsDetails.validate!(input[:cloud_watch_metrics], context: "#{context}[:cloud_watch_metrics]") unless input[:cloud_watch_metrics].nil?
        Validators::PerformanceInsightsMetricsDetails.validate!(input[:performance_insights_metrics], context: "#{context}[:performance_insights_metrics]") unless input[:performance_insights_metrics].nil?
      end
    end

    class AnomalySourceMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnomalySourceMetadata, context: context)
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:source_resource_name], ::String, context: "#{context}[:source_resource_name]")
        Hearth::Validator.validate!(input[:source_resource_type], ::String, context: "#{context}[:source_resource_type]")
      end
    end

    class AnomalyTimeRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnomalyTimeRange, context: context)
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
      end
    end

    class AssociatedResourceArns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Channels
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::NotificationChannel.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CloudFormationCollection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudFormationCollection, context: context)
        Validators::StackNames.validate!(input[:stack_names], context: "#{context}[:stack_names]") unless input[:stack_names].nil?
      end
    end

    class CloudFormationCollectionFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudFormationCollectionFilter, context: context)
        Validators::StackNames.validate!(input[:stack_names], context: "#{context}[:stack_names]") unless input[:stack_names].nil?
      end
    end

    class CloudFormationCostEstimationResourceCollectionFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudFormationCostEstimationResourceCollectionFilter, context: context)
        Validators::CostEstimationStackNames.validate!(input[:stack_names], context: "#{context}[:stack_names]") unless input[:stack_names].nil?
      end
    end

    class CloudFormationHealth
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudFormationHealth, context: context)
        Hearth::Validator.validate!(input[:stack_name], ::String, context: "#{context}[:stack_name]")
        Validators::InsightHealth.validate!(input[:insight], context: "#{context}[:insight]") unless input[:insight].nil?
      end
    end

    class CloudFormationHealths
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CloudFormationHealth.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CloudWatchMetricsDataSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchMetricsDataSummary, context: context)
        Validators::TimestampMetricValuePairList.validate!(input[:timestamp_metric_value_pair_list], context: "#{context}[:timestamp_metric_value_pair_list]") unless input[:timestamp_metric_value_pair_list].nil?
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
      end
    end

    class CloudWatchMetricsDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchMetricsDetail, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Validators::CloudWatchMetricsDimensions.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
        Hearth::Validator.validate!(input[:stat], ::String, context: "#{context}[:stat]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
        Hearth::Validator.validate!(input[:period], ::Integer, context: "#{context}[:period]")
        Validators::CloudWatchMetricsDataSummary.validate!(input[:metric_data_summary], context: "#{context}[:metric_data_summary]") unless input[:metric_data_summary].nil?
      end
    end

    class CloudWatchMetricsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CloudWatchMetricsDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CloudWatchMetricsDimension
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchMetricsDimension, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class CloudWatchMetricsDimensions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CloudWatchMetricsDimension.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class CostEstimationResourceCollectionFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CostEstimationResourceCollectionFilter, context: context)
        Validators::CloudFormationCostEstimationResourceCollectionFilter.validate!(input[:cloud_formation], context: "#{context}[:cloud_formation]") unless input[:cloud_formation].nil?
        Validators::TagCostEstimationResourceCollectionFilters.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CostEstimationStackNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CostEstimationTagValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CostEstimationTimeRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CostEstimationTimeRange, context: context)
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
      end
    end

    class DeleteInsightInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInsightInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteInsightOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInsightOutput, context: context)
      end
    end

    class DescribeAccountHealthInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountHealthInput, context: context)
      end
    end

    class DescribeAccountHealthOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountHealthOutput, context: context)
        Hearth::Validator.validate!(input[:open_reactive_insights], ::Integer, context: "#{context}[:open_reactive_insights]")
        Hearth::Validator.validate!(input[:open_proactive_insights], ::Integer, context: "#{context}[:open_proactive_insights]")
        Hearth::Validator.validate!(input[:metrics_analyzed], ::Integer, context: "#{context}[:metrics_analyzed]")
        Hearth::Validator.validate!(input[:resource_hours], ::Integer, context: "#{context}[:resource_hours]")
      end
    end

    class DescribeAccountOverviewInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountOverviewInput, context: context)
        Hearth::Validator.validate!(input[:from_time], ::Time, context: "#{context}[:from_time]")
        Hearth::Validator.validate!(input[:to_time], ::Time, context: "#{context}[:to_time]")
      end
    end

    class DescribeAccountOverviewOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountOverviewOutput, context: context)
        Hearth::Validator.validate!(input[:reactive_insights], ::Integer, context: "#{context}[:reactive_insights]")
        Hearth::Validator.validate!(input[:proactive_insights], ::Integer, context: "#{context}[:proactive_insights]")
        Hearth::Validator.validate!(input[:mean_time_to_recover_in_milliseconds], ::Integer, context: "#{context}[:mean_time_to_recover_in_milliseconds]")
      end
    end

    class DescribeAnomalyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAnomalyInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class DescribeAnomalyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAnomalyOutput, context: context)
        Validators::ProactiveAnomaly.validate!(input[:proactive_anomaly], context: "#{context}[:proactive_anomaly]") unless input[:proactive_anomaly].nil?
        Validators::ReactiveAnomaly.validate!(input[:reactive_anomaly], context: "#{context}[:reactive_anomaly]") unless input[:reactive_anomaly].nil?
      end
    end

    class DescribeEventSourcesConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventSourcesConfigInput, context: context)
      end
    end

    class DescribeEventSourcesConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEventSourcesConfigOutput, context: context)
        Validators::EventSourcesConfig.validate!(input[:event_sources], context: "#{context}[:event_sources]") unless input[:event_sources].nil?
      end
    end

    class DescribeFeedbackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFeedbackInput, context: context)
        Hearth::Validator.validate!(input[:insight_id], ::String, context: "#{context}[:insight_id]")
      end
    end

    class DescribeFeedbackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFeedbackOutput, context: context)
        Validators::InsightFeedback.validate!(input[:insight_feedback], context: "#{context}[:insight_feedback]") unless input[:insight_feedback].nil?
      end
    end

    class DescribeInsightInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInsightInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class DescribeInsightOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInsightOutput, context: context)
        Validators::ProactiveInsight.validate!(input[:proactive_insight], context: "#{context}[:proactive_insight]") unless input[:proactive_insight].nil?
        Validators::ReactiveInsight.validate!(input[:reactive_insight], context: "#{context}[:reactive_insight]") unless input[:reactive_insight].nil?
      end
    end

    class DescribeOrganizationHealthInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrganizationHealthInput, context: context)
        Validators::AccountIdList.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
        Validators::OrganizationalUnitIdList.validate!(input[:organizational_unit_ids], context: "#{context}[:organizational_unit_ids]") unless input[:organizational_unit_ids].nil?
      end
    end

    class DescribeOrganizationHealthOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrganizationHealthOutput, context: context)
        Hearth::Validator.validate!(input[:open_reactive_insights], ::Integer, context: "#{context}[:open_reactive_insights]")
        Hearth::Validator.validate!(input[:open_proactive_insights], ::Integer, context: "#{context}[:open_proactive_insights]")
        Hearth::Validator.validate!(input[:metrics_analyzed], ::Integer, context: "#{context}[:metrics_analyzed]")
        Hearth::Validator.validate!(input[:resource_hours], ::Integer, context: "#{context}[:resource_hours]")
      end
    end

    class DescribeOrganizationOverviewInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrganizationOverviewInput, context: context)
        Hearth::Validator.validate!(input[:from_time], ::Time, context: "#{context}[:from_time]")
        Hearth::Validator.validate!(input[:to_time], ::Time, context: "#{context}[:to_time]")
        Validators::AccountIdList.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
        Validators::OrganizationalUnitIdList.validate!(input[:organizational_unit_ids], context: "#{context}[:organizational_unit_ids]") unless input[:organizational_unit_ids].nil?
      end
    end

    class DescribeOrganizationOverviewOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrganizationOverviewOutput, context: context)
        Hearth::Validator.validate!(input[:reactive_insights], ::Integer, context: "#{context}[:reactive_insights]")
        Hearth::Validator.validate!(input[:proactive_insights], ::Integer, context: "#{context}[:proactive_insights]")
      end
    end

    class DescribeOrganizationResourceCollectionHealthInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrganizationResourceCollectionHealthInput, context: context)
        Hearth::Validator.validate!(input[:organization_resource_collection_type], ::String, context: "#{context}[:organization_resource_collection_type]")
        Validators::AccountIdList.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
        Validators::OrganizationalUnitIdList.validate!(input[:organizational_unit_ids], context: "#{context}[:organizational_unit_ids]") unless input[:organizational_unit_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeOrganizationResourceCollectionHealthOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrganizationResourceCollectionHealthOutput, context: context)
        Validators::CloudFormationHealths.validate!(input[:cloud_formation], context: "#{context}[:cloud_formation]") unless input[:cloud_formation].nil?
        Validators::ServiceHealths.validate!(input[:service], context: "#{context}[:service]") unless input[:service].nil?
        Validators::AccountHealths.validate!(input[:account], context: "#{context}[:account]") unless input[:account].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::TagHealths.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DescribeResourceCollectionHealthInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeResourceCollectionHealthInput, context: context)
        Hearth::Validator.validate!(input[:resource_collection_type], ::String, context: "#{context}[:resource_collection_type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeResourceCollectionHealthOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeResourceCollectionHealthOutput, context: context)
        Validators::CloudFormationHealths.validate!(input[:cloud_formation], context: "#{context}[:cloud_formation]") unless input[:cloud_formation].nil?
        Validators::ServiceHealths.validate!(input[:service], context: "#{context}[:service]") unless input[:service].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::TagHealths.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DescribeServiceIntegrationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeServiceIntegrationInput, context: context)
      end
    end

    class DescribeServiceIntegrationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeServiceIntegrationOutput, context: context)
        Validators::ServiceIntegrationConfig.validate!(input[:service_integration], context: "#{context}[:service_integration]") unless input[:service_integration].nil?
      end
    end

    class EndTimeRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndTimeRange, context: context)
        Hearth::Validator.validate!(input[:from_time], ::Time, context: "#{context}[:from_time]")
        Hearth::Validator.validate!(input[:to_time], ::Time, context: "#{context}[:to_time]")
      end
    end

    class Event
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Event, context: context)
        Validators::ResourceCollection.validate!(input[:resource_collection], context: "#{context}[:resource_collection]") unless input[:resource_collection].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:time], ::Time, context: "#{context}[:time]")
        Hearth::Validator.validate!(input[:event_source], ::String, context: "#{context}[:event_source]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:data_source], ::String, context: "#{context}[:data_source]")
        Hearth::Validator.validate!(input[:event_class], ::String, context: "#{context}[:event_class]")
        Validators::EventResources.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
      end
    end

    class EventResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventResource, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class EventResources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EventResource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EventSourcesConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventSourcesConfig, context: context)
        Validators::AmazonCodeGuruProfilerIntegration.validate!(input[:amazon_code_guru_profiler], context: "#{context}[:amazon_code_guru_profiler]") unless input[:amazon_code_guru_profiler].nil?
      end
    end

    class EventTimeRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventTimeRange, context: context)
        Hearth::Validator.validate!(input[:from_time], ::Time, context: "#{context}[:from_time]")
        Hearth::Validator.validate!(input[:to_time], ::Time, context: "#{context}[:to_time]")
      end
    end

    class Events
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Event.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetCostEstimationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCostEstimationInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetCostEstimationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCostEstimationOutput, context: context)
        Validators::CostEstimationResourceCollectionFilter.validate!(input[:resource_collection], context: "#{context}[:resource_collection]") unless input[:resource_collection].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::ServiceResourceCosts.validate!(input[:costs], context: "#{context}[:costs]") unless input[:costs].nil?
        Validators::CostEstimationTimeRange.validate!(input[:time_range], context: "#{context}[:time_range]") unless input[:time_range].nil?
        Hearth::Validator.validate!(input[:total_cost], ::Float, context: "#{context}[:total_cost]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetResourceCollectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourceCollectionInput, context: context)
        Hearth::Validator.validate!(input[:resource_collection_type], ::String, context: "#{context}[:resource_collection_type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetResourceCollectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourceCollectionOutput, context: context)
        Validators::ResourceCollectionFilter.validate!(input[:resource_collection], context: "#{context}[:resource_collection]") unless input[:resource_collection].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class InsightFeedback
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsightFeedback, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:feedback], ::String, context: "#{context}[:feedback]")
      end
    end

    class InsightHealth
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsightHealth, context: context)
        Hearth::Validator.validate!(input[:open_proactive_insights], ::Integer, context: "#{context}[:open_proactive_insights]")
        Hearth::Validator.validate!(input[:open_reactive_insights], ::Integer, context: "#{context}[:open_reactive_insights]")
        Hearth::Validator.validate!(input[:mean_time_to_recover_in_milliseconds], ::Integer, context: "#{context}[:mean_time_to_recover_in_milliseconds]")
      end
    end

    class InsightSeverities
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InsightStatuses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InsightTimeRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsightTimeRange, context: context)
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::Integer, context: "#{context}[:retry_after_seconds]")
      end
    end

    class ListAnomaliesForInsightInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAnomaliesForInsightInput, context: context)
        Hearth::Validator.validate!(input[:insight_id], ::String, context: "#{context}[:insight_id]")
        Validators::StartTimeRange.validate!(input[:start_time_range], context: "#{context}[:start_time_range]") unless input[:start_time_range].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class ListAnomaliesForInsightOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAnomaliesForInsightOutput, context: context)
        Validators::ProactiveAnomalies.validate!(input[:proactive_anomalies], context: "#{context}[:proactive_anomalies]") unless input[:proactive_anomalies].nil?
        Validators::ReactiveAnomalies.validate!(input[:reactive_anomalies], context: "#{context}[:reactive_anomalies]") unless input[:reactive_anomalies].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEventsFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEventsFilters, context: context)
        Hearth::Validator.validate!(input[:insight_id], ::String, context: "#{context}[:insight_id]")
        Validators::EventTimeRange.validate!(input[:event_time_range], context: "#{context}[:event_time_range]") unless input[:event_time_range].nil?
        Hearth::Validator.validate!(input[:event_class], ::String, context: "#{context}[:event_class]")
        Hearth::Validator.validate!(input[:event_source], ::String, context: "#{context}[:event_source]")
        Hearth::Validator.validate!(input[:data_source], ::String, context: "#{context}[:data_source]")
        Validators::ResourceCollection.validate!(input[:resource_collection], context: "#{context}[:resource_collection]") unless input[:resource_collection].nil?
      end
    end

    class ListEventsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEventsInput, context: context)
        Validators::ListEventsFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class ListEventsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEventsOutput, context: context)
        Validators::Events.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListInsightsAccountIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListInsightsAnyStatusFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInsightsAnyStatusFilter, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::StartTimeRange.validate!(input[:start_time_range], context: "#{context}[:start_time_range]") unless input[:start_time_range].nil?
      end
    end

    class ListInsightsClosedStatusFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInsightsClosedStatusFilter, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::EndTimeRange.validate!(input[:end_time_range], context: "#{context}[:end_time_range]") unless input[:end_time_range].nil?
      end
    end

    class ListInsightsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInsightsInput, context: context)
        Validators::ListInsightsStatusFilter.validate!(input[:status_filter], context: "#{context}[:status_filter]") unless input[:status_filter].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListInsightsOngoingStatusFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInsightsOngoingStatusFilter, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class ListInsightsOrganizationalUnitIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListInsightsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInsightsOutput, context: context)
        Validators::ProactiveInsights.validate!(input[:proactive_insights], context: "#{context}[:proactive_insights]") unless input[:proactive_insights].nil?
        Validators::ReactiveInsights.validate!(input[:reactive_insights], context: "#{context}[:reactive_insights]") unless input[:reactive_insights].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListInsightsStatusFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInsightsStatusFilter, context: context)
        Validators::ListInsightsOngoingStatusFilter.validate!(input[:ongoing], context: "#{context}[:ongoing]") unless input[:ongoing].nil?
        Validators::ListInsightsClosedStatusFilter.validate!(input[:closed], context: "#{context}[:closed]") unless input[:closed].nil?
        Validators::ListInsightsAnyStatusFilter.validate!(input[:any], context: "#{context}[:any]") unless input[:any].nil?
      end
    end

    class ListNotificationChannelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNotificationChannelsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListNotificationChannelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNotificationChannelsOutput, context: context)
        Validators::Channels.validate!(input[:channels], context: "#{context}[:channels]") unless input[:channels].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOrganizationInsightsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOrganizationInsightsInput, context: context)
        Validators::ListInsightsStatusFilter.validate!(input[:status_filter], context: "#{context}[:status_filter]") unless input[:status_filter].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Validators::ListInsightsAccountIdList.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
        Validators::ListInsightsOrganizationalUnitIdList.validate!(input[:organizational_unit_ids], context: "#{context}[:organizational_unit_ids]") unless input[:organizational_unit_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOrganizationInsightsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOrganizationInsightsOutput, context: context)
        Validators::ProactiveOrganizationInsights.validate!(input[:proactive_insights], context: "#{context}[:proactive_insights]") unless input[:proactive_insights].nil?
        Validators::ReactiveOrganizationInsights.validate!(input[:reactive_insights], context: "#{context}[:reactive_insights]") unless input[:reactive_insights].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRecommendationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRecommendationsInput, context: context)
        Hearth::Validator.validate!(input[:insight_id], ::String, context: "#{context}[:insight_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:locale], ::String, context: "#{context}[:locale]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class ListRecommendationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRecommendationsOutput, context: context)
        Validators::Recommendations.validate!(input[:recommendations], context: "#{context}[:recommendations]") unless input[:recommendations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class NotificationChannel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotificationChannel, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::NotificationChannelConfig.validate!(input[:config], context: "#{context}[:config]") unless input[:config].nil?
      end
    end

    class NotificationChannelConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotificationChannelConfig, context: context)
        Validators::SnsChannelConfig.validate!(input[:sns], context: "#{context}[:sns]") unless input[:sns].nil?
      end
    end

    class OpsCenterIntegration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpsCenterIntegration, context: context)
        Hearth::Validator.validate!(input[:opt_in_status], ::String, context: "#{context}[:opt_in_status]")
      end
    end

    class OpsCenterIntegrationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpsCenterIntegrationConfig, context: context)
        Hearth::Validator.validate!(input[:opt_in_status], ::String, context: "#{context}[:opt_in_status]")
      end
    end

    class OrganizationalUnitIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PerformanceInsightsMetricDimensionGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PerformanceInsightsMetricDimensionGroup, context: context)
        Hearth::Validator.validate!(input[:group], ::String, context: "#{context}[:group]")
        Validators::PerformanceInsightsMetricDimensions.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class PerformanceInsightsMetricDimensions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PerformanceInsightsMetricFilterMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class PerformanceInsightsMetricQuery
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PerformanceInsightsMetricQuery, context: context)
        Hearth::Validator.validate!(input[:metric], ::String, context: "#{context}[:metric]")
        Validators::PerformanceInsightsMetricDimensionGroup.validate!(input[:group_by], context: "#{context}[:group_by]") unless input[:group_by].nil?
        Validators::PerformanceInsightsMetricFilterMap.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
      end
    end

    class PerformanceInsightsMetricsDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PerformanceInsightsMetricsDetail, context: context)
        Hearth::Validator.validate!(input[:metric_display_name], ::String, context: "#{context}[:metric_display_name]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
        Validators::PerformanceInsightsMetricQuery.validate!(input[:metric_query], context: "#{context}[:metric_query]") unless input[:metric_query].nil?
        Validators::PerformanceInsightsReferenceDataList.validate!(input[:reference_data], context: "#{context}[:reference_data]") unless input[:reference_data].nil?
        Validators::PerformanceInsightsStats.validate!(input[:stats_at_anomaly], context: "#{context}[:stats_at_anomaly]") unless input[:stats_at_anomaly].nil?
        Validators::PerformanceInsightsStats.validate!(input[:stats_at_baseline], context: "#{context}[:stats_at_baseline]") unless input[:stats_at_baseline].nil?
      end
    end

    class PerformanceInsightsMetricsDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PerformanceInsightsMetricsDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PerformanceInsightsReferenceComparisonValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PerformanceInsightsReferenceComparisonValues, context: context)
        Validators::PerformanceInsightsReferenceScalar.validate!(input[:reference_scalar], context: "#{context}[:reference_scalar]") unless input[:reference_scalar].nil?
        Validators::PerformanceInsightsReferenceMetric.validate!(input[:reference_metric], context: "#{context}[:reference_metric]") unless input[:reference_metric].nil?
      end
    end

    class PerformanceInsightsReferenceData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PerformanceInsightsReferenceData, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::PerformanceInsightsReferenceComparisonValues.validate!(input[:comparison_values], context: "#{context}[:comparison_values]") unless input[:comparison_values].nil?
      end
    end

    class PerformanceInsightsReferenceDataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PerformanceInsightsReferenceData.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PerformanceInsightsReferenceMetric
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PerformanceInsightsReferenceMetric, context: context)
        Validators::PerformanceInsightsMetricQuery.validate!(input[:metric_query], context: "#{context}[:metric_query]") unless input[:metric_query].nil?
      end
    end

    class PerformanceInsightsReferenceScalar
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PerformanceInsightsReferenceScalar, context: context)
        Hearth::Validator.validate!(input[:value], ::Float, context: "#{context}[:value]")
      end
    end

    class PerformanceInsightsStat
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PerformanceInsightsStat, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:value], ::Float, context: "#{context}[:value]")
      end
    end

    class PerformanceInsightsStats
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PerformanceInsightsStat.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PredictionTimeRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PredictionTimeRange, context: context)
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
      end
    end

    class ProactiveAnomalies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ProactiveAnomalySummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProactiveAnomaly
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProactiveAnomaly, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:severity], ::String, context: "#{context}[:severity]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:update_time], ::Time, context: "#{context}[:update_time]")
        Validators::AnomalyTimeRange.validate!(input[:anomaly_time_range], context: "#{context}[:anomaly_time_range]") unless input[:anomaly_time_range].nil?
        Validators::AnomalyReportedTimeRange.validate!(input[:anomaly_reported_time_range], context: "#{context}[:anomaly_reported_time_range]") unless input[:anomaly_reported_time_range].nil?
        Validators::PredictionTimeRange.validate!(input[:prediction_time_range], context: "#{context}[:prediction_time_range]") unless input[:prediction_time_range].nil?
        Validators::AnomalySourceDetails.validate!(input[:source_details], context: "#{context}[:source_details]") unless input[:source_details].nil?
        Hearth::Validator.validate!(input[:associated_insight_id], ::String, context: "#{context}[:associated_insight_id]")
        Validators::ResourceCollection.validate!(input[:resource_collection], context: "#{context}[:resource_collection]") unless input[:resource_collection].nil?
        Hearth::Validator.validate!(input[:limit], ::Float, context: "#{context}[:limit]")
        Validators::AnomalySourceMetadata.validate!(input[:source_metadata], context: "#{context}[:source_metadata]") unless input[:source_metadata].nil?
        Validators::AnomalyResources.validate!(input[:anomaly_resources], context: "#{context}[:anomaly_resources]") unless input[:anomaly_resources].nil?
      end
    end

    class ProactiveAnomalySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProactiveAnomalySummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:severity], ::String, context: "#{context}[:severity]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:update_time], ::Time, context: "#{context}[:update_time]")
        Validators::AnomalyTimeRange.validate!(input[:anomaly_time_range], context: "#{context}[:anomaly_time_range]") unless input[:anomaly_time_range].nil?
        Validators::AnomalyReportedTimeRange.validate!(input[:anomaly_reported_time_range], context: "#{context}[:anomaly_reported_time_range]") unless input[:anomaly_reported_time_range].nil?
        Validators::PredictionTimeRange.validate!(input[:prediction_time_range], context: "#{context}[:prediction_time_range]") unless input[:prediction_time_range].nil?
        Validators::AnomalySourceDetails.validate!(input[:source_details], context: "#{context}[:source_details]") unless input[:source_details].nil?
        Hearth::Validator.validate!(input[:associated_insight_id], ::String, context: "#{context}[:associated_insight_id]")
        Validators::ResourceCollection.validate!(input[:resource_collection], context: "#{context}[:resource_collection]") unless input[:resource_collection].nil?
        Hearth::Validator.validate!(input[:limit], ::Float, context: "#{context}[:limit]")
        Validators::AnomalySourceMetadata.validate!(input[:source_metadata], context: "#{context}[:source_metadata]") unless input[:source_metadata].nil?
        Validators::AnomalyResources.validate!(input[:anomaly_resources], context: "#{context}[:anomaly_resources]") unless input[:anomaly_resources].nil?
      end
    end

    class ProactiveInsight
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProactiveInsight, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:severity], ::String, context: "#{context}[:severity]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::InsightTimeRange.validate!(input[:insight_time_range], context: "#{context}[:insight_time_range]") unless input[:insight_time_range].nil?
        Validators::PredictionTimeRange.validate!(input[:prediction_time_range], context: "#{context}[:prediction_time_range]") unless input[:prediction_time_range].nil?
        Validators::ResourceCollection.validate!(input[:resource_collection], context: "#{context}[:resource_collection]") unless input[:resource_collection].nil?
        Hearth::Validator.validate!(input[:ssm_ops_item_id], ::String, context: "#{context}[:ssm_ops_item_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class ProactiveInsightSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProactiveInsightSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:severity], ::String, context: "#{context}[:severity]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::InsightTimeRange.validate!(input[:insight_time_range], context: "#{context}[:insight_time_range]") unless input[:insight_time_range].nil?
        Validators::PredictionTimeRange.validate!(input[:prediction_time_range], context: "#{context}[:prediction_time_range]") unless input[:prediction_time_range].nil?
        Validators::ResourceCollection.validate!(input[:resource_collection], context: "#{context}[:resource_collection]") unless input[:resource_collection].nil?
        Validators::ServiceCollection.validate!(input[:service_collection], context: "#{context}[:service_collection]") unless input[:service_collection].nil?
        Validators::AssociatedResourceArns.validate!(input[:associated_resource_arns], context: "#{context}[:associated_resource_arns]") unless input[:associated_resource_arns].nil?
      end
    end

    class ProactiveInsights
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ProactiveInsightSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProactiveOrganizationInsightSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProactiveOrganizationInsightSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:organizational_unit_id], ::String, context: "#{context}[:organizational_unit_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:severity], ::String, context: "#{context}[:severity]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::InsightTimeRange.validate!(input[:insight_time_range], context: "#{context}[:insight_time_range]") unless input[:insight_time_range].nil?
        Validators::PredictionTimeRange.validate!(input[:prediction_time_range], context: "#{context}[:prediction_time_range]") unless input[:prediction_time_range].nil?
        Validators::ResourceCollection.validate!(input[:resource_collection], context: "#{context}[:resource_collection]") unless input[:resource_collection].nil?
        Validators::ServiceCollection.validate!(input[:service_collection], context: "#{context}[:service_collection]") unless input[:service_collection].nil?
      end
    end

    class ProactiveOrganizationInsights
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ProactiveOrganizationInsightSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutFeedbackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutFeedbackInput, context: context)
        Validators::InsightFeedback.validate!(input[:insight_feedback], context: "#{context}[:insight_feedback]") unless input[:insight_feedback].nil?
      end
    end

    class PutFeedbackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutFeedbackOutput, context: context)
      end
    end

    class ReactiveAnomalies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReactiveAnomalySummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReactiveAnomaly
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReactiveAnomaly, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:severity], ::String, context: "#{context}[:severity]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::AnomalyTimeRange.validate!(input[:anomaly_time_range], context: "#{context}[:anomaly_time_range]") unless input[:anomaly_time_range].nil?
        Validators::AnomalyReportedTimeRange.validate!(input[:anomaly_reported_time_range], context: "#{context}[:anomaly_reported_time_range]") unless input[:anomaly_reported_time_range].nil?
        Validators::AnomalySourceDetails.validate!(input[:source_details], context: "#{context}[:source_details]") unless input[:source_details].nil?
        Hearth::Validator.validate!(input[:associated_insight_id], ::String, context: "#{context}[:associated_insight_id]")
        Validators::ResourceCollection.validate!(input[:resource_collection], context: "#{context}[:resource_collection]") unless input[:resource_collection].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:causal_anomaly_id], ::String, context: "#{context}[:causal_anomaly_id]")
        Validators::AnomalyResources.validate!(input[:anomaly_resources], context: "#{context}[:anomaly_resources]") unless input[:anomaly_resources].nil?
      end
    end

    class ReactiveAnomalySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReactiveAnomalySummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:severity], ::String, context: "#{context}[:severity]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::AnomalyTimeRange.validate!(input[:anomaly_time_range], context: "#{context}[:anomaly_time_range]") unless input[:anomaly_time_range].nil?
        Validators::AnomalyReportedTimeRange.validate!(input[:anomaly_reported_time_range], context: "#{context}[:anomaly_reported_time_range]") unless input[:anomaly_reported_time_range].nil?
        Validators::AnomalySourceDetails.validate!(input[:source_details], context: "#{context}[:source_details]") unless input[:source_details].nil?
        Hearth::Validator.validate!(input[:associated_insight_id], ::String, context: "#{context}[:associated_insight_id]")
        Validators::ResourceCollection.validate!(input[:resource_collection], context: "#{context}[:resource_collection]") unless input[:resource_collection].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:causal_anomaly_id], ::String, context: "#{context}[:causal_anomaly_id]")
        Validators::AnomalyResources.validate!(input[:anomaly_resources], context: "#{context}[:anomaly_resources]") unless input[:anomaly_resources].nil?
      end
    end

    class ReactiveInsight
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReactiveInsight, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:severity], ::String, context: "#{context}[:severity]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::InsightTimeRange.validate!(input[:insight_time_range], context: "#{context}[:insight_time_range]") unless input[:insight_time_range].nil?
        Validators::ResourceCollection.validate!(input[:resource_collection], context: "#{context}[:resource_collection]") unless input[:resource_collection].nil?
        Hearth::Validator.validate!(input[:ssm_ops_item_id], ::String, context: "#{context}[:ssm_ops_item_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class ReactiveInsightSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReactiveInsightSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:severity], ::String, context: "#{context}[:severity]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::InsightTimeRange.validate!(input[:insight_time_range], context: "#{context}[:insight_time_range]") unless input[:insight_time_range].nil?
        Validators::ResourceCollection.validate!(input[:resource_collection], context: "#{context}[:resource_collection]") unless input[:resource_collection].nil?
        Validators::ServiceCollection.validate!(input[:service_collection], context: "#{context}[:service_collection]") unless input[:service_collection].nil?
        Validators::AssociatedResourceArns.validate!(input[:associated_resource_arns], context: "#{context}[:associated_resource_arns]") unless input[:associated_resource_arns].nil?
      end
    end

    class ReactiveInsights
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReactiveInsightSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReactiveOrganizationInsightSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReactiveOrganizationInsightSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:organizational_unit_id], ::String, context: "#{context}[:organizational_unit_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:severity], ::String, context: "#{context}[:severity]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::InsightTimeRange.validate!(input[:insight_time_range], context: "#{context}[:insight_time_range]") unless input[:insight_time_range].nil?
        Validators::ResourceCollection.validate!(input[:resource_collection], context: "#{context}[:resource_collection]") unless input[:resource_collection].nil?
        Validators::ServiceCollection.validate!(input[:service_collection], context: "#{context}[:service_collection]") unless input[:service_collection].nil?
      end
    end

    class ReactiveOrganizationInsights
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReactiveOrganizationInsightSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Recommendation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Recommendation, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:link], ::String, context: "#{context}[:link]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Validators::RecommendationRelatedEvents.validate!(input[:related_events], context: "#{context}[:related_events]") unless input[:related_events].nil?
        Validators::RecommendationRelatedAnomalies.validate!(input[:related_anomalies], context: "#{context}[:related_anomalies]") unless input[:related_anomalies].nil?
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
      end
    end

    class RecommendationRelatedAnomalies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RecommendationRelatedAnomaly.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecommendationRelatedAnomaly
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecommendationRelatedAnomaly, context: context)
        Validators::RecommendationRelatedAnomalyResources.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        Validators::RelatedAnomalySourceDetails.validate!(input[:source_details], context: "#{context}[:source_details]") unless input[:source_details].nil?
        Hearth::Validator.validate!(input[:anomaly_id], ::String, context: "#{context}[:anomaly_id]")
      end
    end

    class RecommendationRelatedAnomalyResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecommendationRelatedAnomalyResource, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class RecommendationRelatedAnomalyResources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RecommendationRelatedAnomalyResource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecommendationRelatedAnomalySourceDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecommendationRelatedAnomalySourceDetail, context: context)
        Validators::RecommendationRelatedCloudWatchMetricsSourceDetails.validate!(input[:cloud_watch_metrics], context: "#{context}[:cloud_watch_metrics]") unless input[:cloud_watch_metrics].nil?
      end
    end

    class RecommendationRelatedCloudWatchMetricsSourceDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecommendationRelatedCloudWatchMetricsSourceDetail, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
      end
    end

    class RecommendationRelatedCloudWatchMetricsSourceDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RecommendationRelatedCloudWatchMetricsSourceDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecommendationRelatedEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecommendationRelatedEvent, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::RecommendationRelatedEventResources.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
      end
    end

    class RecommendationRelatedEventResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecommendationRelatedEventResource, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class RecommendationRelatedEventResources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RecommendationRelatedEventResource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecommendationRelatedEvents
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RecommendationRelatedEvent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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

    class RelatedAnomalySourceDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RecommendationRelatedAnomalySourceDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RemoveNotificationChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveNotificationChannelInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class RemoveNotificationChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveNotificationChannelOutput, context: context)
      end
    end

    class ResourceCollection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceCollection, context: context)
        Validators::CloudFormationCollection.validate!(input[:cloud_formation], context: "#{context}[:cloud_formation]") unless input[:cloud_formation].nil?
        Validators::TagCollections.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ResourceCollectionFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceCollectionFilter, context: context)
        Validators::CloudFormationCollectionFilter.validate!(input[:cloud_formation], context: "#{context}[:cloud_formation]") unless input[:cloud_formation].nil?
        Validators::TagCollectionFilters.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class SearchInsightsAccountIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SearchInsightsFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchInsightsFilters, context: context)
        Validators::InsightSeverities.validate!(input[:severities], context: "#{context}[:severities]") unless input[:severities].nil?
        Validators::InsightStatuses.validate!(input[:statuses], context: "#{context}[:statuses]") unless input[:statuses].nil?
        Validators::ResourceCollection.validate!(input[:resource_collection], context: "#{context}[:resource_collection]") unless input[:resource_collection].nil?
        Validators::ServiceCollection.validate!(input[:service_collection], context: "#{context}[:service_collection]") unless input[:service_collection].nil?
      end
    end

    class SearchInsightsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchInsightsInput, context: context)
        Validators::StartTimeRange.validate!(input[:start_time_range], context: "#{context}[:start_time_range]") unless input[:start_time_range].nil?
        Validators::SearchInsightsFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class SearchInsightsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchInsightsOutput, context: context)
        Validators::ProactiveInsights.validate!(input[:proactive_insights], context: "#{context}[:proactive_insights]") unless input[:proactive_insights].nil?
        Validators::ReactiveInsights.validate!(input[:reactive_insights], context: "#{context}[:reactive_insights]") unless input[:reactive_insights].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class SearchOrganizationInsightsFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchOrganizationInsightsFilters, context: context)
        Validators::InsightSeverities.validate!(input[:severities], context: "#{context}[:severities]") unless input[:severities].nil?
        Validators::InsightStatuses.validate!(input[:statuses], context: "#{context}[:statuses]") unless input[:statuses].nil?
        Validators::ResourceCollection.validate!(input[:resource_collection], context: "#{context}[:resource_collection]") unless input[:resource_collection].nil?
        Validators::ServiceCollection.validate!(input[:service_collection], context: "#{context}[:service_collection]") unless input[:service_collection].nil?
      end
    end

    class SearchOrganizationInsightsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchOrganizationInsightsInput, context: context)
        Validators::SearchInsightsAccountIdList.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
        Validators::StartTimeRange.validate!(input[:start_time_range], context: "#{context}[:start_time_range]") unless input[:start_time_range].nil?
        Validators::SearchOrganizationInsightsFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class SearchOrganizationInsightsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchOrganizationInsightsOutput, context: context)
        Validators::ProactiveInsights.validate!(input[:proactive_insights], context: "#{context}[:proactive_insights]") unless input[:proactive_insights].nil?
        Validators::ReactiveInsights.validate!(input[:reactive_insights], context: "#{context}[:reactive_insights]") unless input[:reactive_insights].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ServiceCollection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceCollection, context: context)
        Validators::ServiceNames.validate!(input[:service_names], context: "#{context}[:service_names]") unless input[:service_names].nil?
      end
    end

    class ServiceHealth
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceHealth, context: context)
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Validators::ServiceInsightHealth.validate!(input[:insight], context: "#{context}[:insight]") unless input[:insight].nil?
      end
    end

    class ServiceHealths
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ServiceHealth.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceInsightHealth
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceInsightHealth, context: context)
        Hearth::Validator.validate!(input[:open_proactive_insights], ::Integer, context: "#{context}[:open_proactive_insights]")
        Hearth::Validator.validate!(input[:open_reactive_insights], ::Integer, context: "#{context}[:open_reactive_insights]")
      end
    end

    class ServiceIntegrationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceIntegrationConfig, context: context)
        Validators::OpsCenterIntegration.validate!(input[:ops_center], context: "#{context}[:ops_center]") unless input[:ops_center].nil?
      end
    end

    class ServiceNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceResourceCost
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceResourceCost, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Hearth::Validator.validate!(input[:unit_cost], ::Float, context: "#{context}[:unit_cost]")
        Hearth::Validator.validate!(input[:cost], ::Float, context: "#{context}[:cost]")
      end
    end

    class ServiceResourceCosts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ServiceResourceCost.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SnsChannelConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnsChannelConfig, context: context)
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
      end
    end

    class StackNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StartCostEstimationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartCostEstimationInput, context: context)
        Validators::CostEstimationResourceCollectionFilter.validate!(input[:resource_collection], context: "#{context}[:resource_collection]") unless input[:resource_collection].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class StartCostEstimationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartCostEstimationOutput, context: context)
      end
    end

    class StartTimeRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartTimeRange, context: context)
        Hearth::Validator.validate!(input[:from_time], ::Time, context: "#{context}[:from_time]")
        Hearth::Validator.validate!(input[:to_time], ::Time, context: "#{context}[:to_time]")
      end
    end

    class TagCollection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagCollection, context: context)
        Hearth::Validator.validate!(input[:app_boundary_key], ::String, context: "#{context}[:app_boundary_key]")
        Validators::TagValues.validate!(input[:tag_values], context: "#{context}[:tag_values]") unless input[:tag_values].nil?
      end
    end

    class TagCollectionFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagCollectionFilter, context: context)
        Hearth::Validator.validate!(input[:app_boundary_key], ::String, context: "#{context}[:app_boundary_key]")
        Validators::TagValues.validate!(input[:tag_values], context: "#{context}[:tag_values]") unless input[:tag_values].nil?
      end
    end

    class TagCollectionFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TagCollectionFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagCollections
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TagCollection.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagCostEstimationResourceCollectionFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagCostEstimationResourceCollectionFilter, context: context)
        Hearth::Validator.validate!(input[:app_boundary_key], ::String, context: "#{context}[:app_boundary_key]")
        Validators::CostEstimationTagValues.validate!(input[:tag_values], context: "#{context}[:tag_values]") unless input[:tag_values].nil?
      end
    end

    class TagCostEstimationResourceCollectionFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TagCostEstimationResourceCollectionFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagHealth
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagHealth, context: context)
        Hearth::Validator.validate!(input[:app_boundary_key], ::String, context: "#{context}[:app_boundary_key]")
        Hearth::Validator.validate!(input[:tag_value], ::String, context: "#{context}[:tag_value]")
        Validators::InsightHealth.validate!(input[:insight], context: "#{context}[:insight]") unless input[:insight].nil?
      end
    end

    class TagHealths
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TagHealth.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagValues
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
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::Integer, context: "#{context}[:retry_after_seconds]")
      end
    end

    class TimestampMetricValuePair
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimestampMetricValuePair, context: context)
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:metric_value], ::Float, context: "#{context}[:metric_value]")
      end
    end

    class TimestampMetricValuePairList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TimestampMetricValuePair.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UpdateCloudFormationCollectionFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCloudFormationCollectionFilter, context: context)
        Validators::UpdateStackNames.validate!(input[:stack_names], context: "#{context}[:stack_names]") unless input[:stack_names].nil?
      end
    end

    class UpdateEventSourcesConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEventSourcesConfigInput, context: context)
        Validators::EventSourcesConfig.validate!(input[:event_sources], context: "#{context}[:event_sources]") unless input[:event_sources].nil?
      end
    end

    class UpdateEventSourcesConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEventSourcesConfigOutput, context: context)
      end
    end

    class UpdateResourceCollectionFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResourceCollectionFilter, context: context)
        Validators::UpdateCloudFormationCollectionFilter.validate!(input[:cloud_formation], context: "#{context}[:cloud_formation]") unless input[:cloud_formation].nil?
        Validators::UpdateTagCollectionFilters.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UpdateResourceCollectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResourceCollectionInput, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Validators::UpdateResourceCollectionFilter.validate!(input[:resource_collection], context: "#{context}[:resource_collection]") unless input[:resource_collection].nil?
      end
    end

    class UpdateResourceCollectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResourceCollectionOutput, context: context)
      end
    end

    class UpdateServiceIntegrationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServiceIntegrationConfig, context: context)
        Validators::OpsCenterIntegrationConfig.validate!(input[:ops_center], context: "#{context}[:ops_center]") unless input[:ops_center].nil?
      end
    end

    class UpdateServiceIntegrationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServiceIntegrationInput, context: context)
        Validators::UpdateServiceIntegrationConfig.validate!(input[:service_integration], context: "#{context}[:service_integration]") unless input[:service_integration].nil?
      end
    end

    class UpdateServiceIntegrationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServiceIntegrationOutput, context: context)
      end
    end

    class UpdateStackNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class UpdateTagCollectionFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTagCollectionFilter, context: context)
        Hearth::Validator.validate!(input[:app_boundary_key], ::String, context: "#{context}[:app_boundary_key]")
        Validators::UpdateTagValues.validate!(input[:tag_values], context: "#{context}[:tag_values]") unless input[:tag_values].nil?
      end
    end

    class UpdateTagCollectionFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::UpdateTagCollectionFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UpdateTagValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Validators::ValidationExceptionFields.validate!(input[:fields], context: "#{context}[:fields]") unless input[:fields].nil?
      end
    end

    class ValidationExceptionField
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationExceptionField, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ValidationExceptionFields
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ValidationExceptionField.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
