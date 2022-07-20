# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Savingsplans
  module Params

    module CreateSavingsPlanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSavingsPlanInput, context: context)
        type = Types::CreateSavingsPlanInput.new
        type.savings_plan_offering_id = params[:savings_plan_offering_id]
        type.commitment = params[:commitment]
        type.upfront_payment_amount = params[:upfront_payment_amount]
        type.purchase_time = params[:purchase_time]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateSavingsPlanOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSavingsPlanOutput, context: context)
        type = Types::CreateSavingsPlanOutput.new
        type.savings_plan_id = params[:savings_plan_id]
        type
      end
    end

    module CurrencyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DeleteQueuedSavingsPlanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteQueuedSavingsPlanInput, context: context)
        type = Types::DeleteQueuedSavingsPlanInput.new
        type.savings_plan_id = params[:savings_plan_id]
        type
      end
    end

    module DeleteQueuedSavingsPlanOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteQueuedSavingsPlanOutput, context: context)
        type = Types::DeleteQueuedSavingsPlanOutput.new
        type
      end
    end

    module DescribeSavingsPlanRatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSavingsPlanRatesInput, context: context)
        type = Types::DescribeSavingsPlanRatesInput.new
        type.savings_plan_id = params[:savings_plan_id]
        type.filters = SavingsPlanRateFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeSavingsPlanRatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSavingsPlanRatesOutput, context: context)
        type = Types::DescribeSavingsPlanRatesOutput.new
        type.savings_plan_id = params[:savings_plan_id]
        type.search_results = SavingsPlanRateList.build(params[:search_results], context: "#{context}[:search_results]") unless params[:search_results].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeSavingsPlansInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSavingsPlansInput, context: context)
        type = Types::DescribeSavingsPlansInput.new
        type.savings_plan_arns = SavingsPlanArnList.build(params[:savings_plan_arns], context: "#{context}[:savings_plan_arns]") unless params[:savings_plan_arns].nil?
        type.savings_plan_ids = SavingsPlanIdList.build(params[:savings_plan_ids], context: "#{context}[:savings_plan_ids]") unless params[:savings_plan_ids].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.states = SavingsPlanStateList.build(params[:states], context: "#{context}[:states]") unless params[:states].nil?
        type.filters = SavingsPlanFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module DescribeSavingsPlansOfferingRatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSavingsPlansOfferingRatesInput, context: context)
        type = Types::DescribeSavingsPlansOfferingRatesInput.new
        type.savings_plan_offering_ids = UUIDs.build(params[:savings_plan_offering_ids], context: "#{context}[:savings_plan_offering_ids]") unless params[:savings_plan_offering_ids].nil?
        type.savings_plan_payment_options = SavingsPlanPaymentOptionList.build(params[:savings_plan_payment_options], context: "#{context}[:savings_plan_payment_options]") unless params[:savings_plan_payment_options].nil?
        type.savings_plan_types = SavingsPlanTypeList.build(params[:savings_plan_types], context: "#{context}[:savings_plan_types]") unless params[:savings_plan_types].nil?
        type.products = SavingsPlanProductTypeList.build(params[:products], context: "#{context}[:products]") unless params[:products].nil?
        type.service_codes = SavingsPlanRateServiceCodeList.build(params[:service_codes], context: "#{context}[:service_codes]") unless params[:service_codes].nil?
        type.usage_types = SavingsPlanRateUsageTypeList.build(params[:usage_types], context: "#{context}[:usage_types]") unless params[:usage_types].nil?
        type.operations = SavingsPlanRateOperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type.filters = SavingsPlanOfferingRateFiltersList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeSavingsPlansOfferingRatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSavingsPlansOfferingRatesOutput, context: context)
        type = Types::DescribeSavingsPlansOfferingRatesOutput.new
        type.search_results = SavingsPlanOfferingRatesList.build(params[:search_results], context: "#{context}[:search_results]") unless params[:search_results].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeSavingsPlansOfferingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSavingsPlansOfferingsInput, context: context)
        type = Types::DescribeSavingsPlansOfferingsInput.new
        type.offering_ids = UUIDs.build(params[:offering_ids], context: "#{context}[:offering_ids]") unless params[:offering_ids].nil?
        type.payment_options = SavingsPlanPaymentOptionList.build(params[:payment_options], context: "#{context}[:payment_options]") unless params[:payment_options].nil?
        type.product_type = params[:product_type]
        type.plan_types = SavingsPlanTypeList.build(params[:plan_types], context: "#{context}[:plan_types]") unless params[:plan_types].nil?
        type.durations = DurationsList.build(params[:durations], context: "#{context}[:durations]") unless params[:durations].nil?
        type.currencies = CurrencyList.build(params[:currencies], context: "#{context}[:currencies]") unless params[:currencies].nil?
        type.descriptions = SavingsPlanDescriptionsList.build(params[:descriptions], context: "#{context}[:descriptions]") unless params[:descriptions].nil?
        type.service_codes = SavingsPlanServiceCodeList.build(params[:service_codes], context: "#{context}[:service_codes]") unless params[:service_codes].nil?
        type.usage_types = SavingsPlanUsageTypeList.build(params[:usage_types], context: "#{context}[:usage_types]") unless params[:usage_types].nil?
        type.operations = SavingsPlanOperationList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type.filters = SavingsPlanOfferingFiltersList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeSavingsPlansOfferingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSavingsPlansOfferingsOutput, context: context)
        type = Types::DescribeSavingsPlansOfferingsOutput.new
        type.search_results = SavingsPlanOfferingsList.build(params[:search_results], context: "#{context}[:search_results]") unless params[:search_results].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeSavingsPlansOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSavingsPlansOutput, context: context)
        type = Types::DescribeSavingsPlansOutput.new
        type.savings_plans = SavingsPlanList.build(params[:savings_plans], context: "#{context}[:savings_plans]") unless params[:savings_plans].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DurationsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FilterValuesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module ListOfStrings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
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

    module ParentSavingsPlanOffering
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParentSavingsPlanOffering, context: context)
        type = Types::ParentSavingsPlanOffering.new
        type.offering_id = params[:offering_id]
        type.payment_option = params[:payment_option]
        type.plan_type = params[:plan_type]
        type.duration_seconds = params[:duration_seconds]
        type.currency = params[:currency]
        type.plan_description = params[:plan_description]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module SavingsPlan
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SavingsPlan, context: context)
        type = Types::SavingsPlan.new
        type.offering_id = params[:offering_id]
        type.savings_plan_id = params[:savings_plan_id]
        type.savings_plan_arn = params[:savings_plan_arn]
        type.description = params[:description]
        type.start = params[:start]
        type.end = params[:end]
        type.state = params[:state]
        type.region = params[:region]
        type.ec2_instance_family = params[:ec2_instance_family]
        type.savings_plan_type = params[:savings_plan_type]
        type.payment_option = params[:payment_option]
        type.product_types = SavingsPlanProductTypeList.build(params[:product_types], context: "#{context}[:product_types]") unless params[:product_types].nil?
        type.currency = params[:currency]
        type.commitment = params[:commitment]
        type.upfront_payment_amount = params[:upfront_payment_amount]
        type.recurring_payment_amount = params[:recurring_payment_amount]
        type.term_duration_in_seconds = params[:term_duration_in_seconds]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module SavingsPlanArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SavingsPlanDescriptionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SavingsPlanFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SavingsPlanFilter, context: context)
        type = Types::SavingsPlanFilter.new
        type.name = params[:name]
        type.values = ListOfStrings.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module SavingsPlanFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SavingsPlanFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SavingsPlanIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SavingsPlanList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SavingsPlan.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SavingsPlanOffering
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SavingsPlanOffering, context: context)
        type = Types::SavingsPlanOffering.new
        type.offering_id = params[:offering_id]
        type.product_types = SavingsPlanProductTypeList.build(params[:product_types], context: "#{context}[:product_types]") unless params[:product_types].nil?
        type.plan_type = params[:plan_type]
        type.description = params[:description]
        type.payment_option = params[:payment_option]
        type.duration_seconds = params[:duration_seconds]
        type.currency = params[:currency]
        type.service_code = params[:service_code]
        type.usage_type = params[:usage_type]
        type.operation = params[:operation]
        type.properties = SavingsPlanOfferingPropertyList.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type
      end
    end

    module SavingsPlanOfferingFilterElement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SavingsPlanOfferingFilterElement, context: context)
        type = Types::SavingsPlanOfferingFilterElement.new
        type.name = params[:name]
        type.values = FilterValuesList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module SavingsPlanOfferingFiltersList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SavingsPlanOfferingFilterElement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SavingsPlanOfferingProperty
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SavingsPlanOfferingProperty, context: context)
        type = Types::SavingsPlanOfferingProperty.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module SavingsPlanOfferingPropertyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SavingsPlanOfferingProperty.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SavingsPlanOfferingRate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SavingsPlanOfferingRate, context: context)
        type = Types::SavingsPlanOfferingRate.new
        type.savings_plan_offering = ParentSavingsPlanOffering.build(params[:savings_plan_offering], context: "#{context}[:savings_plan_offering]") unless params[:savings_plan_offering].nil?
        type.rate = params[:rate]
        type.unit = params[:unit]
        type.product_type = params[:product_type]
        type.service_code = params[:service_code]
        type.usage_type = params[:usage_type]
        type.operation = params[:operation]
        type.properties = SavingsPlanOfferingRatePropertyList.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type
      end
    end

    module SavingsPlanOfferingRateFilterElement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SavingsPlanOfferingRateFilterElement, context: context)
        type = Types::SavingsPlanOfferingRateFilterElement.new
        type.name = params[:name]
        type.values = FilterValuesList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module SavingsPlanOfferingRateFiltersList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SavingsPlanOfferingRateFilterElement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SavingsPlanOfferingRateProperty
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SavingsPlanOfferingRateProperty, context: context)
        type = Types::SavingsPlanOfferingRateProperty.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module SavingsPlanOfferingRatePropertyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SavingsPlanOfferingRateProperty.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SavingsPlanOfferingRatesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SavingsPlanOfferingRate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SavingsPlanOfferingsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SavingsPlanOffering.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SavingsPlanOperationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SavingsPlanPaymentOptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SavingsPlanProductTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SavingsPlanRate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SavingsPlanRate, context: context)
        type = Types::SavingsPlanRate.new
        type.rate = params[:rate]
        type.currency = params[:currency]
        type.unit = params[:unit]
        type.product_type = params[:product_type]
        type.service_code = params[:service_code]
        type.usage_type = params[:usage_type]
        type.operation = params[:operation]
        type.properties = SavingsPlanRatePropertyList.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type
      end
    end

    module SavingsPlanRateFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SavingsPlanRateFilter, context: context)
        type = Types::SavingsPlanRateFilter.new
        type.name = params[:name]
        type.values = ListOfStrings.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module SavingsPlanRateFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SavingsPlanRateFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SavingsPlanRateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SavingsPlanRate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SavingsPlanRateOperationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SavingsPlanRateProperty
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SavingsPlanRateProperty, context: context)
        type = Types::SavingsPlanRateProperty.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module SavingsPlanRatePropertyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SavingsPlanRateProperty.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SavingsPlanRateServiceCodeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SavingsPlanRateUsageTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SavingsPlanServiceCodeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SavingsPlanStateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SavingsPlanTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SavingsPlanUsageTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
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

    module UUIDs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
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

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

  end
end
