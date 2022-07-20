# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CostExplorer
  module Parsers

    # Operation Parser for CreateAnomalyMonitor
    class CreateAnomalyMonitor
      def self.parse(http_resp)
        data = Types::CreateAnomalyMonitorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.monitor_arn = map['MonitorArn']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateAnomalySubscription
    class CreateAnomalySubscription
      def self.parse(http_resp)
        data = Types::CreateAnomalySubscriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.subscription_arn = map['SubscriptionArn']
        data
      end
    end

    # Error Parser for UnknownMonitorException
    class UnknownMonitorException
      def self.parse(http_resp)
        data = Types::UnknownMonitorException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateCostCategoryDefinition
    class CreateCostCategoryDefinition
      def self.parse(http_resp)
        data = Types::CreateCostCategoryDefinitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cost_category_arn = map['CostCategoryArn']
        data.effective_start = map['EffectiveStart']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteAnomalyMonitor
    class DeleteAnomalyMonitor
      def self.parse(http_resp)
        data = Types::DeleteAnomalyMonitorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteAnomalySubscription
    class DeleteAnomalySubscription
      def self.parse(http_resp)
        data = Types::DeleteAnomalySubscriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for UnknownSubscriptionException
    class UnknownSubscriptionException
      def self.parse(http_resp)
        data = Types::UnknownSubscriptionException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteCostCategoryDefinition
    class DeleteCostCategoryDefinition
      def self.parse(http_resp)
        data = Types::DeleteCostCategoryDefinitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cost_category_arn = map['CostCategoryArn']
        data.effective_end = map['EffectiveEnd']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.resource_name = map['ResourceName']
        data
      end
    end

    # Operation Parser for DescribeCostCategoryDefinition
    class DescribeCostCategoryDefinition
      def self.parse(http_resp)
        data = Types::DescribeCostCategoryDefinitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cost_category = (CostCategory.parse(map['CostCategory']) unless map['CostCategory'].nil?)
        data
      end
    end

    class CostCategory
      def self.parse(map)
        data = Types::CostCategory.new
        data.cost_category_arn = map['CostCategoryArn']
        data.effective_start = map['EffectiveStart']
        data.effective_end = map['EffectiveEnd']
        data.name = map['Name']
        data.rule_version = map['RuleVersion']
        data.rules = (CostCategoryRulesList.parse(map['Rules']) unless map['Rules'].nil?)
        data.split_charge_rules = (CostCategorySplitChargeRulesList.parse(map['SplitChargeRules']) unless map['SplitChargeRules'].nil?)
        data.processing_status = (CostCategoryProcessingStatusList.parse(map['ProcessingStatus']) unless map['ProcessingStatus'].nil?)
        data.default_value = map['DefaultValue']
        return data
      end
    end

    class CostCategoryProcessingStatusList
      def self.parse(list)
        list.map do |value|
          CostCategoryProcessingStatus.parse(value) unless value.nil?
        end
      end
    end

    class CostCategoryProcessingStatus
      def self.parse(map)
        data = Types::CostCategoryProcessingStatus.new
        data.component = map['Component']
        data.status = map['Status']
        return data
      end
    end

    class CostCategorySplitChargeRulesList
      def self.parse(list)
        list.map do |value|
          CostCategorySplitChargeRule.parse(value) unless value.nil?
        end
      end
    end

    class CostCategorySplitChargeRule
      def self.parse(map)
        data = Types::CostCategorySplitChargeRule.new
        data.source = map['Source']
        data.targets = (CostCategorySplitChargeRuleTargetsList.parse(map['Targets']) unless map['Targets'].nil?)
        data.member_method = map['Method']
        data.parameters = (CostCategorySplitChargeRuleParametersList.parse(map['Parameters']) unless map['Parameters'].nil?)
        return data
      end
    end

    class CostCategorySplitChargeRuleParametersList
      def self.parse(list)
        list.map do |value|
          CostCategorySplitChargeRuleParameter.parse(value) unless value.nil?
        end
      end
    end

    class CostCategorySplitChargeRuleParameter
      def self.parse(map)
        data = Types::CostCategorySplitChargeRuleParameter.new
        data.type = map['Type']
        data.values = (CostCategorySplitChargeRuleParameterValuesList.parse(map['Values']) unless map['Values'].nil?)
        return data
      end
    end

    class CostCategorySplitChargeRuleParameterValuesList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class CostCategorySplitChargeRuleTargetsList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class CostCategoryRulesList
      def self.parse(list)
        list.map do |value|
          CostCategoryRule.parse(value) unless value.nil?
        end
      end
    end

    class CostCategoryRule
      def self.parse(map)
        data = Types::CostCategoryRule.new
        data.value = map['Value']
        data.rule = (Expression.parse(map['Rule']) unless map['Rule'].nil?)
        data.inherited_value = (CostCategoryInheritedValueDimension.parse(map['InheritedValue']) unless map['InheritedValue'].nil?)
        data.type = map['Type']
        return data
      end
    end

    class CostCategoryInheritedValueDimension
      def self.parse(map)
        data = Types::CostCategoryInheritedValueDimension.new
        data.dimension_name = map['DimensionName']
        data.dimension_key = map['DimensionKey']
        return data
      end
    end

    class Expression
      def self.parse(map)
        data = Types::Expression.new
        data.or = (Expressions.parse(map['Or']) unless map['Or'].nil?)
        data.and = (Expressions.parse(map['And']) unless map['And'].nil?)
        data.not = (Expression.parse(map['Not']) unless map['Not'].nil?)
        data.dimensions = (DimensionValues.parse(map['Dimensions']) unless map['Dimensions'].nil?)
        data.tags = (TagValues.parse(map['Tags']) unless map['Tags'].nil?)
        data.cost_categories = (CostCategoryValues.parse(map['CostCategories']) unless map['CostCategories'].nil?)
        return data
      end
    end

    class CostCategoryValues
      def self.parse(map)
        data = Types::CostCategoryValues.new
        data.key = map['Key']
        data.values = (Values.parse(map['Values']) unless map['Values'].nil?)
        data.match_options = (MatchOptions.parse(map['MatchOptions']) unless map['MatchOptions'].nil?)
        return data
      end
    end

    class MatchOptions
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class Values
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class TagValues
      def self.parse(map)
        data = Types::TagValues.new
        data.key = map['Key']
        data.values = (Values.parse(map['Values']) unless map['Values'].nil?)
        data.match_options = (MatchOptions.parse(map['MatchOptions']) unless map['MatchOptions'].nil?)
        return data
      end
    end

    class DimensionValues
      def self.parse(map)
        data = Types::DimensionValues.new
        data.key = map['Key']
        data.values = (Values.parse(map['Values']) unless map['Values'].nil?)
        data.match_options = (MatchOptions.parse(map['MatchOptions']) unless map['MatchOptions'].nil?)
        return data
      end
    end

    class Expressions
      def self.parse(list)
        list.map do |value|
          Expression.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for GetAnomalies
    class GetAnomalies
      def self.parse(http_resp)
        data = Types::GetAnomaliesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.anomalies = (Anomalies.parse(map['Anomalies']) unless map['Anomalies'].nil?)
        data.next_page_token = map['NextPageToken']
        data
      end
    end

    class Anomalies
      def self.parse(list)
        list.map do |value|
          Anomaly.parse(value) unless value.nil?
        end
      end
    end

    class Anomaly
      def self.parse(map)
        data = Types::Anomaly.new
        data.anomaly_id = map['AnomalyId']
        data.anomaly_start_date = map['AnomalyStartDate']
        data.anomaly_end_date = map['AnomalyEndDate']
        data.dimension_value = map['DimensionValue']
        data.root_causes = (RootCauses.parse(map['RootCauses']) unless map['RootCauses'].nil?)
        data.anomaly_score = (AnomalyScore.parse(map['AnomalyScore']) unless map['AnomalyScore'].nil?)
        data.impact = (Impact.parse(map['Impact']) unless map['Impact'].nil?)
        data.monitor_arn = map['MonitorArn']
        data.feedback = map['Feedback']
        return data
      end
    end

    class Impact
      def self.parse(map)
        data = Types::Impact.new
        data.max_impact = Hearth::NumberHelper.deserialize(map['MaxImpact'])
        data.total_impact = Hearth::NumberHelper.deserialize(map['TotalImpact'])
        return data
      end
    end

    class AnomalyScore
      def self.parse(map)
        data = Types::AnomalyScore.new
        data.max_score = Hearth::NumberHelper.deserialize(map['MaxScore'])
        data.current_score = Hearth::NumberHelper.deserialize(map['CurrentScore'])
        return data
      end
    end

    class RootCauses
      def self.parse(list)
        list.map do |value|
          RootCause.parse(value) unless value.nil?
        end
      end
    end

    class RootCause
      def self.parse(map)
        data = Types::RootCause.new
        data.service = map['Service']
        data.region = map['Region']
        data.linked_account = map['LinkedAccount']
        data.usage_type = map['UsageType']
        return data
      end
    end

    # Error Parser for InvalidNextTokenException
    class InvalidNextTokenException
      def self.parse(http_resp)
        data = Types::InvalidNextTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for GetAnomalyMonitors
    class GetAnomalyMonitors
      def self.parse(http_resp)
        data = Types::GetAnomalyMonitorsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.anomaly_monitors = (AnomalyMonitors.parse(map['AnomalyMonitors']) unless map['AnomalyMonitors'].nil?)
        data.next_page_token = map['NextPageToken']
        data
      end
    end

    class AnomalyMonitors
      def self.parse(list)
        list.map do |value|
          AnomalyMonitor.parse(value) unless value.nil?
        end
      end
    end

    class AnomalyMonitor
      def self.parse(map)
        data = Types::AnomalyMonitor.new
        data.monitor_arn = map['MonitorArn']
        data.monitor_name = map['MonitorName']
        data.creation_date = map['CreationDate']
        data.last_updated_date = map['LastUpdatedDate']
        data.last_evaluated_date = map['LastEvaluatedDate']
        data.monitor_type = map['MonitorType']
        data.monitor_dimension = map['MonitorDimension']
        data.monitor_specification = (Expression.parse(map['MonitorSpecification']) unless map['MonitorSpecification'].nil?)
        data.dimensional_value_count = map['DimensionalValueCount']
        return data
      end
    end

    # Operation Parser for GetAnomalySubscriptions
    class GetAnomalySubscriptions
      def self.parse(http_resp)
        data = Types::GetAnomalySubscriptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.anomaly_subscriptions = (AnomalySubscriptions.parse(map['AnomalySubscriptions']) unless map['AnomalySubscriptions'].nil?)
        data.next_page_token = map['NextPageToken']
        data
      end
    end

    class AnomalySubscriptions
      def self.parse(list)
        list.map do |value|
          AnomalySubscription.parse(value) unless value.nil?
        end
      end
    end

    class AnomalySubscription
      def self.parse(map)
        data = Types::AnomalySubscription.new
        data.subscription_arn = map['SubscriptionArn']
        data.account_id = map['AccountId']
        data.monitor_arn_list = (MonitorArnList.parse(map['MonitorArnList']) unless map['MonitorArnList'].nil?)
        data.subscribers = (Subscribers.parse(map['Subscribers']) unless map['Subscribers'].nil?)
        data.threshold = Hearth::NumberHelper.deserialize(map['Threshold'])
        data.frequency = map['Frequency']
        data.subscription_name = map['SubscriptionName']
        return data
      end
    end

    class Subscribers
      def self.parse(list)
        list.map do |value|
          Subscriber.parse(value) unless value.nil?
        end
      end
    end

    class Subscriber
      def self.parse(map)
        data = Types::Subscriber.new
        data.address = map['Address']
        data.type = map['Type']
        data.status = map['Status']
        return data
      end
    end

    class MonitorArnList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for GetCostAndUsage
    class GetCostAndUsage
      def self.parse(http_resp)
        data = Types::GetCostAndUsageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_page_token = map['NextPageToken']
        data.group_definitions = (GroupDefinitions.parse(map['GroupDefinitions']) unless map['GroupDefinitions'].nil?)
        data.results_by_time = (ResultsByTime.parse(map['ResultsByTime']) unless map['ResultsByTime'].nil?)
        data.dimension_value_attributes = (DimensionValuesWithAttributesList.parse(map['DimensionValueAttributes']) unless map['DimensionValueAttributes'].nil?)
        data
      end
    end

    class DimensionValuesWithAttributesList
      def self.parse(list)
        list.map do |value|
          DimensionValuesWithAttributes.parse(value) unless value.nil?
        end
      end
    end

    class DimensionValuesWithAttributes
      def self.parse(map)
        data = Types::DimensionValuesWithAttributes.new
        data.value = map['Value']
        data.attributes = (Attributes.parse(map['Attributes']) unless map['Attributes'].nil?)
        return data
      end
    end

    class Attributes
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ResultsByTime
      def self.parse(list)
        list.map do |value|
          ResultByTime.parse(value) unless value.nil?
        end
      end
    end

    class ResultByTime
      def self.parse(map)
        data = Types::ResultByTime.new
        data.time_period = (DateInterval.parse(map['TimePeriod']) unless map['TimePeriod'].nil?)
        data.total = (Metrics.parse(map['Total']) unless map['Total'].nil?)
        data.groups = (Groups.parse(map['Groups']) unless map['Groups'].nil?)
        data.estimated = map['Estimated']
        return data
      end
    end

    class Groups
      def self.parse(list)
        list.map do |value|
          Group.parse(value) unless value.nil?
        end
      end
    end

    class Group
      def self.parse(map)
        data = Types::Group.new
        data.keys = (Keys.parse(map['Keys']) unless map['Keys'].nil?)
        data.metrics = (Metrics.parse(map['Metrics']) unless map['Metrics'].nil?)
        return data
      end
    end

    class Metrics
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = MetricValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class MetricValue
      def self.parse(map)
        data = Types::MetricValue.new
        data.amount = map['Amount']
        data.unit = map['Unit']
        return data
      end
    end

    class Keys
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class DateInterval
      def self.parse(map)
        data = Types::DateInterval.new
        data.start = map['Start']
        data.end = map['End']
        return data
      end
    end

    class GroupDefinitions
      def self.parse(list)
        list.map do |value|
          GroupDefinition.parse(value) unless value.nil?
        end
      end
    end

    class GroupDefinition
      def self.parse(map)
        data = Types::GroupDefinition.new
        data.type = map['Type']
        data.key = map['Key']
        return data
      end
    end

    # Error Parser for BillExpirationException
    class BillExpirationException
      def self.parse(http_resp)
        data = Types::BillExpirationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for DataUnavailableException
    class DataUnavailableException
      def self.parse(http_resp)
        data = Types::DataUnavailableException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for RequestChangedException
    class RequestChangedException
      def self.parse(http_resp)
        data = Types::RequestChangedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for GetCostAndUsageWithResources
    class GetCostAndUsageWithResources
      def self.parse(http_resp)
        data = Types::GetCostAndUsageWithResourcesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_page_token = map['NextPageToken']
        data.group_definitions = (GroupDefinitions.parse(map['GroupDefinitions']) unless map['GroupDefinitions'].nil?)
        data.results_by_time = (ResultsByTime.parse(map['ResultsByTime']) unless map['ResultsByTime'].nil?)
        data.dimension_value_attributes = (DimensionValuesWithAttributesList.parse(map['DimensionValueAttributes']) unless map['DimensionValueAttributes'].nil?)
        data
      end
    end

    # Operation Parser for GetCostCategories
    class GetCostCategories
      def self.parse(http_resp)
        data = Types::GetCostCategoriesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_page_token = map['NextPageToken']
        data.cost_category_names = (CostCategoryNamesList.parse(map['CostCategoryNames']) unless map['CostCategoryNames'].nil?)
        data.cost_category_values = (CostCategoryValuesList.parse(map['CostCategoryValues']) unless map['CostCategoryValues'].nil?)
        data.return_size = map['ReturnSize']
        data.total_size = map['TotalSize']
        data
      end
    end

    class CostCategoryValuesList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class CostCategoryNamesList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for GetCostForecast
    class GetCostForecast
      def self.parse(http_resp)
        data = Types::GetCostForecastOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.total = (MetricValue.parse(map['Total']) unless map['Total'].nil?)
        data.forecast_results_by_time = (ForecastResultsByTime.parse(map['ForecastResultsByTime']) unless map['ForecastResultsByTime'].nil?)
        data
      end
    end

    class ForecastResultsByTime
      def self.parse(list)
        list.map do |value|
          ForecastResult.parse(value) unless value.nil?
        end
      end
    end

    class ForecastResult
      def self.parse(map)
        data = Types::ForecastResult.new
        data.time_period = (DateInterval.parse(map['TimePeriod']) unless map['TimePeriod'].nil?)
        data.mean_value = map['MeanValue']
        data.prediction_interval_lower_bound = map['PredictionIntervalLowerBound']
        data.prediction_interval_upper_bound = map['PredictionIntervalUpperBound']
        return data
      end
    end

    # Operation Parser for GetDimensionValues
    class GetDimensionValues
      def self.parse(http_resp)
        data = Types::GetDimensionValuesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.dimension_values = (DimensionValuesWithAttributesList.parse(map['DimensionValues']) unless map['DimensionValues'].nil?)
        data.return_size = map['ReturnSize']
        data.total_size = map['TotalSize']
        data.next_page_token = map['NextPageToken']
        data
      end
    end

    # Operation Parser for GetReservationCoverage
    class GetReservationCoverage
      def self.parse(http_resp)
        data = Types::GetReservationCoverageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.coverages_by_time = (CoveragesByTime.parse(map['CoveragesByTime']) unless map['CoveragesByTime'].nil?)
        data.total = (Coverage.parse(map['Total']) unless map['Total'].nil?)
        data.next_page_token = map['NextPageToken']
        data
      end
    end

    class Coverage
      def self.parse(map)
        data = Types::Coverage.new
        data.coverage_hours = (CoverageHours.parse(map['CoverageHours']) unless map['CoverageHours'].nil?)
        data.coverage_normalized_units = (CoverageNormalizedUnits.parse(map['CoverageNormalizedUnits']) unless map['CoverageNormalizedUnits'].nil?)
        data.coverage_cost = (CoverageCost.parse(map['CoverageCost']) unless map['CoverageCost'].nil?)
        return data
      end
    end

    class CoverageCost
      def self.parse(map)
        data = Types::CoverageCost.new
        data.on_demand_cost = map['OnDemandCost']
        return data
      end
    end

    class CoverageNormalizedUnits
      def self.parse(map)
        data = Types::CoverageNormalizedUnits.new
        data.on_demand_normalized_units = map['OnDemandNormalizedUnits']
        data.reserved_normalized_units = map['ReservedNormalizedUnits']
        data.total_running_normalized_units = map['TotalRunningNormalizedUnits']
        data.coverage_normalized_units_percentage = map['CoverageNormalizedUnitsPercentage']
        return data
      end
    end

    class CoverageHours
      def self.parse(map)
        data = Types::CoverageHours.new
        data.on_demand_hours = map['OnDemandHours']
        data.reserved_hours = map['ReservedHours']
        data.total_running_hours = map['TotalRunningHours']
        data.coverage_hours_percentage = map['CoverageHoursPercentage']
        return data
      end
    end

    class CoveragesByTime
      def self.parse(list)
        list.map do |value|
          CoverageByTime.parse(value) unless value.nil?
        end
      end
    end

    class CoverageByTime
      def self.parse(map)
        data = Types::CoverageByTime.new
        data.time_period = (DateInterval.parse(map['TimePeriod']) unless map['TimePeriod'].nil?)
        data.groups = (ReservationCoverageGroups.parse(map['Groups']) unless map['Groups'].nil?)
        data.total = (Coverage.parse(map['Total']) unless map['Total'].nil?)
        return data
      end
    end

    class ReservationCoverageGroups
      def self.parse(list)
        list.map do |value|
          ReservationCoverageGroup.parse(value) unless value.nil?
        end
      end
    end

    class ReservationCoverageGroup
      def self.parse(map)
        data = Types::ReservationCoverageGroup.new
        data.attributes = (Attributes.parse(map['Attributes']) unless map['Attributes'].nil?)
        data.coverage = (Coverage.parse(map['Coverage']) unless map['Coverage'].nil?)
        return data
      end
    end

    # Operation Parser for GetReservationPurchaseRecommendation
    class GetReservationPurchaseRecommendation
      def self.parse(http_resp)
        data = Types::GetReservationPurchaseRecommendationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.metadata = (ReservationPurchaseRecommendationMetadata.parse(map['Metadata']) unless map['Metadata'].nil?)
        data.recommendations = (ReservationPurchaseRecommendations.parse(map['Recommendations']) unless map['Recommendations'].nil?)
        data.next_page_token = map['NextPageToken']
        data
      end
    end

    class ReservationPurchaseRecommendations
      def self.parse(list)
        list.map do |value|
          ReservationPurchaseRecommendation.parse(value) unless value.nil?
        end
      end
    end

    class ReservationPurchaseRecommendation
      def self.parse(map)
        data = Types::ReservationPurchaseRecommendation.new
        data.account_scope = map['AccountScope']
        data.lookback_period_in_days = map['LookbackPeriodInDays']
        data.term_in_years = map['TermInYears']
        data.payment_option = map['PaymentOption']
        data.service_specification = (ServiceSpecification.parse(map['ServiceSpecification']) unless map['ServiceSpecification'].nil?)
        data.recommendation_details = (ReservationPurchaseRecommendationDetails.parse(map['RecommendationDetails']) unless map['RecommendationDetails'].nil?)
        data.recommendation_summary = (ReservationPurchaseRecommendationSummary.parse(map['RecommendationSummary']) unless map['RecommendationSummary'].nil?)
        return data
      end
    end

    class ReservationPurchaseRecommendationSummary
      def self.parse(map)
        data = Types::ReservationPurchaseRecommendationSummary.new
        data.total_estimated_monthly_savings_amount = map['TotalEstimatedMonthlySavingsAmount']
        data.total_estimated_monthly_savings_percentage = map['TotalEstimatedMonthlySavingsPercentage']
        data.currency_code = map['CurrencyCode']
        return data
      end
    end

    class ReservationPurchaseRecommendationDetails
      def self.parse(list)
        list.map do |value|
          ReservationPurchaseRecommendationDetail.parse(value) unless value.nil?
        end
      end
    end

    class ReservationPurchaseRecommendationDetail
      def self.parse(map)
        data = Types::ReservationPurchaseRecommendationDetail.new
        data.account_id = map['AccountId']
        data.instance_details = (InstanceDetails.parse(map['InstanceDetails']) unless map['InstanceDetails'].nil?)
        data.recommended_number_of_instances_to_purchase = map['RecommendedNumberOfInstancesToPurchase']
        data.recommended_normalized_units_to_purchase = map['RecommendedNormalizedUnitsToPurchase']
        data.minimum_number_of_instances_used_per_hour = map['MinimumNumberOfInstancesUsedPerHour']
        data.minimum_normalized_units_used_per_hour = map['MinimumNormalizedUnitsUsedPerHour']
        data.maximum_number_of_instances_used_per_hour = map['MaximumNumberOfInstancesUsedPerHour']
        data.maximum_normalized_units_used_per_hour = map['MaximumNormalizedUnitsUsedPerHour']
        data.average_number_of_instances_used_per_hour = map['AverageNumberOfInstancesUsedPerHour']
        data.average_normalized_units_used_per_hour = map['AverageNormalizedUnitsUsedPerHour']
        data.average_utilization = map['AverageUtilization']
        data.estimated_break_even_in_months = map['EstimatedBreakEvenInMonths']
        data.currency_code = map['CurrencyCode']
        data.estimated_monthly_savings_amount = map['EstimatedMonthlySavingsAmount']
        data.estimated_monthly_savings_percentage = map['EstimatedMonthlySavingsPercentage']
        data.estimated_monthly_on_demand_cost = map['EstimatedMonthlyOnDemandCost']
        data.estimated_reservation_cost_for_lookback_period = map['EstimatedReservationCostForLookbackPeriod']
        data.upfront_cost = map['UpfrontCost']
        data.recurring_standard_monthly_cost = map['RecurringStandardMonthlyCost']
        return data
      end
    end

    class InstanceDetails
      def self.parse(map)
        data = Types::InstanceDetails.new
        data.ec2_instance_details = (EC2InstanceDetails.parse(map['EC2InstanceDetails']) unless map['EC2InstanceDetails'].nil?)
        data.rds_instance_details = (RDSInstanceDetails.parse(map['RDSInstanceDetails']) unless map['RDSInstanceDetails'].nil?)
        data.redshift_instance_details = (RedshiftInstanceDetails.parse(map['RedshiftInstanceDetails']) unless map['RedshiftInstanceDetails'].nil?)
        data.elasti_cache_instance_details = (ElastiCacheInstanceDetails.parse(map['ElastiCacheInstanceDetails']) unless map['ElastiCacheInstanceDetails'].nil?)
        data.es_instance_details = (ESInstanceDetails.parse(map['ESInstanceDetails']) unless map['ESInstanceDetails'].nil?)
        return data
      end
    end

    class ESInstanceDetails
      def self.parse(map)
        data = Types::ESInstanceDetails.new
        data.instance_class = map['InstanceClass']
        data.instance_size = map['InstanceSize']
        data.region = map['Region']
        data.current_generation = map['CurrentGeneration']
        data.size_flex_eligible = map['SizeFlexEligible']
        return data
      end
    end

    class ElastiCacheInstanceDetails
      def self.parse(map)
        data = Types::ElastiCacheInstanceDetails.new
        data.family = map['Family']
        data.node_type = map['NodeType']
        data.region = map['Region']
        data.product_description = map['ProductDescription']
        data.current_generation = map['CurrentGeneration']
        data.size_flex_eligible = map['SizeFlexEligible']
        return data
      end
    end

    class RedshiftInstanceDetails
      def self.parse(map)
        data = Types::RedshiftInstanceDetails.new
        data.family = map['Family']
        data.node_type = map['NodeType']
        data.region = map['Region']
        data.current_generation = map['CurrentGeneration']
        data.size_flex_eligible = map['SizeFlexEligible']
        return data
      end
    end

    class RDSInstanceDetails
      def self.parse(map)
        data = Types::RDSInstanceDetails.new
        data.family = map['Family']
        data.instance_type = map['InstanceType']
        data.region = map['Region']
        data.database_engine = map['DatabaseEngine']
        data.database_edition = map['DatabaseEdition']
        data.deployment_option = map['DeploymentOption']
        data.license_model = map['LicenseModel']
        data.current_generation = map['CurrentGeneration']
        data.size_flex_eligible = map['SizeFlexEligible']
        return data
      end
    end

    class EC2InstanceDetails
      def self.parse(map)
        data = Types::EC2InstanceDetails.new
        data.family = map['Family']
        data.instance_type = map['InstanceType']
        data.region = map['Region']
        data.availability_zone = map['AvailabilityZone']
        data.platform = map['Platform']
        data.tenancy = map['Tenancy']
        data.current_generation = map['CurrentGeneration']
        data.size_flex_eligible = map['SizeFlexEligible']
        return data
      end
    end

    class ServiceSpecification
      def self.parse(map)
        data = Types::ServiceSpecification.new
        data.ec2_specification = (EC2Specification.parse(map['EC2Specification']) unless map['EC2Specification'].nil?)
        return data
      end
    end

    class EC2Specification
      def self.parse(map)
        data = Types::EC2Specification.new
        data.offering_class = map['OfferingClass']
        return data
      end
    end

    class ReservationPurchaseRecommendationMetadata
      def self.parse(map)
        data = Types::ReservationPurchaseRecommendationMetadata.new
        data.recommendation_id = map['RecommendationId']
        data.generation_timestamp = map['GenerationTimestamp']
        return data
      end
    end

    # Operation Parser for GetReservationUtilization
    class GetReservationUtilization
      def self.parse(http_resp)
        data = Types::GetReservationUtilizationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.utilizations_by_time = (UtilizationsByTime.parse(map['UtilizationsByTime']) unless map['UtilizationsByTime'].nil?)
        data.total = (ReservationAggregates.parse(map['Total']) unless map['Total'].nil?)
        data.next_page_token = map['NextPageToken']
        data
      end
    end

    class ReservationAggregates
      def self.parse(map)
        data = Types::ReservationAggregates.new
        data.utilization_percentage = map['UtilizationPercentage']
        data.utilization_percentage_in_units = map['UtilizationPercentageInUnits']
        data.purchased_hours = map['PurchasedHours']
        data.purchased_units = map['PurchasedUnits']
        data.total_actual_hours = map['TotalActualHours']
        data.total_actual_units = map['TotalActualUnits']
        data.unused_hours = map['UnusedHours']
        data.unused_units = map['UnusedUnits']
        data.on_demand_cost_of_ri_hours_used = map['OnDemandCostOfRIHoursUsed']
        data.net_ri_savings = map['NetRISavings']
        data.total_potential_ri_savings = map['TotalPotentialRISavings']
        data.amortized_upfront_fee = map['AmortizedUpfrontFee']
        data.amortized_recurring_fee = map['AmortizedRecurringFee']
        data.total_amortized_fee = map['TotalAmortizedFee']
        data.ri_cost_for_unused_hours = map['RICostForUnusedHours']
        data.realized_savings = map['RealizedSavings']
        data.unrealized_savings = map['UnrealizedSavings']
        return data
      end
    end

    class UtilizationsByTime
      def self.parse(list)
        list.map do |value|
          UtilizationByTime.parse(value) unless value.nil?
        end
      end
    end

    class UtilizationByTime
      def self.parse(map)
        data = Types::UtilizationByTime.new
        data.time_period = (DateInterval.parse(map['TimePeriod']) unless map['TimePeriod'].nil?)
        data.groups = (ReservationUtilizationGroups.parse(map['Groups']) unless map['Groups'].nil?)
        data.total = (ReservationAggregates.parse(map['Total']) unless map['Total'].nil?)
        return data
      end
    end

    class ReservationUtilizationGroups
      def self.parse(list)
        list.map do |value|
          ReservationUtilizationGroup.parse(value) unless value.nil?
        end
      end
    end

    class ReservationUtilizationGroup
      def self.parse(map)
        data = Types::ReservationUtilizationGroup.new
        data.key = map['Key']
        data.value = map['Value']
        data.attributes = (Attributes.parse(map['Attributes']) unless map['Attributes'].nil?)
        data.utilization = (ReservationAggregates.parse(map['Utilization']) unless map['Utilization'].nil?)
        return data
      end
    end

    # Operation Parser for GetRightsizingRecommendation
    class GetRightsizingRecommendation
      def self.parse(http_resp)
        data = Types::GetRightsizingRecommendationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.metadata = (RightsizingRecommendationMetadata.parse(map['Metadata']) unless map['Metadata'].nil?)
        data.summary = (RightsizingRecommendationSummary.parse(map['Summary']) unless map['Summary'].nil?)
        data.rightsizing_recommendations = (RightsizingRecommendationList.parse(map['RightsizingRecommendations']) unless map['RightsizingRecommendations'].nil?)
        data.next_page_token = map['NextPageToken']
        data.configuration = (RightsizingRecommendationConfiguration.parse(map['Configuration']) unless map['Configuration'].nil?)
        data
      end
    end

    class RightsizingRecommendationConfiguration
      def self.parse(map)
        data = Types::RightsizingRecommendationConfiguration.new
        data.recommendation_target = map['RecommendationTarget']
        data.benefits_considered = map['BenefitsConsidered']
        return data
      end
    end

    class RightsizingRecommendationList
      def self.parse(list)
        list.map do |value|
          RightsizingRecommendation.parse(value) unless value.nil?
        end
      end
    end

    class RightsizingRecommendation
      def self.parse(map)
        data = Types::RightsizingRecommendation.new
        data.account_id = map['AccountId']
        data.current_instance = (CurrentInstance.parse(map['CurrentInstance']) unless map['CurrentInstance'].nil?)
        data.rightsizing_type = map['RightsizingType']
        data.modify_recommendation_detail = (ModifyRecommendationDetail.parse(map['ModifyRecommendationDetail']) unless map['ModifyRecommendationDetail'].nil?)
        data.terminate_recommendation_detail = (TerminateRecommendationDetail.parse(map['TerminateRecommendationDetail']) unless map['TerminateRecommendationDetail'].nil?)
        data.finding_reason_codes = (FindingReasonCodes.parse(map['FindingReasonCodes']) unless map['FindingReasonCodes'].nil?)
        return data
      end
    end

    class FindingReasonCodes
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class TerminateRecommendationDetail
      def self.parse(map)
        data = Types::TerminateRecommendationDetail.new
        data.estimated_monthly_savings = map['EstimatedMonthlySavings']
        data.currency_code = map['CurrencyCode']
        return data
      end
    end

    class ModifyRecommendationDetail
      def self.parse(map)
        data = Types::ModifyRecommendationDetail.new
        data.target_instances = (TargetInstancesList.parse(map['TargetInstances']) unless map['TargetInstances'].nil?)
        return data
      end
    end

    class TargetInstancesList
      def self.parse(list)
        list.map do |value|
          TargetInstance.parse(value) unless value.nil?
        end
      end
    end

    class TargetInstance
      def self.parse(map)
        data = Types::TargetInstance.new
        data.estimated_monthly_cost = map['EstimatedMonthlyCost']
        data.estimated_monthly_savings = map['EstimatedMonthlySavings']
        data.currency_code = map['CurrencyCode']
        data.default_target_instance = map['DefaultTargetInstance']
        data.resource_details = (ResourceDetails.parse(map['ResourceDetails']) unless map['ResourceDetails'].nil?)
        data.expected_resource_utilization = (ResourceUtilization.parse(map['ExpectedResourceUtilization']) unless map['ExpectedResourceUtilization'].nil?)
        data.platform_differences = (PlatformDifferences.parse(map['PlatformDifferences']) unless map['PlatformDifferences'].nil?)
        return data
      end
    end

    class PlatformDifferences
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ResourceUtilization
      def self.parse(map)
        data = Types::ResourceUtilization.new
        data.ec2_resource_utilization = (EC2ResourceUtilization.parse(map['EC2ResourceUtilization']) unless map['EC2ResourceUtilization'].nil?)
        return data
      end
    end

    class EC2ResourceUtilization
      def self.parse(map)
        data = Types::EC2ResourceUtilization.new
        data.max_cpu_utilization_percentage = map['MaxCpuUtilizationPercentage']
        data.max_memory_utilization_percentage = map['MaxMemoryUtilizationPercentage']
        data.max_storage_utilization_percentage = map['MaxStorageUtilizationPercentage']
        data.ebs_resource_utilization = (EBSResourceUtilization.parse(map['EBSResourceUtilization']) unless map['EBSResourceUtilization'].nil?)
        data.disk_resource_utilization = (DiskResourceUtilization.parse(map['DiskResourceUtilization']) unless map['DiskResourceUtilization'].nil?)
        data.network_resource_utilization = (NetworkResourceUtilization.parse(map['NetworkResourceUtilization']) unless map['NetworkResourceUtilization'].nil?)
        return data
      end
    end

    class NetworkResourceUtilization
      def self.parse(map)
        data = Types::NetworkResourceUtilization.new
        data.network_in_bytes_per_second = map['NetworkInBytesPerSecond']
        data.network_out_bytes_per_second = map['NetworkOutBytesPerSecond']
        data.network_packets_in_per_second = map['NetworkPacketsInPerSecond']
        data.network_packets_out_per_second = map['NetworkPacketsOutPerSecond']
        return data
      end
    end

    class DiskResourceUtilization
      def self.parse(map)
        data = Types::DiskResourceUtilization.new
        data.disk_read_ops_per_second = map['DiskReadOpsPerSecond']
        data.disk_write_ops_per_second = map['DiskWriteOpsPerSecond']
        data.disk_read_bytes_per_second = map['DiskReadBytesPerSecond']
        data.disk_write_bytes_per_second = map['DiskWriteBytesPerSecond']
        return data
      end
    end

    class EBSResourceUtilization
      def self.parse(map)
        data = Types::EBSResourceUtilization.new
        data.ebs_read_ops_per_second = map['EbsReadOpsPerSecond']
        data.ebs_write_ops_per_second = map['EbsWriteOpsPerSecond']
        data.ebs_read_bytes_per_second = map['EbsReadBytesPerSecond']
        data.ebs_write_bytes_per_second = map['EbsWriteBytesPerSecond']
        return data
      end
    end

    class ResourceDetails
      def self.parse(map)
        data = Types::ResourceDetails.new
        data.ec2_resource_details = (EC2ResourceDetails.parse(map['EC2ResourceDetails']) unless map['EC2ResourceDetails'].nil?)
        return data
      end
    end

    class EC2ResourceDetails
      def self.parse(map)
        data = Types::EC2ResourceDetails.new
        data.hourly_on_demand_rate = map['HourlyOnDemandRate']
        data.instance_type = map['InstanceType']
        data.platform = map['Platform']
        data.region = map['Region']
        data.sku = map['Sku']
        data.memory = map['Memory']
        data.network_performance = map['NetworkPerformance']
        data.storage = map['Storage']
        data.vcpu = map['Vcpu']
        return data
      end
    end

    class CurrentInstance
      def self.parse(map)
        data = Types::CurrentInstance.new
        data.resource_id = map['ResourceId']
        data.instance_name = map['InstanceName']
        data.tags = (TagValuesList.parse(map['Tags']) unless map['Tags'].nil?)
        data.resource_details = (ResourceDetails.parse(map['ResourceDetails']) unless map['ResourceDetails'].nil?)
        data.resource_utilization = (ResourceUtilization.parse(map['ResourceUtilization']) unless map['ResourceUtilization'].nil?)
        data.reservation_covered_hours_in_lookback_period = map['ReservationCoveredHoursInLookbackPeriod']
        data.savings_plans_covered_hours_in_lookback_period = map['SavingsPlansCoveredHoursInLookbackPeriod']
        data.on_demand_hours_in_lookback_period = map['OnDemandHoursInLookbackPeriod']
        data.total_running_hours_in_lookback_period = map['TotalRunningHoursInLookbackPeriod']
        data.monthly_cost = map['MonthlyCost']
        data.currency_code = map['CurrencyCode']
        return data
      end
    end

    class TagValuesList
      def self.parse(list)
        list.map do |value|
          TagValues.parse(value) unless value.nil?
        end
      end
    end

    class RightsizingRecommendationSummary
      def self.parse(map)
        data = Types::RightsizingRecommendationSummary.new
        data.total_recommendation_count = map['TotalRecommendationCount']
        data.estimated_total_monthly_savings_amount = map['EstimatedTotalMonthlySavingsAmount']
        data.savings_currency_code = map['SavingsCurrencyCode']
        data.savings_percentage = map['SavingsPercentage']
        return data
      end
    end

    class RightsizingRecommendationMetadata
      def self.parse(map)
        data = Types::RightsizingRecommendationMetadata.new
        data.recommendation_id = map['RecommendationId']
        data.generation_timestamp = map['GenerationTimestamp']
        data.lookback_period_in_days = map['LookbackPeriodInDays']
        data.additional_metadata = map['AdditionalMetadata']
        return data
      end
    end

    # Operation Parser for GetSavingsPlansCoverage
    class GetSavingsPlansCoverage
      def self.parse(http_resp)
        data = Types::GetSavingsPlansCoverageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.savings_plans_coverages = (SavingsPlansCoverages.parse(map['SavingsPlansCoverages']) unless map['SavingsPlansCoverages'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class SavingsPlansCoverages
      def self.parse(list)
        list.map do |value|
          SavingsPlansCoverage.parse(value) unless value.nil?
        end
      end
    end

    class SavingsPlansCoverage
      def self.parse(map)
        data = Types::SavingsPlansCoverage.new
        data.attributes = (Attributes.parse(map['Attributes']) unless map['Attributes'].nil?)
        data.coverage = (SavingsPlansCoverageData.parse(map['Coverage']) unless map['Coverage'].nil?)
        data.time_period = (DateInterval.parse(map['TimePeriod']) unless map['TimePeriod'].nil?)
        return data
      end
    end

    class SavingsPlansCoverageData
      def self.parse(map)
        data = Types::SavingsPlansCoverageData.new
        data.spend_covered_by_savings_plans = map['SpendCoveredBySavingsPlans']
        data.on_demand_cost = map['OnDemandCost']
        data.total_cost = map['TotalCost']
        data.coverage_percentage = map['CoveragePercentage']
        return data
      end
    end

    # Operation Parser for GetSavingsPlansPurchaseRecommendation
    class GetSavingsPlansPurchaseRecommendation
      def self.parse(http_resp)
        data = Types::GetSavingsPlansPurchaseRecommendationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.metadata = (SavingsPlansPurchaseRecommendationMetadata.parse(map['Metadata']) unless map['Metadata'].nil?)
        data.savings_plans_purchase_recommendation = (SavingsPlansPurchaseRecommendation.parse(map['SavingsPlansPurchaseRecommendation']) unless map['SavingsPlansPurchaseRecommendation'].nil?)
        data.next_page_token = map['NextPageToken']
        data
      end
    end

    class SavingsPlansPurchaseRecommendation
      def self.parse(map)
        data = Types::SavingsPlansPurchaseRecommendation.new
        data.account_scope = map['AccountScope']
        data.savings_plans_type = map['SavingsPlansType']
        data.term_in_years = map['TermInYears']
        data.payment_option = map['PaymentOption']
        data.lookback_period_in_days = map['LookbackPeriodInDays']
        data.savings_plans_purchase_recommendation_details = (SavingsPlansPurchaseRecommendationDetailList.parse(map['SavingsPlansPurchaseRecommendationDetails']) unless map['SavingsPlansPurchaseRecommendationDetails'].nil?)
        data.savings_plans_purchase_recommendation_summary = (SavingsPlansPurchaseRecommendationSummary.parse(map['SavingsPlansPurchaseRecommendationSummary']) unless map['SavingsPlansPurchaseRecommendationSummary'].nil?)
        return data
      end
    end

    class SavingsPlansPurchaseRecommendationSummary
      def self.parse(map)
        data = Types::SavingsPlansPurchaseRecommendationSummary.new
        data.estimated_roi = map['EstimatedROI']
        data.currency_code = map['CurrencyCode']
        data.estimated_total_cost = map['EstimatedTotalCost']
        data.current_on_demand_spend = map['CurrentOnDemandSpend']
        data.estimated_savings_amount = map['EstimatedSavingsAmount']
        data.total_recommendation_count = map['TotalRecommendationCount']
        data.daily_commitment_to_purchase = map['DailyCommitmentToPurchase']
        data.hourly_commitment_to_purchase = map['HourlyCommitmentToPurchase']
        data.estimated_savings_percentage = map['EstimatedSavingsPercentage']
        data.estimated_monthly_savings_amount = map['EstimatedMonthlySavingsAmount']
        data.estimated_on_demand_cost_with_current_commitment = map['EstimatedOnDemandCostWithCurrentCommitment']
        return data
      end
    end

    class SavingsPlansPurchaseRecommendationDetailList
      def self.parse(list)
        list.map do |value|
          SavingsPlansPurchaseRecommendationDetail.parse(value) unless value.nil?
        end
      end
    end

    class SavingsPlansPurchaseRecommendationDetail
      def self.parse(map)
        data = Types::SavingsPlansPurchaseRecommendationDetail.new
        data.savings_plans_details = (SavingsPlansDetails.parse(map['SavingsPlansDetails']) unless map['SavingsPlansDetails'].nil?)
        data.account_id = map['AccountId']
        data.upfront_cost = map['UpfrontCost']
        data.estimated_roi = map['EstimatedROI']
        data.currency_code = map['CurrencyCode']
        data.estimated_sp_cost = map['EstimatedSPCost']
        data.estimated_on_demand_cost = map['EstimatedOnDemandCost']
        data.estimated_on_demand_cost_with_current_commitment = map['EstimatedOnDemandCostWithCurrentCommitment']
        data.estimated_savings_amount = map['EstimatedSavingsAmount']
        data.estimated_savings_percentage = map['EstimatedSavingsPercentage']
        data.hourly_commitment_to_purchase = map['HourlyCommitmentToPurchase']
        data.estimated_average_utilization = map['EstimatedAverageUtilization']
        data.estimated_monthly_savings_amount = map['EstimatedMonthlySavingsAmount']
        data.current_minimum_hourly_on_demand_spend = map['CurrentMinimumHourlyOnDemandSpend']
        data.current_maximum_hourly_on_demand_spend = map['CurrentMaximumHourlyOnDemandSpend']
        data.current_average_hourly_on_demand_spend = map['CurrentAverageHourlyOnDemandSpend']
        return data
      end
    end

    class SavingsPlansDetails
      def self.parse(map)
        data = Types::SavingsPlansDetails.new
        data.region = map['Region']
        data.instance_family = map['InstanceFamily']
        data.offering_id = map['OfferingId']
        return data
      end
    end

    class SavingsPlansPurchaseRecommendationMetadata
      def self.parse(map)
        data = Types::SavingsPlansPurchaseRecommendationMetadata.new
        data.recommendation_id = map['RecommendationId']
        data.generation_timestamp = map['GenerationTimestamp']
        data.additional_metadata = map['AdditionalMetadata']
        return data
      end
    end

    # Operation Parser for GetSavingsPlansUtilization
    class GetSavingsPlansUtilization
      def self.parse(http_resp)
        data = Types::GetSavingsPlansUtilizationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.savings_plans_utilizations_by_time = (SavingsPlansUtilizationsByTime.parse(map['SavingsPlansUtilizationsByTime']) unless map['SavingsPlansUtilizationsByTime'].nil?)
        data.total = (SavingsPlansUtilizationAggregates.parse(map['Total']) unless map['Total'].nil?)
        data
      end
    end

    class SavingsPlansUtilizationAggregates
      def self.parse(map)
        data = Types::SavingsPlansUtilizationAggregates.new
        data.utilization = (SavingsPlansUtilization.parse(map['Utilization']) unless map['Utilization'].nil?)
        data.savings = (SavingsPlansSavings.parse(map['Savings']) unless map['Savings'].nil?)
        data.amortized_commitment = (SavingsPlansAmortizedCommitment.parse(map['AmortizedCommitment']) unless map['AmortizedCommitment'].nil?)
        return data
      end
    end

    class SavingsPlansAmortizedCommitment
      def self.parse(map)
        data = Types::SavingsPlansAmortizedCommitment.new
        data.amortized_recurring_commitment = map['AmortizedRecurringCommitment']
        data.amortized_upfront_commitment = map['AmortizedUpfrontCommitment']
        data.total_amortized_commitment = map['TotalAmortizedCommitment']
        return data
      end
    end

    class SavingsPlansSavings
      def self.parse(map)
        data = Types::SavingsPlansSavings.new
        data.net_savings = map['NetSavings']
        data.on_demand_cost_equivalent = map['OnDemandCostEquivalent']
        return data
      end
    end

    class SavingsPlansUtilization
      def self.parse(map)
        data = Types::SavingsPlansUtilization.new
        data.total_commitment = map['TotalCommitment']
        data.used_commitment = map['UsedCommitment']
        data.unused_commitment = map['UnusedCommitment']
        data.utilization_percentage = map['UtilizationPercentage']
        return data
      end
    end

    class SavingsPlansUtilizationsByTime
      def self.parse(list)
        list.map do |value|
          SavingsPlansUtilizationByTime.parse(value) unless value.nil?
        end
      end
    end

    class SavingsPlansUtilizationByTime
      def self.parse(map)
        data = Types::SavingsPlansUtilizationByTime.new
        data.time_period = (DateInterval.parse(map['TimePeriod']) unless map['TimePeriod'].nil?)
        data.utilization = (SavingsPlansUtilization.parse(map['Utilization']) unless map['Utilization'].nil?)
        data.savings = (SavingsPlansSavings.parse(map['Savings']) unless map['Savings'].nil?)
        data.amortized_commitment = (SavingsPlansAmortizedCommitment.parse(map['AmortizedCommitment']) unless map['AmortizedCommitment'].nil?)
        return data
      end
    end

    # Operation Parser for GetSavingsPlansUtilizationDetails
    class GetSavingsPlansUtilizationDetails
      def self.parse(http_resp)
        data = Types::GetSavingsPlansUtilizationDetailsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.savings_plans_utilization_details = (SavingsPlansUtilizationDetails.parse(map['SavingsPlansUtilizationDetails']) unless map['SavingsPlansUtilizationDetails'].nil?)
        data.total = (SavingsPlansUtilizationAggregates.parse(map['Total']) unless map['Total'].nil?)
        data.time_period = (DateInterval.parse(map['TimePeriod']) unless map['TimePeriod'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class SavingsPlansUtilizationDetails
      def self.parse(list)
        list.map do |value|
          SavingsPlansUtilizationDetail.parse(value) unless value.nil?
        end
      end
    end

    class SavingsPlansUtilizationDetail
      def self.parse(map)
        data = Types::SavingsPlansUtilizationDetail.new
        data.savings_plan_arn = map['SavingsPlanArn']
        data.attributes = (Attributes.parse(map['Attributes']) unless map['Attributes'].nil?)
        data.utilization = (SavingsPlansUtilization.parse(map['Utilization']) unless map['Utilization'].nil?)
        data.savings = (SavingsPlansSavings.parse(map['Savings']) unless map['Savings'].nil?)
        data.amortized_commitment = (SavingsPlansAmortizedCommitment.parse(map['AmortizedCommitment']) unless map['AmortizedCommitment'].nil?)
        return data
      end
    end

    # Operation Parser for GetTags
    class GetTags
      def self.parse(http_resp)
        data = Types::GetTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_page_token = map['NextPageToken']
        data.tags = (TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.return_size = map['ReturnSize']
        data.total_size = map['TotalSize']
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for GetUsageForecast
    class GetUsageForecast
      def self.parse(http_resp)
        data = Types::GetUsageForecastOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.total = (MetricValue.parse(map['Total']) unless map['Total'].nil?)
        data.forecast_results_by_time = (ForecastResultsByTime.parse(map['ForecastResultsByTime']) unless map['ForecastResultsByTime'].nil?)
        data
      end
    end

    # Error Parser for UnresolvableUsageUnitException
    class UnresolvableUsageUnitException
      def self.parse(http_resp)
        data = Types::UnresolvableUsageUnitException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for ListCostAllocationTags
    class ListCostAllocationTags
      def self.parse(http_resp)
        data = Types::ListCostAllocationTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cost_allocation_tags = (CostAllocationTagList.parse(map['CostAllocationTags']) unless map['CostAllocationTags'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class CostAllocationTagList
      def self.parse(list)
        list.map do |value|
          CostAllocationTag.parse(value) unless value.nil?
        end
      end
    end

    class CostAllocationTag
      def self.parse(map)
        data = Types::CostAllocationTag.new
        data.tag_key = map['TagKey']
        data.type = map['Type']
        data.status = map['Status']
        return data
      end
    end

    # Operation Parser for ListCostCategoryDefinitions
    class ListCostCategoryDefinitions
      def self.parse(http_resp)
        data = Types::ListCostCategoryDefinitionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cost_category_references = (CostCategoryReferencesList.parse(map['CostCategoryReferences']) unless map['CostCategoryReferences'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class CostCategoryReferencesList
      def self.parse(list)
        list.map do |value|
          CostCategoryReference.parse(value) unless value.nil?
        end
      end
    end

    class CostCategoryReference
      def self.parse(map)
        data = Types::CostCategoryReference.new
        data.cost_category_arn = map['CostCategoryArn']
        data.name = map['Name']
        data.effective_start = map['EffectiveStart']
        data.effective_end = map['EffectiveEnd']
        data.number_of_rules = map['NumberOfRules']
        data.processing_status = (CostCategoryProcessingStatusList.parse(map['ProcessingStatus']) unless map['ProcessingStatus'].nil?)
        data.values = (CostCategoryValuesList.parse(map['Values']) unless map['Values'].nil?)
        data.default_value = map['DefaultValue']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_tags = (ResourceTagList.parse(map['ResourceTags']) unless map['ResourceTags'].nil?)
        data
      end
    end

    class ResourceTagList
      def self.parse(list)
        list.map do |value|
          ResourceTag.parse(value) unless value.nil?
        end
      end
    end

    class ResourceTag
      def self.parse(map)
        data = Types::ResourceTag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for ProvideAnomalyFeedback
    class ProvideAnomalyFeedback
      def self.parse(http_resp)
        data = Types::ProvideAnomalyFeedbackOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.anomaly_id = map['AnomalyId']
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for TooManyTagsException
    class TooManyTagsException
      def self.parse(http_resp)
        data = Types::TooManyTagsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.resource_name = map['ResourceName']
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateAnomalyMonitor
    class UpdateAnomalyMonitor
      def self.parse(http_resp)
        data = Types::UpdateAnomalyMonitorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.monitor_arn = map['MonitorArn']
        data
      end
    end

    # Operation Parser for UpdateAnomalySubscription
    class UpdateAnomalySubscription
      def self.parse(http_resp)
        data = Types::UpdateAnomalySubscriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.subscription_arn = map['SubscriptionArn']
        data
      end
    end

    # Operation Parser for UpdateCostAllocationTagsStatus
    class UpdateCostAllocationTagsStatus
      def self.parse(http_resp)
        data = Types::UpdateCostAllocationTagsStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.errors = (UpdateCostAllocationTagsStatusErrors.parse(map['Errors']) unless map['Errors'].nil?)
        data
      end
    end

    class UpdateCostAllocationTagsStatusErrors
      def self.parse(list)
        list.map do |value|
          UpdateCostAllocationTagsStatusError.parse(value) unless value.nil?
        end
      end
    end

    class UpdateCostAllocationTagsStatusError
      def self.parse(map)
        data = Types::UpdateCostAllocationTagsStatusError.new
        data.tag_key = map['TagKey']
        data.code = map['Code']
        data.message = map['Message']
        return data
      end
    end

    # Operation Parser for UpdateCostCategoryDefinition
    class UpdateCostCategoryDefinition
      def self.parse(http_resp)
        data = Types::UpdateCostCategoryDefinitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cost_category_arn = map['CostCategoryArn']
        data.effective_start = map['EffectiveStart']
        data
      end
    end
  end
end
