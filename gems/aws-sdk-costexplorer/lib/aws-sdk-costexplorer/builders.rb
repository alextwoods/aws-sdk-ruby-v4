# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CostExplorer
  module Builders

    # Operation Builder for CreateAnomalyMonitor
    class CreateAnomalyMonitor
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSInsightsIndexService.CreateAnomalyMonitor'
        data = {}
        data['AnomalyMonitor'] = Builders::AnomalyMonitor.build(input[:anomaly_monitor]) unless input[:anomaly_monitor].nil?
        data['ResourceTags'] = Builders::ResourceTagList.build(input[:resource_tags]) unless input[:resource_tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ResourceTagList
    class ResourceTagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ResourceTag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ResourceTag
    class ResourceTag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for AnomalyMonitor
    class AnomalyMonitor
      def self.build(input)
        data = {}
        data['MonitorArn'] = input[:monitor_arn] unless input[:monitor_arn].nil?
        data['MonitorName'] = input[:monitor_name] unless input[:monitor_name].nil?
        data['CreationDate'] = input[:creation_date] unless input[:creation_date].nil?
        data['LastUpdatedDate'] = input[:last_updated_date] unless input[:last_updated_date].nil?
        data['LastEvaluatedDate'] = input[:last_evaluated_date] unless input[:last_evaluated_date].nil?
        data['MonitorType'] = input[:monitor_type] unless input[:monitor_type].nil?
        data['MonitorDimension'] = input[:monitor_dimension] unless input[:monitor_dimension].nil?
        data['MonitorSpecification'] = Builders::Expression.build(input[:monitor_specification]) unless input[:monitor_specification].nil?
        data['DimensionalValueCount'] = input[:dimensional_value_count] unless input[:dimensional_value_count].nil?
        data
      end
    end

    # Structure Builder for Expression
    class Expression
      def self.build(input)
        data = {}
        data['Or'] = Builders::Expressions.build(input[:or]) unless input[:or].nil?
        data['And'] = Builders::Expressions.build(input[:and]) unless input[:and].nil?
        data['Not'] = Builders::Expression.build(input[:not]) unless input[:not].nil?
        data['Dimensions'] = Builders::DimensionValues.build(input[:dimensions]) unless input[:dimensions].nil?
        data['Tags'] = Builders::TagValues.build(input[:tags]) unless input[:tags].nil?
        data['CostCategories'] = Builders::CostCategoryValues.build(input[:cost_categories]) unless input[:cost_categories].nil?
        data
      end
    end

    # Structure Builder for CostCategoryValues
    class CostCategoryValues
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Values'] = Builders::Values.build(input[:values]) unless input[:values].nil?
        data['MatchOptions'] = Builders::MatchOptions.build(input[:match_options]) unless input[:match_options].nil?
        data
      end
    end

    # List Builder for MatchOptions
    class MatchOptions
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for Values
    class Values
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TagValues
    class TagValues
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Values'] = Builders::Values.build(input[:values]) unless input[:values].nil?
        data['MatchOptions'] = Builders::MatchOptions.build(input[:match_options]) unless input[:match_options].nil?
        data
      end
    end

    # Structure Builder for DimensionValues
    class DimensionValues
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Values'] = Builders::Values.build(input[:values]) unless input[:values].nil?
        data['MatchOptions'] = Builders::MatchOptions.build(input[:match_options]) unless input[:match_options].nil?
        data
      end
    end

    # List Builder for Expressions
    class Expressions
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Expression.build(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateAnomalySubscription
    class CreateAnomalySubscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSInsightsIndexService.CreateAnomalySubscription'
        data = {}
        data['AnomalySubscription'] = Builders::AnomalySubscription.build(input[:anomaly_subscription]) unless input[:anomaly_subscription].nil?
        data['ResourceTags'] = Builders::ResourceTagList.build(input[:resource_tags]) unless input[:resource_tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AnomalySubscription
    class AnomalySubscription
      def self.build(input)
        data = {}
        data['SubscriptionArn'] = input[:subscription_arn] unless input[:subscription_arn].nil?
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['MonitorArnList'] = Builders::MonitorArnList.build(input[:monitor_arn_list]) unless input[:monitor_arn_list].nil?
        data['Subscribers'] = Builders::Subscribers.build(input[:subscribers]) unless input[:subscribers].nil?
        data['Threshold'] = Hearth::NumberHelper.serialize(input[:threshold]) unless input[:threshold].nil?
        data['Frequency'] = input[:frequency] unless input[:frequency].nil?
        data['SubscriptionName'] = input[:subscription_name] unless input[:subscription_name].nil?
        data
      end
    end

    # List Builder for Subscribers
    class Subscribers
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Subscriber.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Subscriber
    class Subscriber
      def self.build(input)
        data = {}
        data['Address'] = input[:address] unless input[:address].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data
      end
    end

    # List Builder for MonitorArnList
    class MonitorArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateCostCategoryDefinition
    class CreateCostCategoryDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSInsightsIndexService.CreateCostCategoryDefinition'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['RuleVersion'] = input[:rule_version] unless input[:rule_version].nil?
        data['Rules'] = Builders::CostCategoryRulesList.build(input[:rules]) unless input[:rules].nil?
        data['DefaultValue'] = input[:default_value] unless input[:default_value].nil?
        data['SplitChargeRules'] = Builders::CostCategorySplitChargeRulesList.build(input[:split_charge_rules]) unless input[:split_charge_rules].nil?
        data['ResourceTags'] = Builders::ResourceTagList.build(input[:resource_tags]) unless input[:resource_tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CostCategorySplitChargeRulesList
    class CostCategorySplitChargeRulesList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CostCategorySplitChargeRule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CostCategorySplitChargeRule
    class CostCategorySplitChargeRule
      def self.build(input)
        data = {}
        data['Source'] = input[:source] unless input[:source].nil?
        data['Targets'] = Builders::CostCategorySplitChargeRuleTargetsList.build(input[:targets]) unless input[:targets].nil?
        data['Method'] = input[:member_method] unless input[:member_method].nil?
        data['Parameters'] = Builders::CostCategorySplitChargeRuleParametersList.build(input[:parameters]) unless input[:parameters].nil?
        data
      end
    end

    # List Builder for CostCategorySplitChargeRuleParametersList
    class CostCategorySplitChargeRuleParametersList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CostCategorySplitChargeRuleParameter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CostCategorySplitChargeRuleParameter
    class CostCategorySplitChargeRuleParameter
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['Values'] = Builders::CostCategorySplitChargeRuleParameterValuesList.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for CostCategorySplitChargeRuleParameterValuesList
    class CostCategorySplitChargeRuleParameterValuesList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for CostCategorySplitChargeRuleTargetsList
    class CostCategorySplitChargeRuleTargetsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for CostCategoryRulesList
    class CostCategoryRulesList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CostCategoryRule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CostCategoryRule
    class CostCategoryRule
      def self.build(input)
        data = {}
        data['Value'] = input[:value] unless input[:value].nil?
        data['Rule'] = Builders::Expression.build(input[:rule]) unless input[:rule].nil?
        data['InheritedValue'] = Builders::CostCategoryInheritedValueDimension.build(input[:inherited_value]) unless input[:inherited_value].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Structure Builder for CostCategoryInheritedValueDimension
    class CostCategoryInheritedValueDimension
      def self.build(input)
        data = {}
        data['DimensionName'] = input[:dimension_name] unless input[:dimension_name].nil?
        data['DimensionKey'] = input[:dimension_key] unless input[:dimension_key].nil?
        data
      end
    end

    # Operation Builder for DeleteAnomalyMonitor
    class DeleteAnomalyMonitor
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSInsightsIndexService.DeleteAnomalyMonitor'
        data = {}
        data['MonitorArn'] = input[:monitor_arn] unless input[:monitor_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteAnomalySubscription
    class DeleteAnomalySubscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSInsightsIndexService.DeleteAnomalySubscription'
        data = {}
        data['SubscriptionArn'] = input[:subscription_arn] unless input[:subscription_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteCostCategoryDefinition
    class DeleteCostCategoryDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSInsightsIndexService.DeleteCostCategoryDefinition'
        data = {}
        data['CostCategoryArn'] = input[:cost_category_arn] unless input[:cost_category_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeCostCategoryDefinition
    class DescribeCostCategoryDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSInsightsIndexService.DescribeCostCategoryDefinition'
        data = {}
        data['CostCategoryArn'] = input[:cost_category_arn] unless input[:cost_category_arn].nil?
        data['EffectiveOn'] = input[:effective_on] unless input[:effective_on].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetAnomalies
    class GetAnomalies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSInsightsIndexService.GetAnomalies'
        data = {}
        data['MonitorArn'] = input[:monitor_arn] unless input[:monitor_arn].nil?
        data['DateInterval'] = Builders::AnomalyDateInterval.build(input[:date_interval]) unless input[:date_interval].nil?
        data['Feedback'] = input[:feedback] unless input[:feedback].nil?
        data['TotalImpact'] = Builders::TotalImpactFilter.build(input[:total_impact]) unless input[:total_impact].nil?
        data['NextPageToken'] = input[:next_page_token] unless input[:next_page_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TotalImpactFilter
    class TotalImpactFilter
      def self.build(input)
        data = {}
        data['NumericOperator'] = input[:numeric_operator] unless input[:numeric_operator].nil?
        data['StartValue'] = Hearth::NumberHelper.serialize(input[:start_value]) unless input[:start_value].nil?
        data['EndValue'] = Hearth::NumberHelper.serialize(input[:end_value]) unless input[:end_value].nil?
        data
      end
    end

    # Structure Builder for AnomalyDateInterval
    class AnomalyDateInterval
      def self.build(input)
        data = {}
        data['StartDate'] = input[:start_date] unless input[:start_date].nil?
        data['EndDate'] = input[:end_date] unless input[:end_date].nil?
        data
      end
    end

    # Operation Builder for GetAnomalyMonitors
    class GetAnomalyMonitors
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSInsightsIndexService.GetAnomalyMonitors'
        data = {}
        data['MonitorArnList'] = Builders::Values.build(input[:monitor_arn_list]) unless input[:monitor_arn_list].nil?
        data['NextPageToken'] = input[:next_page_token] unless input[:next_page_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetAnomalySubscriptions
    class GetAnomalySubscriptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSInsightsIndexService.GetAnomalySubscriptions'
        data = {}
        data['SubscriptionArnList'] = Builders::Values.build(input[:subscription_arn_list]) unless input[:subscription_arn_list].nil?
        data['MonitorArn'] = input[:monitor_arn] unless input[:monitor_arn].nil?
        data['NextPageToken'] = input[:next_page_token] unless input[:next_page_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetCostAndUsage
    class GetCostAndUsage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSInsightsIndexService.GetCostAndUsage'
        data = {}
        data['TimePeriod'] = Builders::DateInterval.build(input[:time_period]) unless input[:time_period].nil?
        data['Granularity'] = input[:granularity] unless input[:granularity].nil?
        data['Filter'] = Builders::Expression.build(input[:filter]) unless input[:filter].nil?
        data['Metrics'] = Builders::MetricNames.build(input[:metrics]) unless input[:metrics].nil?
        data['GroupBy'] = Builders::GroupDefinitions.build(input[:group_by]) unless input[:group_by].nil?
        data['NextPageToken'] = input[:next_page_token] unless input[:next_page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for GroupDefinitions
    class GroupDefinitions
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::GroupDefinition.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for GroupDefinition
    class GroupDefinition
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['Key'] = input[:key] unless input[:key].nil?
        data
      end
    end

    # List Builder for MetricNames
    class MetricNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DateInterval
    class DateInterval
      def self.build(input)
        data = {}
        data['Start'] = input[:start] unless input[:start].nil?
        data['End'] = input[:end] unless input[:end].nil?
        data
      end
    end

    # Operation Builder for GetCostAndUsageWithResources
    class GetCostAndUsageWithResources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSInsightsIndexService.GetCostAndUsageWithResources'
        data = {}
        data['TimePeriod'] = Builders::DateInterval.build(input[:time_period]) unless input[:time_period].nil?
        data['Granularity'] = input[:granularity] unless input[:granularity].nil?
        data['Filter'] = Builders::Expression.build(input[:filter]) unless input[:filter].nil?
        data['Metrics'] = Builders::MetricNames.build(input[:metrics]) unless input[:metrics].nil?
        data['GroupBy'] = Builders::GroupDefinitions.build(input[:group_by]) unless input[:group_by].nil?
        data['NextPageToken'] = input[:next_page_token] unless input[:next_page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetCostCategories
    class GetCostCategories
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSInsightsIndexService.GetCostCategories'
        data = {}
        data['SearchString'] = input[:search_string] unless input[:search_string].nil?
        data['TimePeriod'] = Builders::DateInterval.build(input[:time_period]) unless input[:time_period].nil?
        data['CostCategoryName'] = input[:cost_category_name] unless input[:cost_category_name].nil?
        data['Filter'] = Builders::Expression.build(input[:filter]) unless input[:filter].nil?
        data['SortBy'] = Builders::SortDefinitions.build(input[:sort_by]) unless input[:sort_by].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextPageToken'] = input[:next_page_token] unless input[:next_page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SortDefinitions
    class SortDefinitions
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SortDefinition.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SortDefinition
    class SortDefinition
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data
      end
    end

    # Operation Builder for GetCostForecast
    class GetCostForecast
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSInsightsIndexService.GetCostForecast'
        data = {}
        data['TimePeriod'] = Builders::DateInterval.build(input[:time_period]) unless input[:time_period].nil?
        data['Metric'] = input[:metric] unless input[:metric].nil?
        data['Granularity'] = input[:granularity] unless input[:granularity].nil?
        data['Filter'] = Builders::Expression.build(input[:filter]) unless input[:filter].nil?
        data['PredictionIntervalLevel'] = input[:prediction_interval_level] unless input[:prediction_interval_level].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDimensionValues
    class GetDimensionValues
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSInsightsIndexService.GetDimensionValues'
        data = {}
        data['SearchString'] = input[:search_string] unless input[:search_string].nil?
        data['TimePeriod'] = Builders::DateInterval.build(input[:time_period]) unless input[:time_period].nil?
        data['Dimension'] = input[:dimension] unless input[:dimension].nil?
        data['Context'] = input[:context] unless input[:context].nil?
        data['Filter'] = Builders::Expression.build(input[:filter]) unless input[:filter].nil?
        data['SortBy'] = Builders::SortDefinitions.build(input[:sort_by]) unless input[:sort_by].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextPageToken'] = input[:next_page_token] unless input[:next_page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetReservationCoverage
    class GetReservationCoverage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSInsightsIndexService.GetReservationCoverage'
        data = {}
        data['TimePeriod'] = Builders::DateInterval.build(input[:time_period]) unless input[:time_period].nil?
        data['GroupBy'] = Builders::GroupDefinitions.build(input[:group_by]) unless input[:group_by].nil?
        data['Granularity'] = input[:granularity] unless input[:granularity].nil?
        data['Filter'] = Builders::Expression.build(input[:filter]) unless input[:filter].nil?
        data['Metrics'] = Builders::MetricNames.build(input[:metrics]) unless input[:metrics].nil?
        data['NextPageToken'] = input[:next_page_token] unless input[:next_page_token].nil?
        data['SortBy'] = Builders::SortDefinition.build(input[:sort_by]) unless input[:sort_by].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetReservationPurchaseRecommendation
    class GetReservationPurchaseRecommendation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSInsightsIndexService.GetReservationPurchaseRecommendation'
        data = {}
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data['Service'] = input[:service] unless input[:service].nil?
        data['Filter'] = Builders::Expression.build(input[:filter]) unless input[:filter].nil?
        data['AccountScope'] = input[:account_scope] unless input[:account_scope].nil?
        data['LookbackPeriodInDays'] = input[:lookback_period_in_days] unless input[:lookback_period_in_days].nil?
        data['TermInYears'] = input[:term_in_years] unless input[:term_in_years].nil?
        data['PaymentOption'] = input[:payment_option] unless input[:payment_option].nil?
        data['ServiceSpecification'] = Builders::ServiceSpecification.build(input[:service_specification]) unless input[:service_specification].nil?
        data['PageSize'] = input[:page_size] unless input[:page_size].nil?
        data['NextPageToken'] = input[:next_page_token] unless input[:next_page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ServiceSpecification
    class ServiceSpecification
      def self.build(input)
        data = {}
        data['EC2Specification'] = Builders::EC2Specification.build(input[:ec2_specification]) unless input[:ec2_specification].nil?
        data
      end
    end

    # Structure Builder for EC2Specification
    class EC2Specification
      def self.build(input)
        data = {}
        data['OfferingClass'] = input[:offering_class] unless input[:offering_class].nil?
        data
      end
    end

    # Operation Builder for GetReservationUtilization
    class GetReservationUtilization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSInsightsIndexService.GetReservationUtilization'
        data = {}
        data['TimePeriod'] = Builders::DateInterval.build(input[:time_period]) unless input[:time_period].nil?
        data['GroupBy'] = Builders::GroupDefinitions.build(input[:group_by]) unless input[:group_by].nil?
        data['Granularity'] = input[:granularity] unless input[:granularity].nil?
        data['Filter'] = Builders::Expression.build(input[:filter]) unless input[:filter].nil?
        data['SortBy'] = Builders::SortDefinition.build(input[:sort_by]) unless input[:sort_by].nil?
        data['NextPageToken'] = input[:next_page_token] unless input[:next_page_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRightsizingRecommendation
    class GetRightsizingRecommendation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSInsightsIndexService.GetRightsizingRecommendation'
        data = {}
        data['Filter'] = Builders::Expression.build(input[:filter]) unless input[:filter].nil?
        data['Configuration'] = Builders::RightsizingRecommendationConfiguration.build(input[:configuration]) unless input[:configuration].nil?
        data['Service'] = input[:service] unless input[:service].nil?
        data['PageSize'] = input[:page_size] unless input[:page_size].nil?
        data['NextPageToken'] = input[:next_page_token] unless input[:next_page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for RightsizingRecommendationConfiguration
    class RightsizingRecommendationConfiguration
      def self.build(input)
        data = {}
        data['RecommendationTarget'] = input[:recommendation_target] unless input[:recommendation_target].nil?
        data['BenefitsConsidered'] = input[:benefits_considered] unless input[:benefits_considered].nil?
        data
      end
    end

    # Operation Builder for GetSavingsPlansCoverage
    class GetSavingsPlansCoverage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSInsightsIndexService.GetSavingsPlansCoverage'
        data = {}
        data['TimePeriod'] = Builders::DateInterval.build(input[:time_period]) unless input[:time_period].nil?
        data['GroupBy'] = Builders::GroupDefinitions.build(input[:group_by]) unless input[:group_by].nil?
        data['Granularity'] = input[:granularity] unless input[:granularity].nil?
        data['Filter'] = Builders::Expression.build(input[:filter]) unless input[:filter].nil?
        data['Metrics'] = Builders::MetricNames.build(input[:metrics]) unless input[:metrics].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['SortBy'] = Builders::SortDefinition.build(input[:sort_by]) unless input[:sort_by].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetSavingsPlansPurchaseRecommendation
    class GetSavingsPlansPurchaseRecommendation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSInsightsIndexService.GetSavingsPlansPurchaseRecommendation'
        data = {}
        data['SavingsPlansType'] = input[:savings_plans_type] unless input[:savings_plans_type].nil?
        data['TermInYears'] = input[:term_in_years] unless input[:term_in_years].nil?
        data['PaymentOption'] = input[:payment_option] unless input[:payment_option].nil?
        data['AccountScope'] = input[:account_scope] unless input[:account_scope].nil?
        data['NextPageToken'] = input[:next_page_token] unless input[:next_page_token].nil?
        data['PageSize'] = input[:page_size] unless input[:page_size].nil?
        data['LookbackPeriodInDays'] = input[:lookback_period_in_days] unless input[:lookback_period_in_days].nil?
        data['Filter'] = Builders::Expression.build(input[:filter]) unless input[:filter].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetSavingsPlansUtilization
    class GetSavingsPlansUtilization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSInsightsIndexService.GetSavingsPlansUtilization'
        data = {}
        data['TimePeriod'] = Builders::DateInterval.build(input[:time_period]) unless input[:time_period].nil?
        data['Granularity'] = input[:granularity] unless input[:granularity].nil?
        data['Filter'] = Builders::Expression.build(input[:filter]) unless input[:filter].nil?
        data['SortBy'] = Builders::SortDefinition.build(input[:sort_by]) unless input[:sort_by].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetSavingsPlansUtilizationDetails
    class GetSavingsPlansUtilizationDetails
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSInsightsIndexService.GetSavingsPlansUtilizationDetails'
        data = {}
        data['TimePeriod'] = Builders::DateInterval.build(input[:time_period]) unless input[:time_period].nil?
        data['Filter'] = Builders::Expression.build(input[:filter]) unless input[:filter].nil?
        data['DataType'] = Builders::SavingsPlansDataTypes.build(input[:data_type]) unless input[:data_type].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['SortBy'] = Builders::SortDefinition.build(input[:sort_by]) unless input[:sort_by].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SavingsPlansDataTypes
    class SavingsPlansDataTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetTags
    class GetTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSInsightsIndexService.GetTags'
        data = {}
        data['SearchString'] = input[:search_string] unless input[:search_string].nil?
        data['TimePeriod'] = Builders::DateInterval.build(input[:time_period]) unless input[:time_period].nil?
        data['TagKey'] = input[:tag_key] unless input[:tag_key].nil?
        data['Filter'] = Builders::Expression.build(input[:filter]) unless input[:filter].nil?
        data['SortBy'] = Builders::SortDefinitions.build(input[:sort_by]) unless input[:sort_by].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextPageToken'] = input[:next_page_token] unless input[:next_page_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetUsageForecast
    class GetUsageForecast
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSInsightsIndexService.GetUsageForecast'
        data = {}
        data['TimePeriod'] = Builders::DateInterval.build(input[:time_period]) unless input[:time_period].nil?
        data['Metric'] = input[:metric] unless input[:metric].nil?
        data['Granularity'] = input[:granularity] unless input[:granularity].nil?
        data['Filter'] = Builders::Expression.build(input[:filter]) unless input[:filter].nil?
        data['PredictionIntervalLevel'] = input[:prediction_interval_level] unless input[:prediction_interval_level].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListCostAllocationTags
    class ListCostAllocationTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSInsightsIndexService.ListCostAllocationTags'
        data = {}
        data['Status'] = input[:status] unless input[:status].nil?
        data['TagKeys'] = Builders::CostAllocationTagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CostAllocationTagKeyList
    class CostAllocationTagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListCostCategoryDefinitions
    class ListCostCategoryDefinitions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSInsightsIndexService.ListCostCategoryDefinitions'
        data = {}
        data['EffectiveOn'] = input[:effective_on] unless input[:effective_on].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSInsightsIndexService.ListTagsForResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ProvideAnomalyFeedback
    class ProvideAnomalyFeedback
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSInsightsIndexService.ProvideAnomalyFeedback'
        data = {}
        data['AnomalyId'] = input[:anomaly_id] unless input[:anomaly_id].nil?
        data['Feedback'] = input[:feedback] unless input[:feedback].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSInsightsIndexService.TagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['ResourceTags'] = Builders::ResourceTagList.build(input[:resource_tags]) unless input[:resource_tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSInsightsIndexService.UntagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['ResourceTagKeys'] = Builders::ResourceTagKeyList.build(input[:resource_tag_keys]) unless input[:resource_tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ResourceTagKeyList
    class ResourceTagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateAnomalyMonitor
    class UpdateAnomalyMonitor
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSInsightsIndexService.UpdateAnomalyMonitor'
        data = {}
        data['MonitorArn'] = input[:monitor_arn] unless input[:monitor_arn].nil?
        data['MonitorName'] = input[:monitor_name] unless input[:monitor_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateAnomalySubscription
    class UpdateAnomalySubscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSInsightsIndexService.UpdateAnomalySubscription'
        data = {}
        data['SubscriptionArn'] = input[:subscription_arn] unless input[:subscription_arn].nil?
        data['Threshold'] = Hearth::NumberHelper.serialize(input[:threshold]) unless input[:threshold].nil?
        data['Frequency'] = input[:frequency] unless input[:frequency].nil?
        data['MonitorArnList'] = Builders::MonitorArnList.build(input[:monitor_arn_list]) unless input[:monitor_arn_list].nil?
        data['Subscribers'] = Builders::Subscribers.build(input[:subscribers]) unless input[:subscribers].nil?
        data['SubscriptionName'] = input[:subscription_name] unless input[:subscription_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateCostAllocationTagsStatus
    class UpdateCostAllocationTagsStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSInsightsIndexService.UpdateCostAllocationTagsStatus'
        data = {}
        data['CostAllocationTagsStatus'] = Builders::CostAllocationTagStatusList.build(input[:cost_allocation_tags_status]) unless input[:cost_allocation_tags_status].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CostAllocationTagStatusList
    class CostAllocationTagStatusList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CostAllocationTagStatusEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CostAllocationTagStatusEntry
    class CostAllocationTagStatusEntry
      def self.build(input)
        data = {}
        data['TagKey'] = input[:tag_key] unless input[:tag_key].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data
      end
    end

    # Operation Builder for UpdateCostCategoryDefinition
    class UpdateCostCategoryDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSInsightsIndexService.UpdateCostCategoryDefinition'
        data = {}
        data['CostCategoryArn'] = input[:cost_category_arn] unless input[:cost_category_arn].nil?
        data['RuleVersion'] = input[:rule_version] unless input[:rule_version].nil?
        data['Rules'] = Builders::CostCategoryRulesList.build(input[:rules]) unless input[:rules].nil?
        data['DefaultValue'] = input[:default_value] unless input[:default_value].nil?
        data['SplitChargeRules'] = Builders::CostCategorySplitChargeRulesList.build(input[:split_charge_rules]) unless input[:split_charge_rules].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
