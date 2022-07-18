# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Savingsplans
  module Stubs

    # Operation Stubber for CreateSavingsPlan
    class CreateSavingsPlan
      def self.default(visited=[])
        {
          savings_plan_id: 'savings_plan_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['savingsPlanId'] = stub[:savings_plan_id] unless stub[:savings_plan_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteQueuedSavingsPlan
    class DeleteQueuedSavingsPlan
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeSavingsPlanRates
    class DescribeSavingsPlanRates
      def self.default(visited=[])
        {
          savings_plan_id: 'savings_plan_id',
          search_results: SavingsPlanRateList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['savingsPlanId'] = stub[:savings_plan_id] unless stub[:savings_plan_id].nil?
        data['searchResults'] = Stubs::SavingsPlanRateList.stub(stub[:search_results]) unless stub[:search_results].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SavingsPlanRateList
    class SavingsPlanRateList
      def self.default(visited=[])
        return nil if visited.include?('SavingsPlanRateList')
        visited = visited + ['SavingsPlanRateList']
        [
          SavingsPlanRate.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SavingsPlanRate.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SavingsPlanRate
    class SavingsPlanRate
      def self.default(visited=[])
        return nil if visited.include?('SavingsPlanRate')
        visited = visited + ['SavingsPlanRate']
        {
          rate: 'rate',
          currency: 'currency',
          unit: 'unit',
          product_type: 'product_type',
          service_code: 'service_code',
          usage_type: 'usage_type',
          operation: 'operation',
          properties: SavingsPlanRatePropertyList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SavingsPlanRate.new
        data = {}
        data['rate'] = stub[:rate] unless stub[:rate].nil?
        data['currency'] = stub[:currency] unless stub[:currency].nil?
        data['unit'] = stub[:unit] unless stub[:unit].nil?
        data['productType'] = stub[:product_type] unless stub[:product_type].nil?
        data['serviceCode'] = stub[:service_code] unless stub[:service_code].nil?
        data['usageType'] = stub[:usage_type] unless stub[:usage_type].nil?
        data['operation'] = stub[:operation] unless stub[:operation].nil?
        data['properties'] = Stubs::SavingsPlanRatePropertyList.stub(stub[:properties]) unless stub[:properties].nil?
        data
      end
    end

    # List Stubber for SavingsPlanRatePropertyList
    class SavingsPlanRatePropertyList
      def self.default(visited=[])
        return nil if visited.include?('SavingsPlanRatePropertyList')
        visited = visited + ['SavingsPlanRatePropertyList']
        [
          SavingsPlanRateProperty.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SavingsPlanRateProperty.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SavingsPlanRateProperty
    class SavingsPlanRateProperty
      def self.default(visited=[])
        return nil if visited.include?('SavingsPlanRateProperty')
        visited = visited + ['SavingsPlanRateProperty']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::SavingsPlanRateProperty.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for DescribeSavingsPlans
    class DescribeSavingsPlans
      def self.default(visited=[])
        {
          savings_plans: SavingsPlanList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['savingsPlans'] = Stubs::SavingsPlanList.stub(stub[:savings_plans]) unless stub[:savings_plans].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SavingsPlanList
    class SavingsPlanList
      def self.default(visited=[])
        return nil if visited.include?('SavingsPlanList')
        visited = visited + ['SavingsPlanList']
        [
          SavingsPlan.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SavingsPlan.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SavingsPlan
    class SavingsPlan
      def self.default(visited=[])
        return nil if visited.include?('SavingsPlan')
        visited = visited + ['SavingsPlan']
        {
          offering_id: 'offering_id',
          savings_plan_id: 'savings_plan_id',
          savings_plan_arn: 'savings_plan_arn',
          description: 'description',
          start: 'start',
          end: 'end',
          state: 'state',
          region: 'region',
          ec2_instance_family: 'ec2_instance_family',
          savings_plan_type: 'savings_plan_type',
          payment_option: 'payment_option',
          product_types: SavingsPlanProductTypeList.default(visited),
          currency: 'currency',
          commitment: 'commitment',
          upfront_payment_amount: 'upfront_payment_amount',
          recurring_payment_amount: 'recurring_payment_amount',
          term_duration_in_seconds: 1,
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SavingsPlan.new
        data = {}
        data['offeringId'] = stub[:offering_id] unless stub[:offering_id].nil?
        data['savingsPlanId'] = stub[:savings_plan_id] unless stub[:savings_plan_id].nil?
        data['savingsPlanArn'] = stub[:savings_plan_arn] unless stub[:savings_plan_arn].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['start'] = stub[:start] unless stub[:start].nil?
        data['end'] = stub[:end] unless stub[:end].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data['ec2InstanceFamily'] = stub[:ec2_instance_family] unless stub[:ec2_instance_family].nil?
        data['savingsPlanType'] = stub[:savings_plan_type] unless stub[:savings_plan_type].nil?
        data['paymentOption'] = stub[:payment_option] unless stub[:payment_option].nil?
        data['productTypes'] = Stubs::SavingsPlanProductTypeList.stub(stub[:product_types]) unless stub[:product_types].nil?
        data['currency'] = stub[:currency] unless stub[:currency].nil?
        data['commitment'] = stub[:commitment] unless stub[:commitment].nil?
        data['upfrontPaymentAmount'] = stub[:upfront_payment_amount] unless stub[:upfront_payment_amount].nil?
        data['recurringPaymentAmount'] = stub[:recurring_payment_amount] unless stub[:recurring_payment_amount].nil?
        data['termDurationInSeconds'] = stub[:term_duration_in_seconds] unless stub[:term_duration_in_seconds].nil?
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
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

    # List Stubber for SavingsPlanProductTypeList
    class SavingsPlanProductTypeList
      def self.default(visited=[])
        return nil if visited.include?('SavingsPlanProductTypeList')
        visited = visited + ['SavingsPlanProductTypeList']
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

    # Operation Stubber for DescribeSavingsPlansOfferingRates
    class DescribeSavingsPlansOfferingRates
      def self.default(visited=[])
        {
          search_results: SavingsPlanOfferingRatesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['searchResults'] = Stubs::SavingsPlanOfferingRatesList.stub(stub[:search_results]) unless stub[:search_results].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SavingsPlanOfferingRatesList
    class SavingsPlanOfferingRatesList
      def self.default(visited=[])
        return nil if visited.include?('SavingsPlanOfferingRatesList')
        visited = visited + ['SavingsPlanOfferingRatesList']
        [
          SavingsPlanOfferingRate.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SavingsPlanOfferingRate.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SavingsPlanOfferingRate
    class SavingsPlanOfferingRate
      def self.default(visited=[])
        return nil if visited.include?('SavingsPlanOfferingRate')
        visited = visited + ['SavingsPlanOfferingRate']
        {
          savings_plan_offering: ParentSavingsPlanOffering.default(visited),
          rate: 'rate',
          unit: 'unit',
          product_type: 'product_type',
          service_code: 'service_code',
          usage_type: 'usage_type',
          operation: 'operation',
          properties: SavingsPlanOfferingRatePropertyList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SavingsPlanOfferingRate.new
        data = {}
        data['savingsPlanOffering'] = Stubs::ParentSavingsPlanOffering.stub(stub[:savings_plan_offering]) unless stub[:savings_plan_offering].nil?
        data['rate'] = stub[:rate] unless stub[:rate].nil?
        data['unit'] = stub[:unit] unless stub[:unit].nil?
        data['productType'] = stub[:product_type] unless stub[:product_type].nil?
        data['serviceCode'] = stub[:service_code] unless stub[:service_code].nil?
        data['usageType'] = stub[:usage_type] unless stub[:usage_type].nil?
        data['operation'] = stub[:operation] unless stub[:operation].nil?
        data['properties'] = Stubs::SavingsPlanOfferingRatePropertyList.stub(stub[:properties]) unless stub[:properties].nil?
        data
      end
    end

    # List Stubber for SavingsPlanOfferingRatePropertyList
    class SavingsPlanOfferingRatePropertyList
      def self.default(visited=[])
        return nil if visited.include?('SavingsPlanOfferingRatePropertyList')
        visited = visited + ['SavingsPlanOfferingRatePropertyList']
        [
          SavingsPlanOfferingRateProperty.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SavingsPlanOfferingRateProperty.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SavingsPlanOfferingRateProperty
    class SavingsPlanOfferingRateProperty
      def self.default(visited=[])
        return nil if visited.include?('SavingsPlanOfferingRateProperty')
        visited = visited + ['SavingsPlanOfferingRateProperty']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::SavingsPlanOfferingRateProperty.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for ParentSavingsPlanOffering
    class ParentSavingsPlanOffering
      def self.default(visited=[])
        return nil if visited.include?('ParentSavingsPlanOffering')
        visited = visited + ['ParentSavingsPlanOffering']
        {
          offering_id: 'offering_id',
          payment_option: 'payment_option',
          plan_type: 'plan_type',
          duration_seconds: 1,
          currency: 'currency',
          plan_description: 'plan_description',
        }
      end

      def self.stub(stub)
        stub ||= Types::ParentSavingsPlanOffering.new
        data = {}
        data['offeringId'] = stub[:offering_id] unless stub[:offering_id].nil?
        data['paymentOption'] = stub[:payment_option] unless stub[:payment_option].nil?
        data['planType'] = stub[:plan_type] unless stub[:plan_type].nil?
        data['durationSeconds'] = stub[:duration_seconds] unless stub[:duration_seconds].nil?
        data['currency'] = stub[:currency] unless stub[:currency].nil?
        data['planDescription'] = stub[:plan_description] unless stub[:plan_description].nil?
        data
      end
    end

    # Operation Stubber for DescribeSavingsPlansOfferings
    class DescribeSavingsPlansOfferings
      def self.default(visited=[])
        {
          search_results: SavingsPlanOfferingsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['searchResults'] = Stubs::SavingsPlanOfferingsList.stub(stub[:search_results]) unless stub[:search_results].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SavingsPlanOfferingsList
    class SavingsPlanOfferingsList
      def self.default(visited=[])
        return nil if visited.include?('SavingsPlanOfferingsList')
        visited = visited + ['SavingsPlanOfferingsList']
        [
          SavingsPlanOffering.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SavingsPlanOffering.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SavingsPlanOffering
    class SavingsPlanOffering
      def self.default(visited=[])
        return nil if visited.include?('SavingsPlanOffering')
        visited = visited + ['SavingsPlanOffering']
        {
          offering_id: 'offering_id',
          product_types: SavingsPlanProductTypeList.default(visited),
          plan_type: 'plan_type',
          description: 'description',
          payment_option: 'payment_option',
          duration_seconds: 1,
          currency: 'currency',
          service_code: 'service_code',
          usage_type: 'usage_type',
          operation: 'operation',
          properties: SavingsPlanOfferingPropertyList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SavingsPlanOffering.new
        data = {}
        data['offeringId'] = stub[:offering_id] unless stub[:offering_id].nil?
        data['productTypes'] = Stubs::SavingsPlanProductTypeList.stub(stub[:product_types]) unless stub[:product_types].nil?
        data['planType'] = stub[:plan_type] unless stub[:plan_type].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['paymentOption'] = stub[:payment_option] unless stub[:payment_option].nil?
        data['durationSeconds'] = stub[:duration_seconds] unless stub[:duration_seconds].nil?
        data['currency'] = stub[:currency] unless stub[:currency].nil?
        data['serviceCode'] = stub[:service_code] unless stub[:service_code].nil?
        data['usageType'] = stub[:usage_type] unless stub[:usage_type].nil?
        data['operation'] = stub[:operation] unless stub[:operation].nil?
        data['properties'] = Stubs::SavingsPlanOfferingPropertyList.stub(stub[:properties]) unless stub[:properties].nil?
        data
      end
    end

    # List Stubber for SavingsPlanOfferingPropertyList
    class SavingsPlanOfferingPropertyList
      def self.default(visited=[])
        return nil if visited.include?('SavingsPlanOfferingPropertyList')
        visited = visited + ['SavingsPlanOfferingPropertyList']
        [
          SavingsPlanOfferingProperty.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SavingsPlanOfferingProperty.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SavingsPlanOfferingProperty
    class SavingsPlanOfferingProperty
      def self.default(visited=[])
        return nil if visited.include?('SavingsPlanOfferingProperty')
        visited = visited + ['SavingsPlanOfferingProperty']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::SavingsPlanOfferingProperty.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
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
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.status = 200
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
        http_resp.status = 200
      end
    end
  end
end
