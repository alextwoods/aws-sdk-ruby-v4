# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CostExplorer
  module Validators

    class Anomalies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Anomaly.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Anomaly
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Anomaly, context: context)
        Hearth::Validator.validate!(input[:anomaly_id], ::String, context: "#{context}[:anomaly_id]")
        Hearth::Validator.validate!(input[:anomaly_start_date], ::String, context: "#{context}[:anomaly_start_date]")
        Hearth::Validator.validate!(input[:anomaly_end_date], ::String, context: "#{context}[:anomaly_end_date]")
        Hearth::Validator.validate!(input[:dimension_value], ::String, context: "#{context}[:dimension_value]")
        RootCauses.validate!(input[:root_causes], context: "#{context}[:root_causes]") unless input[:root_causes].nil?
        AnomalyScore.validate!(input[:anomaly_score], context: "#{context}[:anomaly_score]") unless input[:anomaly_score].nil?
        Impact.validate!(input[:impact], context: "#{context}[:impact]") unless input[:impact].nil?
        Hearth::Validator.validate!(input[:monitor_arn], ::String, context: "#{context}[:monitor_arn]")
        Hearth::Validator.validate!(input[:feedback], ::String, context: "#{context}[:feedback]")
      end
    end

    class AnomalyDateInterval
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnomalyDateInterval, context: context)
        Hearth::Validator.validate!(input[:start_date], ::String, context: "#{context}[:start_date]")
        Hearth::Validator.validate!(input[:end_date], ::String, context: "#{context}[:end_date]")
      end
    end

    class AnomalyMonitor
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnomalyMonitor, context: context)
        Hearth::Validator.validate!(input[:monitor_arn], ::String, context: "#{context}[:monitor_arn]")
        Hearth::Validator.validate!(input[:monitor_name], ::String, context: "#{context}[:monitor_name]")
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_updated_date], ::String, context: "#{context}[:last_updated_date]")
        Hearth::Validator.validate!(input[:last_evaluated_date], ::String, context: "#{context}[:last_evaluated_date]")
        Hearth::Validator.validate!(input[:monitor_type], ::String, context: "#{context}[:monitor_type]")
        Hearth::Validator.validate!(input[:monitor_dimension], ::String, context: "#{context}[:monitor_dimension]")
        Expression.validate!(input[:monitor_specification], context: "#{context}[:monitor_specification]") unless input[:monitor_specification].nil?
        Hearth::Validator.validate!(input[:dimensional_value_count], ::Integer, context: "#{context}[:dimensional_value_count]")
      end
    end

    class AnomalyMonitors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AnomalyMonitor.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AnomalyScore
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnomalyScore, context: context)
        Hearth::Validator.validate!(input[:max_score], ::Float, context: "#{context}[:max_score]")
        Hearth::Validator.validate!(input[:current_score], ::Float, context: "#{context}[:current_score]")
      end
    end

    class AnomalySubscription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnomalySubscription, context: context)
        Hearth::Validator.validate!(input[:subscription_arn], ::String, context: "#{context}[:subscription_arn]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        MonitorArnList.validate!(input[:monitor_arn_list], context: "#{context}[:monitor_arn_list]") unless input[:monitor_arn_list].nil?
        Subscribers.validate!(input[:subscribers], context: "#{context}[:subscribers]") unless input[:subscribers].nil?
        Hearth::Validator.validate!(input[:threshold], ::Float, context: "#{context}[:threshold]")
        Hearth::Validator.validate!(input[:frequency], ::String, context: "#{context}[:frequency]")
        Hearth::Validator.validate!(input[:subscription_name], ::String, context: "#{context}[:subscription_name]")
      end
    end

    class AnomalySubscriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AnomalySubscription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Attributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class BillExpirationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BillExpirationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CostAllocationTag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CostAllocationTag, context: context)
        Hearth::Validator.validate!(input[:tag_key], ::String, context: "#{context}[:tag_key]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class CostAllocationTagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CostAllocationTagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CostAllocationTag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CostAllocationTagStatusEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CostAllocationTagStatusEntry, context: context)
        Hearth::Validator.validate!(input[:tag_key], ::String, context: "#{context}[:tag_key]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class CostAllocationTagStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CostAllocationTagStatusEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CostCategory
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CostCategory, context: context)
        Hearth::Validator.validate!(input[:cost_category_arn], ::String, context: "#{context}[:cost_category_arn]")
        Hearth::Validator.validate!(input[:effective_start], ::String, context: "#{context}[:effective_start]")
        Hearth::Validator.validate!(input[:effective_end], ::String, context: "#{context}[:effective_end]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:rule_version], ::String, context: "#{context}[:rule_version]")
        CostCategoryRulesList.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
        CostCategorySplitChargeRulesList.validate!(input[:split_charge_rules], context: "#{context}[:split_charge_rules]") unless input[:split_charge_rules].nil?
        CostCategoryProcessingStatusList.validate!(input[:processing_status], context: "#{context}[:processing_status]") unless input[:processing_status].nil?
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
      end
    end

    class CostCategoryInheritedValueDimension
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CostCategoryInheritedValueDimension, context: context)
        Hearth::Validator.validate!(input[:dimension_name], ::String, context: "#{context}[:dimension_name]")
        Hearth::Validator.validate!(input[:dimension_key], ::String, context: "#{context}[:dimension_key]")
      end
    end

    class CostCategoryNamesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CostCategoryProcessingStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CostCategoryProcessingStatus, context: context)
        Hearth::Validator.validate!(input[:component], ::String, context: "#{context}[:component]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class CostCategoryProcessingStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CostCategoryProcessingStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CostCategoryReference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CostCategoryReference, context: context)
        Hearth::Validator.validate!(input[:cost_category_arn], ::String, context: "#{context}[:cost_category_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:effective_start], ::String, context: "#{context}[:effective_start]")
        Hearth::Validator.validate!(input[:effective_end], ::String, context: "#{context}[:effective_end]")
        Hearth::Validator.validate!(input[:number_of_rules], ::Integer, context: "#{context}[:number_of_rules]")
        CostCategoryProcessingStatusList.validate!(input[:processing_status], context: "#{context}[:processing_status]") unless input[:processing_status].nil?
        CostCategoryValuesList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
      end
    end

    class CostCategoryReferencesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CostCategoryReference.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CostCategoryRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CostCategoryRule, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Expression.validate!(input[:rule], context: "#{context}[:rule]") unless input[:rule].nil?
        CostCategoryInheritedValueDimension.validate!(input[:inherited_value], context: "#{context}[:inherited_value]") unless input[:inherited_value].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class CostCategoryRulesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CostCategoryRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CostCategorySplitChargeRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CostCategorySplitChargeRule, context: context)
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        CostCategorySplitChargeRuleTargetsList.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:member_method], ::String, context: "#{context}[:member_method]")
        CostCategorySplitChargeRuleParametersList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class CostCategorySplitChargeRuleParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CostCategorySplitChargeRuleParameter, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        CostCategorySplitChargeRuleParameterValuesList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class CostCategorySplitChargeRuleParameterValuesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CostCategorySplitChargeRuleParametersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CostCategorySplitChargeRuleParameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CostCategorySplitChargeRuleTargetsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CostCategorySplitChargeRulesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CostCategorySplitChargeRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CostCategoryValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CostCategoryValues, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Values.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        MatchOptions.validate!(input[:match_options], context: "#{context}[:match_options]") unless input[:match_options].nil?
      end
    end

    class CostCategoryValuesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Coverage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Coverage, context: context)
        CoverageHours.validate!(input[:coverage_hours], context: "#{context}[:coverage_hours]") unless input[:coverage_hours].nil?
        CoverageNormalizedUnits.validate!(input[:coverage_normalized_units], context: "#{context}[:coverage_normalized_units]") unless input[:coverage_normalized_units].nil?
        CoverageCost.validate!(input[:coverage_cost], context: "#{context}[:coverage_cost]") unless input[:coverage_cost].nil?
      end
    end

    class CoverageByTime
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CoverageByTime, context: context)
        DateInterval.validate!(input[:time_period], context: "#{context}[:time_period]") unless input[:time_period].nil?
        ReservationCoverageGroups.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
        Coverage.validate!(input[:total], context: "#{context}[:total]") unless input[:total].nil?
      end
    end

    class CoverageCost
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CoverageCost, context: context)
        Hearth::Validator.validate!(input[:on_demand_cost], ::String, context: "#{context}[:on_demand_cost]")
      end
    end

    class CoverageHours
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CoverageHours, context: context)
        Hearth::Validator.validate!(input[:on_demand_hours], ::String, context: "#{context}[:on_demand_hours]")
        Hearth::Validator.validate!(input[:reserved_hours], ::String, context: "#{context}[:reserved_hours]")
        Hearth::Validator.validate!(input[:total_running_hours], ::String, context: "#{context}[:total_running_hours]")
        Hearth::Validator.validate!(input[:coverage_hours_percentage], ::String, context: "#{context}[:coverage_hours_percentage]")
      end
    end

    class CoverageNormalizedUnits
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CoverageNormalizedUnits, context: context)
        Hearth::Validator.validate!(input[:on_demand_normalized_units], ::String, context: "#{context}[:on_demand_normalized_units]")
        Hearth::Validator.validate!(input[:reserved_normalized_units], ::String, context: "#{context}[:reserved_normalized_units]")
        Hearth::Validator.validate!(input[:total_running_normalized_units], ::String, context: "#{context}[:total_running_normalized_units]")
        Hearth::Validator.validate!(input[:coverage_normalized_units_percentage], ::String, context: "#{context}[:coverage_normalized_units_percentage]")
      end
    end

    class CoveragesByTime
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CoverageByTime.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateAnomalyMonitorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAnomalyMonitorInput, context: context)
        AnomalyMonitor.validate!(input[:anomaly_monitor], context: "#{context}[:anomaly_monitor]") unless input[:anomaly_monitor].nil?
        ResourceTagList.validate!(input[:resource_tags], context: "#{context}[:resource_tags]") unless input[:resource_tags].nil?
      end
    end

    class CreateAnomalyMonitorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAnomalyMonitorOutput, context: context)
        Hearth::Validator.validate!(input[:monitor_arn], ::String, context: "#{context}[:monitor_arn]")
      end
    end

    class CreateAnomalySubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAnomalySubscriptionInput, context: context)
        AnomalySubscription.validate!(input[:anomaly_subscription], context: "#{context}[:anomaly_subscription]") unless input[:anomaly_subscription].nil?
        ResourceTagList.validate!(input[:resource_tags], context: "#{context}[:resource_tags]") unless input[:resource_tags].nil?
      end
    end

    class CreateAnomalySubscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAnomalySubscriptionOutput, context: context)
        Hearth::Validator.validate!(input[:subscription_arn], ::String, context: "#{context}[:subscription_arn]")
      end
    end

    class CreateCostCategoryDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCostCategoryDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:rule_version], ::String, context: "#{context}[:rule_version]")
        CostCategoryRulesList.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
        CostCategorySplitChargeRulesList.validate!(input[:split_charge_rules], context: "#{context}[:split_charge_rules]") unless input[:split_charge_rules].nil?
        ResourceTagList.validate!(input[:resource_tags], context: "#{context}[:resource_tags]") unless input[:resource_tags].nil?
      end
    end

    class CreateCostCategoryDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCostCategoryDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:cost_category_arn], ::String, context: "#{context}[:cost_category_arn]")
        Hearth::Validator.validate!(input[:effective_start], ::String, context: "#{context}[:effective_start]")
      end
    end

    class CurrentInstance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CurrentInstance, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:instance_name], ::String, context: "#{context}[:instance_name]")
        TagValuesList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        ResourceDetails.validate!(input[:resource_details], context: "#{context}[:resource_details]") unless input[:resource_details].nil?
        ResourceUtilization.validate!(input[:resource_utilization], context: "#{context}[:resource_utilization]") unless input[:resource_utilization].nil?
        Hearth::Validator.validate!(input[:reservation_covered_hours_in_lookback_period], ::String, context: "#{context}[:reservation_covered_hours_in_lookback_period]")
        Hearth::Validator.validate!(input[:savings_plans_covered_hours_in_lookback_period], ::String, context: "#{context}[:savings_plans_covered_hours_in_lookback_period]")
        Hearth::Validator.validate!(input[:on_demand_hours_in_lookback_period], ::String, context: "#{context}[:on_demand_hours_in_lookback_period]")
        Hearth::Validator.validate!(input[:total_running_hours_in_lookback_period], ::String, context: "#{context}[:total_running_hours_in_lookback_period]")
        Hearth::Validator.validate!(input[:monthly_cost], ::String, context: "#{context}[:monthly_cost]")
        Hearth::Validator.validate!(input[:currency_code], ::String, context: "#{context}[:currency_code]")
      end
    end

    class DataUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DateInterval
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DateInterval, context: context)
        Hearth::Validator.validate!(input[:start], ::String, context: "#{context}[:start]")
        Hearth::Validator.validate!(input[:end], ::String, context: "#{context}[:end]")
      end
    end

    class DeleteAnomalyMonitorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAnomalyMonitorInput, context: context)
        Hearth::Validator.validate!(input[:monitor_arn], ::String, context: "#{context}[:monitor_arn]")
      end
    end

    class DeleteAnomalyMonitorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAnomalyMonitorOutput, context: context)
      end
    end

    class DeleteAnomalySubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAnomalySubscriptionInput, context: context)
        Hearth::Validator.validate!(input[:subscription_arn], ::String, context: "#{context}[:subscription_arn]")
      end
    end

    class DeleteAnomalySubscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAnomalySubscriptionOutput, context: context)
      end
    end

    class DeleteCostCategoryDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCostCategoryDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:cost_category_arn], ::String, context: "#{context}[:cost_category_arn]")
      end
    end

    class DeleteCostCategoryDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCostCategoryDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:cost_category_arn], ::String, context: "#{context}[:cost_category_arn]")
        Hearth::Validator.validate!(input[:effective_end], ::String, context: "#{context}[:effective_end]")
      end
    end

    class DescribeCostCategoryDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCostCategoryDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:cost_category_arn], ::String, context: "#{context}[:cost_category_arn]")
        Hearth::Validator.validate!(input[:effective_on], ::String, context: "#{context}[:effective_on]")
      end
    end

    class DescribeCostCategoryDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCostCategoryDefinitionOutput, context: context)
        CostCategory.validate!(input[:cost_category], context: "#{context}[:cost_category]") unless input[:cost_category].nil?
      end
    end

    class DimensionValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DimensionValues, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Values.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        MatchOptions.validate!(input[:match_options], context: "#{context}[:match_options]") unless input[:match_options].nil?
      end
    end

    class DimensionValuesWithAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DimensionValuesWithAttributes, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Attributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class DimensionValuesWithAttributesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DimensionValuesWithAttributes.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DiskResourceUtilization
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DiskResourceUtilization, context: context)
        Hearth::Validator.validate!(input[:disk_read_ops_per_second], ::String, context: "#{context}[:disk_read_ops_per_second]")
        Hearth::Validator.validate!(input[:disk_write_ops_per_second], ::String, context: "#{context}[:disk_write_ops_per_second]")
        Hearth::Validator.validate!(input[:disk_read_bytes_per_second], ::String, context: "#{context}[:disk_read_bytes_per_second]")
        Hearth::Validator.validate!(input[:disk_write_bytes_per_second], ::String, context: "#{context}[:disk_write_bytes_per_second]")
      end
    end

    class EBSResourceUtilization
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EBSResourceUtilization, context: context)
        Hearth::Validator.validate!(input[:ebs_read_ops_per_second], ::String, context: "#{context}[:ebs_read_ops_per_second]")
        Hearth::Validator.validate!(input[:ebs_write_ops_per_second], ::String, context: "#{context}[:ebs_write_ops_per_second]")
        Hearth::Validator.validate!(input[:ebs_read_bytes_per_second], ::String, context: "#{context}[:ebs_read_bytes_per_second]")
        Hearth::Validator.validate!(input[:ebs_write_bytes_per_second], ::String, context: "#{context}[:ebs_write_bytes_per_second]")
      end
    end

    class EC2InstanceDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EC2InstanceDetails, context: context)
        Hearth::Validator.validate!(input[:family], ::String, context: "#{context}[:family]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:tenancy], ::String, context: "#{context}[:tenancy]")
        Hearth::Validator.validate!(input[:current_generation], ::TrueClass, ::FalseClass, context: "#{context}[:current_generation]")
        Hearth::Validator.validate!(input[:size_flex_eligible], ::TrueClass, ::FalseClass, context: "#{context}[:size_flex_eligible]")
      end
    end

    class EC2ResourceDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EC2ResourceDetails, context: context)
        Hearth::Validator.validate!(input[:hourly_on_demand_rate], ::String, context: "#{context}[:hourly_on_demand_rate]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:sku], ::String, context: "#{context}[:sku]")
        Hearth::Validator.validate!(input[:memory], ::String, context: "#{context}[:memory]")
        Hearth::Validator.validate!(input[:network_performance], ::String, context: "#{context}[:network_performance]")
        Hearth::Validator.validate!(input[:storage], ::String, context: "#{context}[:storage]")
        Hearth::Validator.validate!(input[:vcpu], ::String, context: "#{context}[:vcpu]")
      end
    end

    class EC2ResourceUtilization
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EC2ResourceUtilization, context: context)
        Hearth::Validator.validate!(input[:max_cpu_utilization_percentage], ::String, context: "#{context}[:max_cpu_utilization_percentage]")
        Hearth::Validator.validate!(input[:max_memory_utilization_percentage], ::String, context: "#{context}[:max_memory_utilization_percentage]")
        Hearth::Validator.validate!(input[:max_storage_utilization_percentage], ::String, context: "#{context}[:max_storage_utilization_percentage]")
        EBSResourceUtilization.validate!(input[:ebs_resource_utilization], context: "#{context}[:ebs_resource_utilization]") unless input[:ebs_resource_utilization].nil?
        DiskResourceUtilization.validate!(input[:disk_resource_utilization], context: "#{context}[:disk_resource_utilization]") unless input[:disk_resource_utilization].nil?
        NetworkResourceUtilization.validate!(input[:network_resource_utilization], context: "#{context}[:network_resource_utilization]") unless input[:network_resource_utilization].nil?
      end
    end

    class EC2Specification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EC2Specification, context: context)
        Hearth::Validator.validate!(input[:offering_class], ::String, context: "#{context}[:offering_class]")
      end
    end

    class ESInstanceDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ESInstanceDetails, context: context)
        Hearth::Validator.validate!(input[:instance_class], ::String, context: "#{context}[:instance_class]")
        Hearth::Validator.validate!(input[:instance_size], ::String, context: "#{context}[:instance_size]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:current_generation], ::TrueClass, ::FalseClass, context: "#{context}[:current_generation]")
        Hearth::Validator.validate!(input[:size_flex_eligible], ::TrueClass, ::FalseClass, context: "#{context}[:size_flex_eligible]")
      end
    end

    class ElastiCacheInstanceDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ElastiCacheInstanceDetails, context: context)
        Hearth::Validator.validate!(input[:family], ::String, context: "#{context}[:family]")
        Hearth::Validator.validate!(input[:node_type], ::String, context: "#{context}[:node_type]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:product_description], ::String, context: "#{context}[:product_description]")
        Hearth::Validator.validate!(input[:current_generation], ::TrueClass, ::FalseClass, context: "#{context}[:current_generation]")
        Hearth::Validator.validate!(input[:size_flex_eligible], ::TrueClass, ::FalseClass, context: "#{context}[:size_flex_eligible]")
      end
    end

    class Expression
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Expression, context: context)
        Expressions.validate!(input[:or], context: "#{context}[:or]") unless input[:or].nil?
        Expressions.validate!(input[:and], context: "#{context}[:and]") unless input[:and].nil?
        Expression.validate!(input[:not], context: "#{context}[:not]") unless input[:not].nil?
        DimensionValues.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
        TagValues.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        CostCategoryValues.validate!(input[:cost_categories], context: "#{context}[:cost_categories]") unless input[:cost_categories].nil?
      end
    end

    class Expressions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Expression.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FindingReasonCodes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ForecastResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForecastResult, context: context)
        DateInterval.validate!(input[:time_period], context: "#{context}[:time_period]") unless input[:time_period].nil?
        Hearth::Validator.validate!(input[:mean_value], ::String, context: "#{context}[:mean_value]")
        Hearth::Validator.validate!(input[:prediction_interval_lower_bound], ::String, context: "#{context}[:prediction_interval_lower_bound]")
        Hearth::Validator.validate!(input[:prediction_interval_upper_bound], ::String, context: "#{context}[:prediction_interval_upper_bound]")
      end
    end

    class ForecastResultsByTime
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ForecastResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetAnomaliesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAnomaliesInput, context: context)
        Hearth::Validator.validate!(input[:monitor_arn], ::String, context: "#{context}[:monitor_arn]")
        AnomalyDateInterval.validate!(input[:date_interval], context: "#{context}[:date_interval]") unless input[:date_interval].nil?
        Hearth::Validator.validate!(input[:feedback], ::String, context: "#{context}[:feedback]")
        TotalImpactFilter.validate!(input[:total_impact], context: "#{context}[:total_impact]") unless input[:total_impact].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetAnomaliesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAnomaliesOutput, context: context)
        Anomalies.validate!(input[:anomalies], context: "#{context}[:anomalies]") unless input[:anomalies].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetAnomalyMonitorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAnomalyMonitorsInput, context: context)
        Values.validate!(input[:monitor_arn_list], context: "#{context}[:monitor_arn_list]") unless input[:monitor_arn_list].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetAnomalyMonitorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAnomalyMonitorsOutput, context: context)
        AnomalyMonitors.validate!(input[:anomaly_monitors], context: "#{context}[:anomaly_monitors]") unless input[:anomaly_monitors].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetAnomalySubscriptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAnomalySubscriptionsInput, context: context)
        Values.validate!(input[:subscription_arn_list], context: "#{context}[:subscription_arn_list]") unless input[:subscription_arn_list].nil?
        Hearth::Validator.validate!(input[:monitor_arn], ::String, context: "#{context}[:monitor_arn]")
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetAnomalySubscriptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAnomalySubscriptionsOutput, context: context)
        AnomalySubscriptions.validate!(input[:anomaly_subscriptions], context: "#{context}[:anomaly_subscriptions]") unless input[:anomaly_subscriptions].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetCostAndUsageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCostAndUsageInput, context: context)
        DateInterval.validate!(input[:time_period], context: "#{context}[:time_period]") unless input[:time_period].nil?
        Hearth::Validator.validate!(input[:granularity], ::String, context: "#{context}[:granularity]")
        Expression.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        MetricNames.validate!(input[:metrics], context: "#{context}[:metrics]") unless input[:metrics].nil?
        GroupDefinitions.validate!(input[:group_by], context: "#{context}[:group_by]") unless input[:group_by].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetCostAndUsageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCostAndUsageOutput, context: context)
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
        GroupDefinitions.validate!(input[:group_definitions], context: "#{context}[:group_definitions]") unless input[:group_definitions].nil?
        ResultsByTime.validate!(input[:results_by_time], context: "#{context}[:results_by_time]") unless input[:results_by_time].nil?
        DimensionValuesWithAttributesList.validate!(input[:dimension_value_attributes], context: "#{context}[:dimension_value_attributes]") unless input[:dimension_value_attributes].nil?
      end
    end

    class GetCostAndUsageWithResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCostAndUsageWithResourcesInput, context: context)
        DateInterval.validate!(input[:time_period], context: "#{context}[:time_period]") unless input[:time_period].nil?
        Hearth::Validator.validate!(input[:granularity], ::String, context: "#{context}[:granularity]")
        Expression.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        MetricNames.validate!(input[:metrics], context: "#{context}[:metrics]") unless input[:metrics].nil?
        GroupDefinitions.validate!(input[:group_by], context: "#{context}[:group_by]") unless input[:group_by].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetCostAndUsageWithResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCostAndUsageWithResourcesOutput, context: context)
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
        GroupDefinitions.validate!(input[:group_definitions], context: "#{context}[:group_definitions]") unless input[:group_definitions].nil?
        ResultsByTime.validate!(input[:results_by_time], context: "#{context}[:results_by_time]") unless input[:results_by_time].nil?
        DimensionValuesWithAttributesList.validate!(input[:dimension_value_attributes], context: "#{context}[:dimension_value_attributes]") unless input[:dimension_value_attributes].nil?
      end
    end

    class GetCostCategoriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCostCategoriesInput, context: context)
        Hearth::Validator.validate!(input[:search_string], ::String, context: "#{context}[:search_string]")
        DateInterval.validate!(input[:time_period], context: "#{context}[:time_period]") unless input[:time_period].nil?
        Hearth::Validator.validate!(input[:cost_category_name], ::String, context: "#{context}[:cost_category_name]")
        Expression.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        SortDefinitions.validate!(input[:sort_by], context: "#{context}[:sort_by]") unless input[:sort_by].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetCostCategoriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCostCategoriesOutput, context: context)
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
        CostCategoryNamesList.validate!(input[:cost_category_names], context: "#{context}[:cost_category_names]") unless input[:cost_category_names].nil?
        CostCategoryValuesList.validate!(input[:cost_category_values], context: "#{context}[:cost_category_values]") unless input[:cost_category_values].nil?
        Hearth::Validator.validate!(input[:return_size], ::Integer, context: "#{context}[:return_size]")
        Hearth::Validator.validate!(input[:total_size], ::Integer, context: "#{context}[:total_size]")
      end
    end

    class GetCostForecastInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCostForecastInput, context: context)
        DateInterval.validate!(input[:time_period], context: "#{context}[:time_period]") unless input[:time_period].nil?
        Hearth::Validator.validate!(input[:metric], ::String, context: "#{context}[:metric]")
        Hearth::Validator.validate!(input[:granularity], ::String, context: "#{context}[:granularity]")
        Expression.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:prediction_interval_level], ::Integer, context: "#{context}[:prediction_interval_level]")
      end
    end

    class GetCostForecastOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCostForecastOutput, context: context)
        MetricValue.validate!(input[:total], context: "#{context}[:total]") unless input[:total].nil?
        ForecastResultsByTime.validate!(input[:forecast_results_by_time], context: "#{context}[:forecast_results_by_time]") unless input[:forecast_results_by_time].nil?
      end
    end

    class GetDimensionValuesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDimensionValuesInput, context: context)
        Hearth::Validator.validate!(input[:search_string], ::String, context: "#{context}[:search_string]")
        DateInterval.validate!(input[:time_period], context: "#{context}[:time_period]") unless input[:time_period].nil?
        Hearth::Validator.validate!(input[:dimension], ::String, context: "#{context}[:dimension]")
        Hearth::Validator.validate!(input[:context], ::String, context: "#{context}[:context]")
        Expression.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        SortDefinitions.validate!(input[:sort_by], context: "#{context}[:sort_by]") unless input[:sort_by].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetDimensionValuesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDimensionValuesOutput, context: context)
        DimensionValuesWithAttributesList.validate!(input[:dimension_values], context: "#{context}[:dimension_values]") unless input[:dimension_values].nil?
        Hearth::Validator.validate!(input[:return_size], ::Integer, context: "#{context}[:return_size]")
        Hearth::Validator.validate!(input[:total_size], ::Integer, context: "#{context}[:total_size]")
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetReservationCoverageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetReservationCoverageInput, context: context)
        DateInterval.validate!(input[:time_period], context: "#{context}[:time_period]") unless input[:time_period].nil?
        GroupDefinitions.validate!(input[:group_by], context: "#{context}[:group_by]") unless input[:group_by].nil?
        Hearth::Validator.validate!(input[:granularity], ::String, context: "#{context}[:granularity]")
        Expression.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        MetricNames.validate!(input[:metrics], context: "#{context}[:metrics]") unless input[:metrics].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
        SortDefinition.validate!(input[:sort_by], context: "#{context}[:sort_by]") unless input[:sort_by].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetReservationCoverageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetReservationCoverageOutput, context: context)
        CoveragesByTime.validate!(input[:coverages_by_time], context: "#{context}[:coverages_by_time]") unless input[:coverages_by_time].nil?
        Coverage.validate!(input[:total], context: "#{context}[:total]") unless input[:total].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetReservationPurchaseRecommendationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetReservationPurchaseRecommendationInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:service], ::String, context: "#{context}[:service]")
        Expression.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:account_scope], ::String, context: "#{context}[:account_scope]")
        Hearth::Validator.validate!(input[:lookback_period_in_days], ::String, context: "#{context}[:lookback_period_in_days]")
        Hearth::Validator.validate!(input[:term_in_years], ::String, context: "#{context}[:term_in_years]")
        Hearth::Validator.validate!(input[:payment_option], ::String, context: "#{context}[:payment_option]")
        ServiceSpecification.validate!(input[:service_specification], context: "#{context}[:service_specification]") unless input[:service_specification].nil?
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetReservationPurchaseRecommendationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetReservationPurchaseRecommendationOutput, context: context)
        ReservationPurchaseRecommendationMetadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        ReservationPurchaseRecommendations.validate!(input[:recommendations], context: "#{context}[:recommendations]") unless input[:recommendations].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetReservationUtilizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetReservationUtilizationInput, context: context)
        DateInterval.validate!(input[:time_period], context: "#{context}[:time_period]") unless input[:time_period].nil?
        GroupDefinitions.validate!(input[:group_by], context: "#{context}[:group_by]") unless input[:group_by].nil?
        Hearth::Validator.validate!(input[:granularity], ::String, context: "#{context}[:granularity]")
        Expression.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        SortDefinition.validate!(input[:sort_by], context: "#{context}[:sort_by]") unless input[:sort_by].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetReservationUtilizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetReservationUtilizationOutput, context: context)
        UtilizationsByTime.validate!(input[:utilizations_by_time], context: "#{context}[:utilizations_by_time]") unless input[:utilizations_by_time].nil?
        ReservationAggregates.validate!(input[:total], context: "#{context}[:total]") unless input[:total].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetRightsizingRecommendationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRightsizingRecommendationInput, context: context)
        Expression.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        RightsizingRecommendationConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        Hearth::Validator.validate!(input[:service], ::String, context: "#{context}[:service]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetRightsizingRecommendationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRightsizingRecommendationOutput, context: context)
        RightsizingRecommendationMetadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        RightsizingRecommendationSummary.validate!(input[:summary], context: "#{context}[:summary]") unless input[:summary].nil?
        RightsizingRecommendationList.validate!(input[:rightsizing_recommendations], context: "#{context}[:rightsizing_recommendations]") unless input[:rightsizing_recommendations].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
        RightsizingRecommendationConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
      end
    end

    class GetSavingsPlansCoverageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSavingsPlansCoverageInput, context: context)
        DateInterval.validate!(input[:time_period], context: "#{context}[:time_period]") unless input[:time_period].nil?
        GroupDefinitions.validate!(input[:group_by], context: "#{context}[:group_by]") unless input[:group_by].nil?
        Hearth::Validator.validate!(input[:granularity], ::String, context: "#{context}[:granularity]")
        Expression.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        MetricNames.validate!(input[:metrics], context: "#{context}[:metrics]") unless input[:metrics].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        SortDefinition.validate!(input[:sort_by], context: "#{context}[:sort_by]") unless input[:sort_by].nil?
      end
    end

    class GetSavingsPlansCoverageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSavingsPlansCoverageOutput, context: context)
        SavingsPlansCoverages.validate!(input[:savings_plans_coverages], context: "#{context}[:savings_plans_coverages]") unless input[:savings_plans_coverages].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetSavingsPlansPurchaseRecommendationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSavingsPlansPurchaseRecommendationInput, context: context)
        Hearth::Validator.validate!(input[:savings_plans_type], ::String, context: "#{context}[:savings_plans_type]")
        Hearth::Validator.validate!(input[:term_in_years], ::String, context: "#{context}[:term_in_years]")
        Hearth::Validator.validate!(input[:payment_option], ::String, context: "#{context}[:payment_option]")
        Hearth::Validator.validate!(input[:account_scope], ::String, context: "#{context}[:account_scope]")
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:lookback_period_in_days], ::String, context: "#{context}[:lookback_period_in_days]")
        Expression.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
      end
    end

    class GetSavingsPlansPurchaseRecommendationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSavingsPlansPurchaseRecommendationOutput, context: context)
        SavingsPlansPurchaseRecommendationMetadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        SavingsPlansPurchaseRecommendation.validate!(input[:savings_plans_purchase_recommendation], context: "#{context}[:savings_plans_purchase_recommendation]") unless input[:savings_plans_purchase_recommendation].nil?
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetSavingsPlansUtilizationDetailsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSavingsPlansUtilizationDetailsInput, context: context)
        DateInterval.validate!(input[:time_period], context: "#{context}[:time_period]") unless input[:time_period].nil?
        Expression.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        SavingsPlansDataTypes.validate!(input[:data_type], context: "#{context}[:data_type]") unless input[:data_type].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        SortDefinition.validate!(input[:sort_by], context: "#{context}[:sort_by]") unless input[:sort_by].nil?
      end
    end

    class GetSavingsPlansUtilizationDetailsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSavingsPlansUtilizationDetailsOutput, context: context)
        SavingsPlansUtilizationDetails.validate!(input[:savings_plans_utilization_details], context: "#{context}[:savings_plans_utilization_details]") unless input[:savings_plans_utilization_details].nil?
        SavingsPlansUtilizationAggregates.validate!(input[:total], context: "#{context}[:total]") unless input[:total].nil?
        DateInterval.validate!(input[:time_period], context: "#{context}[:time_period]") unless input[:time_period].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetSavingsPlansUtilizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSavingsPlansUtilizationInput, context: context)
        DateInterval.validate!(input[:time_period], context: "#{context}[:time_period]") unless input[:time_period].nil?
        Hearth::Validator.validate!(input[:granularity], ::String, context: "#{context}[:granularity]")
        Expression.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        SortDefinition.validate!(input[:sort_by], context: "#{context}[:sort_by]") unless input[:sort_by].nil?
      end
    end

    class GetSavingsPlansUtilizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSavingsPlansUtilizationOutput, context: context)
        SavingsPlansUtilizationsByTime.validate!(input[:savings_plans_utilizations_by_time], context: "#{context}[:savings_plans_utilizations_by_time]") unless input[:savings_plans_utilizations_by_time].nil?
        SavingsPlansUtilizationAggregates.validate!(input[:total], context: "#{context}[:total]") unless input[:total].nil?
      end
    end

    class GetTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTagsInput, context: context)
        Hearth::Validator.validate!(input[:search_string], ::String, context: "#{context}[:search_string]")
        DateInterval.validate!(input[:time_period], context: "#{context}[:time_period]") unless input[:time_period].nil?
        Hearth::Validator.validate!(input[:tag_key], ::String, context: "#{context}[:tag_key]")
        Expression.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        SortDefinitions.validate!(input[:sort_by], context: "#{context}[:sort_by]") unless input[:sort_by].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
      end
    end

    class GetTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTagsOutput, context: context)
        Hearth::Validator.validate!(input[:next_page_token], ::String, context: "#{context}[:next_page_token]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:return_size], ::Integer, context: "#{context}[:return_size]")
        Hearth::Validator.validate!(input[:total_size], ::Integer, context: "#{context}[:total_size]")
      end
    end

    class GetUsageForecastInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUsageForecastInput, context: context)
        DateInterval.validate!(input[:time_period], context: "#{context}[:time_period]") unless input[:time_period].nil?
        Hearth::Validator.validate!(input[:metric], ::String, context: "#{context}[:metric]")
        Hearth::Validator.validate!(input[:granularity], ::String, context: "#{context}[:granularity]")
        Expression.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:prediction_interval_level], ::Integer, context: "#{context}[:prediction_interval_level]")
      end
    end

    class GetUsageForecastOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUsageForecastOutput, context: context)
        MetricValue.validate!(input[:total], context: "#{context}[:total]") unless input[:total].nil?
        ForecastResultsByTime.validate!(input[:forecast_results_by_time], context: "#{context}[:forecast_results_by_time]") unless input[:forecast_results_by_time].nil?
      end
    end

    class Group
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Group, context: context)
        Keys.validate!(input[:keys], context: "#{context}[:keys]") unless input[:keys].nil?
        Metrics.validate!(input[:metrics], context: "#{context}[:metrics]") unless input[:metrics].nil?
      end
    end

    class GroupDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GroupDefinition, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
      end
    end

    class GroupDefinitions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GroupDefinition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Groups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Group.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Impact
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Impact, context: context)
        Hearth::Validator.validate!(input[:max_impact], ::Float, context: "#{context}[:max_impact]")
        Hearth::Validator.validate!(input[:total_impact], ::Float, context: "#{context}[:total_impact]")
      end
    end

    class InstanceDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceDetails, context: context)
        EC2InstanceDetails.validate!(input[:ec2_instance_details], context: "#{context}[:ec2_instance_details]") unless input[:ec2_instance_details].nil?
        RDSInstanceDetails.validate!(input[:rds_instance_details], context: "#{context}[:rds_instance_details]") unless input[:rds_instance_details].nil?
        RedshiftInstanceDetails.validate!(input[:redshift_instance_details], context: "#{context}[:redshift_instance_details]") unless input[:redshift_instance_details].nil?
        ElastiCacheInstanceDetails.validate!(input[:elasti_cache_instance_details], context: "#{context}[:elasti_cache_instance_details]") unless input[:elasti_cache_instance_details].nil?
        ESInstanceDetails.validate!(input[:es_instance_details], context: "#{context}[:es_instance_details]") unless input[:es_instance_details].nil?
      end
    end

    class InvalidNextTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidNextTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Keys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListCostAllocationTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCostAllocationTagsInput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        CostAllocationTagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListCostAllocationTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCostAllocationTagsOutput, context: context)
        CostAllocationTagList.validate!(input[:cost_allocation_tags], context: "#{context}[:cost_allocation_tags]") unless input[:cost_allocation_tags].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCostCategoryDefinitionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCostCategoryDefinitionsInput, context: context)
        Hearth::Validator.validate!(input[:effective_on], ::String, context: "#{context}[:effective_on]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListCostCategoryDefinitionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCostCategoryDefinitionsOutput, context: context)
        CostCategoryReferencesList.validate!(input[:cost_category_references], context: "#{context}[:cost_category_references]") unless input[:cost_category_references].nil?
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
        ResourceTagList.validate!(input[:resource_tags], context: "#{context}[:resource_tags]") unless input[:resource_tags].nil?
      end
    end

    class MatchOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MetricNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MetricValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricValue, context: context)
        Hearth::Validator.validate!(input[:amount], ::String, context: "#{context}[:amount]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
      end
    end

    class Metrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          MetricValue.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ModifyRecommendationDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyRecommendationDetail, context: context)
        TargetInstancesList.validate!(input[:target_instances], context: "#{context}[:target_instances]") unless input[:target_instances].nil?
      end
    end

    class MonitorArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class NetworkResourceUtilization
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkResourceUtilization, context: context)
        Hearth::Validator.validate!(input[:network_in_bytes_per_second], ::String, context: "#{context}[:network_in_bytes_per_second]")
        Hearth::Validator.validate!(input[:network_out_bytes_per_second], ::String, context: "#{context}[:network_out_bytes_per_second]")
        Hearth::Validator.validate!(input[:network_packets_in_per_second], ::String, context: "#{context}[:network_packets_in_per_second]")
        Hearth::Validator.validate!(input[:network_packets_out_per_second], ::String, context: "#{context}[:network_packets_out_per_second]")
      end
    end

    class PlatformDifferences
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProvideAnomalyFeedbackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvideAnomalyFeedbackInput, context: context)
        Hearth::Validator.validate!(input[:anomaly_id], ::String, context: "#{context}[:anomaly_id]")
        Hearth::Validator.validate!(input[:feedback], ::String, context: "#{context}[:feedback]")
      end
    end

    class ProvideAnomalyFeedbackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvideAnomalyFeedbackOutput, context: context)
        Hearth::Validator.validate!(input[:anomaly_id], ::String, context: "#{context}[:anomaly_id]")
      end
    end

    class RDSInstanceDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RDSInstanceDetails, context: context)
        Hearth::Validator.validate!(input[:family], ::String, context: "#{context}[:family]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:database_engine], ::String, context: "#{context}[:database_engine]")
        Hearth::Validator.validate!(input[:database_edition], ::String, context: "#{context}[:database_edition]")
        Hearth::Validator.validate!(input[:deployment_option], ::String, context: "#{context}[:deployment_option]")
        Hearth::Validator.validate!(input[:license_model], ::String, context: "#{context}[:license_model]")
        Hearth::Validator.validate!(input[:current_generation], ::TrueClass, ::FalseClass, context: "#{context}[:current_generation]")
        Hearth::Validator.validate!(input[:size_flex_eligible], ::TrueClass, ::FalseClass, context: "#{context}[:size_flex_eligible]")
      end
    end

    class RedshiftInstanceDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RedshiftInstanceDetails, context: context)
        Hearth::Validator.validate!(input[:family], ::String, context: "#{context}[:family]")
        Hearth::Validator.validate!(input[:node_type], ::String, context: "#{context}[:node_type]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:current_generation], ::TrueClass, ::FalseClass, context: "#{context}[:current_generation]")
        Hearth::Validator.validate!(input[:size_flex_eligible], ::TrueClass, ::FalseClass, context: "#{context}[:size_flex_eligible]")
      end
    end

    class RequestChangedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestChangedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ReservationAggregates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservationAggregates, context: context)
        Hearth::Validator.validate!(input[:utilization_percentage], ::String, context: "#{context}[:utilization_percentage]")
        Hearth::Validator.validate!(input[:utilization_percentage_in_units], ::String, context: "#{context}[:utilization_percentage_in_units]")
        Hearth::Validator.validate!(input[:purchased_hours], ::String, context: "#{context}[:purchased_hours]")
        Hearth::Validator.validate!(input[:purchased_units], ::String, context: "#{context}[:purchased_units]")
        Hearth::Validator.validate!(input[:total_actual_hours], ::String, context: "#{context}[:total_actual_hours]")
        Hearth::Validator.validate!(input[:total_actual_units], ::String, context: "#{context}[:total_actual_units]")
        Hearth::Validator.validate!(input[:unused_hours], ::String, context: "#{context}[:unused_hours]")
        Hearth::Validator.validate!(input[:unused_units], ::String, context: "#{context}[:unused_units]")
        Hearth::Validator.validate!(input[:on_demand_cost_of_ri_hours_used], ::String, context: "#{context}[:on_demand_cost_of_ri_hours_used]")
        Hearth::Validator.validate!(input[:net_ri_savings], ::String, context: "#{context}[:net_ri_savings]")
        Hearth::Validator.validate!(input[:total_potential_ri_savings], ::String, context: "#{context}[:total_potential_ri_savings]")
        Hearth::Validator.validate!(input[:amortized_upfront_fee], ::String, context: "#{context}[:amortized_upfront_fee]")
        Hearth::Validator.validate!(input[:amortized_recurring_fee], ::String, context: "#{context}[:amortized_recurring_fee]")
        Hearth::Validator.validate!(input[:total_amortized_fee], ::String, context: "#{context}[:total_amortized_fee]")
        Hearth::Validator.validate!(input[:ri_cost_for_unused_hours], ::String, context: "#{context}[:ri_cost_for_unused_hours]")
        Hearth::Validator.validate!(input[:realized_savings], ::String, context: "#{context}[:realized_savings]")
        Hearth::Validator.validate!(input[:unrealized_savings], ::String, context: "#{context}[:unrealized_savings]")
      end
    end

    class ReservationCoverageGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservationCoverageGroup, context: context)
        Attributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Coverage.validate!(input[:coverage], context: "#{context}[:coverage]") unless input[:coverage].nil?
      end
    end

    class ReservationCoverageGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReservationCoverageGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReservationPurchaseRecommendation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservationPurchaseRecommendation, context: context)
        Hearth::Validator.validate!(input[:account_scope], ::String, context: "#{context}[:account_scope]")
        Hearth::Validator.validate!(input[:lookback_period_in_days], ::String, context: "#{context}[:lookback_period_in_days]")
        Hearth::Validator.validate!(input[:term_in_years], ::String, context: "#{context}[:term_in_years]")
        Hearth::Validator.validate!(input[:payment_option], ::String, context: "#{context}[:payment_option]")
        ServiceSpecification.validate!(input[:service_specification], context: "#{context}[:service_specification]") unless input[:service_specification].nil?
        ReservationPurchaseRecommendationDetails.validate!(input[:recommendation_details], context: "#{context}[:recommendation_details]") unless input[:recommendation_details].nil?
        ReservationPurchaseRecommendationSummary.validate!(input[:recommendation_summary], context: "#{context}[:recommendation_summary]") unless input[:recommendation_summary].nil?
      end
    end

    class ReservationPurchaseRecommendationDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservationPurchaseRecommendationDetail, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        InstanceDetails.validate!(input[:instance_details], context: "#{context}[:instance_details]") unless input[:instance_details].nil?
        Hearth::Validator.validate!(input[:recommended_number_of_instances_to_purchase], ::String, context: "#{context}[:recommended_number_of_instances_to_purchase]")
        Hearth::Validator.validate!(input[:recommended_normalized_units_to_purchase], ::String, context: "#{context}[:recommended_normalized_units_to_purchase]")
        Hearth::Validator.validate!(input[:minimum_number_of_instances_used_per_hour], ::String, context: "#{context}[:minimum_number_of_instances_used_per_hour]")
        Hearth::Validator.validate!(input[:minimum_normalized_units_used_per_hour], ::String, context: "#{context}[:minimum_normalized_units_used_per_hour]")
        Hearth::Validator.validate!(input[:maximum_number_of_instances_used_per_hour], ::String, context: "#{context}[:maximum_number_of_instances_used_per_hour]")
        Hearth::Validator.validate!(input[:maximum_normalized_units_used_per_hour], ::String, context: "#{context}[:maximum_normalized_units_used_per_hour]")
        Hearth::Validator.validate!(input[:average_number_of_instances_used_per_hour], ::String, context: "#{context}[:average_number_of_instances_used_per_hour]")
        Hearth::Validator.validate!(input[:average_normalized_units_used_per_hour], ::String, context: "#{context}[:average_normalized_units_used_per_hour]")
        Hearth::Validator.validate!(input[:average_utilization], ::String, context: "#{context}[:average_utilization]")
        Hearth::Validator.validate!(input[:estimated_break_even_in_months], ::String, context: "#{context}[:estimated_break_even_in_months]")
        Hearth::Validator.validate!(input[:currency_code], ::String, context: "#{context}[:currency_code]")
        Hearth::Validator.validate!(input[:estimated_monthly_savings_amount], ::String, context: "#{context}[:estimated_monthly_savings_amount]")
        Hearth::Validator.validate!(input[:estimated_monthly_savings_percentage], ::String, context: "#{context}[:estimated_monthly_savings_percentage]")
        Hearth::Validator.validate!(input[:estimated_monthly_on_demand_cost], ::String, context: "#{context}[:estimated_monthly_on_demand_cost]")
        Hearth::Validator.validate!(input[:estimated_reservation_cost_for_lookback_period], ::String, context: "#{context}[:estimated_reservation_cost_for_lookback_period]")
        Hearth::Validator.validate!(input[:upfront_cost], ::String, context: "#{context}[:upfront_cost]")
        Hearth::Validator.validate!(input[:recurring_standard_monthly_cost], ::String, context: "#{context}[:recurring_standard_monthly_cost]")
      end
    end

    class ReservationPurchaseRecommendationDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReservationPurchaseRecommendationDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReservationPurchaseRecommendationMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservationPurchaseRecommendationMetadata, context: context)
        Hearth::Validator.validate!(input[:recommendation_id], ::String, context: "#{context}[:recommendation_id]")
        Hearth::Validator.validate!(input[:generation_timestamp], ::String, context: "#{context}[:generation_timestamp]")
      end
    end

    class ReservationPurchaseRecommendationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservationPurchaseRecommendationSummary, context: context)
        Hearth::Validator.validate!(input[:total_estimated_monthly_savings_amount], ::String, context: "#{context}[:total_estimated_monthly_savings_amount]")
        Hearth::Validator.validate!(input[:total_estimated_monthly_savings_percentage], ::String, context: "#{context}[:total_estimated_monthly_savings_percentage]")
        Hearth::Validator.validate!(input[:currency_code], ::String, context: "#{context}[:currency_code]")
      end
    end

    class ReservationPurchaseRecommendations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReservationPurchaseRecommendation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReservationUtilizationGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReservationUtilizationGroup, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Attributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        ReservationAggregates.validate!(input[:utilization], context: "#{context}[:utilization]") unless input[:utilization].nil?
      end
    end

    class ReservationUtilizationGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReservationUtilizationGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceDetails, context: context)
        EC2ResourceDetails.validate!(input[:ec2_resource_details], context: "#{context}[:ec2_resource_details]") unless input[:ec2_resource_details].nil?
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class ResourceTag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceTag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ResourceTagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceTagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResourceTag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceUtilization
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceUtilization, context: context)
        EC2ResourceUtilization.validate!(input[:ec2_resource_utilization], context: "#{context}[:ec2_resource_utilization]") unless input[:ec2_resource_utilization].nil?
      end
    end

    class ResultByTime
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResultByTime, context: context)
        DateInterval.validate!(input[:time_period], context: "#{context}[:time_period]") unless input[:time_period].nil?
        Metrics.validate!(input[:total], context: "#{context}[:total]") unless input[:total].nil?
        Groups.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
        Hearth::Validator.validate!(input[:estimated], ::TrueClass, ::FalseClass, context: "#{context}[:estimated]")
      end
    end

    class ResultsByTime
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResultByTime.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RightsizingRecommendation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RightsizingRecommendation, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        CurrentInstance.validate!(input[:current_instance], context: "#{context}[:current_instance]") unless input[:current_instance].nil?
        Hearth::Validator.validate!(input[:rightsizing_type], ::String, context: "#{context}[:rightsizing_type]")
        ModifyRecommendationDetail.validate!(input[:modify_recommendation_detail], context: "#{context}[:modify_recommendation_detail]") unless input[:modify_recommendation_detail].nil?
        TerminateRecommendationDetail.validate!(input[:terminate_recommendation_detail], context: "#{context}[:terminate_recommendation_detail]") unless input[:terminate_recommendation_detail].nil?
        FindingReasonCodes.validate!(input[:finding_reason_codes], context: "#{context}[:finding_reason_codes]") unless input[:finding_reason_codes].nil?
      end
    end

    class RightsizingRecommendationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RightsizingRecommendationConfiguration, context: context)
        Hearth::Validator.validate!(input[:recommendation_target], ::String, context: "#{context}[:recommendation_target]")
        Hearth::Validator.validate!(input[:benefits_considered], ::TrueClass, ::FalseClass, context: "#{context}[:benefits_considered]")
      end
    end

    class RightsizingRecommendationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RightsizingRecommendation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RightsizingRecommendationMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RightsizingRecommendationMetadata, context: context)
        Hearth::Validator.validate!(input[:recommendation_id], ::String, context: "#{context}[:recommendation_id]")
        Hearth::Validator.validate!(input[:generation_timestamp], ::String, context: "#{context}[:generation_timestamp]")
        Hearth::Validator.validate!(input[:lookback_period_in_days], ::String, context: "#{context}[:lookback_period_in_days]")
        Hearth::Validator.validate!(input[:additional_metadata], ::String, context: "#{context}[:additional_metadata]")
      end
    end

    class RightsizingRecommendationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RightsizingRecommendationSummary, context: context)
        Hearth::Validator.validate!(input[:total_recommendation_count], ::String, context: "#{context}[:total_recommendation_count]")
        Hearth::Validator.validate!(input[:estimated_total_monthly_savings_amount], ::String, context: "#{context}[:estimated_total_monthly_savings_amount]")
        Hearth::Validator.validate!(input[:savings_currency_code], ::String, context: "#{context}[:savings_currency_code]")
        Hearth::Validator.validate!(input[:savings_percentage], ::String, context: "#{context}[:savings_percentage]")
      end
    end

    class RootCause
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RootCause, context: context)
        Hearth::Validator.validate!(input[:service], ::String, context: "#{context}[:service]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:linked_account], ::String, context: "#{context}[:linked_account]")
        Hearth::Validator.validate!(input[:usage_type], ::String, context: "#{context}[:usage_type]")
      end
    end

    class RootCauses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RootCause.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SavingsPlansAmortizedCommitment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SavingsPlansAmortizedCommitment, context: context)
        Hearth::Validator.validate!(input[:amortized_recurring_commitment], ::String, context: "#{context}[:amortized_recurring_commitment]")
        Hearth::Validator.validate!(input[:amortized_upfront_commitment], ::String, context: "#{context}[:amortized_upfront_commitment]")
        Hearth::Validator.validate!(input[:total_amortized_commitment], ::String, context: "#{context}[:total_amortized_commitment]")
      end
    end

    class SavingsPlansCoverage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SavingsPlansCoverage, context: context)
        Attributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        SavingsPlansCoverageData.validate!(input[:coverage], context: "#{context}[:coverage]") unless input[:coverage].nil?
        DateInterval.validate!(input[:time_period], context: "#{context}[:time_period]") unless input[:time_period].nil?
      end
    end

    class SavingsPlansCoverageData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SavingsPlansCoverageData, context: context)
        Hearth::Validator.validate!(input[:spend_covered_by_savings_plans], ::String, context: "#{context}[:spend_covered_by_savings_plans]")
        Hearth::Validator.validate!(input[:on_demand_cost], ::String, context: "#{context}[:on_demand_cost]")
        Hearth::Validator.validate!(input[:total_cost], ::String, context: "#{context}[:total_cost]")
        Hearth::Validator.validate!(input[:coverage_percentage], ::String, context: "#{context}[:coverage_percentage]")
      end
    end

    class SavingsPlansCoverages
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SavingsPlansCoverage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SavingsPlansDataTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SavingsPlansDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SavingsPlansDetails, context: context)
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:instance_family], ::String, context: "#{context}[:instance_family]")
        Hearth::Validator.validate!(input[:offering_id], ::String, context: "#{context}[:offering_id]")
      end
    end

    class SavingsPlansPurchaseRecommendation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SavingsPlansPurchaseRecommendation, context: context)
        Hearth::Validator.validate!(input[:account_scope], ::String, context: "#{context}[:account_scope]")
        Hearth::Validator.validate!(input[:savings_plans_type], ::String, context: "#{context}[:savings_plans_type]")
        Hearth::Validator.validate!(input[:term_in_years], ::String, context: "#{context}[:term_in_years]")
        Hearth::Validator.validate!(input[:payment_option], ::String, context: "#{context}[:payment_option]")
        Hearth::Validator.validate!(input[:lookback_period_in_days], ::String, context: "#{context}[:lookback_period_in_days]")
        SavingsPlansPurchaseRecommendationDetailList.validate!(input[:savings_plans_purchase_recommendation_details], context: "#{context}[:savings_plans_purchase_recommendation_details]") unless input[:savings_plans_purchase_recommendation_details].nil?
        SavingsPlansPurchaseRecommendationSummary.validate!(input[:savings_plans_purchase_recommendation_summary], context: "#{context}[:savings_plans_purchase_recommendation_summary]") unless input[:savings_plans_purchase_recommendation_summary].nil?
      end
    end

    class SavingsPlansPurchaseRecommendationDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SavingsPlansPurchaseRecommendationDetail, context: context)
        SavingsPlansDetails.validate!(input[:savings_plans_details], context: "#{context}[:savings_plans_details]") unless input[:savings_plans_details].nil?
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:upfront_cost], ::String, context: "#{context}[:upfront_cost]")
        Hearth::Validator.validate!(input[:estimated_roi], ::String, context: "#{context}[:estimated_roi]")
        Hearth::Validator.validate!(input[:currency_code], ::String, context: "#{context}[:currency_code]")
        Hearth::Validator.validate!(input[:estimated_sp_cost], ::String, context: "#{context}[:estimated_sp_cost]")
        Hearth::Validator.validate!(input[:estimated_on_demand_cost], ::String, context: "#{context}[:estimated_on_demand_cost]")
        Hearth::Validator.validate!(input[:estimated_on_demand_cost_with_current_commitment], ::String, context: "#{context}[:estimated_on_demand_cost_with_current_commitment]")
        Hearth::Validator.validate!(input[:estimated_savings_amount], ::String, context: "#{context}[:estimated_savings_amount]")
        Hearth::Validator.validate!(input[:estimated_savings_percentage], ::String, context: "#{context}[:estimated_savings_percentage]")
        Hearth::Validator.validate!(input[:hourly_commitment_to_purchase], ::String, context: "#{context}[:hourly_commitment_to_purchase]")
        Hearth::Validator.validate!(input[:estimated_average_utilization], ::String, context: "#{context}[:estimated_average_utilization]")
        Hearth::Validator.validate!(input[:estimated_monthly_savings_amount], ::String, context: "#{context}[:estimated_monthly_savings_amount]")
        Hearth::Validator.validate!(input[:current_minimum_hourly_on_demand_spend], ::String, context: "#{context}[:current_minimum_hourly_on_demand_spend]")
        Hearth::Validator.validate!(input[:current_maximum_hourly_on_demand_spend], ::String, context: "#{context}[:current_maximum_hourly_on_demand_spend]")
        Hearth::Validator.validate!(input[:current_average_hourly_on_demand_spend], ::String, context: "#{context}[:current_average_hourly_on_demand_spend]")
      end
    end

    class SavingsPlansPurchaseRecommendationDetailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SavingsPlansPurchaseRecommendationDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SavingsPlansPurchaseRecommendationMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SavingsPlansPurchaseRecommendationMetadata, context: context)
        Hearth::Validator.validate!(input[:recommendation_id], ::String, context: "#{context}[:recommendation_id]")
        Hearth::Validator.validate!(input[:generation_timestamp], ::String, context: "#{context}[:generation_timestamp]")
        Hearth::Validator.validate!(input[:additional_metadata], ::String, context: "#{context}[:additional_metadata]")
      end
    end

    class SavingsPlansPurchaseRecommendationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SavingsPlansPurchaseRecommendationSummary, context: context)
        Hearth::Validator.validate!(input[:estimated_roi], ::String, context: "#{context}[:estimated_roi]")
        Hearth::Validator.validate!(input[:currency_code], ::String, context: "#{context}[:currency_code]")
        Hearth::Validator.validate!(input[:estimated_total_cost], ::String, context: "#{context}[:estimated_total_cost]")
        Hearth::Validator.validate!(input[:current_on_demand_spend], ::String, context: "#{context}[:current_on_demand_spend]")
        Hearth::Validator.validate!(input[:estimated_savings_amount], ::String, context: "#{context}[:estimated_savings_amount]")
        Hearth::Validator.validate!(input[:total_recommendation_count], ::String, context: "#{context}[:total_recommendation_count]")
        Hearth::Validator.validate!(input[:daily_commitment_to_purchase], ::String, context: "#{context}[:daily_commitment_to_purchase]")
        Hearth::Validator.validate!(input[:hourly_commitment_to_purchase], ::String, context: "#{context}[:hourly_commitment_to_purchase]")
        Hearth::Validator.validate!(input[:estimated_savings_percentage], ::String, context: "#{context}[:estimated_savings_percentage]")
        Hearth::Validator.validate!(input[:estimated_monthly_savings_amount], ::String, context: "#{context}[:estimated_monthly_savings_amount]")
        Hearth::Validator.validate!(input[:estimated_on_demand_cost_with_current_commitment], ::String, context: "#{context}[:estimated_on_demand_cost_with_current_commitment]")
      end
    end

    class SavingsPlansSavings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SavingsPlansSavings, context: context)
        Hearth::Validator.validate!(input[:net_savings], ::String, context: "#{context}[:net_savings]")
        Hearth::Validator.validate!(input[:on_demand_cost_equivalent], ::String, context: "#{context}[:on_demand_cost_equivalent]")
      end
    end

    class SavingsPlansUtilization
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SavingsPlansUtilization, context: context)
        Hearth::Validator.validate!(input[:total_commitment], ::String, context: "#{context}[:total_commitment]")
        Hearth::Validator.validate!(input[:used_commitment], ::String, context: "#{context}[:used_commitment]")
        Hearth::Validator.validate!(input[:unused_commitment], ::String, context: "#{context}[:unused_commitment]")
        Hearth::Validator.validate!(input[:utilization_percentage], ::String, context: "#{context}[:utilization_percentage]")
      end
    end

    class SavingsPlansUtilizationAggregates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SavingsPlansUtilizationAggregates, context: context)
        SavingsPlansUtilization.validate!(input[:utilization], context: "#{context}[:utilization]") unless input[:utilization].nil?
        SavingsPlansSavings.validate!(input[:savings], context: "#{context}[:savings]") unless input[:savings].nil?
        SavingsPlansAmortizedCommitment.validate!(input[:amortized_commitment], context: "#{context}[:amortized_commitment]") unless input[:amortized_commitment].nil?
      end
    end

    class SavingsPlansUtilizationByTime
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SavingsPlansUtilizationByTime, context: context)
        DateInterval.validate!(input[:time_period], context: "#{context}[:time_period]") unless input[:time_period].nil?
        SavingsPlansUtilization.validate!(input[:utilization], context: "#{context}[:utilization]") unless input[:utilization].nil?
        SavingsPlansSavings.validate!(input[:savings], context: "#{context}[:savings]") unless input[:savings].nil?
        SavingsPlansAmortizedCommitment.validate!(input[:amortized_commitment], context: "#{context}[:amortized_commitment]") unless input[:amortized_commitment].nil?
      end
    end

    class SavingsPlansUtilizationDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SavingsPlansUtilizationDetail, context: context)
        Hearth::Validator.validate!(input[:savings_plan_arn], ::String, context: "#{context}[:savings_plan_arn]")
        Attributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        SavingsPlansUtilization.validate!(input[:utilization], context: "#{context}[:utilization]") unless input[:utilization].nil?
        SavingsPlansSavings.validate!(input[:savings], context: "#{context}[:savings]") unless input[:savings].nil?
        SavingsPlansAmortizedCommitment.validate!(input[:amortized_commitment], context: "#{context}[:amortized_commitment]") unless input[:amortized_commitment].nil?
      end
    end

    class SavingsPlansUtilizationDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SavingsPlansUtilizationDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SavingsPlansUtilizationsByTime
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SavingsPlansUtilizationByTime.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceSpecification, context: context)
        EC2Specification.validate!(input[:ec2_specification], context: "#{context}[:ec2_specification]") unless input[:ec2_specification].nil?
      end
    end

    class SortDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SortDefinition, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
      end
    end

    class SortDefinitions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SortDefinition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Subscriber
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Subscriber, context: context)
        Hearth::Validator.validate!(input[:address], ::String, context: "#{context}[:address]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class Subscribers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Subscriber.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagList
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
        ResourceTagList.validate!(input[:resource_tags], context: "#{context}[:resource_tags]") unless input[:resource_tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TagValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagValues, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Values.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        MatchOptions.validate!(input[:match_options], context: "#{context}[:match_options]") unless input[:match_options].nil?
      end
    end

    class TagValuesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TagValues.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TargetInstance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetInstance, context: context)
        Hearth::Validator.validate!(input[:estimated_monthly_cost], ::String, context: "#{context}[:estimated_monthly_cost]")
        Hearth::Validator.validate!(input[:estimated_monthly_savings], ::String, context: "#{context}[:estimated_monthly_savings]")
        Hearth::Validator.validate!(input[:currency_code], ::String, context: "#{context}[:currency_code]")
        Hearth::Validator.validate!(input[:default_target_instance], ::TrueClass, ::FalseClass, context: "#{context}[:default_target_instance]")
        ResourceDetails.validate!(input[:resource_details], context: "#{context}[:resource_details]") unless input[:resource_details].nil?
        ResourceUtilization.validate!(input[:expected_resource_utilization], context: "#{context}[:expected_resource_utilization]") unless input[:expected_resource_utilization].nil?
        PlatformDifferences.validate!(input[:platform_differences], context: "#{context}[:platform_differences]") unless input[:platform_differences].nil?
      end
    end

    class TargetInstancesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TargetInstance.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TerminateRecommendationDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TerminateRecommendationDetail, context: context)
        Hearth::Validator.validate!(input[:estimated_monthly_savings], ::String, context: "#{context}[:estimated_monthly_savings]")
        Hearth::Validator.validate!(input[:currency_code], ::String, context: "#{context}[:currency_code]")
      end
    end

    class TooManyTagsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTagsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class TotalImpactFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TotalImpactFilter, context: context)
        Hearth::Validator.validate!(input[:numeric_operator], ::String, context: "#{context}[:numeric_operator]")
        Hearth::Validator.validate!(input[:start_value], ::Float, context: "#{context}[:start_value]")
        Hearth::Validator.validate!(input[:end_value], ::Float, context: "#{context}[:end_value]")
      end
    end

    class UnknownMonitorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnknownMonitorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnknownSubscriptionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnknownSubscriptionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnresolvableUsageUnitException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnresolvableUsageUnitException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        ResourceTagKeyList.validate!(input[:resource_tag_keys], context: "#{context}[:resource_tag_keys]") unless input[:resource_tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateAnomalyMonitorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAnomalyMonitorInput, context: context)
        Hearth::Validator.validate!(input[:monitor_arn], ::String, context: "#{context}[:monitor_arn]")
        Hearth::Validator.validate!(input[:monitor_name], ::String, context: "#{context}[:monitor_name]")
      end
    end

    class UpdateAnomalyMonitorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAnomalyMonitorOutput, context: context)
        Hearth::Validator.validate!(input[:monitor_arn], ::String, context: "#{context}[:monitor_arn]")
      end
    end

    class UpdateAnomalySubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAnomalySubscriptionInput, context: context)
        Hearth::Validator.validate!(input[:subscription_arn], ::String, context: "#{context}[:subscription_arn]")
        Hearth::Validator.validate!(input[:threshold], ::Float, context: "#{context}[:threshold]")
        Hearth::Validator.validate!(input[:frequency], ::String, context: "#{context}[:frequency]")
        MonitorArnList.validate!(input[:monitor_arn_list], context: "#{context}[:monitor_arn_list]") unless input[:monitor_arn_list].nil?
        Subscribers.validate!(input[:subscribers], context: "#{context}[:subscribers]") unless input[:subscribers].nil?
        Hearth::Validator.validate!(input[:subscription_name], ::String, context: "#{context}[:subscription_name]")
      end
    end

    class UpdateAnomalySubscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAnomalySubscriptionOutput, context: context)
        Hearth::Validator.validate!(input[:subscription_arn], ::String, context: "#{context}[:subscription_arn]")
      end
    end

    class UpdateCostAllocationTagsStatusError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCostAllocationTagsStatusError, context: context)
        Hearth::Validator.validate!(input[:tag_key], ::String, context: "#{context}[:tag_key]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UpdateCostAllocationTagsStatusErrors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UpdateCostAllocationTagsStatusError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UpdateCostAllocationTagsStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCostAllocationTagsStatusInput, context: context)
        CostAllocationTagStatusList.validate!(input[:cost_allocation_tags_status], context: "#{context}[:cost_allocation_tags_status]") unless input[:cost_allocation_tags_status].nil?
      end
    end

    class UpdateCostAllocationTagsStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCostAllocationTagsStatusOutput, context: context)
        UpdateCostAllocationTagsStatusErrors.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class UpdateCostCategoryDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCostCategoryDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:cost_category_arn], ::String, context: "#{context}[:cost_category_arn]")
        Hearth::Validator.validate!(input[:rule_version], ::String, context: "#{context}[:rule_version]")
        CostCategoryRulesList.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
        CostCategorySplitChargeRulesList.validate!(input[:split_charge_rules], context: "#{context}[:split_charge_rules]") unless input[:split_charge_rules].nil?
      end
    end

    class UpdateCostCategoryDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCostCategoryDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:cost_category_arn], ::String, context: "#{context}[:cost_category_arn]")
        Hearth::Validator.validate!(input[:effective_start], ::String, context: "#{context}[:effective_start]")
      end
    end

    class UtilizationByTime
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UtilizationByTime, context: context)
        DateInterval.validate!(input[:time_period], context: "#{context}[:time_period]") unless input[:time_period].nil?
        ReservationUtilizationGroups.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
        ReservationAggregates.validate!(input[:total], context: "#{context}[:total]") unless input[:total].nil?
      end
    end

    class UtilizationsByTime
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UtilizationByTime.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Values
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

  end
end
