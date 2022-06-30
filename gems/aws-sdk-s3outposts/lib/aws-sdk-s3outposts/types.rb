# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::S3Outposts
  module Types

    # <p>Access was denied for this action.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There was a conflict with this action, and it could not be completed.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute outpost_id
    #   <p>The ID of the Outposts. </p>
    #
    #   @return [String]
    #
    # @!attribute subnet_id
    #   <p>The ID of the subnet in the selected VPC. The endpoint subnet must belong to the Outpost
    #               that has Amazon S3 on Outposts provisioned.</p>
    #
    #   @return [String]
    #
    # @!attribute security_group_id
    #   <p>The ID of the security group to use with the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute access_type
    #   <p>The type of access for the network connectivity for the Amazon S3 on Outposts endpoint. To use
    #               the Amazon Web Services VPC, choose <code>Private</code>. To use the endpoint with an on-premises
    #               network, choose <code>CustomerOwnedIp</code>.  If you choose
    #                   <code>CustomerOwnedIp</code>, you must also provide the customer-owned IP address
    #               pool (CoIP pool).</p>
    #           <note>
    #               <p>
    #                  <code>Private</code> is the default access type value.</p>
    #            </note>
    #
    #   Enum, one of: ["Private", "CustomerOwnedIp"]
    #
    #   @return [String]
    #
    # @!attribute customer_owned_ipv4_pool
    #   <p>The ID of the customer-owned IPv4 address pool (CoIP pool) for the endpoint. IP addresses
    #               are allocated from this pool for the endpoint.</p>
    #
    #   @return [String]
    #
    CreateEndpointInput = ::Struct.new(
      :outpost_id,
      :subnet_id,
      :security_group_id,
      :access_type,
      :customer_owned_ipv4_pool,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint.</p>
    #
    #   @return [String]
    #
    CreateEndpointOutput = ::Struct.new(
      :endpoint_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_id
    #   <p>The ID of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute outpost_id
    #   <p>The ID of the Outposts. </p>
    #
    #   @return [String]
    #
    DeleteEndpointInput = ::Struct.new(
      :endpoint_id,
      :outpost_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteEndpointOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Amazon S3 on Outposts Access Points simplify managing data access at scale for shared datasets in S3 on Outposts.
    #             S3 on Outposts uses endpoints to connect to Outposts buckets so that you can perform actions within your
    #                virtual private cloud (VPC). For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/WorkingWithS3Outposts.html">
    #         Accessing S3 on Outposts using VPC-only access points</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p>
    #
    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute outposts_id
    #   <p>The ID of the Outposts.</p>
    #
    #   @return [String]
    #
    # @!attribute cidr_block
    #   <p>The VPC CIDR committed by this endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the endpoint.</p>
    #
    #   Enum, one of: ["Pending", "Available", "Deleting"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The time the endpoint was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute network_interfaces
    #   <p>The network interface of the endpoint.</p>
    #
    #   @return [Array<NetworkInterface>]
    #
    # @!attribute vpc_id
    #   <p>The ID of the VPC used for the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_id
    #   <p>The ID of the subnet used for the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute security_group_id
    #   <p>The ID of the security group used for the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute access_type
    #   <p>The type of connectivity used to access the Amazon S3 on Outposts endpoint.</p>
    #
    #   Enum, one of: ["Private", "CustomerOwnedIp"]
    #
    #   @return [String]
    #
    # @!attribute customer_owned_ipv4_pool
    #   <p>The ID of the customer-owned IPv4 address pool used for the endpoint.</p>
    #
    #   @return [String]
    #
    Endpoint = ::Struct.new(
      :endpoint_arn,
      :outposts_id,
      :cidr_block,
      :status,
      :creation_time,
      :network_interfaces,
      :vpc_id,
      :subnet_id,
      :security_group_id,
      :access_type,
      :customer_owned_ipv4_pool,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EndpointAccessType
    #
    module EndpointAccessType
      # No documentation available.
      #
      PRIVATE = "Private"

      # No documentation available.
      #
      CUSTOMER_OWNED_IP = "CustomerOwnedIp"
    end

    # Includes enum constants for EndpointStatus
    #
    module EndpointStatus
      # No documentation available.
      #
      PENDING = "Pending"

      # No documentation available.
      #
      AVAILABLE = "Available"

      # No documentation available.
      #
      DELETING = "Deleting"
    end

    # <p>There was an exception with the internal server.</p>
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

    # @!attribute next_token
    #   <p>If a previous response from this operation included a <code>NextToken</code> value,
    #               provide that value here to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of endpoints that will be returned in the response.</p>
    #
    #   @return [Integer]
    #
    ListEndpointsInput = ::Struct.new(
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

    # @!attribute endpoints
    #   <p>The list of endpoints associated with the specified Outpost.</p>
    #
    #   @return [Array<Endpoint>]
    #
    # @!attribute next_token
    #   <p>If the number of endpoints associated with the specified Outpost exceeds <code>MaxResults</code>,
    #               you can include this value in subsequent calls to this operation to retrieve more results.</p>
    #
    #   @return [String]
    #
    ListEndpointsOutput = ::Struct.new(
      :endpoints,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If a previous response from this operation included a <code>NextToken</code> value, you
    #               can provide that value here to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of endpoints that will be returned in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute outpost_id
    #   <p>The ID of the Amazon Web Services Outpost.</p>
    #
    #   @return [String]
    #
    ListSharedEndpointsInput = ::Struct.new(
      :next_token,
      :max_results,
      :outpost_id,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute endpoints
    #   <p>The list of endpoints associated with the specified Outpost that have been shared by Amazon Web Services Resource Access Manager (RAM).</p>
    #
    #   @return [Array<Endpoint>]
    #
    # @!attribute next_token
    #   <p>If the number of endpoints associated with the specified Outpost exceeds <code>MaxResults</code>,
    #               you can include this value in subsequent calls to this operation to retrieve more results.</p>
    #
    #   @return [String]
    #
    ListSharedEndpointsOutput = ::Struct.new(
      :endpoints,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The container for the network interface.</p>
    #
    # @!attribute network_interface_id
    #   <p>The ID for the network interface.</p>
    #
    #   @return [String]
    #
    NetworkInterface = ::Struct.new(
      :network_interface_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested resource was not found.</p>
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

    # <p>There was an exception validating this data.</p>
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
