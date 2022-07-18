# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Savingsplans
  module Validators

    class CreateSavingsPlanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSavingsPlanInput, context: context)
        Hearth::Validator.validate!(input[:savings_plan_offering_id], ::String, context: "#{context}[:savings_plan_offering_id]")
        Hearth::Validator.validate!(input[:commitment], ::String, context: "#{context}[:commitment]")
        Hearth::Validator.validate!(input[:upfront_payment_amount], ::String, context: "#{context}[:upfront_payment_amount]")
        Hearth::Validator.validate!(input[:purchase_time], ::Time, context: "#{context}[:purchase_time]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateSavingsPlanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSavingsPlanOutput, context: context)
        Hearth::Validator.validate!(input[:savings_plan_id], ::String, context: "#{context}[:savings_plan_id]")
      end
    end

    class CurrencyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DeleteQueuedSavingsPlanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteQueuedSavingsPlanInput, context: context)
        Hearth::Validator.validate!(input[:savings_plan_id], ::String, context: "#{context}[:savings_plan_id]")
      end
    end

    class DeleteQueuedSavingsPlanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteQueuedSavingsPlanOutput, context: context)
      end
    end

    class DescribeSavingsPlanRatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSavingsPlanRatesInput, context: context)
        Hearth::Validator.validate!(input[:savings_plan_id], ::String, context: "#{context}[:savings_plan_id]")
        SavingsPlanRateFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeSavingsPlanRatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSavingsPlanRatesOutput, context: context)
        Hearth::Validator.validate!(input[:savings_plan_id], ::String, context: "#{context}[:savings_plan_id]")
        SavingsPlanRateList.validate!(input[:search_results], context: "#{context}[:search_results]") unless input[:search_results].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeSavingsPlansInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSavingsPlansInput, context: context)
        SavingsPlanArnList.validate!(input[:savings_plan_arns], context: "#{context}[:savings_plan_arns]") unless input[:savings_plan_arns].nil?
        SavingsPlanIdList.validate!(input[:savings_plan_ids], context: "#{context}[:savings_plan_ids]") unless input[:savings_plan_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        SavingsPlanStateList.validate!(input[:states], context: "#{context}[:states]") unless input[:states].nil?
        SavingsPlanFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class DescribeSavingsPlansOfferingRatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSavingsPlansOfferingRatesInput, context: context)
        UUIDs.validate!(input[:savings_plan_offering_ids], context: "#{context}[:savings_plan_offering_ids]") unless input[:savings_plan_offering_ids].nil?
        SavingsPlanPaymentOptionList.validate!(input[:savings_plan_payment_options], context: "#{context}[:savings_plan_payment_options]") unless input[:savings_plan_payment_options].nil?
        SavingsPlanTypeList.validate!(input[:savings_plan_types], context: "#{context}[:savings_plan_types]") unless input[:savings_plan_types].nil?
        SavingsPlanProductTypeList.validate!(input[:products], context: "#{context}[:products]") unless input[:products].nil?
        SavingsPlanRateServiceCodeList.validate!(input[:service_codes], context: "#{context}[:service_codes]") unless input[:service_codes].nil?
        SavingsPlanRateUsageTypeList.validate!(input[:usage_types], context: "#{context}[:usage_types]") unless input[:usage_types].nil?
        SavingsPlanRateOperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
        SavingsPlanOfferingRateFiltersList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeSavingsPlansOfferingRatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSavingsPlansOfferingRatesOutput, context: context)
        SavingsPlanOfferingRatesList.validate!(input[:search_results], context: "#{context}[:search_results]") unless input[:search_results].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeSavingsPlansOfferingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSavingsPlansOfferingsInput, context: context)
        UUIDs.validate!(input[:offering_ids], context: "#{context}[:offering_ids]") unless input[:offering_ids].nil?
        SavingsPlanPaymentOptionList.validate!(input[:payment_options], context: "#{context}[:payment_options]") unless input[:payment_options].nil?
        Hearth::Validator.validate!(input[:product_type], ::String, context: "#{context}[:product_type]")
        SavingsPlanTypeList.validate!(input[:plan_types], context: "#{context}[:plan_types]") unless input[:plan_types].nil?
        DurationsList.validate!(input[:durations], context: "#{context}[:durations]") unless input[:durations].nil?
        CurrencyList.validate!(input[:currencies], context: "#{context}[:currencies]") unless input[:currencies].nil?
        SavingsPlanDescriptionsList.validate!(input[:descriptions], context: "#{context}[:descriptions]") unless input[:descriptions].nil?
        SavingsPlanServiceCodeList.validate!(input[:service_codes], context: "#{context}[:service_codes]") unless input[:service_codes].nil?
        SavingsPlanUsageTypeList.validate!(input[:usage_types], context: "#{context}[:usage_types]") unless input[:usage_types].nil?
        SavingsPlanOperationList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
        SavingsPlanOfferingFiltersList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeSavingsPlansOfferingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSavingsPlansOfferingsOutput, context: context)
        SavingsPlanOfferingsList.validate!(input[:search_results], context: "#{context}[:search_results]") unless input[:search_results].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeSavingsPlansOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSavingsPlansOutput, context: context)
        SavingsPlanList.validate!(input[:savings_plans], context: "#{context}[:savings_plans]") unless input[:savings_plans].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DurationsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Integer, context: "#{context}[#{index}]")
        end
      end
    end

    class FilterValuesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListOfStrings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
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
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ParentSavingsPlanOffering
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParentSavingsPlanOffering, context: context)
        Hearth::Validator.validate!(input[:offering_id], ::String, context: "#{context}[:offering_id]")
        Hearth::Validator.validate!(input[:payment_option], ::String, context: "#{context}[:payment_option]")
        Hearth::Validator.validate!(input[:plan_type], ::String, context: "#{context}[:plan_type]")
        Hearth::Validator.validate!(input[:duration_seconds], ::Integer, context: "#{context}[:duration_seconds]")
        Hearth::Validator.validate!(input[:currency], ::String, context: "#{context}[:currency]")
        Hearth::Validator.validate!(input[:plan_description], ::String, context: "#{context}[:plan_description]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SavingsPlan
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SavingsPlan, context: context)
        Hearth::Validator.validate!(input[:offering_id], ::String, context: "#{context}[:offering_id]")
        Hearth::Validator.validate!(input[:savings_plan_id], ::String, context: "#{context}[:savings_plan_id]")
        Hearth::Validator.validate!(input[:savings_plan_arn], ::String, context: "#{context}[:savings_plan_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:start], ::String, context: "#{context}[:start]")
        Hearth::Validator.validate!(input[:end], ::String, context: "#{context}[:end]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:ec2_instance_family], ::String, context: "#{context}[:ec2_instance_family]")
        Hearth::Validator.validate!(input[:savings_plan_type], ::String, context: "#{context}[:savings_plan_type]")
        Hearth::Validator.validate!(input[:payment_option], ::String, context: "#{context}[:payment_option]")
        SavingsPlanProductTypeList.validate!(input[:product_types], context: "#{context}[:product_types]") unless input[:product_types].nil?
        Hearth::Validator.validate!(input[:currency], ::String, context: "#{context}[:currency]")
        Hearth::Validator.validate!(input[:commitment], ::String, context: "#{context}[:commitment]")
        Hearth::Validator.validate!(input[:upfront_payment_amount], ::String, context: "#{context}[:upfront_payment_amount]")
        Hearth::Validator.validate!(input[:recurring_payment_amount], ::String, context: "#{context}[:recurring_payment_amount]")
        Hearth::Validator.validate!(input[:term_duration_in_seconds], ::Integer, context: "#{context}[:term_duration_in_seconds]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class SavingsPlanArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SavingsPlanDescriptionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SavingsPlanFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SavingsPlanFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        ListOfStrings.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class SavingsPlanFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SavingsPlanFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SavingsPlanIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SavingsPlanList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SavingsPlan.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SavingsPlanOffering
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SavingsPlanOffering, context: context)
        Hearth::Validator.validate!(input[:offering_id], ::String, context: "#{context}[:offering_id]")
        SavingsPlanProductTypeList.validate!(input[:product_types], context: "#{context}[:product_types]") unless input[:product_types].nil?
        Hearth::Validator.validate!(input[:plan_type], ::String, context: "#{context}[:plan_type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:payment_option], ::String, context: "#{context}[:payment_option]")
        Hearth::Validator.validate!(input[:duration_seconds], ::Integer, context: "#{context}[:duration_seconds]")
        Hearth::Validator.validate!(input[:currency], ::String, context: "#{context}[:currency]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:usage_type], ::String, context: "#{context}[:usage_type]")
        Hearth::Validator.validate!(input[:operation], ::String, context: "#{context}[:operation]")
        SavingsPlanOfferingPropertyList.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
      end
    end

    class SavingsPlanOfferingFilterElement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SavingsPlanOfferingFilterElement, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        FilterValuesList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class SavingsPlanOfferingFiltersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SavingsPlanOfferingFilterElement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SavingsPlanOfferingProperty
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SavingsPlanOfferingProperty, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class SavingsPlanOfferingPropertyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SavingsPlanOfferingProperty.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SavingsPlanOfferingRate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SavingsPlanOfferingRate, context: context)
        ParentSavingsPlanOffering.validate!(input[:savings_plan_offering], context: "#{context}[:savings_plan_offering]") unless input[:savings_plan_offering].nil?
        Hearth::Validator.validate!(input[:rate], ::String, context: "#{context}[:rate]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
        Hearth::Validator.validate!(input[:product_type], ::String, context: "#{context}[:product_type]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:usage_type], ::String, context: "#{context}[:usage_type]")
        Hearth::Validator.validate!(input[:operation], ::String, context: "#{context}[:operation]")
        SavingsPlanOfferingRatePropertyList.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
      end
    end

    class SavingsPlanOfferingRateFilterElement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SavingsPlanOfferingRateFilterElement, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        FilterValuesList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class SavingsPlanOfferingRateFiltersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SavingsPlanOfferingRateFilterElement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SavingsPlanOfferingRateProperty
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SavingsPlanOfferingRateProperty, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class SavingsPlanOfferingRatePropertyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SavingsPlanOfferingRateProperty.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SavingsPlanOfferingRatesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SavingsPlanOfferingRate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SavingsPlanOfferingsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SavingsPlanOffering.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SavingsPlanOperationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SavingsPlanPaymentOptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SavingsPlanProductTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SavingsPlanRate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SavingsPlanRate, context: context)
        Hearth::Validator.validate!(input[:rate], ::String, context: "#{context}[:rate]")
        Hearth::Validator.validate!(input[:currency], ::String, context: "#{context}[:currency]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
        Hearth::Validator.validate!(input[:product_type], ::String, context: "#{context}[:product_type]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:usage_type], ::String, context: "#{context}[:usage_type]")
        Hearth::Validator.validate!(input[:operation], ::String, context: "#{context}[:operation]")
        SavingsPlanRatePropertyList.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
      end
    end

    class SavingsPlanRateFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SavingsPlanRateFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        ListOfStrings.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class SavingsPlanRateFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SavingsPlanRateFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SavingsPlanRateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SavingsPlanRate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SavingsPlanRateOperationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SavingsPlanRateProperty
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SavingsPlanRateProperty, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class SavingsPlanRatePropertyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SavingsPlanRateProperty.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SavingsPlanRateServiceCodeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SavingsPlanRateUsageTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SavingsPlanServiceCodeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SavingsPlanStateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SavingsPlanTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SavingsPlanUsageTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class UUIDs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
