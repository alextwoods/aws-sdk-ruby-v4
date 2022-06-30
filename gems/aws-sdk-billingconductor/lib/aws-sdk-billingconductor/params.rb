# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Billingconductor
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AccountAssociationsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccountAssociationsListElement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AccountAssociationsListElement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountAssociationsListElement, context: context)
        type = Types::AccountAssociationsListElement.new
        type.account_id = params[:account_id]
        type.billing_group_arn = params[:billing_group_arn]
        type.account_name = params[:account_name]
        type.account_email = params[:account_email]
        type
      end
    end

    module AccountGrouping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountGrouping, context: context)
        type = Types::AccountGrouping.new
        type.linked_account_ids = AccountIdList.build(params[:linked_account_ids], context: "#{context}[:linked_account_ids]") unless params[:linked_account_ids].nil?
        type
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

    module AssociateAccountsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateAccountsInput, context: context)
        type = Types::AssociateAccountsInput.new
        type.arn = params[:arn]
        type.account_ids = AccountIdList.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type
      end
    end

    module AssociateAccountsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateAccountsOutput, context: context)
        type = Types::AssociateAccountsOutput.new
        type.arn = params[:arn]
        type
      end
    end

    module AssociatePricingRulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociatePricingRulesInput, context: context)
        type = Types::AssociatePricingRulesInput.new
        type.arn = params[:arn]
        type.pricing_rule_arns = PricingRuleArnsNonEmptyInput.build(params[:pricing_rule_arns], context: "#{context}[:pricing_rule_arns]") unless params[:pricing_rule_arns].nil?
        type
      end
    end

    module AssociatePricingRulesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociatePricingRulesOutput, context: context)
        type = Types::AssociatePricingRulesOutput.new
        type.arn = params[:arn]
        type
      end
    end

    module AssociateResourceError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateResourceError, context: context)
        type = Types::AssociateResourceError.new
        type.message = params[:message]
        type.reason = params[:reason]
        type
      end
    end

    module AssociateResourceResponseElement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateResourceResponseElement, context: context)
        type = Types::AssociateResourceResponseElement.new
        type.arn = params[:arn]
        type.error = AssociateResourceError.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type
      end
    end

    module AssociateResourcesResponseList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssociateResourceResponseElement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchAssociateResourcesToCustomLineItemInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchAssociateResourcesToCustomLineItemInput, context: context)
        type = Types::BatchAssociateResourcesToCustomLineItemInput.new
        type.target_arn = params[:target_arn]
        type.resource_arns = CustomLineItemBatchAssociationsList.build(params[:resource_arns], context: "#{context}[:resource_arns]") unless params[:resource_arns].nil?
        type.billing_period_range = CustomLineItemBillingPeriodRange.build(params[:billing_period_range], context: "#{context}[:billing_period_range]") unless params[:billing_period_range].nil?
        type
      end
    end

    module BatchAssociateResourcesToCustomLineItemOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchAssociateResourcesToCustomLineItemOutput, context: context)
        type = Types::BatchAssociateResourcesToCustomLineItemOutput.new
        type.successfully_associated_resources = AssociateResourcesResponseList.build(params[:successfully_associated_resources], context: "#{context}[:successfully_associated_resources]") unless params[:successfully_associated_resources].nil?
        type.failed_associated_resources = AssociateResourcesResponseList.build(params[:failed_associated_resources], context: "#{context}[:failed_associated_resources]") unless params[:failed_associated_resources].nil?
        type
      end
    end

    module BatchDisassociateResourcesFromCustomLineItemInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDisassociateResourcesFromCustomLineItemInput, context: context)
        type = Types::BatchDisassociateResourcesFromCustomLineItemInput.new
        type.target_arn = params[:target_arn]
        type.resource_arns = CustomLineItemBatchDisassociationsList.build(params[:resource_arns], context: "#{context}[:resource_arns]") unless params[:resource_arns].nil?
        type.billing_period_range = CustomLineItemBillingPeriodRange.build(params[:billing_period_range], context: "#{context}[:billing_period_range]") unless params[:billing_period_range].nil?
        type
      end
    end

    module BatchDisassociateResourcesFromCustomLineItemOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDisassociateResourcesFromCustomLineItemOutput, context: context)
        type = Types::BatchDisassociateResourcesFromCustomLineItemOutput.new
        type.successfully_disassociated_resources = DisassociateResourcesResponseList.build(params[:successfully_disassociated_resources], context: "#{context}[:successfully_disassociated_resources]") unless params[:successfully_disassociated_resources].nil?
        type.failed_disassociated_resources = DisassociateResourcesResponseList.build(params[:failed_disassociated_resources], context: "#{context}[:failed_disassociated_resources]") unless params[:failed_disassociated_resources].nil?
        type
      end
    end

    module BillingGroupArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BillingGroupCostReportElement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BillingGroupCostReportElement, context: context)
        type = Types::BillingGroupCostReportElement.new
        type.arn = params[:arn]
        type.aws_cost = params[:aws_cost]
        type.proforma_cost = params[:proforma_cost]
        type.margin = params[:margin]
        type.margin_percentage = params[:margin_percentage]
        type.currency = params[:currency]
        type
      end
    end

    module BillingGroupCostReportList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BillingGroupCostReportElement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BillingGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BillingGroupListElement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BillingGroupListElement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BillingGroupListElement, context: context)
        type = Types::BillingGroupListElement.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.description = params[:description]
        type.primary_account_id = params[:primary_account_id]
        type.computation_preference = ComputationPreference.build(params[:computation_preference], context: "#{context}[:computation_preference]") unless params[:computation_preference].nil?
        type.size = params[:size]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.status = params[:status]
        type.status_reason = params[:status_reason]
        type
      end
    end

    module ComputationPreference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComputationPreference, context: context)
        type = Types::ComputationPreference.new
        type.pricing_plan_arn = params[:pricing_plan_arn]
        type
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

    module CreateBillingGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBillingGroupInput, context: context)
        type = Types::CreateBillingGroupInput.new
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.name = params[:name]
        type.account_grouping = AccountGrouping.build(params[:account_grouping], context: "#{context}[:account_grouping]") unless params[:account_grouping].nil?
        type.computation_preference = ComputationPreference.build(params[:computation_preference], context: "#{context}[:computation_preference]") unless params[:computation_preference].nil?
        type.primary_account_id = params[:primary_account_id]
        type.description = params[:description]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateBillingGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBillingGroupOutput, context: context)
        type = Types::CreateBillingGroupOutput.new
        type.arn = params[:arn]
        type
      end
    end

    module CreateCustomLineItemInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCustomLineItemInput, context: context)
        type = Types::CreateCustomLineItemInput.new
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.name = params[:name]
        type.description = params[:description]
        type.billing_group_arn = params[:billing_group_arn]
        type.billing_period_range = CustomLineItemBillingPeriodRange.build(params[:billing_period_range], context: "#{context}[:billing_period_range]") unless params[:billing_period_range].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.charge_details = CustomLineItemChargeDetails.build(params[:charge_details], context: "#{context}[:charge_details]") unless params[:charge_details].nil?
        type
      end
    end

    module CreateCustomLineItemOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCustomLineItemOutput, context: context)
        type = Types::CreateCustomLineItemOutput.new
        type.arn = params[:arn]
        type
      end
    end

    module CreatePricingPlanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePricingPlanInput, context: context)
        type = Types::CreatePricingPlanInput.new
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.name = params[:name]
        type.description = params[:description]
        type.pricing_rule_arns = PricingRuleArnsInput.build(params[:pricing_rule_arns], context: "#{context}[:pricing_rule_arns]") unless params[:pricing_rule_arns].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreatePricingPlanOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePricingPlanOutput, context: context)
        type = Types::CreatePricingPlanOutput.new
        type.arn = params[:arn]
        type
      end
    end

    module CreatePricingRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePricingRuleInput, context: context)
        type = Types::CreatePricingRuleInput.new
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.name = params[:name]
        type.description = params[:description]
        type.scope = params[:scope]
        type.type = params[:type]
        type.modifier_percentage = params[:modifier_percentage]
        type.service = params[:service]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreatePricingRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePricingRuleOutput, context: context)
        type = Types::CreatePricingRuleOutput.new
        type.arn = params[:arn]
        type
      end
    end

    module CustomLineItemArns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CustomLineItemAssociationsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CustomLineItemBatchAssociationsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CustomLineItemBatchDisassociationsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CustomLineItemBillingPeriodRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomLineItemBillingPeriodRange, context: context)
        type = Types::CustomLineItemBillingPeriodRange.new
        type.inclusive_start_billing_period = params[:inclusive_start_billing_period]
        type.exclusive_end_billing_period = params[:exclusive_end_billing_period]
        type
      end
    end

    module CustomLineItemChargeDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomLineItemChargeDetails, context: context)
        type = Types::CustomLineItemChargeDetails.new
        type.flat = CustomLineItemFlatChargeDetails.build(params[:flat], context: "#{context}[:flat]") unless params[:flat].nil?
        type.percentage = CustomLineItemPercentageChargeDetails.build(params[:percentage], context: "#{context}[:percentage]") unless params[:percentage].nil?
        type.type = params[:type]
        type
      end
    end

    module CustomLineItemFlatChargeDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomLineItemFlatChargeDetails, context: context)
        type = Types::CustomLineItemFlatChargeDetails.new
        type.charge_value = params[:charge_value]
        type
      end
    end

    module CustomLineItemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CustomLineItemListElement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CustomLineItemListElement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomLineItemListElement, context: context)
        type = Types::CustomLineItemListElement.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.charge_details = ListCustomLineItemChargeDetails.build(params[:charge_details], context: "#{context}[:charge_details]") unless params[:charge_details].nil?
        type.currency_code = params[:currency_code]
        type.description = params[:description]
        type.product_code = params[:product_code]
        type.billing_group_arn = params[:billing_group_arn]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.association_size = params[:association_size]
        type
      end
    end

    module CustomLineItemNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CustomLineItemPercentageChargeDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomLineItemPercentageChargeDetails, context: context)
        type = Types::CustomLineItemPercentageChargeDetails.new
        type.percentage_value = params[:percentage_value]
        type.associated_values = CustomLineItemAssociationsList.build(params[:associated_values], context: "#{context}[:associated_values]") unless params[:associated_values].nil?
        type
      end
    end

    module DeleteBillingGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBillingGroupInput, context: context)
        type = Types::DeleteBillingGroupInput.new
        type.arn = params[:arn]
        type
      end
    end

    module DeleteBillingGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBillingGroupOutput, context: context)
        type = Types::DeleteBillingGroupOutput.new
        type.arn = params[:arn]
        type
      end
    end

    module DeleteCustomLineItemInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCustomLineItemInput, context: context)
        type = Types::DeleteCustomLineItemInput.new
        type.arn = params[:arn]
        type.billing_period_range = CustomLineItemBillingPeriodRange.build(params[:billing_period_range], context: "#{context}[:billing_period_range]") unless params[:billing_period_range].nil?
        type
      end
    end

    module DeleteCustomLineItemOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCustomLineItemOutput, context: context)
        type = Types::DeleteCustomLineItemOutput.new
        type.arn = params[:arn]
        type
      end
    end

    module DeletePricingPlanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePricingPlanInput, context: context)
        type = Types::DeletePricingPlanInput.new
        type.arn = params[:arn]
        type
      end
    end

    module DeletePricingPlanOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePricingPlanOutput, context: context)
        type = Types::DeletePricingPlanOutput.new
        type.arn = params[:arn]
        type
      end
    end

    module DeletePricingRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePricingRuleInput, context: context)
        type = Types::DeletePricingRuleInput.new
        type.arn = params[:arn]
        type
      end
    end

    module DeletePricingRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePricingRuleOutput, context: context)
        type = Types::DeletePricingRuleOutput.new
        type.arn = params[:arn]
        type
      end
    end

    module DisassociateAccountsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateAccountsInput, context: context)
        type = Types::DisassociateAccountsInput.new
        type.arn = params[:arn]
        type.account_ids = AccountIdList.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type
      end
    end

    module DisassociateAccountsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateAccountsOutput, context: context)
        type = Types::DisassociateAccountsOutput.new
        type.arn = params[:arn]
        type
      end
    end

    module DisassociatePricingRulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociatePricingRulesInput, context: context)
        type = Types::DisassociatePricingRulesInput.new
        type.arn = params[:arn]
        type.pricing_rule_arns = PricingRuleArnsNonEmptyInput.build(params[:pricing_rule_arns], context: "#{context}[:pricing_rule_arns]") unless params[:pricing_rule_arns].nil?
        type
      end
    end

    module DisassociatePricingRulesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociatePricingRulesOutput, context: context)
        type = Types::DisassociatePricingRulesOutput.new
        type.arn = params[:arn]
        type
      end
    end

    module DisassociateResourceResponseElement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateResourceResponseElement, context: context)
        type = Types::DisassociateResourceResponseElement.new
        type.arn = params[:arn]
        type.error = AssociateResourceError.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type
      end
    end

    module DisassociateResourcesResponseList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DisassociateResourceResponseElement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module ListAccountAssociationsFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccountAssociationsFilter, context: context)
        type = Types::ListAccountAssociationsFilter.new
        type.association = params[:association]
        type.account_id = params[:account_id]
        type
      end
    end

    module ListAccountAssociationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccountAssociationsInput, context: context)
        type = Types::ListAccountAssociationsInput.new
        type.billing_period = params[:billing_period]
        type.filters = ListAccountAssociationsFilter.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAccountAssociationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccountAssociationsOutput, context: context)
        type = Types::ListAccountAssociationsOutput.new
        type.linked_accounts = AccountAssociationsList.build(params[:linked_accounts], context: "#{context}[:linked_accounts]") unless params[:linked_accounts].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBillingGroupCostReportsFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBillingGroupCostReportsFilter, context: context)
        type = Types::ListBillingGroupCostReportsFilter.new
        type.billing_group_arns = BillingGroupArnList.build(params[:billing_group_arns], context: "#{context}[:billing_group_arns]") unless params[:billing_group_arns].nil?
        type
      end
    end

    module ListBillingGroupCostReportsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBillingGroupCostReportsInput, context: context)
        type = Types::ListBillingGroupCostReportsInput.new
        type.billing_period = params[:billing_period]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.filters = ListBillingGroupCostReportsFilter.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListBillingGroupCostReportsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBillingGroupCostReportsOutput, context: context)
        type = Types::ListBillingGroupCostReportsOutput.new
        type.billing_group_cost_reports = BillingGroupCostReportList.build(params[:billing_group_cost_reports], context: "#{context}[:billing_group_cost_reports]") unless params[:billing_group_cost_reports].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBillingGroupsFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBillingGroupsFilter, context: context)
        type = Types::ListBillingGroupsFilter.new
        type.arns = BillingGroupArnList.build(params[:arns], context: "#{context}[:arns]") unless params[:arns].nil?
        type.pricing_plan = params[:pricing_plan]
        type
      end
    end

    module ListBillingGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBillingGroupsInput, context: context)
        type = Types::ListBillingGroupsInput.new
        type.billing_period = params[:billing_period]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.filters = ListBillingGroupsFilter.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListBillingGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBillingGroupsOutput, context: context)
        type = Types::ListBillingGroupsOutput.new
        type.billing_groups = BillingGroupList.build(params[:billing_groups], context: "#{context}[:billing_groups]") unless params[:billing_groups].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCustomLineItemChargeDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCustomLineItemChargeDetails, context: context)
        type = Types::ListCustomLineItemChargeDetails.new
        type.flat = ListCustomLineItemFlatChargeDetails.build(params[:flat], context: "#{context}[:flat]") unless params[:flat].nil?
        type.percentage = ListCustomLineItemPercentageChargeDetails.build(params[:percentage], context: "#{context}[:percentage]") unless params[:percentage].nil?
        type.type = params[:type]
        type
      end
    end

    module ListCustomLineItemFlatChargeDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCustomLineItemFlatChargeDetails, context: context)
        type = Types::ListCustomLineItemFlatChargeDetails.new
        type.charge_value = params[:charge_value]
        type
      end
    end

    module ListCustomLineItemPercentageChargeDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCustomLineItemPercentageChargeDetails, context: context)
        type = Types::ListCustomLineItemPercentageChargeDetails.new
        type.percentage_value = params[:percentage_value]
        type
      end
    end

    module ListCustomLineItemsFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCustomLineItemsFilter, context: context)
        type = Types::ListCustomLineItemsFilter.new
        type.names = CustomLineItemNameList.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type.billing_groups = BillingGroupArnList.build(params[:billing_groups], context: "#{context}[:billing_groups]") unless params[:billing_groups].nil?
        type.arns = CustomLineItemArns.build(params[:arns], context: "#{context}[:arns]") unless params[:arns].nil?
        type
      end
    end

    module ListCustomLineItemsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCustomLineItemsInput, context: context)
        type = Types::ListCustomLineItemsInput.new
        type.billing_period = params[:billing_period]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.filters = ListCustomLineItemsFilter.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListCustomLineItemsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCustomLineItemsOutput, context: context)
        type = Types::ListCustomLineItemsOutput.new
        type.custom_line_items = CustomLineItemList.build(params[:custom_line_items], context: "#{context}[:custom_line_items]") unless params[:custom_line_items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPricingPlansAssociatedWithPricingRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPricingPlansAssociatedWithPricingRuleInput, context: context)
        type = Types::ListPricingPlansAssociatedWithPricingRuleInput.new
        type.billing_period = params[:billing_period]
        type.pricing_rule_arn = params[:pricing_rule_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPricingPlansAssociatedWithPricingRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPricingPlansAssociatedWithPricingRuleOutput, context: context)
        type = Types::ListPricingPlansAssociatedWithPricingRuleOutput.new
        type.billing_period = params[:billing_period]
        type.pricing_rule_arn = params[:pricing_rule_arn]
        type.pricing_plan_arns = PricingPlanArns.build(params[:pricing_plan_arns], context: "#{context}[:pricing_plan_arns]") unless params[:pricing_plan_arns].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPricingPlansFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPricingPlansFilter, context: context)
        type = Types::ListPricingPlansFilter.new
        type.arns = PricingPlanArns.build(params[:arns], context: "#{context}[:arns]") unless params[:arns].nil?
        type
      end
    end

    module ListPricingPlansInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPricingPlansInput, context: context)
        type = Types::ListPricingPlansInput.new
        type.billing_period = params[:billing_period]
        type.filters = ListPricingPlansFilter.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPricingPlansOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPricingPlansOutput, context: context)
        type = Types::ListPricingPlansOutput.new
        type.billing_period = params[:billing_period]
        type.pricing_plans = PricingPlanList.build(params[:pricing_plans], context: "#{context}[:pricing_plans]") unless params[:pricing_plans].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPricingRulesAssociatedToPricingPlanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPricingRulesAssociatedToPricingPlanInput, context: context)
        type = Types::ListPricingRulesAssociatedToPricingPlanInput.new
        type.billing_period = params[:billing_period]
        type.pricing_plan_arn = params[:pricing_plan_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPricingRulesAssociatedToPricingPlanOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPricingRulesAssociatedToPricingPlanOutput, context: context)
        type = Types::ListPricingRulesAssociatedToPricingPlanOutput.new
        type.billing_period = params[:billing_period]
        type.pricing_plan_arn = params[:pricing_plan_arn]
        type.pricing_rule_arns = PricingRuleArns.build(params[:pricing_rule_arns], context: "#{context}[:pricing_rule_arns]") unless params[:pricing_rule_arns].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPricingRulesFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPricingRulesFilter, context: context)
        type = Types::ListPricingRulesFilter.new
        type.arns = PricingRuleArns.build(params[:arns], context: "#{context}[:arns]") unless params[:arns].nil?
        type
      end
    end

    module ListPricingRulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPricingRulesInput, context: context)
        type = Types::ListPricingRulesInput.new
        type.billing_period = params[:billing_period]
        type.filters = ListPricingRulesFilter.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPricingRulesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPricingRulesOutput, context: context)
        type = Types::ListPricingRulesOutput.new
        type.billing_period = params[:billing_period]
        type.pricing_rules = PricingRuleList.build(params[:pricing_rules], context: "#{context}[:pricing_rules]") unless params[:pricing_rules].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListResourcesAssociatedToCustomLineItemFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourcesAssociatedToCustomLineItemFilter, context: context)
        type = Types::ListResourcesAssociatedToCustomLineItemFilter.new
        type.relationship = params[:relationship]
        type
      end
    end

    module ListResourcesAssociatedToCustomLineItemInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourcesAssociatedToCustomLineItemInput, context: context)
        type = Types::ListResourcesAssociatedToCustomLineItemInput.new
        type.billing_period = params[:billing_period]
        type.arn = params[:arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.filters = ListResourcesAssociatedToCustomLineItemFilter.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListResourcesAssociatedToCustomLineItemOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourcesAssociatedToCustomLineItemOutput, context: context)
        type = Types::ListResourcesAssociatedToCustomLineItemOutput.new
        type.arn = params[:arn]
        type.associated_resources = ListResourcesAssociatedToCustomLineItemResponseList.build(params[:associated_resources], context: "#{context}[:associated_resources]") unless params[:associated_resources].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListResourcesAssociatedToCustomLineItemResponseElement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourcesAssociatedToCustomLineItemResponseElement, context: context)
        type = Types::ListResourcesAssociatedToCustomLineItemResponseElement.new
        type.arn = params[:arn]
        type.relationship = params[:relationship]
        type
      end
    end

    module ListResourcesAssociatedToCustomLineItemResponseList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListResourcesAssociatedToCustomLineItemResponseElement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PricingPlanArns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PricingPlanList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PricingPlanListElement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PricingPlanListElement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PricingPlanListElement, context: context)
        type = Types::PricingPlanListElement.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.description = params[:description]
        type.size = params[:size]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module PricingRuleArns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PricingRuleArnsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PricingRuleArnsNonEmptyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PricingRuleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PricingRuleListElement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PricingRuleListElement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PricingRuleListElement, context: context)
        type = Types::PricingRuleListElement.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.description = params[:description]
        type.scope = params[:scope]
        type.type = params[:type]
        type.modifier_percentage = params[:modifier_percentage]
        type.service = params[:service]
        type.associated_pricing_plan_count = params[:associated_pricing_plan_count]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
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

    module ServiceLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceLimitExceededException, context: context)
        type = Types::ServiceLimitExceededException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type.limit_code = params[:limit_code]
        type.service_code = params[:service_code]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type.retry_after_seconds = params[:retry_after_seconds]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module UpdateBillingGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBillingGroupInput, context: context)
        type = Types::UpdateBillingGroupInput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.status = params[:status]
        type.computation_preference = ComputationPreference.build(params[:computation_preference], context: "#{context}[:computation_preference]") unless params[:computation_preference].nil?
        type.description = params[:description]
        type
      end
    end

    module UpdateBillingGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBillingGroupOutput, context: context)
        type = Types::UpdateBillingGroupOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.primary_account_id = params[:primary_account_id]
        type.pricing_plan_arn = params[:pricing_plan_arn]
        type.size = params[:size]
        type.last_modified_time = params[:last_modified_time]
        type.status = params[:status]
        type.status_reason = params[:status_reason]
        type
      end
    end

    module UpdateCustomLineItemChargeDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCustomLineItemChargeDetails, context: context)
        type = Types::UpdateCustomLineItemChargeDetails.new
        type.flat = UpdateCustomLineItemFlatChargeDetails.build(params[:flat], context: "#{context}[:flat]") unless params[:flat].nil?
        type.percentage = UpdateCustomLineItemPercentageChargeDetails.build(params[:percentage], context: "#{context}[:percentage]") unless params[:percentage].nil?
        type
      end
    end

    module UpdateCustomLineItemFlatChargeDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCustomLineItemFlatChargeDetails, context: context)
        type = Types::UpdateCustomLineItemFlatChargeDetails.new
        type.charge_value = params[:charge_value]
        type
      end
    end

    module UpdateCustomLineItemInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCustomLineItemInput, context: context)
        type = Types::UpdateCustomLineItemInput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.charge_details = UpdateCustomLineItemChargeDetails.build(params[:charge_details], context: "#{context}[:charge_details]") unless params[:charge_details].nil?
        type.billing_period_range = CustomLineItemBillingPeriodRange.build(params[:billing_period_range], context: "#{context}[:billing_period_range]") unless params[:billing_period_range].nil?
        type
      end
    end

    module UpdateCustomLineItemOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCustomLineItemOutput, context: context)
        type = Types::UpdateCustomLineItemOutput.new
        type.arn = params[:arn]
        type.billing_group_arn = params[:billing_group_arn]
        type.name = params[:name]
        type.description = params[:description]
        type.charge_details = ListCustomLineItemChargeDetails.build(params[:charge_details], context: "#{context}[:charge_details]") unless params[:charge_details].nil?
        type.last_modified_time = params[:last_modified_time]
        type.association_size = params[:association_size]
        type
      end
    end

    module UpdateCustomLineItemPercentageChargeDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCustomLineItemPercentageChargeDetails, context: context)
        type = Types::UpdateCustomLineItemPercentageChargeDetails.new
        type.percentage_value = params[:percentage_value]
        type
      end
    end

    module UpdatePricingPlanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePricingPlanInput, context: context)
        type = Types::UpdatePricingPlanInput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type
      end
    end

    module UpdatePricingPlanOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePricingPlanOutput, context: context)
        type = Types::UpdatePricingPlanOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.size = params[:size]
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module UpdatePricingRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePricingRuleInput, context: context)
        type = Types::UpdatePricingRuleInput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.type = params[:type]
        type.modifier_percentage = params[:modifier_percentage]
        type
      end
    end

    module UpdatePricingRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePricingRuleOutput, context: context)
        type = Types::UpdatePricingRuleOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.description = params[:description]
        type.scope = params[:scope]
        type.type = params[:type]
        type.modifier_percentage = params[:modifier_percentage]
        type.service = params[:service]
        type.associated_pricing_plan_count = params[:associated_pricing_plan_count]
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type.fields = ValidationExceptionFieldList.build(params[:fields], context: "#{context}[:fields]") unless params[:fields].nil?
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

    module ValidationExceptionFieldList
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
