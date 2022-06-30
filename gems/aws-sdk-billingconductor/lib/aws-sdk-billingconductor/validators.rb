# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Billingconductor
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AccountAssociationsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AccountAssociationsListElement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AccountAssociationsListElement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountAssociationsListElement, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:billing_group_arn], ::String, context: "#{context}[:billing_group_arn]")
        Hearth::Validator.validate!(input[:account_name], ::String, context: "#{context}[:account_name]")
        Hearth::Validator.validate!(input[:account_email], ::String, context: "#{context}[:account_email]")
      end
    end

    class AccountGrouping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountGrouping, context: context)
        Validators::AccountIdList.validate!(input[:linked_account_ids], context: "#{context}[:linked_account_ids]") unless input[:linked_account_ids].nil?
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

    class AssociateAccountsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateAccountsInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::AccountIdList.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
      end
    end

    class AssociateAccountsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateAccountsOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class AssociatePricingRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociatePricingRulesInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::PricingRuleArnsNonEmptyInput.validate!(input[:pricing_rule_arns], context: "#{context}[:pricing_rule_arns]") unless input[:pricing_rule_arns].nil?
      end
    end

    class AssociatePricingRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociatePricingRulesOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class AssociateResourceError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateResourceError, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class AssociateResourceResponseElement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateResourceResponseElement, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::AssociateResourceError.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
      end
    end

    class AssociateResourcesResponseList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AssociateResourceResponseElement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchAssociateResourcesToCustomLineItemInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchAssociateResourcesToCustomLineItemInput, context: context)
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
        Validators::CustomLineItemBatchAssociationsList.validate!(input[:resource_arns], context: "#{context}[:resource_arns]") unless input[:resource_arns].nil?
        Validators::CustomLineItemBillingPeriodRange.validate!(input[:billing_period_range], context: "#{context}[:billing_period_range]") unless input[:billing_period_range].nil?
      end
    end

    class BatchAssociateResourcesToCustomLineItemOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchAssociateResourcesToCustomLineItemOutput, context: context)
        Validators::AssociateResourcesResponseList.validate!(input[:successfully_associated_resources], context: "#{context}[:successfully_associated_resources]") unless input[:successfully_associated_resources].nil?
        Validators::AssociateResourcesResponseList.validate!(input[:failed_associated_resources], context: "#{context}[:failed_associated_resources]") unless input[:failed_associated_resources].nil?
      end
    end

    class BatchDisassociateResourcesFromCustomLineItemInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDisassociateResourcesFromCustomLineItemInput, context: context)
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
        Validators::CustomLineItemBatchDisassociationsList.validate!(input[:resource_arns], context: "#{context}[:resource_arns]") unless input[:resource_arns].nil?
        Validators::CustomLineItemBillingPeriodRange.validate!(input[:billing_period_range], context: "#{context}[:billing_period_range]") unless input[:billing_period_range].nil?
      end
    end

    class BatchDisassociateResourcesFromCustomLineItemOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDisassociateResourcesFromCustomLineItemOutput, context: context)
        Validators::DisassociateResourcesResponseList.validate!(input[:successfully_disassociated_resources], context: "#{context}[:successfully_disassociated_resources]") unless input[:successfully_disassociated_resources].nil?
        Validators::DisassociateResourcesResponseList.validate!(input[:failed_disassociated_resources], context: "#{context}[:failed_disassociated_resources]") unless input[:failed_disassociated_resources].nil?
      end
    end

    class BillingGroupArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BillingGroupCostReportElement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BillingGroupCostReportElement, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:aws_cost], ::String, context: "#{context}[:aws_cost]")
        Hearth::Validator.validate!(input[:proforma_cost], ::String, context: "#{context}[:proforma_cost]")
        Hearth::Validator.validate!(input[:margin], ::String, context: "#{context}[:margin]")
        Hearth::Validator.validate!(input[:margin_percentage], ::String, context: "#{context}[:margin_percentage]")
        Hearth::Validator.validate!(input[:currency], ::String, context: "#{context}[:currency]")
      end
    end

    class BillingGroupCostReportList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BillingGroupCostReportElement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BillingGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BillingGroupListElement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BillingGroupListElement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BillingGroupListElement, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:primary_account_id], ::String, context: "#{context}[:primary_account_id]")
        Validators::ComputationPreference.validate!(input[:computation_preference], context: "#{context}[:computation_preference]") unless input[:computation_preference].nil?
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
        Hearth::Validator.validate!(input[:creation_time], ::Integer, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Integer, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
      end
    end

    class ComputationPreference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComputationPreference, context: context)
        Hearth::Validator.validate!(input[:pricing_plan_arn], ::String, context: "#{context}[:pricing_plan_arn]")
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

    class CreateBillingGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBillingGroupInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::AccountGrouping.validate!(input[:account_grouping], context: "#{context}[:account_grouping]") unless input[:account_grouping].nil?
        Validators::ComputationPreference.validate!(input[:computation_preference], context: "#{context}[:computation_preference]") unless input[:computation_preference].nil?
        Hearth::Validator.validate!(input[:primary_account_id], ::String, context: "#{context}[:primary_account_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateBillingGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBillingGroupOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class CreateCustomLineItemInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCustomLineItemInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:billing_group_arn], ::String, context: "#{context}[:billing_group_arn]")
        Validators::CustomLineItemBillingPeriodRange.validate!(input[:billing_period_range], context: "#{context}[:billing_period_range]") unless input[:billing_period_range].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::CustomLineItemChargeDetails.validate!(input[:charge_details], context: "#{context}[:charge_details]") unless input[:charge_details].nil?
      end
    end

    class CreateCustomLineItemOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCustomLineItemOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class CreatePricingPlanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePricingPlanInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::PricingRuleArnsInput.validate!(input[:pricing_rule_arns], context: "#{context}[:pricing_rule_arns]") unless input[:pricing_rule_arns].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreatePricingPlanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePricingPlanOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class CreatePricingRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePricingRuleInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:modifier_percentage], ::Float, context: "#{context}[:modifier_percentage]")
        Hearth::Validator.validate!(input[:service], ::String, context: "#{context}[:service]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreatePricingRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePricingRuleOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class CustomLineItemArns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CustomLineItemAssociationsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CustomLineItemBatchAssociationsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CustomLineItemBatchDisassociationsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CustomLineItemBillingPeriodRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomLineItemBillingPeriodRange, context: context)
        Hearth::Validator.validate!(input[:inclusive_start_billing_period], ::String, context: "#{context}[:inclusive_start_billing_period]")
        Hearth::Validator.validate!(input[:exclusive_end_billing_period], ::String, context: "#{context}[:exclusive_end_billing_period]")
      end
    end

    class CustomLineItemChargeDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomLineItemChargeDetails, context: context)
        Validators::CustomLineItemFlatChargeDetails.validate!(input[:flat], context: "#{context}[:flat]") unless input[:flat].nil?
        Validators::CustomLineItemPercentageChargeDetails.validate!(input[:percentage], context: "#{context}[:percentage]") unless input[:percentage].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class CustomLineItemFlatChargeDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomLineItemFlatChargeDetails, context: context)
        Hearth::Validator.validate!(input[:charge_value], ::Float, context: "#{context}[:charge_value]")
      end
    end

    class CustomLineItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CustomLineItemListElement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CustomLineItemListElement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomLineItemListElement, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::ListCustomLineItemChargeDetails.validate!(input[:charge_details], context: "#{context}[:charge_details]") unless input[:charge_details].nil?
        Hearth::Validator.validate!(input[:currency_code], ::String, context: "#{context}[:currency_code]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:product_code], ::String, context: "#{context}[:product_code]")
        Hearth::Validator.validate!(input[:billing_group_arn], ::String, context: "#{context}[:billing_group_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Integer, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Integer, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:association_size], ::Integer, context: "#{context}[:association_size]")
      end
    end

    class CustomLineItemNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CustomLineItemPercentageChargeDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomLineItemPercentageChargeDetails, context: context)
        Hearth::Validator.validate!(input[:percentage_value], ::Float, context: "#{context}[:percentage_value]")
        Validators::CustomLineItemAssociationsList.validate!(input[:associated_values], context: "#{context}[:associated_values]") unless input[:associated_values].nil?
      end
    end

    class DeleteBillingGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBillingGroupInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeleteBillingGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBillingGroupOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeleteCustomLineItemInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCustomLineItemInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::CustomLineItemBillingPeriodRange.validate!(input[:billing_period_range], context: "#{context}[:billing_period_range]") unless input[:billing_period_range].nil?
      end
    end

    class DeleteCustomLineItemOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCustomLineItemOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeletePricingPlanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePricingPlanInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeletePricingPlanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePricingPlanOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeletePricingRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePricingRuleInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeletePricingRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePricingRuleOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DisassociateAccountsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateAccountsInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::AccountIdList.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
      end
    end

    class DisassociateAccountsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateAccountsOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DisassociatePricingRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociatePricingRulesInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::PricingRuleArnsNonEmptyInput.validate!(input[:pricing_rule_arns], context: "#{context}[:pricing_rule_arns]") unless input[:pricing_rule_arns].nil?
      end
    end

    class DisassociatePricingRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociatePricingRulesOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DisassociateResourceResponseElement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateResourceResponseElement, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::AssociateResourceError.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
      end
    end

    class DisassociateResourcesResponseList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DisassociateResourceResponseElement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::Integer, context: "#{context}[:retry_after_seconds]")
      end
    end

    class ListAccountAssociationsFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccountAssociationsFilter, context: context)
        Hearth::Validator.validate!(input[:association], ::String, context: "#{context}[:association]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class ListAccountAssociationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccountAssociationsInput, context: context)
        Hearth::Validator.validate!(input[:billing_period], ::String, context: "#{context}[:billing_period]")
        Validators::ListAccountAssociationsFilter.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAccountAssociationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccountAssociationsOutput, context: context)
        Validators::AccountAssociationsList.validate!(input[:linked_accounts], context: "#{context}[:linked_accounts]") unless input[:linked_accounts].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBillingGroupCostReportsFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBillingGroupCostReportsFilter, context: context)
        Validators::BillingGroupArnList.validate!(input[:billing_group_arns], context: "#{context}[:billing_group_arns]") unless input[:billing_group_arns].nil?
      end
    end

    class ListBillingGroupCostReportsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBillingGroupCostReportsInput, context: context)
        Hearth::Validator.validate!(input[:billing_period], ::String, context: "#{context}[:billing_period]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::ListBillingGroupCostReportsFilter.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListBillingGroupCostReportsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBillingGroupCostReportsOutput, context: context)
        Validators::BillingGroupCostReportList.validate!(input[:billing_group_cost_reports], context: "#{context}[:billing_group_cost_reports]") unless input[:billing_group_cost_reports].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBillingGroupsFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBillingGroupsFilter, context: context)
        Validators::BillingGroupArnList.validate!(input[:arns], context: "#{context}[:arns]") unless input[:arns].nil?
        Hearth::Validator.validate!(input[:pricing_plan], ::String, context: "#{context}[:pricing_plan]")
      end
    end

    class ListBillingGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBillingGroupsInput, context: context)
        Hearth::Validator.validate!(input[:billing_period], ::String, context: "#{context}[:billing_period]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::ListBillingGroupsFilter.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListBillingGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBillingGroupsOutput, context: context)
        Validators::BillingGroupList.validate!(input[:billing_groups], context: "#{context}[:billing_groups]") unless input[:billing_groups].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCustomLineItemChargeDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCustomLineItemChargeDetails, context: context)
        Validators::ListCustomLineItemFlatChargeDetails.validate!(input[:flat], context: "#{context}[:flat]") unless input[:flat].nil?
        Validators::ListCustomLineItemPercentageChargeDetails.validate!(input[:percentage], context: "#{context}[:percentage]") unless input[:percentage].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class ListCustomLineItemFlatChargeDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCustomLineItemFlatChargeDetails, context: context)
        Hearth::Validator.validate!(input[:charge_value], ::Float, context: "#{context}[:charge_value]")
      end
    end

    class ListCustomLineItemPercentageChargeDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCustomLineItemPercentageChargeDetails, context: context)
        Hearth::Validator.validate!(input[:percentage_value], ::Float, context: "#{context}[:percentage_value]")
      end
    end

    class ListCustomLineItemsFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCustomLineItemsFilter, context: context)
        Validators::CustomLineItemNameList.validate!(input[:names], context: "#{context}[:names]") unless input[:names].nil?
        Validators::BillingGroupArnList.validate!(input[:billing_groups], context: "#{context}[:billing_groups]") unless input[:billing_groups].nil?
        Validators::CustomLineItemArns.validate!(input[:arns], context: "#{context}[:arns]") unless input[:arns].nil?
      end
    end

    class ListCustomLineItemsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCustomLineItemsInput, context: context)
        Hearth::Validator.validate!(input[:billing_period], ::String, context: "#{context}[:billing_period]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::ListCustomLineItemsFilter.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListCustomLineItemsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCustomLineItemsOutput, context: context)
        Validators::CustomLineItemList.validate!(input[:custom_line_items], context: "#{context}[:custom_line_items]") unless input[:custom_line_items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPricingPlansAssociatedWithPricingRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPricingPlansAssociatedWithPricingRuleInput, context: context)
        Hearth::Validator.validate!(input[:billing_period], ::String, context: "#{context}[:billing_period]")
        Hearth::Validator.validate!(input[:pricing_rule_arn], ::String, context: "#{context}[:pricing_rule_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPricingPlansAssociatedWithPricingRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPricingPlansAssociatedWithPricingRuleOutput, context: context)
        Hearth::Validator.validate!(input[:billing_period], ::String, context: "#{context}[:billing_period]")
        Hearth::Validator.validate!(input[:pricing_rule_arn], ::String, context: "#{context}[:pricing_rule_arn]")
        Validators::PricingPlanArns.validate!(input[:pricing_plan_arns], context: "#{context}[:pricing_plan_arns]") unless input[:pricing_plan_arns].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPricingPlansFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPricingPlansFilter, context: context)
        Validators::PricingPlanArns.validate!(input[:arns], context: "#{context}[:arns]") unless input[:arns].nil?
      end
    end

    class ListPricingPlansInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPricingPlansInput, context: context)
        Hearth::Validator.validate!(input[:billing_period], ::String, context: "#{context}[:billing_period]")
        Validators::ListPricingPlansFilter.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPricingPlansOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPricingPlansOutput, context: context)
        Hearth::Validator.validate!(input[:billing_period], ::String, context: "#{context}[:billing_period]")
        Validators::PricingPlanList.validate!(input[:pricing_plans], context: "#{context}[:pricing_plans]") unless input[:pricing_plans].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPricingRulesAssociatedToPricingPlanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPricingRulesAssociatedToPricingPlanInput, context: context)
        Hearth::Validator.validate!(input[:billing_period], ::String, context: "#{context}[:billing_period]")
        Hearth::Validator.validate!(input[:pricing_plan_arn], ::String, context: "#{context}[:pricing_plan_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPricingRulesAssociatedToPricingPlanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPricingRulesAssociatedToPricingPlanOutput, context: context)
        Hearth::Validator.validate!(input[:billing_period], ::String, context: "#{context}[:billing_period]")
        Hearth::Validator.validate!(input[:pricing_plan_arn], ::String, context: "#{context}[:pricing_plan_arn]")
        Validators::PricingRuleArns.validate!(input[:pricing_rule_arns], context: "#{context}[:pricing_rule_arns]") unless input[:pricing_rule_arns].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPricingRulesFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPricingRulesFilter, context: context)
        Validators::PricingRuleArns.validate!(input[:arns], context: "#{context}[:arns]") unless input[:arns].nil?
      end
    end

    class ListPricingRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPricingRulesInput, context: context)
        Hearth::Validator.validate!(input[:billing_period], ::String, context: "#{context}[:billing_period]")
        Validators::ListPricingRulesFilter.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPricingRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPricingRulesOutput, context: context)
        Hearth::Validator.validate!(input[:billing_period], ::String, context: "#{context}[:billing_period]")
        Validators::PricingRuleList.validate!(input[:pricing_rules], context: "#{context}[:pricing_rules]") unless input[:pricing_rules].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListResourcesAssociatedToCustomLineItemFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourcesAssociatedToCustomLineItemFilter, context: context)
        Hearth::Validator.validate!(input[:relationship], ::String, context: "#{context}[:relationship]")
      end
    end

    class ListResourcesAssociatedToCustomLineItemInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourcesAssociatedToCustomLineItemInput, context: context)
        Hearth::Validator.validate!(input[:billing_period], ::String, context: "#{context}[:billing_period]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::ListResourcesAssociatedToCustomLineItemFilter.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListResourcesAssociatedToCustomLineItemOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourcesAssociatedToCustomLineItemOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::ListResourcesAssociatedToCustomLineItemResponseList.validate!(input[:associated_resources], context: "#{context}[:associated_resources]") unless input[:associated_resources].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListResourcesAssociatedToCustomLineItemResponseElement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourcesAssociatedToCustomLineItemResponseElement, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:relationship], ::String, context: "#{context}[:relationship]")
      end
    end

    class ListResourcesAssociatedToCustomLineItemResponseList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ListResourcesAssociatedToCustomLineItemResponseElement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PricingPlanArns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PricingPlanList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PricingPlanListElement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PricingPlanListElement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PricingPlanListElement, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
        Hearth::Validator.validate!(input[:creation_time], ::Integer, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Integer, context: "#{context}[:last_modified_time]")
      end
    end

    class PricingRuleArns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PricingRuleArnsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PricingRuleArnsNonEmptyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PricingRuleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PricingRuleListElement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PricingRuleListElement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PricingRuleListElement, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:modifier_percentage], ::Float, context: "#{context}[:modifier_percentage]")
        Hearth::Validator.validate!(input[:service], ::String, context: "#{context}[:service]")
        Hearth::Validator.validate!(input[:associated_pricing_plan_count], ::Integer, context: "#{context}[:associated_pricing_plan_count]")
        Hearth::Validator.validate!(input[:creation_time], ::Integer, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Integer, context: "#{context}[:last_modified_time]")
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

    class ServiceLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:limit_code], ::String, context: "#{context}[:limit_code]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::Integer, context: "#{context}[:retry_after_seconds]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateBillingGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBillingGroupInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::ComputationPreference.validate!(input[:computation_preference], context: "#{context}[:computation_preference]") unless input[:computation_preference].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateBillingGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBillingGroupOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:primary_account_id], ::String, context: "#{context}[:primary_account_id]")
        Hearth::Validator.validate!(input[:pricing_plan_arn], ::String, context: "#{context}[:pricing_plan_arn]")
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Integer, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
      end
    end

    class UpdateCustomLineItemChargeDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCustomLineItemChargeDetails, context: context)
        Validators::UpdateCustomLineItemFlatChargeDetails.validate!(input[:flat], context: "#{context}[:flat]") unless input[:flat].nil?
        Validators::UpdateCustomLineItemPercentageChargeDetails.validate!(input[:percentage], context: "#{context}[:percentage]") unless input[:percentage].nil?
      end
    end

    class UpdateCustomLineItemFlatChargeDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCustomLineItemFlatChargeDetails, context: context)
        Hearth::Validator.validate!(input[:charge_value], ::Float, context: "#{context}[:charge_value]")
      end
    end

    class UpdateCustomLineItemInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCustomLineItemInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::UpdateCustomLineItemChargeDetails.validate!(input[:charge_details], context: "#{context}[:charge_details]") unless input[:charge_details].nil?
        Validators::CustomLineItemBillingPeriodRange.validate!(input[:billing_period_range], context: "#{context}[:billing_period_range]") unless input[:billing_period_range].nil?
      end
    end

    class UpdateCustomLineItemOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCustomLineItemOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:billing_group_arn], ::String, context: "#{context}[:billing_group_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::ListCustomLineItemChargeDetails.validate!(input[:charge_details], context: "#{context}[:charge_details]") unless input[:charge_details].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Integer, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:association_size], ::Integer, context: "#{context}[:association_size]")
      end
    end

    class UpdateCustomLineItemPercentageChargeDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCustomLineItemPercentageChargeDetails, context: context)
        Hearth::Validator.validate!(input[:percentage_value], ::Float, context: "#{context}[:percentage_value]")
      end
    end

    class UpdatePricingPlanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePricingPlanInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdatePricingPlanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePricingPlanOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Integer, context: "#{context}[:last_modified_time]")
      end
    end

    class UpdatePricingRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePricingRuleInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:modifier_percentage], ::Float, context: "#{context}[:modifier_percentage]")
      end
    end

    class UpdatePricingRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePricingRuleOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:modifier_percentage], ::Float, context: "#{context}[:modifier_percentage]")
        Hearth::Validator.validate!(input[:service], ::String, context: "#{context}[:service]")
        Hearth::Validator.validate!(input[:associated_pricing_plan_count], ::Integer, context: "#{context}[:associated_pricing_plan_count]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Integer, context: "#{context}[:last_modified_time]")
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Validators::ValidationExceptionFieldList.validate!(input[:fields], context: "#{context}[:fields]") unless input[:fields].nil?
      end
    end

    class ValidationExceptionField
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationExceptionField, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ValidationExceptionFieldList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ValidationExceptionField.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
