# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Billingconductor
  module Builders

    # Operation Builder for AssociateAccounts
    class AssociateAccounts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/associate-accounts')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['AccountIds'] = AccountIdList.build(input[:account_ids]) unless input[:account_ids].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for AssociatePricingRules
    class AssociatePricingRules
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/associate-pricing-rules')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['PricingRuleArns'] = PricingRuleArnsNonEmptyInput.build(input[:pricing_rule_arns]) unless input[:pricing_rule_arns].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PricingRuleArnsNonEmptyInput
    class PricingRuleArnsNonEmptyInput
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchAssociateResourcesToCustomLineItem
    class BatchAssociateResourcesToCustomLineItem
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/batch-associate-resources-to-custom-line-item')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TargetArn'] = input[:target_arn] unless input[:target_arn].nil?
        data['ResourceArns'] = CustomLineItemBatchAssociationsList.build(input[:resource_arns]) unless input[:resource_arns].nil?
        data['BillingPeriodRange'] = CustomLineItemBillingPeriodRange.build(input[:billing_period_range]) unless input[:billing_period_range].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CustomLineItemBillingPeriodRange
    class CustomLineItemBillingPeriodRange
      def self.build(input)
        data = {}
        data['InclusiveStartBillingPeriod'] = input[:inclusive_start_billing_period] unless input[:inclusive_start_billing_period].nil?
        data['ExclusiveEndBillingPeriod'] = input[:exclusive_end_billing_period] unless input[:exclusive_end_billing_period].nil?
        data
      end
    end

    # List Builder for CustomLineItemBatchAssociationsList
    class CustomLineItemBatchAssociationsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchDisassociateResourcesFromCustomLineItem
    class BatchDisassociateResourcesFromCustomLineItem
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/batch-disassociate-resources-from-custom-line-item')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TargetArn'] = input[:target_arn] unless input[:target_arn].nil?
        data['ResourceArns'] = CustomLineItemBatchDisassociationsList.build(input[:resource_arns]) unless input[:resource_arns].nil?
        data['BillingPeriodRange'] = CustomLineItemBillingPeriodRange.build(input[:billing_period_range]) unless input[:billing_period_range].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CustomLineItemBatchDisassociationsList
    class CustomLineItemBatchDisassociationsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateBillingGroup
    class CreateBillingGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/create-billing-group')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['AccountGrouping'] = AccountGrouping.build(input[:account_grouping]) unless input[:account_grouping].nil?
        data['ComputationPreference'] = ComputationPreference.build(input[:computation_preference]) unless input[:computation_preference].nil?
        data['PrimaryAccountId'] = input[:primary_account_id] unless input[:primary_account_id].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amzn-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end

    # Map Builder for TagMap
    class TagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for ComputationPreference
    class ComputationPreference
      def self.build(input)
        data = {}
        data['PricingPlanArn'] = input[:pricing_plan_arn] unless input[:pricing_plan_arn].nil?
        data
      end
    end

    # Structure Builder for AccountGrouping
    class AccountGrouping
      def self.build(input)
        data = {}
        data['LinkedAccountIds'] = AccountIdList.build(input[:linked_account_ids]) unless input[:linked_account_ids].nil?
        data
      end
    end

    # Operation Builder for CreateCustomLineItem
    class CreateCustomLineItem
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/create-custom-line-item')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['BillingGroupArn'] = input[:billing_group_arn] unless input[:billing_group_arn].nil?
        data['BillingPeriodRange'] = CustomLineItemBillingPeriodRange.build(input[:billing_period_range]) unless input[:billing_period_range].nil?
        data['Tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        data['ChargeDetails'] = CustomLineItemChargeDetails.build(input[:charge_details]) unless input[:charge_details].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amzn-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end

    # Structure Builder for CustomLineItemChargeDetails
    class CustomLineItemChargeDetails
      def self.build(input)
        data = {}
        data['Flat'] = CustomLineItemFlatChargeDetails.build(input[:flat]) unless input[:flat].nil?
        data['Percentage'] = CustomLineItemPercentageChargeDetails.build(input[:percentage]) unless input[:percentage].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Structure Builder for CustomLineItemPercentageChargeDetails
    class CustomLineItemPercentageChargeDetails
      def self.build(input)
        data = {}
        data['PercentageValue'] = Hearth::NumberHelper.serialize(input[:percentage_value]) unless input[:percentage_value].nil?
        data['AssociatedValues'] = CustomLineItemAssociationsList.build(input[:associated_values]) unless input[:associated_values].nil?
        data
      end
    end

    # List Builder for CustomLineItemAssociationsList
    class CustomLineItemAssociationsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CustomLineItemFlatChargeDetails
    class CustomLineItemFlatChargeDetails
      def self.build(input)
        data = {}
        data['ChargeValue'] = Hearth::NumberHelper.serialize(input[:charge_value]) unless input[:charge_value].nil?
        data
      end
    end

    # Operation Builder for CreatePricingPlan
    class CreatePricingPlan
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/create-pricing-plan')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['PricingRuleArns'] = PricingRuleArnsInput.build(input[:pricing_rule_arns]) unless input[:pricing_rule_arns].nil?
        data['Tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amzn-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end

    # List Builder for PricingRuleArnsInput
    class PricingRuleArnsInput
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreatePricingRule
    class CreatePricingRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/create-pricing-rule')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Scope'] = input[:scope] unless input[:scope].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['ModifierPercentage'] = Hearth::NumberHelper.serialize(input[:modifier_percentage]) unless input[:modifier_percentage].nil?
        data['Service'] = input[:service] unless input[:service].nil?
        data['Tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amzn-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end

    # Operation Builder for DeleteBillingGroup
    class DeleteBillingGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/delete-billing-group')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteCustomLineItem
    class DeleteCustomLineItem
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/delete-custom-line-item')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['BillingPeriodRange'] = CustomLineItemBillingPeriodRange.build(input[:billing_period_range]) unless input[:billing_period_range].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeletePricingPlan
    class DeletePricingPlan
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/delete-pricing-plan')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeletePricingRule
    class DeletePricingRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/delete-pricing-rule')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateAccounts
    class DisassociateAccounts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/disassociate-accounts')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['AccountIds'] = AccountIdList.build(input[:account_ids]) unless input[:account_ids].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociatePricingRules
    class DisassociatePricingRules
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/disassociate-pricing-rules')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['PricingRuleArns'] = PricingRuleArnsNonEmptyInput.build(input[:pricing_rule_arns]) unless input[:pricing_rule_arns].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAccountAssociations
    class ListAccountAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/list-account-associations')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['BillingPeriod'] = input[:billing_period] unless input[:billing_period].nil?
        data['Filters'] = ListAccountAssociationsFilter.build(input[:filters]) unless input[:filters].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ListAccountAssociationsFilter
    class ListAccountAssociationsFilter
      def self.build(input)
        data = {}
        data['Association'] = input[:association] unless input[:association].nil?
        data['AccountId'] = input[:account_id] unless input[:account_id].nil?
        data
      end
    end

    # Operation Builder for ListBillingGroupCostReports
    class ListBillingGroupCostReports
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/list-billing-group-cost-reports')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['BillingPeriod'] = input[:billing_period] unless input[:billing_period].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Filters'] = ListBillingGroupCostReportsFilter.build(input[:filters]) unless input[:filters].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ListBillingGroupCostReportsFilter
    class ListBillingGroupCostReportsFilter
      def self.build(input)
        data = {}
        data['BillingGroupArns'] = BillingGroupArnList.build(input[:billing_group_arns]) unless input[:billing_group_arns].nil?
        data
      end
    end

    # List Builder for BillingGroupArnList
    class BillingGroupArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListBillingGroups
    class ListBillingGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/list-billing-groups')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['BillingPeriod'] = input[:billing_period] unless input[:billing_period].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Filters'] = ListBillingGroupsFilter.build(input[:filters]) unless input[:filters].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ListBillingGroupsFilter
    class ListBillingGroupsFilter
      def self.build(input)
        data = {}
        data['Arns'] = BillingGroupArnList.build(input[:arns]) unless input[:arns].nil?
        data['PricingPlan'] = input[:pricing_plan] unless input[:pricing_plan].nil?
        data
      end
    end

    # Operation Builder for ListCustomLineItems
    class ListCustomLineItems
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/list-custom-line-items')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['BillingPeriod'] = input[:billing_period] unless input[:billing_period].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Filters'] = ListCustomLineItemsFilter.build(input[:filters]) unless input[:filters].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ListCustomLineItemsFilter
    class ListCustomLineItemsFilter
      def self.build(input)
        data = {}
        data['Names'] = CustomLineItemNameList.build(input[:names]) unless input[:names].nil?
        data['BillingGroups'] = BillingGroupArnList.build(input[:billing_groups]) unless input[:billing_groups].nil?
        data['Arns'] = CustomLineItemArns.build(input[:arns]) unless input[:arns].nil?
        data
      end
    end

    # List Builder for CustomLineItemArns
    class CustomLineItemArns
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for CustomLineItemNameList
    class CustomLineItemNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListPricingPlans
    class ListPricingPlans
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/list-pricing-plans')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['BillingPeriod'] = input[:billing_period] unless input[:billing_period].nil?
        data['Filters'] = ListPricingPlansFilter.build(input[:filters]) unless input[:filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ListPricingPlansFilter
    class ListPricingPlansFilter
      def self.build(input)
        data = {}
        data['Arns'] = PricingPlanArns.build(input[:arns]) unless input[:arns].nil?
        data
      end
    end

    # List Builder for PricingPlanArns
    class PricingPlanArns
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListPricingPlansAssociatedWithPricingRule
    class ListPricingPlansAssociatedWithPricingRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/list-pricing-plans-associated-with-pricing-rule')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['BillingPeriod'] = input[:billing_period] unless input[:billing_period].nil?
        data['PricingRuleArn'] = input[:pricing_rule_arn] unless input[:pricing_rule_arn].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPricingRules
    class ListPricingRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/list-pricing-rules')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['BillingPeriod'] = input[:billing_period] unless input[:billing_period].nil?
        data['Filters'] = ListPricingRulesFilter.build(input[:filters]) unless input[:filters].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ListPricingRulesFilter
    class ListPricingRulesFilter
      def self.build(input)
        data = {}
        data['Arns'] = PricingRuleArns.build(input[:arns]) unless input[:arns].nil?
        data
      end
    end

    # List Builder for PricingRuleArns
    class PricingRuleArns
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListPricingRulesAssociatedToPricingPlan
    class ListPricingRulesAssociatedToPricingPlan
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/list-pricing-rules-associated-to-pricing-plan')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['BillingPeriod'] = input[:billing_period] unless input[:billing_period].nil?
        data['PricingPlanArn'] = input[:pricing_plan_arn] unless input[:pricing_plan_arn].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListResourcesAssociatedToCustomLineItem
    class ListResourcesAssociatedToCustomLineItem
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/list-resources-associated-to-custom-line-item')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['BillingPeriod'] = input[:billing_period] unless input[:billing_period].nil?
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Filters'] = ListResourcesAssociatedToCustomLineItemFilter.build(input[:filters]) unless input[:filters].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ListResourcesAssociatedToCustomLineItemFilter
    class ListResourcesAssociatedToCustomLineItemFilter
      def self.build(input)
        data = {}
        data['Relationship'] = input[:relationship] unless input[:relationship].nil?
        data
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
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
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
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
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
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
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

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateBillingGroup
    class UpdateBillingGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/update-billing-group')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['ComputationPreference'] = ComputationPreference.build(input[:computation_preference]) unless input[:computation_preference].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateCustomLineItem
    class UpdateCustomLineItem
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/update-custom-line-item')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['ChargeDetails'] = UpdateCustomLineItemChargeDetails.build(input[:charge_details]) unless input[:charge_details].nil?
        data['BillingPeriodRange'] = CustomLineItemBillingPeriodRange.build(input[:billing_period_range]) unless input[:billing_period_range].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for UpdateCustomLineItemChargeDetails
    class UpdateCustomLineItemChargeDetails
      def self.build(input)
        data = {}
        data['Flat'] = UpdateCustomLineItemFlatChargeDetails.build(input[:flat]) unless input[:flat].nil?
        data['Percentage'] = UpdateCustomLineItemPercentageChargeDetails.build(input[:percentage]) unless input[:percentage].nil?
        data
      end
    end

    # Structure Builder for UpdateCustomLineItemPercentageChargeDetails
    class UpdateCustomLineItemPercentageChargeDetails
      def self.build(input)
        data = {}
        data['PercentageValue'] = Hearth::NumberHelper.serialize(input[:percentage_value]) unless input[:percentage_value].nil?
        data
      end
    end

    # Structure Builder for UpdateCustomLineItemFlatChargeDetails
    class UpdateCustomLineItemFlatChargeDetails
      def self.build(input)
        data = {}
        data['ChargeValue'] = Hearth::NumberHelper.serialize(input[:charge_value]) unless input[:charge_value].nil?
        data
      end
    end

    # Operation Builder for UpdatePricingPlan
    class UpdatePricingPlan
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/update-pricing-plan')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdatePricingRule
    class UpdatePricingRule
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/update-pricing-rule')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['ModifierPercentage'] = Hearth::NumberHelper.serialize(input[:modifier_percentage]) unless input[:modifier_percentage].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
