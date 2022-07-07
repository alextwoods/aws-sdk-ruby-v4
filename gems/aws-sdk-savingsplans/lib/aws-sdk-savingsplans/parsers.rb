# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Savingsplans
  module Parsers

    # Operation Parser for CreateSavingsPlan
    class CreateSavingsPlan
      def self.parse(http_resp)
        data = Types::CreateSavingsPlanOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.savings_plan_id = map['savingsPlanId']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for DeleteQueuedSavingsPlan
    class DeleteQueuedSavingsPlan
      def self.parse(http_resp)
        data = Types::DeleteQueuedSavingsPlanOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeSavingsPlanRates
    class DescribeSavingsPlanRates
      def self.parse(http_resp)
        data = Types::DescribeSavingsPlanRatesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.savings_plan_id = map['savingsPlanId']
        data.search_results = (Parsers::SavingsPlanRateList.parse(map['searchResults']) unless map['searchResults'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class SavingsPlanRateList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SavingsPlanRate.parse(value) unless value.nil?
        end
        data
      end
    end

    class SavingsPlanRate
      def self.parse(map)
        data = Types::SavingsPlanRate.new
        data.rate = map['rate']
        data.currency = map['currency']
        data.unit = map['unit']
        data.product_type = map['productType']
        data.service_code = map['serviceCode']
        data.usage_type = map['usageType']
        data.operation = map['operation']
        data.properties = (Parsers::SavingsPlanRatePropertyList.parse(map['properties']) unless map['properties'].nil?)
        return data
      end
    end

    class SavingsPlanRatePropertyList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SavingsPlanRateProperty.parse(value) unless value.nil?
        end
        data
      end
    end

    class SavingsPlanRateProperty
      def self.parse(map)
        data = Types::SavingsPlanRateProperty.new
        data.name = map['name']
        data.value = map['value']
        return data
      end
    end

    # Operation Parser for DescribeSavingsPlans
    class DescribeSavingsPlans
      def self.parse(http_resp)
        data = Types::DescribeSavingsPlansOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.savings_plans = (Parsers::SavingsPlanList.parse(map['savingsPlans']) unless map['savingsPlans'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class SavingsPlanList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SavingsPlan.parse(value) unless value.nil?
        end
        data
      end
    end

    class SavingsPlan
      def self.parse(map)
        data = Types::SavingsPlan.new
        data.offering_id = map['offeringId']
        data.savings_plan_id = map['savingsPlanId']
        data.savings_plan_arn = map['savingsPlanArn']
        data.description = map['description']
        data.start = map['start']
        data.end = map['end']
        data.state = map['state']
        data.region = map['region']
        data.ec2_instance_family = map['ec2InstanceFamily']
        data.savings_plan_type = map['savingsPlanType']
        data.payment_option = map['paymentOption']
        data.product_types = (Parsers::SavingsPlanProductTypeList.parse(map['productTypes']) unless map['productTypes'].nil?)
        data.currency = map['currency']
        data.commitment = map['commitment']
        data.upfront_payment_amount = map['upfrontPaymentAmount']
        data.recurring_payment_amount = map['recurringPaymentAmount']
        data.term_duration_in_seconds = map['termDurationInSeconds']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
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

    class SavingsPlanProductTypeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeSavingsPlansOfferingRates
    class DescribeSavingsPlansOfferingRates
      def self.parse(http_resp)
        data = Types::DescribeSavingsPlansOfferingRatesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.search_results = (Parsers::SavingsPlanOfferingRatesList.parse(map['searchResults']) unless map['searchResults'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class SavingsPlanOfferingRatesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SavingsPlanOfferingRate.parse(value) unless value.nil?
        end
        data
      end
    end

    class SavingsPlanOfferingRate
      def self.parse(map)
        data = Types::SavingsPlanOfferingRate.new
        data.savings_plan_offering = (Parsers::ParentSavingsPlanOffering.parse(map['savingsPlanOffering']) unless map['savingsPlanOffering'].nil?)
        data.rate = map['rate']
        data.unit = map['unit']
        data.product_type = map['productType']
        data.service_code = map['serviceCode']
        data.usage_type = map['usageType']
        data.operation = map['operation']
        data.properties = (Parsers::SavingsPlanOfferingRatePropertyList.parse(map['properties']) unless map['properties'].nil?)
        return data
      end
    end

    class SavingsPlanOfferingRatePropertyList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SavingsPlanOfferingRateProperty.parse(value) unless value.nil?
        end
        data
      end
    end

    class SavingsPlanOfferingRateProperty
      def self.parse(map)
        data = Types::SavingsPlanOfferingRateProperty.new
        data.name = map['name']
        data.value = map['value']
        return data
      end
    end

    class ParentSavingsPlanOffering
      def self.parse(map)
        data = Types::ParentSavingsPlanOffering.new
        data.offering_id = map['offeringId']
        data.payment_option = map['paymentOption']
        data.plan_type = map['planType']
        data.duration_seconds = map['durationSeconds']
        data.currency = map['currency']
        data.plan_description = map['planDescription']
        return data
      end
    end

    # Operation Parser for DescribeSavingsPlansOfferings
    class DescribeSavingsPlansOfferings
      def self.parse(http_resp)
        data = Types::DescribeSavingsPlansOfferingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.search_results = (Parsers::SavingsPlanOfferingsList.parse(map['searchResults']) unless map['searchResults'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class SavingsPlanOfferingsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SavingsPlanOffering.parse(value) unless value.nil?
        end
        data
      end
    end

    class SavingsPlanOffering
      def self.parse(map)
        data = Types::SavingsPlanOffering.new
        data.offering_id = map['offeringId']
        data.product_types = (Parsers::SavingsPlanProductTypeList.parse(map['productTypes']) unless map['productTypes'].nil?)
        data.plan_type = map['planType']
        data.description = map['description']
        data.payment_option = map['paymentOption']
        data.duration_seconds = map['durationSeconds']
        data.currency = map['currency']
        data.service_code = map['serviceCode']
        data.usage_type = map['usageType']
        data.operation = map['operation']
        data.properties = (Parsers::SavingsPlanOfferingPropertyList.parse(map['properties']) unless map['properties'].nil?)
        return data
      end
    end

    class SavingsPlanOfferingPropertyList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SavingsPlanOfferingProperty.parse(value) unless value.nil?
        end
        data
      end
    end

    class SavingsPlanOfferingProperty
      def self.parse(map)
        data = Types::SavingsPlanOfferingProperty.new
        data.name = map['name']
        data.value = map['value']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
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
  end
end