# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Billingconductor
  module Stubs

    # Operation Stubber for AssociateAccounts
    class AssociateAccounts
      def self.default(visited=[])
        {
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for AssociatePricingRules
    class AssociatePricingRules
      def self.default(visited=[])
        {
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for BatchAssociateResourcesToCustomLineItem
    class BatchAssociateResourcesToCustomLineItem
      def self.default(visited=[])
        {
          successfully_associated_resources: AssociateResourcesResponseList.default(visited),
          failed_associated_resources: AssociateResourcesResponseList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SuccessfullyAssociatedResources'] = Stubs::AssociateResourcesResponseList.stub(stub[:successfully_associated_resources]) unless stub[:successfully_associated_resources].nil?
        data['FailedAssociatedResources'] = Stubs::AssociateResourcesResponseList.stub(stub[:failed_associated_resources]) unless stub[:failed_associated_resources].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AssociateResourcesResponseList
    class AssociateResourcesResponseList
      def self.default(visited=[])
        return nil if visited.include?('AssociateResourcesResponseList')
        visited = visited + ['AssociateResourcesResponseList']
        [
          AssociateResourceResponseElement.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AssociateResourceResponseElement.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssociateResourceResponseElement
    class AssociateResourceResponseElement
      def self.default(visited=[])
        return nil if visited.include?('AssociateResourceResponseElement')
        visited = visited + ['AssociateResourceResponseElement']
        {
          arn: 'arn',
          error: AssociateResourceError.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AssociateResourceResponseElement.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Error'] = Stubs::AssociateResourceError.stub(stub[:error]) unless stub[:error].nil?
        data
      end
    end

    # Structure Stubber for AssociateResourceError
    class AssociateResourceError
      def self.default(visited=[])
        return nil if visited.include?('AssociateResourceError')
        visited = visited + ['AssociateResourceError']
        {
          message: 'message',
          reason: 'reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::AssociateResourceError.new
        data = {}
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['Reason'] = stub[:reason] unless stub[:reason].nil?
        data
      end
    end

    # Operation Stubber for BatchDisassociateResourcesFromCustomLineItem
    class BatchDisassociateResourcesFromCustomLineItem
      def self.default(visited=[])
        {
          successfully_disassociated_resources: DisassociateResourcesResponseList.default(visited),
          failed_disassociated_resources: DisassociateResourcesResponseList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SuccessfullyDisassociatedResources'] = Stubs::DisassociateResourcesResponseList.stub(stub[:successfully_disassociated_resources]) unless stub[:successfully_disassociated_resources].nil?
        data['FailedDisassociatedResources'] = Stubs::DisassociateResourcesResponseList.stub(stub[:failed_disassociated_resources]) unless stub[:failed_disassociated_resources].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DisassociateResourcesResponseList
    class DisassociateResourcesResponseList
      def self.default(visited=[])
        return nil if visited.include?('DisassociateResourcesResponseList')
        visited = visited + ['DisassociateResourcesResponseList']
        [
          DisassociateResourceResponseElement.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DisassociateResourceResponseElement.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DisassociateResourceResponseElement
    class DisassociateResourceResponseElement
      def self.default(visited=[])
        return nil if visited.include?('DisassociateResourceResponseElement')
        visited = visited + ['DisassociateResourceResponseElement']
        {
          arn: 'arn',
          error: AssociateResourceError.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DisassociateResourceResponseElement.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Error'] = Stubs::AssociateResourceError.stub(stub[:error]) unless stub[:error].nil?
        data
      end
    end

    # Operation Stubber for CreateBillingGroup
    class CreateBillingGroup
      def self.default(visited=[])
        {
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateCustomLineItem
    class CreateCustomLineItem
      def self.default(visited=[])
        {
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreatePricingPlan
    class CreatePricingPlan
      def self.default(visited=[])
        {
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreatePricingRule
    class CreatePricingRule
      def self.default(visited=[])
        {
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteBillingGroup
    class DeleteBillingGroup
      def self.default(visited=[])
        {
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteCustomLineItem
    class DeleteCustomLineItem
      def self.default(visited=[])
        {
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeletePricingPlan
    class DeletePricingPlan
      def self.default(visited=[])
        {
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeletePricingRule
    class DeletePricingRule
      def self.default(visited=[])
        {
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DisassociateAccounts
    class DisassociateAccounts
      def self.default(visited=[])
        {
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DisassociatePricingRules
    class DisassociatePricingRules
      def self.default(visited=[])
        {
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListAccountAssociations
    class ListAccountAssociations
      def self.default(visited=[])
        {
          linked_accounts: AccountAssociationsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['LinkedAccounts'] = Stubs::AccountAssociationsList.stub(stub[:linked_accounts]) unless stub[:linked_accounts].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AccountAssociationsList
    class AccountAssociationsList
      def self.default(visited=[])
        return nil if visited.include?('AccountAssociationsList')
        visited = visited + ['AccountAssociationsList']
        [
          AccountAssociationsListElement.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AccountAssociationsListElement.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AccountAssociationsListElement
    class AccountAssociationsListElement
      def self.default(visited=[])
        return nil if visited.include?('AccountAssociationsListElement')
        visited = visited + ['AccountAssociationsListElement']
        {
          account_id: 'account_id',
          billing_group_arn: 'billing_group_arn',
          account_name: 'account_name',
          account_email: 'account_email',
        }
      end

      def self.stub(stub)
        stub ||= Types::AccountAssociationsListElement.new
        data = {}
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['BillingGroupArn'] = stub[:billing_group_arn] unless stub[:billing_group_arn].nil?
        data['AccountName'] = stub[:account_name] unless stub[:account_name].nil?
        data['AccountEmail'] = stub[:account_email] unless stub[:account_email].nil?
        data
      end
    end

    # Operation Stubber for ListBillingGroupCostReports
    class ListBillingGroupCostReports
      def self.default(visited=[])
        {
          billing_group_cost_reports: BillingGroupCostReportList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['BillingGroupCostReports'] = Stubs::BillingGroupCostReportList.stub(stub[:billing_group_cost_reports]) unless stub[:billing_group_cost_reports].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BillingGroupCostReportList
    class BillingGroupCostReportList
      def self.default(visited=[])
        return nil if visited.include?('BillingGroupCostReportList')
        visited = visited + ['BillingGroupCostReportList']
        [
          BillingGroupCostReportElement.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BillingGroupCostReportElement.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BillingGroupCostReportElement
    class BillingGroupCostReportElement
      def self.default(visited=[])
        return nil if visited.include?('BillingGroupCostReportElement')
        visited = visited + ['BillingGroupCostReportElement']
        {
          arn: 'arn',
          aws_cost: 'aws_cost',
          proforma_cost: 'proforma_cost',
          margin: 'margin',
          margin_percentage: 'margin_percentage',
          currency: 'currency',
        }
      end

      def self.stub(stub)
        stub ||= Types::BillingGroupCostReportElement.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['AWSCost'] = stub[:aws_cost] unless stub[:aws_cost].nil?
        data['ProformaCost'] = stub[:proforma_cost] unless stub[:proforma_cost].nil?
        data['Margin'] = stub[:margin] unless stub[:margin].nil?
        data['MarginPercentage'] = stub[:margin_percentage] unless stub[:margin_percentage].nil?
        data['Currency'] = stub[:currency] unless stub[:currency].nil?
        data
      end
    end

    # Operation Stubber for ListBillingGroups
    class ListBillingGroups
      def self.default(visited=[])
        {
          billing_groups: BillingGroupList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['BillingGroups'] = Stubs::BillingGroupList.stub(stub[:billing_groups]) unless stub[:billing_groups].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BillingGroupList
    class BillingGroupList
      def self.default(visited=[])
        return nil if visited.include?('BillingGroupList')
        visited = visited + ['BillingGroupList']
        [
          BillingGroupListElement.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BillingGroupListElement.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BillingGroupListElement
    class BillingGroupListElement
      def self.default(visited=[])
        return nil if visited.include?('BillingGroupListElement')
        visited = visited + ['BillingGroupListElement']
        {
          name: 'name',
          arn: 'arn',
          description: 'description',
          primary_account_id: 'primary_account_id',
          computation_preference: ComputationPreference.default(visited),
          size: 1,
          creation_time: 1,
          last_modified_time: 1,
          status: 'status',
          status_reason: 'status_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::BillingGroupListElement.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['PrimaryAccountId'] = stub[:primary_account_id] unless stub[:primary_account_id].nil?
        data['ComputationPreference'] = Stubs::ComputationPreference.stub(stub[:computation_preference]) unless stub[:computation_preference].nil?
        data['Size'] = stub[:size] unless stub[:size].nil?
        data['CreationTime'] = stub[:creation_time] unless stub[:creation_time].nil?
        data['LastModifiedTime'] = stub[:last_modified_time] unless stub[:last_modified_time].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        data
      end
    end

    # Structure Stubber for ComputationPreference
    class ComputationPreference
      def self.default(visited=[])
        return nil if visited.include?('ComputationPreference')
        visited = visited + ['ComputationPreference']
        {
          pricing_plan_arn: 'pricing_plan_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ComputationPreference.new
        data = {}
        data['PricingPlanArn'] = stub[:pricing_plan_arn] unless stub[:pricing_plan_arn].nil?
        data
      end
    end

    # Operation Stubber for ListCustomLineItems
    class ListCustomLineItems
      def self.default(visited=[])
        {
          custom_line_items: CustomLineItemList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CustomLineItems'] = Stubs::CustomLineItemList.stub(stub[:custom_line_items]) unless stub[:custom_line_items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for CustomLineItemList
    class CustomLineItemList
      def self.default(visited=[])
        return nil if visited.include?('CustomLineItemList')
        visited = visited + ['CustomLineItemList']
        [
          CustomLineItemListElement.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CustomLineItemListElement.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CustomLineItemListElement
    class CustomLineItemListElement
      def self.default(visited=[])
        return nil if visited.include?('CustomLineItemListElement')
        visited = visited + ['CustomLineItemListElement']
        {
          arn: 'arn',
          name: 'name',
          charge_details: ListCustomLineItemChargeDetails.default(visited),
          currency_code: 'currency_code',
          description: 'description',
          product_code: 'product_code',
          billing_group_arn: 'billing_group_arn',
          creation_time: 1,
          last_modified_time: 1,
          association_size: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomLineItemListElement.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ChargeDetails'] = Stubs::ListCustomLineItemChargeDetails.stub(stub[:charge_details]) unless stub[:charge_details].nil?
        data['CurrencyCode'] = stub[:currency_code] unless stub[:currency_code].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['ProductCode'] = stub[:product_code] unless stub[:product_code].nil?
        data['BillingGroupArn'] = stub[:billing_group_arn] unless stub[:billing_group_arn].nil?
        data['CreationTime'] = stub[:creation_time] unless stub[:creation_time].nil?
        data['LastModifiedTime'] = stub[:last_modified_time] unless stub[:last_modified_time].nil?
        data['AssociationSize'] = stub[:association_size] unless stub[:association_size].nil?
        data
      end
    end

    # Structure Stubber for ListCustomLineItemChargeDetails
    class ListCustomLineItemChargeDetails
      def self.default(visited=[])
        return nil if visited.include?('ListCustomLineItemChargeDetails')
        visited = visited + ['ListCustomLineItemChargeDetails']
        {
          flat: ListCustomLineItemFlatChargeDetails.default(visited),
          percentage: ListCustomLineItemPercentageChargeDetails.default(visited),
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ListCustomLineItemChargeDetails.new
        data = {}
        data['Flat'] = Stubs::ListCustomLineItemFlatChargeDetails.stub(stub[:flat]) unless stub[:flat].nil?
        data['Percentage'] = Stubs::ListCustomLineItemPercentageChargeDetails.stub(stub[:percentage]) unless stub[:percentage].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for ListCustomLineItemPercentageChargeDetails
    class ListCustomLineItemPercentageChargeDetails
      def self.default(visited=[])
        return nil if visited.include?('ListCustomLineItemPercentageChargeDetails')
        visited = visited + ['ListCustomLineItemPercentageChargeDetails']
        {
          percentage_value: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::ListCustomLineItemPercentageChargeDetails.new
        data = {}
        data['PercentageValue'] = Hearth::NumberHelper.serialize(stub[:percentage_value])
        data
      end
    end

    # Structure Stubber for ListCustomLineItemFlatChargeDetails
    class ListCustomLineItemFlatChargeDetails
      def self.default(visited=[])
        return nil if visited.include?('ListCustomLineItemFlatChargeDetails')
        visited = visited + ['ListCustomLineItemFlatChargeDetails']
        {
          charge_value: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::ListCustomLineItemFlatChargeDetails.new
        data = {}
        data['ChargeValue'] = Hearth::NumberHelper.serialize(stub[:charge_value])
        data
      end
    end

    # Operation Stubber for ListPricingPlans
    class ListPricingPlans
      def self.default(visited=[])
        {
          billing_period: 'billing_period',
          pricing_plans: PricingPlanList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['BillingPeriod'] = stub[:billing_period] unless stub[:billing_period].nil?
        data['PricingPlans'] = Stubs::PricingPlanList.stub(stub[:pricing_plans]) unless stub[:pricing_plans].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PricingPlanList
    class PricingPlanList
      def self.default(visited=[])
        return nil if visited.include?('PricingPlanList')
        visited = visited + ['PricingPlanList']
        [
          PricingPlanListElement.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PricingPlanListElement.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PricingPlanListElement
    class PricingPlanListElement
      def self.default(visited=[])
        return nil if visited.include?('PricingPlanListElement')
        visited = visited + ['PricingPlanListElement']
        {
          name: 'name',
          arn: 'arn',
          description: 'description',
          size: 1,
          creation_time: 1,
          last_modified_time: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::PricingPlanListElement.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Size'] = stub[:size] unless stub[:size].nil?
        data['CreationTime'] = stub[:creation_time] unless stub[:creation_time].nil?
        data['LastModifiedTime'] = stub[:last_modified_time] unless stub[:last_modified_time].nil?
        data
      end
    end

    # Operation Stubber for ListPricingPlansAssociatedWithPricingRule
    class ListPricingPlansAssociatedWithPricingRule
      def self.default(visited=[])
        {
          billing_period: 'billing_period',
          pricing_rule_arn: 'pricing_rule_arn',
          pricing_plan_arns: PricingPlanArns.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['BillingPeriod'] = stub[:billing_period] unless stub[:billing_period].nil?
        data['PricingRuleArn'] = stub[:pricing_rule_arn] unless stub[:pricing_rule_arn].nil?
        data['PricingPlanArns'] = Stubs::PricingPlanArns.stub(stub[:pricing_plan_arns]) unless stub[:pricing_plan_arns].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PricingPlanArns
    class PricingPlanArns
      def self.default(visited=[])
        return nil if visited.include?('PricingPlanArns')
        visited = visited + ['PricingPlanArns']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListPricingRules
    class ListPricingRules
      def self.default(visited=[])
        {
          billing_period: 'billing_period',
          pricing_rules: PricingRuleList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['BillingPeriod'] = stub[:billing_period] unless stub[:billing_period].nil?
        data['PricingRules'] = Stubs::PricingRuleList.stub(stub[:pricing_rules]) unless stub[:pricing_rules].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PricingRuleList
    class PricingRuleList
      def self.default(visited=[])
        return nil if visited.include?('PricingRuleList')
        visited = visited + ['PricingRuleList']
        [
          PricingRuleListElement.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PricingRuleListElement.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PricingRuleListElement
    class PricingRuleListElement
      def self.default(visited=[])
        return nil if visited.include?('PricingRuleListElement')
        visited = visited + ['PricingRuleListElement']
        {
          name: 'name',
          arn: 'arn',
          description: 'description',
          scope: 'scope',
          type: 'type',
          modifier_percentage: 1.0,
          service: 'service',
          associated_pricing_plan_count: 1,
          creation_time: 1,
          last_modified_time: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::PricingRuleListElement.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Scope'] = stub[:scope] unless stub[:scope].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['ModifierPercentage'] = Hearth::NumberHelper.serialize(stub[:modifier_percentage])
        data['Service'] = stub[:service] unless stub[:service].nil?
        data['AssociatedPricingPlanCount'] = stub[:associated_pricing_plan_count] unless stub[:associated_pricing_plan_count].nil?
        data['CreationTime'] = stub[:creation_time] unless stub[:creation_time].nil?
        data['LastModifiedTime'] = stub[:last_modified_time] unless stub[:last_modified_time].nil?
        data
      end
    end

    # Operation Stubber for ListPricingRulesAssociatedToPricingPlan
    class ListPricingRulesAssociatedToPricingPlan
      def self.default(visited=[])
        {
          billing_period: 'billing_period',
          pricing_plan_arn: 'pricing_plan_arn',
          pricing_rule_arns: PricingRuleArns.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['BillingPeriod'] = stub[:billing_period] unless stub[:billing_period].nil?
        data['PricingPlanArn'] = stub[:pricing_plan_arn] unless stub[:pricing_plan_arn].nil?
        data['PricingRuleArns'] = Stubs::PricingRuleArns.stub(stub[:pricing_rule_arns]) unless stub[:pricing_rule_arns].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PricingRuleArns
    class PricingRuleArns
      def self.default(visited=[])
        return nil if visited.include?('PricingRuleArns')
        visited = visited + ['PricingRuleArns']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListResourcesAssociatedToCustomLineItem
    class ListResourcesAssociatedToCustomLineItem
      def self.default(visited=[])
        {
          arn: 'arn',
          associated_resources: ListResourcesAssociatedToCustomLineItemResponseList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['AssociatedResources'] = Stubs::ListResourcesAssociatedToCustomLineItemResponseList.stub(stub[:associated_resources]) unless stub[:associated_resources].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListResourcesAssociatedToCustomLineItemResponseList
    class ListResourcesAssociatedToCustomLineItemResponseList
      def self.default(visited=[])
        return nil if visited.include?('ListResourcesAssociatedToCustomLineItemResponseList')
        visited = visited + ['ListResourcesAssociatedToCustomLineItemResponseList']
        [
          ListResourcesAssociatedToCustomLineItemResponseElement.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ListResourcesAssociatedToCustomLineItemResponseElement.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ListResourcesAssociatedToCustomLineItemResponseElement
    class ListResourcesAssociatedToCustomLineItemResponseElement
      def self.default(visited=[])
        return nil if visited.include?('ListResourcesAssociatedToCustomLineItemResponseElement')
        visited = visited + ['ListResourcesAssociatedToCustomLineItemResponseElement']
        {
          arn: 'arn',
          relationship: 'relationship',
        }
      end

      def self.stub(stub)
        stub ||= Types::ListResourcesAssociatedToCustomLineItemResponseElement.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Relationship'] = stub[:relationship] unless stub[:relationship].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
        http_resp.headers['Content-Type'] = 'application/json'
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for TagMap
    class TagMap
      def self.default(visited=[])
        return nil if visited.include?('TagMap')
        visited = visited + ['TagMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateBillingGroup
    class UpdateBillingGroup
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
          description: 'description',
          primary_account_id: 'primary_account_id',
          pricing_plan_arn: 'pricing_plan_arn',
          size: 1,
          last_modified_time: 1,
          status: 'status',
          status_reason: 'status_reason',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['PrimaryAccountId'] = stub[:primary_account_id] unless stub[:primary_account_id].nil?
        data['PricingPlanArn'] = stub[:pricing_plan_arn] unless stub[:pricing_plan_arn].nil?
        data['Size'] = stub[:size] unless stub[:size].nil?
        data['LastModifiedTime'] = stub[:last_modified_time] unless stub[:last_modified_time].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateCustomLineItem
    class UpdateCustomLineItem
      def self.default(visited=[])
        {
          arn: 'arn',
          billing_group_arn: 'billing_group_arn',
          name: 'name',
          description: 'description',
          charge_details: ListCustomLineItemChargeDetails.default(visited),
          last_modified_time: 1,
          association_size: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['BillingGroupArn'] = stub[:billing_group_arn] unless stub[:billing_group_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['ChargeDetails'] = Stubs::ListCustomLineItemChargeDetails.stub(stub[:charge_details]) unless stub[:charge_details].nil?
        data['LastModifiedTime'] = stub[:last_modified_time] unless stub[:last_modified_time].nil?
        data['AssociationSize'] = stub[:association_size] unless stub[:association_size].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdatePricingPlan
    class UpdatePricingPlan
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
          description: 'description',
          size: 1,
          last_modified_time: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Size'] = stub[:size] unless stub[:size].nil?
        data['LastModifiedTime'] = stub[:last_modified_time] unless stub[:last_modified_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdatePricingRule
    class UpdatePricingRule
      def self.default(visited=[])
        {
          arn: 'arn',
          name: 'name',
          description: 'description',
          scope: 'scope',
          type: 'type',
          modifier_percentage: 1.0,
          service: 'service',
          associated_pricing_plan_count: 1,
          last_modified_time: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Scope'] = stub[:scope] unless stub[:scope].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['ModifierPercentage'] = Hearth::NumberHelper.serialize(stub[:modifier_percentage])
        data['Service'] = stub[:service] unless stub[:service].nil?
        data['AssociatedPricingPlanCount'] = stub[:associated_pricing_plan_count] unless stub[:associated_pricing_plan_count].nil?
        data['LastModifiedTime'] = stub[:last_modified_time] unless stub[:last_modified_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
