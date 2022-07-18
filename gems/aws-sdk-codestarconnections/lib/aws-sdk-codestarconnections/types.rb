# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodeStarConnections
  module Types

    # <p>Two conflicting operations have been made on the same resource.</p>
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

    # <p>A resource that is used to connect third-party source providers with services like AWS CodePipeline.</p>
    #          <p>Note: A connection created through CloudFormation, the CLI, or the SDK is in `PENDING` status by default. You can make its status `AVAILABLE` by updating the
    #       connection in the console.</p>
    #
    # @!attribute connection_name
    #   <p>The name of the connection. Connection names must be unique in an AWS user account.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_arn
    #   <p>The Amazon Resource Name (ARN) of the connection. The ARN is used as the connection
    #         reference when the connection is shared between AWS services.</p>
    #            <note>
    #               <p>The ARN is never reused if the connection is deleted.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute provider_type
    #   <p>The name of the external provider where your third-party code repository is
    #         configured.</p>
    #
    #   Enum, one of: ["Bitbucket", "GitHub", "GitHubEnterpriseServer"]
    #
    #   @return [String]
    #
    # @!attribute owner_account_id
    #   <p>The identifier of the external provider where your third-party code repository is configured.
    #         For Bitbucket, this is the account ID of the owner of the Bitbucket repository.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_status
    #   <p>The current status of the connection. </p>
    #
    #   Enum, one of: ["PENDING", "AVAILABLE", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute host_arn
    #   <p>The Amazon Resource Name (ARN) of the host associated with the connection.</p>
    #
    #   @return [String]
    #
    Connection = ::Struct.new(
      :connection_name,
      :connection_arn,
      :provider_type,
      :owner_account_id,
      :connection_status,
      :host_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConnectionStatus
    #
    module ConnectionStatus
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      AVAILABLE = "AVAILABLE"

      # No documentation available.
      #
      ERROR = "ERROR"
    end

    # @!attribute provider_type
    #   <p>The name of the external provider where your third-party code repository is
    #         configured.</p>
    #
    #   Enum, one of: ["Bitbucket", "GitHub", "GitHubEnterpriseServer"]
    #
    #   @return [String]
    #
    # @!attribute connection_name
    #   <p>The name of the connection to be created. The name must be unique in the calling AWS
    #         account.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The key-value pair to use when tagging the resource.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute host_arn
    #   <p>The Amazon Resource Name (ARN) of the host associated with the connection to be created.</p>
    #
    #   @return [String]
    #
    CreateConnectionInput = ::Struct.new(
      :provider_type,
      :connection_name,
      :tags,
      :host_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connection_arn
    #   <p>The Amazon Resource Name (ARN) of the connection to be created. The ARN is used as the
    #         connection reference when the connection is shared between AWS services.</p>
    #            <note>
    #               <p>The ARN is never reused if the connection is deleted.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Specifies the tags applied to the resource.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateConnectionOutput = ::Struct.new(
      :connection_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the host to be created. The name must be unique in the calling AWS
    #         account.</p>
    #
    #   @return [String]
    #
    # @!attribute provider_type
    #   <p>The name of the installed provider to be associated with your connection. The host
    #         resource represents the infrastructure where your provider type is installed. The valid
    #         provider type is GitHub Enterprise Server.</p>
    #
    #   Enum, one of: ["Bitbucket", "GitHub", "GitHubEnterpriseServer"]
    #
    #   @return [String]
    #
    # @!attribute provider_endpoint
    #   <p>The endpoint of the infrastructure to be represented by the host after it is
    #         created.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_configuration
    #   <p>The VPC configuration to be provisioned for the host. A VPC must be configured and the
    #         infrastructure to be represented by the host must already be connected to the VPC.</p>
    #
    #   @return [VpcConfiguration]
    #
    # @!attribute tags
    #
    #   @return [Array<Tag>]
    #
    CreateHostInput = ::Struct.new(
      :name,
      :provider_type,
      :provider_endpoint,
      :vpc_configuration,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute host_arn
    #   <p>The Amazon Resource Name (ARN) of the host to be created.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #
    #   @return [Array<Tag>]
    #
    CreateHostOutput = ::Struct.new(
      :host_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connection_arn
    #   <p>The Amazon Resource Name (ARN) of the connection to be deleted.</p>
    #            <note>
    #               <p>The ARN is never reused if the connection is deleted.</p>
    #            </note>
    #
    #   @return [String]
    #
    DeleteConnectionInput = ::Struct.new(
      :connection_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteConnectionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute host_arn
    #   <p>The Amazon Resource Name (ARN) of the host to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteHostInput = ::Struct.new(
      :host_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteHostOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connection_arn
    #   <p>The Amazon Resource Name (ARN) of a connection.</p>
    #
    #   @return [String]
    #
    GetConnectionInput = ::Struct.new(
      :connection_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connection
    #   <p>The connection details, such as status, owner, and provider type.</p>
    #
    #   @return [Connection]
    #
    GetConnectionOutput = ::Struct.new(
      :connection,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute host_arn
    #   <p>The Amazon Resource Name (ARN) of the requested host.</p>
    #
    #   @return [String]
    #
    GetHostInput = ::Struct.new(
      :host_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the requested host.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the requested host.</p>
    #
    #   @return [String]
    #
    # @!attribute provider_type
    #   <p>The provider type of the requested host, such as GitHub Enterprise Server.</p>
    #
    #   Enum, one of: ["Bitbucket", "GitHub", "GitHubEnterpriseServer"]
    #
    #   @return [String]
    #
    # @!attribute provider_endpoint
    #   <p>The endpoint of the infrastructure represented by the requested host.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_configuration
    #   <p>The VPC configuration of the requested host.</p>
    #
    #   @return [VpcConfiguration]
    #
    GetHostOutput = ::Struct.new(
      :name,
      :status,
      :provider_type,
      :provider_endpoint,
      :vpc_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A resource that represents the infrastructure where a third-party provider is installed.
    #       The host is used when you create connections to an installed third-party provider type, such
    #       as GitHub Enterprise Server. You create one host for all connections to that provider.</p>
    #          <note>
    #             <p>A host created through the CLI or the SDK is in `PENDING` status by
    #         default. You can make its status `AVAILABLE` by setting up the host in the console.</p>
    #          </note>
    #
    # @!attribute name
    #   <p>The name of the host.</p>
    #
    #   @return [String]
    #
    # @!attribute host_arn
    #   <p>The Amazon Resource Name (ARN) of the host.</p>
    #
    #   @return [String]
    #
    # @!attribute provider_type
    #   <p>The name of the installed provider to be associated with your connection. The host
    #         resource represents the infrastructure where your provider type is installed. The valid
    #         provider type is GitHub Enterprise Server.</p>
    #
    #   Enum, one of: ["Bitbucket", "GitHub", "GitHubEnterpriseServer"]
    #
    #   @return [String]
    #
    # @!attribute provider_endpoint
    #   <p>The endpoint of the infrastructure where your provider type is installed.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_configuration
    #   <p>The VPC configuration provisioned for the host.</p>
    #
    #   @return [VpcConfiguration]
    #
    # @!attribute status
    #   <p>The status of the host, such as PENDING, AVAILABLE, VPC_CONFIG_DELETING, VPC_CONFIG_INITIALIZING, and VPC_CONFIG_FAILED_INITIALIZATION.</p>
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>The status description for the host.</p>
    #
    #   @return [String]
    #
    Host = ::Struct.new(
      :name,
      :host_arn,
      :provider_type,
      :provider_endpoint,
      :vpc_configuration,
      :status,
      :status_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Exceeded the maximum limit for connections.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute provider_type_filter
    #   <p>Filters the list of connections to those associated with a specified provider, such as
    #         Bitbucket.</p>
    #
    #   Enum, one of: ["Bitbucket", "GitHub", "GitHubEnterpriseServer"]
    #
    #   @return [String]
    #
    # @!attribute host_arn_filter
    #   <p>Filters the list of connections to those associated with a specified host.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #         results, make another call with the returned <code>nextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token that was returned from the previous <code>ListConnections</code> call, which
    #         can be used to return the next set of connections in the list.</p>
    #
    #   @return [String]
    #
    ListConnectionsInput = ::Struct.new(
      :provider_type_filter,
      :host_arn_filter,
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

    # @!attribute connections
    #   <p>A list of connections and the details for each connection, such as status, owner, and
    #         provider type.</p>
    #
    #   @return [Array<Connection>]
    #
    # @!attribute next_token
    #   <p>A token that can be used in the next <code>ListConnections</code> call. To view all
    #         items in the list, continue to call this operation with each subsequent token until no more
    #         <code>nextToken</code> values are returned.</p>
    #
    #   @return [String]
    #
    ListConnectionsOutput = ::Struct.new(
      :connections,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #         results, make another call with the returned <code>nextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token that was returned from the previous <code>ListHosts</code> call, which can be
    #         used to return the next set of hosts in the list.</p>
    #
    #   @return [String]
    #
    ListHostsInput = ::Struct.new(
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

    # @!attribute hosts
    #   <p>A list of hosts and the details for each host, such as status, endpoint, and provider
    #         type.</p>
    #
    #   @return [Array<Host>]
    #
    # @!attribute next_token
    #   <p>A token that can be used in the next <code>ListHosts</code> call. To view all items in the
    #         list, continue to call this operation with each subsequent token until no more
    #         <code>nextToken</code> values are returned.</p>
    #
    #   @return [String]
    #
    ListHostsOutput = ::Struct.new(
      :hosts,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want to get information about tags, if any.</p>
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
    #   <p>A list of tag key and value pairs associated with the specified resource.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ProviderType
    #
    module ProviderType
      # No documentation available.
      #
      BITBUCKET = "Bitbucket"

      # No documentation available.
      #
      GITHUB = "GitHub"

      # No documentation available.
      #
      GITHUB_ENTERPRISE_SERVER = "GitHubEnterpriseServer"
    end

    # <p>Resource not found. Verify the connection resource ARN and try again.</p>
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

    # <p>Resource not found. Verify the ARN for the host resource and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceUnavailableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A tag is a key-value pair that is used to manage the resource.</p>
    #          <p>This tag is available for use by AWS services that support tags.</p>
    #
    # @!attribute key
    #   <p>The tag's key.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The tag's value.</p>
    #
    #   @return [String]
    #
    Tag = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which you want to add or update tags.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags you want to modify or add to the resource.</p>
    #
    #   @return [Array<Tag>]
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

    # <p>The operation is not supported. Check the connection status and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnsupportedOperationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove tags from.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The list of keys for the tags to be removed from the resource.</p>
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

    # @!attribute host_arn
    #   <p>The Amazon Resource Name (ARN) of the host to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute provider_endpoint
    #   <p>The URL or endpoint of the host to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_configuration
    #   <p>The VPC configuration of the host to be updated. A VPC must be configured and the
    #         infrastructure to be represented by the host must already be connected to the VPC.</p>
    #
    #   @return [VpcConfiguration]
    #
    UpdateHostInput = ::Struct.new(
      :host_arn,
      :provider_endpoint,
      :vpc_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateHostOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The VPC configuration provisioned for the host.</p>
    #
    # @!attribute vpc_id
    #   <p>The ID of the Amazon VPC connected to the infrastructure where your provider type is
    #         installed.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_ids
    #   <p>The ID of the subnet or subnets associated with the Amazon VPC connected to the
    #         infrastructure where your provider type is installed.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_group_ids
    #   <p>The ID of the security group or security groups associated with the Amazon VPC connected
    #         to the infrastructure where your provider type is installed.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tls_certificate
    #   <p>The value of the Transport Layer Security (TLS) certificate associated with the infrastructure where your provider type is installed.</p>
    #
    #   @return [String]
    #
    VpcConfiguration = ::Struct.new(
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      :tls_certificate,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
