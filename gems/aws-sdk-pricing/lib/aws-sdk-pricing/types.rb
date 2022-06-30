# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Pricing
  module Types

    # <p>The values of a given attribute, such as <code>Throughput Optimized HDD</code> or <code>Provisioned
    #           IOPS</code> for the <code>Amazon EC2</code>
    #             <code>volumeType</code> attribute.</p>
    #
    # @!attribute value
    #   <p>The specific value of an <code>attributeName</code>.</p>
    #
    #   @return [String]
    #
    AttributeValue = ::Struct.new(
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_code
    #   <p>The code for the service whose information you want to retrieve, such as <code>AmazonEC2</code>.
    #             You can use
    #            the <code>ServiceCode</code> to filter the results in a <code>GetProducts</code> call.
    #         To retrieve a list of all services, leave this blank.</p>
    #
    #   @return [String]
    #
    # @!attribute format_version
    #   <p>The format version that you want the response to be in.</p>
    #            <p>Valid values are: <code>aws_v1</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token that indicates the next set of results that you want to retrieve.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results that you want returned in the response.</p>
    #
    #   @return [Integer]
    #
    DescribeServicesInput = ::Struct.new(
      :service_code,
      :format_version,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute services
    #   <p>The service metadata for the service or services in the response.</p>
    #
    #   @return [Array<Service>]
    #
    # @!attribute format_version
    #   <p>The format version of the response. For example, <code>aws_v1</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token for the next set of retrievable results.</p>
    #
    #   @return [String]
    #
    DescribeServicesOutput = ::Struct.new(
      :services,
      :format_version,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The pagination token expired. Try again without a pagination token.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ExpiredNextTokenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The constraints that you want all returned products to match.</p>
    #
    # @!attribute type
    #   <p>The type of filter that you want to use.</p>
    #            <p>Valid values are: <code>TERM_MATCH</code>. <code>TERM_MATCH</code> returns only
    #            products that match both the given filter field and the given value.</p>
    #
    #   Enum, one of: ["TERM_MATCH"]
    #
    #   @return [String]
    #
    # @!attribute field
    #   <p>The product metadata field that you want to filter on. You can filter by just the
    #            service code to see all products for a specific service, filter
    #            by just the attribute name to see a specific attribute for multiple services, or use both a service code
    #            and an attribute name to retrieve only products that match both fields.</p>
    #            <p>Valid values include: <code>ServiceCode</code>, and all attribute names</p>
    #
    #            <p>For example, you can filter by the <code>AmazonEC2</code> service code and the
    #            <code>volumeType</code> attribute name to get the prices for only Amazon EC2 volumes.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The service code or attribute value that you want to filter by. If you are filtering by
    #            service code this is the actual service code, such as <code>AmazonEC2</code>. If you are
    #            filtering by attribute name, this is the attribute value that you want the returned products
    #            to match, such as a <code>Provisioned IOPS</code> volume.</p>
    #
    #   @return [String]
    #
    Filter = ::Struct.new(
      :type,
      :field,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FilterType
    #
    module FilterType
      # No documentation available.
      #
      TERM_MATCH = "TERM_MATCH"
    end

    # @!attribute service_code
    #   <p>The service code for the service whose attributes you want to retrieve. For example, if you want
    #             the retrieve an EC2 attribute, use <code>AmazonEC2</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute attribute_name
    #   <p>The name of the attribute that you want to retrieve the values for, such as <code>volumeType</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token that indicates the next set of results that you want to retrieve.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in response.</p>
    #
    #   @return [Integer]
    #
    GetAttributeValuesInput = ::Struct.new(
      :service_code,
      :attribute_name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attribute_values
    #   <p>The list of values for an attribute. For example, <code>Throughput Optimized HDD</code> and
    #         <code>Provisioned IOPS</code> are two available values for the <code>AmazonEC2</code>
    #               <code>volumeType</code>.</p>
    #
    #   @return [Array<AttributeValue>]
    #
    # @!attribute next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #
    #   @return [String]
    #
    GetAttributeValuesOutput = ::Struct.new(
      :attribute_values,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_code
    #   <p>The code for the service whose products you want to retrieve. </p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>The list of filters that limit the returned products. only products that match all filters
    #            are returned.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute format_version
    #   <p>The format version that you want the response to be in.</p>
    #            <p>Valid values are: <code>aws_v1</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token that indicates the next set of results that you want to retrieve.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    #   @return [Integer]
    #
    GetProductsInput = ::Struct.new(
      :service_code,
      :filters,
      :format_version,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute format_version
    #   <p>The format version of the response. For example, aws_v1.</p>
    #
    #   @return [String]
    #
    # @!attribute price_list
    #   <p>The list of products that match your filters. The list contains both the product metadata and
    #            the price information.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #
    #   @return [String]
    #
    GetProductsOutput = ::Struct.new(
      :format_version,
      :price_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An error on the server occurred during the processing of your request. Try again later.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalErrorException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The pagination token is invalid. Try again without a pagination token.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidNextTokenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or more parameters had an invalid value.</p>
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

    # <p>The requested resource can't be found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The metadata for a service, such as the service code and available attribute names.</p>
    #
    # @!attribute service_code
    #   <p>The code for the Amazon Web Services service.</p>
    #
    #   @return [String]
    #
    # @!attribute attribute_names
    #   <p>The attributes that are available for this service.</p>
    #
    #   @return [Array<String>]
    #
    Service = ::Struct.new(
      :service_code,
      :attribute_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
