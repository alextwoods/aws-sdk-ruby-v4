# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MarketplaceEntitlementService
  module Types

    # <p>An entitlement represents capacity in a product owned by the customer. For example, a
    #       customer might own some number of users or seats in an SaaS application or  some amount of
    #       data capacity in a multi-tenant database.</p>
    #
    # @!attribute product_code
    #   <p>The product code for which the given entitlement applies. Product codes are provided by
    #      AWS Marketplace when the product listing is created.</p>
    #
    #   @return [String]
    #
    # @!attribute dimension
    #   <p>The dimension for which the given entitlement applies. Dimensions represent categories of
    #         capacity in a product and are specified when the product is listed in AWS
    #         Marketplace.</p>
    #
    #   @return [String]
    #
    # @!attribute customer_identifier
    #   <p>The customer identifier is a handle to each unique customer in an application. Customer
    #      identifiers are obtained through the ResolveCustomer operation in AWS Marketplace Metering
    #      Service.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The EntitlementValue represents the amount of capacity that the customer is entitled to
    #      for the product.</p>
    #
    #   @return [EntitlementValue]
    #
    # @!attribute expiration_date
    #   <p>The expiration date represents the minimum date through which this entitlement is
    #      expected to remain valid. For contractual products listed on AWS Marketplace, the expiration date
    #      is the date at which the customer will renew or cancel their contract. Customers who are opting
    #      to renew their contract will still have entitlements with an expiration date.</p>
    #
    #   @return [Time]
    #
    Entitlement = ::Struct.new(
      :product_code,
      :dimension,
      :customer_identifier,
      :value,
      :expiration_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The EntitlementValue represents the amount of capacity that the customer is entitled to
    #    for the product.</p>
    #
    class EntitlementValue < Hearth::Union
      # <p>The IntegerValue field will be populated with an integer value when the entitlement is an
      #    integer type. Otherwise, the field will not be set.</p>
      #
      class IntegerValue < EntitlementValue
        def to_h
          { integer_value: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::MarketplaceEntitlementService::Types::IntegerValue #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The DoubleValue field will be populated with a double value when the entitlement is a
      #    double type. Otherwise, the field will not be set.</p>
      #
      class DoubleValue < EntitlementValue
        def to_h
          { double_value: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::MarketplaceEntitlementService::Types::DoubleValue #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The BooleanValue field will be populated with a boolean value when the entitlement is a
      #       boolean type. Otherwise, the field will not be set.</p>
      #
      class BooleanValue < EntitlementValue
        def to_h
          { boolean_value: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::MarketplaceEntitlementService::Types::BooleanValue #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The StringValue field will be populated with a string value when the entitlement is a
      #    string type. Otherwise, the field will not be set.</p>
      #
      class StringValue < EntitlementValue
        def to_h
          { string_value: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::MarketplaceEntitlementService::Types::StringValue #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < EntitlementValue
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::MarketplaceEntitlementService::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # Includes enum constants for GetEntitlementFilterName
    #
    module GetEntitlementFilterName
      # No documentation available.
      #
      CUSTOMER_IDENTIFIER = "CUSTOMER_IDENTIFIER"

      # No documentation available.
      #
      DIMENSION = "DIMENSION"
    end

    # <p>The GetEntitlementsRequest contains parameters for the GetEntitlements
    #    operation.</p>
    #
    # @!attribute product_code
    #   <p>Product code is used to uniquely identify a product in AWS Marketplace. The product code
    #      will be provided by AWS Marketplace when the product listing is created.</p>
    #
    #   @return [String]
    #
    # @!attribute filter
    #   <p>Filter is used to return entitlements for a specific customer or for a specific
    #         dimension. Filters are described as keys mapped to a lists of values. Filtered requests are
    #           <i>unioned</i> for each value in the value list, and then
    #           <i>intersected</i> for each filter key.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute next_token
    #   <p>For paginated calls to GetEntitlements, pass the NextToken from the previous
    #      GetEntitlementsResult.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to retrieve from the GetEntitlements operation. For
    #      pagination, use the NextToken field in subsequent calls to GetEntitlements.</p>
    #
    #   @return [Integer]
    #
    GetEntitlementsInput = ::Struct.new(
      :product_code,
      :filter,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The GetEntitlementsRequest contains results from the GetEntitlements operation.</p>
    #
    # @!attribute entitlements
    #   <p>The set of entitlements found through the GetEntitlements operation. If the result
    #         contains an empty set of entitlements, NextToken might still be present and should be
    #         used.</p>
    #
    #   @return [Array<Entitlement>]
    #
    # @!attribute next_token
    #   <p>For paginated results, use NextToken in subsequent calls to GetEntitlements. If the
    #         result contains an empty set of entitlements, NextToken might still be present and should be
    #         used.</p>
    #
    #   @return [String]
    #
    GetEntitlementsOutput = ::Struct.new(
      :entitlements,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An internal error has occurred. Retry your request. If the problem persists, post a
    #    message with details on the AWS forums.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServiceErrorException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or more parameters in your request was invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidParameterException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The calls to the GetEntitlements API are throttled.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
