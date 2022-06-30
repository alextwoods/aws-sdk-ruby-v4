# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::DevOpsGuru
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AccountHealth
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountHealth, context: context)
        type = Types::AccountHealth.new
        type.account_id = params[:account_id]
        type.insight = AccountInsightHealth.build(params[:insight], context: "#{context}[:insight]") unless params[:insight].nil?
        type
      end
    end

    module AccountHealths
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccountHealth.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AccountIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AccountInsightHealth
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountInsightHealth, context: context)
        type = Types::AccountInsightHealth.new
        type.open_proactive_insights = params[:open_proactive_insights]
        type.open_reactive_insights = params[:open_reactive_insights]
        type
      end
    end

    module AddNotificationChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddNotificationChannelInput, context: context)
        type = Types::AddNotificationChannelInput.new
        type.config = NotificationChannelConfig.build(params[:config], context: "#{context}[:config]") unless params[:config].nil?
        type
      end
    end

    module AddNotificationChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddNotificationChannelOutput, context: context)
        type = Types::AddNotificationChannelOutput.new
        type.id = params[:id]
        type
      end
    end

    module AmazonCodeGuruProfilerIntegration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AmazonCodeGuruProfilerIntegration, context: context)
        type = Types::AmazonCodeGuruProfilerIntegration.new
        type.status = params[:status]
        type
      end
    end

    module AnomalyReportedTimeRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnomalyReportedTimeRange, context: context)
        type = Types::AnomalyReportedTimeRange.new
        type.open_time = params[:open_time]
        type.close_time = params[:close_time]
        type
      end
    end

    module AnomalyResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnomalyResource, context: context)
        type = Types::AnomalyResource.new
        type.name = params[:name]
        type.type = params[:type]
        type
      end
    end

    module AnomalyResources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AnomalyResource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AnomalySourceDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnomalySourceDetails, context: context)
        type = Types::AnomalySourceDetails.new
        type.cloud_watch_metrics = CloudWatchMetricsDetails.build(params[:cloud_watch_metrics], context: "#{context}[:cloud_watch_metrics]") unless params[:cloud_watch_metrics].nil?
        type.performance_insights_metrics = PerformanceInsightsMetricsDetails.build(params[:performance_insights_metrics], context: "#{context}[:performance_insights_metrics]") unless params[:performance_insights_metrics].nil?
        type
      end
    end

    module AnomalySourceMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnomalySourceMetadata, context: context)
        type = Types::AnomalySourceMetadata.new
        type.source = params[:source]
        type.source_resource_name = params[:source_resource_name]
        type.source_resource_type = params[:source_resource_type]
        type
      end
    end

    module AnomalyTimeRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnomalyTimeRange, context: context)
        type = Types::AnomalyTimeRange.new
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module AssociatedResourceArns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Channels
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NotificationChannel.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CloudFormationCollection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudFormationCollection, context: context)
        type = Types::CloudFormationCollection.new
        type.stack_names = StackNames.build(params[:stack_names], context: "#{context}[:stack_names]") unless params[:stack_names].nil?
        type
      end
    end

    module CloudFormationCollectionFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudFormationCollectionFilter, context: context)
        type = Types::CloudFormationCollectionFilter.new
        type.stack_names = StackNames.build(params[:stack_names], context: "#{context}[:stack_names]") unless params[:stack_names].nil?
        type
      end
    end

    module CloudFormationCostEstimationResourceCollectionFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudFormationCostEstimationResourceCollectionFilter, context: context)
        type = Types::CloudFormationCostEstimationResourceCollectionFilter.new
        type.stack_names = CostEstimationStackNames.build(params[:stack_names], context: "#{context}[:stack_names]") unless params[:stack_names].nil?
        type
      end
    end

    module CloudFormationHealth
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudFormationHealth, context: context)
        type = Types::CloudFormationHealth.new
        type.stack_name = params[:stack_name]
        type.insight = InsightHealth.build(params[:insight], context: "#{context}[:insight]") unless params[:insight].nil?
        type
      end
    end

    module CloudFormationHealths
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CloudFormationHealth.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CloudWatchMetricsDataSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudWatchMetricsDataSummary, context: context)
        type = Types::CloudWatchMetricsDataSummary.new
        type.timestamp_metric_value_pair_list = TimestampMetricValuePairList.build(params[:timestamp_metric_value_pair_list], context: "#{context}[:timestamp_metric_value_pair_list]") unless params[:timestamp_metric_value_pair_list].nil?
        type.status_code = params[:status_code]
        type
      end
    end

    module CloudWatchMetricsDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudWatchMetricsDetail, context: context)
        type = Types::CloudWatchMetricsDetail.new
        type.metric_name = params[:metric_name]
        type.namespace = params[:namespace]
        type.dimensions = CloudWatchMetricsDimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.stat = params[:stat]
        type.unit = params[:unit]
        type.period = params[:period]
        type.metric_data_summary = CloudWatchMetricsDataSummary.build(params[:metric_data_summary], context: "#{context}[:metric_data_summary]") unless params[:metric_data_summary].nil?
        type
      end
    end

    module CloudWatchMetricsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CloudWatchMetricsDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CloudWatchMetricsDimension
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudWatchMetricsDimension, context: context)
        type = Types::CloudWatchMetricsDimension.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module CloudWatchMetricsDimensions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CloudWatchMetricsDimension.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module CostEstimationResourceCollectionFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CostEstimationResourceCollectionFilter, context: context)
        type = Types::CostEstimationResourceCollectionFilter.new
        type.cloud_formation = CloudFormationCostEstimationResourceCollectionFilter.build(params[:cloud_formation], context: "#{context}[:cloud_formation]") unless params[:cloud_formation].nil?
        type.tags = TagCostEstimationResourceCollectionFilters.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CostEstimationStackNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CostEstimationTagValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CostEstimationTimeRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CostEstimationTimeRange, context: context)
        type = Types::CostEstimationTimeRange.new
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module DeleteInsightInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInsightInput, context: context)
        type = Types::DeleteInsightInput.new
        type.id = params[:id]
        type
      end
    end

    module DeleteInsightOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInsightOutput, context: context)
        type = Types::DeleteInsightOutput.new
        type
      end
    end

    module DescribeAccountHealthInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountHealthInput, context: context)
        type = Types::DescribeAccountHealthInput.new
        type
      end
    end

    module DescribeAccountHealthOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountHealthOutput, context: context)
        type = Types::DescribeAccountHealthOutput.new
        type.open_reactive_insights = params[:open_reactive_insights]
        type.open_proactive_insights = params[:open_proactive_insights]
        type.metrics_analyzed = params[:metrics_analyzed]
        type.resource_hours = params[:resource_hours]
        type
      end
    end

    module DescribeAccountOverviewInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountOverviewInput, context: context)
        type = Types::DescribeAccountOverviewInput.new
        type.from_time = params[:from_time]
        type.to_time = params[:to_time]
        type
      end
    end

    module DescribeAccountOverviewOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountOverviewOutput, context: context)
        type = Types::DescribeAccountOverviewOutput.new
        type.reactive_insights = params[:reactive_insights]
        type.proactive_insights = params[:proactive_insights]
        type.mean_time_to_recover_in_milliseconds = params[:mean_time_to_recover_in_milliseconds]
        type
      end
    end

    module DescribeAnomalyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAnomalyInput, context: context)
        type = Types::DescribeAnomalyInput.new
        type.id = params[:id]
        type.account_id = params[:account_id]
        type
      end
    end

    module DescribeAnomalyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAnomalyOutput, context: context)
        type = Types::DescribeAnomalyOutput.new
        type.proactive_anomaly = ProactiveAnomaly.build(params[:proactive_anomaly], context: "#{context}[:proactive_anomaly]") unless params[:proactive_anomaly].nil?
        type.reactive_anomaly = ReactiveAnomaly.build(params[:reactive_anomaly], context: "#{context}[:reactive_anomaly]") unless params[:reactive_anomaly].nil?
        type
      end
    end

    module DescribeEventSourcesConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventSourcesConfigInput, context: context)
        type = Types::DescribeEventSourcesConfigInput.new
        type
      end
    end

    module DescribeEventSourcesConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEventSourcesConfigOutput, context: context)
        type = Types::DescribeEventSourcesConfigOutput.new
        type.event_sources = EventSourcesConfig.build(params[:event_sources], context: "#{context}[:event_sources]") unless params[:event_sources].nil?
        type
      end
    end

    module DescribeFeedbackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFeedbackInput, context: context)
        type = Types::DescribeFeedbackInput.new
        type.insight_id = params[:insight_id]
        type
      end
    end

    module DescribeFeedbackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFeedbackOutput, context: context)
        type = Types::DescribeFeedbackOutput.new
        type.insight_feedback = InsightFeedback.build(params[:insight_feedback], context: "#{context}[:insight_feedback]") unless params[:insight_feedback].nil?
        type
      end
    end

    module DescribeInsightInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInsightInput, context: context)
        type = Types::DescribeInsightInput.new
        type.id = params[:id]
        type.account_id = params[:account_id]
        type
      end
    end

    module DescribeInsightOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInsightOutput, context: context)
        type = Types::DescribeInsightOutput.new
        type.proactive_insight = ProactiveInsight.build(params[:proactive_insight], context: "#{context}[:proactive_insight]") unless params[:proactive_insight].nil?
        type.reactive_insight = ReactiveInsight.build(params[:reactive_insight], context: "#{context}[:reactive_insight]") unless params[:reactive_insight].nil?
        type
      end
    end

    module DescribeOrganizationHealthInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrganizationHealthInput, context: context)
        type = Types::DescribeOrganizationHealthInput.new
        type.account_ids = AccountIdList.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type.organizational_unit_ids = OrganizationalUnitIdList.build(params[:organizational_unit_ids], context: "#{context}[:organizational_unit_ids]") unless params[:organizational_unit_ids].nil?
        type
      end
    end

    module DescribeOrganizationHealthOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrganizationHealthOutput, context: context)
        type = Types::DescribeOrganizationHealthOutput.new
        type.open_reactive_insights = params[:open_reactive_insights]
        type.open_proactive_insights = params[:open_proactive_insights]
        type.metrics_analyzed = params[:metrics_analyzed]
        type.resource_hours = params[:resource_hours]
        type
      end
    end

    module DescribeOrganizationOverviewInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrganizationOverviewInput, context: context)
        type = Types::DescribeOrganizationOverviewInput.new
        type.from_time = params[:from_time]
        type.to_time = params[:to_time]
        type.account_ids = AccountIdList.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type.organizational_unit_ids = OrganizationalUnitIdList.build(params[:organizational_unit_ids], context: "#{context}[:organizational_unit_ids]") unless params[:organizational_unit_ids].nil?
        type
      end
    end

    module DescribeOrganizationOverviewOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrganizationOverviewOutput, context: context)
        type = Types::DescribeOrganizationOverviewOutput.new
        type.reactive_insights = params[:reactive_insights]
        type.proactive_insights = params[:proactive_insights]
        type
      end
    end

    module DescribeOrganizationResourceCollectionHealthInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrganizationResourceCollectionHealthInput, context: context)
        type = Types::DescribeOrganizationResourceCollectionHealthInput.new
        type.organization_resource_collection_type = params[:organization_resource_collection_type]
        type.account_ids = AccountIdList.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type.organizational_unit_ids = OrganizationalUnitIdList.build(params[:organizational_unit_ids], context: "#{context}[:organizational_unit_ids]") unless params[:organizational_unit_ids].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeOrganizationResourceCollectionHealthOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrganizationResourceCollectionHealthOutput, context: context)
        type = Types::DescribeOrganizationResourceCollectionHealthOutput.new
        type.cloud_formation = CloudFormationHealths.build(params[:cloud_formation], context: "#{context}[:cloud_formation]") unless params[:cloud_formation].nil?
        type.service = ServiceHealths.build(params[:service], context: "#{context}[:service]") unless params[:service].nil?
        type.account = AccountHealths.build(params[:account], context: "#{context}[:account]") unless params[:account].nil?
        type.next_token = params[:next_token]
        type.tags = TagHealths.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DescribeResourceCollectionHealthInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeResourceCollectionHealthInput, context: context)
        type = Types::DescribeResourceCollectionHealthInput.new
        type.resource_collection_type = params[:resource_collection_type]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeResourceCollectionHealthOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeResourceCollectionHealthOutput, context: context)
        type = Types::DescribeResourceCollectionHealthOutput.new
        type.cloud_formation = CloudFormationHealths.build(params[:cloud_formation], context: "#{context}[:cloud_formation]") unless params[:cloud_formation].nil?
        type.service = ServiceHealths.build(params[:service], context: "#{context}[:service]") unless params[:service].nil?
        type.next_token = params[:next_token]
        type.tags = TagHealths.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DescribeServiceIntegrationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeServiceIntegrationInput, context: context)
        type = Types::DescribeServiceIntegrationInput.new
        type
      end
    end

    module DescribeServiceIntegrationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeServiceIntegrationOutput, context: context)
        type = Types::DescribeServiceIntegrationOutput.new
        type.service_integration = ServiceIntegrationConfig.build(params[:service_integration], context: "#{context}[:service_integration]") unless params[:service_integration].nil?
        type
      end
    end

    module EndTimeRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndTimeRange, context: context)
        type = Types::EndTimeRange.new
        type.from_time = params[:from_time]
        type.to_time = params[:to_time]
        type
      end
    end

    module Event
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Event, context: context)
        type = Types::Event.new
        type.resource_collection = ResourceCollection.build(params[:resource_collection], context: "#{context}[:resource_collection]") unless params[:resource_collection].nil?
        type.id = params[:id]
        type.time = params[:time]
        type.event_source = params[:event_source]
        type.name = params[:name]
        type.data_source = params[:data_source]
        type.event_class = params[:event_class]
        type.resources = EventResources.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type
      end
    end

    module EventResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventResource, context: context)
        type = Types::EventResource.new
        type.type = params[:type]
        type.name = params[:name]
        type.arn = params[:arn]
        type
      end
    end

    module EventResources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventResource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EventSourcesConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventSourcesConfig, context: context)
        type = Types::EventSourcesConfig.new
        type.amazon_code_guru_profiler = AmazonCodeGuruProfilerIntegration.build(params[:amazon_code_guru_profiler], context: "#{context}[:amazon_code_guru_profiler]") unless params[:amazon_code_guru_profiler].nil?
        type
      end
    end

    module EventTimeRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventTimeRange, context: context)
        type = Types::EventTimeRange.new
        type.from_time = params[:from_time]
        type.to_time = params[:to_time]
        type
      end
    end

    module Events
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Event.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetCostEstimationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCostEstimationInput, context: context)
        type = Types::GetCostEstimationInput.new
        type.next_token = params[:next_token]
        type
      end
    end

    module GetCostEstimationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCostEstimationOutput, context: context)
        type = Types::GetCostEstimationOutput.new
        type.resource_collection = CostEstimationResourceCollectionFilter.build(params[:resource_collection], context: "#{context}[:resource_collection]") unless params[:resource_collection].nil?
        type.status = params[:status]
        type.costs = ServiceResourceCosts.build(params[:costs], context: "#{context}[:costs]") unless params[:costs].nil?
        type.time_range = CostEstimationTimeRange.build(params[:time_range], context: "#{context}[:time_range]") unless params[:time_range].nil?
        type.total_cost = params[:total_cost]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetResourceCollectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourceCollectionInput, context: context)
        type = Types::GetResourceCollectionInput.new
        type.resource_collection_type = params[:resource_collection_type]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetResourceCollectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourceCollectionOutput, context: context)
        type = Types::GetResourceCollectionOutput.new
        type.resource_collection = ResourceCollectionFilter.build(params[:resource_collection], context: "#{context}[:resource_collection]") unless params[:resource_collection].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module InsightFeedback
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsightFeedback, context: context)
        type = Types::InsightFeedback.new
        type.id = params[:id]
        type.feedback = params[:feedback]
        type
      end
    end

    module InsightHealth
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsightHealth, context: context)
        type = Types::InsightHealth.new
        type.open_proactive_insights = params[:open_proactive_insights]
        type.open_reactive_insights = params[:open_reactive_insights]
        type.mean_time_to_recover_in_milliseconds = params[:mean_time_to_recover_in_milliseconds]
        type
      end
    end

    module InsightSeverities
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InsightStatuses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InsightTimeRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsightTimeRange, context: context)
        type = Types::InsightTimeRange.new
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type.retry_after_seconds = params[:retry_after_seconds]
        type
      end
    end

    module ListAnomaliesForInsightInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAnomaliesForInsightInput, context: context)
        type = Types::ListAnomaliesForInsightInput.new
        type.insight_id = params[:insight_id]
        type.start_time_range = StartTimeRange.build(params[:start_time_range], context: "#{context}[:start_time_range]") unless params[:start_time_range].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.account_id = params[:account_id]
        type
      end
    end

    module ListAnomaliesForInsightOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAnomaliesForInsightOutput, context: context)
        type = Types::ListAnomaliesForInsightOutput.new
        type.proactive_anomalies = ProactiveAnomalies.build(params[:proactive_anomalies], context: "#{context}[:proactive_anomalies]") unless params[:proactive_anomalies].nil?
        type.reactive_anomalies = ReactiveAnomalies.build(params[:reactive_anomalies], context: "#{context}[:reactive_anomalies]") unless params[:reactive_anomalies].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEventsFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEventsFilters, context: context)
        type = Types::ListEventsFilters.new
        type.insight_id = params[:insight_id]
        type.event_time_range = EventTimeRange.build(params[:event_time_range], context: "#{context}[:event_time_range]") unless params[:event_time_range].nil?
        type.event_class = params[:event_class]
        type.event_source = params[:event_source]
        type.data_source = params[:data_source]
        type.resource_collection = ResourceCollection.build(params[:resource_collection], context: "#{context}[:resource_collection]") unless params[:resource_collection].nil?
        type
      end
    end

    module ListEventsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEventsInput, context: context)
        type = Types::ListEventsInput.new
        type.filters = ListEventsFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.account_id = params[:account_id]
        type
      end
    end

    module ListEventsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEventsOutput, context: context)
        type = Types::ListEventsOutput.new
        type.events = Events.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListInsightsAccountIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListInsightsAnyStatusFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInsightsAnyStatusFilter, context: context)
        type = Types::ListInsightsAnyStatusFilter.new
        type.type = params[:type]
        type.start_time_range = StartTimeRange.build(params[:start_time_range], context: "#{context}[:start_time_range]") unless params[:start_time_range].nil?
        type
      end
    end

    module ListInsightsClosedStatusFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInsightsClosedStatusFilter, context: context)
        type = Types::ListInsightsClosedStatusFilter.new
        type.type = params[:type]
        type.end_time_range = EndTimeRange.build(params[:end_time_range], context: "#{context}[:end_time_range]") unless params[:end_time_range].nil?
        type
      end
    end

    module ListInsightsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInsightsInput, context: context)
        type = Types::ListInsightsInput.new
        type.status_filter = ListInsightsStatusFilter.build(params[:status_filter], context: "#{context}[:status_filter]") unless params[:status_filter].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListInsightsOngoingStatusFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInsightsOngoingStatusFilter, context: context)
        type = Types::ListInsightsOngoingStatusFilter.new
        type.type = params[:type]
        type
      end
    end

    module ListInsightsOrganizationalUnitIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListInsightsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInsightsOutput, context: context)
        type = Types::ListInsightsOutput.new
        type.proactive_insights = ProactiveInsights.build(params[:proactive_insights], context: "#{context}[:proactive_insights]") unless params[:proactive_insights].nil?
        type.reactive_insights = ReactiveInsights.build(params[:reactive_insights], context: "#{context}[:reactive_insights]") unless params[:reactive_insights].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListInsightsStatusFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInsightsStatusFilter, context: context)
        type = Types::ListInsightsStatusFilter.new
        type.ongoing = ListInsightsOngoingStatusFilter.build(params[:ongoing], context: "#{context}[:ongoing]") unless params[:ongoing].nil?
        type.closed = ListInsightsClosedStatusFilter.build(params[:closed], context: "#{context}[:closed]") unless params[:closed].nil?
        type.any = ListInsightsAnyStatusFilter.build(params[:any], context: "#{context}[:any]") unless params[:any].nil?
        type
      end
    end

    module ListNotificationChannelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNotificationChannelsInput, context: context)
        type = Types::ListNotificationChannelsInput.new
        type.next_token = params[:next_token]
        type
      end
    end

    module ListNotificationChannelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNotificationChannelsOutput, context: context)
        type = Types::ListNotificationChannelsOutput.new
        type.channels = Channels.build(params[:channels], context: "#{context}[:channels]") unless params[:channels].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOrganizationInsightsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOrganizationInsightsInput, context: context)
        type = Types::ListOrganizationInsightsInput.new
        type.status_filter = ListInsightsStatusFilter.build(params[:status_filter], context: "#{context}[:status_filter]") unless params[:status_filter].nil?
        type.max_results = params[:max_results]
        type.account_ids = ListInsightsAccountIdList.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type.organizational_unit_ids = ListInsightsOrganizationalUnitIdList.build(params[:organizational_unit_ids], context: "#{context}[:organizational_unit_ids]") unless params[:organizational_unit_ids].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOrganizationInsightsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOrganizationInsightsOutput, context: context)
        type = Types::ListOrganizationInsightsOutput.new
        type.proactive_insights = ProactiveOrganizationInsights.build(params[:proactive_insights], context: "#{context}[:proactive_insights]") unless params[:proactive_insights].nil?
        type.reactive_insights = ReactiveOrganizationInsights.build(params[:reactive_insights], context: "#{context}[:reactive_insights]") unless params[:reactive_insights].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRecommendationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRecommendationsInput, context: context)
        type = Types::ListRecommendationsInput.new
        type.insight_id = params[:insight_id]
        type.next_token = params[:next_token]
        type.locale = params[:locale]
        type.account_id = params[:account_id]
        type
      end
    end

    module ListRecommendationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRecommendationsOutput, context: context)
        type = Types::ListRecommendationsOutput.new
        type.recommendations = Recommendations.build(params[:recommendations], context: "#{context}[:recommendations]") unless params[:recommendations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module NotificationChannel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotificationChannel, context: context)
        type = Types::NotificationChannel.new
        type.id = params[:id]
        type.config = NotificationChannelConfig.build(params[:config], context: "#{context}[:config]") unless params[:config].nil?
        type
      end
    end

    module NotificationChannelConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotificationChannelConfig, context: context)
        type = Types::NotificationChannelConfig.new
        type.sns = SnsChannelConfig.build(params[:sns], context: "#{context}[:sns]") unless params[:sns].nil?
        type
      end
    end

    module OpsCenterIntegration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpsCenterIntegration, context: context)
        type = Types::OpsCenterIntegration.new
        type.opt_in_status = params[:opt_in_status]
        type
      end
    end

    module OpsCenterIntegrationConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpsCenterIntegrationConfig, context: context)
        type = Types::OpsCenterIntegrationConfig.new
        type.opt_in_status = params[:opt_in_status]
        type
      end
    end

    module OrganizationalUnitIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PerformanceInsightsMetricDimensionGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PerformanceInsightsMetricDimensionGroup, context: context)
        type = Types::PerformanceInsightsMetricDimensionGroup.new
        type.group = params[:group]
        type.dimensions = PerformanceInsightsMetricDimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.limit = params[:limit]
        type
      end
    end

    module PerformanceInsightsMetricDimensions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PerformanceInsightsMetricFilterMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module PerformanceInsightsMetricQuery
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PerformanceInsightsMetricQuery, context: context)
        type = Types::PerformanceInsightsMetricQuery.new
        type.metric = params[:metric]
        type.group_by = PerformanceInsightsMetricDimensionGroup.build(params[:group_by], context: "#{context}[:group_by]") unless params[:group_by].nil?
        type.filter = PerformanceInsightsMetricFilterMap.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type
      end
    end

    module PerformanceInsightsMetricsDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PerformanceInsightsMetricsDetail, context: context)
        type = Types::PerformanceInsightsMetricsDetail.new
        type.metric_display_name = params[:metric_display_name]
        type.unit = params[:unit]
        type.metric_query = PerformanceInsightsMetricQuery.build(params[:metric_query], context: "#{context}[:metric_query]") unless params[:metric_query].nil?
        type.reference_data = PerformanceInsightsReferenceDataList.build(params[:reference_data], context: "#{context}[:reference_data]") unless params[:reference_data].nil?
        type.stats_at_anomaly = PerformanceInsightsStats.build(params[:stats_at_anomaly], context: "#{context}[:stats_at_anomaly]") unless params[:stats_at_anomaly].nil?
        type.stats_at_baseline = PerformanceInsightsStats.build(params[:stats_at_baseline], context: "#{context}[:stats_at_baseline]") unless params[:stats_at_baseline].nil?
        type
      end
    end

    module PerformanceInsightsMetricsDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PerformanceInsightsMetricsDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PerformanceInsightsReferenceComparisonValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PerformanceInsightsReferenceComparisonValues, context: context)
        type = Types::PerformanceInsightsReferenceComparisonValues.new
        type.reference_scalar = PerformanceInsightsReferenceScalar.build(params[:reference_scalar], context: "#{context}[:reference_scalar]") unless params[:reference_scalar].nil?
        type.reference_metric = PerformanceInsightsReferenceMetric.build(params[:reference_metric], context: "#{context}[:reference_metric]") unless params[:reference_metric].nil?
        type
      end
    end

    module PerformanceInsightsReferenceData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PerformanceInsightsReferenceData, context: context)
        type = Types::PerformanceInsightsReferenceData.new
        type.name = params[:name]
        type.comparison_values = PerformanceInsightsReferenceComparisonValues.build(params[:comparison_values], context: "#{context}[:comparison_values]") unless params[:comparison_values].nil?
        type
      end
    end

    module PerformanceInsightsReferenceDataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PerformanceInsightsReferenceData.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PerformanceInsightsReferenceMetric
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PerformanceInsightsReferenceMetric, context: context)
        type = Types::PerformanceInsightsReferenceMetric.new
        type.metric_query = PerformanceInsightsMetricQuery.build(params[:metric_query], context: "#{context}[:metric_query]") unless params[:metric_query].nil?
        type
      end
    end

    module PerformanceInsightsReferenceScalar
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PerformanceInsightsReferenceScalar, context: context)
        type = Types::PerformanceInsightsReferenceScalar.new
        type.value = params[:value]
        type
      end
    end

    module PerformanceInsightsStat
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PerformanceInsightsStat, context: context)
        type = Types::PerformanceInsightsStat.new
        type.type = params[:type]
        type.value = params[:value]
        type
      end
    end

    module PerformanceInsightsStats
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PerformanceInsightsStat.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PredictionTimeRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PredictionTimeRange, context: context)
        type = Types::PredictionTimeRange.new
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module ProactiveAnomalies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProactiveAnomalySummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProactiveAnomaly
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProactiveAnomaly, context: context)
        type = Types::ProactiveAnomaly.new
        type.id = params[:id]
        type.severity = params[:severity]
        type.status = params[:status]
        type.update_time = params[:update_time]
        type.anomaly_time_range = AnomalyTimeRange.build(params[:anomaly_time_range], context: "#{context}[:anomaly_time_range]") unless params[:anomaly_time_range].nil?
        type.anomaly_reported_time_range = AnomalyReportedTimeRange.build(params[:anomaly_reported_time_range], context: "#{context}[:anomaly_reported_time_range]") unless params[:anomaly_reported_time_range].nil?
        type.prediction_time_range = PredictionTimeRange.build(params[:prediction_time_range], context: "#{context}[:prediction_time_range]") unless params[:prediction_time_range].nil?
        type.source_details = AnomalySourceDetails.build(params[:source_details], context: "#{context}[:source_details]") unless params[:source_details].nil?
        type.associated_insight_id = params[:associated_insight_id]
        type.resource_collection = ResourceCollection.build(params[:resource_collection], context: "#{context}[:resource_collection]") unless params[:resource_collection].nil?
        type.limit = params[:limit]
        type.source_metadata = AnomalySourceMetadata.build(params[:source_metadata], context: "#{context}[:source_metadata]") unless params[:source_metadata].nil?
        type.anomaly_resources = AnomalyResources.build(params[:anomaly_resources], context: "#{context}[:anomaly_resources]") unless params[:anomaly_resources].nil?
        type
      end
    end

    module ProactiveAnomalySummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProactiveAnomalySummary, context: context)
        type = Types::ProactiveAnomalySummary.new
        type.id = params[:id]
        type.severity = params[:severity]
        type.status = params[:status]
        type.update_time = params[:update_time]
        type.anomaly_time_range = AnomalyTimeRange.build(params[:anomaly_time_range], context: "#{context}[:anomaly_time_range]") unless params[:anomaly_time_range].nil?
        type.anomaly_reported_time_range = AnomalyReportedTimeRange.build(params[:anomaly_reported_time_range], context: "#{context}[:anomaly_reported_time_range]") unless params[:anomaly_reported_time_range].nil?
        type.prediction_time_range = PredictionTimeRange.build(params[:prediction_time_range], context: "#{context}[:prediction_time_range]") unless params[:prediction_time_range].nil?
        type.source_details = AnomalySourceDetails.build(params[:source_details], context: "#{context}[:source_details]") unless params[:source_details].nil?
        type.associated_insight_id = params[:associated_insight_id]
        type.resource_collection = ResourceCollection.build(params[:resource_collection], context: "#{context}[:resource_collection]") unless params[:resource_collection].nil?
        type.limit = params[:limit]
        type.source_metadata = AnomalySourceMetadata.build(params[:source_metadata], context: "#{context}[:source_metadata]") unless params[:source_metadata].nil?
        type.anomaly_resources = AnomalyResources.build(params[:anomaly_resources], context: "#{context}[:anomaly_resources]") unless params[:anomaly_resources].nil?
        type
      end
    end

    module ProactiveInsight
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProactiveInsight, context: context)
        type = Types::ProactiveInsight.new
        type.id = params[:id]
        type.name = params[:name]
        type.severity = params[:severity]
        type.status = params[:status]
        type.insight_time_range = InsightTimeRange.build(params[:insight_time_range], context: "#{context}[:insight_time_range]") unless params[:insight_time_range].nil?
        type.prediction_time_range = PredictionTimeRange.build(params[:prediction_time_range], context: "#{context}[:prediction_time_range]") unless params[:prediction_time_range].nil?
        type.resource_collection = ResourceCollection.build(params[:resource_collection], context: "#{context}[:resource_collection]") unless params[:resource_collection].nil?
        type.ssm_ops_item_id = params[:ssm_ops_item_id]
        type.description = params[:description]
        type
      end
    end

    module ProactiveInsightSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProactiveInsightSummary, context: context)
        type = Types::ProactiveInsightSummary.new
        type.id = params[:id]
        type.name = params[:name]
        type.severity = params[:severity]
        type.status = params[:status]
        type.insight_time_range = InsightTimeRange.build(params[:insight_time_range], context: "#{context}[:insight_time_range]") unless params[:insight_time_range].nil?
        type.prediction_time_range = PredictionTimeRange.build(params[:prediction_time_range], context: "#{context}[:prediction_time_range]") unless params[:prediction_time_range].nil?
        type.resource_collection = ResourceCollection.build(params[:resource_collection], context: "#{context}[:resource_collection]") unless params[:resource_collection].nil?
        type.service_collection = ServiceCollection.build(params[:service_collection], context: "#{context}[:service_collection]") unless params[:service_collection].nil?
        type.associated_resource_arns = AssociatedResourceArns.build(params[:associated_resource_arns], context: "#{context}[:associated_resource_arns]") unless params[:associated_resource_arns].nil?
        type
      end
    end

    module ProactiveInsights
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProactiveInsightSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProactiveOrganizationInsightSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProactiveOrganizationInsightSummary, context: context)
        type = Types::ProactiveOrganizationInsightSummary.new
        type.id = params[:id]
        type.account_id = params[:account_id]
        type.organizational_unit_id = params[:organizational_unit_id]
        type.name = params[:name]
        type.severity = params[:severity]
        type.status = params[:status]
        type.insight_time_range = InsightTimeRange.build(params[:insight_time_range], context: "#{context}[:insight_time_range]") unless params[:insight_time_range].nil?
        type.prediction_time_range = PredictionTimeRange.build(params[:prediction_time_range], context: "#{context}[:prediction_time_range]") unless params[:prediction_time_range].nil?
        type.resource_collection = ResourceCollection.build(params[:resource_collection], context: "#{context}[:resource_collection]") unless params[:resource_collection].nil?
        type.service_collection = ServiceCollection.build(params[:service_collection], context: "#{context}[:service_collection]") unless params[:service_collection].nil?
        type
      end
    end

    module ProactiveOrganizationInsights
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProactiveOrganizationInsightSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutFeedbackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutFeedbackInput, context: context)
        type = Types::PutFeedbackInput.new
        type.insight_feedback = InsightFeedback.build(params[:insight_feedback], context: "#{context}[:insight_feedback]") unless params[:insight_feedback].nil?
        type
      end
    end

    module PutFeedbackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutFeedbackOutput, context: context)
        type = Types::PutFeedbackOutput.new
        type
      end
    end

    module ReactiveAnomalies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReactiveAnomalySummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReactiveAnomaly
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReactiveAnomaly, context: context)
        type = Types::ReactiveAnomaly.new
        type.id = params[:id]
        type.severity = params[:severity]
        type.status = params[:status]
        type.anomaly_time_range = AnomalyTimeRange.build(params[:anomaly_time_range], context: "#{context}[:anomaly_time_range]") unless params[:anomaly_time_range].nil?
        type.anomaly_reported_time_range = AnomalyReportedTimeRange.build(params[:anomaly_reported_time_range], context: "#{context}[:anomaly_reported_time_range]") unless params[:anomaly_reported_time_range].nil?
        type.source_details = AnomalySourceDetails.build(params[:source_details], context: "#{context}[:source_details]") unless params[:source_details].nil?
        type.associated_insight_id = params[:associated_insight_id]
        type.resource_collection = ResourceCollection.build(params[:resource_collection], context: "#{context}[:resource_collection]") unless params[:resource_collection].nil?
        type.type = params[:type]
        type.name = params[:name]
        type.description = params[:description]
        type.causal_anomaly_id = params[:causal_anomaly_id]
        type.anomaly_resources = AnomalyResources.build(params[:anomaly_resources], context: "#{context}[:anomaly_resources]") unless params[:anomaly_resources].nil?
        type
      end
    end

    module ReactiveAnomalySummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReactiveAnomalySummary, context: context)
        type = Types::ReactiveAnomalySummary.new
        type.id = params[:id]
        type.severity = params[:severity]
        type.status = params[:status]
        type.anomaly_time_range = AnomalyTimeRange.build(params[:anomaly_time_range], context: "#{context}[:anomaly_time_range]") unless params[:anomaly_time_range].nil?
        type.anomaly_reported_time_range = AnomalyReportedTimeRange.build(params[:anomaly_reported_time_range], context: "#{context}[:anomaly_reported_time_range]") unless params[:anomaly_reported_time_range].nil?
        type.source_details = AnomalySourceDetails.build(params[:source_details], context: "#{context}[:source_details]") unless params[:source_details].nil?
        type.associated_insight_id = params[:associated_insight_id]
        type.resource_collection = ResourceCollection.build(params[:resource_collection], context: "#{context}[:resource_collection]") unless params[:resource_collection].nil?
        type.type = params[:type]
        type.name = params[:name]
        type.description = params[:description]
        type.causal_anomaly_id = params[:causal_anomaly_id]
        type.anomaly_resources = AnomalyResources.build(params[:anomaly_resources], context: "#{context}[:anomaly_resources]") unless params[:anomaly_resources].nil?
        type
      end
    end

    module ReactiveInsight
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReactiveInsight, context: context)
        type = Types::ReactiveInsight.new
        type.id = params[:id]
        type.name = params[:name]
        type.severity = params[:severity]
        type.status = params[:status]
        type.insight_time_range = InsightTimeRange.build(params[:insight_time_range], context: "#{context}[:insight_time_range]") unless params[:insight_time_range].nil?
        type.resource_collection = ResourceCollection.build(params[:resource_collection], context: "#{context}[:resource_collection]") unless params[:resource_collection].nil?
        type.ssm_ops_item_id = params[:ssm_ops_item_id]
        type.description = params[:description]
        type
      end
    end

    module ReactiveInsightSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReactiveInsightSummary, context: context)
        type = Types::ReactiveInsightSummary.new
        type.id = params[:id]
        type.name = params[:name]
        type.severity = params[:severity]
        type.status = params[:status]
        type.insight_time_range = InsightTimeRange.build(params[:insight_time_range], context: "#{context}[:insight_time_range]") unless params[:insight_time_range].nil?
        type.resource_collection = ResourceCollection.build(params[:resource_collection], context: "#{context}[:resource_collection]") unless params[:resource_collection].nil?
        type.service_collection = ServiceCollection.build(params[:service_collection], context: "#{context}[:service_collection]") unless params[:service_collection].nil?
        type.associated_resource_arns = AssociatedResourceArns.build(params[:associated_resource_arns], context: "#{context}[:associated_resource_arns]") unless params[:associated_resource_arns].nil?
        type
      end
    end

    module ReactiveInsights
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReactiveInsightSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReactiveOrganizationInsightSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReactiveOrganizationInsightSummary, context: context)
        type = Types::ReactiveOrganizationInsightSummary.new
        type.id = params[:id]
        type.account_id = params[:account_id]
        type.organizational_unit_id = params[:organizational_unit_id]
        type.name = params[:name]
        type.severity = params[:severity]
        type.status = params[:status]
        type.insight_time_range = InsightTimeRange.build(params[:insight_time_range], context: "#{context}[:insight_time_range]") unless params[:insight_time_range].nil?
        type.resource_collection = ResourceCollection.build(params[:resource_collection], context: "#{context}[:resource_collection]") unless params[:resource_collection].nil?
        type.service_collection = ServiceCollection.build(params[:service_collection], context: "#{context}[:service_collection]") unless params[:service_collection].nil?
        type
      end
    end

    module ReactiveOrganizationInsights
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReactiveOrganizationInsightSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Recommendation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Recommendation, context: context)
        type = Types::Recommendation.new
        type.description = params[:description]
        type.link = params[:link]
        type.name = params[:name]
        type.reason = params[:reason]
        type.related_events = RecommendationRelatedEvents.build(params[:related_events], context: "#{context}[:related_events]") unless params[:related_events].nil?
        type.related_anomalies = RecommendationRelatedAnomalies.build(params[:related_anomalies], context: "#{context}[:related_anomalies]") unless params[:related_anomalies].nil?
        type.category = params[:category]
        type
      end
    end

    module RecommendationRelatedAnomalies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecommendationRelatedAnomaly.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecommendationRelatedAnomaly
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecommendationRelatedAnomaly, context: context)
        type = Types::RecommendationRelatedAnomaly.new
        type.resources = RecommendationRelatedAnomalyResources.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.source_details = RelatedAnomalySourceDetails.build(params[:source_details], context: "#{context}[:source_details]") unless params[:source_details].nil?
        type.anomaly_id = params[:anomaly_id]
        type
      end
    end

    module RecommendationRelatedAnomalyResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecommendationRelatedAnomalyResource, context: context)
        type = Types::RecommendationRelatedAnomalyResource.new
        type.name = params[:name]
        type.type = params[:type]
        type
      end
    end

    module RecommendationRelatedAnomalyResources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecommendationRelatedAnomalyResource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecommendationRelatedAnomalySourceDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecommendationRelatedAnomalySourceDetail, context: context)
        type = Types::RecommendationRelatedAnomalySourceDetail.new
        type.cloud_watch_metrics = RecommendationRelatedCloudWatchMetricsSourceDetails.build(params[:cloud_watch_metrics], context: "#{context}[:cloud_watch_metrics]") unless params[:cloud_watch_metrics].nil?
        type
      end
    end

    module RecommendationRelatedCloudWatchMetricsSourceDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecommendationRelatedCloudWatchMetricsSourceDetail, context: context)
        type = Types::RecommendationRelatedCloudWatchMetricsSourceDetail.new
        type.metric_name = params[:metric_name]
        type.namespace = params[:namespace]
        type
      end
    end

    module RecommendationRelatedCloudWatchMetricsSourceDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecommendationRelatedCloudWatchMetricsSourceDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecommendationRelatedEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecommendationRelatedEvent, context: context)
        type = Types::RecommendationRelatedEvent.new
        type.name = params[:name]
        type.resources = RecommendationRelatedEventResources.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type
      end
    end

    module RecommendationRelatedEventResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecommendationRelatedEventResource, context: context)
        type = Types::RecommendationRelatedEventResource.new
        type.name = params[:name]
        type.type = params[:type]
        type
      end
    end

    module RecommendationRelatedEventResources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecommendationRelatedEventResource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecommendationRelatedEvents
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecommendationRelatedEvent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module RelatedAnomalySourceDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecommendationRelatedAnomalySourceDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RemoveNotificationChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveNotificationChannelInput, context: context)
        type = Types::RemoveNotificationChannelInput.new
        type.id = params[:id]
        type
      end
    end

    module RemoveNotificationChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveNotificationChannelOutput, context: context)
        type = Types::RemoveNotificationChannelOutput.new
        type
      end
    end

    module ResourceCollection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceCollection, context: context)
        type = Types::ResourceCollection.new
        type.cloud_formation = CloudFormationCollection.build(params[:cloud_formation], context: "#{context}[:cloud_formation]") unless params[:cloud_formation].nil?
        type.tags = TagCollections.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ResourceCollectionFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceCollectionFilter, context: context)
        type = Types::ResourceCollectionFilter.new
        type.cloud_formation = CloudFormationCollectionFilter.build(params[:cloud_formation], context: "#{context}[:cloud_formation]") unless params[:cloud_formation].nil?
        type.tags = TagCollectionFilters.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module SearchInsightsAccountIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SearchInsightsFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchInsightsFilters, context: context)
        type = Types::SearchInsightsFilters.new
        type.severities = InsightSeverities.build(params[:severities], context: "#{context}[:severities]") unless params[:severities].nil?
        type.statuses = InsightStatuses.build(params[:statuses], context: "#{context}[:statuses]") unless params[:statuses].nil?
        type.resource_collection = ResourceCollection.build(params[:resource_collection], context: "#{context}[:resource_collection]") unless params[:resource_collection].nil?
        type.service_collection = ServiceCollection.build(params[:service_collection], context: "#{context}[:service_collection]") unless params[:service_collection].nil?
        type
      end
    end

    module SearchInsightsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchInsightsInput, context: context)
        type = Types::SearchInsightsInput.new
        type.start_time_range = StartTimeRange.build(params[:start_time_range], context: "#{context}[:start_time_range]") unless params[:start_time_range].nil?
        type.filters = SearchInsightsFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.type = params[:type]
        type
      end
    end

    module SearchInsightsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchInsightsOutput, context: context)
        type = Types::SearchInsightsOutput.new
        type.proactive_insights = ProactiveInsights.build(params[:proactive_insights], context: "#{context}[:proactive_insights]") unless params[:proactive_insights].nil?
        type.reactive_insights = ReactiveInsights.build(params[:reactive_insights], context: "#{context}[:reactive_insights]") unless params[:reactive_insights].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module SearchOrganizationInsightsFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchOrganizationInsightsFilters, context: context)
        type = Types::SearchOrganizationInsightsFilters.new
        type.severities = InsightSeverities.build(params[:severities], context: "#{context}[:severities]") unless params[:severities].nil?
        type.statuses = InsightStatuses.build(params[:statuses], context: "#{context}[:statuses]") unless params[:statuses].nil?
        type.resource_collection = ResourceCollection.build(params[:resource_collection], context: "#{context}[:resource_collection]") unless params[:resource_collection].nil?
        type.service_collection = ServiceCollection.build(params[:service_collection], context: "#{context}[:service_collection]") unless params[:service_collection].nil?
        type
      end
    end

    module SearchOrganizationInsightsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchOrganizationInsightsInput, context: context)
        type = Types::SearchOrganizationInsightsInput.new
        type.account_ids = SearchInsightsAccountIdList.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type.start_time_range = StartTimeRange.build(params[:start_time_range], context: "#{context}[:start_time_range]") unless params[:start_time_range].nil?
        type.filters = SearchOrganizationInsightsFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.type = params[:type]
        type
      end
    end

    module SearchOrganizationInsightsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchOrganizationInsightsOutput, context: context)
        type = Types::SearchOrganizationInsightsOutput.new
        type.proactive_insights = ProactiveInsights.build(params[:proactive_insights], context: "#{context}[:proactive_insights]") unless params[:proactive_insights].nil?
        type.reactive_insights = ReactiveInsights.build(params[:reactive_insights], context: "#{context}[:reactive_insights]") unless params[:reactive_insights].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ServiceCollection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceCollection, context: context)
        type = Types::ServiceCollection.new
        type.service_names = ServiceNames.build(params[:service_names], context: "#{context}[:service_names]") unless params[:service_names].nil?
        type
      end
    end

    module ServiceHealth
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceHealth, context: context)
        type = Types::ServiceHealth.new
        type.service_name = params[:service_name]
        type.insight = ServiceInsightHealth.build(params[:insight], context: "#{context}[:insight]") unless params[:insight].nil?
        type
      end
    end

    module ServiceHealths
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServiceHealth.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceInsightHealth
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceInsightHealth, context: context)
        type = Types::ServiceInsightHealth.new
        type.open_proactive_insights = params[:open_proactive_insights]
        type.open_reactive_insights = params[:open_reactive_insights]
        type
      end
    end

    module ServiceIntegrationConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceIntegrationConfig, context: context)
        type = Types::ServiceIntegrationConfig.new
        type.ops_center = OpsCenterIntegration.build(params[:ops_center], context: "#{context}[:ops_center]") unless params[:ops_center].nil?
        type
      end
    end

    module ServiceNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
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

    module ServiceResourceCost
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceResourceCost, context: context)
        type = Types::ServiceResourceCost.new
        type.type = params[:type]
        type.state = params[:state]
        type.count = params[:count]
        type.unit_cost = params[:unit_cost]
        type.cost = params[:cost]
        type
      end
    end

    module ServiceResourceCosts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServiceResourceCost.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SnsChannelConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnsChannelConfig, context: context)
        type = Types::SnsChannelConfig.new
        type.topic_arn = params[:topic_arn]
        type
      end
    end

    module StackNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StartCostEstimationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartCostEstimationInput, context: context)
        type = Types::StartCostEstimationInput.new
        type.resource_collection = CostEstimationResourceCollectionFilter.build(params[:resource_collection], context: "#{context}[:resource_collection]") unless params[:resource_collection].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module StartCostEstimationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartCostEstimationOutput, context: context)
        type = Types::StartCostEstimationOutput.new
        type
      end
    end

    module StartTimeRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartTimeRange, context: context)
        type = Types::StartTimeRange.new
        type.from_time = params[:from_time]
        type.to_time = params[:to_time]
        type
      end
    end

    module TagCollection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagCollection, context: context)
        type = Types::TagCollection.new
        type.app_boundary_key = params[:app_boundary_key]
        type.tag_values = TagValues.build(params[:tag_values], context: "#{context}[:tag_values]") unless params[:tag_values].nil?
        type
      end
    end

    module TagCollectionFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagCollectionFilter, context: context)
        type = Types::TagCollectionFilter.new
        type.app_boundary_key = params[:app_boundary_key]
        type.tag_values = TagValues.build(params[:tag_values], context: "#{context}[:tag_values]") unless params[:tag_values].nil?
        type
      end
    end

    module TagCollectionFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TagCollectionFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagCollections
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TagCollection.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagCostEstimationResourceCollectionFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagCostEstimationResourceCollectionFilter, context: context)
        type = Types::TagCostEstimationResourceCollectionFilter.new
        type.app_boundary_key = params[:app_boundary_key]
        type.tag_values = CostEstimationTagValues.build(params[:tag_values], context: "#{context}[:tag_values]") unless params[:tag_values].nil?
        type
      end
    end

    module TagCostEstimationResourceCollectionFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TagCostEstimationResourceCollectionFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagHealth
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagHealth, context: context)
        type = Types::TagHealth.new
        type.app_boundary_key = params[:app_boundary_key]
        type.tag_value = params[:tag_value]
        type.insight = InsightHealth.build(params[:insight], context: "#{context}[:insight]") unless params[:insight].nil?
        type
      end
    end

    module TagHealths
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TagHealth.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagValues
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
        type.quota_code = params[:quota_code]
        type.service_code = params[:service_code]
        type.retry_after_seconds = params[:retry_after_seconds]
        type
      end
    end

    module TimestampMetricValuePair
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimestampMetricValuePair, context: context)
        type = Types::TimestampMetricValuePair.new
        type.timestamp = params[:timestamp]
        type.metric_value = params[:metric_value]
        type
      end
    end

    module TimestampMetricValuePairList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TimestampMetricValuePair.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UpdateCloudFormationCollectionFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCloudFormationCollectionFilter, context: context)
        type = Types::UpdateCloudFormationCollectionFilter.new
        type.stack_names = UpdateStackNames.build(params[:stack_names], context: "#{context}[:stack_names]") unless params[:stack_names].nil?
        type
      end
    end

    module UpdateEventSourcesConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEventSourcesConfigInput, context: context)
        type = Types::UpdateEventSourcesConfigInput.new
        type.event_sources = EventSourcesConfig.build(params[:event_sources], context: "#{context}[:event_sources]") unless params[:event_sources].nil?
        type
      end
    end

    module UpdateEventSourcesConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEventSourcesConfigOutput, context: context)
        type = Types::UpdateEventSourcesConfigOutput.new
        type
      end
    end

    module UpdateResourceCollectionFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResourceCollectionFilter, context: context)
        type = Types::UpdateResourceCollectionFilter.new
        type.cloud_formation = UpdateCloudFormationCollectionFilter.build(params[:cloud_formation], context: "#{context}[:cloud_formation]") unless params[:cloud_formation].nil?
        type.tags = UpdateTagCollectionFilters.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UpdateResourceCollectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResourceCollectionInput, context: context)
        type = Types::UpdateResourceCollectionInput.new
        type.action = params[:action]
        type.resource_collection = UpdateResourceCollectionFilter.build(params[:resource_collection], context: "#{context}[:resource_collection]") unless params[:resource_collection].nil?
        type
      end
    end

    module UpdateResourceCollectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResourceCollectionOutput, context: context)
        type = Types::UpdateResourceCollectionOutput.new
        type
      end
    end

    module UpdateServiceIntegrationConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServiceIntegrationConfig, context: context)
        type = Types::UpdateServiceIntegrationConfig.new
        type.ops_center = OpsCenterIntegrationConfig.build(params[:ops_center], context: "#{context}[:ops_center]") unless params[:ops_center].nil?
        type
      end
    end

    module UpdateServiceIntegrationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServiceIntegrationInput, context: context)
        type = Types::UpdateServiceIntegrationInput.new
        type.service_integration = UpdateServiceIntegrationConfig.build(params[:service_integration], context: "#{context}[:service_integration]") unless params[:service_integration].nil?
        type
      end
    end

    module UpdateServiceIntegrationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServiceIntegrationOutput, context: context)
        type = Types::UpdateServiceIntegrationOutput.new
        type
      end
    end

    module UpdateStackNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module UpdateTagCollectionFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTagCollectionFilter, context: context)
        type = Types::UpdateTagCollectionFilter.new
        type.app_boundary_key = params[:app_boundary_key]
        type.tag_values = UpdateTagValues.build(params[:tag_values], context: "#{context}[:tag_values]") unless params[:tag_values].nil?
        type
      end
    end

    module UpdateTagCollectionFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UpdateTagCollectionFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UpdateTagValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type.fields = ValidationExceptionFields.build(params[:fields], context: "#{context}[:fields]") unless params[:fields].nil?
        type
      end
    end

    module ValidationExceptionField
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationExceptionField, context: context)
        type = Types::ValidationExceptionField.new
        type.name = params[:name]
        type.message = params[:message]
        type
      end
    end

    module ValidationExceptionFields
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ValidationExceptionField.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
