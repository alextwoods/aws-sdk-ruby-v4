# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Billingconductor
  module Parsers

    # Operation Parser for AssociateAccounts
    class AssociateAccounts
      def self.parse(http_resp)
        data = Types::AssociateAccountsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.reason = map['Reason']
        data.fields = (ValidationExceptionFieldList.parse(map['Fields']) unless map['Fields'].nil?)
        data
      end
    end

    class ValidationExceptionFieldList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ValidationExceptionField.parse(value) unless value.nil?
        end
        data
      end
    end

    class ValidationExceptionField
      def self.parse(map)
        data = Types::ValidationExceptionField.new
        data.name = map['Name']
        data.message = map['Message']
        return data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        data.retry_after_seconds = http_resp.headers['Retry-After'].to_i unless http_resp.headers['Retry-After'].nil?
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ServiceLimitExceededException
    class ServiceLimitExceededException
      def self.parse(http_resp)
        data = Types::ServiceLimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data.limit_code = map['LimitCode']
        data.service_code = map['ServiceCode']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        data.retry_after_seconds = http_resp.headers['Retry-After'].to_i unless http_resp.headers['Retry-After'].nil?
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for AssociatePricingRules
    class AssociatePricingRules
      def self.parse(http_resp)
        data = Types::AssociatePricingRulesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data
      end
    end

    # Operation Parser for BatchAssociateResourcesToCustomLineItem
    class BatchAssociateResourcesToCustomLineItem
      def self.parse(http_resp)
        data = Types::BatchAssociateResourcesToCustomLineItemOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.successfully_associated_resources = (AssociateResourcesResponseList.parse(map['SuccessfullyAssociatedResources']) unless map['SuccessfullyAssociatedResources'].nil?)
        data.failed_associated_resources = (AssociateResourcesResponseList.parse(map['FailedAssociatedResources']) unless map['FailedAssociatedResources'].nil?)
        data
      end
    end

    class AssociateResourcesResponseList
      def self.parse(list)
        data = []
        list.map do |value|
          data << AssociateResourceResponseElement.parse(value) unless value.nil?
        end
        data
      end
    end

    class AssociateResourceResponseElement
      def self.parse(map)
        data = Types::AssociateResourceResponseElement.new
        data.arn = map['Arn']
        data.error = (AssociateResourceError.parse(map['Error']) unless map['Error'].nil?)
        return data
      end
    end

    class AssociateResourceError
      def self.parse(map)
        data = Types::AssociateResourceError.new
        data.message = map['Message']
        data.reason = map['Reason']
        return data
      end
    end

    # Operation Parser for BatchDisassociateResourcesFromCustomLineItem
    class BatchDisassociateResourcesFromCustomLineItem
      def self.parse(http_resp)
        data = Types::BatchDisassociateResourcesFromCustomLineItemOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.successfully_disassociated_resources = (DisassociateResourcesResponseList.parse(map['SuccessfullyDisassociatedResources']) unless map['SuccessfullyDisassociatedResources'].nil?)
        data.failed_disassociated_resources = (DisassociateResourcesResponseList.parse(map['FailedDisassociatedResources']) unless map['FailedDisassociatedResources'].nil?)
        data
      end
    end

    class DisassociateResourcesResponseList
      def self.parse(list)
        data = []
        list.map do |value|
          data << DisassociateResourceResponseElement.parse(value) unless value.nil?
        end
        data
      end
    end

    class DisassociateResourceResponseElement
      def self.parse(map)
        data = Types::DisassociateResourceResponseElement.new
        data.arn = map['Arn']
        data.error = (AssociateResourceError.parse(map['Error']) unless map['Error'].nil?)
        return data
      end
    end

    # Operation Parser for CreateBillingGroup
    class CreateBillingGroup
      def self.parse(http_resp)
        data = Types::CreateBillingGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data
      end
    end

    # Operation Parser for CreateCustomLineItem
    class CreateCustomLineItem
      def self.parse(http_resp)
        data = Types::CreateCustomLineItemOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data
      end
    end

    # Operation Parser for CreatePricingPlan
    class CreatePricingPlan
      def self.parse(http_resp)
        data = Types::CreatePricingPlanOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data
      end
    end

    # Operation Parser for CreatePricingRule
    class CreatePricingRule
      def self.parse(http_resp)
        data = Types::CreatePricingRuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data
      end
    end

    # Operation Parser for DeleteBillingGroup
    class DeleteBillingGroup
      def self.parse(http_resp)
        data = Types::DeleteBillingGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data
      end
    end

    # Operation Parser for DeleteCustomLineItem
    class DeleteCustomLineItem
      def self.parse(http_resp)
        data = Types::DeleteCustomLineItemOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data
      end
    end

    # Operation Parser for DeletePricingPlan
    class DeletePricingPlan
      def self.parse(http_resp)
        data = Types::DeletePricingPlanOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data
      end
    end

    # Operation Parser for DeletePricingRule
    class DeletePricingRule
      def self.parse(http_resp)
        data = Types::DeletePricingRuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data
      end
    end

    # Operation Parser for DisassociateAccounts
    class DisassociateAccounts
      def self.parse(http_resp)
        data = Types::DisassociateAccountsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data
      end
    end

    # Operation Parser for DisassociatePricingRules
    class DisassociatePricingRules
      def self.parse(http_resp)
        data = Types::DisassociatePricingRulesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data
      end
    end

    # Operation Parser for ListAccountAssociations
    class ListAccountAssociations
      def self.parse(http_resp)
        data = Types::ListAccountAssociationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.linked_accounts = (AccountAssociationsList.parse(map['LinkedAccounts']) unless map['LinkedAccounts'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AccountAssociationsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << AccountAssociationsListElement.parse(value) unless value.nil?
        end
        data
      end
    end

    class AccountAssociationsListElement
      def self.parse(map)
        data = Types::AccountAssociationsListElement.new
        data.account_id = map['AccountId']
        data.billing_group_arn = map['BillingGroupArn']
        data.account_name = map['AccountName']
        data.account_email = map['AccountEmail']
        return data
      end
    end

    # Operation Parser for ListBillingGroupCostReports
    class ListBillingGroupCostReports
      def self.parse(http_resp)
        data = Types::ListBillingGroupCostReportsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.billing_group_cost_reports = (BillingGroupCostReportList.parse(map['BillingGroupCostReports']) unless map['BillingGroupCostReports'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class BillingGroupCostReportList
      def self.parse(list)
        data = []
        list.map do |value|
          data << BillingGroupCostReportElement.parse(value) unless value.nil?
        end
        data
      end
    end

    class BillingGroupCostReportElement
      def self.parse(map)
        data = Types::BillingGroupCostReportElement.new
        data.arn = map['Arn']
        data.aws_cost = map['AWSCost']
        data.proforma_cost = map['ProformaCost']
        data.margin = map['Margin']
        data.margin_percentage = map['MarginPercentage']
        data.currency = map['Currency']
        return data
      end
    end

    # Operation Parser for ListBillingGroups
    class ListBillingGroups
      def self.parse(http_resp)
        data = Types::ListBillingGroupsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.billing_groups = (BillingGroupList.parse(map['BillingGroups']) unless map['BillingGroups'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class BillingGroupList
      def self.parse(list)
        data = []
        list.map do |value|
          data << BillingGroupListElement.parse(value) unless value.nil?
        end
        data
      end
    end

    class BillingGroupListElement
      def self.parse(map)
        data = Types::BillingGroupListElement.new
        data.name = map['Name']
        data.arn = map['Arn']
        data.description = map['Description']
        data.primary_account_id = map['PrimaryAccountId']
        data.computation_preference = (ComputationPreference.parse(map['ComputationPreference']) unless map['ComputationPreference'].nil?)
        data.size = map['Size']
        data.creation_time = map['CreationTime']
        data.last_modified_time = map['LastModifiedTime']
        data.status = map['Status']
        data.status_reason = map['StatusReason']
        return data
      end
    end

    class ComputationPreference
      def self.parse(map)
        data = Types::ComputationPreference.new
        data.pricing_plan_arn = map['PricingPlanArn']
        return data
      end
    end

    # Operation Parser for ListCustomLineItems
    class ListCustomLineItems
      def self.parse(http_resp)
        data = Types::ListCustomLineItemsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.custom_line_items = (CustomLineItemList.parse(map['CustomLineItems']) unless map['CustomLineItems'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class CustomLineItemList
      def self.parse(list)
        data = []
        list.map do |value|
          data << CustomLineItemListElement.parse(value) unless value.nil?
        end
        data
      end
    end

    class CustomLineItemListElement
      def self.parse(map)
        data = Types::CustomLineItemListElement.new
        data.arn = map['Arn']
        data.name = map['Name']
        data.charge_details = (ListCustomLineItemChargeDetails.parse(map['ChargeDetails']) unless map['ChargeDetails'].nil?)
        data.currency_code = map['CurrencyCode']
        data.description = map['Description']
        data.product_code = map['ProductCode']
        data.billing_group_arn = map['BillingGroupArn']
        data.creation_time = map['CreationTime']
        data.last_modified_time = map['LastModifiedTime']
        data.association_size = map['AssociationSize']
        return data
      end
    end

    class ListCustomLineItemChargeDetails
      def self.parse(map)
        data = Types::ListCustomLineItemChargeDetails.new
        data.flat = (ListCustomLineItemFlatChargeDetails.parse(map['Flat']) unless map['Flat'].nil?)
        data.percentage = (ListCustomLineItemPercentageChargeDetails.parse(map['Percentage']) unless map['Percentage'].nil?)
        data.type = map['Type']
        return data
      end
    end

    class ListCustomLineItemPercentageChargeDetails
      def self.parse(map)
        data = Types::ListCustomLineItemPercentageChargeDetails.new
        data.percentage_value = Hearth::NumberHelper.deserialize(map['PercentageValue'])
        return data
      end
    end

    class ListCustomLineItemFlatChargeDetails
      def self.parse(map)
        data = Types::ListCustomLineItemFlatChargeDetails.new
        data.charge_value = Hearth::NumberHelper.deserialize(map['ChargeValue'])
        return data
      end
    end

    # Operation Parser for ListPricingPlans
    class ListPricingPlans
      def self.parse(http_resp)
        data = Types::ListPricingPlansOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.billing_period = map['BillingPeriod']
        data.pricing_plans = (PricingPlanList.parse(map['PricingPlans']) unless map['PricingPlans'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PricingPlanList
      def self.parse(list)
        data = []
        list.map do |value|
          data << PricingPlanListElement.parse(value) unless value.nil?
        end
        data
      end
    end

    class PricingPlanListElement
      def self.parse(map)
        data = Types::PricingPlanListElement.new
        data.name = map['Name']
        data.arn = map['Arn']
        data.description = map['Description']
        data.size = map['Size']
        data.creation_time = map['CreationTime']
        data.last_modified_time = map['LastModifiedTime']
        return data
      end
    end

    # Operation Parser for ListPricingPlansAssociatedWithPricingRule
    class ListPricingPlansAssociatedWithPricingRule
      def self.parse(http_resp)
        data = Types::ListPricingPlansAssociatedWithPricingRuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.billing_period = map['BillingPeriod']
        data.pricing_rule_arn = map['PricingRuleArn']
        data.pricing_plan_arns = (PricingPlanArns.parse(map['PricingPlanArns']) unless map['PricingPlanArns'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PricingPlanArns
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListPricingRules
    class ListPricingRules
      def self.parse(http_resp)
        data = Types::ListPricingRulesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.billing_period = map['BillingPeriod']
        data.pricing_rules = (PricingRuleList.parse(map['PricingRules']) unless map['PricingRules'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PricingRuleList
      def self.parse(list)
        data = []
        list.map do |value|
          data << PricingRuleListElement.parse(value) unless value.nil?
        end
        data
      end
    end

    class PricingRuleListElement
      def self.parse(map)
        data = Types::PricingRuleListElement.new
        data.name = map['Name']
        data.arn = map['Arn']
        data.description = map['Description']
        data.scope = map['Scope']
        data.type = map['Type']
        data.modifier_percentage = Hearth::NumberHelper.deserialize(map['ModifierPercentage'])
        data.service = map['Service']
        data.associated_pricing_plan_count = map['AssociatedPricingPlanCount']
        data.creation_time = map['CreationTime']
        data.last_modified_time = map['LastModifiedTime']
        return data
      end
    end

    # Operation Parser for ListPricingRulesAssociatedToPricingPlan
    class ListPricingRulesAssociatedToPricingPlan
      def self.parse(http_resp)
        data = Types::ListPricingRulesAssociatedToPricingPlanOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.billing_period = map['BillingPeriod']
        data.pricing_plan_arn = map['PricingPlanArn']
        data.pricing_rule_arns = (PricingRuleArns.parse(map['PricingRuleArns']) unless map['PricingRuleArns'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PricingRuleArns
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListResourcesAssociatedToCustomLineItem
    class ListResourcesAssociatedToCustomLineItem
      def self.parse(http_resp)
        data = Types::ListResourcesAssociatedToCustomLineItemOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.associated_resources = (ListResourcesAssociatedToCustomLineItemResponseList.parse(map['AssociatedResources']) unless map['AssociatedResources'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ListResourcesAssociatedToCustomLineItemResponseList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ListResourcesAssociatedToCustomLineItemResponseElement.parse(value) unless value.nil?
        end
        data
      end
    end

    class ListResourcesAssociatedToCustomLineItemResponseElement
      def self.parse(map)
        data = Types::ListResourcesAssociatedToCustomLineItemResponseElement.new
        data.arn = map['Arn']
        data.relationship = map['Relationship']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class TagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateBillingGroup
    class UpdateBillingGroup
      def self.parse(http_resp)
        data = Types::UpdateBillingGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.name = map['Name']
        data.description = map['Description']
        data.primary_account_id = map['PrimaryAccountId']
        data.pricing_plan_arn = map['PricingPlanArn']
        data.size = map['Size']
        data.last_modified_time = map['LastModifiedTime']
        data.status = map['Status']
        data.status_reason = map['StatusReason']
        data
      end
    end

    # Operation Parser for UpdateCustomLineItem
    class UpdateCustomLineItem
      def self.parse(http_resp)
        data = Types::UpdateCustomLineItemOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.billing_group_arn = map['BillingGroupArn']
        data.name = map['Name']
        data.description = map['Description']
        data.charge_details = (ListCustomLineItemChargeDetails.parse(map['ChargeDetails']) unless map['ChargeDetails'].nil?)
        data.last_modified_time = map['LastModifiedTime']
        data.association_size = map['AssociationSize']
        data
      end
    end

    # Operation Parser for UpdatePricingPlan
    class UpdatePricingPlan
      def self.parse(http_resp)
        data = Types::UpdatePricingPlanOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.name = map['Name']
        data.description = map['Description']
        data.size = map['Size']
        data.last_modified_time = map['LastModifiedTime']
        data
      end
    end

    # Operation Parser for UpdatePricingRule
    class UpdatePricingRule
      def self.parse(http_resp)
        data = Types::UpdatePricingRuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.name = map['Name']
        data.description = map['Description']
        data.scope = map['Scope']
        data.type = map['Type']
        data.modifier_percentage = Hearth::NumberHelper.deserialize(map['ModifierPercentage'])
        data.service = map['Service']
        data.associated_pricing_plan_count = map['AssociatedPricingPlanCount']
        data.last_modified_time = map['LastModifiedTime']
        data
      end
    end
  end
end
