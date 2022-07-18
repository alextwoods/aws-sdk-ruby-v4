# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Billingconductor
  module Types

    # <p>You do not have sufficient access to perform this action.
    #     </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             <i>
    #                <b>Amazon Web Services Billing Conductor is in beta release and is subject to change. Your use of Amazon Web Services Billing Conductor is subject to the Beta Service Participation terms of the <a href="https://aws.amazon.com/service-terms/">Amazon Web Services Service Terms</a> (Section 1.10).</b>
    #             </i>
    #          </p>
    #          <p> A representation of a linked account. </p>
    #
    # @!attribute account_id
    #   <p>
    #         The associating array of account IDs.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute billing_group_arn
    #   <p> The Billing Group Arn that the linked account is associated to. </p>
    #
    #   @return [String]
    #
    # @!attribute account_name
    #   <p>
    #         The Amazon Web Services account name.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute account_email
    #   <p>
    #         The Amazon Web Services account email.
    #       </p>
    #
    #   @return [String]
    #
    AccountAssociationsListElement = ::Struct.new(
      :account_id,
      :billing_group_arn,
      :account_name,
      :account_email,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Billingconductor::Types::AccountAssociationsListElement "\
          "account_id=#{account_id || 'nil'}, "\
          "billing_group_arn=#{billing_group_arn || 'nil'}, "\
          "account_name=\"[SENSITIVE]\", "\
          "account_email=\"[SENSITIVE]\">"
      end
    end

    # <p>
    #      The set of accounts that will be under the billing group. The set of accounts resemble the linked accounts in a consolidated family.
    #     </p>
    #
    # @!attribute linked_account_ids
    #   <p>
    #         The account IDs that make up the billing group. Account IDs must be a part of the consolidated billing family, and not associated with another billing group.
    #       </p>
    #
    #   @return [Array<String>]
    #
    AccountGrouping = ::Struct.new(
      :linked_account_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the billing group that associates the array of
    #         account IDs. </p>
    #
    #   @return [String]
    #
    # @!attribute account_ids
    #   <p>
    #         The associating array of account IDs.
    #       </p>
    #
    #   @return [Array<String>]
    #
    AssociateAccountsInput = ::Struct.new(
      :arn,
      :account_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the billing group that associates the array of
    #         account IDs. </p>
    #
    #   @return [String]
    #
    AssociateAccountsOutput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>
    #         The <code>PricingPlanArn</code> that the <code>PricingRuleArns</code> are associated with.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute pricing_rule_arns
    #   <p>
    #         The <code>PricingRuleArns</code> that are associated with the Pricing Plan.
    #       </p>
    #
    #   @return [Array<String>]
    #
    AssociatePricingRulesInput = ::Struct.new(
      :arn,
      :pricing_rule_arns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>
    #         The <code>PricingPlanArn</code> that the <code>PricingRuleArns</code> are associated with.
    #       </p>
    #
    #   @return [String]
    #
    AssociatePricingRulesOutput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       A representation of a resource association error.
    #     </p>
    #
    # @!attribute message
    #   <p>
    #        The reason the resource association failed.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>
    #         A static error code that used to classify the type of failure.
    #       </p>
    #
    #   Enum, one of: ["INVALID_ARN", "SERVICE_LIMIT_EXCEEDED", "ILLEGAL_CUSTOMLINEITEM", "INTERNAL_SERVER_EXCEPTION"]
    #
    #   @return [String]
    #
    AssociateResourceError = ::Struct.new(
      :message,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AssociateResourceErrorReason
    #
    module AssociateResourceErrorReason
      # No documentation available.
      #
      INVALID_ARN = "INVALID_ARN"

      # No documentation available.
      #
      SERVICE_LIMIT_EXCEEDED = "SERVICE_LIMIT_EXCEEDED"

      # No documentation available.
      #
      ILLEGAL_CUSTOMLINEITEM = "ILLEGAL_CUSTOMLINEITEM"

      # No documentation available.
      #
      INTERNAL_SERVER_EXCEPTION = "INTERNAL_SERVER_EXCEPTION"
    end

    # <p>
    #       A resource association result for a percentage custom line item.
    #     </p>
    #
    # @!attribute arn
    #   <p>
    #         The resource ARN that was associated to the custom line item.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>
    #         An <code>AssociateResourceError</code> that will populate if the resource association fails.
    #       </p>
    #
    #   @return [AssociateResourceError]
    #
    AssociateResourceResponseElement = ::Struct.new(
      :arn,
      :error,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute target_arn
    #   <p>
    #         A percentage custom line item ARN to associate the resources to.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute resource_arns
    #   <p>
    #         A list containing the ARNs of the resources to be associated.
    #       </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute billing_period_range
    #   <p>
    #         The billing period range in which the custom line item request will be applied.
    #       </p>
    #
    #   @return [CustomLineItemBillingPeriodRange]
    #
    BatchAssociateResourcesToCustomLineItemInput = ::Struct.new(
      :target_arn,
      :resource_arns,
      :billing_period_range,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute successfully_associated_resources
    #   <p>
    #         A list of <code>AssociateResourceResponseElement</code> for each resource that's been associated to a percentage custom line item successfully.
    #       </p>
    #
    #   @return [Array<AssociateResourceResponseElement>]
    #
    # @!attribute failed_associated_resources
    #   <p>
    #         A list of <code>AssociateResourceResponseElement</code> for each resource that failed association to a percentage custom line item.
    #       </p>
    #
    #   @return [Array<AssociateResourceResponseElement>]
    #
    BatchAssociateResourcesToCustomLineItemOutput = ::Struct.new(
      :successfully_associated_resources,
      :failed_associated_resources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute target_arn
    #   <p>
    #         A percentage custom line item ARN to disassociate the resources from.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute resource_arns
    #   <p>
    #         A list containing the ARNs of resources to be disassociated.
    #       </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute billing_period_range
    #   <p>
    #         The billing period range in which the custom line item request will be applied.
    #       </p>
    #
    #   @return [CustomLineItemBillingPeriodRange]
    #
    BatchDisassociateResourcesFromCustomLineItemInput = ::Struct.new(
      :target_arn,
      :resource_arns,
      :billing_period_range,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute successfully_disassociated_resources
    #   <p>
    #         A list of <code>DisassociateResourceResponseElement</code> for each resource that's been disassociated from a percentage custom line item successfully.
    #       </p>
    #
    #   @return [Array<DisassociateResourceResponseElement>]
    #
    # @!attribute failed_disassociated_resources
    #   <p>
    #         A list of <code>DisassociateResourceResponseElement</code> for each resource that failed disassociation from a percentage custom line item.
    #       </p>
    #
    #   @return [Array<DisassociateResourceResponseElement>]
    #
    BatchDisassociateResourcesFromCustomLineItemOutput = ::Struct.new(
      :successfully_disassociated_resources,
      :failed_disassociated_resources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A summary report of actual Amazon Web Services charges and calculated Amazon Web Services charges, based on the associated pricing plan of a billing group.
    #     </p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of a billing group. </p>
    #
    #   @return [String]
    #
    # @!attribute aws_cost
    #   <p>The actual Amazon Web Services charges for the billing group.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute proforma_cost
    #   <p>The hypothetical Amazon Web Services charges based on the associated pricing plan of a billing group.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute margin
    #   <p>
    #         The billing group margin.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute margin_percentage
    #   <p>
    #         The percentage of billing group margin.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute currency
    #   <p>The displayed currency.
    #       </p>
    #
    #   @return [String]
    #
    BillingGroupCostReportElement = ::Struct.new(
      :arn,
      :aws_cost,
      :proforma_cost,
      :margin,
      :margin_percentage,
      :currency,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A representation of a billing group.
    #     </p>
    #
    # @!attribute name
    #   <p>The billing group's name.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Number (ARN) that can be used to uniquely identify the billing group.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The billing group description.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute primary_account_id
    #   <p>The account ID that serves as the main account in a billing group. </p>
    #
    #   @return [String]
    #
    # @!attribute computation_preference
    #   <p>
    #         The preferences and settings that will be used to compute the Amazon Web Services charges for a billing group.
    #       </p>
    #
    #   @return [ComputationPreference]
    #
    # @!attribute size
    #   <p>The number of accounts in the particular billing group.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute creation_time
    #   <p>
    #         The time the billing group was created.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute last_modified_time
    #   <p>
    #         The most recent time the billing group was modified.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>The billing group status. Only one of the valid values can be used.
    #       </p>
    #
    #   Enum, one of: ["ACTIVE", "PRIMARY_ACCOUNT_MISSING"]
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p>The reason why the billing group is in its current status.
    #       </p>
    #
    #   @return [String]
    #
    BillingGroupListElement = ::Struct.new(
      :name,
      :arn,
      :description,
      :primary_account_id,
      :computation_preference,
      :size,
      :creation_time,
      :last_modified_time,
      :status,
      :status_reason,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.size ||= 0
        self.creation_time ||= 0
        self.last_modified_time ||= 0
      end

      def to_s
        "#<struct AWS::SDK::Billingconductor::Types::BillingGroupListElement "\
          "name=\"[SENSITIVE]\", "\
          "arn=#{arn || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "primary_account_id=#{primary_account_id || 'nil'}, "\
          "computation_preference=#{computation_preference || 'nil'}, "\
          "size=#{size || 'nil'}, "\
          "creation_time=#{creation_time || 'nil'}, "\
          "last_modified_time=#{last_modified_time || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "status_reason=#{status_reason || 'nil'}>"
      end
    end

    # Includes enum constants for BillingGroupStatus
    #
    module BillingGroupStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      PRIMARY_ACCOUNT_MISSING = "PRIMARY_ACCOUNT_MISSING"
    end

    # <p>
    #       The preferences and settings that will be used to compute the Amazon Web Services charges for a billing group.
    #     </p>
    #
    # @!attribute pricing_plan_arn
    #   <p>
    #         The Amazon Resource Name (ARN) of the pricing plan used to compute the Amazon Web Services charges for a billing group.
    #       </p>
    #
    #   @return [String]
    #
    ComputationPreference = ::Struct.new(
      :pricing_plan_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You can cause an inconsistent state by updating or deleting a resource.
    #     </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>Identifier of the resource in use.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>Type of the resource in use.
    #       </p>
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>
    #         The token that is needed to support idempotency. Idempotency isn't currently supported, but will be implemented in a future update.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>
    #         The billing group name. The names must be unique.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute account_grouping
    #   <p>
    #         The set of accounts that will be under the billing group. The set of accounts resemble the linked accounts in a consolidated family.
    #       </p>
    #
    #   @return [AccountGrouping]
    #
    # @!attribute computation_preference
    #   <p>
    #         The preferences and settings that will be used to compute the Amazon Web Services charges for a billing group.
    #       </p>
    #
    #   @return [ComputationPreference]
    #
    # @!attribute primary_account_id
    #   <p> The account ID that serves as the main account in a billing group. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The billing group description.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p> A map that contains tag keys and tag values that are attached to a billing group. This
    #         feature isn't available during the beta. </p>
    #
    #   @return [Hash<String, String>]
    #
    CreateBillingGroupInput = ::Struct.new(
      :client_token,
      :name,
      :account_grouping,
      :computation_preference,
      :primary_account_id,
      :description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Billingconductor::Types::CreateBillingGroupInput "\
          "client_token=#{client_token || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "account_grouping=#{account_grouping || 'nil'}, "\
          "computation_preference=#{computation_preference || 'nil'}, "\
          "primary_account_id=#{primary_account_id || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the created billing group. </p>
    #
    #   @return [String]
    #
    CreateBillingGroupOutput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>
    #         The token that is needed to support idempotency. Idempotency isn't currently supported, but will be implemented in a future update.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>
    #         The name of the custom line item.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>
    #         The description of the custom line item. This is shown on the Bills page in association with the charge value.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute billing_group_arn
    #   <p> The Amazon Resource Name (ARN) that references the billing group where the custom line
    #         item applies to. </p>
    #
    #   @return [String]
    #
    # @!attribute billing_period_range
    #   <p> A time range for which the custom line item is effective. </p>
    #
    #   @return [CustomLineItemBillingPeriodRange]
    #
    # @!attribute tags
    #   <p> A map that contains tag keys and tag values that are attached to a custom line item. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute charge_details
    #   <p>
    #         A <code>CustomLineItemChargeDetails</code> that describes the charge details for a custom line item.
    #       </p>
    #
    #   @return [CustomLineItemChargeDetails]
    #
    CreateCustomLineItemInput = ::Struct.new(
      :client_token,
      :name,
      :description,
      :billing_group_arn,
      :billing_period_range,
      :tags,
      :charge_details,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Billingconductor::Types::CreateCustomLineItemInput "\
          "client_token=#{client_token || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "description=\"[SENSITIVE]\", "\
          "billing_group_arn=#{billing_group_arn || 'nil'}, "\
          "billing_period_range=#{billing_period_range || 'nil'}, "\
          "tags=#{tags || 'nil'}, "\
          "charge_details=#{charge_details || 'nil'}>"
      end
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the created custom line item. </p>
    #
    #   @return [String]
    #
    CreateCustomLineItemOutput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>
    #         The token that is needed to support idempotency. Idempotency isn't currently supported, but will be implemented in a future update.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The pricing plan name. The names must be unique to each pricing plan.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The pricing plan description.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute pricing_rule_arns
    #   <p> A list of Amazon Resource Names (ARNs) that define the pricing plan parameters. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>
    #         A map that contains tag keys and tag values that are attached to a pricing plan.
    #       </p>
    #
    #   @return [Hash<String, String>]
    #
    CreatePricingPlanInput = ::Struct.new(
      :client_token,
      :name,
      :description,
      :pricing_rule_arns,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Billingconductor::Types::CreatePricingPlanInput "\
          "client_token=#{client_token || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "description=\"[SENSITIVE]\", "\
          "pricing_rule_arns=#{pricing_rule_arns || 'nil'}, "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the created pricing plan.</p>
    #
    #   @return [String]
    #
    CreatePricingPlanOutput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>
    #         The token that is needed to support idempotency. Idempotency isn't currently supported, but will be implemented in a future update.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>
    #         The pricing rule name. The names must be unique to each pricing rule.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>
    #         The pricing rule description.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute scope
    #   <p>
    #         The scope of pricing rule that indicates if it is globally applicable, or is service-specific.
    #       </p>
    #
    #   Enum, one of: ["GLOBAL", "SERVICE"]
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>
    #         The type of pricing rule.
    #       </p>
    #
    #   Enum, one of: ["MARKUP", "DISCOUNT"]
    #
    #   @return [String]
    #
    # @!attribute modifier_percentage
    #   <p>
    #         A percentage modifier applied on the public pricing rates.
    #       </p>
    #
    #   @return [Float]
    #
    # @!attribute service
    #   <p>
    #         If the <code>Scope</code> attribute is set to <code>SERVICE</code>, the attribute indicates which service the <code>PricingRule</code> is applicable for.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>
    #         A map that contains tag keys and tag values that are attached to a pricing rule.
    #       </p>
    #
    #   @return [Hash<String, String>]
    #
    CreatePricingRuleInput = ::Struct.new(
      :client_token,
      :name,
      :description,
      :scope,
      :type,
      :modifier_percentage,
      :service,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Billingconductor::Types::CreatePricingRuleInput "\
          "client_token=#{client_token || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "description=\"[SENSITIVE]\", "\
          "scope=#{scope || 'nil'}, "\
          "type=#{type || 'nil'}, "\
          "modifier_percentage=#{modifier_percentage || 'nil'}, "\
          "service=#{service || 'nil'}, "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the created pricing rule. </p>
    #
    #   @return [String]
    #
    CreatePricingRuleOutput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CurrencyCode
    #
    module CurrencyCode
      # No documentation available.
      #
      USD = "USD"

      # No documentation available.
      #
      CNY = "CNY"
    end

    # <p>
    #       The billing period range in which the custom line item request will be applied.
    #     </p>
    #
    # @!attribute inclusive_start_billing_period
    #   <p>
    #         The inclusive start billing period that defines a billing period range where a custom line is applied.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute exclusive_end_billing_period
    #   <p>
    #         The inclusive end billing period that defines a billing period range where a custom line is applied.
    #       </p>
    #
    #   @return [String]
    #
    CustomLineItemBillingPeriodRange = ::Struct.new(
      :inclusive_start_billing_period,
      :exclusive_end_billing_period,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       The charge details of a custom line item. It should contain only one of <code>Flat</code> or <code>Percentage</code>.
    #     </p>
    #
    # @!attribute flat
    #   <p>
    #         A <code>CustomLineItemFlatChargeDetails</code> that describes the charge details of a flat custom line item.
    #       </p>
    #
    #   @return [CustomLineItemFlatChargeDetails]
    #
    # @!attribute percentage
    #   <p>
    #         A <code>CustomLineItemPercentageChargeDetails</code> that describes the charge details of a percentage custom line item.
    #       </p>
    #
    #   @return [CustomLineItemPercentageChargeDetails]
    #
    # @!attribute type
    #   <p>
    #         The type of the custom line item that indicates whether the charge is a fee or credit.
    #       </p>
    #
    #   Enum, one of: ["CREDIT", "FEE"]
    #
    #   @return [String]
    #
    CustomLineItemChargeDetails = ::Struct.new(
      :flat,
      :percentage,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       A representation of the charge details associated with a flat custom line item.
    #     </p>
    #
    # @!attribute charge_value
    #   <p>
    #         The custom line item's fixed charge value in USD.
    #       </p>
    #
    #   @return [Float]
    #
    CustomLineItemFlatChargeDetails = ::Struct.new(
      :charge_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       A representation of a custom line item.
    #     </p>
    #
    # @!attribute arn
    #   <p> The Amazon Resource Names (ARNs) for custom line items. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>
    #         The custom line item's name.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute charge_details
    #   <p>
    #         A <code>ListCustomLineItemChargeDetails</code> that describes the charge details of a custom line item.
    #       </p>
    #
    #   @return [ListCustomLineItemChargeDetails]
    #
    # @!attribute currency_code
    #   <p>
    #         The custom line item's charge value currency. Only one of the valid values can be used.
    #       </p>
    #
    #   Enum, one of: ["USD", "CNY"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>
    #         The custom line item's description. This is shown on the Bills page in association with the charge value.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute product_code
    #   <p>
    #         The product code associated with the custom line item.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute billing_group_arn
    #   <p> The Amazon Resource Name (ARN) that references the billing group where the custom line
    #         item applies to. </p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>
    #         The time created.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute last_modified_time
    #   <p>
    #         The most recent time the custom line item was modified.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute association_size
    #   <p>
    #         The number of resources that are associated to the custom line item.
    #       </p>
    #
    #   @return [Integer]
    #
    CustomLineItemListElement = ::Struct.new(
      :arn,
      :name,
      :charge_details,
      :currency_code,
      :description,
      :product_code,
      :billing_group_arn,
      :creation_time,
      :last_modified_time,
      :association_size,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.creation_time ||= 0
        self.last_modified_time ||= 0
        self.association_size ||= 0
      end

      def to_s
        "#<struct AWS::SDK::Billingconductor::Types::CustomLineItemListElement "\
          "arn=#{arn || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "charge_details=#{charge_details || 'nil'}, "\
          "currency_code=#{currency_code || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "product_code=#{product_code || 'nil'}, "\
          "billing_group_arn=#{billing_group_arn || 'nil'}, "\
          "creation_time=#{creation_time || 'nil'}, "\
          "last_modified_time=#{last_modified_time || 'nil'}, "\
          "association_size=#{association_size || 'nil'}>"
      end
    end

    # <p>
    #       A representation of the charge details associated with a percentage custom line item.
    #     </p>
    #
    # @!attribute percentage_value
    #   <p>
    #         The custom line item's percentage value. This will be multiplied against the combined value of its associated resources to determine its charge value.
    #       </p>
    #
    #   @return [Float]
    #
    # @!attribute associated_values
    #   <p>
    #         A list of resource ARNs to associate to the percentage custom line item.
    #       </p>
    #
    #   @return [Array<String>]
    #
    CustomLineItemPercentageChargeDetails = ::Struct.new(
      :percentage_value,
      :associated_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CustomLineItemRelationship
    #
    module CustomLineItemRelationship
      # No documentation available.
      #
      PARENT = "PARENT"

      # No documentation available.
      #
      CHILD = "CHILD"
    end

    # Includes enum constants for CustomLineItemType
    #
    module CustomLineItemType
      # No documentation available.
      #
      CREDIT = "CREDIT"

      # No documentation available.
      #
      FEE = "FEE"
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the billing group you're deleting.</p>
    #
    #   @return [String]
    #
    DeleteBillingGroupInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the deleted billing group.</p>
    #
    #   @return [String]
    #
    DeleteBillingGroupOutput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>
    #         The ARN of the custom line item to be deleted.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute billing_period_range
    #   <p>
    #         The billing period range in which the custom line item request will be applied.
    #       </p>
    #
    #   @return [CustomLineItemBillingPeriodRange]
    #
    DeleteCustomLineItemInput = ::Struct.new(
      :arn,
      :billing_period_range,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>
    #         Then ARN of the deleted custom line item.
    #       </p>
    #
    #   @return [String]
    #
    DeleteCustomLineItemOutput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the pricing plan you're deleting. </p>
    #
    #   @return [String]
    #
    DeletePricingPlanInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the deleted pricing plan. </p>
    #
    #   @return [String]
    #
    DeletePricingPlanOutput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the pricing rule you are deleting. </p>
    #
    #   @return [String]
    #
    DeletePricingRuleInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the deleted pricing rule. </p>
    #
    #   @return [String]
    #
    DeletePricingRuleOutput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the billing group that the array of account IDs will
    #         disassociate from. </p>
    #
    #   @return [String]
    #
    # @!attribute account_ids
    #   <p>The array of account IDs to disassociate.
    #       </p>
    #
    #   @return [Array<String>]
    #
    DisassociateAccountsInput = ::Struct.new(
      :arn,
      :account_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the billing group that the array of account IDs is
    #         disassociated from. </p>
    #
    #   @return [String]
    #
    DisassociateAccountsOutput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p> The pricing plan Amazon Resource Name (ARN) to disassociate pricing rules from. </p>
    #
    #   @return [String]
    #
    # @!attribute pricing_rule_arns
    #   <p> A list containing the Amazon Resource Name (ARN) of the pricing rules that will be
    #         disassociated. </p>
    #
    #   @return [Array<String>]
    #
    DisassociatePricingRulesInput = ::Struct.new(
      :arn,
      :pricing_rule_arns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the pricing plan that the pricing rules successfully
    #         disassociated from. </p>
    #
    #   @return [String]
    #
    DisassociatePricingRulesOutput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       A resource disassociation result for a percentage custom line item.
    #     </p>
    #
    # @!attribute arn
    #   <p>
    #         The resource ARN that was disassociated from the custom line item.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>
    #         An <code>AssociateResourceError</code> shown if the resource disassociation fails.
    #       </p>
    #
    #   @return [AssociateResourceError]
    #
    DisassociateResourceResponseElement = ::Struct.new(
      :arn,
      :error,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An unexpected error occurred while processing a request.
    #     </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute retry_after_seconds
    #   <p>Number of seconds you can retry after the call.
    #       </p>
    #
    #   @return [Integer]
    #
    InternalServerException = ::Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.retry_after_seconds ||= 0
      end
    end

    # <p>The filter on the account ID of the linked account, or any of the following:</p>
    #          <p>
    #             <code>MONITORED</code>: linked accounts that are associated to billing groups.</p>
    #          <p>
    #             <code>UNMONITORED</code>: linked accounts that are not associated to billing
    #       groups.</p>
    #          <p>
    #             <code>Billing Group Arn</code>: linked accounts that are associated to the provided
    #       Billing Group Arn. </p>
    #
    # @!attribute association
    #   <p>
    #               <code>MONITORED</code>: linked accounts that are associated to billing groups.</p>
    #            <p>
    #               <code>UNMONITORED</code>: linked accounts that are not associated to billing
    #         groups.</p>
    #            <p>
    #               <code>Billing Group Arn</code>: linked accounts that are associated to the provided
    #         Billing Group Arn. </p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>
    #         The Amazon Web Services account ID to filter on.
    #       </p>
    #
    #   @return [String]
    #
    ListAccountAssociationsFilter = ::Struct.new(
      :association,
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute billing_period
    #   <p>
    #         The preferred billing period to get account associations.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>The filter on the account ID of the linked account, or any of the following:</p>
    #            <p>
    #               <code>MONITORED</code>: linked accounts that are associated to billing groups.</p>
    #            <p>
    #               <code>UNMONITORED</code>: linked accounts that are not associated to billing
    #         groups.</p>
    #            <p>
    #               <code>Billing Group Arn</code>: linked accounts that are associated to the provided
    #         billing group Arn. </p>
    #
    #   @return [ListAccountAssociationsFilter]
    #
    # @!attribute next_token
    #   <p>
    #         The pagination token used on subsequent calls to retrieve accounts.
    #       </p>
    #
    #   @return [String]
    #
    ListAccountAssociationsInput = ::Struct.new(
      :billing_period,
      :filters,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute linked_accounts
    #   <p> The list of linked accounts in the payer account. </p>
    #
    #   @return [Array<AccountAssociationsListElement>]
    #
    # @!attribute next_token
    #   <p>
    #         The pagination token used on subsequent calls to get accounts.
    #       </p>
    #
    #   @return [String]
    #
    ListAccountAssociationsOutput = ::Struct.new(
      :linked_accounts,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The filter used to retrieve specific <code>BillingGroupCostReportElements</code>.
    #     </p>
    #
    # @!attribute billing_group_arns
    #   <p>The list of Amazon Resource Names (ARNs) used to filter billing groups to retrieve
    #         reports. </p>
    #
    #   @return [Array<String>]
    #
    ListBillingGroupCostReportsFilter = ::Struct.new(
      :billing_group_arns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute billing_period
    #   <p>The preferred billing period for your report.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of reports to retrieve.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The pagination token used on subsequent calls to get reports.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>A <code>ListBillingGroupCostReportsFilter</code> to specify billing groups to retrieve reports from.
    #       </p>
    #
    #   @return [ListBillingGroupCostReportsFilter]
    #
    ListBillingGroupCostReportsInput = ::Struct.new(
      :billing_period,
      :max_results,
      :next_token,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute billing_group_cost_reports
    #   <p>A list of <code>BillingGroupCostReportElement</code> retrieved.
    #       </p>
    #
    #   @return [Array<BillingGroupCostReportElement>]
    #
    # @!attribute next_token
    #   <p>The pagination token used on subsequent calls to get reports.
    #       </p>
    #
    #   @return [String]
    #
    ListBillingGroupCostReportsOutput = ::Struct.new(
      :billing_group_cost_reports,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The filter that specifies the billing groups and pricing plans to retrieve billing group information.
    #     </p>
    #
    # @!attribute arns
    #   <p>The list of billing group Amazon Resource Names (ARNs) to retrieve information. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute pricing_plan
    #   <p>The pricing plan Amazon Resource Names (ARNs) to retrieve information. </p>
    #
    #   @return [String]
    #
    ListBillingGroupsFilter = ::Struct.new(
      :arns,
      :pricing_plan,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute billing_period
    #   <p>The preferred billing period to get billing groups.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of billing groups to retrieve.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The pagination token used on subsequent calls to get billing groups.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>A <code>ListBillingGroupsFilter</code> that specifies the billing group and pricing plan to retrieve billing group information.
    #       </p>
    #
    #   @return [ListBillingGroupsFilter]
    #
    ListBillingGroupsInput = ::Struct.new(
      :billing_period,
      :max_results,
      :next_token,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute billing_groups
    #   <p>A list of <code>BillingGroupListElement</code> retrieved.
    #       </p>
    #
    #   @return [Array<BillingGroupListElement>]
    #
    # @!attribute next_token
    #   <p>The pagination token used on subsequent calls to get billing groups.
    #       </p>
    #
    #   @return [String]
    #
    ListBillingGroupsOutput = ::Struct.new(
      :billing_groups,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       A representation of the charge details of a custom line item.
    #     </p>
    #
    # @!attribute flat
    #   <p>
    #         A <code>ListCustomLineItemFlatChargeDetails</code> that describes the charge details of a flat custom line item.
    #       </p>
    #
    #   @return [ListCustomLineItemFlatChargeDetails]
    #
    # @!attribute percentage
    #   <p>
    #         A <code>ListCustomLineItemPercentageChargeDetails</code> that describes the charge details of a percentage custom line item.
    #       </p>
    #
    #   @return [ListCustomLineItemPercentageChargeDetails]
    #
    # @!attribute type
    #   <p>
    #         The type of the custom line item that indicates whether the charge is a <code>fee</code> or <code>credit</code>.
    #       </p>
    #
    #   Enum, one of: ["CREDIT", "FEE"]
    #
    #   @return [String]
    #
    ListCustomLineItemChargeDetails = ::Struct.new(
      :flat,
      :percentage,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       A representation of the charge details associated with a flat custom line item.
    #     </p>
    #
    # @!attribute charge_value
    #   <p>
    #         The custom line item's fixed charge value in USD.
    #       </p>
    #
    #   @return [Float]
    #
    ListCustomLineItemFlatChargeDetails = ::Struct.new(
      :charge_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       A representation of the charge details associated with a percentage custom line item.
    #     </p>
    #
    # @!attribute percentage_value
    #   <p>
    #         The custom line item's percentage value. This will be multiplied against the combined value of its associated resources to determine its charge value.
    #       </p>
    #
    #   @return [Float]
    #
    ListCustomLineItemPercentageChargeDetails = ::Struct.new(
      :percentage_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       A filter that specifies the custom line items and billing groups to retrieve FFLI information.
    #     </p>
    #
    # @!attribute names
    #   <p>
    #         A list of custom line items to retrieve information.
    #       </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute billing_groups
    #   <p> The billing group Amazon Resource Names (ARNs) to retrieve information. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute arns
    #   <p>
    #        A list of custom line item ARNs to retrieve information.
    #       </p>
    #
    #   @return [Array<String>]
    #
    ListCustomLineItemsFilter = ::Struct.new(
      :names,
      :billing_groups,
      :arns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute billing_period
    #   <p>
    #         The preferred billing period to get custom line items (FFLIs).
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>
    #         The maximum number of billing groups to retrieve.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>
    #         The pagination token used on subsequent calls to get custom line items (FFLIs).
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>A <code>ListCustomLineItemsFilter</code> that specifies the custom line item names
    #         and/or billing group Amazon Resource Names (ARNs) to retrieve FFLI information.</p>
    #
    #   @return [ListCustomLineItemsFilter]
    #
    ListCustomLineItemsInput = ::Struct.new(
      :billing_period,
      :max_results,
      :next_token,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute custom_line_items
    #   <p>
    #         A list of <code>FreeFormLineItemListElements</code> received.
    #       </p>
    #
    #   @return [Array<CustomLineItemListElement>]
    #
    # @!attribute next_token
    #   <p>
    #         The pagination token used on subsequent calls to get custom line items (FFLIs).
    #       </p>
    #
    #   @return [String]
    #
    ListCustomLineItemsOutput = ::Struct.new(
      :custom_line_items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute billing_period
    #   <p>
    #         The pricing plan billing period for which associations will be listed.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute pricing_rule_arn
    #   <p> The pricing rule Amazon Resource Name (ARN) for which associations will be listed. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>
    #         The optional maximum number of pricing rule associations to retrieve.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>
    #         The optional pagination token returned by a previous call.
    #       </p>
    #
    #   @return [String]
    #
    ListPricingPlansAssociatedWithPricingRuleInput = ::Struct.new(
      :billing_period,
      :pricing_rule_arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute billing_period
    #   <p>
    #         The pricing plan billing period for which associations will be listed.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute pricing_rule_arn
    #   <p> The pricing rule Amazon Resource Name (ARN) for which associations will be listed. </p>
    #
    #   @return [String]
    #
    # @!attribute pricing_plan_arns
    #   <p>
    #         The list containing pricing plans associated with the requested pricing rule.
    #       </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>
    #         The pagination token to be used on subsequent calls.
    #       </p>
    #
    #   @return [String]
    #
    ListPricingPlansAssociatedWithPricingRuleOutput = ::Struct.new(
      :billing_period,
      :pricing_rule_arn,
      :pricing_plan_arns,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The filter that specifies the Amazon Resource Names (ARNs) of pricing plans, to retrieve
    #       pricing plan information. </p>
    #
    # @!attribute arns
    #   <p>A list of pricing plan Amazon Resource Names (ARNs) to retrieve information. </p>
    #
    #   @return [Array<String>]
    #
    ListPricingPlansFilter = ::Struct.new(
      :arns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute billing_period
    #   <p>The preferred billing period to get pricing plan.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>A <code>ListPricingPlansFilter</code> that specifies the Amazon Resource Name (ARNs)
    #         of pricing plans to retrieve pricing plans information.</p>
    #
    #   @return [ListPricingPlansFilter]
    #
    # @!attribute max_results
    #   <p>The maximum number of pricing plans to retrieve.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The pagination token used on subsequent call to get pricing plans.
    #       </p>
    #
    #   @return [String]
    #
    ListPricingPlansInput = ::Struct.new(
      :billing_period,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute billing_period
    #   <p>
    #         The billing period for which the described pricing plans are applicable.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute pricing_plans
    #   <p>A list of <code>PricingPlanListElement</code> retrieved.
    #       </p>
    #
    #   @return [Array<PricingPlanListElement>]
    #
    # @!attribute next_token
    #   <p>The pagination token used on subsequent calls to get pricing plans.
    #       </p>
    #
    #   @return [String]
    #
    ListPricingPlansOutput = ::Struct.new(
      :billing_period,
      :pricing_plans,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute billing_period
    #   <p>
    #         The billing period for which the pricing rule associations are to be listed.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute pricing_plan_arn
    #   <p> The Amazon Resource Name (ARN) of the pricing plan for which associations are to be
    #         listed.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The optional maximum number of pricing rule associations to retrieve.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>
    #         The optional pagination token returned by a previous call.
    #       </p>
    #
    #   @return [String]
    #
    ListPricingRulesAssociatedToPricingPlanInput = ::Struct.new(
      :billing_period,
      :pricing_plan_arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute billing_period
    #   <p>
    #         The billing period for which the pricing rule associations are listed.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute pricing_plan_arn
    #   <p> The Amazon Resource Name (ARN) of the pricing plan for which associations are
    #         listed.</p>
    #
    #   @return [String]
    #
    # @!attribute pricing_rule_arns
    #   <p>
    #         A list containing pricing rules associated with the requested pricing plan.
    #       </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>
    #         The pagination token to be used on subsequent calls.
    #       </p>
    #
    #   @return [String]
    #
    ListPricingRulesAssociatedToPricingPlanOutput = ::Struct.new(
      :billing_period,
      :pricing_plan_arn,
      :pricing_rule_arns,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The filter that specifies criteria that the pricing rules returned by the
    #         <code>ListPricingRules</code> API will adhere to. </p>
    #
    # @!attribute arns
    #   <p> A list containing the pricing rule Amazon Resource Names (ARNs) to include in the API
    #         response. </p>
    #
    #   @return [Array<String>]
    #
    ListPricingRulesFilter = ::Struct.new(
      :arns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute billing_period
    #   <p>
    #         The preferred billing period to get the pricing plan.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p> A <code>DescribePricingRuleFilter</code> that specifies the Amazon Resource Name (ARNs)
    #         of pricing rules to retrieve pricing rules information. </p>
    #
    #   @return [ListPricingRulesFilter]
    #
    # @!attribute max_results
    #   <p>
    #         The maximum number of pricing rules to retrieve.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>
    #         The pagination token used on subsequent call to get pricing rules.
    #       </p>
    #
    #   @return [String]
    #
    ListPricingRulesInput = ::Struct.new(
      :billing_period,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute billing_period
    #   <p>
    #         The billing period for which the described pricing rules are applicable.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute pricing_rules
    #   <p>
    #         A list containing the described pricing rules.
    #       </p>
    #
    #   @return [Array<PricingRuleListElement>]
    #
    # @!attribute next_token
    #   <p>
    #         The pagination token used on subsequent calls to get pricing rules.
    #       </p>
    #
    #   @return [String]
    #
    ListPricingRulesOutput = ::Struct.new(
      :billing_period,
      :pricing_rules,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       A filter that specifies the type of resource associations that should be retrieved for a custom line item.
    #     </p>
    #
    # @!attribute relationship
    #   <p>
    #         The type of relationship between the custom line item and the associated resource.
    #       </p>
    #
    #   Enum, one of: ["PARENT", "CHILD"]
    #
    #   @return [String]
    #
    ListResourcesAssociatedToCustomLineItemFilter = ::Struct.new(
      :relationship,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute billing_period
    #   <p>
    #         The billing period for which the resource associations will be listed.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>
    #         The ARN of the custom line item for which the resource associations will be listed.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>
    #         (Optional) The maximum number of resource associations to be retrieved.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>
    #         (Optional) The pagination token returned by a previous request.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>
    #         (Optional) A <code>ListResourcesAssociatedToCustomLineItemFilter</code> that can specify the types of resources that should be retrieved.
    #       </p>
    #
    #   @return [ListResourcesAssociatedToCustomLineItemFilter]
    #
    ListResourcesAssociatedToCustomLineItemInput = ::Struct.new(
      :billing_period,
      :arn,
      :max_results,
      :next_token,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>
    #         The custom line item ARN for which the resource associations are listed.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute associated_resources
    #   <p>
    #         A list of <code>ListResourcesAssociatedToCustomLineItemResponseElement</code> for each resource association retrieved.
    #       </p>
    #
    #   @return [Array<ListResourcesAssociatedToCustomLineItemResponseElement>]
    #
    # @!attribute next_token
    #   <p>
    #         The pagination token to be used in subsequent requests to retrieve additional results.
    #       </p>
    #
    #   @return [String]
    #
    ListResourcesAssociatedToCustomLineItemOutput = ::Struct.new(
      :arn,
      :associated_resources,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       A representation of a resource association for a custom line item.
    #     </p>
    #
    # @!attribute arn
    #   <p>
    #         The ARN of the associated resource.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute relationship
    #   <p>
    #         The type of relationship between the custom line item and the associated resource.
    #       </p>
    #
    #   Enum, one of: ["PARENT", "CHILD"]
    #
    #   @return [String]
    #
    ListResourcesAssociatedToCustomLineItemResponseElement = ::Struct.new(
      :arn,
      :relationship,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>
    #         The Amazon Resource Name (ARN) that identifies the resource to list the tags.
    #       </p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>
    #         The tags for the resource.
    #       </p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A representation of a pricing plan.
    #     </p>
    #
    # @!attribute name
    #   <p>The name of a pricing plan.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The pricing plan Amazon Resource Names (ARN). This can be used to uniquely identify a
    #         pricing plan. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The pricing plan description.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute size
    #   <p>
    #       The pricing rules count currently associated with this pricing plan list element.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute creation_time
    #   <p>
    #         The time the pricing plan was created.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute last_modified_time
    #   <p>
    #         The most recent time the pricing plan was modified.
    #       </p>
    #
    #   @return [Integer]
    #
    PricingPlanListElement = ::Struct.new(
      :name,
      :arn,
      :description,
      :size,
      :creation_time,
      :last_modified_time,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.size ||= 0
        self.creation_time ||= 0
        self.last_modified_time ||= 0
      end

      def to_s
        "#<struct AWS::SDK::Billingconductor::Types::PricingPlanListElement "\
          "name=\"[SENSITIVE]\", "\
          "arn=#{arn || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "size=#{size || 'nil'}, "\
          "creation_time=#{creation_time || 'nil'}, "\
          "last_modified_time=#{last_modified_time || 'nil'}>"
      end
    end

    # <p>
    #       A representation of a pricing rule.
    #     </p>
    #
    # @!attribute name
    #   <p>
    #         The name of a pricing rule.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) used to uniquely identify a pricing rule. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>
    #         The pricing rule description.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute scope
    #   <p>
    #         The scope of pricing rule that indicates if it is globally applicable, or if it is service-specific.
    #       </p>
    #
    #   Enum, one of: ["GLOBAL", "SERVICE"]
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>
    #         The type of pricing rule.
    #       </p>
    #
    #   Enum, one of: ["MARKUP", "DISCOUNT"]
    #
    #   @return [String]
    #
    # @!attribute modifier_percentage
    #   <p>
    #         A percentage modifier applied on the public pricing rates.
    #       </p>
    #
    #   @return [Float]
    #
    # @!attribute service
    #   <p>
    #         If the <code>Scope</code> attribute is <code>SERVICE</code>, this attribute indicates which service the <code>PricingRule</code> is applicable for.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute associated_pricing_plan_count
    #   <p>
    #         The pricing plans count that this pricing rule is associated with.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute creation_time
    #   <p>
    #         The time the pricing rule was created.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute last_modified_time
    #   <p>
    #         The most recent time the pricing rule was modified.
    #       </p>
    #
    #   @return [Integer]
    #
    PricingRuleListElement = ::Struct.new(
      :name,
      :arn,
      :description,
      :scope,
      :type,
      :modifier_percentage,
      :service,
      :associated_pricing_plan_count,
      :creation_time,
      :last_modified_time,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.associated_pricing_plan_count ||= 0
        self.creation_time ||= 0
        self.last_modified_time ||= 0
      end

      def to_s
        "#<struct AWS::SDK::Billingconductor::Types::PricingRuleListElement "\
          "name=\"[SENSITIVE]\", "\
          "arn=#{arn || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "scope=#{scope || 'nil'}, "\
          "type=#{type || 'nil'}, "\
          "modifier_percentage=#{modifier_percentage || 'nil'}, "\
          "service=#{service || 'nil'}, "\
          "associated_pricing_plan_count=#{associated_pricing_plan_count || 'nil'}, "\
          "creation_time=#{creation_time || 'nil'}, "\
          "last_modified_time=#{last_modified_time || 'nil'}>"
      end
    end

    # Includes enum constants for PricingRuleScope
    #
    module PricingRuleScope
      # No documentation available.
      #
      GLOBAL = "GLOBAL"

      # No documentation available.
      #
      SERVICE = "SERVICE"
    end

    # Includes enum constants for PricingRuleType
    #
    module PricingRuleType
      # No documentation available.
      #
      MARKUP = "MARKUP"

      # No documentation available.
      #
      DISCOUNT = "DISCOUNT"
    end

    # <p>The request references a resource that doesn't exist.
    #     </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>Resource identifier that was not found.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>Resource type that was not found.
    #       </p>
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request would cause a service limit to exceed.
    #     </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>Identifier of the resource affected.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>Type of the resource affected.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute limit_code
    #   <p>The unique code identifier of the service limit that is being exceeded.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   <p>The unique code for the service of the limit that is being exceeded.
    #       </p>
    #
    #   @return [String]
    #
    ServiceLimitExceededException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :limit_code,
      :service_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>
    #         The Amazon Resource Name (ARN) of the resource to which to add tags.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>
    #         The tags to add to the resource as a list of key-value pairs.
    #       </p>
    #
    #   @return [Hash<String, String>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was denied due to request throttling.
    #     </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute retry_after_seconds
    #   <p>Number of seconds you can safely retry after the call.
    #       </p>
    #
    #   @return [Integer]
    #
    ThrottlingException = ::Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.retry_after_seconds ||= 0
      end
    end

    # @!attribute resource_arn
    #   <p>
    #         The Amazon Resource Name (ARN) of the resource to which to delete tags.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>
    #         The tags to delete from the resource as a list of key-value pairs.
    #       </p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the billing group being updated. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the billing group. The names must be unique to each billing group.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the billing group. Only one of the valid values can be used.
    #       </p>
    #
    #   Enum, one of: ["ACTIVE", "PRIMARY_ACCOUNT_MISSING"]
    #
    #   @return [String]
    #
    # @!attribute computation_preference
    #   <p>
    #         The preferences and settings that will be used to compute the Amazon Web Services charges for a billing group.
    #       </p>
    #
    #   @return [ComputationPreference]
    #
    # @!attribute description
    #   <p>A description of the billing group.
    #       </p>
    #
    #   @return [String]
    #
    UpdateBillingGroupInput = ::Struct.new(
      :arn,
      :name,
      :status,
      :computation_preference,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Billingconductor::Types::UpdateBillingGroupInput "\
          "arn=#{arn || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "status=#{status || 'nil'}, "\
          "computation_preference=#{computation_preference || 'nil'}, "\
          "description=\"[SENSITIVE]\">"
      end
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the billing group that was updated. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>
    #         The name of the billing group. The names must be unique to each billing group.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>
    #         A description of the billing group.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute primary_account_id
    #   <p>
    #         The account ID that serves as the main account in a billing group.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute pricing_plan_arn
    #   <p>
    #         The Amazon Resource Name (ARN) of the pricing plan to compute Amazon Web Services charges for the
    #         billing group.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute size
    #   <p>
    #         The number of accounts in the particular billing group.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute last_modified_time
    #   <p>
    #         The most recent time the billing group was modified.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>
    #         The status of the billing group. Only one of the valid values can be used.
    #       </p>
    #
    #   Enum, one of: ["ACTIVE", "PRIMARY_ACCOUNT_MISSING"]
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p>
    #         The reason why the billing group is in its current status.
    #       </p>
    #
    #   @return [String]
    #
    UpdateBillingGroupOutput = ::Struct.new(
      :arn,
      :name,
      :description,
      :primary_account_id,
      :pricing_plan_arn,
      :size,
      :last_modified_time,
      :status,
      :status_reason,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.size ||= 0
        self.last_modified_time ||= 0
      end

      def to_s
        "#<struct AWS::SDK::Billingconductor::Types::UpdateBillingGroupOutput "\
          "arn=#{arn || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "description=\"[SENSITIVE]\", "\
          "primary_account_id=#{primary_account_id || 'nil'}, "\
          "pricing_plan_arn=#{pricing_plan_arn || 'nil'}, "\
          "size=#{size || 'nil'}, "\
          "last_modified_time=#{last_modified_time || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "status_reason=#{status_reason || 'nil'}>"
      end
    end

    # <p>
    #       A representation of the new charge details of a custom line item. This should contain only one of <code>Flat</code> or <code>Percentage</code>.
    #     </p>
    #
    # @!attribute flat
    #   <p>
    #         An <code>UpdateCustomLineItemFlatChargeDetails</code> that describes the new charge details of a flat custom line item.
    #       </p>
    #
    #   @return [UpdateCustomLineItemFlatChargeDetails]
    #
    # @!attribute percentage
    #   <p>
    #         An <code>UpdateCustomLineItemPercentageChargeDetails</code> that describes the new charge details of a percentage custom line item.
    #       </p>
    #
    #   @return [UpdateCustomLineItemPercentageChargeDetails]
    #
    UpdateCustomLineItemChargeDetails = ::Struct.new(
      :flat,
      :percentage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       A representation of the new charge details associated with a flat custom line item.
    #     </p>
    #
    # @!attribute charge_value
    #   <p>
    #         The custom line item's new fixed charge value in USD.
    #       </p>
    #
    #   @return [Float]
    #
    UpdateCustomLineItemFlatChargeDetails = ::Struct.new(
      :charge_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>
    #         The ARN of the custom line item to be updated.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>
    #         The new name for the custom line item.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>
    #         The new line item description of the custom line item.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute charge_details
    #   <p>
    #         A <code>ListCustomLineItemChargeDetails</code> containing the new charge details for the custom line item.
    #       </p>
    #
    #   @return [UpdateCustomLineItemChargeDetails]
    #
    # @!attribute billing_period_range
    #   <p>
    #         The billing period range in which the custom line item request will be applied.
    #       </p>
    #
    #   @return [CustomLineItemBillingPeriodRange]
    #
    UpdateCustomLineItemInput = ::Struct.new(
      :arn,
      :name,
      :description,
      :charge_details,
      :billing_period_range,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Billingconductor::Types::UpdateCustomLineItemInput "\
          "arn=#{arn || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "description=\"[SENSITIVE]\", "\
          "charge_details=#{charge_details || 'nil'}, "\
          "billing_period_range=#{billing_period_range || 'nil'}>"
      end
    end

    # @!attribute arn
    #   <p>
    #         The ARN of the successfully updated custom line item.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute billing_group_arn
    #   <p>
    #         The ARN of the billing group that the custom line item is applied to.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>
    #         The name of the successfully updated custom line item.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>
    #         The description of the successfully updated custom line item.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute charge_details
    #   <p>
    #         A <code>ListCustomLineItemChargeDetails</code> containing the charge details of the successfully updated custom line item.
    #       </p>
    #
    #   @return [ListCustomLineItemChargeDetails]
    #
    # @!attribute last_modified_time
    #   <p>
    #         The most recent time the custom line item was modified.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute association_size
    #   <p>
    #         The number of resources that are associated to the custom line item.
    #       </p>
    #
    #   @return [Integer]
    #
    UpdateCustomLineItemOutput = ::Struct.new(
      :arn,
      :billing_group_arn,
      :name,
      :description,
      :charge_details,
      :last_modified_time,
      :association_size,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.last_modified_time ||= 0
        self.association_size ||= 0
      end

      def to_s
        "#<struct AWS::SDK::Billingconductor::Types::UpdateCustomLineItemOutput "\
          "arn=#{arn || 'nil'}, "\
          "billing_group_arn=#{billing_group_arn || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "description=\"[SENSITIVE]\", "\
          "charge_details=#{charge_details || 'nil'}, "\
          "last_modified_time=#{last_modified_time || 'nil'}, "\
          "association_size=#{association_size || 'nil'}>"
      end
    end

    # <p>
    #       A representation of the new charge details associated with a percentage custom line item.
    #     </p>
    #
    # @!attribute percentage_value
    #   <p>
    #         The custom line item's new percentage value. This will be multiplied against the combined value of its associated resources to determine its charge value.
    #       </p>
    #
    #   @return [Float]
    #
    UpdateCustomLineItemPercentageChargeDetails = ::Struct.new(
      :percentage_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the pricing plan you're updating. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the pricing plan. The name must be unique to each pricing plan.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The pricing plan description.
    #       </p>
    #
    #   @return [String]
    #
    UpdatePricingPlanInput = ::Struct.new(
      :arn,
      :name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Billingconductor::Types::UpdatePricingPlanInput "\
          "arn=#{arn || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "description=\"[SENSITIVE]\">"
      end
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the updated pricing plan. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>
    #         The name of the pricing plan. The name must be unique to each pricing plan.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>
    #         The new description for the pricing rule.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute size
    #   <p>
    #         The pricing rules count currently associated with this pricing plan list.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute last_modified_time
    #   <p>
    #         The most recent time the pricing plan was modified.
    #       </p>
    #
    #   @return [Integer]
    #
    UpdatePricingPlanOutput = ::Struct.new(
      :arn,
      :name,
      :description,
      :size,
      :last_modified_time,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.size ||= 0
        self.last_modified_time ||= 0
      end

      def to_s
        "#<struct AWS::SDK::Billingconductor::Types::UpdatePricingPlanOutput "\
          "arn=#{arn || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "description=\"[SENSITIVE]\", "\
          "size=#{size || 'nil'}, "\
          "last_modified_time=#{last_modified_time || 'nil'}>"
      end
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the pricing rule to update. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>
    #         The new name of the pricing rule. The name must be unique to each pricing rule.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>
    #         The new description for the pricing rule.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>
    #         The new pricing rule type.
    #       </p>
    #
    #   Enum, one of: ["MARKUP", "DISCOUNT"]
    #
    #   @return [String]
    #
    # @!attribute modifier_percentage
    #   <p>
    #         The new modifier to show pricing plan rates as a percentage.
    #       </p>
    #
    #   @return [Float]
    #
    UpdatePricingRuleInput = ::Struct.new(
      :arn,
      :name,
      :description,
      :type,
      :modifier_percentage,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Billingconductor::Types::UpdatePricingRuleInput "\
          "arn=#{arn || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "description=\"[SENSITIVE]\", "\
          "type=#{type || 'nil'}, "\
          "modifier_percentage=#{modifier_percentage || 'nil'}>"
      end
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the successfully updated pricing rule. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>
    #         The new name of the pricing rule. The name must be unique to each pricing rule.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>
    #         The new description for the pricing rule.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute scope
    #   <p>
    #         The scope of pricing rule that indicates if it is globally applicable, or is service-specific.
    #       </p>
    #
    #   Enum, one of: ["GLOBAL", "SERVICE"]
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>
    #         The new pricing rule type.
    #       </p>
    #
    #   Enum, one of: ["MARKUP", "DISCOUNT"]
    #
    #   @return [String]
    #
    # @!attribute modifier_percentage
    #   <p>
    #         The new modifier to show pricing plan rates as a percentage.
    #       </p>
    #
    #   @return [Float]
    #
    # @!attribute service
    #   <p>
    #         If the <code>Scope</code> attribute is set to <code>SERVICE</code>, the attribute indicates which service the <code>PricingRule</code> is applicable for.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute associated_pricing_plan_count
    #   <p>
    #         The pricing plans count that this pricing rule is associated with.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute last_modified_time
    #   <p>
    #         The most recent time the pricing rule was modified.
    #       </p>
    #
    #   @return [Integer]
    #
    UpdatePricingRuleOutput = ::Struct.new(
      :arn,
      :name,
      :description,
      :scope,
      :type,
      :modifier_percentage,
      :service,
      :associated_pricing_plan_count,
      :last_modified_time,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.associated_pricing_plan_count ||= 0
        self.last_modified_time ||= 0
      end

      def to_s
        "#<struct AWS::SDK::Billingconductor::Types::UpdatePricingRuleOutput "\
          "arn=#{arn || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "description=\"[SENSITIVE]\", "\
          "scope=#{scope || 'nil'}, "\
          "type=#{type || 'nil'}, "\
          "modifier_percentage=#{modifier_percentage || 'nil'}, "\
          "service=#{service || 'nil'}, "\
          "associated_pricing_plan_count=#{associated_pricing_plan_count || 'nil'}, "\
          "last_modified_time=#{last_modified_time || 'nil'}>"
      end
    end

    # <p>The input doesn't match with the constraints specified by Amazon Web Services services.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason the request's validation failed.
    #       </p>
    #
    #   Enum, one of: ["UNKNOWN_OPERATION", "CANNOT_PARSE", "FIELD_VALIDATION_FAILED", "OTHER", "PRIMARY_NOT_ASSOCIATED", "PRIMARY_CANNOT_DISASSOCIATE", "ACCOUNTS_NOT_ASSOCIATED", "ACCOUNTS_ALREADY_ASSOCIATED", "ILLEGAL_PRIMARY_ACCOUNT", "ILLEGAL_ACCOUNTS", "MISMATCHED_BILLINGGROUP_ARN", "MISSING_BILLINGGROUP", "MISMATCHED_CUSTOMLINEITEM_ARN", "ILLEGAL_BILLING_PERIOD", "ILLEGAL_BILLING_PERIOD_RANGE", "TOO_MANY_ACCOUNTS_IN_REQUEST", "DUPLICATE_ACCOUNT", "INVALID_BILLING_GROUP_STATUS", "MISMATCHED_PRICINGPLAN_ARN", "MISSING_PRICINGPLAN", "MISMATCHED_PRICINGRULE_ARN", "DUPLICATE_PRICINGRULE_ARNS", "ILLEGAL_EXPRESSION", "ILLEGAL_SCOPE", "ILLEGAL_SERVICE", "PRICINGRULES_NOT_EXIST", "PRICINGRULES_ALREADY_ASSOCIATED", "PRICINGRULES_NOT_ASSOCIATED", "INVALID_TIME_RANGE", "INVALID_BILLINGVIEW_ARN", "MISMATCHED_BILLINGVIEW_ARN", "ILLEGAL_CUSTOMLINEITEM", "MISSING_CUSTOMLINEITEM", "ILLEGAL_CUSTOMLINEITEM_UPDATE", "TOO_MANY_CUSTOMLINEITEMS_IN_REQUEST", "ILLEGAL_CHARGE_DETAILS", "ILLEGAL_UPDATE_CHARGE_DETAILS", "INVALID_ARN", "ILLEGAL_RESOURCE_ARNS", "ILLEGAL_CUSTOMLINEITEM_MODIFICATION", "MISSING_LINKED_ACCOUNT_IDS", "MULTIPLE_LINKED_ACCOUNT_IDS", "MISSING_PRICING_PLAN_ARN", "MULTIPLE_PRICING_PLAN_ARN"]
    #
    #   @return [String]
    #
    # @!attribute fields
    #   <p>The fields that caused the error, if applicable.
    #       </p>
    #
    #   @return [Array<ValidationExceptionField>]
    #
    ValidationException = ::Struct.new(
      :message,
      :reason,
      :fields,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The field's information of a request that resulted in an exception.
    #     </p>
    #
    # @!attribute name
    #   <p>The field name.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The message describing why the field failed validation.
    #       </p>
    #
    #   @return [String]
    #
    ValidationExceptionField = ::Struct.new(
      :name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ValidationExceptionReason
    #
    module ValidationExceptionReason
      # No documentation available.
      #
      UNKNOWN_OPERATION = "UNKNOWN_OPERATION"

      # No documentation available.
      #
      CANNOT_PARSE = "CANNOT_PARSE"

      # No documentation available.
      #
      FIELD_VALIDATION_FAILED = "FIELD_VALIDATION_FAILED"

      # No documentation available.
      #
      OTHER = "OTHER"

      # No documentation available.
      #
      PRIMARY_NOT_ASSOCIATED = "PRIMARY_NOT_ASSOCIATED"

      # No documentation available.
      #
      PRIMARY_CANNOT_DISASSOCIATE = "PRIMARY_CANNOT_DISASSOCIATE"

      # No documentation available.
      #
      ACCOUNTS_NOT_ASSOCIATED = "ACCOUNTS_NOT_ASSOCIATED"

      # No documentation available.
      #
      ACCOUNTS_ALREADY_ASSOCIATED = "ACCOUNTS_ALREADY_ASSOCIATED"

      # No documentation available.
      #
      ILLEGAL_PRIMARY_ACCOUNT = "ILLEGAL_PRIMARY_ACCOUNT"

      # No documentation available.
      #
      ILLEGAL_ACCOUNTS = "ILLEGAL_ACCOUNTS"

      # No documentation available.
      #
      MISMATCHED_BILLINGGROUP_ARN = "MISMATCHED_BILLINGGROUP_ARN"

      # No documentation available.
      #
      MISSING_BILLINGGROUP = "MISSING_BILLINGGROUP"

      # No documentation available.
      #
      MISMATCHED_CUSTOMLINEITEM_ARN = "MISMATCHED_CUSTOMLINEITEM_ARN"

      # No documentation available.
      #
      ILLEGAL_BILLING_PERIOD = "ILLEGAL_BILLING_PERIOD"

      # No documentation available.
      #
      ILLEGAL_BILLING_PERIOD_RANGE = "ILLEGAL_BILLING_PERIOD_RANGE"

      # No documentation available.
      #
      TOO_MANY_ACCOUNTS_IN_REQUEST = "TOO_MANY_ACCOUNTS_IN_REQUEST"

      # No documentation available.
      #
      DUPLICATE_ACCOUNT = "DUPLICATE_ACCOUNT"

      # No documentation available.
      #
      INVALID_BILLING_GROUP_STATUS = "INVALID_BILLING_GROUP_STATUS"

      # No documentation available.
      #
      MISMATCHED_PRICINGPLAN_ARN = "MISMATCHED_PRICINGPLAN_ARN"

      # No documentation available.
      #
      MISSING_PRICINGPLAN = "MISSING_PRICINGPLAN"

      # No documentation available.
      #
      MISMATCHED_PRICINGRULE_ARN = "MISMATCHED_PRICINGRULE_ARN"

      # No documentation available.
      #
      DUPLICATE_PRICINGRULE_ARNS = "DUPLICATE_PRICINGRULE_ARNS"

      # No documentation available.
      #
      ILLEGAL_EXPRESSION = "ILLEGAL_EXPRESSION"

      # No documentation available.
      #
      ILLEGAL_SCOPE = "ILLEGAL_SCOPE"

      # No documentation available.
      #
      ILLEGAL_SERVICE = "ILLEGAL_SERVICE"

      # No documentation available.
      #
      PRICINGRULES_NOT_EXIST = "PRICINGRULES_NOT_EXIST"

      # No documentation available.
      #
      PRICINGRULES_ALREADY_ASSOCIATED = "PRICINGRULES_ALREADY_ASSOCIATED"

      # No documentation available.
      #
      PRICINGRULES_NOT_ASSOCIATED = "PRICINGRULES_NOT_ASSOCIATED"

      # No documentation available.
      #
      INVALID_TIME_RANGE = "INVALID_TIME_RANGE"

      # No documentation available.
      #
      INVALID_BILLINGVIEW_ARN = "INVALID_BILLINGVIEW_ARN"

      # No documentation available.
      #
      MISMATCHED_BILLINGVIEW_ARN = "MISMATCHED_BILLINGVIEW_ARN"

      # No documentation available.
      #
      ILLEGAL_CUSTOMLINEITEM = "ILLEGAL_CUSTOMLINEITEM"

      # No documentation available.
      #
      MISSING_CUSTOMLINEITEM = "MISSING_CUSTOMLINEITEM"

      # No documentation available.
      #
      ILLEGAL_CUSTOMLINEITEM_UPDATE = "ILLEGAL_CUSTOMLINEITEM_UPDATE"

      # No documentation available.
      #
      TOO_MANY_CUSTOMLINEITEMS_IN_REQUEST = "TOO_MANY_CUSTOMLINEITEMS_IN_REQUEST"

      # No documentation available.
      #
      ILLEGAL_CHARGE_DETAILS = "ILLEGAL_CHARGE_DETAILS"

      # No documentation available.
      #
      ILLEGAL_UPDATE_CHARGE_DETAILS = "ILLEGAL_UPDATE_CHARGE_DETAILS"

      # No documentation available.
      #
      INVALID_ARN = "INVALID_ARN"

      # No documentation available.
      #
      ILLEGAL_RESOURCE_ARNS = "ILLEGAL_RESOURCE_ARNS"

      # No documentation available.
      #
      ILLEGAL_CUSTOMLINEITEM_MODIFICATION = "ILLEGAL_CUSTOMLINEITEM_MODIFICATION"

      # No documentation available.
      #
      MISSING_LINKED_ACCOUNT_IDS = "MISSING_LINKED_ACCOUNT_IDS"

      # No documentation available.
      #
      MULTIPLE_LINKED_ACCOUNT_IDS = "MULTIPLE_LINKED_ACCOUNT_IDS"

      # No documentation available.
      #
      MISSING_PRICING_PLAN_ARN = "MISSING_PRICING_PLAN_ARN"

      # No documentation available.
      #
      MULTIPLE_PRICING_PLAN_ARN = "MULTIPLE_PRICING_PLAN_ARN"
    end

  end
end
