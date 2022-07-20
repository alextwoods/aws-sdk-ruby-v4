# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Savingsplans
  module Builders

    # Operation Builder for CreateSavingsPlan
    class CreateSavingsPlan
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/CreateSavingsPlan')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['savingsPlanOfferingId'] = input[:savings_plan_offering_id] unless input[:savings_plan_offering_id].nil?
        data['commitment'] = input[:commitment] unless input[:commitment].nil?
        data['upfrontPaymentAmount'] = input[:upfront_payment_amount] unless input[:upfront_payment_amount].nil?
        data['purchaseTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:purchase_time]).to_i unless input[:purchase_time].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for DeleteQueuedSavingsPlan
    class DeleteQueuedSavingsPlan
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DeleteQueuedSavingsPlan')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['savingsPlanId'] = input[:savings_plan_id] unless input[:savings_plan_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeSavingsPlanRates
    class DescribeSavingsPlanRates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DescribeSavingsPlanRates')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['savingsPlanId'] = input[:savings_plan_id] unless input[:savings_plan_id].nil?
        data['filters'] = SavingsPlanRateFilterList.build(input[:filters]) unless input[:filters].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SavingsPlanRateFilterList
    class SavingsPlanRateFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << SavingsPlanRateFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SavingsPlanRateFilter
    class SavingsPlanRateFilter
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['values'] = ListOfStrings.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for ListOfStrings
    class ListOfStrings
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeSavingsPlans
    class DescribeSavingsPlans
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DescribeSavingsPlans')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['savingsPlanArns'] = SavingsPlanArnList.build(input[:savings_plan_arns]) unless input[:savings_plan_arns].nil?
        data['savingsPlanIds'] = SavingsPlanIdList.build(input[:savings_plan_ids]) unless input[:savings_plan_ids].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['states'] = SavingsPlanStateList.build(input[:states]) unless input[:states].nil?
        data['filters'] = SavingsPlanFilterList.build(input[:filters]) unless input[:filters].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SavingsPlanFilterList
    class SavingsPlanFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << SavingsPlanFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SavingsPlanFilter
    class SavingsPlanFilter
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['values'] = ListOfStrings.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for SavingsPlanStateList
    class SavingsPlanStateList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SavingsPlanIdList
    class SavingsPlanIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SavingsPlanArnList
    class SavingsPlanArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeSavingsPlansOfferingRates
    class DescribeSavingsPlansOfferingRates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DescribeSavingsPlansOfferingRates')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['savingsPlanOfferingIds'] = UUIDs.build(input[:savings_plan_offering_ids]) unless input[:savings_plan_offering_ids].nil?
        data['savingsPlanPaymentOptions'] = SavingsPlanPaymentOptionList.build(input[:savings_plan_payment_options]) unless input[:savings_plan_payment_options].nil?
        data['savingsPlanTypes'] = SavingsPlanTypeList.build(input[:savings_plan_types]) unless input[:savings_plan_types].nil?
        data['products'] = SavingsPlanProductTypeList.build(input[:products]) unless input[:products].nil?
        data['serviceCodes'] = SavingsPlanRateServiceCodeList.build(input[:service_codes]) unless input[:service_codes].nil?
        data['usageTypes'] = SavingsPlanRateUsageTypeList.build(input[:usage_types]) unless input[:usage_types].nil?
        data['operations'] = SavingsPlanRateOperationList.build(input[:operations]) unless input[:operations].nil?
        data['filters'] = SavingsPlanOfferingRateFiltersList.build(input[:filters]) unless input[:filters].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SavingsPlanOfferingRateFiltersList
    class SavingsPlanOfferingRateFiltersList
      def self.build(input)
        data = []
        input.each do |element|
          data << SavingsPlanOfferingRateFilterElement.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SavingsPlanOfferingRateFilterElement
    class SavingsPlanOfferingRateFilterElement
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['values'] = FilterValuesList.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for FilterValuesList
    class FilterValuesList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SavingsPlanRateOperationList
    class SavingsPlanRateOperationList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SavingsPlanRateUsageTypeList
    class SavingsPlanRateUsageTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SavingsPlanRateServiceCodeList
    class SavingsPlanRateServiceCodeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SavingsPlanProductTypeList
    class SavingsPlanProductTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SavingsPlanTypeList
    class SavingsPlanTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SavingsPlanPaymentOptionList
    class SavingsPlanPaymentOptionList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for UUIDs
    class UUIDs
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeSavingsPlansOfferings
    class DescribeSavingsPlansOfferings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DescribeSavingsPlansOfferings')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['offeringIds'] = UUIDs.build(input[:offering_ids]) unless input[:offering_ids].nil?
        data['paymentOptions'] = SavingsPlanPaymentOptionList.build(input[:payment_options]) unless input[:payment_options].nil?
        data['productType'] = input[:product_type] unless input[:product_type].nil?
        data['planTypes'] = SavingsPlanTypeList.build(input[:plan_types]) unless input[:plan_types].nil?
        data['durations'] = DurationsList.build(input[:durations]) unless input[:durations].nil?
        data['currencies'] = CurrencyList.build(input[:currencies]) unless input[:currencies].nil?
        data['descriptions'] = SavingsPlanDescriptionsList.build(input[:descriptions]) unless input[:descriptions].nil?
        data['serviceCodes'] = SavingsPlanServiceCodeList.build(input[:service_codes]) unless input[:service_codes].nil?
        data['usageTypes'] = SavingsPlanUsageTypeList.build(input[:usage_types]) unless input[:usage_types].nil?
        data['operations'] = SavingsPlanOperationList.build(input[:operations]) unless input[:operations].nil?
        data['filters'] = SavingsPlanOfferingFiltersList.build(input[:filters]) unless input[:filters].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SavingsPlanOfferingFiltersList
    class SavingsPlanOfferingFiltersList
      def self.build(input)
        data = []
        input.each do |element|
          data << SavingsPlanOfferingFilterElement.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SavingsPlanOfferingFilterElement
    class SavingsPlanOfferingFilterElement
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['values'] = FilterValuesList.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for SavingsPlanOperationList
    class SavingsPlanOperationList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SavingsPlanUsageTypeList
    class SavingsPlanUsageTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SavingsPlanServiceCodeList
    class SavingsPlanServiceCodeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SavingsPlanDescriptionsList
    class SavingsPlanDescriptionsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for CurrencyList
    class CurrencyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for DurationsList
    class DurationsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListTagsForResource')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/TagResource')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/UntagResource')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['tagKeys'] = TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
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
  end
end
