# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Savingsplans
  module Types

    # @!attribute savings_plan_offering_id
    #   <p>The ID of the offering.</p>
    #
    #   @return [String]
    #
    # @!attribute commitment
    #   <p>The hourly commitment, in USD. This is a value between 0.001 and 1 million. You cannot specify more
    #           than five digits after the decimal point.</p>
    #
    #   @return [String]
    #
    # @!attribute upfront_payment_amount
    #   <p>The up-front payment amount. This is a whole number between 50 and 99 percent of the total value of the Savings Plan.
    #          This parameter is supported only if the payment option is <code>Partial Upfront</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute purchase_time
    #   <p>The time at which to purchase the Savings Plan, in UTC format (YYYY-MM-DDTHH:MM:SSZ).</p>
    #
    #   @return [Time]
    #
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>One or more tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateSavingsPlanInput = ::Struct.new(
      :savings_plan_offering_id,
      :commitment,
      :upfront_payment_amount,
      :purchase_time,
      :client_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute savings_plan_id
    #   <p>The ID of the Savings Plan.</p>
    #
    #   @return [String]
    #
    CreateSavingsPlanOutput = ::Struct.new(
      :savings_plan_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CurrencyCode
    #
    module CurrencyCode
      # No documentation available.
      #
      CNY = "CNY"

      # No documentation available.
      #
      USD = "USD"
    end

    # @!attribute savings_plan_id
    #   <p>The ID of the Savings Plan.</p>
    #
    #   @return [String]
    #
    DeleteQueuedSavingsPlanInput = ::Struct.new(
      :savings_plan_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteQueuedSavingsPlanOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute savings_plan_id
    #   <p>The ID of the Savings Plan.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>The filters.</p>
    #
    #   @return [Array<SavingsPlanRateFilter>]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve additional results, make another
    #            call with the returned token value.</p>
    #
    #   @return [Integer]
    #
    DescribeSavingsPlanRatesInput = ::Struct.new(
      :savings_plan_id,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute savings_plan_id
    #   <p>The ID of the Savings Plan.</p>
    #
    #   @return [String]
    #
    # @!attribute search_results
    #   <p>Information about the Savings Plans rates.</p>
    #
    #   @return [Array<SavingsPlanRate>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are no more
    #            results to return.</p>
    #
    #   @return [String]
    #
    DescribeSavingsPlanRatesOutput = ::Struct.new(
      :savings_plan_id,
      :search_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute savings_plan_arns
    #   <p>The Amazon Resource Names (ARN) of the Savings Plans.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute savings_plan_ids
    #   <p>The IDs of the Savings Plans.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve additional results, make another
    #          call with the returned token value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute states
    #   <p>The states.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute filters
    #   <p>The filters.</p>
    #
    #   @return [Array<SavingsPlanFilter>]
    #
    DescribeSavingsPlansInput = ::Struct.new(
      :savings_plan_arns,
      :savings_plan_ids,
      :next_token,
      :max_results,
      :states,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute savings_plan_offering_ids
    #   <p>The IDs of the offerings.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute savings_plan_payment_options
    #   <p>The payment options.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute savings_plan_types
    #   <p>The plan types.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute products
    #   <p>The AWS products.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute service_codes
    #   <p>The services.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute usage_types
    #   <p>The usage details of the line item in the billing report.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute operations
    #   <p>The specific AWS operation for the line item in the billing report.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute filters
    #   <p>The filters.</p>
    #
    #   @return [Array<SavingsPlanOfferingRateFilterElement>]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve additional results, make another
    #          call with the returned token value.</p>
    #
    #   @return [Integer]
    #
    DescribeSavingsPlansOfferingRatesInput = ::Struct.new(
      :savings_plan_offering_ids,
      :savings_plan_payment_options,
      :savings_plan_types,
      :products,
      :service_codes,
      :usage_types,
      :operations,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute search_results
    #   <p>Information about the Savings Plans offering rates.</p>
    #
    #   @return [Array<SavingsPlanOfferingRate>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are no more
    #          results to return.</p>
    #
    #   @return [String]
    #
    DescribeSavingsPlansOfferingRatesOutput = ::Struct.new(
      :search_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute offering_ids
    #   <p>The IDs of the offerings.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute payment_options
    #   <p>The payment options.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute product_type
    #   <p>The product type.</p>
    #
    #   Enum, one of: ["EC2", "Fargate", "Lambda", "SageMaker"]
    #
    #   @return [String]
    #
    # @!attribute plan_types
    #   <p>The plan type.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute durations
    #   <p>The durations, in seconds.</p>
    #
    #   @return [Array<Integer>]
    #
    # @!attribute currencies
    #   <p>The currencies.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute descriptions
    #   <p>The descriptions.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute service_codes
    #   <p>The services.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute usage_types
    #   <p>The usage details of the line item in the billing report.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute operations
    #   <p>The specific AWS operation for the line item in the billing report.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute filters
    #   <p>The filters.</p>
    #
    #   @return [Array<SavingsPlanOfferingFilterElement>]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve additional results, make another
    #          call with the returned token value.</p>
    #
    #   @return [Integer]
    #
    DescribeSavingsPlansOfferingsInput = ::Struct.new(
      :offering_ids,
      :payment_options,
      :product_type,
      :plan_types,
      :durations,
      :currencies,
      :descriptions,
      :service_codes,
      :usage_types,
      :operations,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute search_results
    #   <p>Information about the Savings Plans offerings.</p>
    #
    #   @return [Array<SavingsPlanOffering>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are no more
    #          results to return.</p>
    #
    #   @return [String]
    #
    DescribeSavingsPlansOfferingsOutput = ::Struct.new(
      :search_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute savings_plans
    #   <p>Information about the Savings Plans.</p>
    #
    #   @return [Array<SavingsPlan>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are no more
    #          results to return.</p>
    #
    #   @return [String]
    #
    DescribeSavingsPlansOutput = ::Struct.new(
      :savings_plans,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An unexpected error occurred.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
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
    #   <p>Information about the tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a Savings Plan offering.</p>
    #
    # @!attribute offering_id
    #   <p>The ID of the offering.</p>
    #
    #   @return [String]
    #
    # @!attribute payment_option
    #   <p>The payment option.</p>
    #
    #   Enum, one of: ["All Upfront", "Partial Upfront", "No Upfront"]
    #
    #   @return [String]
    #
    # @!attribute plan_type
    #   <p>The plan type.</p>
    #
    #   Enum, one of: ["Compute", "EC2Instance", "SageMaker"]
    #
    #   @return [String]
    #
    # @!attribute duration_seconds
    #   <p>The duration, in seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute currency
    #   <p>The currency.</p>
    #
    #   Enum, one of: ["CNY", "USD"]
    #
    #   @return [String]
    #
    # @!attribute plan_description
    #   <p>The description.</p>
    #
    #   @return [String]
    #
    ParentSavingsPlanOffering = ::Struct.new(
      :offering_id,
      :payment_option,
      :plan_type,
      :duration_seconds,
      :currency,
      :plan_description,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.duration_seconds ||= 0
      end

    end

    # <p>The specified resource was not found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a Savings Plan.</p>
    #
    # @!attribute offering_id
    #   <p>The ID of the offering.</p>
    #
    #   @return [String]
    #
    # @!attribute savings_plan_id
    #   <p>The ID of the Savings Plan.</p>
    #
    #   @return [String]
    #
    # @!attribute savings_plan_arn
    #   <p>The Amazon Resource Name (ARN) of the Savings Plan.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description.</p>
    #
    #   @return [String]
    #
    # @!attribute start
    #   <p>The start time.</p>
    #
    #   @return [String]
    #
    # @!attribute end
    #   <p>The end time.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state.</p>
    #
    #   Enum, one of: ["payment-pending", "payment-failed", "active", "retired", "queued", "queued-deleted"]
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The AWS Region.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_instance_family
    #   <p>The EC2 instance family.</p>
    #
    #   @return [String]
    #
    # @!attribute savings_plan_type
    #   <p>The plan type.</p>
    #
    #   Enum, one of: ["Compute", "EC2Instance", "SageMaker"]
    #
    #   @return [String]
    #
    # @!attribute payment_option
    #   <p>The payment option.</p>
    #
    #   Enum, one of: ["All Upfront", "Partial Upfront", "No Upfront"]
    #
    #   @return [String]
    #
    # @!attribute product_types
    #   <p>The product types.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute currency
    #   <p>The currency.</p>
    #
    #   Enum, one of: ["CNY", "USD"]
    #
    #   @return [String]
    #
    # @!attribute commitment
    #   <p>The hourly commitment, in USD.</p>
    #
    #   @return [String]
    #
    # @!attribute upfront_payment_amount
    #   <p>The up-front payment amount.</p>
    #
    #   @return [String]
    #
    # @!attribute recurring_payment_amount
    #   <p>The recurring payment amount.</p>
    #
    #   @return [String]
    #
    # @!attribute term_duration_in_seconds
    #   <p>The duration of the term, in seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tags
    #   <p>One or more tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    SavingsPlan = ::Struct.new(
      :offering_id,
      :savings_plan_id,
      :savings_plan_arn,
      :description,
      :start,
      :end,
      :state,
      :region,
      :ec2_instance_family,
      :savings_plan_type,
      :payment_option,
      :product_types,
      :currency,
      :commitment,
      :upfront_payment_amount,
      :recurring_payment_amount,
      :term_duration_in_seconds,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.term_duration_in_seconds ||= 0
      end

    end

    # <p>Information about a filter.</p>
    #
    # @!attribute name
    #   <p>The filter name.</p>
    #
    #   Enum, one of: ["region", "ec2-instance-family", "commitment", "upfront", "term", "savings-plan-type", "payment-option", "start", "end"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The filter value.</p>
    #
    #   @return [Array<String>]
    #
    SavingsPlanFilter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a Savings Plan offering.</p>
    #
    # @!attribute offering_id
    #   <p>The ID of the offering.</p>
    #
    #   @return [String]
    #
    # @!attribute product_types
    #   <p>The product type.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute plan_type
    #   <p>The plan type.</p>
    #
    #   Enum, one of: ["Compute", "EC2Instance", "SageMaker"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description.</p>
    #
    #   @return [String]
    #
    # @!attribute payment_option
    #   <p>The payment option.</p>
    #
    #   Enum, one of: ["All Upfront", "Partial Upfront", "No Upfront"]
    #
    #   @return [String]
    #
    # @!attribute duration_seconds
    #   <p>The duration, in seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute currency
    #   <p>The currency.</p>
    #
    #   Enum, one of: ["CNY", "USD"]
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   <p>The service.</p>
    #
    #   @return [String]
    #
    # @!attribute usage_type
    #   <p>The usage details of the line item in the billing report.</p>
    #
    #   @return [String]
    #
    # @!attribute operation
    #   <p>The specific AWS operation for the line item in the billing report.</p>
    #
    #   @return [String]
    #
    # @!attribute properties
    #   <p>The properties.</p>
    #
    #   @return [Array<SavingsPlanOfferingProperty>]
    #
    SavingsPlanOffering = ::Struct.new(
      :offering_id,
      :product_types,
      :plan_type,
      :description,
      :payment_option,
      :duration_seconds,
      :currency,
      :service_code,
      :usage_type,
      :operation,
      :properties,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.duration_seconds ||= 0
      end

    end

    # Includes enum constants for SavingsPlanOfferingFilterAttribute
    #
    module SavingsPlanOfferingFilterAttribute
      # No documentation available.
      #
      region = "region"

      # No documentation available.
      #
      instanceFamily = "instanceFamily"
    end

    # <p>Information about a filter.</p>
    #
    # @!attribute name
    #   <p>The filter name.</p>
    #
    #   Enum, one of: ["region", "instanceFamily"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The filter values.</p>
    #
    #   @return [Array<String>]
    #
    SavingsPlanOfferingFilterElement = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a property.</p>
    #
    # @!attribute name
    #   <p>The property name.</p>
    #
    #   Enum, one of: ["region", "instanceFamily"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The property value.</p>
    #
    #   @return [String]
    #
    SavingsPlanOfferingProperty = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SavingsPlanOfferingPropertyKey
    #
    module SavingsPlanOfferingPropertyKey
      # No documentation available.
      #
      REGION = "region"

      # No documentation available.
      #
      INSTANCE_FAMILY = "instanceFamily"
    end

    # <p>Information about a Savings Plan offering rate.</p>
    #
    # @!attribute savings_plan_offering
    #   <p>The Savings Plan offering.</p>
    #
    #   @return [ParentSavingsPlanOffering]
    #
    # @!attribute rate
    #   <p>The Savings Plan rate.</p>
    #
    #   @return [String]
    #
    # @!attribute unit
    #   <p>The unit.</p>
    #
    #   Enum, one of: ["Hrs", "Lambda-GB-Second", "Request"]
    #
    #   @return [String]
    #
    # @!attribute product_type
    #   <p>The product type.</p>
    #
    #   Enum, one of: ["EC2", "Fargate", "Lambda", "SageMaker"]
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   <p>The service.</p>
    #
    #   Enum, one of: ["AmazonEC2", "AmazonECS", "AmazonEKS", "AWSLambda", "AmazonSageMaker"]
    #
    #   @return [String]
    #
    # @!attribute usage_type
    #   <p>The usage details of the line item in the billing report.</p>
    #
    #   @return [String]
    #
    # @!attribute operation
    #   <p>The specific AWS operation for the line item in the billing report.</p>
    #
    #   @return [String]
    #
    # @!attribute properties
    #   <p>The properties.</p>
    #
    #   @return [Array<SavingsPlanOfferingRateProperty>]
    #
    SavingsPlanOfferingRate = ::Struct.new(
      :savings_plan_offering,
      :rate,
      :unit,
      :product_type,
      :service_code,
      :usage_type,
      :operation,
      :properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a filter.</p>
    #
    # @!attribute name
    #   <p>The filter name.</p>
    #
    #   Enum, one of: ["region", "instanceFamily", "instanceType", "productDescription", "tenancy", "productId"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The filter values.</p>
    #
    #   @return [Array<String>]
    #
    SavingsPlanOfferingRateFilterElement = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a property.</p>
    #
    # @!attribute name
    #   <p>The property name.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The property value.</p>
    #
    #   @return [String]
    #
    SavingsPlanOfferingRateProperty = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SavingsPlanPaymentOption
    #
    module SavingsPlanPaymentOption
      # No documentation available.
      #
      ALL_UPFRONT = "All Upfront"

      # No documentation available.
      #
      PARTIAL_UPFRONT = "Partial Upfront"

      # No documentation available.
      #
      NO_UPFRONT = "No Upfront"
    end

    # Includes enum constants for SavingsPlanProductType
    #
    module SavingsPlanProductType
      # No documentation available.
      #
      EC2 = "EC2"

      # No documentation available.
      #
      FARGATE = "Fargate"

      # No documentation available.
      #
      LAMBDA = "Lambda"

      # No documentation available.
      #
      SAGEMAKER = "SageMaker"
    end

    # <p>Information about a Savings Plan rate.</p>
    #
    # @!attribute rate
    #   <p>The rate.</p>
    #
    #   @return [String]
    #
    # @!attribute currency
    #   <p>The currency.</p>
    #
    #   Enum, one of: ["CNY", "USD"]
    #
    #   @return [String]
    #
    # @!attribute unit
    #   <p>The unit.</p>
    #
    #   Enum, one of: ["Hrs", "Lambda-GB-Second", "Request"]
    #
    #   @return [String]
    #
    # @!attribute product_type
    #   <p>The product type.</p>
    #
    #   Enum, one of: ["EC2", "Fargate", "Lambda", "SageMaker"]
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   <p>The service.</p>
    #
    #   Enum, one of: ["AmazonEC2", "AmazonECS", "AmazonEKS", "AWSLambda", "AmazonSageMaker"]
    #
    #   @return [String]
    #
    # @!attribute usage_type
    #   <p>The usage details of the line item in the billing report.</p>
    #
    #   @return [String]
    #
    # @!attribute operation
    #   <p>The specific AWS operation for the line item in the billing report.</p>
    #
    #   @return [String]
    #
    # @!attribute properties
    #   <p>The properties.</p>
    #
    #   @return [Array<SavingsPlanRateProperty>]
    #
    SavingsPlanRate = ::Struct.new(
      :rate,
      :currency,
      :unit,
      :product_type,
      :service_code,
      :usage_type,
      :operation,
      :properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a filter.</p>
    #
    # @!attribute name
    #   <p>The filter name.</p>
    #
    #   Enum, one of: ["region", "instanceType", "productDescription", "tenancy", "productType", "serviceCode", "usageType", "operation"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The filter values.</p>
    #
    #   @return [Array<String>]
    #
    SavingsPlanRateFilter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SavingsPlanRateFilterAttribute
    #
    module SavingsPlanRateFilterAttribute
      # No documentation available.
      #
      REGION = "region"

      # No documentation available.
      #
      INSTANCE_FAMILY = "instanceFamily"

      # No documentation available.
      #
      INSTANCE_TYPE = "instanceType"

      # No documentation available.
      #
      PRODUCT_DESCRIPTION = "productDescription"

      # No documentation available.
      #
      TENANCY = "tenancy"

      # No documentation available.
      #
      PRODUCT_ID = "productId"
    end

    # Includes enum constants for SavingsPlanRateFilterName
    #
    module SavingsPlanRateFilterName
      # No documentation available.
      #
      REGION = "region"

      # No documentation available.
      #
      INSTANCE_TYPE = "instanceType"

      # No documentation available.
      #
      PRODUCT_DESCRIPTION = "productDescription"

      # No documentation available.
      #
      TENANCY = "tenancy"

      # No documentation available.
      #
      PRODUCT_TYPE = "productType"

      # No documentation available.
      #
      SERVICE_CODE = "serviceCode"

      # No documentation available.
      #
      USAGE_TYPE = "usageType"

      # No documentation available.
      #
      OPERATION = "operation"
    end

    # <p>Information about a property.</p>
    #
    # @!attribute name
    #   <p>The property name.</p>
    #
    #   Enum, one of: ["region", "instanceType", "instanceFamily", "productDescription", "tenancy"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The property value.</p>
    #
    #   @return [String]
    #
    SavingsPlanRateProperty = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SavingsPlanRatePropertyKey
    #
    module SavingsPlanRatePropertyKey
      # No documentation available.
      #
      REGION = "region"

      # No documentation available.
      #
      INSTANCE_TYPE = "instanceType"

      # No documentation available.
      #
      INSTANCE_FAMILY = "instanceFamily"

      # No documentation available.
      #
      PRODUCT_DESCRIPTION = "productDescription"

      # No documentation available.
      #
      TENANCY = "tenancy"
    end

    # Includes enum constants for SavingsPlanRateServiceCode
    #
    module SavingsPlanRateServiceCode
      # No documentation available.
      #
      EC2 = "AmazonEC2"

      # No documentation available.
      #
      FARGATE = "AmazonECS"

      # No documentation available.
      #
      FARGATE_EKS = "AmazonEKS"

      # No documentation available.
      #
      LAMBDA = "AWSLambda"

      # No documentation available.
      #
      SAGEMAKER = "AmazonSageMaker"
    end

    # Includes enum constants for SavingsPlanRateUnit
    #
    module SavingsPlanRateUnit
      # No documentation available.
      #
      HOURS = "Hrs"

      # No documentation available.
      #
      LAMBDA_GB_SECOND = "Lambda-GB-Second"

      # No documentation available.
      #
      REQUEST = "Request"
    end

    # Includes enum constants for SavingsPlanState
    #
    module SavingsPlanState
      # No documentation available.
      #
      PAYMENT_PENDING = "payment-pending"

      # No documentation available.
      #
      PAYMENT_FAILED = "payment-failed"

      # No documentation available.
      #
      ACTIVE = "active"

      # No documentation available.
      #
      RETIRED = "retired"

      # No documentation available.
      #
      QUEUED = "queued"

      # No documentation available.
      #
      QUEUED_DELETED = "queued-deleted"
    end

    # Includes enum constants for SavingsPlanType
    #
    module SavingsPlanType
      # No documentation available.
      #
      COMPUTE = "Compute"

      # No documentation available.
      #
      EC2_INSTANCE = "EC2Instance"

      # No documentation available.
      #
      SAGEMAKER = "SageMaker"
    end

    # Includes enum constants for SavingsPlansFilterName
    #
    module SavingsPlansFilterName
      # No documentation available.
      #
      REGION = "region"

      # No documentation available.
      #
      EC2_INSTANCE_FAMILY = "ec2-instance-family"

      # No documentation available.
      #
      COMMITMENT = "commitment"

      # No documentation available.
      #
      UPFRONT = "upfront"

      # No documentation available.
      #
      TERM = "term"

      # No documentation available.
      #
      SAVINGS_PLAN_TYPE = "savings-plan-type"

      # No documentation available.
      #
      PAYMENT_OPTION = "payment-option"

      # No documentation available.
      #
      START = "start"

      # No documentation available.
      #
      END = "end"
    end

    # <p>A service quota has been exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>One or more tags. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
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

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The tag keys.</p>
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

    # <p>One of the input parameters is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ValidationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
