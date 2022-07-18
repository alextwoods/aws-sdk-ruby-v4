# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DevOpsGuru
  module Builders

    # Operation Builder for AddNotificationChannel
    class AddNotificationChannel
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/channels')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Config'] = Builders::NotificationChannelConfig.build(input[:config]) unless input[:config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for NotificationChannelConfig
    class NotificationChannelConfig
      def self.build(input)
        data = {}
        data['Sns'] = Builders::SnsChannelConfig.build(input[:sns]) unless input[:sns].nil?
        data
      end
    end

    # Structure Builder for SnsChannelConfig
    class SnsChannelConfig
      def self.build(input)
        data = {}
        data['TopicArn'] = input[:topic_arn] unless input[:topic_arn].nil?
        data
      end
    end

    # Operation Builder for DeleteInsight
    class DeleteInsight
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/insights/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeAccountHealth
    class DescribeAccountHealth
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/accounts/health')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeAccountOverview
    class DescribeAccountOverview
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/accounts/overview')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FromTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:from_time]).to_i unless input[:from_time].nil?
        data['ToTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:to_time]).to_i unless input[:to_time].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAnomaly
    class DescribeAnomaly
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/anomalies/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['AccountId'] = input[:account_id].to_s unless input[:account_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeEventSourcesConfig
    class DescribeEventSourcesConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/event-sources')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeFeedback
    class DescribeFeedback
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/feedback')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['InsightId'] = input[:insight_id] unless input[:insight_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeInsight
    class DescribeInsight
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/insights/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['AccountId'] = input[:account_id].to_s unless input[:account_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeOrganizationHealth
    class DescribeOrganizationHealth
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/organization/health')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AccountIds'] = Builders::AccountIdList.build(input[:account_ids]) unless input[:account_ids].nil?
        data['OrganizationalUnitIds'] = Builders::OrganizationalUnitIdList.build(input[:organizational_unit_ids]) unless input[:organizational_unit_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for OrganizationalUnitIdList
    class OrganizationalUnitIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for AccountIdList
    class AccountIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeOrganizationOverview
    class DescribeOrganizationOverview
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/organization/overview')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FromTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:from_time]).to_i unless input[:from_time].nil?
        data['ToTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:to_time]).to_i unless input[:to_time].nil?
        data['AccountIds'] = Builders::AccountIdList.build(input[:account_ids]) unless input[:account_ids].nil?
        data['OrganizationalUnitIds'] = Builders::OrganizationalUnitIdList.build(input[:organizational_unit_ids]) unless input[:organizational_unit_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeOrganizationResourceCollectionHealth
    class DescribeOrganizationResourceCollectionHealth
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/organization/health/resource-collection')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['OrganizationResourceCollectionType'] = input[:organization_resource_collection_type] unless input[:organization_resource_collection_type].nil?
        data['AccountIds'] = Builders::AccountIdList.build(input[:account_ids]) unless input[:account_ids].nil?
        data['OrganizationalUnitIds'] = Builders::OrganizationalUnitIdList.build(input[:organizational_unit_ids]) unless input[:organizational_unit_ids].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeResourceCollectionHealth
    class DescribeResourceCollectionHealth
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_collection_type].to_s.empty?
          raise ArgumentError, "HTTP label :resource_collection_type cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/health/resource-collection/%<ResourceCollectionType>s',
            ResourceCollectionType: Hearth::HTTP.uri_escape(input[:resource_collection_type].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeServiceIntegration
    class DescribeServiceIntegration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/service-integrations')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetCostEstimation
    class GetCostEstimation
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/cost-estimation')
        params = Hearth::Query::ParamList.new
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetResourceCollection
    class GetResourceCollection
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_collection_type].to_s.empty?
          raise ArgumentError, "HTTP label :resource_collection_type cannot be nil or empty."
        end
        http_req.append_path(format(
            '/resource-collections/%<ResourceCollectionType>s',
            ResourceCollectionType: Hearth::HTTP.uri_escape(input[:resource_collection_type].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAnomaliesForInsight
    class ListAnomaliesForInsight
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:insight_id].to_s.empty?
          raise ArgumentError, "HTTP label :insight_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/anomalies/insight/%<InsightId>s',
            InsightId: Hearth::HTTP.uri_escape(input[:insight_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StartTimeRange'] = Builders::StartTimeRange.build(input[:start_time_range]) unless input[:start_time_range].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for StartTimeRange
    class StartTimeRange
      def self.build(input)
        data = {}
        data['FromTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:from_time]).to_i unless input[:from_time].nil?
        data['ToTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:to_time]).to_i unless input[:to_time].nil?
        data
      end
    end

    # Operation Builder for ListEvents
    class ListEvents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/events')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Filters'] = Builders::ListEventsFilters.build(input[:filters]) unless input[:filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ListEventsFilters
    class ListEventsFilters
      def self.build(input)
        data = {}
        data['InsightId'] = input[:insight_id] unless input[:insight_id].nil?
        data['EventTimeRange'] = Builders::EventTimeRange.build(input[:event_time_range]) unless input[:event_time_range].nil?
        data['EventClass'] = input[:event_class] unless input[:event_class].nil?
        data['EventSource'] = input[:event_source] unless input[:event_source].nil?
        data['DataSource'] = input[:data_source] unless input[:data_source].nil?
        data['ResourceCollection'] = Builders::ResourceCollection.build(input[:resource_collection]) unless input[:resource_collection].nil?
        data
      end
    end

    # Structure Builder for ResourceCollection
    class ResourceCollection
      def self.build(input)
        data = {}
        data['CloudFormation'] = Builders::CloudFormationCollection.build(input[:cloud_formation]) unless input[:cloud_formation].nil?
        data['Tags'] = Builders::TagCollections.build(input[:tags]) unless input[:tags].nil?
        data
      end
    end

    # List Builder for TagCollections
    class TagCollections
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::TagCollection.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TagCollection
    class TagCollection
      def self.build(input)
        data = {}
        data['AppBoundaryKey'] = input[:app_boundary_key] unless input[:app_boundary_key].nil?
        data['TagValues'] = Builders::TagValues.build(input[:tag_values]) unless input[:tag_values].nil?
        data
      end
    end

    # List Builder for TagValues
    class TagValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CloudFormationCollection
    class CloudFormationCollection
      def self.build(input)
        data = {}
        data['StackNames'] = Builders::StackNames.build(input[:stack_names]) unless input[:stack_names].nil?
        data
      end
    end

    # List Builder for StackNames
    class StackNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for EventTimeRange
    class EventTimeRange
      def self.build(input)
        data = {}
        data['FromTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:from_time]).to_i unless input[:from_time].nil?
        data['ToTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:to_time]).to_i unless input[:to_time].nil?
        data
      end
    end

    # Operation Builder for ListInsights
    class ListInsights
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/insights')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StatusFilter'] = Builders::ListInsightsStatusFilter.build(input[:status_filter]) unless input[:status_filter].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ListInsightsStatusFilter
    class ListInsightsStatusFilter
      def self.build(input)
        data = {}
        data['Ongoing'] = Builders::ListInsightsOngoingStatusFilter.build(input[:ongoing]) unless input[:ongoing].nil?
        data['Closed'] = Builders::ListInsightsClosedStatusFilter.build(input[:closed]) unless input[:closed].nil?
        data['Any'] = Builders::ListInsightsAnyStatusFilter.build(input[:any]) unless input[:any].nil?
        data
      end
    end

    # Structure Builder for ListInsightsAnyStatusFilter
    class ListInsightsAnyStatusFilter
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['StartTimeRange'] = Builders::StartTimeRange.build(input[:start_time_range]) unless input[:start_time_range].nil?
        data
      end
    end

    # Structure Builder for ListInsightsClosedStatusFilter
    class ListInsightsClosedStatusFilter
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['EndTimeRange'] = Builders::EndTimeRange.build(input[:end_time_range]) unless input[:end_time_range].nil?
        data
      end
    end

    # Structure Builder for EndTimeRange
    class EndTimeRange
      def self.build(input)
        data = {}
        data['FromTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:from_time]).to_i unless input[:from_time].nil?
        data['ToTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:to_time]).to_i unless input[:to_time].nil?
        data
      end
    end

    # Structure Builder for ListInsightsOngoingStatusFilter
    class ListInsightsOngoingStatusFilter
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Operation Builder for ListNotificationChannels
    class ListNotificationChannels
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/channels')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListOrganizationInsights
    class ListOrganizationInsights
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/organization/insights')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StatusFilter'] = Builders::ListInsightsStatusFilter.build(input[:status_filter]) unless input[:status_filter].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['AccountIds'] = Builders::ListInsightsAccountIdList.build(input[:account_ids]) unless input[:account_ids].nil?
        data['OrganizationalUnitIds'] = Builders::ListInsightsOrganizationalUnitIdList.build(input[:organizational_unit_ids]) unless input[:organizational_unit_ids].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ListInsightsOrganizationalUnitIdList
    class ListInsightsOrganizationalUnitIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ListInsightsAccountIdList
    class ListInsightsAccountIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListRecommendations
    class ListRecommendations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/recommendations')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['InsightId'] = input[:insight_id] unless input[:insight_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Locale'] = input[:locale] unless input[:locale].nil?
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutFeedback
    class PutFeedback
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/feedback')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['InsightFeedback'] = Builders::InsightFeedback.build(input[:insight_feedback]) unless input[:insight_feedback].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for InsightFeedback
    class InsightFeedback
      def self.build(input)
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['Feedback'] = input[:feedback] unless input[:feedback].nil?
        data
      end
    end

    # Operation Builder for RemoveNotificationChannel
    class RemoveNotificationChannel
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<Id>s',
            Id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for SearchInsights
    class SearchInsights
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/insights/search')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StartTimeRange'] = Builders::StartTimeRange.build(input[:start_time_range]) unless input[:start_time_range].nil?
        data['Filters'] = Builders::SearchInsightsFilters.build(input[:filters]) unless input[:filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SearchInsightsFilters
    class SearchInsightsFilters
      def self.build(input)
        data = {}
        data['Severities'] = Builders::InsightSeverities.build(input[:severities]) unless input[:severities].nil?
        data['Statuses'] = Builders::InsightStatuses.build(input[:statuses]) unless input[:statuses].nil?
        data['ResourceCollection'] = Builders::ResourceCollection.build(input[:resource_collection]) unless input[:resource_collection].nil?
        data['ServiceCollection'] = Builders::ServiceCollection.build(input[:service_collection]) unless input[:service_collection].nil?
        data
      end
    end

    # Structure Builder for ServiceCollection
    class ServiceCollection
      def self.build(input)
        data = {}
        data['ServiceNames'] = Builders::ServiceNames.build(input[:service_names]) unless input[:service_names].nil?
        data
      end
    end

    # List Builder for ServiceNames
    class ServiceNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for InsightStatuses
    class InsightStatuses
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for InsightSeverities
    class InsightSeverities
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for SearchOrganizationInsights
    class SearchOrganizationInsights
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/organization/insights/search')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AccountIds'] = Builders::SearchInsightsAccountIdList.build(input[:account_ids]) unless input[:account_ids].nil?
        data['StartTimeRange'] = Builders::StartTimeRange.build(input[:start_time_range]) unless input[:start_time_range].nil?
        data['Filters'] = Builders::SearchOrganizationInsightsFilters.build(input[:filters]) unless input[:filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SearchOrganizationInsightsFilters
    class SearchOrganizationInsightsFilters
      def self.build(input)
        data = {}
        data['Severities'] = Builders::InsightSeverities.build(input[:severities]) unless input[:severities].nil?
        data['Statuses'] = Builders::InsightStatuses.build(input[:statuses]) unless input[:statuses].nil?
        data['ResourceCollection'] = Builders::ResourceCollection.build(input[:resource_collection]) unless input[:resource_collection].nil?
        data['ServiceCollection'] = Builders::ServiceCollection.build(input[:service_collection]) unless input[:service_collection].nil?
        data
      end
    end

    # List Builder for SearchInsightsAccountIdList
    class SearchInsightsAccountIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for StartCostEstimation
    class StartCostEstimation
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/cost-estimation')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ResourceCollection'] = Builders::CostEstimationResourceCollectionFilter.build(input[:resource_collection]) unless input[:resource_collection].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CostEstimationResourceCollectionFilter
    class CostEstimationResourceCollectionFilter
      def self.build(input)
        data = {}
        data['CloudFormation'] = Builders::CloudFormationCostEstimationResourceCollectionFilter.build(input[:cloud_formation]) unless input[:cloud_formation].nil?
        data['Tags'] = Builders::TagCostEstimationResourceCollectionFilters.build(input[:tags]) unless input[:tags].nil?
        data
      end
    end

    # List Builder for TagCostEstimationResourceCollectionFilters
    class TagCostEstimationResourceCollectionFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::TagCostEstimationResourceCollectionFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TagCostEstimationResourceCollectionFilter
    class TagCostEstimationResourceCollectionFilter
      def self.build(input)
        data = {}
        data['AppBoundaryKey'] = input[:app_boundary_key] unless input[:app_boundary_key].nil?
        data['TagValues'] = Builders::CostEstimationTagValues.build(input[:tag_values]) unless input[:tag_values].nil?
        data
      end
    end

    # List Builder for CostEstimationTagValues
    class CostEstimationTagValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CloudFormationCostEstimationResourceCollectionFilter
    class CloudFormationCostEstimationResourceCollectionFilter
      def self.build(input)
        data = {}
        data['StackNames'] = Builders::CostEstimationStackNames.build(input[:stack_names]) unless input[:stack_names].nil?
        data
      end
    end

    # List Builder for CostEstimationStackNames
    class CostEstimationStackNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateEventSourcesConfig
    class UpdateEventSourcesConfig
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/event-sources')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['EventSources'] = Builders::EventSourcesConfig.build(input[:event_sources]) unless input[:event_sources].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for EventSourcesConfig
    class EventSourcesConfig
      def self.build(input)
        data = {}
        data['AmazonCodeGuruProfiler'] = Builders::AmazonCodeGuruProfilerIntegration.build(input[:amazon_code_guru_profiler]) unless input[:amazon_code_guru_profiler].nil?
        data
      end
    end

    # Structure Builder for AmazonCodeGuruProfilerIntegration
    class AmazonCodeGuruProfilerIntegration
      def self.build(input)
        data = {}
        data['Status'] = input[:status] unless input[:status].nil?
        data
      end
    end

    # Operation Builder for UpdateResourceCollection
    class UpdateResourceCollection
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/resource-collections')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Action'] = input[:action] unless input[:action].nil?
        data['ResourceCollection'] = Builders::UpdateResourceCollectionFilter.build(input[:resource_collection]) unless input[:resource_collection].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for UpdateResourceCollectionFilter
    class UpdateResourceCollectionFilter
      def self.build(input)
        data = {}
        data['CloudFormation'] = Builders::UpdateCloudFormationCollectionFilter.build(input[:cloud_formation]) unless input[:cloud_formation].nil?
        data['Tags'] = Builders::UpdateTagCollectionFilters.build(input[:tags]) unless input[:tags].nil?
        data
      end
    end

    # List Builder for UpdateTagCollectionFilters
    class UpdateTagCollectionFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::UpdateTagCollectionFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for UpdateTagCollectionFilter
    class UpdateTagCollectionFilter
      def self.build(input)
        data = {}
        data['AppBoundaryKey'] = input[:app_boundary_key] unless input[:app_boundary_key].nil?
        data['TagValues'] = Builders::UpdateTagValues.build(input[:tag_values]) unless input[:tag_values].nil?
        data
      end
    end

    # List Builder for UpdateTagValues
    class UpdateTagValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for UpdateCloudFormationCollectionFilter
    class UpdateCloudFormationCollectionFilter
      def self.build(input)
        data = {}
        data['StackNames'] = Builders::UpdateStackNames.build(input[:stack_names]) unless input[:stack_names].nil?
        data
      end
    end

    # List Builder for UpdateStackNames
    class UpdateStackNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateServiceIntegration
    class UpdateServiceIntegration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/service-integrations')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ServiceIntegration'] = Builders::UpdateServiceIntegrationConfig.build(input[:service_integration]) unless input[:service_integration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for UpdateServiceIntegrationConfig
    class UpdateServiceIntegrationConfig
      def self.build(input)
        data = {}
        data['OpsCenter'] = Builders::OpsCenterIntegrationConfig.build(input[:ops_center]) unless input[:ops_center].nil?
        data
      end
    end

    # Structure Builder for OpsCenterIntegrationConfig
    class OpsCenterIntegrationConfig
      def self.build(input)
        data = {}
        data['OptInStatus'] = input[:opt_in_status] unless input[:opt_in_status].nil?
        data
      end
    end
  end
end
