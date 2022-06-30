# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ElasticInference
  module Types

    # <p>
    #             The details of an Elastic Inference Accelerator type.
    #         </p>
    #
    # @!attribute accelerator_type_name
    #   <p>
    #               The name of the Elastic Inference Accelerator type.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute memory_info
    #   <p>
    #               The memory information of the Elastic Inference Accelerator type.
    #           </p>
    #
    #   @return [MemoryInfo]
    #
    # @!attribute throughput_info
    #   <p>
    #               The throughput information of the Elastic Inference Accelerator type.
    #           </p>
    #
    #   @return [Array<KeyValuePair>]
    #
    AcceleratorType = ::Struct.new(
      :accelerator_type_name,
      :memory_info,
      :throughput_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             The offering for an Elastic Inference Accelerator type.
    #         </p>
    #
    # @!attribute accelerator_type
    #   <p>
    #               The name of the Elastic Inference Accelerator type.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute location_type
    #   <p>
    #               The location type for the offering. It can assume the following values:
    #               region: defines that the offering is at the regional level.
    #               availability-zone: defines that the offering is at the availability zone level.
    #               availability-zone-id: defines that the offering is at the availability zone level, defined by the availability zone id.
    #           </p>
    #
    #   Enum, one of: ["region", "availability-zone", "availability-zone-id"]
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>
    #               The location for the offering.
    #               It will return either the region, availability zone or availability zone id for the offering depending on the locationType value.
    #           </p>
    #
    #   @return [String]
    #
    AcceleratorTypeOffering = ::Struct.new(
      :accelerator_type,
      :location_type,
      :location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             Raised when a malformed input has been provided to the API.
    #         </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    BadRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute location_type
    #   <p>
    #               The location type that you want to describe accelerator type offerings for. It can assume the following values:
    #               region: will return the accelerator type offering at the regional level.
    #               availability-zone: will return the accelerator type offering at the availability zone level.
    #               availability-zone-id: will return the accelerator type offering at the availability zone level returning the availability zone id.
    #           </p>
    #
    #   Enum, one of: ["region", "availability-zone", "availability-zone-id"]
    #
    #   @return [String]
    #
    # @!attribute accelerator_types
    #   <p>
    #               The list of accelerator types to describe.
    #           </p>
    #
    #   @return [Array<String>]
    #
    DescribeAcceleratorOfferingsInput = ::Struct.new(
      :location_type,
      :accelerator_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accelerator_type_offerings
    #   <p>
    #               The list of accelerator type offerings for a specific location.
    #           </p>
    #
    #   @return [Array<AcceleratorTypeOffering>]
    #
    DescribeAcceleratorOfferingsOutput = ::Struct.new(
      :accelerator_type_offerings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DescribeAcceleratorTypesInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accelerator_types
    #   <p>
    #               The available accelerator types.
    #           </p>
    #
    #   @return [Array<AcceleratorType>]
    #
    DescribeAcceleratorTypesOutput = ::Struct.new(
      :accelerator_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accelerator_ids
    #   <p>
    #               The IDs of the accelerators to describe.
    #           </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute filters
    #   <p>
    #               One or more filters. Filter names and values are case-sensitive. Valid filter names are:
    #               accelerator-types: can provide a list of accelerator type names to filter for.
    #               instance-id: can provide a list of EC2 instance ids to filter for.
    #           </p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_results
    #   <p>
    #               The total number of items to return in the command's output. If the total number of items available is more than the value specified, a NextToken is provided in the command's output.
    #               To resume pagination, provide the NextToken value in the starting-token argument of a subsequent command.
    #               Do not use the NextToken response element directly outside of the AWS CLI.
    #           </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>
    #               A token to specify where to start paginating. This is the NextToken from a previously truncated response.
    #           </p>
    #
    #   @return [String]
    #
    DescribeAcceleratorsInput = ::Struct.new(
      :accelerator_ids,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute accelerator_set
    #   <p>
    #               The details of the Elastic Inference Accelerators.
    #           </p>
    #
    #   @return [Array<ElasticInferenceAccelerator>]
    #
    # @!attribute next_token
    #   <p>
    #               A token to specify where to start paginating. This is the NextToken from a previously truncated response.
    #           </p>
    #
    #   @return [String]
    #
    DescribeAcceleratorsOutput = ::Struct.new(
      :accelerator_set,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             The details of an Elastic Inference Accelerator.
    #         </p>
    #
    # @!attribute accelerator_health
    #   <p>
    #               The health of the Elastic Inference Accelerator.
    #           </p>
    #
    #   @return [ElasticInferenceAcceleratorHealth]
    #
    # @!attribute accelerator_type
    #   <p>
    #               The type of the Elastic Inference Accelerator.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute accelerator_id
    #   <p>
    #               The ID of the Elastic Inference Accelerator.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute availability_zone
    #   <p>
    #               The availability zone where the Elastic Inference Accelerator is present.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute attached_resource
    #   <p>
    #               The ARN of the resource that the Elastic Inference Accelerator is attached to.
    #           </p>
    #
    #   @return [String]
    #
    ElasticInferenceAccelerator = ::Struct.new(
      :accelerator_health,
      :accelerator_type,
      :accelerator_id,
      :availability_zone,
      :attached_resource,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             The health details of an Elastic Inference Accelerator.
    #         </p>
    #
    # @!attribute status
    #   <p>
    #               The health status of the Elastic Inference Accelerator.
    #           </p>
    #
    #   @return [String]
    #
    ElasticInferenceAcceleratorHealth = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             A filter expression for the Elastic Inference Accelerator list.
    #         </p>
    #
    # @!attribute name
    #   <p>
    #               The filter name for the Elastic Inference Accelerator list. It can assume the following values:
    #               accelerator-type: the type of Elastic Inference Accelerator to filter for.
    #               instance-id: an EC2 instance id to filter for.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>
    #               The values for the filter of the Elastic Inference Accelerator list.
    #           </p>
    #
    #   @return [Array<String>]
    #
    Filter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             Raised when an unexpected error occurred during request processing.
    #         </p>
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

    # <p>
    #             A throughput entry for an Elastic Inference Accelerator type.
    #         </p>
    #
    # @!attribute key
    #   <p>
    #               The throughput value of the Elastic Inference Accelerator type. It can assume the following values:
    #               TFLOPS16bit: the throughput expressed in 16bit TeraFLOPS.
    #               TFLOPS32bit: the throughput expressed in 32bit TeraFLOPS.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>
    #               The throughput value of the Elastic Inference Accelerator type.
    #           </p>
    #
    #   @return [Integer]
    #
    KeyValuePair = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.value ||= 0
      end

    end

    # @!attribute resource_arn
    #   <p>
    #               The ARN of the Elastic Inference Accelerator to list the tags for.
    #           </p>
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
    #               The tags of the Elastic Inference Accelerator.
    #           </p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LocationType
    #
    module LocationType
      # No documentation available.
      #
      region = "region"

      # No documentation available.
      #
      availability_zone = "availability-zone"

      # No documentation available.
      #
      availability_zone_id = "availability-zone-id"
    end

    # <p>
    #             The memory information of an Elastic Inference Accelerator type.
    #         </p>
    #
    # @!attribute size_in_mi_b
    #   <p>
    #               The size in mebibytes of the Elastic Inference Accelerator type.
    #           </p>
    #
    #   @return [Integer]
    #
    MemoryInfo = ::Struct.new(
      :size_in_mi_b,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.size_in_mi_b ||= 0
      end

    end

    # <p>
    #             Raised when the requested resource cannot be found.
    #         </p>
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

    # @!attribute resource_arn
    #   <p>
    #               The ARN of the Elastic Inference Accelerator to tag.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>
    #               The tags to add to the Elastic Inference Accelerator.
    #           </p>
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
    #   <p>
    #               The ARN of the Elastic Inference Accelerator to untag.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>
    #               The list of tags to remove from the Elastic Inference Accelerator.
    #           </p>
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

  end
end
