# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::CostExplorer
  module Params

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
        type.anomaly_id = params[:anomaly_id]
        type.anomaly_start_date = params[:anomaly_start_date]
        type.anomaly_end_date = params[:anomaly_end_date]
        type.dimension_value = params[:dimension_value]
        type.root_causes = RootCauses.build(params[:root_causes], context: "#{context}[:root_causes]") unless params[:root_causes].nil?
        type.anomaly_score = AnomalyScore.build(params[:anomaly_score], context: "#{context}[:anomaly_score]") unless params[:anomaly_score].nil?
        type.impact = Impact.build(params[:impact], context: "#{context}[:impact]") unless params[:impact].nil?
        type.monitor_arn = params[:monitor_arn]
        type.feedback = params[:feedback]
        type
      end
    end

    module AnomalyDateInterval
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnomalyDateInterval, context: context)
        type = Types::AnomalyDateInterval.new
        type.start_date = params[:start_date]
        type.end_date = params[:end_date]
        type
      end
    end

    module AnomalyMonitor
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnomalyMonitor, context: context)
        type = Types::AnomalyMonitor.new
        type.monitor_arn = params[:monitor_arn]
        type.monitor_name = params[:monitor_name]
        type.creation_date = params[:creation_date]
        type.last_updated_date = params[:last_updated_date]
        type.last_evaluated_date = params[:last_evaluated_date]
        type.monitor_type = params[:monitor_type]
        type.monitor_dimension = params[:monitor_dimension]
        type.monitor_specification = Expression.build(params[:monitor_specification], context: "#{context}[:monitor_specification]") unless params[:monitor_specification].nil?
        type.dimensional_value_count = params[:dimensional_value_count]
        type
      end
    end

    module AnomalyMonitors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AnomalyMonitor.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AnomalyScore
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnomalyScore, context: context)
        type = Types::AnomalyScore.new
        type.max_score = params[:max_score]
        type.current_score = params[:current_score]
        type
      end
    end

    module AnomalySubscription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnomalySubscription, context: context)
        type = Types::AnomalySubscription.new
        type.subscription_arn = params[:subscription_arn]
        type.account_id = params[:account_id]
        type.monitor_arn_list = MonitorArnList.build(params[:monitor_arn_list], context: "#{context}[:monitor_arn_list]") unless params[:monitor_arn_list].nil?
        type.subscribers = Subscribers.build(params[:subscribers], context: "#{context}[:subscribers]") unless params[:subscribers].nil?
        type.threshold = params[:threshold]
        type.frequency = params[:frequency]
        type.subscription_name = params[:subscription_name]
        type
      end
    end

    module AnomalySubscriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AnomalySubscription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Attributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module BillExpirationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BillExpirationException, context: context)
        type = Types::BillExpirationException.new
        type.message = params[:message]
        type
      end
    end

    module CostAllocationTag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CostAllocationTag, context: context)
        type = Types::CostAllocationTag.new
        type.tag_key = params[:tag_key]
        type.type = params[:type]
        type.status = params[:status]
        type
      end
    end

    module CostAllocationTagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CostAllocationTagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CostAllocationTag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CostAllocationTagStatusEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CostAllocationTagStatusEntry, context: context)
        type = Types::CostAllocationTagStatusEntry.new
        type.tag_key = params[:tag_key]
        type.status = params[:status]
        type
      end
    end

    module CostAllocationTagStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CostAllocationTagStatusEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CostCategory
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CostCategory, context: context)
        type = Types::CostCategory.new
        type.cost_category_arn = params[:cost_category_arn]
        type.effective_start = params[:effective_start]
        type.effective_end = params[:effective_end]
        type.name = params[:name]
        type.rule_version = params[:rule_version]
        type.rules = CostCategoryRulesList.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type.split_charge_rules = CostCategorySplitChargeRulesList.build(params[:split_charge_rules], context: "#{context}[:split_charge_rules]") unless params[:split_charge_rules].nil?
        type.processing_status = CostCategoryProcessingStatusList.build(params[:processing_status], context: "#{context}[:processing_status]") unless params[:processing_status].nil?
        type.default_value = params[:default_value]
        type
      end
    end

    module CostCategoryInheritedValueDimension
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CostCategoryInheritedValueDimension, context: context)
        type = Types::CostCategoryInheritedValueDimension.new
        type.dimension_name = params[:dimension_name]
        type.dimension_key = params[:dimension_key]
        type
      end
    end

    module CostCategoryNamesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CostCategoryProcessingStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CostCategoryProcessingStatus, context: context)
        type = Types::CostCategoryProcessingStatus.new
        type.component = params[:component]
        type.status = params[:status]
        type
      end
    end

    module CostCategoryProcessingStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CostCategoryProcessingStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CostCategoryReference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CostCategoryReference, context: context)
        type = Types::CostCategoryReference.new
        type.cost_category_arn = params[:cost_category_arn]
        type.name = params[:name]
        type.effective_start = params[:effective_start]
        type.effective_end = params[:effective_end]
        type.number_of_rules = params[:number_of_rules]
        type.processing_status = CostCategoryProcessingStatusList.build(params[:processing_status], context: "#{context}[:processing_status]") unless params[:processing_status].nil?
        type.values = CostCategoryValuesList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.default_value = params[:default_value]
        type
      end
    end

    module CostCategoryReferencesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CostCategoryReference.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CostCategoryRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CostCategoryRule, context: context)
        type = Types::CostCategoryRule.new
        type.value = params[:value]
        type.rule = Expression.build(params[:rule], context: "#{context}[:rule]") unless params[:rule].nil?
        type.inherited_value = CostCategoryInheritedValueDimension.build(params[:inherited_value], context: "#{context}[:inherited_value]") unless params[:inherited_value].nil?
        type.type = params[:type]
        type
      end
    end

    module CostCategoryRulesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CostCategoryRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CostCategorySplitChargeRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CostCategorySplitChargeRule, context: context)
        type = Types::CostCategorySplitChargeRule.new
        type.source = params[:source]
        type.targets = CostCategorySplitChargeRuleTargetsList.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.member_method = params[:member_method]
        type.parameters = CostCategorySplitChargeRuleParametersList.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module CostCategorySplitChargeRuleParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CostCategorySplitChargeRuleParameter, context: context)
        type = Types::CostCategorySplitChargeRuleParameter.new
        type.type = params[:type]
        type.values = CostCategorySplitChargeRuleParameterValuesList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module CostCategorySplitChargeRuleParameterValuesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CostCategorySplitChargeRuleParametersList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CostCategorySplitChargeRuleParameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CostCategorySplitChargeRuleTargetsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CostCategorySplitChargeRulesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CostCategorySplitChargeRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CostCategoryValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CostCategoryValues, context: context)
        type = Types::CostCategoryValues.new
        type.key = params[:key]
        type.values = Values.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.match_options = MatchOptions.build(params[:match_options], context: "#{context}[:match_options]") unless params[:match_options].nil?
        type
      end
    end

    module CostCategoryValuesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Coverage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Coverage, context: context)
        type = Types::Coverage.new
        type.coverage_hours = CoverageHours.build(params[:coverage_hours], context: "#{context}[:coverage_hours]") unless params[:coverage_hours].nil?
        type.coverage_normalized_units = CoverageNormalizedUnits.build(params[:coverage_normalized_units], context: "#{context}[:coverage_normalized_units]") unless params[:coverage_normalized_units].nil?
        type.coverage_cost = CoverageCost.build(params[:coverage_cost], context: "#{context}[:coverage_cost]") unless params[:coverage_cost].nil?
        type
      end
    end

    module CoverageByTime
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CoverageByTime, context: context)
        type = Types::CoverageByTime.new
        type.time_period = DateInterval.build(params[:time_period], context: "#{context}[:time_period]") unless params[:time_period].nil?
        type.groups = ReservationCoverageGroups.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type.total = Coverage.build(params[:total], context: "#{context}[:total]") unless params[:total].nil?
        type
      end
    end

    module CoverageCost
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CoverageCost, context: context)
        type = Types::CoverageCost.new
        type.on_demand_cost = params[:on_demand_cost]
        type
      end
    end

    module CoverageHours
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CoverageHours, context: context)
        type = Types::CoverageHours.new
        type.on_demand_hours = params[:on_demand_hours]
        type.reserved_hours = params[:reserved_hours]
        type.total_running_hours = params[:total_running_hours]
        type.coverage_hours_percentage = params[:coverage_hours_percentage]
        type
      end
    end

    module CoverageNormalizedUnits
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CoverageNormalizedUnits, context: context)
        type = Types::CoverageNormalizedUnits.new
        type.on_demand_normalized_units = params[:on_demand_normalized_units]
        type.reserved_normalized_units = params[:reserved_normalized_units]
        type.total_running_normalized_units = params[:total_running_normalized_units]
        type.coverage_normalized_units_percentage = params[:coverage_normalized_units_percentage]
        type
      end
    end

    module CoveragesByTime
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CoverageByTime.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateAnomalyMonitorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAnomalyMonitorInput, context: context)
        type = Types::CreateAnomalyMonitorInput.new
        type.anomaly_monitor = AnomalyMonitor.build(params[:anomaly_monitor], context: "#{context}[:anomaly_monitor]") unless params[:anomaly_monitor].nil?
        type.resource_tags = ResourceTagList.build(params[:resource_tags], context: "#{context}[:resource_tags]") unless params[:resource_tags].nil?
        type
      end
    end

    module CreateAnomalyMonitorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAnomalyMonitorOutput, context: context)
        type = Types::CreateAnomalyMonitorOutput.new
        type.monitor_arn = params[:monitor_arn]
        type
      end
    end

    module CreateAnomalySubscriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAnomalySubscriptionInput, context: context)
        type = Types::CreateAnomalySubscriptionInput.new
        type.anomaly_subscription = AnomalySubscription.build(params[:anomaly_subscription], context: "#{context}[:anomaly_subscription]") unless params[:anomaly_subscription].nil?
        type.resource_tags = ResourceTagList.build(params[:resource_tags], context: "#{context}[:resource_tags]") unless params[:resource_tags].nil?
        type
      end
    end

    module CreateAnomalySubscriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAnomalySubscriptionOutput, context: context)
        type = Types::CreateAnomalySubscriptionOutput.new
        type.subscription_arn = params[:subscription_arn]
        type
      end
    end

    module CreateCostCategoryDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCostCategoryDefinitionInput, context: context)
        type = Types::CreateCostCategoryDefinitionInput.new
        type.name = params[:name]
        type.rule_version = params[:rule_version]
        type.rules = CostCategoryRulesList.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type.default_value = params[:default_value]
        type.split_charge_rules = CostCategorySplitChargeRulesList.build(params[:split_charge_rules], context: "#{context}[:split_charge_rules]") unless params[:split_charge_rules].nil?
        type.resource_tags = ResourceTagList.build(params[:resource_tags], context: "#{context}[:resource_tags]") unless params[:resource_tags].nil?
        type
      end
    end

    module CreateCostCategoryDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCostCategoryDefinitionOutput, context: context)
        type = Types::CreateCostCategoryDefinitionOutput.new
        type.cost_category_arn = params[:cost_category_arn]
        type.effective_start = params[:effective_start]
        type
      end
    end

    module CurrentInstance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CurrentInstance, context: context)
        type = Types::CurrentInstance.new
        type.resource_id = params[:resource_id]
        type.instance_name = params[:instance_name]
        type.tags = TagValuesList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.resource_details = ResourceDetails.build(params[:resource_details], context: "#{context}[:resource_details]") unless params[:resource_details].nil?
        type.resource_utilization = ResourceUtilization.build(params[:resource_utilization], context: "#{context}[:resource_utilization]") unless params[:resource_utilization].nil?
        type.reservation_covered_hours_in_lookback_period = params[:reservation_covered_hours_in_lookback_period]
        type.savings_plans_covered_hours_in_lookback_period = params[:savings_plans_covered_hours_in_lookback_period]
        type.on_demand_hours_in_lookback_period = params[:on_demand_hours_in_lookback_period]
        type.total_running_hours_in_lookback_period = params[:total_running_hours_in_lookback_period]
        type.monthly_cost = params[:monthly_cost]
        type.currency_code = params[:currency_code]
        type
      end
    end

    module DataUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataUnavailableException, context: context)
        type = Types::DataUnavailableException.new
        type.message = params[:message]
        type
      end
    end

    module DateInterval
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DateInterval, context: context)
        type = Types::DateInterval.new
        type.start = params[:start]
        type.end = params[:end]
        type
      end
    end

    module DeleteAnomalyMonitorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAnomalyMonitorInput, context: context)
        type = Types::DeleteAnomalyMonitorInput.new
        type.monitor_arn = params[:monitor_arn]
        type
      end
    end

    module DeleteAnomalyMonitorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAnomalyMonitorOutput, context: context)
        type = Types::DeleteAnomalyMonitorOutput.new
        type
      end
    end

    module DeleteAnomalySubscriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAnomalySubscriptionInput, context: context)
        type = Types::DeleteAnomalySubscriptionInput.new
        type.subscription_arn = params[:subscription_arn]
        type
      end
    end

    module DeleteAnomalySubscriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAnomalySubscriptionOutput, context: context)
        type = Types::DeleteAnomalySubscriptionOutput.new
        type
      end
    end

    module DeleteCostCategoryDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCostCategoryDefinitionInput, context: context)
        type = Types::DeleteCostCategoryDefinitionInput.new
        type.cost_category_arn = params[:cost_category_arn]
        type
      end
    end

    module DeleteCostCategoryDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCostCategoryDefinitionOutput, context: context)
        type = Types::DeleteCostCategoryDefinitionOutput.new
        type.cost_category_arn = params[:cost_category_arn]
        type.effective_end = params[:effective_end]
        type
      end
    end

    module DescribeCostCategoryDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCostCategoryDefinitionInput, context: context)
        type = Types::DescribeCostCategoryDefinitionInput.new
        type.cost_category_arn = params[:cost_category_arn]
        type.effective_on = params[:effective_on]
        type
      end
    end

    module DescribeCostCategoryDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCostCategoryDefinitionOutput, context: context)
        type = Types::DescribeCostCategoryDefinitionOutput.new
        type.cost_category = CostCategory.build(params[:cost_category], context: "#{context}[:cost_category]") unless params[:cost_category].nil?
        type
      end
    end

    module DimensionValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DimensionValues, context: context)
        type = Types::DimensionValues.new
        type.key = params[:key]
        type.values = Values.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.match_options = MatchOptions.build(params[:match_options], context: "#{context}[:match_options]") unless params[:match_options].nil?
        type
      end
    end

    module DimensionValuesWithAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DimensionValuesWithAttributes, context: context)
        type = Types::DimensionValuesWithAttributes.new
        type.value = params[:value]
        type.attributes = Attributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module DimensionValuesWithAttributesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DimensionValuesWithAttributes.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DiskResourceUtilization
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DiskResourceUtilization, context: context)
        type = Types::DiskResourceUtilization.new
        type.disk_read_ops_per_second = params[:disk_read_ops_per_second]
        type.disk_write_ops_per_second = params[:disk_write_ops_per_second]
        type.disk_read_bytes_per_second = params[:disk_read_bytes_per_second]
        type.disk_write_bytes_per_second = params[:disk_write_bytes_per_second]
        type
      end
    end

    module EBSResourceUtilization
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EBSResourceUtilization, context: context)
        type = Types::EBSResourceUtilization.new
        type.ebs_read_ops_per_second = params[:ebs_read_ops_per_second]
        type.ebs_write_ops_per_second = params[:ebs_write_ops_per_second]
        type.ebs_read_bytes_per_second = params[:ebs_read_bytes_per_second]
        type.ebs_write_bytes_per_second = params[:ebs_write_bytes_per_second]
        type
      end
    end

    module EC2InstanceDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EC2InstanceDetails, context: context)
        type = Types::EC2InstanceDetails.new
        type.family = params[:family]
        type.instance_type = params[:instance_type]
        type.region = params[:region]
        type.availability_zone = params[:availability_zone]
        type.platform = params[:platform]
        type.tenancy = params[:tenancy]
        type.current_generation = params[:current_generation]
        type.size_flex_eligible = params[:size_flex_eligible]
        type
      end
    end

    module EC2ResourceDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EC2ResourceDetails, context: context)
        type = Types::EC2ResourceDetails.new
        type.hourly_on_demand_rate = params[:hourly_on_demand_rate]
        type.instance_type = params[:instance_type]
        type.platform = params[:platform]
        type.region = params[:region]
        type.sku = params[:sku]
        type.memory = params[:memory]
        type.network_performance = params[:network_performance]
        type.storage = params[:storage]
        type.vcpu = params[:vcpu]
        type
      end
    end

    module EC2ResourceUtilization
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EC2ResourceUtilization, context: context)
        type = Types::EC2ResourceUtilization.new
        type.max_cpu_utilization_percentage = params[:max_cpu_utilization_percentage]
        type.max_memory_utilization_percentage = params[:max_memory_utilization_percentage]
        type.max_storage_utilization_percentage = params[:max_storage_utilization_percentage]
        type.ebs_resource_utilization = EBSResourceUtilization.build(params[:ebs_resource_utilization], context: "#{context}[:ebs_resource_utilization]") unless params[:ebs_resource_utilization].nil?
        type.disk_resource_utilization = DiskResourceUtilization.build(params[:disk_resource_utilization], context: "#{context}[:disk_resource_utilization]") unless params[:disk_resource_utilization].nil?
        type.network_resource_utilization = NetworkResourceUtilization.build(params[:network_resource_utilization], context: "#{context}[:network_resource_utilization]") unless params[:network_resource_utilization].nil?
        type
      end
    end

    module EC2Specification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EC2Specification, context: context)
        type = Types::EC2Specification.new
        type.offering_class = params[:offering_class]
        type
      end
    end

    module ESInstanceDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ESInstanceDetails, context: context)
        type = Types::ESInstanceDetails.new
        type.instance_class = params[:instance_class]
        type.instance_size = params[:instance_size]
        type.region = params[:region]
        type.current_generation = params[:current_generation]
        type.size_flex_eligible = params[:size_flex_eligible]
        type
      end
    end

    module ElastiCacheInstanceDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ElastiCacheInstanceDetails, context: context)
        type = Types::ElastiCacheInstanceDetails.new
        type.family = params[:family]
        type.node_type = params[:node_type]
        type.region = params[:region]
        type.product_description = params[:product_description]
        type.current_generation = params[:current_generation]
        type.size_flex_eligible = params[:size_flex_eligible]
        type
      end
    end

    module Expression
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Expression, context: context)
        type = Types::Expression.new
        type.or = Expressions.build(params[:or], context: "#{context}[:or]") unless params[:or].nil?
        type.and = Expressions.build(params[:and], context: "#{context}[:and]") unless params[:and].nil?
        type.not = Expression.build(params[:not], context: "#{context}[:not]") unless params[:not].nil?
        type.dimensions = DimensionValues.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.tags = TagValues.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.cost_categories = CostCategoryValues.build(params[:cost_categories], context: "#{context}[:cost_categories]") unless params[:cost_categories].nil?
        type
      end
    end

    module Expressions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Expression.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FindingReasonCodes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ForecastResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ForecastResult, context: context)
        type = Types::ForecastResult.new
        type.time_period = DateInterval.build(params[:time_period], context: "#{context}[:time_period]") unless params[:time_period].nil?
        type.mean_value = params[:mean_value]
        type.prediction_interval_lower_bound = params[:prediction_interval_lower_bound]
        type.prediction_interval_upper_bound = params[:prediction_interval_upper_bound]
        type
      end
    end

    module ForecastResultsByTime
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ForecastResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetAnomaliesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAnomaliesInput, context: context)
        type = Types::GetAnomaliesInput.new
        type.monitor_arn = params[:monitor_arn]
        type.date_interval = AnomalyDateInterval.build(params[:date_interval], context: "#{context}[:date_interval]") unless params[:date_interval].nil?
        type.feedback = params[:feedback]
        type.total_impact = TotalImpactFilter.build(params[:total_impact], context: "#{context}[:total_impact]") unless params[:total_impact].nil?
        type.next_page_token = params[:next_page_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetAnomaliesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAnomaliesOutput, context: context)
        type = Types::GetAnomaliesOutput.new
        type.anomalies = Anomalies.build(params[:anomalies], context: "#{context}[:anomalies]") unless params[:anomalies].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetAnomalyMonitorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAnomalyMonitorsInput, context: context)
        type = Types::GetAnomalyMonitorsInput.new
        type.monitor_arn_list = Values.build(params[:monitor_arn_list], context: "#{context}[:monitor_arn_list]") unless params[:monitor_arn_list].nil?
        type.next_page_token = params[:next_page_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetAnomalyMonitorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAnomalyMonitorsOutput, context: context)
        type = Types::GetAnomalyMonitorsOutput.new
        type.anomaly_monitors = AnomalyMonitors.build(params[:anomaly_monitors], context: "#{context}[:anomaly_monitors]") unless params[:anomaly_monitors].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetAnomalySubscriptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAnomalySubscriptionsInput, context: context)
        type = Types::GetAnomalySubscriptionsInput.new
        type.subscription_arn_list = Values.build(params[:subscription_arn_list], context: "#{context}[:subscription_arn_list]") unless params[:subscription_arn_list].nil?
        type.monitor_arn = params[:monitor_arn]
        type.next_page_token = params[:next_page_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetAnomalySubscriptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAnomalySubscriptionsOutput, context: context)
        type = Types::GetAnomalySubscriptionsOutput.new
        type.anomaly_subscriptions = AnomalySubscriptions.build(params[:anomaly_subscriptions], context: "#{context}[:anomaly_subscriptions]") unless params[:anomaly_subscriptions].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetCostAndUsageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCostAndUsageInput, context: context)
        type = Types::GetCostAndUsageInput.new
        type.time_period = DateInterval.build(params[:time_period], context: "#{context}[:time_period]") unless params[:time_period].nil?
        type.granularity = params[:granularity]
        type.filter = Expression.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.metrics = MetricNames.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type.group_by = GroupDefinitions.build(params[:group_by], context: "#{context}[:group_by]") unless params[:group_by].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetCostAndUsageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCostAndUsageOutput, context: context)
        type = Types::GetCostAndUsageOutput.new
        type.next_page_token = params[:next_page_token]
        type.group_definitions = GroupDefinitions.build(params[:group_definitions], context: "#{context}[:group_definitions]") unless params[:group_definitions].nil?
        type.results_by_time = ResultsByTime.build(params[:results_by_time], context: "#{context}[:results_by_time]") unless params[:results_by_time].nil?
        type.dimension_value_attributes = DimensionValuesWithAttributesList.build(params[:dimension_value_attributes], context: "#{context}[:dimension_value_attributes]") unless params[:dimension_value_attributes].nil?
        type
      end
    end

    module GetCostAndUsageWithResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCostAndUsageWithResourcesInput, context: context)
        type = Types::GetCostAndUsageWithResourcesInput.new
        type.time_period = DateInterval.build(params[:time_period], context: "#{context}[:time_period]") unless params[:time_period].nil?
        type.granularity = params[:granularity]
        type.filter = Expression.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.metrics = MetricNames.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type.group_by = GroupDefinitions.build(params[:group_by], context: "#{context}[:group_by]") unless params[:group_by].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetCostAndUsageWithResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCostAndUsageWithResourcesOutput, context: context)
        type = Types::GetCostAndUsageWithResourcesOutput.new
        type.next_page_token = params[:next_page_token]
        type.group_definitions = GroupDefinitions.build(params[:group_definitions], context: "#{context}[:group_definitions]") unless params[:group_definitions].nil?
        type.results_by_time = ResultsByTime.build(params[:results_by_time], context: "#{context}[:results_by_time]") unless params[:results_by_time].nil?
        type.dimension_value_attributes = DimensionValuesWithAttributesList.build(params[:dimension_value_attributes], context: "#{context}[:dimension_value_attributes]") unless params[:dimension_value_attributes].nil?
        type
      end
    end

    module GetCostCategoriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCostCategoriesInput, context: context)
        type = Types::GetCostCategoriesInput.new
        type.search_string = params[:search_string]
        type.time_period = DateInterval.build(params[:time_period], context: "#{context}[:time_period]") unless params[:time_period].nil?
        type.cost_category_name = params[:cost_category_name]
        type.filter = Expression.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.sort_by = SortDefinitions.build(params[:sort_by], context: "#{context}[:sort_by]") unless params[:sort_by].nil?
        type.max_results = params[:max_results]
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetCostCategoriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCostCategoriesOutput, context: context)
        type = Types::GetCostCategoriesOutput.new
        type.next_page_token = params[:next_page_token]
        type.cost_category_names = CostCategoryNamesList.build(params[:cost_category_names], context: "#{context}[:cost_category_names]") unless params[:cost_category_names].nil?
        type.cost_category_values = CostCategoryValuesList.build(params[:cost_category_values], context: "#{context}[:cost_category_values]") unless params[:cost_category_values].nil?
        type.return_size = params[:return_size]
        type.total_size = params[:total_size]
        type
      end
    end

    module GetCostForecastInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCostForecastInput, context: context)
        type = Types::GetCostForecastInput.new
        type.time_period = DateInterval.build(params[:time_period], context: "#{context}[:time_period]") unless params[:time_period].nil?
        type.metric = params[:metric]
        type.granularity = params[:granularity]
        type.filter = Expression.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.prediction_interval_level = params[:prediction_interval_level]
        type
      end
    end

    module GetCostForecastOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCostForecastOutput, context: context)
        type = Types::GetCostForecastOutput.new
        type.total = MetricValue.build(params[:total], context: "#{context}[:total]") unless params[:total].nil?
        type.forecast_results_by_time = ForecastResultsByTime.build(params[:forecast_results_by_time], context: "#{context}[:forecast_results_by_time]") unless params[:forecast_results_by_time].nil?
        type
      end
    end

    module GetDimensionValuesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDimensionValuesInput, context: context)
        type = Types::GetDimensionValuesInput.new
        type.search_string = params[:search_string]
        type.time_period = DateInterval.build(params[:time_period], context: "#{context}[:time_period]") unless params[:time_period].nil?
        type.dimension = params[:dimension]
        type.context = params[:context]
        type.filter = Expression.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.sort_by = SortDefinitions.build(params[:sort_by], context: "#{context}[:sort_by]") unless params[:sort_by].nil?
        type.max_results = params[:max_results]
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetDimensionValuesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDimensionValuesOutput, context: context)
        type = Types::GetDimensionValuesOutput.new
        type.dimension_values = DimensionValuesWithAttributesList.build(params[:dimension_values], context: "#{context}[:dimension_values]") unless params[:dimension_values].nil?
        type.return_size = params[:return_size]
        type.total_size = params[:total_size]
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetReservationCoverageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetReservationCoverageInput, context: context)
        type = Types::GetReservationCoverageInput.new
        type.time_period = DateInterval.build(params[:time_period], context: "#{context}[:time_period]") unless params[:time_period].nil?
        type.group_by = GroupDefinitions.build(params[:group_by], context: "#{context}[:group_by]") unless params[:group_by].nil?
        type.granularity = params[:granularity]
        type.filter = Expression.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.metrics = MetricNames.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type.next_page_token = params[:next_page_token]
        type.sort_by = SortDefinition.build(params[:sort_by], context: "#{context}[:sort_by]") unless params[:sort_by].nil?
        type.max_results = params[:max_results]
        type
      end
    end

    module GetReservationCoverageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetReservationCoverageOutput, context: context)
        type = Types::GetReservationCoverageOutput.new
        type.coverages_by_time = CoveragesByTime.build(params[:coverages_by_time], context: "#{context}[:coverages_by_time]") unless params[:coverages_by_time].nil?
        type.total = Coverage.build(params[:total], context: "#{context}[:total]") unless params[:total].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetReservationPurchaseRecommendationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetReservationPurchaseRecommendationInput, context: context)
        type = Types::GetReservationPurchaseRecommendationInput.new
        type.account_id = params[:account_id]
        type.service = params[:service]
        type.filter = Expression.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.account_scope = params[:account_scope]
        type.lookback_period_in_days = params[:lookback_period_in_days]
        type.term_in_years = params[:term_in_years]
        type.payment_option = params[:payment_option]
        type.service_specification = ServiceSpecification.build(params[:service_specification], context: "#{context}[:service_specification]") unless params[:service_specification].nil?
        type.page_size = params[:page_size]
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetReservationPurchaseRecommendationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetReservationPurchaseRecommendationOutput, context: context)
        type = Types::GetReservationPurchaseRecommendationOutput.new
        type.metadata = ReservationPurchaseRecommendationMetadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.recommendations = ReservationPurchaseRecommendations.build(params[:recommendations], context: "#{context}[:recommendations]") unless params[:recommendations].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetReservationUtilizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetReservationUtilizationInput, context: context)
        type = Types::GetReservationUtilizationInput.new
        type.time_period = DateInterval.build(params[:time_period], context: "#{context}[:time_period]") unless params[:time_period].nil?
        type.group_by = GroupDefinitions.build(params[:group_by], context: "#{context}[:group_by]") unless params[:group_by].nil?
        type.granularity = params[:granularity]
        type.filter = Expression.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.sort_by = SortDefinition.build(params[:sort_by], context: "#{context}[:sort_by]") unless params[:sort_by].nil?
        type.next_page_token = params[:next_page_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetReservationUtilizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetReservationUtilizationOutput, context: context)
        type = Types::GetReservationUtilizationOutput.new
        type.utilizations_by_time = UtilizationsByTime.build(params[:utilizations_by_time], context: "#{context}[:utilizations_by_time]") unless params[:utilizations_by_time].nil?
        type.total = ReservationAggregates.build(params[:total], context: "#{context}[:total]") unless params[:total].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetRightsizingRecommendationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRightsizingRecommendationInput, context: context)
        type = Types::GetRightsizingRecommendationInput.new
        type.filter = Expression.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.configuration = RightsizingRecommendationConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.service = params[:service]
        type.page_size = params[:page_size]
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetRightsizingRecommendationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRightsizingRecommendationOutput, context: context)
        type = Types::GetRightsizingRecommendationOutput.new
        type.metadata = RightsizingRecommendationMetadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.summary = RightsizingRecommendationSummary.build(params[:summary], context: "#{context}[:summary]") unless params[:summary].nil?
        type.rightsizing_recommendations = RightsizingRecommendationList.build(params[:rightsizing_recommendations], context: "#{context}[:rightsizing_recommendations]") unless params[:rightsizing_recommendations].nil?
        type.next_page_token = params[:next_page_token]
        type.configuration = RightsizingRecommendationConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type
      end
    end

    module GetSavingsPlansCoverageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSavingsPlansCoverageInput, context: context)
        type = Types::GetSavingsPlansCoverageInput.new
        type.time_period = DateInterval.build(params[:time_period], context: "#{context}[:time_period]") unless params[:time_period].nil?
        type.group_by = GroupDefinitions.build(params[:group_by], context: "#{context}[:group_by]") unless params[:group_by].nil?
        type.granularity = params[:granularity]
        type.filter = Expression.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.metrics = MetricNames.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.sort_by = SortDefinition.build(params[:sort_by], context: "#{context}[:sort_by]") unless params[:sort_by].nil?
        type
      end
    end

    module GetSavingsPlansCoverageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSavingsPlansCoverageOutput, context: context)
        type = Types::GetSavingsPlansCoverageOutput.new
        type.savings_plans_coverages = SavingsPlansCoverages.build(params[:savings_plans_coverages], context: "#{context}[:savings_plans_coverages]") unless params[:savings_plans_coverages].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetSavingsPlansPurchaseRecommendationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSavingsPlansPurchaseRecommendationInput, context: context)
        type = Types::GetSavingsPlansPurchaseRecommendationInput.new
        type.savings_plans_type = params[:savings_plans_type]
        type.term_in_years = params[:term_in_years]
        type.payment_option = params[:payment_option]
        type.account_scope = params[:account_scope]
        type.next_page_token = params[:next_page_token]
        type.page_size = params[:page_size]
        type.lookback_period_in_days = params[:lookback_period_in_days]
        type.filter = Expression.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type
      end
    end

    module GetSavingsPlansPurchaseRecommendationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSavingsPlansPurchaseRecommendationOutput, context: context)
        type = Types::GetSavingsPlansPurchaseRecommendationOutput.new
        type.metadata = SavingsPlansPurchaseRecommendationMetadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.savings_plans_purchase_recommendation = SavingsPlansPurchaseRecommendation.build(params[:savings_plans_purchase_recommendation], context: "#{context}[:savings_plans_purchase_recommendation]") unless params[:savings_plans_purchase_recommendation].nil?
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetSavingsPlansUtilizationDetailsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSavingsPlansUtilizationDetailsInput, context: context)
        type = Types::GetSavingsPlansUtilizationDetailsInput.new
        type.time_period = DateInterval.build(params[:time_period], context: "#{context}[:time_period]") unless params[:time_period].nil?
        type.filter = Expression.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.data_type = SavingsPlansDataTypes.build(params[:data_type], context: "#{context}[:data_type]") unless params[:data_type].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.sort_by = SortDefinition.build(params[:sort_by], context: "#{context}[:sort_by]") unless params[:sort_by].nil?
        type
      end
    end

    module GetSavingsPlansUtilizationDetailsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSavingsPlansUtilizationDetailsOutput, context: context)
        type = Types::GetSavingsPlansUtilizationDetailsOutput.new
        type.savings_plans_utilization_details = SavingsPlansUtilizationDetails.build(params[:savings_plans_utilization_details], context: "#{context}[:savings_plans_utilization_details]") unless params[:savings_plans_utilization_details].nil?
        type.total = SavingsPlansUtilizationAggregates.build(params[:total], context: "#{context}[:total]") unless params[:total].nil?
        type.time_period = DateInterval.build(params[:time_period], context: "#{context}[:time_period]") unless params[:time_period].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetSavingsPlansUtilizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSavingsPlansUtilizationInput, context: context)
        type = Types::GetSavingsPlansUtilizationInput.new
        type.time_period = DateInterval.build(params[:time_period], context: "#{context}[:time_period]") unless params[:time_period].nil?
        type.granularity = params[:granularity]
        type.filter = Expression.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.sort_by = SortDefinition.build(params[:sort_by], context: "#{context}[:sort_by]") unless params[:sort_by].nil?
        type
      end
    end

    module GetSavingsPlansUtilizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSavingsPlansUtilizationOutput, context: context)
        type = Types::GetSavingsPlansUtilizationOutput.new
        type.savings_plans_utilizations_by_time = SavingsPlansUtilizationsByTime.build(params[:savings_plans_utilizations_by_time], context: "#{context}[:savings_plans_utilizations_by_time]") unless params[:savings_plans_utilizations_by_time].nil?
        type.total = SavingsPlansUtilizationAggregates.build(params[:total], context: "#{context}[:total]") unless params[:total].nil?
        type
      end
    end

    module GetTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTagsInput, context: context)
        type = Types::GetTagsInput.new
        type.search_string = params[:search_string]
        type.time_period = DateInterval.build(params[:time_period], context: "#{context}[:time_period]") unless params[:time_period].nil?
        type.tag_key = params[:tag_key]
        type.filter = Expression.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.sort_by = SortDefinitions.build(params[:sort_by], context: "#{context}[:sort_by]") unless params[:sort_by].nil?
        type.max_results = params[:max_results]
        type.next_page_token = params[:next_page_token]
        type
      end
    end

    module GetTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTagsOutput, context: context)
        type = Types::GetTagsOutput.new
        type.next_page_token = params[:next_page_token]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.return_size = params[:return_size]
        type.total_size = params[:total_size]
        type
      end
    end

    module GetUsageForecastInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUsageForecastInput, context: context)
        type = Types::GetUsageForecastInput.new
        type.time_period = DateInterval.build(params[:time_period], context: "#{context}[:time_period]") unless params[:time_period].nil?
        type.metric = params[:metric]
        type.granularity = params[:granularity]
        type.filter = Expression.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.prediction_interval_level = params[:prediction_interval_level]
        type
      end
    end

    module GetUsageForecastOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUsageForecastOutput, context: context)
        type = Types::GetUsageForecastOutput.new
        type.total = MetricValue.build(params[:total], context: "#{context}[:total]") unless params[:total].nil?
        type.forecast_results_by_time = ForecastResultsByTime.build(params[:forecast_results_by_time], context: "#{context}[:forecast_results_by_time]") unless params[:forecast_results_by_time].nil?
        type
      end
    end

    module Group
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Group, context: context)
        type = Types::Group.new
        type.keys = Keys.build(params[:keys], context: "#{context}[:keys]") unless params[:keys].nil?
        type.metrics = Metrics.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type
      end
    end

    module GroupDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GroupDefinition, context: context)
        type = Types::GroupDefinition.new
        type.type = params[:type]
        type.key = params[:key]
        type
      end
    end

    module GroupDefinitions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GroupDefinition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Groups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Group.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Impact
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Impact, context: context)
        type = Types::Impact.new
        type.max_impact = params[:max_impact]
        type.total_impact = params[:total_impact]
        type
      end
    end

    module InstanceDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceDetails, context: context)
        type = Types::InstanceDetails.new
        type.ec2_instance_details = EC2InstanceDetails.build(params[:ec2_instance_details], context: "#{context}[:ec2_instance_details]") unless params[:ec2_instance_details].nil?
        type.rds_instance_details = RDSInstanceDetails.build(params[:rds_instance_details], context: "#{context}[:rds_instance_details]") unless params[:rds_instance_details].nil?
        type.redshift_instance_details = RedshiftInstanceDetails.build(params[:redshift_instance_details], context: "#{context}[:redshift_instance_details]") unless params[:redshift_instance_details].nil?
        type.elasti_cache_instance_details = ElastiCacheInstanceDetails.build(params[:elasti_cache_instance_details], context: "#{context}[:elasti_cache_instance_details]") unless params[:elasti_cache_instance_details].nil?
        type.es_instance_details = ESInstanceDetails.build(params[:es_instance_details], context: "#{context}[:es_instance_details]") unless params[:es_instance_details].nil?
        type
      end
    end

    module InvalidNextTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidNextTokenException, context: context)
        type = Types::InvalidNextTokenException.new
        type.message = params[:message]
        type
      end
    end

    module Keys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListCostAllocationTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCostAllocationTagsInput, context: context)
        type = Types::ListCostAllocationTagsInput.new
        type.status = params[:status]
        type.tag_keys = CostAllocationTagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type.type = params[:type]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListCostAllocationTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCostAllocationTagsOutput, context: context)
        type = Types::ListCostAllocationTagsOutput.new
        type.cost_allocation_tags = CostAllocationTagList.build(params[:cost_allocation_tags], context: "#{context}[:cost_allocation_tags]") unless params[:cost_allocation_tags].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCostCategoryDefinitionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCostCategoryDefinitionsInput, context: context)
        type = Types::ListCostCategoryDefinitionsInput.new
        type.effective_on = params[:effective_on]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListCostCategoryDefinitionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCostCategoryDefinitionsOutput, context: context)
        type = Types::ListCostCategoryDefinitionsOutput.new
        type.cost_category_references = CostCategoryReferencesList.build(params[:cost_category_references], context: "#{context}[:cost_category_references]") unless params[:cost_category_references].nil?
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
        type.resource_tags = ResourceTagList.build(params[:resource_tags], context: "#{context}[:resource_tags]") unless params[:resource_tags].nil?
        type
      end
    end

    module MatchOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module MetricNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module MetricValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricValue, context: context)
        type = Types::MetricValue.new
        type.amount = params[:amount]
        type.unit = params[:unit]
        type
      end
    end

    module Metrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = MetricValue.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ModifyRecommendationDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyRecommendationDetail, context: context)
        type = Types::ModifyRecommendationDetail.new
        type.target_instances = TargetInstancesList.build(params[:target_instances], context: "#{context}[:target_instances]") unless params[:target_instances].nil?
        type
      end
    end

    module MonitorArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module NetworkResourceUtilization
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkResourceUtilization, context: context)
        type = Types::NetworkResourceUtilization.new
        type.network_in_bytes_per_second = params[:network_in_bytes_per_second]
        type.network_out_bytes_per_second = params[:network_out_bytes_per_second]
        type.network_packets_in_per_second = params[:network_packets_in_per_second]
        type.network_packets_out_per_second = params[:network_packets_out_per_second]
        type
      end
    end

    module PlatformDifferences
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ProvideAnomalyFeedbackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvideAnomalyFeedbackInput, context: context)
        type = Types::ProvideAnomalyFeedbackInput.new
        type.anomaly_id = params[:anomaly_id]
        type.feedback = params[:feedback]
        type
      end
    end

    module ProvideAnomalyFeedbackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvideAnomalyFeedbackOutput, context: context)
        type = Types::ProvideAnomalyFeedbackOutput.new
        type.anomaly_id = params[:anomaly_id]
        type
      end
    end

    module RDSInstanceDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RDSInstanceDetails, context: context)
        type = Types::RDSInstanceDetails.new
        type.family = params[:family]
        type.instance_type = params[:instance_type]
        type.region = params[:region]
        type.database_engine = params[:database_engine]
        type.database_edition = params[:database_edition]
        type.deployment_option = params[:deployment_option]
        type.license_model = params[:license_model]
        type.current_generation = params[:current_generation]
        type.size_flex_eligible = params[:size_flex_eligible]
        type
      end
    end

    module RedshiftInstanceDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RedshiftInstanceDetails, context: context)
        type = Types::RedshiftInstanceDetails.new
        type.family = params[:family]
        type.node_type = params[:node_type]
        type.region = params[:region]
        type.current_generation = params[:current_generation]
        type.size_flex_eligible = params[:size_flex_eligible]
        type
      end
    end

    module RequestChangedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestChangedException, context: context)
        type = Types::RequestChangedException.new
        type.message = params[:message]
        type
      end
    end

    module ReservationAggregates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservationAggregates, context: context)
        type = Types::ReservationAggregates.new
        type.utilization_percentage = params[:utilization_percentage]
        type.utilization_percentage_in_units = params[:utilization_percentage_in_units]
        type.purchased_hours = params[:purchased_hours]
        type.purchased_units = params[:purchased_units]
        type.total_actual_hours = params[:total_actual_hours]
        type.total_actual_units = params[:total_actual_units]
        type.unused_hours = params[:unused_hours]
        type.unused_units = params[:unused_units]
        type.on_demand_cost_of_ri_hours_used = params[:on_demand_cost_of_ri_hours_used]
        type.net_ri_savings = params[:net_ri_savings]
        type.total_potential_ri_savings = params[:total_potential_ri_savings]
        type.amortized_upfront_fee = params[:amortized_upfront_fee]
        type.amortized_recurring_fee = params[:amortized_recurring_fee]
        type.total_amortized_fee = params[:total_amortized_fee]
        type.ri_cost_for_unused_hours = params[:ri_cost_for_unused_hours]
        type.realized_savings = params[:realized_savings]
        type.unrealized_savings = params[:unrealized_savings]
        type
      end
    end

    module ReservationCoverageGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservationCoverageGroup, context: context)
        type = Types::ReservationCoverageGroup.new
        type.attributes = Attributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.coverage = Coverage.build(params[:coverage], context: "#{context}[:coverage]") unless params[:coverage].nil?
        type
      end
    end

    module ReservationCoverageGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReservationCoverageGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReservationPurchaseRecommendation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservationPurchaseRecommendation, context: context)
        type = Types::ReservationPurchaseRecommendation.new
        type.account_scope = params[:account_scope]
        type.lookback_period_in_days = params[:lookback_period_in_days]
        type.term_in_years = params[:term_in_years]
        type.payment_option = params[:payment_option]
        type.service_specification = ServiceSpecification.build(params[:service_specification], context: "#{context}[:service_specification]") unless params[:service_specification].nil?
        type.recommendation_details = ReservationPurchaseRecommendationDetails.build(params[:recommendation_details], context: "#{context}[:recommendation_details]") unless params[:recommendation_details].nil?
        type.recommendation_summary = ReservationPurchaseRecommendationSummary.build(params[:recommendation_summary], context: "#{context}[:recommendation_summary]") unless params[:recommendation_summary].nil?
        type
      end
    end

    module ReservationPurchaseRecommendationDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservationPurchaseRecommendationDetail, context: context)
        type = Types::ReservationPurchaseRecommendationDetail.new
        type.account_id = params[:account_id]
        type.instance_details = InstanceDetails.build(params[:instance_details], context: "#{context}[:instance_details]") unless params[:instance_details].nil?
        type.recommended_number_of_instances_to_purchase = params[:recommended_number_of_instances_to_purchase]
        type.recommended_normalized_units_to_purchase = params[:recommended_normalized_units_to_purchase]
        type.minimum_number_of_instances_used_per_hour = params[:minimum_number_of_instances_used_per_hour]
        type.minimum_normalized_units_used_per_hour = params[:minimum_normalized_units_used_per_hour]
        type.maximum_number_of_instances_used_per_hour = params[:maximum_number_of_instances_used_per_hour]
        type.maximum_normalized_units_used_per_hour = params[:maximum_normalized_units_used_per_hour]
        type.average_number_of_instances_used_per_hour = params[:average_number_of_instances_used_per_hour]
        type.average_normalized_units_used_per_hour = params[:average_normalized_units_used_per_hour]
        type.average_utilization = params[:average_utilization]
        type.estimated_break_even_in_months = params[:estimated_break_even_in_months]
        type.currency_code = params[:currency_code]
        type.estimated_monthly_savings_amount = params[:estimated_monthly_savings_amount]
        type.estimated_monthly_savings_percentage = params[:estimated_monthly_savings_percentage]
        type.estimated_monthly_on_demand_cost = params[:estimated_monthly_on_demand_cost]
        type.estimated_reservation_cost_for_lookback_period = params[:estimated_reservation_cost_for_lookback_period]
        type.upfront_cost = params[:upfront_cost]
        type.recurring_standard_monthly_cost = params[:recurring_standard_monthly_cost]
        type
      end
    end

    module ReservationPurchaseRecommendationDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReservationPurchaseRecommendationDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReservationPurchaseRecommendationMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservationPurchaseRecommendationMetadata, context: context)
        type = Types::ReservationPurchaseRecommendationMetadata.new
        type.recommendation_id = params[:recommendation_id]
        type.generation_timestamp = params[:generation_timestamp]
        type
      end
    end

    module ReservationPurchaseRecommendationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservationPurchaseRecommendationSummary, context: context)
        type = Types::ReservationPurchaseRecommendationSummary.new
        type.total_estimated_monthly_savings_amount = params[:total_estimated_monthly_savings_amount]
        type.total_estimated_monthly_savings_percentage = params[:total_estimated_monthly_savings_percentage]
        type.currency_code = params[:currency_code]
        type
      end
    end

    module ReservationPurchaseRecommendations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReservationPurchaseRecommendation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReservationUtilizationGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReservationUtilizationGroup, context: context)
        type = Types::ReservationUtilizationGroup.new
        type.key = params[:key]
        type.value = params[:value]
        type.attributes = Attributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.utilization = ReservationAggregates.build(params[:utilization], context: "#{context}[:utilization]") unless params[:utilization].nil?
        type
      end
    end

    module ReservationUtilizationGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReservationUtilizationGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceDetails, context: context)
        type = Types::ResourceDetails.new
        type.ec2_resource_details = EC2ResourceDetails.build(params[:ec2_resource_details], context: "#{context}[:ec2_resource_details]") unless params[:ec2_resource_details].nil?
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_name = params[:resource_name]
        type
      end
    end

    module ResourceTag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceTag, context: context)
        type = Types::ResourceTag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module ResourceTagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceTagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceTag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceUtilization
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceUtilization, context: context)
        type = Types::ResourceUtilization.new
        type.ec2_resource_utilization = EC2ResourceUtilization.build(params[:ec2_resource_utilization], context: "#{context}[:ec2_resource_utilization]") unless params[:ec2_resource_utilization].nil?
        type
      end
    end

    module ResultByTime
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResultByTime, context: context)
        type = Types::ResultByTime.new
        type.time_period = DateInterval.build(params[:time_period], context: "#{context}[:time_period]") unless params[:time_period].nil?
        type.total = Metrics.build(params[:total], context: "#{context}[:total]") unless params[:total].nil?
        type.groups = Groups.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type.estimated = params[:estimated]
        type
      end
    end

    module ResultsByTime
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResultByTime.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RightsizingRecommendation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RightsizingRecommendation, context: context)
        type = Types::RightsizingRecommendation.new
        type.account_id = params[:account_id]
        type.current_instance = CurrentInstance.build(params[:current_instance], context: "#{context}[:current_instance]") unless params[:current_instance].nil?
        type.rightsizing_type = params[:rightsizing_type]
        type.modify_recommendation_detail = ModifyRecommendationDetail.build(params[:modify_recommendation_detail], context: "#{context}[:modify_recommendation_detail]") unless params[:modify_recommendation_detail].nil?
        type.terminate_recommendation_detail = TerminateRecommendationDetail.build(params[:terminate_recommendation_detail], context: "#{context}[:terminate_recommendation_detail]") unless params[:terminate_recommendation_detail].nil?
        type.finding_reason_codes = FindingReasonCodes.build(params[:finding_reason_codes], context: "#{context}[:finding_reason_codes]") unless params[:finding_reason_codes].nil?
        type
      end
    end

    module RightsizingRecommendationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RightsizingRecommendationConfiguration, context: context)
        type = Types::RightsizingRecommendationConfiguration.new
        type.recommendation_target = params[:recommendation_target]
        type.benefits_considered = params[:benefits_considered]
        type
      end
    end

    module RightsizingRecommendationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RightsizingRecommendation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RightsizingRecommendationMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RightsizingRecommendationMetadata, context: context)
        type = Types::RightsizingRecommendationMetadata.new
        type.recommendation_id = params[:recommendation_id]
        type.generation_timestamp = params[:generation_timestamp]
        type.lookback_period_in_days = params[:lookback_period_in_days]
        type.additional_metadata = params[:additional_metadata]
        type
      end
    end

    module RightsizingRecommendationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RightsizingRecommendationSummary, context: context)
        type = Types::RightsizingRecommendationSummary.new
        type.total_recommendation_count = params[:total_recommendation_count]
        type.estimated_total_monthly_savings_amount = params[:estimated_total_monthly_savings_amount]
        type.savings_currency_code = params[:savings_currency_code]
        type.savings_percentage = params[:savings_percentage]
        type
      end
    end

    module RootCause
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RootCause, context: context)
        type = Types::RootCause.new
        type.service = params[:service]
        type.region = params[:region]
        type.linked_account = params[:linked_account]
        type.usage_type = params[:usage_type]
        type
      end
    end

    module RootCauses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RootCause.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SavingsPlansAmortizedCommitment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SavingsPlansAmortizedCommitment, context: context)
        type = Types::SavingsPlansAmortizedCommitment.new
        type.amortized_recurring_commitment = params[:amortized_recurring_commitment]
        type.amortized_upfront_commitment = params[:amortized_upfront_commitment]
        type.total_amortized_commitment = params[:total_amortized_commitment]
        type
      end
    end

    module SavingsPlansCoverage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SavingsPlansCoverage, context: context)
        type = Types::SavingsPlansCoverage.new
        type.attributes = Attributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.coverage = SavingsPlansCoverageData.build(params[:coverage], context: "#{context}[:coverage]") unless params[:coverage].nil?
        type.time_period = DateInterval.build(params[:time_period], context: "#{context}[:time_period]") unless params[:time_period].nil?
        type
      end
    end

    module SavingsPlansCoverageData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SavingsPlansCoverageData, context: context)
        type = Types::SavingsPlansCoverageData.new
        type.spend_covered_by_savings_plans = params[:spend_covered_by_savings_plans]
        type.on_demand_cost = params[:on_demand_cost]
        type.total_cost = params[:total_cost]
        type.coverage_percentage = params[:coverage_percentage]
        type
      end
    end

    module SavingsPlansCoverages
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SavingsPlansCoverage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SavingsPlansDataTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SavingsPlansDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SavingsPlansDetails, context: context)
        type = Types::SavingsPlansDetails.new
        type.region = params[:region]
        type.instance_family = params[:instance_family]
        type.offering_id = params[:offering_id]
        type
      end
    end

    module SavingsPlansPurchaseRecommendation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SavingsPlansPurchaseRecommendation, context: context)
        type = Types::SavingsPlansPurchaseRecommendation.new
        type.account_scope = params[:account_scope]
        type.savings_plans_type = params[:savings_plans_type]
        type.term_in_years = params[:term_in_years]
        type.payment_option = params[:payment_option]
        type.lookback_period_in_days = params[:lookback_period_in_days]
        type.savings_plans_purchase_recommendation_details = SavingsPlansPurchaseRecommendationDetailList.build(params[:savings_plans_purchase_recommendation_details], context: "#{context}[:savings_plans_purchase_recommendation_details]") unless params[:savings_plans_purchase_recommendation_details].nil?
        type.savings_plans_purchase_recommendation_summary = SavingsPlansPurchaseRecommendationSummary.build(params[:savings_plans_purchase_recommendation_summary], context: "#{context}[:savings_plans_purchase_recommendation_summary]") unless params[:savings_plans_purchase_recommendation_summary].nil?
        type
      end
    end

    module SavingsPlansPurchaseRecommendationDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SavingsPlansPurchaseRecommendationDetail, context: context)
        type = Types::SavingsPlansPurchaseRecommendationDetail.new
        type.savings_plans_details = SavingsPlansDetails.build(params[:savings_plans_details], context: "#{context}[:savings_plans_details]") unless params[:savings_plans_details].nil?
        type.account_id = params[:account_id]
        type.upfront_cost = params[:upfront_cost]
        type.estimated_roi = params[:estimated_roi]
        type.currency_code = params[:currency_code]
        type.estimated_sp_cost = params[:estimated_sp_cost]
        type.estimated_on_demand_cost = params[:estimated_on_demand_cost]
        type.estimated_on_demand_cost_with_current_commitment = params[:estimated_on_demand_cost_with_current_commitment]
        type.estimated_savings_amount = params[:estimated_savings_amount]
        type.estimated_savings_percentage = params[:estimated_savings_percentage]
        type.hourly_commitment_to_purchase = params[:hourly_commitment_to_purchase]
        type.estimated_average_utilization = params[:estimated_average_utilization]
        type.estimated_monthly_savings_amount = params[:estimated_monthly_savings_amount]
        type.current_minimum_hourly_on_demand_spend = params[:current_minimum_hourly_on_demand_spend]
        type.current_maximum_hourly_on_demand_spend = params[:current_maximum_hourly_on_demand_spend]
        type.current_average_hourly_on_demand_spend = params[:current_average_hourly_on_demand_spend]
        type
      end
    end

    module SavingsPlansPurchaseRecommendationDetailList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SavingsPlansPurchaseRecommendationDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SavingsPlansPurchaseRecommendationMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SavingsPlansPurchaseRecommendationMetadata, context: context)
        type = Types::SavingsPlansPurchaseRecommendationMetadata.new
        type.recommendation_id = params[:recommendation_id]
        type.generation_timestamp = params[:generation_timestamp]
        type.additional_metadata = params[:additional_metadata]
        type
      end
    end

    module SavingsPlansPurchaseRecommendationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SavingsPlansPurchaseRecommendationSummary, context: context)
        type = Types::SavingsPlansPurchaseRecommendationSummary.new
        type.estimated_roi = params[:estimated_roi]
        type.currency_code = params[:currency_code]
        type.estimated_total_cost = params[:estimated_total_cost]
        type.current_on_demand_spend = params[:current_on_demand_spend]
        type.estimated_savings_amount = params[:estimated_savings_amount]
        type.total_recommendation_count = params[:total_recommendation_count]
        type.daily_commitment_to_purchase = params[:daily_commitment_to_purchase]
        type.hourly_commitment_to_purchase = params[:hourly_commitment_to_purchase]
        type.estimated_savings_percentage = params[:estimated_savings_percentage]
        type.estimated_monthly_savings_amount = params[:estimated_monthly_savings_amount]
        type.estimated_on_demand_cost_with_current_commitment = params[:estimated_on_demand_cost_with_current_commitment]
        type
      end
    end

    module SavingsPlansSavings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SavingsPlansSavings, context: context)
        type = Types::SavingsPlansSavings.new
        type.net_savings = params[:net_savings]
        type.on_demand_cost_equivalent = params[:on_demand_cost_equivalent]
        type
      end
    end

    module SavingsPlansUtilization
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SavingsPlansUtilization, context: context)
        type = Types::SavingsPlansUtilization.new
        type.total_commitment = params[:total_commitment]
        type.used_commitment = params[:used_commitment]
        type.unused_commitment = params[:unused_commitment]
        type.utilization_percentage = params[:utilization_percentage]
        type
      end
    end

    module SavingsPlansUtilizationAggregates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SavingsPlansUtilizationAggregates, context: context)
        type = Types::SavingsPlansUtilizationAggregates.new
        type.utilization = SavingsPlansUtilization.build(params[:utilization], context: "#{context}[:utilization]") unless params[:utilization].nil?
        type.savings = SavingsPlansSavings.build(params[:savings], context: "#{context}[:savings]") unless params[:savings].nil?
        type.amortized_commitment = SavingsPlansAmortizedCommitment.build(params[:amortized_commitment], context: "#{context}[:amortized_commitment]") unless params[:amortized_commitment].nil?
        type
      end
    end

    module SavingsPlansUtilizationByTime
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SavingsPlansUtilizationByTime, context: context)
        type = Types::SavingsPlansUtilizationByTime.new
        type.time_period = DateInterval.build(params[:time_period], context: "#{context}[:time_period]") unless params[:time_period].nil?
        type.utilization = SavingsPlansUtilization.build(params[:utilization], context: "#{context}[:utilization]") unless params[:utilization].nil?
        type.savings = SavingsPlansSavings.build(params[:savings], context: "#{context}[:savings]") unless params[:savings].nil?
        type.amortized_commitment = SavingsPlansAmortizedCommitment.build(params[:amortized_commitment], context: "#{context}[:amortized_commitment]") unless params[:amortized_commitment].nil?
        type
      end
    end

    module SavingsPlansUtilizationDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SavingsPlansUtilizationDetail, context: context)
        type = Types::SavingsPlansUtilizationDetail.new
        type.savings_plan_arn = params[:savings_plan_arn]
        type.attributes = Attributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.utilization = SavingsPlansUtilization.build(params[:utilization], context: "#{context}[:utilization]") unless params[:utilization].nil?
        type.savings = SavingsPlansSavings.build(params[:savings], context: "#{context}[:savings]") unless params[:savings].nil?
        type.amortized_commitment = SavingsPlansAmortizedCommitment.build(params[:amortized_commitment], context: "#{context}[:amortized_commitment]") unless params[:amortized_commitment].nil?
        type
      end
    end

    module SavingsPlansUtilizationDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SavingsPlansUtilizationDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SavingsPlansUtilizationsByTime
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SavingsPlansUtilizationByTime.build(element, context: "#{context}[#{index}]") unless element.nil?
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

    module ServiceSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceSpecification, context: context)
        type = Types::ServiceSpecification.new
        type.ec2_specification = EC2Specification.build(params[:ec2_specification], context: "#{context}[:ec2_specification]") unless params[:ec2_specification].nil?
        type
      end
    end

    module SortDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SortDefinition, context: context)
        type = Types::SortDefinition.new
        type.key = params[:key]
        type.sort_order = params[:sort_order]
        type
      end
    end

    module SortDefinitions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SortDefinition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Subscriber
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Subscriber, context: context)
        type = Types::Subscriber.new
        type.address = params[:address]
        type.type = params[:type]
        type.status = params[:status]
        type
      end
    end

    module Subscribers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Subscriber.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagList
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
        type.resource_tags = ResourceTagList.build(params[:resource_tags], context: "#{context}[:resource_tags]") unless params[:resource_tags].nil?
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

    module TagValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagValues, context: context)
        type = Types::TagValues.new
        type.key = params[:key]
        type.values = Values.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.match_options = MatchOptions.build(params[:match_options], context: "#{context}[:match_options]") unless params[:match_options].nil?
        type
      end
    end

    module TagValuesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TagValues.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TargetInstance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetInstance, context: context)
        type = Types::TargetInstance.new
        type.estimated_monthly_cost = params[:estimated_monthly_cost]
        type.estimated_monthly_savings = params[:estimated_monthly_savings]
        type.currency_code = params[:currency_code]
        type.default_target_instance = params[:default_target_instance]
        type.resource_details = ResourceDetails.build(params[:resource_details], context: "#{context}[:resource_details]") unless params[:resource_details].nil?
        type.expected_resource_utilization = ResourceUtilization.build(params[:expected_resource_utilization], context: "#{context}[:expected_resource_utilization]") unless params[:expected_resource_utilization].nil?
        type.platform_differences = PlatformDifferences.build(params[:platform_differences], context: "#{context}[:platform_differences]") unless params[:platform_differences].nil?
        type
      end
    end

    module TargetInstancesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TargetInstance.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TerminateRecommendationDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TerminateRecommendationDetail, context: context)
        type = Types::TerminateRecommendationDetail.new
        type.estimated_monthly_savings = params[:estimated_monthly_savings]
        type.currency_code = params[:currency_code]
        type
      end
    end

    module TooManyTagsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTagsException, context: context)
        type = Types::TooManyTagsException.new
        type.message = params[:message]
        type.resource_name = params[:resource_name]
        type
      end
    end

    module TotalImpactFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TotalImpactFilter, context: context)
        type = Types::TotalImpactFilter.new
        type.numeric_operator = params[:numeric_operator]
        type.start_value = params[:start_value]
        type.end_value = params[:end_value]
        type
      end
    end

    module UnknownMonitorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnknownMonitorException, context: context)
        type = Types::UnknownMonitorException.new
        type.message = params[:message]
        type
      end
    end

    module UnknownSubscriptionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnknownSubscriptionException, context: context)
        type = Types::UnknownSubscriptionException.new
        type.message = params[:message]
        type
      end
    end

    module UnresolvableUsageUnitException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnresolvableUsageUnitException, context: context)
        type = Types::UnresolvableUsageUnitException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.resource_tag_keys = ResourceTagKeyList.build(params[:resource_tag_keys], context: "#{context}[:resource_tag_keys]") unless params[:resource_tag_keys].nil?
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

    module UpdateAnomalyMonitorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAnomalyMonitorInput, context: context)
        type = Types::UpdateAnomalyMonitorInput.new
        type.monitor_arn = params[:monitor_arn]
        type.monitor_name = params[:monitor_name]
        type
      end
    end

    module UpdateAnomalyMonitorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAnomalyMonitorOutput, context: context)
        type = Types::UpdateAnomalyMonitorOutput.new
        type.monitor_arn = params[:monitor_arn]
        type
      end
    end

    module UpdateAnomalySubscriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAnomalySubscriptionInput, context: context)
        type = Types::UpdateAnomalySubscriptionInput.new
        type.subscription_arn = params[:subscription_arn]
        type.threshold = params[:threshold]
        type.frequency = params[:frequency]
        type.monitor_arn_list = MonitorArnList.build(params[:monitor_arn_list], context: "#{context}[:monitor_arn_list]") unless params[:monitor_arn_list].nil?
        type.subscribers = Subscribers.build(params[:subscribers], context: "#{context}[:subscribers]") unless params[:subscribers].nil?
        type.subscription_name = params[:subscription_name]
        type
      end
    end

    module UpdateAnomalySubscriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAnomalySubscriptionOutput, context: context)
        type = Types::UpdateAnomalySubscriptionOutput.new
        type.subscription_arn = params[:subscription_arn]
        type
      end
    end

    module UpdateCostAllocationTagsStatusError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCostAllocationTagsStatusError, context: context)
        type = Types::UpdateCostAllocationTagsStatusError.new
        type.tag_key = params[:tag_key]
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module UpdateCostAllocationTagsStatusErrors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UpdateCostAllocationTagsStatusError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UpdateCostAllocationTagsStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCostAllocationTagsStatusInput, context: context)
        type = Types::UpdateCostAllocationTagsStatusInput.new
        type.cost_allocation_tags_status = CostAllocationTagStatusList.build(params[:cost_allocation_tags_status], context: "#{context}[:cost_allocation_tags_status]") unless params[:cost_allocation_tags_status].nil?
        type
      end
    end

    module UpdateCostAllocationTagsStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCostAllocationTagsStatusOutput, context: context)
        type = Types::UpdateCostAllocationTagsStatusOutput.new
        type.errors = UpdateCostAllocationTagsStatusErrors.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module UpdateCostCategoryDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCostCategoryDefinitionInput, context: context)
        type = Types::UpdateCostCategoryDefinitionInput.new
        type.cost_category_arn = params[:cost_category_arn]
        type.rule_version = params[:rule_version]
        type.rules = CostCategoryRulesList.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type.default_value = params[:default_value]
        type.split_charge_rules = CostCategorySplitChargeRulesList.build(params[:split_charge_rules], context: "#{context}[:split_charge_rules]") unless params[:split_charge_rules].nil?
        type
      end
    end

    module UpdateCostCategoryDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCostCategoryDefinitionOutput, context: context)
        type = Types::UpdateCostCategoryDefinitionOutput.new
        type.cost_category_arn = params[:cost_category_arn]
        type.effective_start = params[:effective_start]
        type
      end
    end

    module UtilizationByTime
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UtilizationByTime, context: context)
        type = Types::UtilizationByTime.new
        type.time_period = DateInterval.build(params[:time_period], context: "#{context}[:time_period]") unless params[:time_period].nil?
        type.groups = ReservationUtilizationGroups.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type.total = ReservationAggregates.build(params[:total], context: "#{context}[:total]") unless params[:total].nil?
        type
      end
    end

    module UtilizationsByTime
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UtilizationByTime.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Values
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

  end
end
