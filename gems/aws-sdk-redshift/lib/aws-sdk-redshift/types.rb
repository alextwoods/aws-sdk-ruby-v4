# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Redshift
  module Types

    # @!attribute reserved_node_id
    #   <p>A string representing the node identifier of the DC1 Reserved Node to be
    #               exchanged.</p>
    #
    #   @return [String]
    #
    # @!attribute target_reserved_node_offering_id
    #   <p>The unique identifier of the DC2 Reserved Node offering to be used for the exchange.
    #               You can obtain the value for the parameter by calling <a>GetReservedNodeExchangeOfferings</a>
    #            </p>
    #
    #   @return [String]
    #
    AcceptReservedNodeExchangeInput = ::Struct.new(
      :reserved_node_id,
      :target_reserved_node_offering_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute exchanged_reserved_node
    #   <p></p>
    #
    #   @return [ReservedNode]
    #
    AcceptReservedNodeExchangeOutput = ::Struct.new(
      :exchanged_reserved_node,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You are not authorized to access the cluster.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccessToClusterDeniedFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The owner of the specified snapshot has not authorized your account to access the
    #             snapshot.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccessToSnapshotDeniedFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A name value pair that describes an aspect of an account. </p>
    #
    # @!attribute attribute_name
    #   <p>The name of the attribute.</p>
    #
    #   @return [String]
    #
    # @!attribute attribute_values
    #   <p>A list of attribute values.</p>
    #
    #   @return [Array<AttributeValueTarget>]
    #
    AccountAttribute = ::Struct.new(
      :attribute_name,
      :attribute_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an Amazon Web Services account authorized to restore a snapshot.</p>
    #
    # @!attribute account_id
    #   <p>The identifier of an Amazon Web Services account authorized to restore a
    #               snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute account_alias
    #   <p>The identifier of an Amazon Web Services support account authorized to restore a
    #               snapshot. For Amazon Web Services Support, the identifier is <code>amazon-redshift-support</code>. </p>
    #
    #   @return [String]
    #
    AccountWithRestoreAccess = ::Struct.new(
      :account_id,
      :account_alias,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ActionType
    #
    module ActionType
      # No documentation available.
      #
      RESTORE_CLUSTER = "restore-cluster"

      # No documentation available.
      #
      RECOMMEND_NODE_CONFIG = "recommend-node-config"

      # No documentation available.
      #
      RESIZE_CLUSTER = "resize-cluster"
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID that owns the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_identifier
    #   <p>The cluster identifier of the cluster that receives data from the partner.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the database that receives data from the partner.</p>
    #
    #   @return [String]
    #
    # @!attribute partner_name
    #   <p>The name of the partner that is authorized to send data.</p>
    #
    #   @return [String]
    #
    AddPartnerInput = ::Struct.new(
      :account_id,
      :cluster_identifier,
      :database_name,
      :partner_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute database_name
    #   <p>The name of the database that receives data from the partner.</p>
    #
    #   @return [String]
    #
    # @!attribute partner_name
    #   <p>The name of the partner that is authorized to send data.</p>
    #
    #   @return [String]
    #
    AddPartnerOutput = ::Struct.new(
      :database_name,
      :partner_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The AQUA (Advanced Query Accelerator) configuration of the cluster.</p>
    #
    # @!attribute aqua_status
    #   <p>The value indicates the status of AQUA on the cluster. Possible values include the following.</p>
    #           <ul>
    #               <li>
    #                  <p>enabled - AQUA is enabled.</p>
    #               </li>
    #               <li>
    #                  <p>disabled - AQUA is not enabled. </p>
    #               </li>
    #               <li>
    #                  <p>applying - AQUA status is being applied. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["enabled", "disabled", "applying"]
    #
    #   @return [String]
    #
    # @!attribute aqua_configuration_status
    #   <p>The value represents how the cluster is configured to use AQUA. Possible values include the following.</p>
    #           <ul>
    #               <li>
    #                  <p>enabled - Use AQUA if it is available for the current Amazon Web Services Region and Amazon Redshift node type.</p>
    #               </li>
    #               <li>
    #                  <p>disabled - Don't use AQUA. </p>
    #               </li>
    #               <li>
    #                  <p>auto - Amazon Redshift determines whether to use AQUA.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["enabled", "disabled", "auto"]
    #
    #   @return [String]
    #
    AquaConfiguration = ::Struct.new(
      :aqua_status,
      :aqua_configuration_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AquaConfigurationStatus
    #
    module AquaConfigurationStatus
      # No documentation available.
      #
      ENABLED = "enabled"

      # No documentation available.
      #
      DISABLED = "disabled"

      # No documentation available.
      #
      AUTO = "auto"
    end

    # Includes enum constants for AquaStatus
    #
    module AquaStatus
      # No documentation available.
      #
      ENABLED = "enabled"

      # No documentation available.
      #
      DISABLED = "disabled"

      # No documentation available.
      #
      APPLYING = "applying"
    end

    # @!attribute data_share_arn
    #   <p>The Amazon Resource Name (ARN) of the datashare that the consumer is to use with the account or the namespace.</p>
    #
    #   @return [String]
    #
    # @!attribute associate_entire_account
    #   <p>A value that specifies whether the datashare is associated with the entire account.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute consumer_arn
    #   <p>The Amazon Resource Name (ARN) of the consumer that is associated with the
    #               datashare.</p>
    #
    #   @return [String]
    #
    # @!attribute consumer_region
    #   <p>From a datashare consumer account, associates a datashare with all existing and future namespaces in the specified Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    AssociateDataShareConsumerInput = ::Struct.new(
      :data_share_arn,
      :associate_entire_account,
      :consumer_arn,
      :consumer_region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_share_arn
    #   <p>An Amazon Resource Name (ARN) that references the datashare that is owned by a specific namespace of the producer cluster. A datashare ARN is in the <code>arn:aws:redshift:{region}:{account-id}:{datashare}:{namespace-guid}/{datashare-name}</code> format.</p>
    #
    #   @return [String]
    #
    # @!attribute producer_arn
    #   <p>The Amazon Resource Name (ARN) of the producer.</p>
    #
    #   @return [String]
    #
    # @!attribute allow_publicly_accessible_consumers
    #   <p>A value that specifies whether the datashare can be shared to a publicly accessible  cluster.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute data_share_associations
    #   <p>A value that specifies when the datashare has an association between producer and data
    #               consumers.</p>
    #
    #   @return [Array<DataShareAssociation>]
    #
    # @!attribute managed_by
    #   <p>The identifier of a datashare to show its managing entity.</p>
    #
    #   @return [String]
    #
    AssociateDataShareConsumerOutput = ::Struct.new(
      :data_share_arn,
      :producer_arn,
      :allow_publicly_accessible_consumers,
      :data_share_associations,
      :managed_by,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.allow_publicly_accessible_consumers ||= false
      end
    end

    # <p>Describes an attribute value.</p>
    #
    # @!attribute attribute_value
    #   <p>The value of the attribute.</p>
    #
    #   @return [String]
    #
    AttributeValueTarget = ::Struct.new(
      :attribute_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an authentication profile.</p>
    #
    # @!attribute authentication_profile_name
    #   <p>The name of the authentication profile.</p>
    #
    #   @return [String]
    #
    # @!attribute authentication_profile_content
    #   <p>The content of the authentication profile in JSON format.
    #               The maximum length of the JSON string is determined by a quota for your account.</p>
    #
    #   @return [String]
    #
    AuthenticationProfile = ::Struct.new(
      :authentication_profile_name,
      :authentication_profile_content,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The authentication profile already exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AuthenticationProfileAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The authentication profile can't be found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AuthenticationProfileNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The size or number of authentication profiles has exceeded the quota.
    #             The maximum length of the JSON string and maximum number of authentication profiles is determined by a quota for your account.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AuthenticationProfileQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified CIDR block or EC2 security group is already authorized for the
    #             specified cluster security group.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AuthorizationAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified CIDR IP range or EC2 security group is not authorized for the
    #             specified cluster security group.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AuthorizationNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The authorization quota for the cluster security group has been reached.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AuthorizationQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AuthorizationStatus
    #
    module AuthorizationStatus
      # No documentation available.
      #
      AUTHORIZED = "Authorized"

      # No documentation available.
      #
      REVOKING = "Revoking"
    end

    # <p></p>
    #
    # @!attribute cluster_security_group_name
    #   <p>The name of the security group to which the ingress rule is added.</p>
    #
    #   @return [String]
    #
    # @!attribute cidrip
    #   <p>The IP range to be added the Amazon Redshift security group.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_security_group_name
    #   <p>The EC2 security group to be added the Amazon Redshift security group.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_security_group_owner_id
    #   <p>The Amazon Web Services account number of the owner of the security group specified by the
    #               <i>EC2SecurityGroupName</i> parameter. The Amazon Web Services Access Key ID is not an
    #               acceptable value. </p>
    #           <p>Example: <code>111122223333</code>
    #           </p>
    #
    #   @return [String]
    #
    AuthorizeClusterSecurityGroupIngressInput = ::Struct.new(
      :cluster_security_group_name,
      :cidrip,
      :ec2_security_group_name,
      :ec2_security_group_owner_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_security_group
    #   <p>Describes a security group.</p>
    #
    #   @return [ClusterSecurityGroup]
    #
    AuthorizeClusterSecurityGroupIngressOutput = ::Struct.new(
      :cluster_security_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_share_arn
    #   <p>The Amazon Resource Name (ARN) of the datashare that producers are to authorize
    #               sharing for.</p>
    #
    #   @return [String]
    #
    # @!attribute consumer_identifier
    #   <p>The identifier of the data consumer that is authorized to access the datashare. This identifier is an Amazon Web Services account ID or a keyword, such as ADX.</p>
    #
    #   @return [String]
    #
    AuthorizeDataShareInput = ::Struct.new(
      :data_share_arn,
      :consumer_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_share_arn
    #   <p>An Amazon Resource Name (ARN) that references the datashare that is owned by a specific namespace of the producer cluster. A datashare ARN is in the <code>arn:aws:redshift:{region}:{account-id}:{datashare}:{namespace-guid}/{datashare-name}</code> format.</p>
    #
    #   @return [String]
    #
    # @!attribute producer_arn
    #   <p>The Amazon Resource Name (ARN) of the producer.</p>
    #
    #   @return [String]
    #
    # @!attribute allow_publicly_accessible_consumers
    #   <p>A value that specifies whether the datashare can be shared to a publicly accessible  cluster.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute data_share_associations
    #   <p>A value that specifies when the datashare has an association between producer and data
    #               consumers.</p>
    #
    #   @return [Array<DataShareAssociation>]
    #
    # @!attribute managed_by
    #   <p>The identifier of a datashare to show its managing entity.</p>
    #
    #   @return [String]
    #
    AuthorizeDataShareOutput = ::Struct.new(
      :data_share_arn,
      :producer_arn,
      :allow_publicly_accessible_consumers,
      :data_share_associations,
      :managed_by,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.allow_publicly_accessible_consumers ||= false
      end
    end

    # @!attribute cluster_identifier
    #   <p>The cluster identifier of the cluster to grant access to.</p>
    #
    #   @return [String]
    #
    # @!attribute account
    #   <p>The Amazon Web Services account ID to grant access to.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_ids
    #   <p>The virtual private cloud (VPC) identifiers to grant access to.</p>
    #
    #   @return [Array<String>]
    #
    AuthorizeEndpointAccessInput = ::Struct.new(
      :cluster_identifier,
      :account,
      :vpc_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an endpoint authorization for authorizing Redshift-managed VPC endpoint access to a cluster across Amazon Web Services accounts.</p>
    #
    # @!attribute grantor
    #   <p>The Amazon Web Services account ID of the cluster owner.</p>
    #
    #   @return [String]
    #
    # @!attribute grantee
    #   <p>The Amazon Web Services account ID of the grantee of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_identifier
    #   <p>The cluster identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute authorize_time
    #   <p>The time (UTC) when the authorization was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute cluster_status
    #   <p>The status of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the authorization action.</p>
    #
    #   Enum, one of: ["Authorized", "Revoking"]
    #
    #   @return [String]
    #
    # @!attribute allowed_all_vp_cs
    #   <p>Indicates whether all VPCs in the grantee account are allowed access to the cluster.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute allowed_vp_cs
    #   <p>The VPCs allowed access to the cluster.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute endpoint_count
    #   <p>The number of Redshift-managed VPC endpoints created for the authorization.</p>
    #
    #   @return [Integer]
    #
    AuthorizeEndpointAccessOutput = ::Struct.new(
      :grantor,
      :grantee,
      :cluster_identifier,
      :authorize_time,
      :cluster_status,
      :status,
      :allowed_all_vp_cs,
      :allowed_vp_cs,
      :endpoint_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.allowed_all_vp_cs ||= false
        self.endpoint_count ||= 0
      end
    end

    # <p></p>
    #
    # @!attribute snapshot_identifier
    #   <p>The identifier of the snapshot the account is authorized to restore.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_cluster_identifier
    #   <p>The identifier of the cluster the snapshot was created from. This parameter is
    #               required if your IAM user has a policy containing a snapshot resource element that
    #               specifies anything other than * for the cluster name.</p>
    #
    #   @return [String]
    #
    # @!attribute account_with_restore_access
    #   <p>The identifier of the Amazon Web Services account authorized to restore the specified
    #               snapshot.</p>
    #           <p>To share a snapshot with Amazon Web Services Support, specify amazon-redshift-support.</p>
    #
    #   @return [String]
    #
    AuthorizeSnapshotAccessInput = ::Struct.new(
      :snapshot_identifier,
      :snapshot_cluster_identifier,
      :account_with_restore_access,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute snapshot
    #   <p>Describes a snapshot.</p>
    #
    #   @return [Snapshot]
    #
    AuthorizeSnapshotAccessOutput = ::Struct.new(
      :snapshot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an availability zone.</p>
    #
    # @!attribute name
    #   <p>The name of the availability zone.</p>
    #
    #   @return [String]
    #
    # @!attribute supported_platforms
    #   <p></p>
    #
    #   @return [Array<SupportedPlatform>]
    #
    AvailabilityZone = ::Struct.new(
      :name,
      :supported_platforms,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute identifiers
    #   <p>A list of identifiers for the snapshots that you want to delete.</p>
    #
    #   @return [Array<DeleteClusterSnapshotMessage>]
    #
    BatchDeleteClusterSnapshotsInput = ::Struct.new(
      :identifiers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resources
    #   <p>A list of the snapshot identifiers that were deleted. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute errors
    #   <p>A list of any errors returned.</p>
    #
    #   @return [Array<SnapshotErrorMessage>]
    #
    BatchDeleteClusterSnapshotsOutput = ::Struct.new(
      :resources,
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The maximum number for a batch delete of snapshots has been reached. The limit is
    #             100. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    BatchDeleteRequestSizeExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute snapshot_identifier_list
    #   <p>A list of snapshot identifiers you want to modify.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute manual_snapshot_retention_period
    #   <p>The number of days that a manual snapshot is retained. If you specify the value -1,
    #               the manual snapshot is retained indefinitely.</p>
    #           <p>The number must be either -1 or an integer between 1 and 3,653.</p>
    #           <p>If you decrease the manual snapshot retention period from its current value, existing
    #               manual snapshots that fall outside of the new retention period will return an error. If
    #               you want to suppress the errors and delete the snapshots, use the force option. </p>
    #
    #   @return [Integer]
    #
    # @!attribute force
    #   <p>A boolean value indicating whether to override an exception if the retention period
    #               has passed. </p>
    #
    #   @return [Boolean]
    #
    BatchModifyClusterSnapshotsInput = ::Struct.new(
      :snapshot_identifier_list,
      :manual_snapshot_retention_period,
      :force,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.force ||= false
      end
    end

    # <p>The maximum number for snapshot identifiers has been reached. The limit is 100.
    #         </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    BatchModifyClusterSnapshotsLimitExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resources
    #   <p>A list of the snapshots that were modified.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute errors
    #   <p>A list of any errors returned.</p>
    #
    #   @return [Array<SnapshotErrorMessage>]
    #
    BatchModifyClusterSnapshotsOutput = ::Struct.new(
      :resources,
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Could not find the specified S3 bucket.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    BucketNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_identifier
    #   <p>The unique identifier for the cluster that you want to cancel a resize operation
    #               for.</p>
    #
    #   @return [String]
    #
    CancelResizeInput = ::Struct.new(
      :cluster_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the result of a cluster resize operation.</p>
    #
    # @!attribute target_node_type
    #   <p>The node type that the cluster will have after the resize operation is
    #               complete.</p>
    #
    #   @return [String]
    #
    # @!attribute target_number_of_nodes
    #   <p>The number of nodes that the cluster will have after the resize operation is
    #               complete.</p>
    #
    #   @return [Integer]
    #
    # @!attribute target_cluster_type
    #   <p>The cluster type after the resize operation is complete.</p>
    #           <p>Valid Values: <code>multi-node</code> | <code>single-node</code>
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the resize operation.</p>
    #           <p>Valid Values: <code>NONE</code> | <code>IN_PROGRESS</code> | <code>FAILED</code> |
    #                   <code>SUCCEEDED</code> | <code>CANCELLING</code>
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute import_tables_completed
    #   <p>The names of tables that have been completely imported .</p>
    #           <p>Valid Values: List of table names.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute import_tables_in_progress
    #   <p>The names of tables that are being currently imported.</p>
    #           <p>Valid Values: List of table names.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute import_tables_not_started
    #   <p>The names of tables that have not been yet imported.</p>
    #           <p>Valid Values: List of table names</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute avg_resize_rate_in_mega_bytes_per_second
    #   <p>The average rate of the resize operation over the last few minutes, measured in
    #               megabytes per second. After the resize operation completes, this value shows the average
    #               rate of the entire resize operation.</p>
    #
    #   @return [Float]
    #
    # @!attribute total_resize_data_in_mega_bytes
    #   <p>The estimated total amount of data, in megabytes, on the cluster before the resize
    #               operation began.</p>
    #
    #   @return [Integer]
    #
    # @!attribute progress_in_mega_bytes
    #   <p>While the resize operation is in progress, this value shows the current amount of
    #               data, in megabytes, that has been processed so far. When the resize operation is
    #               complete, this value shows the total amount of data, in megabytes, on the cluster, which
    #               may be more or less than TotalResizeDataInMegaBytes (the estimated total amount of data
    #               before resize).</p>
    #
    #   @return [Integer]
    #
    # @!attribute elapsed_time_in_seconds
    #   <p>The amount of seconds that have elapsed since the resize operation began. After the
    #               resize operation completes, this value shows the total actual time, in seconds, for the
    #               resize operation.</p>
    #
    #   @return [Integer]
    #
    # @!attribute estimated_time_to_completion_in_seconds
    #   <p>The estimated time remaining, in seconds, until the resize operation is complete.
    #               This value is calculated based on the average resize rate and the estimated amount of
    #               data remaining to be processed. Once the resize operation is complete, this value will
    #               be 0.</p>
    #
    #   @return [Integer]
    #
    # @!attribute resize_type
    #   <p>An enum with possible values of <code>ClassicResize</code> and
    #                   <code>ElasticResize</code>. These values describe the type of resize operation being
    #               performed. </p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>An optional string to provide additional details about the resize action.</p>
    #
    #   @return [String]
    #
    # @!attribute target_encryption_type
    #   <p>The type of encryption for the cluster after the resize is complete.</p>
    #           <p>Possible values are <code>KMS</code> and <code>None</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute data_transfer_progress_percent
    #   <p>The percent of data transferred from source cluster to target cluster.</p>
    #
    #   @return [Float]
    #
    CancelResizeOutput = ::Struct.new(
      :target_node_type,
      :target_number_of_nodes,
      :target_cluster_type,
      :status,
      :import_tables_completed,
      :import_tables_in_progress,
      :import_tables_not_started,
      :avg_resize_rate_in_mega_bytes_per_second,
      :total_resize_data_in_mega_bytes,
      :progress_in_mega_bytes,
      :elapsed_time_in_seconds,
      :estimated_time_to_completion_in_seconds,
      :resize_type,
      :message,
      :target_encryption_type,
      :data_transfer_progress_percent,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a cluster.</p>
    #
    # @!attribute cluster_identifier
    #   <p>The unique identifier of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute node_type
    #   <p>The node type for the nodes in the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_status
    #   <p> The current state of the cluster. Possible values are the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>available</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>available, prep-for-resize</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>available, resize-cleanup</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>cancelling-resize</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>creating</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>deleting</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>final-snapshot</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>hardware-failure</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>incompatible-hsm</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>incompatible-network</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>incompatible-parameters</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>incompatible-restore</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>modifying</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>paused</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>rebooting</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>renaming</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>resizing</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>rotating-keys</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>storage-full</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>updating-hsm</code>
    #                   </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute cluster_availability_status
    #   <p>The availability status of the cluster for queries. Possible values are the following:</p>
    #           <ul>
    #               <li>
    #                  <p>Available - The cluster is available for queries. </p>
    #               </li>
    #               <li>
    #                  <p>Unavailable - The cluster is not available for queries.</p>
    #               </li>
    #               <li>
    #                  <p>Maintenance - The cluster is intermittently available for queries due to maintenance activities.</p>
    #               </li>
    #               <li>
    #                  <p>Modifying - The cluster is intermittently available for queries due to changes that modify the cluster.</p>
    #               </li>
    #               <li>
    #                  <p>Failed - The cluster failed and is not available for queries.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute modify_status
    #   <p>The status of a modify operation, if any, initiated for the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute master_username
    #   <p>The admin user name for the cluster. This name is used to connect to the database
    #               that is specified in the <b>DBName</b> parameter. </p>
    #
    #   @return [String]
    #
    # @!attribute db_name
    #   <p>The name of the initial database that was created when the cluster was created.
    #               This same name is returned for the life of the cluster. If an initial database was not
    #               specified, a database named <code>dev</code>dev was created by default. </p>
    #
    #   @return [String]
    #
    # @!attribute endpoint
    #   <p>The connection endpoint.</p>
    #
    #   @return [Endpoint]
    #
    # @!attribute cluster_create_time
    #   <p>The date and time that the cluster was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute automated_snapshot_retention_period
    #   <p>The number of days that automatic cluster snapshots are retained.</p>
    #
    #   @return [Integer]
    #
    # @!attribute manual_snapshot_retention_period
    #   <p>The default number of days to retain a manual snapshot. If the value is -1, the
    #               snapshot is retained indefinitely. This setting doesn't change the retention period
    #               of existing snapshots.</p>
    #           <p>The value must be either -1 or an integer between 1 and 3,653.</p>
    #
    #   @return [Integer]
    #
    # @!attribute cluster_security_groups
    #   <p>A list of cluster security group that are associated with the cluster. Each
    #               security group is represented by an element that contains
    #                   <code>ClusterSecurityGroup.Name</code> and <code>ClusterSecurityGroup.Status</code>
    #               subelements. </p>
    #           <p>Cluster security groups are used when the cluster is not created in an Amazon
    #               Virtual Private Cloud (VPC). Clusters that are created in a VPC use VPC security groups,
    #               which are listed by the <b>VpcSecurityGroups</b> parameter.
    #           </p>
    #
    #   @return [Array<ClusterSecurityGroupMembership>]
    #
    # @!attribute vpc_security_groups
    #   <p>A list of Amazon Virtual Private Cloud (Amazon VPC) security groups that are
    #               associated with the cluster. This parameter is returned only if the cluster is in a
    #               VPC.</p>
    #
    #   @return [Array<VpcSecurityGroupMembership>]
    #
    # @!attribute cluster_parameter_groups
    #   <p>The list of cluster parameter groups that are associated with this cluster. Each
    #               parameter group in the list is returned with its status.</p>
    #
    #   @return [Array<ClusterParameterGroupStatus>]
    #
    # @!attribute cluster_subnet_group_name
    #   <p>The name of the subnet group that is associated with the cluster. This parameter is
    #               valid only when the cluster is in a VPC.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The identifier of the VPC the cluster is in, if the cluster is in a VPC.</p>
    #
    #   @return [String]
    #
    # @!attribute availability_zone
    #   <p>The name of the Availability Zone in which the cluster is located.</p>
    #
    #   @return [String]
    #
    # @!attribute preferred_maintenance_window
    #   <p>The weekly time range, in Universal Coordinated Time (UTC), during which system
    #               maintenance can occur.</p>
    #
    #   @return [String]
    #
    # @!attribute pending_modified_values
    #   <p>A value that, if present, indicates that changes to the cluster are pending.
    #               Specific pending changes are identified by subelements.</p>
    #
    #   @return [PendingModifiedValues]
    #
    # @!attribute cluster_version
    #   <p>The version ID of the Amazon Redshift engine that is running on the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute allow_version_upgrade
    #   <p>A boolean value that, if <code>true</code>, indicates that major version upgrades
    #               will be applied automatically to the cluster during the maintenance window. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute number_of_nodes
    #   <p>The number of compute nodes in the cluster.</p>
    #
    #   @return [Integer]
    #
    # @!attribute publicly_accessible
    #   <p>A boolean value that, if <code>true</code>, indicates that the cluster can be
    #               accessed from a public network.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute encrypted
    #   <p>A boolean value that, if <code>true</code>, indicates that data in the cluster is
    #               encrypted at rest.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute restore_status
    #   <p>A value that describes the status of a cluster restore action. This parameter
    #               returns null if the cluster was not created by restoring a snapshot.</p>
    #
    #   @return [RestoreStatus]
    #
    # @!attribute data_transfer_progress
    #   <p></p>
    #
    #   @return [DataTransferProgress]
    #
    # @!attribute hsm_status
    #   <p>A value that reports whether the Amazon Redshift cluster has finished applying any
    #               hardware security module (HSM) settings changes specified in a modify cluster
    #               command.</p>
    #           <p>Values: active, applying</p>
    #
    #   @return [HsmStatus]
    #
    # @!attribute cluster_snapshot_copy_status
    #   <p>A value that returns the destination region and retention period that are
    #               configured for cross-region snapshot copy.</p>
    #
    #   @return [ClusterSnapshotCopyStatus]
    #
    # @!attribute cluster_public_key
    #   <p>The public key for the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_nodes
    #   <p>The nodes in the cluster.</p>
    #
    #   @return [Array<ClusterNode>]
    #
    # @!attribute elastic_ip_status
    #   <p>The status of the elastic IP (EIP) address.</p>
    #
    #   @return [ElasticIpStatus]
    #
    # @!attribute cluster_revision_number
    #   <p>The specific revision number of the database in the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The list of tags for the cluster.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute kms_key_id
    #   <p>The Key Management Service (KMS) key ID of the encryption key used to
    #               encrypt data in the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute enhanced_vpc_routing
    #   <p>An option that specifies whether to create the cluster with enhanced VPC routing
    #               enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a
    #               VPC. For more information, see <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html">Enhanced VPC Routing</a> in
    #               the Amazon Redshift Cluster Management Guide.</p>
    #           <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p>
    #           <p>Default: false</p>
    #
    #   @return [Boolean]
    #
    # @!attribute iam_roles
    #   <p>A list of Identity and Access Management (IAM) roles that can be used by the
    #               cluster to access other Amazon Web Services services.</p>
    #
    #   @return [Array<ClusterIamRole>]
    #
    # @!attribute pending_actions
    #   <p>Cluster operations that are waiting to be started.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute maintenance_track_name
    #   <p>The name of the maintenance track for the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute elastic_resize_number_of_node_options
    #   <p>The number of nodes that you can resize the cluster to with the elastic resize method.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute deferred_maintenance_windows
    #   <p>Describes a group of <code>DeferredMaintenanceWindow</code> objects.</p>
    #
    #   @return [Array<DeferredMaintenanceWindow>]
    #
    # @!attribute snapshot_schedule_identifier
    #   <p>A unique identifier for the cluster snapshot schedule.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_schedule_state
    #   <p>The current state of the cluster snapshot schedule.</p>
    #
    #   Enum, one of: ["MODIFYING", "ACTIVE", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute expected_next_snapshot_schedule_time
    #   <p>The date and time when the next snapshot is expected to be taken for clusters with a valid snapshot schedule and backups enabled. </p>
    #
    #   @return [Time]
    #
    # @!attribute expected_next_snapshot_schedule_time_status
    #   <p> The status of next expected snapshot for clusters having a valid snapshot schedule and backups enabled.  Possible values are the following:</p>
    #           <ul>
    #               <li>
    #                  <p>OnTrack - The next snapshot is expected to be taken on time. </p>
    #               </li>
    #               <li>
    #                  <p>Pending - The next snapshot is pending to be taken. </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute next_maintenance_window_start_time
    #   <p>The date and time in UTC when system maintenance can begin.</p>
    #
    #   @return [Time]
    #
    # @!attribute resize_info
    #   <p>Returns the following:</p>
    #           <ul>
    #               <li>
    #                   <p>AllowCancelResize: a boolean value indicating if the resize operation can be
    #                       cancelled.</p>
    #               </li>
    #               <li>
    #                   <p>ResizeType: Returns ClassicResize</p>
    #               </li>
    #            </ul>
    #
    #   @return [ResizeInfo]
    #
    # @!attribute availability_zone_relocation_status
    #   <p>Describes the status of the Availability Zone relocation operation.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_namespace_arn
    #   <p>The namespace Amazon Resource Name (ARN) of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute total_storage_capacity_in_mega_bytes
    #   <p>The total storage capacity of the cluster in megabytes. </p>
    #
    #   @return [Integer]
    #
    # @!attribute aqua_configuration
    #   <p>The AQUA (Advanced Query Accelerator) configuration of the cluster.</p>
    #
    #   @return [AquaConfiguration]
    #
    # @!attribute default_iam_role_arn
    #   <p>The Amazon Resource Name (ARN) for the IAM role set as default for the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute reserved_node_exchange_status
    #   <p>The status of the reserved-node exchange request. Statuses include in-progress and requested.</p>
    #
    #   @return [ReservedNodeExchangeStatus]
    #
    Cluster = ::Struct.new(
      :cluster_identifier,
      :node_type,
      :cluster_status,
      :cluster_availability_status,
      :modify_status,
      :master_username,
      :db_name,
      :endpoint,
      :cluster_create_time,
      :automated_snapshot_retention_period,
      :manual_snapshot_retention_period,
      :cluster_security_groups,
      :vpc_security_groups,
      :cluster_parameter_groups,
      :cluster_subnet_group_name,
      :vpc_id,
      :availability_zone,
      :preferred_maintenance_window,
      :pending_modified_values,
      :cluster_version,
      :allow_version_upgrade,
      :number_of_nodes,
      :publicly_accessible,
      :encrypted,
      :restore_status,
      :data_transfer_progress,
      :hsm_status,
      :cluster_snapshot_copy_status,
      :cluster_public_key,
      :cluster_nodes,
      :elastic_ip_status,
      :cluster_revision_number,
      :tags,
      :kms_key_id,
      :enhanced_vpc_routing,
      :iam_roles,
      :pending_actions,
      :maintenance_track_name,
      :elastic_resize_number_of_node_options,
      :deferred_maintenance_windows,
      :snapshot_schedule_identifier,
      :snapshot_schedule_state,
      :expected_next_snapshot_schedule_time,
      :expected_next_snapshot_schedule_time_status,
      :next_maintenance_window_start_time,
      :resize_info,
      :availability_zone_relocation_status,
      :cluster_namespace_arn,
      :total_storage_capacity_in_mega_bytes,
      :aqua_configuration,
      :default_iam_role_arn,
      :reserved_node_exchange_status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.automated_snapshot_retention_period ||= 0
        self.manual_snapshot_retention_period ||= 0
        self.allow_version_upgrade ||= false
        self.number_of_nodes ||= 0
        self.publicly_accessible ||= false
        self.encrypted ||= false
        self.enhanced_vpc_routing ||= false
      end
    end

    # <p>The account already has a cluster with the given identifier.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ClusterAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute cluster_identifier
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute schedule_association_state
    #   <p></p>
    #
    #   Enum, one of: ["MODIFYING", "ACTIVE", "FAILED"]
    #
    #   @return [String]
    #
    ClusterAssociatedToSchedule = ::Struct.new(
      :cluster_identifier,
      :schedule_association_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a <code>ClusterDbRevision</code>.</p>
    #
    # @!attribute cluster_identifier
    #   <p>The unique identifier of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute current_database_revision
    #   <p>A string representing the current cluster version.</p>
    #
    #   @return [String]
    #
    # @!attribute database_revision_release_date
    #   <p>The date on which the database revision was released.</p>
    #
    #   @return [Time]
    #
    # @!attribute revision_targets
    #   <p>A list of <code>RevisionTarget</code> objects, where each object describes the
    #               database revision that a cluster can be updated to.</p>
    #
    #   @return [Array<RevisionTarget>]
    #
    ClusterDbRevision = ::Struct.new(
      :cluster_identifier,
      :current_database_revision,
      :database_revision_release_date,
      :revision_targets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An Identity and Access Management (IAM) role that can be used by the associated
    #             Amazon Redshift cluster to access other Amazon Web Services services.</p>
    #
    # @!attribute iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role, for example,
    #                   <code>arn:aws:iam::123456789012:role/RedshiftCopyUnload</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute apply_status
    #   <p>A value that describes the status of the IAM role's association with an Amazon
    #               Redshift cluster.</p>
    #           <p>The following are possible statuses and descriptions.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>in-sync</code>: The role is available for use by the cluster.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>adding</code>: The role is in the process of being associated with the
    #                       cluster.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>removing</code>: The role is in the process of being disassociated with
    #                       the cluster.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    ClusterIamRole = ::Struct.new(
      :iam_role_arn,
      :apply_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The identifier of a node in a cluster.</p>
    #
    # @!attribute node_role
    #   <p>Whether the node is a leader node or a compute node.</p>
    #
    #   @return [String]
    #
    # @!attribute private_ip_address
    #   <p>The private IP address of a node within a cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute public_ip_address
    #   <p>The public IP address of a node within a cluster.</p>
    #
    #   @return [String]
    #
    ClusterNode = ::Struct.new(
      :node_role,
      :private_ip_address,
      :public_ip_address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The <code>ClusterIdentifier</code> parameter does not refer to an existing cluster.
    #         </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ClusterNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Cluster is already on the latest database revision.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ClusterOnLatestRevisionFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a parameter group.</p>
    #
    # @!attribute parameter_group_name
    #   <p>The name of the cluster parameter group.</p>
    #
    #   @return [String]
    #
    # @!attribute parameter_group_family
    #   <p>The name of the cluster parameter group family that this cluster parameter group is
    #               compatible with.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the parameter group.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The list of tags for the cluster parameter group.</p>
    #
    #   @return [Array<Tag>]
    #
    ClusterParameterGroup = ::Struct.new(
      :parameter_group_name,
      :parameter_group_family,
      :description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A cluster parameter group with the same name already exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ClusterParameterGroupAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The parameter group name does not refer to an existing parameter group.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ClusterParameterGroupNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request would result in the user exceeding the allowed number of cluster
    #             parameter groups.
    # For information about increasing your quota, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a>
    # in the <i>Amazon Redshift Cluster Management Guide</i>.
    # </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ClusterParameterGroupQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the status of a parameter group.</p>
    #
    # @!attribute parameter_group_name
    #   <p>The name of the cluster parameter group.</p>
    #
    #   @return [String]
    #
    # @!attribute parameter_apply_status
    #   <p>The status of parameter updates.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_parameter_status_list
    #   <p>The list of parameter statuses.</p>
    #           <p>
    #   For more information about parameters and parameter groups, go to
    #   <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Amazon Redshift Parameter Groups</a>
    #   in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #
    #   @return [Array<ClusterParameterStatus>]
    #
    ClusterParameterGroupStatus = ::Struct.new(
      :parameter_group_name,
      :parameter_apply_status,
      :cluster_parameter_status_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the status of a parameter group.</p>
    #
    # @!attribute parameter_name
    #   <p>The name of the parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute parameter_apply_status
    #   <p>The status of the parameter that indicates whether the parameter is in sync with
    #               the database, waiting for a cluster reboot, or encountered an error when being
    #               applied.</p>
    #           <p>The following are possible statuses and descriptions.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>in-sync</code>: The parameter value is in sync with the
    #                       database.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>pending-reboot</code>: The parameter value will be applied after the
    #                       cluster reboots.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>applying</code>: The parameter value is being applied to the
    #                       database.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>invalid-parameter</code>: Cannot apply the parameter value because it has
    #                       an invalid value or syntax.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>apply-deferred</code>: The parameter contains static property changes. The
    #                       changes are deferred until the cluster reboots.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>apply-error</code>: Cannot connect to the cluster. The parameter change
    #                       will be applied after the cluster reboots.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>unknown-error</code>: Cannot apply the parameter change right now. The
    #                       change will be applied after the cluster reboots.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute parameter_apply_error_description
    #   <p>The error that prevented the parameter from being applied to the
    #               database.</p>
    #
    #   @return [String]
    #
    ClusterParameterStatus = ::Struct.new(
      :parameter_name,
      :parameter_apply_status,
      :parameter_apply_error_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request would exceed the allowed number of cluster instances for this account.
    #
    # For information about increasing your quota, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a>
    # in the <i>Amazon Redshift Cluster Management Guide</i>.
    # </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ClusterQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a security group.</p>
    #
    # @!attribute cluster_security_group_name
    #   <p>The name of the cluster security group to which the operation was
    #               applied.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the security group.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_security_groups
    #   <p>A list of EC2 security groups that are permitted to access clusters associated with
    #               this cluster security group.</p>
    #
    #   @return [Array<EC2SecurityGroup>]
    #
    # @!attribute ip_ranges
    #   <p>A list of IP ranges (CIDR blocks) that are permitted to access clusters associated
    #               with this cluster security group.</p>
    #
    #   @return [Array<IPRange>]
    #
    # @!attribute tags
    #   <p>The list of tags for the cluster security group.</p>
    #
    #   @return [Array<Tag>]
    #
    ClusterSecurityGroup = ::Struct.new(
      :cluster_security_group_name,
      :description,
      :ec2_security_groups,
      :ip_ranges,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A cluster security group with the same name already exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ClusterSecurityGroupAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a cluster security group.</p>
    #
    # @!attribute cluster_security_group_name
    #   <p>The name of the cluster security group.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the cluster security group.</p>
    #
    #   @return [String]
    #
    ClusterSecurityGroupMembership = ::Struct.new(
      :cluster_security_group_name,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The cluster security group name does not refer to an existing cluster security
    #             group.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ClusterSecurityGroupNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request would result in the user exceeding the allowed number of cluster
    #             security groups.
    # For information about increasing your quota, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a>
    # in the <i>Amazon Redshift Cluster Management Guide</i>.
    # </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ClusterSecurityGroupQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The value specified as a snapshot identifier is already used by an existing
    #             snapshot.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ClusterSnapshotAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns the destination region and retention period that are configured for
    #             cross-region snapshot copy.</p>
    #
    # @!attribute destination_region
    #   <p>The destination region that snapshots are automatically copied to when cross-region
    #               snapshot copy is enabled.</p>
    #
    #   @return [String]
    #
    # @!attribute retention_period
    #   <p>The number of days that automated snapshots are retained in the destination region
    #               after they are copied from a source region.</p>
    #
    #   @return [Integer]
    #
    # @!attribute manual_snapshot_retention_period
    #   <p>The number of days that automated snapshots are retained in the destination region
    #               after they are copied from a source region. If the value is -1, the manual snapshot is
    #               retained indefinitely. </p>
    #           <p>The value must be either -1 or an integer between 1 and 3,653.</p>
    #
    #   @return [Integer]
    #
    # @!attribute snapshot_copy_grant_name
    #   <p>The name of the snapshot copy grant.</p>
    #
    #   @return [String]
    #
    ClusterSnapshotCopyStatus = ::Struct.new(
      :destination_region,
      :retention_period,
      :manual_snapshot_retention_period,
      :snapshot_copy_grant_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.retention_period ||= 0
        self.manual_snapshot_retention_period ||= 0
      end
    end

    # <p>The snapshot identifier does not refer to an existing cluster snapshot.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ClusterSnapshotNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request would result in the user exceeding the allowed number of cluster
    #             snapshots.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ClusterSnapshotQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a subnet group.</p>
    #
    # @!attribute cluster_subnet_group_name
    #   <p>The name of the cluster subnet group.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the cluster subnet group.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The VPC ID of the cluster subnet group.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_group_status
    #   <p>The status of the cluster subnet group. Possible values are <code>Complete</code>,
    #                   <code>Incomplete</code> and <code>Invalid</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute subnets
    #   <p>A list of the VPC <a>Subnet</a> elements. </p>
    #
    #   @return [Array<Subnet>]
    #
    # @!attribute tags
    #   <p>The list of tags for the cluster subnet group.</p>
    #
    #   @return [Array<Tag>]
    #
    ClusterSubnetGroup = ::Struct.new(
      :cluster_subnet_group_name,
      :description,
      :vpc_id,
      :subnet_group_status,
      :subnets,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A <i>ClusterSubnetGroupName</i> is already used by an existing
    #             cluster subnet group. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ClusterSubnetGroupAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The cluster subnet group name does not refer to an existing cluster subnet
    #             group.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ClusterSubnetGroupNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request would result in user exceeding the allowed number of cluster subnet
    #             groups.
    # For information about increasing your quota, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a>
    # in the <i>Amazon Redshift Cluster Management Guide</i>.
    # </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ClusterSubnetGroupQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request would result in user exceeding the allowed number of subnets in a
    #             cluster subnet groups.
    # For information about increasing your quota, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a>
    # in the <i>Amazon Redshift Cluster Management Guide</i>.
    # </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ClusterSubnetQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a cluster version, including the parameter group family and description
    #             of the version.</p>
    #
    # @!attribute cluster_version
    #   <p>The version number used by the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_parameter_group_family
    #   <p>The name of the cluster parameter group family for the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the cluster version.</p>
    #
    #   @return [String]
    #
    ClusterVersion = ::Struct.new(
      :cluster_version,
      :cluster_parameter_group_family,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute source_snapshot_identifier
    #   <p>The identifier for the source snapshot.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be the identifier for a valid automated snapshot whose state is
    #                           <code>available</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute source_snapshot_cluster_identifier
    #   <p>The identifier of the cluster the source snapshot was created from. This parameter
    #               is required if your IAM user has a policy containing a snapshot resource element that
    #               specifies anything other than * for the cluster name.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be the identifier for a valid cluster.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute target_snapshot_identifier
    #   <p>The identifier given to the new manual snapshot.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Cannot be null, empty, or blank.</p>
    #               </li>
    #               <li>
    #                   <p>Must contain from 1 to 255 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>Must be unique for the Amazon Web Services account that is making the request.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute manual_snapshot_retention_period
    #   <p>The number of days that a manual snapshot is retained. If the value is -1, the manual
    #               snapshot is retained indefinitely. </p>
    #           <p>The value must be either -1 or an integer between 1 and 3,653.</p>
    #           <p>The default value is -1.</p>
    #
    #   @return [Integer]
    #
    CopyClusterSnapshotInput = ::Struct.new(
      :source_snapshot_identifier,
      :source_snapshot_cluster_identifier,
      :target_snapshot_identifier,
      :manual_snapshot_retention_period,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute snapshot
    #   <p>Describes a snapshot.</p>
    #
    #   @return [Snapshot]
    #
    CopyClusterSnapshotOutput = ::Struct.new(
      :snapshot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Cross-region snapshot copy was temporarily disabled. Try your request
    #             again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    CopyToRegionDisabledFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_profile_name
    #   <p>The name of the authentication profile to be created.</p>
    #
    #   @return [String]
    #
    # @!attribute authentication_profile_content
    #   <p>The content of the authentication profile in JSON format.
    #               The maximum length of the JSON string is determined by a quota for your account.</p>
    #
    #   @return [String]
    #
    CreateAuthenticationProfileInput = ::Struct.new(
      :authentication_profile_name,
      :authentication_profile_content,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_profile_name
    #   <p>The name of the authentication profile that was created.</p>
    #
    #   @return [String]
    #
    # @!attribute authentication_profile_content
    #   <p>The content of the authentication profile in JSON format.</p>
    #
    #   @return [String]
    #
    CreateAuthenticationProfileOutput = ::Struct.new(
      :authentication_profile_name,
      :authentication_profile_content,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_name
    #   <p>The name of the first database to be created when the cluster is created.</p>
    #           <p>To create additional databases after the cluster is created, connect to the cluster
    #               with a SQL client and use SQL commands to create a database. For more information, go to
    #                   <a href="https://docs.aws.amazon.com/redshift/latest/dg/t_creating_database.html">Create
    #                   a Database</a> in the Amazon Redshift Database Developer Guide. </p>
    #           <p>Default: <code>dev</code>
    #           </p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain 1 to 64 alphanumeric characters.</p>
    #               </li>
    #               <li>
    #                   <p>Must contain only lowercase letters.</p>
    #               </li>
    #               <li>
    #                   <p>Cannot be a word that is reserved by the service. A list of reserved words
    #                       can be found in <a href="https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html">Reserved Words</a> in the
    #                       Amazon Redshift Database Developer Guide. </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute cluster_identifier
    #   <p>A unique identifier for the cluster. You use this identifier to refer to the
    #               cluster for any subsequent cluster operations such as deleting or modifying. The
    #               identifier also appears in the Amazon Redshift console.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>Alphabetic characters must be lowercase.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>Must be unique for all clusters within an Amazon Web Services account.</p>
    #               </li>
    #            </ul>
    #
    #               <p>Example: <code>myexamplecluster</code>
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute cluster_type
    #   <p>The type of the cluster. When cluster type is specified as</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>single-node</code>, the <b>NumberOfNodes</b>
    #                       parameter is not required.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>multi-node</code>, the <b>NumberOfNodes</b>
    #                       parameter is required.</p>
    #               </li>
    #            </ul>
    #           <p>Valid Values: <code>multi-node</code> | <code>single-node</code>
    #           </p>
    #           <p>Default: <code>multi-node</code>
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute node_type
    #   <p>The node type to be provisioned for the cluster. For information about node types,
    #               go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html how-many-nodes"> Working with
    #                   Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
    #           <p>Valid Values: <code>ds2.xlarge</code> | <code>ds2.8xlarge</code> |
    #                   <code>dc1.large</code> | <code>dc1.8xlarge</code> |
    #                   <code>dc2.large</code> | <code>dc2.8xlarge</code> |
    #                   <code>ra3.xlplus</code> |  <code>ra3.4xlarge</code> | <code>ra3.16xlarge</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute master_username
    #   <p>The user name associated with the admin user account for the cluster that is being
    #               created.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be 1 - 128 alphanumeric characters. The user name can't be
    #                           <code>PUBLIC</code>.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #
    #                   <p>Cannot be a reserved word. A list of reserved words can be found in <a href="https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html">Reserved
    #                           Words</a> in the Amazon Redshift Database Developer Guide. </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute master_user_password
    #   <p>The password associated with the admin user account for the cluster that is being
    #               created.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be between 8 and 64 characters in length.</p>
    #               </li>
    #               <li>
    #                   <p>Must contain at least one uppercase letter.</p>
    #               </li>
    #               <li>
    #                   <p>Must contain at least one lowercase letter.</p>
    #               </li>
    #               <li>
    #                   <p>Must contain one number.</p>
    #               </li>
    #               <li>
    #                   <p>Can be any printable ASCII character (ASCII code 33-126) except <code>'</code>
    #                       (single quote), <code>"</code> (double quote), <code>\</code>, <code>/</code>, or <code>@</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute cluster_security_groups
    #   <p>A list of security groups to be associated with this cluster.</p>
    #           <p>Default: The default cluster security group for Amazon Redshift.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute vpc_security_group_ids
    #   <p>A list of Virtual Private Cloud (VPC) security groups to be associated with the
    #               cluster.</p>
    #           <p>Default: The default VPC security group is associated with the cluster.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute cluster_subnet_group_name
    #   <p>The name of a cluster subnet group to be associated with this cluster.</p>
    #           <p>If this parameter is not provided the resulting cluster will be deployed outside
    #               virtual private cloud (VPC).</p>
    #
    #   @return [String]
    #
    # @!attribute availability_zone
    #   <p>The EC2 Availability Zone (AZ) in which you want Amazon Redshift to provision the
    #               cluster. For example, if you have several EC2 instances running in a specific
    #               Availability Zone, then you might want the cluster to be provisioned in the same zone in
    #               order to decrease network latency.</p>
    #           <p>Default: A random, system-chosen Availability Zone in the region that is specified
    #               by the endpoint.</p>
    #           <p>Example: <code>us-east-2d</code>
    #           </p>
    #           <p>Constraint: The specified Availability Zone must be in the same region as the
    #               current endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute preferred_maintenance_window
    #   <p>The weekly time range (in UTC) during which automated cluster maintenance can
    #               occur.</p>
    #           <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #           </p>
    #           <p> Default: A 30-minute window selected at random from an 8-hour block of time per
    #               region, occurring on a random day of the week. For more information about the time
    #               blocks for each region, see <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html rs-maintenance-windows">Maintenance Windows</a> in Amazon Redshift Cluster Management Guide.</p>
    #           <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p>
    #           <p>Constraints: Minimum 30-minute window.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_parameter_group_name
    #   <p>The name of the parameter group to be associated with this cluster.</p>
    #           <p>Default: The default Amazon Redshift cluster parameter group. For information about the
    #               default parameter group, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Working with Amazon
    #                   Redshift Parameter Groups</a>
    #           </p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be 1 to 255 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute automated_snapshot_retention_period
    #   <p>The number of days that automated snapshots are retained. If the value is 0,
    #               automated snapshots are disabled. Even if automated snapshots are disabled, you can
    #               still create manual snapshots when you want with <a>CreateClusterSnapshot</a>. </p>
    #
    #           <p>You can't disable automated snapshots for RA3 node types. Set the automated retention period from 1-35 days.</p>
    #           <p>Default: <code>1</code>
    #           </p>
    #           <p>Constraints: Must be a value from 0 to 35.</p>
    #
    #   @return [Integer]
    #
    # @!attribute manual_snapshot_retention_period
    #   <p>The default number of days to retain a manual snapshot. If the value is -1, the
    #               snapshot is retained indefinitely. This setting doesn't change the retention period
    #               of existing snapshots.</p>
    #           <p>The value must be either -1 or an integer between 1 and 3,653.</p>
    #
    #   @return [Integer]
    #
    # @!attribute port
    #   <p>The port number on which the cluster accepts incoming connections.</p>
    #           <p>The cluster is accessible only via the JDBC and ODBC connection strings. Part of
    #               the connection string requires the port on which the cluster will listen for incoming
    #               connections.</p>
    #           <p>Default: <code>5439</code>
    #           </p>
    #           <p>Valid Values: <code>1150-65535</code>
    #           </p>
    #
    #   @return [Integer]
    #
    # @!attribute cluster_version
    #   <p>The version of the Amazon Redshift engine software that you want to deploy on the
    #               cluster.</p>
    #           <p>The version selected runs on all the nodes in the cluster.</p>
    #           <p>Constraints: Only version 1.0 is currently available.</p>
    #           <p>Example: <code>1.0</code>
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute allow_version_upgrade
    #   <p>If <code>true</code>, major version upgrades can be applied during the maintenance
    #               window to the Amazon Redshift engine that is running on the cluster.</p>
    #           <p>When a new major version of the Amazon Redshift engine is released, you can request that
    #               the service automatically apply upgrades during the maintenance window to the Amazon Redshift
    #               engine that is running on your cluster.</p>
    #           <p>Default: <code>true</code>
    #           </p>
    #
    #   @return [Boolean]
    #
    # @!attribute number_of_nodes
    #   <p>The number of compute nodes in the cluster. This parameter is required when the
    #                   <b>ClusterType</b> parameter is specified as
    #                   <code>multi-node</code>. </p>
    #           <p>For information about determining how many nodes you need, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html how-many-nodes"> Working with
    #                   Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
    #           <p>If you don't specify this parameter, you get a single-node cluster. When requesting
    #               a multi-node cluster, you must specify the number of nodes that you want in the
    #               cluster.</p>
    #           <p>Default: <code>1</code>
    #           </p>
    #           <p>Constraints: Value must be at least 1 and no more than 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute publicly_accessible
    #   <p>If <code>true</code>, the cluster can be accessed from a public network. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute encrypted
    #   <p>If <code>true</code>, the data in the cluster is encrypted at rest. </p>
    #           <p>Default: false</p>
    #
    #   @return [Boolean]
    #
    # @!attribute hsm_client_certificate_identifier
    #   <p>Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to
    #               retrieve the data encryption keys stored in an HSM.</p>
    #
    #   @return [String]
    #
    # @!attribute hsm_configuration_identifier
    #   <p>Specifies the name of the HSM configuration that contains the information the
    #               Amazon Redshift cluster can use to retrieve and store keys in an HSM.</p>
    #
    #   @return [String]
    #
    # @!attribute elastic_ip
    #   <p>The Elastic IP (EIP) address for the cluster.</p>
    #           <p>Constraints: The cluster must be provisioned in EC2-VPC and publicly-accessible
    #               through an Internet gateway. For more information about provisioning clusters in
    #               EC2-VPC, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html cluster-platforms">Supported
    #                   Platforms to Launch Your Cluster</a> in the Amazon Redshift Cluster Management Guide.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tag instances.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute kms_key_id
    #   <p>The Key Management Service (KMS) key ID of the encryption key that you want to
    #               use to encrypt data in the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute enhanced_vpc_routing
    #   <p>An option that specifies whether to create the cluster with enhanced VPC routing
    #               enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a
    #               VPC. For more information, see <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html">Enhanced VPC Routing</a> in
    #               the Amazon Redshift Cluster Management Guide.</p>
    #           <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p>
    #           <p>Default: false</p>
    #
    #   @return [Boolean]
    #
    # @!attribute additional_info
    #   <p>Reserved.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_roles
    #   <p>A list of Identity and Access Management (IAM) roles that can be used by the
    #               cluster to access other Amazon Web Services services. You must supply the IAM roles in their Amazon
    #               Resource Name (ARN) format. </p>
    #           <p>The maximum number of IAM roles that you can associate is subject to a quota.
    #               For more information, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Quotas and limits</a>
    #               in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute maintenance_track_name
    #   <p>An optional parameter for the name of the maintenance track for the cluster. If you
    #               don't provide a maintenance track name, the cluster is assigned to the
    #                   <code>current</code> track.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_schedule_identifier
    #   <p>A unique identifier for the snapshot schedule.</p>
    #
    #   @return [String]
    #
    # @!attribute availability_zone_relocation
    #   <p>The option to enable relocation for an Amazon Redshift cluster between Availability Zones after the cluster is created.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute aqua_configuration_status
    #   <p>The value represents how the cluster is configured to use AQUA (Advanced Query Accelerator) when it is created. Possible values include the following.</p>
    #           <ul>
    #               <li>
    #                  <p>enabled - Use AQUA if it is available for the current Amazon Web Services Region and Amazon Redshift node type.</p>
    #               </li>
    #               <li>
    #                  <p>disabled - Don't use AQUA. </p>
    #               </li>
    #               <li>
    #                  <p>auto - Amazon Redshift determines whether to use AQUA.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["enabled", "disabled", "auto"]
    #
    #   @return [String]
    #
    # @!attribute default_iam_role_arn
    #   <p>The Amazon Resource Name (ARN) for the IAM role that was set as default for the cluster when the cluster was created. </p>
    #
    #   @return [String]
    #
    # @!attribute load_sample_data
    #   <p>A flag that specifies whether to load sample data once the cluster is created.</p>
    #
    #   @return [String]
    #
    CreateClusterInput = ::Struct.new(
      :db_name,
      :cluster_identifier,
      :cluster_type,
      :node_type,
      :master_username,
      :master_user_password,
      :cluster_security_groups,
      :vpc_security_group_ids,
      :cluster_subnet_group_name,
      :availability_zone,
      :preferred_maintenance_window,
      :cluster_parameter_group_name,
      :automated_snapshot_retention_period,
      :manual_snapshot_retention_period,
      :port,
      :cluster_version,
      :allow_version_upgrade,
      :number_of_nodes,
      :publicly_accessible,
      :encrypted,
      :hsm_client_certificate_identifier,
      :hsm_configuration_identifier,
      :elastic_ip,
      :tags,
      :kms_key_id,
      :enhanced_vpc_routing,
      :additional_info,
      :iam_roles,
      :maintenance_track_name,
      :snapshot_schedule_identifier,
      :availability_zone_relocation,
      :aqua_configuration_status,
      :default_iam_role_arn,
      :load_sample_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>Describes a cluster.</p>
    #
    #   @return [Cluster]
    #
    CreateClusterOutput = ::Struct.new(
      :cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute parameter_group_name
    #   <p>The name of the cluster parameter group.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be 1 to 255 alphanumeric characters or hyphens</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>Must be unique withing your Amazon Web Services account.</p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>This value is stored as a lower-case string.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute parameter_group_family
    #   <p>The Amazon Redshift engine version to which the cluster parameter group applies. The
    #               cluster engine version determines the set of parameters.</p>
    #           <p>To get a list of valid parameter group family names, you can call <a>DescribeClusterParameterGroups</a>. By default, Amazon Redshift returns a list of
    #               all the parameter groups that are owned by your Amazon Web Services account, including the default
    #               parameter groups for each Amazon Redshift engine version. The parameter group family names
    #               associated with the default parameter groups provide you the valid values. For example,
    #               a valid family name is "redshift-1.0". </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the parameter group.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tag instances.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateClusterParameterGroupInput = ::Struct.new(
      :parameter_group_name,
      :parameter_group_family,
      :description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_parameter_group
    #   <p>Describes a parameter group.</p>
    #
    #   @return [ClusterParameterGroup]
    #
    CreateClusterParameterGroupOutput = ::Struct.new(
      :cluster_parameter_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute cluster_security_group_name
    #   <p>The name for the security group. Amazon Redshift stores the value as a lowercase
    #               string.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain no more than 255 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>Must not be "Default".</p>
    #               </li>
    #               <li>
    #                   <p>Must be unique for all security groups that are created by your Amazon Web Services account.</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>examplesecuritygroup</code>
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description for the security group.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tag instances.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateClusterSecurityGroupInput = ::Struct.new(
      :cluster_security_group_name,
      :description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_security_group
    #   <p>Describes a security group.</p>
    #
    #   @return [ClusterSecurityGroup]
    #
    CreateClusterSecurityGroupOutput = ::Struct.new(
      :cluster_security_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute snapshot_identifier
    #   <p>A unique identifier for the snapshot that you are requesting. This identifier must
    #               be unique for all snapshots within the Amazon Web Services account.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Cannot be null, empty, or blank</p>
    #               </li>
    #               <li>
    #                   <p>Must contain from 1 to 255 alphanumeric characters or hyphens</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                   <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>my-snapshot-id</code>
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute cluster_identifier
    #   <p>The cluster identifier for which you want a snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute manual_snapshot_retention_period
    #   <p>The number of days that a manual snapshot is retained. If the value is -1, the manual
    #               snapshot is retained indefinitely. </p>
    #
    #           <p>The value must be either -1 or an integer between 1 and 3,653.</p>
    #
    #           <p>The default value is -1.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tags
    #   <p>A list of tag instances.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateClusterSnapshotInput = ::Struct.new(
      :snapshot_identifier,
      :cluster_identifier,
      :manual_snapshot_retention_period,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute snapshot
    #   <p>Describes a snapshot.</p>
    #
    #   @return [Snapshot]
    #
    CreateClusterSnapshotOutput = ::Struct.new(
      :snapshot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute cluster_subnet_group_name
    #   <p>The name for the subnet group. Amazon Redshift stores the value as a lowercase
    #               string.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain no more than 255 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>Must not be "Default".</p>
    #               </li>
    #               <li>
    #                   <p>Must be unique for all subnet groups that are created by your Amazon Web Services account.</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>examplesubnetgroup</code>
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description for the subnet group.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_ids
    #   <p>An array of VPC subnet IDs. A maximum of 20 subnets can be modified in a single
    #               request.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>A list of tag instances.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateClusterSubnetGroupInput = ::Struct.new(
      :cluster_subnet_group_name,
      :description,
      :subnet_ids,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_subnet_group
    #   <p>Describes a subnet group.</p>
    #
    #   @return [ClusterSubnetGroup]
    #
    CreateClusterSubnetGroupOutput = ::Struct.new(
      :cluster_subnet_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_identifier
    #   <p>The cluster identifier of the cluster to access.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_owner
    #   <p>The Amazon Web Services account ID of the owner of the cluster. This is only required if the cluster is in another Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_name
    #   <p>The Redshift-managed VPC endpoint name.</p>
    #            <p>An endpoint name must contain 1-30 characters.
    #             Valid characters are A-Z, a-z, 0-9, and hyphen(-).
    #             The first character must be a letter.
    #             The name can't contain two consecutive hyphens or end with a hyphen.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_group_name
    #   <p>The subnet group from which Amazon Redshift chooses the subnet to deploy the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_security_group_ids
    #   <p>The security group that defines the ports, protocols, and sources for inbound traffic that you are authorizing into your endpoint.</p>
    #
    #   @return [Array<String>]
    #
    CreateEndpointAccessInput = ::Struct.new(
      :cluster_identifier,
      :resource_owner,
      :endpoint_name,
      :subnet_group_name,
      :vpc_security_group_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a Redshift-managed VPC endpoint.</p>
    #
    # @!attribute cluster_identifier
    #   <p>The cluster identifier of the cluster associated with the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_owner
    #   <p>The Amazon Web Services account ID of the owner of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_group_name
    #   <p>The subnet group name where Amazon Redshift chooses to deploy the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_status
    #   <p>The status of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_name
    #   <p>The name of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_create_time
    #   <p>The time (UTC) that the endpoint was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute port
    #   <p>The port number on which the cluster accepts incoming connections.</p>
    #
    #   @return [Integer]
    #
    # @!attribute address
    #   <p>The DNS address of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_security_groups
    #   <p>The security groups associated with the endpoint.</p>
    #
    #   @return [Array<VpcSecurityGroupMembership>]
    #
    # @!attribute vpc_endpoint
    #   <p>The connection endpoint for connecting to an Amazon Redshift cluster through the proxy.</p>
    #
    #   @return [VpcEndpoint]
    #
    CreateEndpointAccessOutput = ::Struct.new(
      :cluster_identifier,
      :resource_owner,
      :subnet_group_name,
      :endpoint_status,
      :endpoint_name,
      :endpoint_create_time,
      :port,
      :address,
      :vpc_security_groups,
      :vpc_endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.port ||= 0
      end
    end

    # <p></p>
    #
    # @!attribute subscription_name
    #   <p>The name of the event subscription to be created.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Cannot be null, empty, or blank.</p>
    #               </li>
    #               <li>
    #                   <p>Must contain from 1 to 255 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic used to transmit the event
    #               notifications. The ARN is created by Amazon SNS when you create a topic and subscribe to
    #               it.</p>
    #
    #   @return [String]
    #
    # @!attribute source_type
    #   <p>The type of source that will be generating the events. For example, if you want to
    #               be notified of events generated by a cluster, you would set this parameter to cluster.
    #               If this value is not specified, events are returned for all Amazon Redshift objects in your
    #               Amazon Web Services account. You must specify a source type in order to specify source IDs.</p>
    #           <p>Valid values: cluster, cluster-parameter-group, cluster-security-group, cluster-snapshot, and scheduled-action.</p>
    #
    #   @return [String]
    #
    # @!attribute source_ids
    #   <p>A list of one or more identifiers of Amazon Redshift source objects. All of the objects
    #               must be of the same type as was specified in the source type parameter. The event
    #               subscription will return only events generated by the specified objects. If not
    #               specified, then events are returned for all objects within the source type
    #               specified.</p>
    #           <p>Example: my-cluster-1, my-cluster-2</p>
    #           <p>Example: my-snapshot-20131010</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute event_categories
    #   <p>Specifies the Amazon Redshift event categories to be published by the event notification
    #               subscription.</p>
    #           <p>Values: configuration, management, monitoring, security, pending</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute severity
    #   <p>Specifies the Amazon Redshift event severity to be published by the event notification
    #               subscription.</p>
    #           <p>Values: ERROR, INFO</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>A boolean value; set to <code>true</code> to activate the subscription, and set to
    #                   <code>false</code> to create the subscription but not activate it. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>A list of tag instances.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateEventSubscriptionInput = ::Struct.new(
      :subscription_name,
      :sns_topic_arn,
      :source_type,
      :source_ids,
      :event_categories,
      :severity,
      :enabled,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_subscription
    #   <p>Describes event subscriptions.</p>
    #
    #   @return [EventSubscription]
    #
    CreateEventSubscriptionOutput = ::Struct.new(
      :event_subscription,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute hsm_client_certificate_identifier
    #   <p>The identifier to be assigned to the new HSM client certificate that the cluster
    #               will use to connect to the HSM to use the database encryption keys.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tag instances.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateHsmClientCertificateInput = ::Struct.new(
      :hsm_client_certificate_identifier,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute hsm_client_certificate
    #   <p>Returns information about an HSM client certificate. The certificate is stored in a
    #               secure Hardware Storage Module (HSM), and used by the Amazon Redshift cluster to encrypt data
    #               files.</p>
    #
    #   @return [HsmClientCertificate]
    #
    CreateHsmClientCertificateOutput = ::Struct.new(
      :hsm_client_certificate,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute hsm_configuration_identifier
    #   <p>The identifier to be assigned to the new Amazon Redshift HSM configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A text description of the HSM configuration to be created.</p>
    #
    #   @return [String]
    #
    # @!attribute hsm_ip_address
    #   <p>The IP address that the Amazon Redshift cluster must use to access the HSM.</p>
    #
    #   @return [String]
    #
    # @!attribute hsm_partition_name
    #   <p>The name of the partition in the HSM where the Amazon Redshift clusters will store their
    #               database encryption keys.</p>
    #
    #   @return [String]
    #
    # @!attribute hsm_partition_password
    #   <p>The password required to access the HSM partition.</p>
    #
    #   @return [String]
    #
    # @!attribute hsm_server_public_certificate
    #   <p>The HSMs public certificate file. When using Cloud HSM, the file name is
    #               server.pem.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tag instances.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateHsmConfigurationInput = ::Struct.new(
      :hsm_configuration_identifier,
      :description,
      :hsm_ip_address,
      :hsm_partition_name,
      :hsm_partition_password,
      :hsm_server_public_certificate,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute hsm_configuration
    #   <p>Returns information about an HSM configuration, which is an object that describes
    #               to Amazon Redshift clusters the information they require to connect to an HSM where they can
    #               store database encryption keys.</p>
    #
    #   @return [HsmConfiguration]
    #
    CreateHsmConfigurationOutput = ::Struct.new(
      :hsm_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scheduled_action_name
    #   <p>The name of the scheduled action. The name must be unique within an account.
    #               For more information about this parameter, see <a>ScheduledAction</a>. </p>
    #
    #   @return [String]
    #
    # @!attribute target_action
    #   <p>A JSON format string of the Amazon Redshift API operation with input parameters.
    #               For more information about this parameter, see <a>ScheduledAction</a>. </p>
    #
    #   @return [ScheduledActionType]
    #
    # @!attribute schedule
    #   <p>The schedule in <code>at( )</code> or <code>cron( )</code> format.
    #               For more information about this parameter, see <a>ScheduledAction</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_role
    #   <p>The IAM role to assume to run the target action.
    #               For more information about this parameter, see <a>ScheduledAction</a>. </p>
    #
    #   @return [String]
    #
    # @!attribute scheduled_action_description
    #   <p>The description of the scheduled action.
    #               </p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The start time in UTC of the scheduled action.
    #               Before this time, the scheduled action does not trigger.
    #               For more information about this parameter, see <a>ScheduledAction</a>.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The end time in UTC of the scheduled action. After this time, the scheduled action does not trigger.
    #               For more information about this parameter, see <a>ScheduledAction</a>. </p>
    #
    #   @return [Time]
    #
    # @!attribute enable
    #   <p>If true, the schedule is enabled. If false, the scheduled action does not trigger.
    #               For more information about <code>state</code> of the scheduled action, see <a>ScheduledAction</a>. </p>
    #
    #   @return [Boolean]
    #
    CreateScheduledActionInput = ::Struct.new(
      :scheduled_action_name,
      :target_action,
      :schedule,
      :iam_role,
      :scheduled_action_description,
      :start_time,
      :end_time,
      :enable,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a scheduled action. You can use a scheduled action to trigger some Amazon Redshift API operations on a schedule.
    #             For information about which API operations can be scheduled, see  <a>ScheduledActionType</a>. </p>
    #
    # @!attribute scheduled_action_name
    #   <p>The name of the scheduled action. </p>
    #
    #   @return [String]
    #
    # @!attribute target_action
    #   <p>A JSON format string of the Amazon Redshift API operation with input parameters. </p>
    #           <p>"<code>{\"ResizeCluster\":{\"NodeType\":\"ds2.8xlarge\",\"ClusterIdentifier\":\"my-test-cluster\",\"NumberOfNodes\":3}}</code>". </p>
    #
    #   @return [ScheduledActionType]
    #
    # @!attribute schedule
    #   <p>The schedule for a one-time (at format) or recurring (cron format) scheduled action.
    #               Schedule invocations must be separated by at least one hour.</p>
    #           <p>Format of at expressions is "<code>at(yyyy-mm-ddThh:mm:ss)</code>". For example, "<code>at(2016-03-04T17:27:00)</code>".</p>
    #           <p>Format of cron expressions is "<code>cron(Minutes Hours Day-of-month Month Day-of-week Year)</code>".
    #               For example, "<code>cron(0 10 ? * MON *)</code>". For more information, see
    #               <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html CronExpressions">Cron Expressions</a>
    #               in the <i>Amazon CloudWatch Events User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_role
    #   <p>The IAM role to assume to run the scheduled action.
    #               This IAM role must have permission to run the Amazon Redshift API operation in the scheduled action.
    #               This IAM role must allow the Amazon Redshift scheduler (Principal scheduler.redshift.amazonaws.com) to assume permissions on your behalf.
    #
    #   For more information about the IAM role to use with the Amazon Redshift scheduler, see
    #   <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html">Using Identity-Based Policies for Amazon Redshift</a>
    #   in the <i>Amazon Redshift Cluster Management Guide</i>.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute scheduled_action_description
    #   <p>The description of the scheduled action. </p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the scheduled action. For example, <code>DISABLED</code>. </p>
    #
    #   Enum, one of: ["ACTIVE", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute next_invocations
    #   <p>List of times when the scheduled action will run. </p>
    #
    #   @return [Array<Time>]
    #
    # @!attribute start_time
    #   <p>The start time in UTC when the schedule is active. Before this time, the scheduled action does not trigger. </p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The end time in UTC when the schedule is no longer active. After this time, the scheduled action does not trigger. </p>
    #
    #   @return [Time]
    #
    CreateScheduledActionOutput = ::Struct.new(
      :scheduled_action_name,
      :target_action,
      :schedule,
      :iam_role,
      :scheduled_action_description,
      :state,
      :next_invocations,
      :start_time,
      :end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of the <code>CreateSnapshotCopyGrant</code> action.</p>
    #
    # @!attribute snapshot_copy_grant_name
    #   <p>The name of the snapshot copy grant. This name must be unique in the region for the
    #               Amazon Web Services account.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>Alphabetic characters must be lowercase.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>Must be unique for all clusters within an Amazon Web Services account.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>The unique identifier of the encrypted symmetric key to which to grant Amazon Redshift
    #               permission. If no key is specified, the default key is used.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tag instances.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateSnapshotCopyGrantInput = ::Struct.new(
      :snapshot_copy_grant_name,
      :kms_key_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute snapshot_copy_grant
    #   <p>The snapshot copy grant that grants Amazon Redshift permission to encrypt copied
    #               snapshots with the specified encrypted symmetric key from Amazon Web Services KMS in the destination
    #               region.</p>
    #           <p>
    #   For more information about managing snapshot copy grants, go to
    #   <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html">Amazon Redshift Database Encryption</a>
    #   in the <i>Amazon Redshift Cluster Management Guide</i>.
    #   </p>
    #
    #   @return [SnapshotCopyGrant]
    #
    CreateSnapshotCopyGrantOutput = ::Struct.new(
      :snapshot_copy_grant,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schedule_definitions
    #   <p>The definition of the snapshot schedule. The definition is made up of schedule
    #               expressions, for example "cron(30 12 *)" or "rate(12 hours)". </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute schedule_identifier
    #   <p>A unique identifier for a snapshot schedule. Only alphanumeric characters are allowed
    #               for the identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule_description
    #   <p>The description of the snapshot schedule.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>An optional set of tags you can use to search for the schedule.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute dry_run
    #   <p></p>
    #
    #   @return [Boolean]
    #
    # @!attribute next_invocations
    #   <p></p>
    #
    #   @return [Integer]
    #
    CreateSnapshotScheduleInput = ::Struct.new(
      :schedule_definitions,
      :schedule_identifier,
      :schedule_description,
      :tags,
      :dry_run,
      :next_invocations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a snapshot schedule. You can set a regular interval for creating
    #             snapshots of a cluster. You can also schedule snapshots for specific dates. </p>
    #
    # @!attribute schedule_definitions
    #   <p>A list of ScheduleDefinitions.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute schedule_identifier
    #   <p>A unique identifier for the schedule.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule_description
    #   <p>The description of the schedule.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>An optional set of tags describing the schedule.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute next_invocations
    #   <p></p>
    #
    #   @return [Array<Time>]
    #
    # @!attribute associated_cluster_count
    #   <p>The number of clusters associated with the schedule.</p>
    #
    #   @return [Integer]
    #
    # @!attribute associated_clusters
    #   <p>A list of clusters associated with the schedule. A maximum of 100 clusters is returned.</p>
    #
    #   @return [Array<ClusterAssociatedToSchedule>]
    #
    CreateSnapshotScheduleOutput = ::Struct.new(
      :schedule_definitions,
      :schedule_identifier,
      :schedule_description,
      :tags,
      :next_invocations,
      :associated_cluster_count,
      :associated_clusters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the output from the <code>CreateTags</code> action. </p>
    #
    # @!attribute resource_name
    #   <p>The Amazon Resource Name (ARN) to which you want to add the tag or tags. For
    #               example, <code>arn:aws:redshift:us-east-2:123456789:cluster:t1</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>One or more name/value pairs to add as tags to the specified resource. Each tag
    #               name is passed in with the parameter <code>Key</code> and the corresponding value is
    #               passed in with the parameter <code>Value</code>. The <code>Key</code> and
    #                   <code>Value</code> parameters are separated by a comma (,). Separate multiple tags
    #               with a space. For example, <code>--tags "Key"="owner","Value"="admin"
    #                   "Key"="environment","Value"="test" "Key"="version","Value"="1.0"</code>. </p>
    #
    #   @return [Array<Tag>]
    #
    CreateTagsInput = ::Struct.new(
      :resource_name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateTagsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_identifier
    #   <p>The identifier of the cluster that you want to limit usage.</p>
    #
    #   @return [String]
    #
    # @!attribute feature_type
    #   <p>The Amazon Redshift feature that you want to limit.</p>
    #
    #   Enum, one of: ["spectrum", "concurrency-scaling", "cross-region-datasharing"]
    #
    #   @return [String]
    #
    # @!attribute limit_type
    #   <p>The type of limit. Depending on the feature type, this can be based on a time duration or data size.
    #               If <code>FeatureType</code> is <code>spectrum</code>, then <code>LimitType</code> must be <code>data-scanned</code>.
    #               If <code>FeatureType</code> is <code>concurrency-scaling</code>, then <code>LimitType</code> must be <code>time</code>.
    #               If <code>FeatureType</code> is <code>cross-region-datasharing</code>, then <code>LimitType</code> must be <code>data-scanned</code>.
    #              </p>
    #
    #   Enum, one of: ["time", "data-scanned"]
    #
    #   @return [String]
    #
    # @!attribute amount
    #   <p>The limit amount. If time-based, this amount is in minutes. If data-based, this amount is in terabytes (TB).
    #               The value must be a positive number.
    #               </p>
    #
    #   @return [Integer]
    #
    # @!attribute period
    #   <p>The time period that the amount applies to. A <code>weekly</code> period begins on Sunday. The default is <code>monthly</code>.
    #               </p>
    #
    #   Enum, one of: ["daily", "weekly", "monthly"]
    #
    #   @return [String]
    #
    # @!attribute breach_action
    #   <p>The action that Amazon Redshift takes when the limit is reached. The default is log.
    #               For more information about this parameter, see <a>UsageLimit</a>.</p>
    #
    #   Enum, one of: ["log", "emit-metric", "disable"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tag instances.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateUsageLimitInput = ::Struct.new(
      :cluster_identifier,
      :feature_type,
      :limit_type,
      :amount,
      :period,
      :breach_action,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.amount ||= 0
      end
    end

    # <p>Describes a usage limit object for a cluster. </p>
    #
    # @!attribute usage_limit_id
    #   <p>The identifier of the usage limit.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_identifier
    #   <p>The identifier of the cluster with a usage limit.</p>
    #
    #   @return [String]
    #
    # @!attribute feature_type
    #   <p>The Amazon Redshift feature to which the limit applies.</p>
    #
    #   Enum, one of: ["spectrum", "concurrency-scaling", "cross-region-datasharing"]
    #
    #   @return [String]
    #
    # @!attribute limit_type
    #   <p>The type of limit. Depending on the feature type, this can be based on a time duration or data size.</p>
    #
    #   Enum, one of: ["time", "data-scanned"]
    #
    #   @return [String]
    #
    # @!attribute amount
    #   <p>The limit amount. If time-based, this amount is in minutes. If data-based, this amount is in terabytes (TB).</p>
    #
    #   @return [Integer]
    #
    # @!attribute period
    #   <p>The time period that the amount applies to. A <code>weekly</code> period begins on Sunday. The default is <code>monthly</code>. </p>
    #
    #   Enum, one of: ["daily", "weekly", "monthly"]
    #
    #   @return [String]
    #
    # @!attribute breach_action
    #   <p>The action that Amazon Redshift takes when the limit is reached. Possible values are: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>log</b> - To log an event in a system table. The default is log.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>emit-metric</b> - To emit CloudWatch metrics.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>disable</b> - To disable the feature until the next usage period begins.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["log", "emit-metric", "disable"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tag instances.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateUsageLimitOutput = ::Struct.new(
      :usage_limit_id,
      :cluster_identifier,
      :feature_type,
      :limit_type,
      :amount,
      :period,
      :breach_action,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.amount ||= 0
      end
    end

    # @!attribute data_share_arn
    #   <p>An Amazon Resource Name (ARN) that references the datashare that is owned by a specific namespace of the producer cluster. A datashare ARN is in the <code>arn:aws:redshift:{region}:{account-id}:{datashare}:{namespace-guid}/{datashare-name}</code> format.</p>
    #
    #   @return [String]
    #
    # @!attribute producer_arn
    #   <p>The Amazon Resource Name (ARN) of the producer.</p>
    #
    #   @return [String]
    #
    # @!attribute allow_publicly_accessible_consumers
    #   <p>A value that specifies whether the datashare can be shared to a publicly accessible  cluster.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute data_share_associations
    #   <p>A value that specifies when the datashare has an association between producer and data
    #               consumers.</p>
    #
    #   @return [Array<DataShareAssociation>]
    #
    # @!attribute managed_by
    #   <p>The identifier of a datashare to show its managing entity.</p>
    #
    #   @return [String]
    #
    DataShare = ::Struct.new(
      :data_share_arn,
      :producer_arn,
      :allow_publicly_accessible_consumers,
      :data_share_associations,
      :managed_by,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.allow_publicly_accessible_consumers ||= false
      end
    end

    # <p>The association of a datashare from a producer account with a data consumer.
    # </p>
    #
    # @!attribute consumer_identifier
    #   <p>The name of the consumer accounts that have an association with a producer
    #               datashare.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the datashare that is associated.</p>
    #
    #   Enum, one of: ["ACTIVE", "PENDING_AUTHORIZATION", "AUTHORIZED", "DEAUTHORIZED", "REJECTED", "AVAILABLE"]
    #
    #   @return [String]
    #
    # @!attribute consumer_region
    #   <p>The Amazon Web Services Region of the consumer accounts that have an association with a producer datashare.</p>
    #
    #   @return [String]
    #
    # @!attribute created_date
    #   <p>The creation date of the datashare that is associated.</p>
    #
    #   @return [Time]
    #
    # @!attribute status_change_date
    #   <p>The status change data of the datashare that is associated.</p>
    #
    #   @return [Time]
    #
    DataShareAssociation = ::Struct.new(
      :consumer_identifier,
      :status,
      :consumer_region,
      :created_date,
      :status_change_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DataShareStatus
    #
    module DataShareStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      PENDING_AUTHORIZATION = "PENDING_AUTHORIZATION"

      # No documentation available.
      #
      AUTHORIZED = "AUTHORIZED"

      # No documentation available.
      #
      DEAUTHORIZED = "DEAUTHORIZED"

      # No documentation available.
      #
      REJECTED = "REJECTED"

      # No documentation available.
      #
      AVAILABLE = "AVAILABLE"
    end

    # Includes enum constants for DataShareStatusForConsumer
    #
    module DataShareStatusForConsumer
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      AVAILABLE = "AVAILABLE"
    end

    # Includes enum constants for DataShareStatusForProducer
    #
    module DataShareStatusForProducer
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      AUTHORIZED = "AUTHORIZED"

      # No documentation available.
      #
      PENDING_AUTHORIZATION = "PENDING_AUTHORIZATION"

      # No documentation available.
      #
      DEAUTHORIZED = "DEAUTHORIZED"

      # No documentation available.
      #
      REJECTED = "REJECTED"
    end

    # <p>Describes the status of a cluster while it is in the process of resizing with an
    #             incremental resize.</p>
    #
    # @!attribute status
    #   <p>Describes the status of the cluster. While the transfer is in progress the status is
    #                   <code>transferringdata</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute current_rate_in_mega_bytes_per_second
    #   <p>Describes the data transfer rate in MB's per second.</p>
    #
    #   @return [Float]
    #
    # @!attribute total_data_in_mega_bytes
    #   <p>Describes the total amount of data to be transfered in megabytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute data_transferred_in_mega_bytes
    #   <p>Describes the total amount of data that has been transfered in MB's.</p>
    #
    #   @return [Integer]
    #
    # @!attribute estimated_time_to_completion_in_seconds
    #   <p>Describes the estimated number of seconds remaining to complete the transfer.</p>
    #
    #   @return [Integer]
    #
    # @!attribute elapsed_time_in_seconds
    #   <p>Describes the number of seconds that have elapsed during the data transfer.</p>
    #
    #   @return [Integer]
    #
    DataTransferProgress = ::Struct.new(
      :status,
      :current_rate_in_mega_bytes_per_second,
      :total_data_in_mega_bytes,
      :data_transferred_in_mega_bytes,
      :estimated_time_to_completion_in_seconds,
      :elapsed_time_in_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.total_data_in_mega_bytes ||= 0
        self.data_transferred_in_mega_bytes ||= 0
      end
    end

    # @!attribute data_share_arn
    #   <p>The Amazon Resource Name (ARN) of the datashare to remove authorization from.</p>
    #
    #   @return [String]
    #
    # @!attribute consumer_identifier
    #   <p>The identifier of the data consumer that is to have authorization removed from the datashare.
    #               This identifier is an Amazon Web Services account ID or a keyword, such as ADX.</p>
    #
    #   @return [String]
    #
    DeauthorizeDataShareInput = ::Struct.new(
      :data_share_arn,
      :consumer_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_share_arn
    #   <p>An Amazon Resource Name (ARN) that references the datashare that is owned by a specific namespace of the producer cluster. A datashare ARN is in the <code>arn:aws:redshift:{region}:{account-id}:{datashare}:{namespace-guid}/{datashare-name}</code> format.</p>
    #
    #   @return [String]
    #
    # @!attribute producer_arn
    #   <p>The Amazon Resource Name (ARN) of the producer.</p>
    #
    #   @return [String]
    #
    # @!attribute allow_publicly_accessible_consumers
    #   <p>A value that specifies whether the datashare can be shared to a publicly accessible  cluster.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute data_share_associations
    #   <p>A value that specifies when the datashare has an association between producer and data
    #               consumers.</p>
    #
    #   @return [Array<DataShareAssociation>]
    #
    # @!attribute managed_by
    #   <p>The identifier of a datashare to show its managing entity.</p>
    #
    #   @return [String]
    #
    DeauthorizeDataShareOutput = ::Struct.new(
      :data_share_arn,
      :producer_arn,
      :allow_publicly_accessible_consumers,
      :data_share_associations,
      :managed_by,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.allow_publicly_accessible_consumers ||= false
      end
    end

    # <p>Describes the default cluster parameters for a parameter group family.</p>
    #
    # @!attribute parameter_group_family
    #   <p>The name of the cluster parameter group family to which the engine default
    #               parameters apply.</p>
    #
    #   @return [String]
    #
    # @!attribute marker
    #   <p>A value that indicates the starting point for the next set of response records in a
    #               subsequent request. If a value is returned in a response, you can retrieve the next set
    #               of records by providing this returned marker value in the <code>Marker</code> parameter
    #               and retrying the command. If the <code>Marker</code> field is empty, all response
    #               records have been retrieved for the request. </p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The list of cluster default parameters.</p>
    #
    #   @return [Array<Parameter>]
    #
    DefaultClusterParameters = ::Struct.new(
      :parameter_group_family,
      :marker,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a deferred maintenance window</p>
    #
    # @!attribute defer_maintenance_identifier
    #   <p>A unique identifier for the maintenance window.</p>
    #
    #   @return [String]
    #
    # @!attribute defer_maintenance_start_time
    #   <p> A timestamp for the beginning of the time period when we defer maintenance.</p>
    #
    #   @return [Time]
    #
    # @!attribute defer_maintenance_end_time
    #   <p> A timestamp for the end of the time period when we defer maintenance.</p>
    #
    #   @return [Time]
    #
    DeferredMaintenanceWindow = ::Struct.new(
      :defer_maintenance_identifier,
      :defer_maintenance_start_time,
      :defer_maintenance_end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_profile_name
    #   <p>The name of the authentication profile to delete.</p>
    #
    #   @return [String]
    #
    DeleteAuthenticationProfileInput = ::Struct.new(
      :authentication_profile_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_profile_name
    #   <p>The name of the authentication profile that was deleted.</p>
    #
    #   @return [String]
    #
    DeleteAuthenticationProfileOutput = ::Struct.new(
      :authentication_profile_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute cluster_identifier
    #   <p>The identifier of the cluster to be deleted.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain lowercase characters.</p>
    #               </li>
    #               <li>
    #                   <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute skip_final_cluster_snapshot
    #   <p>Determines whether a final snapshot of the cluster is created before Amazon Redshift
    #               deletes the cluster. If <code>true</code>, a final cluster snapshot is not created. If
    #                   <code>false</code>, a final cluster snapshot is created before the cluster is
    #               deleted. </p>
    #           <note>
    #               <p>The <i>FinalClusterSnapshotIdentifier</i> parameter must be
    #                   specified if <i>SkipFinalClusterSnapshot</i> is
    #                   <code>false</code>.</p>
    #           </note>
    #           <p>Default: <code>false</code>
    #           </p>
    #
    #   @return [Boolean]
    #
    # @!attribute final_cluster_snapshot_identifier
    #   <p>The identifier of the final snapshot that is to be created immediately before
    #               deleting the cluster. If this parameter is provided,
    #                   <i>SkipFinalClusterSnapshot</i> must be <code>false</code>. </p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be 1 to 255 alphanumeric characters.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute final_cluster_snapshot_retention_period
    #   <p>The number of days that a manual snapshot is retained. If the value is -1, the manual
    #               snapshot is retained indefinitely.</p>
    #           <p>The value must be either -1 or an integer between 1 and 3,653.</p>
    #           <p>The default value is -1.</p>
    #
    #   @return [Integer]
    #
    DeleteClusterInput = ::Struct.new(
      :cluster_identifier,
      :skip_final_cluster_snapshot,
      :final_cluster_snapshot_identifier,
      :final_cluster_snapshot_retention_period,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.skip_final_cluster_snapshot ||= false
      end
    end

    # @!attribute cluster
    #   <p>Describes a cluster.</p>
    #
    #   @return [Cluster]
    #
    DeleteClusterOutput = ::Struct.new(
      :cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute parameter_group_name
    #   <p>The name of the parameter group to be deleted.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be the name of an existing cluster parameter group.</p>
    #               </li>
    #               <li>
    #                   <p>Cannot delete a default cluster parameter group.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    DeleteClusterParameterGroupInput = ::Struct.new(
      :parameter_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteClusterParameterGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute cluster_security_group_name
    #   <p>The name of the cluster security group to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteClusterSecurityGroupInput = ::Struct.new(
      :cluster_security_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteClusterSecurityGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute snapshot_identifier
    #   <p>The unique identifier of the manual snapshot to be deleted.</p>
    #           <p>Constraints: Must be the name of an existing snapshot that is in the
    #                   <code>available</code>, <code>failed</code>, or <code>cancelled</code>
    #               state.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_cluster_identifier
    #   <p>The unique identifier of the cluster the snapshot was created from. This parameter
    #               is required if your IAM user has a policy containing a snapshot resource element that
    #               specifies anything other than * for the cluster name.</p>
    #           <p>Constraints: Must be the name of valid cluster.</p>
    #
    #   @return [String]
    #
    DeleteClusterSnapshotInput = ::Struct.new(
      :snapshot_identifier,
      :snapshot_cluster_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute snapshot_identifier
    #   <p>The unique identifier of the manual snapshot to be deleted.</p>
    #           <p>Constraints: Must be the name of an existing snapshot that is in the
    #                   <code>available</code>, <code>failed</code>, or <code>cancelled</code>
    #               state.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_cluster_identifier
    #   <p>The unique identifier of the cluster the snapshot was created from. This parameter
    #               is required if your IAM user has a policy containing a snapshot resource element that
    #               specifies anything other than * for the cluster name.</p>
    #           <p>Constraints: Must be the name of valid cluster.</p>
    #
    #   @return [String]
    #
    DeleteClusterSnapshotMessage = ::Struct.new(
      :snapshot_identifier,
      :snapshot_cluster_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute snapshot
    #   <p>Describes a snapshot.</p>
    #
    #   @return [Snapshot]
    #
    DeleteClusterSnapshotOutput = ::Struct.new(
      :snapshot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute cluster_subnet_group_name
    #   <p>The name of the cluster subnet group name to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteClusterSubnetGroupInput = ::Struct.new(
      :cluster_subnet_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteClusterSubnetGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_name
    #   <p>The Redshift-managed VPC endpoint to delete.</p>
    #
    #   @return [String]
    #
    DeleteEndpointAccessInput = ::Struct.new(
      :endpoint_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a Redshift-managed VPC endpoint.</p>
    #
    # @!attribute cluster_identifier
    #   <p>The cluster identifier of the cluster associated with the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_owner
    #   <p>The Amazon Web Services account ID of the owner of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_group_name
    #   <p>The subnet group name where Amazon Redshift chooses to deploy the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_status
    #   <p>The status of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_name
    #   <p>The name of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_create_time
    #   <p>The time (UTC) that the endpoint was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute port
    #   <p>The port number on which the cluster accepts incoming connections.</p>
    #
    #   @return [Integer]
    #
    # @!attribute address
    #   <p>The DNS address of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_security_groups
    #   <p>The security groups associated with the endpoint.</p>
    #
    #   @return [Array<VpcSecurityGroupMembership>]
    #
    # @!attribute vpc_endpoint
    #   <p>The connection endpoint for connecting to an Amazon Redshift cluster through the proxy.</p>
    #
    #   @return [VpcEndpoint]
    #
    DeleteEndpointAccessOutput = ::Struct.new(
      :cluster_identifier,
      :resource_owner,
      :subnet_group_name,
      :endpoint_status,
      :endpoint_name,
      :endpoint_create_time,
      :port,
      :address,
      :vpc_security_groups,
      :vpc_endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.port ||= 0
      end
    end

    # <p></p>
    #
    # @!attribute subscription_name
    #   <p>The name of the Amazon Redshift event notification subscription to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteEventSubscriptionInput = ::Struct.new(
      :subscription_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteEventSubscriptionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute hsm_client_certificate_identifier
    #   <p>The identifier of the HSM client certificate to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteHsmClientCertificateInput = ::Struct.new(
      :hsm_client_certificate_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteHsmClientCertificateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute hsm_configuration_identifier
    #   <p>The identifier of the Amazon Redshift HSM configuration to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteHsmConfigurationInput = ::Struct.new(
      :hsm_configuration_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteHsmConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID that owns the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_identifier
    #   <p>The cluster identifier of the cluster that receives data from the partner.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the database that receives data from the partner.</p>
    #
    #   @return [String]
    #
    # @!attribute partner_name
    #   <p>The name of the partner that is authorized to send data.</p>
    #
    #   @return [String]
    #
    DeletePartnerInput = ::Struct.new(
      :account_id,
      :cluster_identifier,
      :database_name,
      :partner_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute database_name
    #   <p>The name of the database that receives data from the partner.</p>
    #
    #   @return [String]
    #
    # @!attribute partner_name
    #   <p>The name of the partner that is authorized to send data.</p>
    #
    #   @return [String]
    #
    DeletePartnerOutput = ::Struct.new(
      :database_name,
      :partner_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scheduled_action_name
    #   <p>The name of the scheduled action to delete. </p>
    #
    #   @return [String]
    #
    DeleteScheduledActionInput = ::Struct.new(
      :scheduled_action_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteScheduledActionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of the <code>DeleteSnapshotCopyGrant</code> action.</p>
    #
    # @!attribute snapshot_copy_grant_name
    #   <p>The name of the snapshot copy grant to delete.</p>
    #
    #   @return [String]
    #
    DeleteSnapshotCopyGrantInput = ::Struct.new(
      :snapshot_copy_grant_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteSnapshotCopyGrantOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schedule_identifier
    #   <p>A unique identifier of the snapshot schedule to delete.</p>
    #
    #   @return [String]
    #
    DeleteSnapshotScheduleInput = ::Struct.new(
      :schedule_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteSnapshotScheduleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the output from the <code>DeleteTags</code> action. </p>
    #
    # @!attribute resource_name
    #   <p>The Amazon Resource Name (ARN) from which you want to remove the tag or tags. For
    #               example, <code>arn:aws:redshift:us-east-2:123456789:cluster:t1</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The tag key that you want to delete.</p>
    #
    #   @return [Array<String>]
    #
    DeleteTagsInput = ::Struct.new(
      :resource_name,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteTagsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute usage_limit_id
    #   <p>The identifier of the usage limit to delete.</p>
    #
    #   @return [String]
    #
    DeleteUsageLimitInput = ::Struct.new(
      :usage_limit_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteUsageLimitOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request cannot be completed because a dependent service is throttling requests
    #             made by Amazon Redshift on your behalf. Wait and retry the request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DependentServiceRequestThrottlingFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Your request cannot be completed because a dependent internal service is
    #             temporarily unavailable. Wait 30 to 60 seconds and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DependentServiceUnavailableFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attribute_names
    #   <p>A list of attribute names.</p>
    #
    #   @return [Array<String>]
    #
    DescribeAccountAttributesInput = ::Struct.new(
      :attribute_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_attributes
    #   <p>A list of attributes assigned to an account.</p>
    #
    #   @return [Array<AccountAttribute>]
    #
    DescribeAccountAttributesOutput = ::Struct.new(
      :account_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_profile_name
    #   <p>The name of the authentication profile to describe. If not specified then all authentication profiles owned by the account are listed.</p>
    #
    #   @return [String]
    #
    DescribeAuthenticationProfilesInput = ::Struct.new(
      :authentication_profile_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_profiles
    #   <p>The list of authentication profiles.</p>
    #
    #   @return [Array<AuthenticationProfile>]
    #
    DescribeAuthenticationProfilesOutput = ::Struct.new(
      :authentication_profiles,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_identifier
    #   <p>A unique identifier for a cluster whose <code>ClusterDbRevisions</code> you are
    #               requesting. This parameter is case sensitive. All clusters defined for an account are
    #               returned by default.</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified MaxRecords value, a value is returned
    #               in the <code>marker</code> field of the response. You can retrieve the next set of
    #               response records by providing the returned <code>marker</code> value in the
    #                   <code>marker</code> parameter and retrying the request. </p>
    #           <p>Default: 100</p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional parameter that specifies the starting point for returning a set of
    #               response records. When the results of a <code>DescribeClusterDbRevisions</code> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Redshift returns a value
    #               in the <code>marker</code> field of the response. You can retrieve the next set of
    #               response records by providing the returned <code>marker</code> value in the
    #                   <code>marker</code> parameter and retrying the request. </p>
    #           <p>Constraints: You can specify either the <code>ClusterIdentifier</code> parameter, or
    #               the <code>marker</code> parameter, but not both.</p>
    #
    #   @return [String]
    #
    DescribeClusterDbRevisionsInput = ::Struct.new(
      :cluster_identifier,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute marker
    #   <p>A string representing the starting point for the next set of revisions. If a value is
    #               returned in a response, you can retrieve the next set of revisions by providing the
    #               value in the <code>marker</code> parameter and retrying the command. If the
    #                   <code>marker</code> field is empty, all revisions have already been returned.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_db_revisions
    #   <p>A list of revisions.</p>
    #
    #   @return [Array<ClusterDbRevision>]
    #
    DescribeClusterDbRevisionsOutput = ::Struct.new(
      :marker,
      :cluster_db_revisions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute parameter_group_name
    #   <p>The name of a specific parameter group for which to return details. By default,
    #               details about all parameter groups and the default parameter group are
    #               returned.</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>100</code>
    #           </p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeClusterParameterGroups</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A tag key or keys for which you want to return all matching cluster parameter
    #               groups that are associated with the specified key or keys. For example, suppose that you
    #               have parameter groups that are tagged with keys called <code>owner</code> and
    #                   <code>environment</code>. If you specify both of these tag keys in the request,
    #               Amazon Redshift returns a response with the parameter groups that have either or both of these
    #               tag keys associated with them.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tag_values
    #   <p>A tag value or values for which you want to return all matching cluster parameter
    #               groups that are associated with the specified tag value or values. For example, suppose
    #               that you have parameter groups that are tagged with values called <code>admin</code> and
    #                   <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift
    #               returns a response with the parameter groups that have either or both of these tag
    #               values associated with them.</p>
    #
    #   @return [Array<String>]
    #
    DescribeClusterParameterGroupsInput = ::Struct.new(
      :parameter_group_name,
      :max_records,
      :marker,
      :tag_keys,
      :tag_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the output from the <a>DescribeClusterParameterGroups</a>
    #             action. </p>
    #
    # @!attribute marker
    #   <p>A value that indicates the starting point for the next set of response records in a
    #               subsequent request. If a value is returned in a response, you can retrieve the next set
    #               of records by providing this returned marker value in the <code>Marker</code> parameter
    #               and retrying the command. If the <code>Marker</code> field is empty, all response
    #               records have been retrieved for the request. </p>
    #
    #   @return [String]
    #
    # @!attribute parameter_groups
    #   <p>A list of <a>ClusterParameterGroup</a> instances. Each instance
    #               describes one cluster parameter group. </p>
    #
    #   @return [Array<ClusterParameterGroup>]
    #
    DescribeClusterParameterGroupsOutput = ::Struct.new(
      :marker,
      :parameter_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute parameter_group_name
    #   <p>The name of a cluster parameter group for which to return details.</p>
    #
    #   @return [String]
    #
    # @!attribute source
    #   <p>The parameter types to return. Specify <code>user</code> to show parameters that
    #               are different form the default. Similarly, specify <code>engine-default</code> to show
    #               parameters that are the same as the default parameter group. </p>
    #           <p>Default: All parameter types returned.</p>
    #           <p>Valid Values: <code>user</code> | <code>engine-default</code>
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>100</code>
    #           </p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeClusterParameters</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    #   @return [String]
    #
    DescribeClusterParametersInput = ::Struct.new(
      :parameter_group_name,
      :source,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the output from the <a>DescribeClusterParameters</a> action.
    #         </p>
    #
    # @!attribute parameters
    #   <p>A list of <a>Parameter</a> instances. Each instance lists the parameters
    #               of one cluster parameter group. </p>
    #
    #   @return [Array<Parameter>]
    #
    # @!attribute marker
    #   <p>A value that indicates the starting point for the next set of response records in a
    #               subsequent request. If a value is returned in a response, you can retrieve the next set
    #               of records by providing this returned marker value in the <code>Marker</code> parameter
    #               and retrying the command. If the <code>Marker</code> field is empty, all response
    #               records have been retrieved for the request. </p>
    #
    #   @return [String]
    #
    DescribeClusterParametersOutput = ::Struct.new(
      :parameters,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute cluster_security_group_name
    #   <p>The name of a cluster security group for which you are requesting details. You can
    #               specify either the <b>Marker</b> parameter or a <b>ClusterSecurityGroupName</b> parameter, but not both. </p>
    #           <p> Example: <code>securitygroup1</code>
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>100</code>
    #           </p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeClusterSecurityGroups</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #           <p>Constraints: You can specify either the <b>ClusterSecurityGroupName</b> parameter or the <b>Marker</b> parameter, but not both. </p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A tag key or keys for which you want to return all matching cluster security groups
    #               that are associated with the specified key or keys. For example, suppose that you have
    #               security groups that are tagged with keys called <code>owner</code> and
    #                   <code>environment</code>. If you specify both of these tag keys in the request,
    #               Amazon Redshift returns a response with the security groups that have either or both of these
    #               tag keys associated with them.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tag_values
    #   <p>A tag value or values for which you want to return all matching cluster security
    #               groups that are associated with the specified tag value or values. For example, suppose
    #               that you have security groups that are tagged with values called <code>admin</code> and
    #                   <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift
    #               returns a response with the security groups that have either or both of these tag values
    #               associated with them.</p>
    #
    #   @return [Array<String>]
    #
    DescribeClusterSecurityGroupsInput = ::Struct.new(
      :cluster_security_group_name,
      :max_records,
      :marker,
      :tag_keys,
      :tag_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute marker
    #   <p>A value that indicates the starting point for the next set of response records in a
    #               subsequent request. If a value is returned in a response, you can retrieve the next set
    #               of records by providing this returned marker value in the <code>Marker</code> parameter
    #               and retrying the command. If the <code>Marker</code> field is empty, all response
    #               records have been retrieved for the request. </p>
    #
    #   @return [String]
    #
    # @!attribute cluster_security_groups
    #   <p>A list of <a>ClusterSecurityGroup</a> instances. </p>
    #
    #   @return [Array<ClusterSecurityGroup>]
    #
    DescribeClusterSecurityGroupsOutput = ::Struct.new(
      :marker,
      :cluster_security_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute cluster_identifier
    #   <p>The identifier of the cluster which generated the requested snapshots.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_identifier
    #   <p>The snapshot identifier of the snapshot about which to return
    #               information.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_type
    #   <p>The type of snapshots for which you are requesting information. By default,
    #               snapshots of all types are returned.</p>
    #           <p>Valid Values: <code>automated</code> | <code>manual</code>
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>A value that requests only snapshots created at or after the specified time. The
    #               time value is specified in ISO 8601 format. For more information about ISO 8601, go to
    #               the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia page.</a>
    #           </p>
    #           <p>Example: <code>2012-07-16T18:00:00Z</code>
    #           </p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>A time value that requests only snapshots created at or before the specified time.
    #               The time value is specified in ISO 8601 format. For more information about ISO 8601, go
    #               to the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia
    #                   page.</a>
    #           </p>
    #           <p>Example: <code>2012-07-16T18:00:00Z</code>
    #           </p>
    #
    #   @return [Time]
    #
    # @!attribute max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>100</code>
    #           </p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeClusterSnapshots</a> request exceed
    #               the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    #   @return [String]
    #
    # @!attribute owner_account
    #   <p>The Amazon Web Services account used to create or copy the snapshot. Use this field to
    #               filter the results to snapshots owned by a particular account. To describe snapshots you
    #               own, either specify your Amazon Web Services account, or do not specify the
    #               parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A tag key or keys for which you want to return all matching cluster snapshots that
    #               are associated with the specified key or keys. For example, suppose that you have
    #               snapshots that are tagged with keys called <code>owner</code> and
    #                   <code>environment</code>. If you specify both of these tag keys in the request,
    #               Amazon Redshift returns a response with the snapshots that have either or both of these tag
    #               keys associated with them.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tag_values
    #   <p>A tag value or values for which you want to return all matching cluster snapshots
    #               that are associated with the specified tag value or values. For example, suppose that
    #               you have snapshots that are tagged with values called <code>admin</code> and
    #                   <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift
    #               returns a response with the snapshots that have either or both of these tag values
    #               associated with them.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute cluster_exists
    #   <p>A value that indicates whether to return snapshots only for an existing cluster.
    #               You can perform table-level restore only by using a snapshot of an existing cluster,
    #               that is, a cluster that has not been deleted. Values for this parameter work as follows: </p>
    #           <ul>
    #               <li>
    #                   <p>If <code>ClusterExists</code> is set to <code>true</code>,
    #                           <code>ClusterIdentifier</code> is required.</p>
    #               </li>
    #               <li>
    #                   <p>If <code>ClusterExists</code> is set to <code>false</code> and
    #                           <code>ClusterIdentifier</code> isn't specified, all snapshots
    #                       associated with deleted clusters (orphaned snapshots) are returned. </p>
    #               </li>
    #               <li>
    #                   <p>If <code>ClusterExists</code> is set to <code>false</code> and
    #                           <code>ClusterIdentifier</code> is specified for a deleted cluster, snapshots
    #                       associated with that cluster are returned.</p>
    #               </li>
    #               <li>
    #                   <p>If <code>ClusterExists</code> is set to <code>false</code> and
    #                           <code>ClusterIdentifier</code> is specified for an existing cluster, no
    #                       snapshots are returned. </p>
    #               </li>
    #            </ul>
    #
    #   @return [Boolean]
    #
    # @!attribute sorting_entities
    #   <p></p>
    #
    #   @return [Array<SnapshotSortingEntity>]
    #
    DescribeClusterSnapshotsInput = ::Struct.new(
      :cluster_identifier,
      :snapshot_identifier,
      :snapshot_type,
      :start_time,
      :end_time,
      :max_records,
      :marker,
      :owner_account,
      :tag_keys,
      :tag_values,
      :cluster_exists,
      :sorting_entities,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the output from the <a>DescribeClusterSnapshots</a> action.
    #         </p>
    #
    # @!attribute marker
    #   <p>A value that indicates the starting point for the next set of response records in a
    #               subsequent request. If a value is returned in a response, you can retrieve the next set
    #               of records by providing this returned marker value in the <code>Marker</code> parameter
    #               and retrying the command. If the <code>Marker</code> field is empty, all response
    #               records have been retrieved for the request. </p>
    #
    #   @return [String]
    #
    # @!attribute snapshots
    #   <p>A list of <a>Snapshot</a> instances. </p>
    #
    #   @return [Array<Snapshot>]
    #
    DescribeClusterSnapshotsOutput = ::Struct.new(
      :marker,
      :snapshots,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute cluster_subnet_group_name
    #   <p>The name of the cluster subnet group for which information is requested.</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>100</code>
    #           </p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeClusterSubnetGroups</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A tag key or keys for which you want to return all matching cluster subnet groups
    #               that are associated with the specified key or keys. For example, suppose that you have
    #               subnet groups that are tagged with keys called <code>owner</code> and
    #                   <code>environment</code>. If you specify both of these tag keys in the request,
    #               Amazon Redshift returns a response with the subnet groups that have either or both of these
    #               tag keys associated with them.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tag_values
    #   <p>A tag value or values for which you want to return all matching cluster subnet
    #               groups that are associated with the specified tag value or values. For example, suppose
    #               that you have subnet groups that are tagged with values called <code>admin</code> and
    #                   <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift
    #               returns a response with the subnet groups that have either or both of these tag values
    #               associated with them.</p>
    #
    #   @return [Array<String>]
    #
    DescribeClusterSubnetGroupsInput = ::Struct.new(
      :cluster_subnet_group_name,
      :max_records,
      :marker,
      :tag_keys,
      :tag_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the output from the <a>DescribeClusterSubnetGroups</a> action.
    #         </p>
    #
    # @!attribute marker
    #   <p>A value that indicates the starting point for the next set of response records in a
    #               subsequent request. If a value is returned in a response, you can retrieve the next set
    #               of records by providing this returned marker value in the <code>Marker</code> parameter
    #               and retrying the command. If the <code>Marker</code> field is empty, all response
    #               records have been retrieved for the request. </p>
    #
    #   @return [String]
    #
    # @!attribute cluster_subnet_groups
    #   <p>A list of <a>ClusterSubnetGroup</a> instances. </p>
    #
    #   @return [Array<ClusterSubnetGroup>]
    #
    DescribeClusterSubnetGroupsOutput = ::Struct.new(
      :marker,
      :cluster_subnet_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute maintenance_track_name
    #   <p>The name of the maintenance track. </p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>An integer value for the maximum number of maintenance tracks to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <code>DescribeClusterTracks</code> request exceed the
    #               value specified in <code>MaxRecords</code>, Amazon Redshift returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    #   @return [String]
    #
    DescribeClusterTracksInput = ::Struct.new(
      :maintenance_track_name,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute maintenance_tracks
    #   <p>A list of maintenance tracks output by the <code>DescribeClusterTracks</code>
    #               operation. </p>
    #
    #   @return [Array<MaintenanceTrack>]
    #
    # @!attribute marker
    #   <p>The starting point to return a set of response tracklist records. You can retrieve the
    #               next set of response records by providing the returned marker value in the
    #                   <code>Marker</code> parameter and retrying the request.</p>
    #
    #   @return [String]
    #
    DescribeClusterTracksOutput = ::Struct.new(
      :maintenance_tracks,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute cluster_version
    #   <p>The specific cluster version to return.</p>
    #           <p>Example: <code>1.0</code>
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute cluster_parameter_group_family
    #   <p>The name of a specific cluster parameter group family to return details
    #               for.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be 1 to 255 alphanumeric characters</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                   <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>100</code>
    #           </p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeClusterVersions</a> request exceed
    #               the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    #   @return [String]
    #
    DescribeClusterVersionsInput = ::Struct.new(
      :cluster_version,
      :cluster_parameter_group_family,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the output from the <a>DescribeClusterVersions</a> action.
    #         </p>
    #
    # @!attribute marker
    #   <p>A value that indicates the starting point for the next set of response records in a
    #               subsequent request. If a value is returned in a response, you can retrieve the next set
    #               of records by providing this returned marker value in the <code>Marker</code> parameter
    #               and retrying the command. If the <code>Marker</code> field is empty, all response
    #               records have been retrieved for the request. </p>
    #
    #   @return [String]
    #
    # @!attribute cluster_versions
    #   <p>A list of <code>Version</code> elements. </p>
    #
    #   @return [Array<ClusterVersion>]
    #
    DescribeClusterVersionsOutput = ::Struct.new(
      :marker,
      :cluster_versions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute cluster_identifier
    #   <p>The unique identifier of a cluster whose properties you are requesting. This
    #               parameter is case sensitive.</p>
    #           <p>The default is that all clusters defined for an account are returned.</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>100</code>
    #           </p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeClusters</a> request exceed the
    #               value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #           <p>Constraints: You can specify either the <b>ClusterIdentifier</b> parameter or the <b>Marker</b> parameter, but not both. </p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A tag key or keys for which you want to return all matching clusters that are
    #               associated with the specified key or keys. For example, suppose that you have clusters
    #               that are tagged with keys called <code>owner</code> and <code>environment</code>. If you
    #               specify both of these tag keys in the request, Amazon Redshift returns a response with the
    #               clusters that have either or both of these tag keys associated with them.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tag_values
    #   <p>A tag value or values for which you want to return all matching clusters that are
    #               associated with the specified tag value or values. For example, suppose that you have
    #               clusters that are tagged with values called <code>admin</code> and <code>test</code>. If
    #               you specify both of these tag values in the request, Amazon Redshift returns a response with
    #               the clusters that have either or both of these tag values associated with
    #               them.</p>
    #
    #   @return [Array<String>]
    #
    DescribeClustersInput = ::Struct.new(
      :cluster_identifier,
      :max_records,
      :marker,
      :tag_keys,
      :tag_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the output from the <a>DescribeClusters</a> action. </p>
    #
    # @!attribute marker
    #   <p>A value that indicates the starting point for the next set of response records in a
    #               subsequent request. If a value is returned in a response, you can retrieve the next set
    #               of records by providing this returned marker value in the <code>Marker</code> parameter
    #               and retrying the command. If the <code>Marker</code> field is empty, all response
    #               records have been retrieved for the request. </p>
    #
    #   @return [String]
    #
    # @!attribute clusters
    #   <p>A list of <code>Cluster</code> objects, where each object describes one cluster.
    #           </p>
    #
    #   @return [Array<Cluster>]
    #
    DescribeClustersOutput = ::Struct.new(
      :marker,
      :clusters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute consumer_arn
    #   <p>The Amazon Resource Name (ARN) of the consumer that returns in the list of datashares.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>An identifier giving the status of a datashare in the consumer cluster. If this field is specified, Amazon
    #               Redshift returns the list of datashares that have the specified status.</p>
    #
    #   Enum, one of: ["ACTIVE", "AVAILABLE"]
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeDataSharesForConsumer</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #               <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    #   @return [String]
    #
    DescribeDataSharesForConsumerInput = ::Struct.new(
      :consumer_arn,
      :status,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_shares
    #   <p>Shows the results of datashares available for consumers.</p>
    #
    #   @return [Array<DataShare>]
    #
    # @!attribute marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeDataSharesForConsumer</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #               <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    #   @return [String]
    #
    DescribeDataSharesForConsumerOutput = ::Struct.new(
      :data_shares,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute producer_arn
    #   <p>The Amazon Resource Name (ARN) of the producer that returns in the list of datashares.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>An identifier giving the status of a datashare in the producer. If this field is specified, Amazon
    #               Redshift returns the list of datashares that have the specified status.</p>
    #
    #   Enum, one of: ["ACTIVE", "AUTHORIZED", "PENDING_AUTHORIZATION", "DEAUTHORIZED", "REJECTED"]
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeDataSharesForProducer</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #               <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    #   @return [String]
    #
    DescribeDataSharesForProducerInput = ::Struct.new(
      :producer_arn,
      :status,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_shares
    #   <p>Shows the results of datashares available for producers.</p>
    #
    #   @return [Array<DataShare>]
    #
    # @!attribute marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeDataSharesForProducer</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #               <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    #   @return [String]
    #
    DescribeDataSharesForProducerOutput = ::Struct.new(
      :data_shares,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_share_arn
    #   <p>The identifier of the datashare to describe details of.</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeDataShares</a> request exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>
    #
    #   @return [String]
    #
    DescribeDataSharesInput = ::Struct.new(
      :data_share_arn,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_shares
    #   <p>The results returned from describing datashares.</p>
    #
    #   @return [Array<DataShare>]
    #
    # @!attribute marker
    #   <p>An optional parameter that specifies the starting point to return a set of response records. When the results of a <a>DescribeDataShares</a> request exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the <code>Marker</code> field of the response. You can retrieve the next set of response records by providing the returned marker value in the <code>Marker</code> parameter and retrying the request. </p>
    #
    #   @return [String]
    #
    DescribeDataSharesOutput = ::Struct.new(
      :data_shares,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute parameter_group_family
    #   <p>The name of the cluster parameter group family.</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>100</code>
    #           </p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeDefaultClusterParameters</a>
    #               request exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in
    #               the <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    #   @return [String]
    #
    DescribeDefaultClusterParametersInput = ::Struct.new(
      :parameter_group_family,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute default_cluster_parameters
    #   <p>Describes the default cluster parameters for a parameter group family.</p>
    #
    #   @return [DefaultClusterParameters]
    #
    DescribeDefaultClusterParametersOutput = ::Struct.new(
      :default_cluster_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_identifier
    #   <p>The cluster identifier associated with the described endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_owner
    #   <p>The Amazon Web Services account ID of the owner of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_name
    #   <p>The name of the endpoint to be described.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The virtual private cloud (VPC) identifier with access to the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist
    #               than the specified <code>MaxRecords</code> value, a pagination token called a <code>Marker</code> is
    #               included in the response so that the remaining results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous
    #               <code>DescribeEndpointAccess</code> request. If this parameter is specified, the
    #               response includes only records beyond the marker, up to the value specified by the
    #               <code>MaxRecords</code> parameter.</p>
    #
    #   @return [String]
    #
    DescribeEndpointAccessInput = ::Struct.new(
      :cluster_identifier,
      :resource_owner,
      :endpoint_name,
      :vpc_id,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_access_list
    #   <p>The list of endpoints with access to the cluster.</p>
    #
    #   @return [Array<EndpointAccess>]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous
    #               <code>DescribeEndpointAccess</code> request. If this parameter is specified, the
    #               response includes only records beyond the marker, up to the value specified by the
    #               <code>MaxRecords</code> parameter.</p>
    #
    #   @return [String]
    #
    DescribeEndpointAccessOutput = ::Struct.new(
      :endpoint_access_list,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_identifier
    #   <p>The cluster identifier of the cluster to access.</p>
    #
    #   @return [String]
    #
    # @!attribute account
    #   <p>The AAmazon Web Services account ID of either the cluster owner (grantor) or grantee.
    #          If <code>Grantee</code> parameter is true, then the <code>Account</code> value is of the grantor.</p>
    #
    #   @return [String]
    #
    # @!attribute grantee
    #   <p>Indicates whether to check authorization from a grantor or grantee point of view.
    #              If true, Amazon Redshift returns endpoint authorizations that you've been granted.
    #              If false (default), checks authorization from a grantor point of view.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist
    #               than the specified <code>MaxRecords</code> value, a pagination token called a <code>Marker</code> is
    #               included in the response so that the remaining results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous
    #               <code>DescribeEndpointAuthorization</code> request. If this parameter is specified, the
    #               response includes only records beyond the marker, up to the value specified by the
    #               <code>MaxRecords</code> parameter.</p>
    #
    #   @return [String]
    #
    DescribeEndpointAuthorizationInput = ::Struct.new(
      :cluster_identifier,
      :account,
      :grantee,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_authorization_list
    #   <p>The authorizations to an endpoint.</p>
    #
    #   @return [Array<EndpointAuthorization>]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous
    #               <code>DescribeEndpointAuthorization</code> request. If this parameter is specified, the
    #               response includes only records beyond the marker, up to the value specified by the
    #               <code>MaxRecords</code> parameter.</p>
    #
    #   @return [String]
    #
    DescribeEndpointAuthorizationOutput = ::Struct.new(
      :endpoint_authorization_list,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute source_type
    #   <p>The source type, such as cluster or parameter group, to which the described event
    #               categories apply.</p>
    #           <p>Valid values: cluster, cluster-snapshot, cluster-parameter-group, cluster-security-group, and scheduled-action.</p>
    #
    #   @return [String]
    #
    DescribeEventCategoriesInput = ::Struct.new(
      :source_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute event_categories_map_list
    #   <p>A list of event categories descriptions.</p>
    #
    #   @return [Array<EventCategoriesMap>]
    #
    DescribeEventCategoriesOutput = ::Struct.new(
      :event_categories_map_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute subscription_name
    #   <p>The name of the Amazon Redshift event notification subscription to be
    #               described.</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>100</code>
    #           </p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a DescribeEventSubscriptions request exceed the value
    #               specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the <code>Marker</code>
    #               field of the response. You can retrieve the next set of response records by providing
    #               the returned marker value in the <code>Marker</code> parameter and retrying the request.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A tag key or keys for which you want to return all matching event notification
    #               subscriptions that are associated with the specified key or keys. For example, suppose
    #               that you have subscriptions that are tagged with keys called <code>owner</code> and
    #                   <code>environment</code>. If you specify both of these tag keys in the request,
    #               Amazon Redshift returns a response with the subscriptions that have either or both of these
    #               tag keys associated with them.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tag_values
    #   <p>A tag value or values for which you want to return all matching event notification
    #               subscriptions that are associated with the specified tag value or values. For example,
    #               suppose that you have subscriptions that are tagged with values called
    #                   <code>admin</code> and <code>test</code>. If you specify both of these tag values in
    #               the request, Amazon Redshift returns a response with the subscriptions that have either or
    #               both of these tag values associated with them.</p>
    #
    #   @return [Array<String>]
    #
    DescribeEventSubscriptionsInput = ::Struct.new(
      :subscription_name,
      :max_records,
      :marker,
      :tag_keys,
      :tag_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute marker
    #   <p>A value that indicates the starting point for the next set of response records in a
    #               subsequent request. If a value is returned in a response, you can retrieve the next set
    #               of records by providing this returned marker value in the <code>Marker</code> parameter
    #               and retrying the command. If the <code>Marker</code> field is empty, all response
    #               records have been retrieved for the request. </p>
    #
    #   @return [String]
    #
    # @!attribute event_subscriptions_list
    #   <p>A list of event subscriptions.</p>
    #
    #   @return [Array<EventSubscription>]
    #
    DescribeEventSubscriptionsOutput = ::Struct.new(
      :marker,
      :event_subscriptions_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute source_identifier
    #   <p>The identifier of the event source for which events will be returned. If this
    #               parameter is not specified, then all sources are included in the response.</p>
    #           <p>Constraints:</p>
    #           <p>If <i>SourceIdentifier</i> is supplied,
    #                   <i>SourceType</i> must also be provided.</p>
    #           <ul>
    #               <li>
    #                   <p>Specify a cluster identifier when <i>SourceType</i> is
    #                           <code>cluster</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Specify a cluster security group name when <i>SourceType</i>
    #                       is <code>cluster-security-group</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Specify a cluster parameter group name when <i>SourceType</i>
    #                       is <code>cluster-parameter-group</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Specify a cluster snapshot identifier when <i>SourceType</i>
    #                       is <code>cluster-snapshot</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute source_type
    #   <p>The event source to retrieve events for. If no value is specified, all events are
    #               returned.</p>
    #           <p>Constraints:</p>
    #           <p>If <i>SourceType</i> is supplied,
    #                   <i>SourceIdentifier</i> must also be provided.</p>
    #           <ul>
    #               <li>
    #                   <p>Specify <code>cluster</code> when <i>SourceIdentifier</i> is
    #                       a cluster identifier.</p>
    #               </li>
    #               <li>
    #                   <p>Specify <code>cluster-security-group</code> when
    #                           <i>SourceIdentifier</i> is a cluster security group
    #                       name.</p>
    #               </li>
    #               <li>
    #                   <p>Specify <code>cluster-parameter-group</code> when
    #                           <i>SourceIdentifier</i> is a cluster parameter group
    #                       name.</p>
    #               </li>
    #               <li>
    #                   <p>Specify <code>cluster-snapshot</code> when
    #                           <i>SourceIdentifier</i> is a cluster snapshot
    #                       identifier.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["cluster", "cluster-parameter-group", "cluster-security-group", "cluster-snapshot", "scheduled-action"]
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The beginning of the time interval to retrieve events for, specified in ISO 8601
    #               format. For more information about ISO 8601, go to the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia page.</a>
    #           </p>
    #           <p>Example: <code>2009-07-08T18:00Z</code>
    #           </p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The end of the time interval for which to retrieve events, specified in ISO 8601
    #               format. For more information about ISO 8601, go to the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia page.</a>
    #           </p>
    #           <p>Example: <code>2009-07-08T18:00Z</code>
    #           </p>
    #
    #   @return [Time]
    #
    # @!attribute duration
    #   <p>The number of minutes prior to the time of the request for which to retrieve
    #               events. For example, if the request is sent at 18:00 and you specify a duration of 60,
    #               then only events which have occurred after 17:00 will be returned.</p>
    #           <p>Default: <code>60</code>
    #           </p>
    #
    #   @return [Integer]
    #
    # @!attribute max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>100</code>
    #           </p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeEvents</a> request exceed the value
    #               specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the <code>Marker</code>
    #               field of the response. You can retrieve the next set of response records by providing
    #               the returned marker value in the <code>Marker</code> parameter and retrying the request.
    #           </p>
    #
    #   @return [String]
    #
    DescribeEventsInput = ::Struct.new(
      :source_identifier,
      :source_type,
      :start_time,
      :end_time,
      :duration,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute marker
    #   <p>A value that indicates the starting point for the next set of response records in a
    #               subsequent request. If a value is returned in a response, you can retrieve the next set
    #               of records by providing this returned marker value in the <code>Marker</code> parameter
    #               and retrying the command. If the <code>Marker</code> field is empty, all response
    #               records have been retrieved for the request. </p>
    #
    #   @return [String]
    #
    # @!attribute events
    #   <p>A list of <code>Event</code> instances. </p>
    #
    #   @return [Array<Event>]
    #
    DescribeEventsOutput = ::Struct.new(
      :marker,
      :events,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute hsm_client_certificate_identifier
    #   <p>The identifier of a specific HSM client certificate for which you want information.
    #               If no identifier is specified, information is returned for all HSM client certificates
    #               owned by your Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>100</code>
    #           </p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeHsmClientCertificates</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A tag key or keys for which you want to return all matching HSM client certificates
    #               that are associated with the specified key or keys. For example, suppose that you have
    #               HSM client certificates that are tagged with keys called <code>owner</code> and
    #                   <code>environment</code>. If you specify both of these tag keys in the request,
    #               Amazon Redshift returns a response with the HSM client certificates that have either or both
    #               of these tag keys associated with them.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tag_values
    #   <p>A tag value or values for which you want to return all matching HSM client
    #               certificates that are associated with the specified tag value or values. For example,
    #               suppose that you have HSM client certificates that are tagged with values called
    #                   <code>admin</code> and <code>test</code>. If you specify both of these tag values in
    #               the request, Amazon Redshift returns a response with the HSM client certificates that have
    #               either or both of these tag values associated with them.</p>
    #
    #   @return [Array<String>]
    #
    DescribeHsmClientCertificatesInput = ::Struct.new(
      :hsm_client_certificate_identifier,
      :max_records,
      :marker,
      :tag_keys,
      :tag_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute marker
    #   <p>A value that indicates the starting point for the next set of response records in a
    #               subsequent request. If a value is returned in a response, you can retrieve the next set
    #               of records by providing this returned marker value in the <code>Marker</code> parameter
    #               and retrying the command. If the <code>Marker</code> field is empty, all response
    #               records have been retrieved for the request. </p>
    #
    #   @return [String]
    #
    # @!attribute hsm_client_certificates
    #   <p>A list of the identifiers for one or more HSM client certificates used by Amazon Redshift
    #               clusters to store and retrieve database encryption keys in an HSM.</p>
    #
    #   @return [Array<HsmClientCertificate>]
    #
    DescribeHsmClientCertificatesOutput = ::Struct.new(
      :marker,
      :hsm_client_certificates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute hsm_configuration_identifier
    #   <p>The identifier of a specific Amazon Redshift HSM configuration to be described. If no
    #               identifier is specified, information is returned for all HSM configurations owned by
    #               your Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>100</code>
    #           </p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeHsmConfigurations</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A tag key or keys for which you want to return all matching HSM configurations that
    #               are associated with the specified key or keys. For example, suppose that you have HSM
    #               configurations that are tagged with keys called <code>owner</code> and
    #                   <code>environment</code>. If you specify both of these tag keys in the request,
    #               Amazon Redshift returns a response with the HSM configurations that have either or both of
    #               these tag keys associated with them.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tag_values
    #   <p>A tag value or values for which you want to return all matching HSM configurations
    #               that are associated with the specified tag value or values. For example, suppose that
    #               you have HSM configurations that are tagged with values called <code>admin</code> and
    #                   <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift
    #               returns a response with the HSM configurations that have either or both of these tag
    #               values associated with them.</p>
    #
    #   @return [Array<String>]
    #
    DescribeHsmConfigurationsInput = ::Struct.new(
      :hsm_configuration_identifier,
      :max_records,
      :marker,
      :tag_keys,
      :tag_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute marker
    #   <p>A value that indicates the starting point for the next set of response records in a
    #               subsequent request. If a value is returned in a response, you can retrieve the next set
    #               of records by providing this returned marker value in the <code>Marker</code> parameter
    #               and retrying the command. If the <code>Marker</code> field is empty, all response
    #               records have been retrieved for the request. </p>
    #
    #   @return [String]
    #
    # @!attribute hsm_configurations
    #   <p>A list of <code>HsmConfiguration</code> objects.</p>
    #
    #   @return [Array<HsmConfiguration>]
    #
    DescribeHsmConfigurationsOutput = ::Struct.new(
      :marker,
      :hsm_configurations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute cluster_identifier
    #   <p>The identifier of the cluster from which to get the logging status.</p>
    #           <p>Example: <code>examplecluster</code>
    #           </p>
    #
    #   @return [String]
    #
    DescribeLoggingStatusInput = ::Struct.new(
      :cluster_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the status of logging for a cluster.</p>
    #
    # @!attribute logging_enabled
    #   <p>
    #               <code>true</code> if logging is on, <code>false</code> if logging is off.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute bucket_name
    #   <p>The name of the S3 bucket where the log files are stored.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_key_prefix
    #   <p>The prefix applied to the log file names.</p>
    #
    #   @return [String]
    #
    # @!attribute last_successful_delivery_time
    #   <p>The last time that logs were delivered.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_failure_time
    #   <p>The last time when logs failed to be delivered.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_failure_message
    #   <p>The message indicating that logs failed to be delivered.</p>
    #
    #   @return [String]
    #
    # @!attribute log_destination_type
    #   <p>The log destination type. An enum with possible values of <code>s3</code> and <code>cloudwatch</code>.</p>
    #
    #   Enum, one of: ["s3", "cloudwatch"]
    #
    #   @return [String]
    #
    # @!attribute log_exports
    #   <p>The collection of exported log types. Log types include the connection log, user log and user activity log.</p>
    #
    #   @return [Array<String>]
    #
    DescribeLoggingStatusOutput = ::Struct.new(
      :logging_enabled,
      :bucket_name,
      :s3_key_prefix,
      :last_successful_delivery_time,
      :last_failure_time,
      :last_failure_message,
      :log_destination_type,
      :log_exports,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.logging_enabled ||= false
      end
    end

    # @!attribute action_type
    #   <p>The action type to evaluate for possible node configurations.
    #               Specify "restore-cluster" to get configuration combinations based on an existing snapshot.
    #               Specify "recommend-node-config" to get configuration recommendations based on an existing cluster or snapshot.
    #               Specify "resize-cluster" to get configuration combinations for elastic resize based on an existing cluster.
    #           </p>
    #
    #   Enum, one of: ["restore-cluster", "recommend-node-config", "resize-cluster"]
    #
    #   @return [String]
    #
    # @!attribute cluster_identifier
    #   <p>The identifier of the cluster to evaluate for possible node configurations.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_identifier
    #   <p>The identifier of the snapshot to evaluate for possible node configurations.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_account
    #   <p>The Amazon Web Services account used to create or copy the snapshot.
    #               Required if you are restoring a snapshot you do not own,
    #               optional if you own the snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>A set of name, operator, and value items to filter the results.</p>
    #
    #   @return [Array<NodeConfigurationOptionsFilter>]
    #
    # @!attribute marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeNodeConfigurationOptions</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #               <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>500</code>
    #           </p>
    #           <p>Constraints: minimum 100, maximum 500.</p>
    #
    #   @return [Integer]
    #
    DescribeNodeConfigurationOptionsInput = ::Struct.new(
      :action_type,
      :cluster_identifier,
      :snapshot_identifier,
      :owner_account,
      :filters,
      :marker,
      :max_records,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute node_configuration_option_list
    #   <p>A list of valid node configurations.</p>
    #
    #   @return [Array<NodeConfigurationOption>]
    #
    # @!attribute marker
    #   <p>A value that indicates the starting point for the next set of response records in a
    #               subsequent request. If a value is returned in a response, you can retrieve the next set
    #               of records by providing this returned marker value in the <code>Marker</code> parameter
    #               and retrying the command. If the <code>Marker</code> field is empty, all response
    #               records have been retrieved for the request. </p>
    #
    #   @return [String]
    #
    DescribeNodeConfigurationOptionsOutput = ::Struct.new(
      :node_configuration_option_list,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute cluster_version
    #   <p>The version filter value. Specify this parameter to show only the available
    #               offerings matching the specified version.</p>
    #           <p>Default: All versions.</p>
    #           <p>Constraints: Must be one of the version returned from <a>DescribeClusterVersions</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute node_type
    #   <p>The node type filter value. Specify this parameter to show only the available
    #               offerings matching the specified node type.</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>100</code>
    #           </p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeOrderableClusterOptions</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    #   @return [String]
    #
    DescribeOrderableClusterOptionsInput = ::Struct.new(
      :cluster_version,
      :node_type,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the output from the <a>DescribeOrderableClusterOptions</a>
    #             action. </p>
    #
    # @!attribute orderable_cluster_options
    #   <p>An <code>OrderableClusterOption</code> structure containing information about
    #               orderable options for the cluster.</p>
    #
    #   @return [Array<OrderableClusterOption>]
    #
    # @!attribute marker
    #   <p>A value that indicates the starting point for the next set of response records in a
    #               subsequent request. If a value is returned in a response, you can retrieve the next set
    #               of records by providing this returned marker value in the <code>Marker</code> parameter
    #               and retrying the command. If the <code>Marker</code> field is empty, all response
    #               records have been retrieved for the request. </p>
    #
    #   @return [String]
    #
    DescribeOrderableClusterOptionsOutput = ::Struct.new(
      :orderable_cluster_options,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID that owns the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_identifier
    #   <p>The cluster identifier of the cluster whose partner integration is being described.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the database whose partner integration is being described. If database name is not specified, then all databases in the cluster are described.</p>
    #
    #   @return [String]
    #
    # @!attribute partner_name
    #   <p>The name of the partner that is being described. If partner name is not specified, then all partner integrations are described.</p>
    #
    #   @return [String]
    #
    DescribePartnersInput = ::Struct.new(
      :account_id,
      :cluster_identifier,
      :database_name,
      :partner_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute partner_integration_info_list
    #   <p>A list of partner integrations.</p>
    #
    #   @return [Array<PartnerIntegrationInfo>]
    #
    DescribePartnersOutput = ::Struct.new(
      :partner_integration_info_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute reserved_node_id
    #   <p>The identifier of the source reserved node in a reserved-node exchange request.</p>
    #
    #   @return [String]
    #
    # @!attribute reserved_node_exchange_request_id
    #   <p>The identifier of the reserved-node exchange request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>Marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous <code>DescribeReservedNodeExchangeStatus</code> request. If this
    #               parameter is specified, the response includes only records beyond the marker, up to the value
    #               specified by the <code>MaxRecords</code> parameter. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request.</p>
    #
    #   @return [String]
    #
    DescribeReservedNodeExchangeStatusInput = ::Struct.new(
      :reserved_node_id,
      :reserved_node_exchange_request_id,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute reserved_node_exchange_status_details
    #   <p>The details of the reserved-node exchange request, including the status, request
    #               time, source reserved-node identifier, and additional details.</p>
    #
    #   @return [Array<ReservedNodeExchangeStatus>]
    #
    # @!attribute marker
    #   <p>A pagination token provided by a previous <code>DescribeReservedNodeExchangeStatus</code> request.</p>
    #
    #   @return [String]
    #
    DescribeReservedNodeExchangeStatusOutput = ::Struct.new(
      :reserved_node_exchange_status_details,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute reserved_node_offering_id
    #   <p>The unique identifier for the offering.</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>100</code>
    #           </p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeReservedNodeOfferings</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    #   @return [String]
    #
    DescribeReservedNodeOfferingsInput = ::Struct.new(
      :reserved_node_offering_id,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute marker
    #   <p>A value that indicates the starting point for the next set of response records in a
    #               subsequent request. If a value is returned in a response, you can retrieve the next set
    #               of records by providing this returned marker value in the <code>Marker</code> parameter
    #               and retrying the command. If the <code>Marker</code> field is empty, all response
    #               records have been retrieved for the request. </p>
    #
    #   @return [String]
    #
    # @!attribute reserved_node_offerings
    #   <p>A list of <code>ReservedNodeOffering</code> objects.</p>
    #
    #   @return [Array<ReservedNodeOffering>]
    #
    DescribeReservedNodeOfferingsOutput = ::Struct.new(
      :marker,
      :reserved_node_offerings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute reserved_node_id
    #   <p>Identifier for the node reservation.</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>100</code>
    #           </p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeReservedNodes</a> request exceed
    #               the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    #   @return [String]
    #
    DescribeReservedNodesInput = ::Struct.new(
      :reserved_node_id,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute marker
    #   <p>A value that indicates the starting point for the next set of response records in a
    #               subsequent request. If a value is returned in a response, you can retrieve the next set
    #               of records by providing this returned marker value in the <code>Marker</code> parameter
    #               and retrying the command. If the <code>Marker</code> field is empty, all response
    #               records have been retrieved for the request. </p>
    #
    #   @return [String]
    #
    # @!attribute reserved_nodes
    #   <p>The list of <code>ReservedNode</code> objects.</p>
    #
    #   @return [Array<ReservedNode>]
    #
    DescribeReservedNodesOutput = ::Struct.new(
      :marker,
      :reserved_nodes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute cluster_identifier
    #   <p>The unique identifier of a cluster whose resize progress you are requesting. This
    #               parameter is case-sensitive.</p>
    #           <p>By default, resize operations for all clusters defined for an Amazon Web Services account are
    #               returned.</p>
    #
    #   @return [String]
    #
    DescribeResizeInput = ::Struct.new(
      :cluster_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the result of a cluster resize operation.</p>
    #
    # @!attribute target_node_type
    #   <p>The node type that the cluster will have after the resize operation is
    #               complete.</p>
    #
    #   @return [String]
    #
    # @!attribute target_number_of_nodes
    #   <p>The number of nodes that the cluster will have after the resize operation is
    #               complete.</p>
    #
    #   @return [Integer]
    #
    # @!attribute target_cluster_type
    #   <p>The cluster type after the resize operation is complete.</p>
    #           <p>Valid Values: <code>multi-node</code> | <code>single-node</code>
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the resize operation.</p>
    #           <p>Valid Values: <code>NONE</code> | <code>IN_PROGRESS</code> | <code>FAILED</code> |
    #                   <code>SUCCEEDED</code> | <code>CANCELLING</code>
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute import_tables_completed
    #   <p>The names of tables that have been completely imported .</p>
    #           <p>Valid Values: List of table names.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute import_tables_in_progress
    #   <p>The names of tables that are being currently imported.</p>
    #           <p>Valid Values: List of table names.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute import_tables_not_started
    #   <p>The names of tables that have not been yet imported.</p>
    #           <p>Valid Values: List of table names</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute avg_resize_rate_in_mega_bytes_per_second
    #   <p>The average rate of the resize operation over the last few minutes, measured in
    #               megabytes per second. After the resize operation completes, this value shows the average
    #               rate of the entire resize operation.</p>
    #
    #   @return [Float]
    #
    # @!attribute total_resize_data_in_mega_bytes
    #   <p>The estimated total amount of data, in megabytes, on the cluster before the resize
    #               operation began.</p>
    #
    #   @return [Integer]
    #
    # @!attribute progress_in_mega_bytes
    #   <p>While the resize operation is in progress, this value shows the current amount of
    #               data, in megabytes, that has been processed so far. When the resize operation is
    #               complete, this value shows the total amount of data, in megabytes, on the cluster, which
    #               may be more or less than TotalResizeDataInMegaBytes (the estimated total amount of data
    #               before resize).</p>
    #
    #   @return [Integer]
    #
    # @!attribute elapsed_time_in_seconds
    #   <p>The amount of seconds that have elapsed since the resize operation began. After the
    #               resize operation completes, this value shows the total actual time, in seconds, for the
    #               resize operation.</p>
    #
    #   @return [Integer]
    #
    # @!attribute estimated_time_to_completion_in_seconds
    #   <p>The estimated time remaining, in seconds, until the resize operation is complete.
    #               This value is calculated based on the average resize rate and the estimated amount of
    #               data remaining to be processed. Once the resize operation is complete, this value will
    #               be 0.</p>
    #
    #   @return [Integer]
    #
    # @!attribute resize_type
    #   <p>An enum with possible values of <code>ClassicResize</code> and
    #                   <code>ElasticResize</code>. These values describe the type of resize operation being
    #               performed. </p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>An optional string to provide additional details about the resize action.</p>
    #
    #   @return [String]
    #
    # @!attribute target_encryption_type
    #   <p>The type of encryption for the cluster after the resize is complete.</p>
    #           <p>Possible values are <code>KMS</code> and <code>None</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute data_transfer_progress_percent
    #   <p>The percent of data transferred from source cluster to target cluster.</p>
    #
    #   @return [Float]
    #
    DescribeResizeOutput = ::Struct.new(
      :target_node_type,
      :target_number_of_nodes,
      :target_cluster_type,
      :status,
      :import_tables_completed,
      :import_tables_in_progress,
      :import_tables_not_started,
      :avg_resize_rate_in_mega_bytes_per_second,
      :total_resize_data_in_mega_bytes,
      :progress_in_mega_bytes,
      :elapsed_time_in_seconds,
      :estimated_time_to_completion_in_seconds,
      :resize_type,
      :message,
      :target_encryption_type,
      :data_transfer_progress_percent,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scheduled_action_name
    #   <p>The name of the scheduled action to retrieve. </p>
    #
    #   @return [String]
    #
    # @!attribute target_action_type
    #   <p>The type of the scheduled actions to retrieve. </p>
    #
    #   Enum, one of: ["ResizeCluster", "PauseCluster", "ResumeCluster"]
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The start time in UTC of the scheduled actions to retrieve.
    #               Only active scheduled actions that have invocations after this time are retrieved.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The end time in UTC of the scheduled action to retrieve.
    #               Only active scheduled actions that have invocations before this time are retrieved.</p>
    #
    #   @return [Time]
    #
    # @!attribute active
    #   <p>If true, retrieve only active scheduled actions.
    #              If false, retrieve only disabled scheduled actions. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute filters
    #   <p>List of scheduled action filters. </p>
    #
    #   @return [Array<ScheduledActionFilter>]
    #
    # @!attribute marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeScheduledActions</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #               <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #               <p>Default: <code>100</code>
    #               </p>
    #               <p>Constraints: minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    DescribeScheduledActionsInput = ::Struct.new(
      :scheduled_action_name,
      :target_action_type,
      :start_time,
      :end_time,
      :active,
      :filters,
      :marker,
      :max_records,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeScheduledActions</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #               <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    #   @return [String]
    #
    # @!attribute scheduled_actions
    #   <p>List of retrieved scheduled actions. </p>
    #
    #   @return [Array<ScheduledAction>]
    #
    DescribeScheduledActionsOutput = ::Struct.new(
      :marker,
      :scheduled_actions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The result of the <code>DescribeSnapshotCopyGrants</code> action.</p>
    #
    # @!attribute snapshot_copy_grant_name
    #   <p>The name of the snapshot copy grant.</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>100</code>
    #           </p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <code>DescribeSnapshotCopyGrant</code> request exceed the
    #               value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #           <p>Constraints: You can specify either the <b>SnapshotCopyGrantName</b> parameter or the <b>Marker</b> parameter, but not both. </p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A tag key or keys for which you want to return all matching resources that are
    #               associated with the specified key or keys. For example, suppose that you have resources
    #               tagged with keys called <code>owner</code> and <code>environment</code>. If you specify
    #               both of these tag keys in the request, Amazon Redshift returns a response with all resources
    #               that have either or both of these tag keys associated with them.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tag_values
    #   <p>A tag value or values for which you want to return all matching resources that are
    #               associated with the specified value or values. For example, suppose that you have
    #               resources tagged with values called <code>admin</code> and <code>test</code>. If you
    #               specify both of these tag values in the request, Amazon Redshift returns a response with all
    #               resources that have either or both of these tag values associated with them.</p>
    #
    #   @return [Array<String>]
    #
    DescribeSnapshotCopyGrantsInput = ::Struct.new(
      :snapshot_copy_grant_name,
      :max_records,
      :marker,
      :tag_keys,
      :tag_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <code>DescribeSnapshotCopyGrant</code> request exceed the
    #               value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #                   <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #           <p>Constraints: You can specify either the <b>SnapshotCopyGrantName</b> parameter or the <b>Marker</b> parameter, but not both. </p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_copy_grants
    #   <p>The list of <code>SnapshotCopyGrant</code> objects.</p>
    #
    #   @return [Array<SnapshotCopyGrant>]
    #
    DescribeSnapshotCopyGrantsOutput = ::Struct.new(
      :marker,
      :snapshot_copy_grants,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_identifier
    #   <p>The unique identifier for the cluster whose snapshot schedules you want to
    #               view.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule_identifier
    #   <p>A unique identifier for a snapshot schedule.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The key value for a snapshot schedule tag.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tag_values
    #   <p>The value corresponding to the key of the snapshot schedule tag.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute marker
    #   <p>A value that indicates the starting point for the next set of response records in a
    #               subsequent request. If a value is returned in a response, you can retrieve the next set
    #               of records by providing this returned marker value in the <code>marker</code> parameter
    #               and retrying the command. If the <code>marker</code> field is empty, all response
    #               records have been retrieved for the request.</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number or response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned <code>marker</code>
    #               value.</p>
    #
    #   @return [Integer]
    #
    DescribeSnapshotSchedulesInput = ::Struct.new(
      :cluster_identifier,
      :schedule_identifier,
      :tag_keys,
      :tag_values,
      :marker,
      :max_records,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute snapshot_schedules
    #   <p>A list of SnapshotSchedules.</p>
    #
    #   @return [Array<SnapshotSchedule>]
    #
    # @!attribute marker
    #   <p>A value that indicates the starting point for the next set of response records in a
    #               subsequent request. If a value is returned in a response, you can retrieve the next set
    #               of records by providing this returned marker value in the <code>marker</code> parameter
    #               and retrying the command. If the <code>marker</code> field is empty, all response
    #               records have been retrieved for the request.</p>
    #
    #   @return [String]
    #
    DescribeSnapshotSchedulesOutput = ::Struct.new(
      :snapshot_schedules,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DescribeStorageInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute total_backup_size_in_mega_bytes
    #   <p>The total amount of storage currently used for snapshots.</p>
    #
    #   @return [Float]
    #
    # @!attribute total_provisioned_storage_in_mega_bytes
    #   <p>The total amount of storage currently provisioned.</p>
    #
    #   @return [Float]
    #
    DescribeStorageOutput = ::Struct.new(
      :total_backup_size_in_mega_bytes,
      :total_provisioned_storage_in_mega_bytes,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.total_backup_size_in_mega_bytes ||= 0
        self.total_provisioned_storage_in_mega_bytes ||= 0
      end
    end

    # <p></p>
    #
    # @!attribute cluster_identifier
    #   <p>The Amazon Redshift cluster that the table is being restored to.</p>
    #
    #   @return [String]
    #
    # @!attribute table_restore_request_id
    #   <p>The identifier of the table restore request to return status for. If you don't
    #               specify a <code>TableRestoreRequestId</code> value, then
    #                   <code>DescribeTableRestoreStatus</code> returns the status of all in-progress table
    #               restore requests.</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist
    #               than the specified <code>MaxRecords</code> value, a pagination token called a marker is
    #               included in the response so that the remaining results can be retrieved.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous
    #                   <code>DescribeTableRestoreStatus</code> request. If this parameter is specified, the
    #               response includes only records beyond the marker, up to the value specified by the
    #                   <code>MaxRecords</code> parameter.</p>
    #
    #   @return [String]
    #
    DescribeTableRestoreStatusInput = ::Struct.new(
      :cluster_identifier,
      :table_restore_request_id,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute table_restore_status_details
    #   <p>A list of status details for one or more table restore requests.</p>
    #
    #   @return [Array<TableRestoreStatus>]
    #
    # @!attribute marker
    #   <p>A pagination token that can be used in a subsequent <a>DescribeTableRestoreStatus</a> request.</p>
    #
    #   @return [String]
    #
    DescribeTableRestoreStatusOutput = ::Struct.new(
      :table_restore_status_details,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute resource_name
    #   <p>The Amazon Resource Name (ARN) for which you want to describe the tag or tags. For
    #               example, <code>arn:aws:redshift:us-east-2:123456789:cluster:t1</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of resource with which you want to view tags. Valid resource types are: </p>
    #           <ul>
    #               <li>
    #                   <p>Cluster</p>
    #               </li>
    #               <li>
    #                   <p>CIDR/IP</p>
    #               </li>
    #               <li>
    #                   <p>EC2 security group</p>
    #               </li>
    #               <li>
    #                   <p>Snapshot</p>
    #               </li>
    #               <li>
    #                   <p>Cluster security group</p>
    #               </li>
    #               <li>
    #                   <p>Subnet group</p>
    #               </li>
    #               <li>
    #                   <p>HSM connection</p>
    #               </li>
    #               <li>
    #                   <p>HSM certificate</p>
    #               </li>
    #               <li>
    #                   <p>Parameter group</p>
    #               </li>
    #               <li>
    #                   <p>Snapshot copy grant</p>
    #               </li>
    #            </ul>
    #           <p>For more information about Amazon Redshift resource types and constructing ARNs, go to
    #                   <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-overview.html redshift-iam-access-control-specify-actions">Specifying Policy Elements: Actions, Effects, Resources, and Principals</a> in
    #               the Amazon Redshift Cluster Management Guide. </p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number or response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned <code>marker</code> value.
    #           </p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>A value that indicates the starting point for the next set of response records in a
    #               subsequent request. If a value is returned in a response, you can retrieve the next set
    #               of records by providing this returned marker value in the <code>marker</code> parameter
    #               and retrying the command. If the <code>marker</code> field is empty, all response
    #               records have been retrieved for the request. </p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A tag key or keys for which you want to return all matching resources that are
    #               associated with the specified key or keys. For example, suppose that you have resources
    #               tagged with keys called <code>owner</code> and <code>environment</code>. If you specify
    #               both of these tag keys in the request, Amazon Redshift returns a response with all resources
    #               that have either or both of these tag keys associated with them.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tag_values
    #   <p>A tag value or values for which you want to return all matching resources that are
    #               associated with the specified value or values. For example, suppose that you have
    #               resources tagged with values called <code>admin</code> and <code>test</code>. If you
    #               specify both of these tag values in the request, Amazon Redshift returns a response with all
    #               resources that have either or both of these tag values associated with them.</p>
    #
    #   @return [Array<String>]
    #
    DescribeTagsInput = ::Struct.new(
      :resource_name,
      :resource_type,
      :max_records,
      :marker,
      :tag_keys,
      :tag_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute tagged_resources
    #   <p>A list of tags with their associated resources.</p>
    #
    #   @return [Array<TaggedResource>]
    #
    # @!attribute marker
    #   <p>A value that indicates the starting point for the next set of response records in a
    #               subsequent request. If a value is returned in a response, you can retrieve the next set
    #               of records by providing this returned marker value in the <code>Marker</code> parameter
    #               and retrying the command. If the <code>Marker</code> field is empty, all response
    #               records have been retrieved for the request. </p>
    #
    #   @return [String]
    #
    DescribeTagsOutput = ::Struct.new(
      :tagged_resources,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute usage_limit_id
    #   <p>The identifier of the usage limit to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_identifier
    #   <p>The identifier of the cluster for which you want to describe usage limits.</p>
    #
    #   @return [String]
    #
    # @!attribute feature_type
    #   <p>The feature type for which you want to describe usage limits.</p>
    #
    #   Enum, one of: ["spectrum", "concurrency-scaling", "cross-region-datasharing"]
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value. </p>
    #           <p>Default: <code>100</code>
    #           </p>
    #           <p>Constraints: minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional parameter that specifies the starting point to return a set of response
    #               records. When the results of a <a>DescribeUsageLimits</a> request
    #               exceed the value specified in <code>MaxRecords</code>, Amazon Web Services returns a value in the
    #               <code>Marker</code> field of the response. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request. </p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A tag key or keys for which you want to return all matching usage limit objects
    #               that are associated with the specified key or keys. For example, suppose that you
    #               have parameter groups that are tagged with keys called <code>owner</code> and
    #               <code>environment</code>. If you specify both of these tag keys in the request,
    #               Amazon Redshift returns a response with the usage limit objects have either or both of these
    #               tag keys associated with them.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tag_values
    #   <p>A tag value or values for which you want to return all matching usage limit objects
    #               that are associated with the specified tag value or values. For example, suppose
    #               that you have parameter groups that are tagged with values called <code>admin</code> and
    #               <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift
    #               returns a response with the usage limit objects that have either or both of these tag
    #               values associated with them.</p>
    #
    #   @return [Array<String>]
    #
    DescribeUsageLimitsInput = ::Struct.new(
      :usage_limit_id,
      :cluster_identifier,
      :feature_type,
      :max_records,
      :marker,
      :tag_keys,
      :tag_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute usage_limits
    #   <p>Contains the output from the <a>DescribeUsageLimits</a>
    #               action. </p>
    #
    #   @return [Array<UsageLimit>]
    #
    # @!attribute marker
    #   <p>A value that indicates the starting point for the next set of response records in a
    #               subsequent request. If a value is returned in a response, you can retrieve the next set
    #               of records by providing this returned marker value in the <code>Marker</code> parameter
    #               and retrying the command. If the <code>Marker</code> field is empty, all response
    #               records have been retrieved for the request. </p>
    #
    #   @return [String]
    #
    DescribeUsageLimitsOutput = ::Struct.new(
      :usage_limits,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute cluster_identifier
    #   <p>The identifier of the cluster on which logging is to be stopped.</p>
    #           <p>Example: <code>examplecluster</code>
    #           </p>
    #
    #   @return [String]
    #
    DisableLoggingInput = ::Struct.new(
      :cluster_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the status of logging for a cluster.</p>
    #
    # @!attribute logging_enabled
    #   <p>
    #               <code>true</code> if logging is on, <code>false</code> if logging is off.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute bucket_name
    #   <p>The name of the S3 bucket where the log files are stored.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_key_prefix
    #   <p>The prefix applied to the log file names.</p>
    #
    #   @return [String]
    #
    # @!attribute last_successful_delivery_time
    #   <p>The last time that logs were delivered.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_failure_time
    #   <p>The last time when logs failed to be delivered.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_failure_message
    #   <p>The message indicating that logs failed to be delivered.</p>
    #
    #   @return [String]
    #
    # @!attribute log_destination_type
    #   <p>The log destination type. An enum with possible values of <code>s3</code> and <code>cloudwatch</code>.</p>
    #
    #   Enum, one of: ["s3", "cloudwatch"]
    #
    #   @return [String]
    #
    # @!attribute log_exports
    #   <p>The collection of exported log types. Log types include the connection log, user log and user activity log.</p>
    #
    #   @return [Array<String>]
    #
    DisableLoggingOutput = ::Struct.new(
      :logging_enabled,
      :bucket_name,
      :s3_key_prefix,
      :last_successful_delivery_time,
      :last_failure_time,
      :last_failure_message,
      :log_destination_type,
      :log_exports,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.logging_enabled ||= false
      end
    end

    # <p></p>
    #
    # @!attribute cluster_identifier
    #   <p>The unique identifier of the source cluster that you want to disable copying of
    #               snapshots to a destination region.</p>
    #           <p>Constraints: Must be the valid name of an existing cluster that has cross-region
    #               snapshot copy enabled.</p>
    #
    #   @return [String]
    #
    DisableSnapshotCopyInput = ::Struct.new(
      :cluster_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>Describes a cluster.</p>
    #
    #   @return [Cluster]
    #
    DisableSnapshotCopyOutput = ::Struct.new(
      :cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_share_arn
    #   <p>The Amazon Resource Name (ARN) of the datashare to remove association for. </p>
    #
    #   @return [String]
    #
    # @!attribute disassociate_entire_account
    #   <p>A value that specifies whether association for the datashare is removed from the
    #               entire account.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute consumer_arn
    #   <p>The Amazon Resource Name (ARN) of the consumer that association for
    #               the datashare is removed from.</p>
    #
    #   @return [String]
    #
    # @!attribute consumer_region
    #   <p>From a datashare consumer account, removes association of a datashare from all the existing and future namespaces in the specified Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    DisassociateDataShareConsumerInput = ::Struct.new(
      :data_share_arn,
      :disassociate_entire_account,
      :consumer_arn,
      :consumer_region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_share_arn
    #   <p>An Amazon Resource Name (ARN) that references the datashare that is owned by a specific namespace of the producer cluster. A datashare ARN is in the <code>arn:aws:redshift:{region}:{account-id}:{datashare}:{namespace-guid}/{datashare-name}</code> format.</p>
    #
    #   @return [String]
    #
    # @!attribute producer_arn
    #   <p>The Amazon Resource Name (ARN) of the producer.</p>
    #
    #   @return [String]
    #
    # @!attribute allow_publicly_accessible_consumers
    #   <p>A value that specifies whether the datashare can be shared to a publicly accessible  cluster.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute data_share_associations
    #   <p>A value that specifies when the datashare has an association between producer and data
    #               consumers.</p>
    #
    #   @return [Array<DataShareAssociation>]
    #
    # @!attribute managed_by
    #   <p>The identifier of a datashare to show its managing entity.</p>
    #
    #   @return [String]
    #
    DisassociateDataShareConsumerOutput = ::Struct.new(
      :data_share_arn,
      :producer_arn,
      :allow_publicly_accessible_consumers,
      :data_share_associations,
      :managed_by,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.allow_publicly_accessible_consumers ||= false
      end
    end

    # <p>Describes an Amazon EC2 security group.</p>
    #
    # @!attribute status
    #   <p>The status of the EC2 security group.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_security_group_name
    #   <p>The name of the EC2 Security Group.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_security_group_owner_id
    #   <p>The Amazon Web Services account ID of the owner of the EC2 security group specified in the
    #                   <code>EC2SecurityGroupName</code> field. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The list of tags for the EC2 security group.</p>
    #
    #   @return [Array<Tag>]
    #
    EC2SecurityGroup = ::Struct.new(
      :status,
      :ec2_security_group_name,
      :ec2_security_group_owner_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the status of the elastic IP (EIP) address.</p>
    #
    # @!attribute elastic_ip
    #   <p>The elastic IP (EIP) address for the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the elastic IP (EIP) address.</p>
    #
    #   @return [String]
    #
    ElasticIpStatus = ::Struct.new(
      :elastic_ip,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute cluster_identifier
    #   <p>The identifier of the cluster on which logging is to be started.</p>
    #           <p>Example: <code>examplecluster</code>
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute bucket_name
    #   <p>The name of an existing S3 bucket where the log files are to be stored.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be in the same region as the cluster</p>
    #               </li>
    #               <li>
    #                   <p>The cluster must have read bucket and put object permissions</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute s3_key_prefix
    #   <p>The prefix applied to the log file names.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Cannot exceed 512 characters</p>
    #               </li>
    #               <li>
    #                   <p>Cannot contain spaces( ), double quotes ("), single quotes ('), a backslash
    #                       (\), or control characters. The hexadecimal codes for invalid characters are: </p>
    #                   <ul>
    #                     <li>
    #                           <p>x00 to x20</p>
    #                       </li>
    #                     <li>
    #                           <p>x22</p>
    #                       </li>
    #                     <li>
    #                           <p>x27</p>
    #                       </li>
    #                     <li>
    #                           <p>x5c</p>
    #                       </li>
    #                     <li>
    #                           <p>x7f or larger</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute log_destination_type
    #   <p>The log destination type. An enum with possible values of <code>s3</code> and <code>cloudwatch</code>.</p>
    #
    #   Enum, one of: ["s3", "cloudwatch"]
    #
    #   @return [String]
    #
    # @!attribute log_exports
    #   <p>The collection of exported log types. Log types include the connection log, user log and user activity log.</p>
    #
    #   @return [Array<String>]
    #
    EnableLoggingInput = ::Struct.new(
      :cluster_identifier,
      :bucket_name,
      :s3_key_prefix,
      :log_destination_type,
      :log_exports,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the status of logging for a cluster.</p>
    #
    # @!attribute logging_enabled
    #   <p>
    #               <code>true</code> if logging is on, <code>false</code> if logging is off.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute bucket_name
    #   <p>The name of the S3 bucket where the log files are stored.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_key_prefix
    #   <p>The prefix applied to the log file names.</p>
    #
    #   @return [String]
    #
    # @!attribute last_successful_delivery_time
    #   <p>The last time that logs were delivered.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_failure_time
    #   <p>The last time when logs failed to be delivered.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_failure_message
    #   <p>The message indicating that logs failed to be delivered.</p>
    #
    #   @return [String]
    #
    # @!attribute log_destination_type
    #   <p>The log destination type. An enum with possible values of <code>s3</code> and <code>cloudwatch</code>.</p>
    #
    #   Enum, one of: ["s3", "cloudwatch"]
    #
    #   @return [String]
    #
    # @!attribute log_exports
    #   <p>The collection of exported log types. Log types include the connection log, user log and user activity log.</p>
    #
    #   @return [Array<String>]
    #
    EnableLoggingOutput = ::Struct.new(
      :logging_enabled,
      :bucket_name,
      :s3_key_prefix,
      :last_successful_delivery_time,
      :last_failure_time,
      :last_failure_message,
      :log_destination_type,
      :log_exports,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.logging_enabled ||= false
      end
    end

    # <p></p>
    #
    # @!attribute cluster_identifier
    #   <p>The unique identifier of the source cluster to copy snapshots from.</p>
    #           <p>Constraints: Must be the valid name of an existing cluster that does not already
    #               have cross-region snapshot copy enabled.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_region
    #   <p>The destination Amazon Web Services Region that you want to copy snapshots to.</p>
    #           <p>Constraints: Must be the name of a valid Amazon Web Services Region. For more information, see
    #                   <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html redshift_region">Regions and Endpoints</a> in the Amazon Web Services General Reference.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute retention_period
    #   <p>The number of days to retain automated snapshots in the destination region after
    #               they are copied from the source region.</p>
    #           <p>Default: 7.</p>
    #           <p>Constraints: Must be at least 1 and no more than 35.</p>
    #
    #   @return [Integer]
    #
    # @!attribute snapshot_copy_grant_name
    #   <p>The name of the snapshot copy grant to use when snapshots of an Amazon Web Services KMS-encrypted
    #               cluster are copied to the destination region.</p>
    #
    #   @return [String]
    #
    # @!attribute manual_snapshot_retention_period
    #   <p>The number of days to retain newly copied snapshots in the destination Amazon Web Services Region
    #               after they are copied from the source Amazon Web Services Region. If the value is -1, the manual
    #               snapshot is retained indefinitely. </p>
    #           <p>The value must be either -1 or an integer between 1 and 3,653.</p>
    #
    #   @return [Integer]
    #
    EnableSnapshotCopyInput = ::Struct.new(
      :cluster_identifier,
      :destination_region,
      :retention_period,
      :snapshot_copy_grant_name,
      :manual_snapshot_retention_period,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>Describes a cluster.</p>
    #
    #   @return [Cluster]
    #
    EnableSnapshotCopyOutput = ::Struct.new(
      :cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a connection endpoint.</p>
    #
    # @!attribute address
    #   <p>The DNS address of the Cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port that the database engine is listening on.</p>
    #
    #   @return [Integer]
    #
    # @!attribute vpc_endpoints
    #   <p>Describes a connection endpoint.</p>
    #
    #   @return [Array<VpcEndpoint>]
    #
    Endpoint = ::Struct.new(
      :address,
      :port,
      :vpc_endpoints,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.port ||= 0
      end
    end

    # <p>Describes a Redshift-managed VPC endpoint.</p>
    #
    # @!attribute cluster_identifier
    #   <p>The cluster identifier of the cluster associated with the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_owner
    #   <p>The Amazon Web Services account ID of the owner of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_group_name
    #   <p>The subnet group name where Amazon Redshift chooses to deploy the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_status
    #   <p>The status of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_name
    #   <p>The name of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_create_time
    #   <p>The time (UTC) that the endpoint was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute port
    #   <p>The port number on which the cluster accepts incoming connections.</p>
    #
    #   @return [Integer]
    #
    # @!attribute address
    #   <p>The DNS address of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_security_groups
    #   <p>The security groups associated with the endpoint.</p>
    #
    #   @return [Array<VpcSecurityGroupMembership>]
    #
    # @!attribute vpc_endpoint
    #   <p>The connection endpoint for connecting to an Amazon Redshift cluster through the proxy.</p>
    #
    #   @return [VpcEndpoint]
    #
    EndpointAccess = ::Struct.new(
      :cluster_identifier,
      :resource_owner,
      :subnet_group_name,
      :endpoint_status,
      :endpoint_name,
      :endpoint_create_time,
      :port,
      :address,
      :vpc_security_groups,
      :vpc_endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.port ||= 0
      end
    end

    # <p>The account already has a Redshift-managed VPC endpoint with the given identifier.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    EndpointAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an endpoint authorization for authorizing Redshift-managed VPC endpoint access to a cluster across Amazon Web Services accounts.</p>
    #
    # @!attribute grantor
    #   <p>The Amazon Web Services account ID of the cluster owner.</p>
    #
    #   @return [String]
    #
    # @!attribute grantee
    #   <p>The Amazon Web Services account ID of the grantee of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_identifier
    #   <p>The cluster identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute authorize_time
    #   <p>The time (UTC) when the authorization was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute cluster_status
    #   <p>The status of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the authorization action.</p>
    #
    #   Enum, one of: ["Authorized", "Revoking"]
    #
    #   @return [String]
    #
    # @!attribute allowed_all_vp_cs
    #   <p>Indicates whether all VPCs in the grantee account are allowed access to the cluster.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute allowed_vp_cs
    #   <p>The VPCs allowed access to the cluster.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute endpoint_count
    #   <p>The number of Redshift-managed VPC endpoints created for the authorization.</p>
    #
    #   @return [Integer]
    #
    EndpointAuthorization = ::Struct.new(
      :grantor,
      :grantee,
      :cluster_identifier,
      :authorize_time,
      :cluster_status,
      :status,
      :allowed_all_vp_cs,
      :allowed_vp_cs,
      :endpoint_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.allowed_all_vp_cs ||= false
        self.endpoint_count ||= 0
      end
    end

    # <p>The authorization already exists for this endpoint.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    EndpointAuthorizationAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The authorization for this endpoint can't be found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    EndpointAuthorizationNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of endpoint authorizations per cluster has exceeded its limit.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    EndpointAuthorizationsPerClusterLimitExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The endpoint name doesn't refer to an existing endpoint.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    EndpointNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of Redshift-managed VPC endpoints per authorization has exceeded its limit.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    EndpointsPerAuthorizationLimitExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of Redshift-managed VPC endpoints per cluster has exceeded its limit.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    EndpointsPerClusterLimitExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an event.</p>
    #
    # @!attribute source_identifier
    #   <p>The identifier for the source of the event.</p>
    #
    #   @return [String]
    #
    # @!attribute source_type
    #   <p>The source type for this event.</p>
    #
    #   Enum, one of: ["cluster", "cluster-parameter-group", "cluster-security-group", "cluster-snapshot", "scheduled-action"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The text of this event.</p>
    #
    #   @return [String]
    #
    # @!attribute event_categories
    #   <p>A list of the event categories.</p>
    #           <p>Values: Configuration, Management, Monitoring, Security, Pending</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute severity
    #   <p>The severity of the event.</p>
    #           <p>Values: ERROR, INFO</p>
    #
    #   @return [String]
    #
    # @!attribute date
    #   <p>The date and time of the event.</p>
    #
    #   @return [Time]
    #
    # @!attribute event_id
    #   <p>The identifier of the event.</p>
    #
    #   @return [String]
    #
    Event = ::Struct.new(
      :source_identifier,
      :source_type,
      :message,
      :event_categories,
      :severity,
      :date,
      :event_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes event categories.</p>
    #
    # @!attribute source_type
    #   <p>The source type, such as cluster or cluster-snapshot, that the returned categories
    #               belong to.</p>
    #
    #   @return [String]
    #
    # @!attribute events
    #   <p>The events in the event category.</p>
    #
    #   @return [Array<EventInfoMap>]
    #
    EventCategoriesMap = ::Struct.new(
      :source_type,
      :events,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes event information.</p>
    #
    # @!attribute event_id
    #   <p>The identifier of an Amazon Redshift event.</p>
    #
    #   @return [String]
    #
    # @!attribute event_categories
    #   <p>The category of an Amazon Redshift event.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute event_description
    #   <p>The description of an Amazon Redshift event.</p>
    #
    #   @return [String]
    #
    # @!attribute severity
    #   <p>The severity of the event.</p>
    #           <p>Values: ERROR, INFO</p>
    #
    #   @return [String]
    #
    EventInfoMap = ::Struct.new(
      :event_id,
      :event_categories,
      :event_description,
      :severity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes event subscriptions.</p>
    #
    # @!attribute customer_aws_id
    #   <p>The Amazon Web Services account associated with the Amazon Redshift event notification
    #               subscription.</p>
    #
    #   @return [String]
    #
    # @!attribute cust_subscription_id
    #   <p>The name of the Amazon Redshift event notification subscription.</p>
    #
    #   @return [String]
    #
    # @!attribute sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic used by the event
    #               notification subscription.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the Amazon Redshift event notification subscription.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Can be one of the following: active | no-permission |
    #                       topic-not-exist</p>
    #               </li>
    #               <li>
    #                   <p>The status "no-permission" indicates that Amazon Redshift no longer has
    #                       permission to post to the Amazon SNS topic. The status "topic-not-exist"
    #                       indicates that the topic was deleted after the subscription was
    #                       created.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute subscription_creation_time
    #   <p>The date and time the Amazon Redshift event notification subscription was
    #               created.</p>
    #
    #   @return [Time]
    #
    # @!attribute source_type
    #   <p>The source type of the events returned by the Amazon Redshift event notification, such as
    #               cluster, cluster-snapshot, cluster-parameter-group, cluster-security-group, or scheduled-action. </p>
    #
    #   @return [String]
    #
    # @!attribute source_ids_list
    #   <p>A list of the sources that publish events to the Amazon Redshift event notification
    #               subscription.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute event_categories_list
    #   <p>The list of Amazon Redshift event categories specified in the event notification
    #               subscription.</p>
    #           <p>Values: Configuration, Management, Monitoring, Security, Pending</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute severity
    #   <p>The event severity specified in the Amazon Redshift event notification
    #               subscription.</p>
    #           <p>Values: ERROR, INFO</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>A boolean value indicating whether the subscription is enabled; <code>true</code>
    #               indicates that the subscription is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>The list of tags for the event subscription.</p>
    #
    #   @return [Array<Tag>]
    #
    EventSubscription = ::Struct.new(
      :customer_aws_id,
      :cust_subscription_id,
      :sns_topic_arn,
      :status,
      :subscription_creation_time,
      :source_type,
      :source_ids_list,
      :event_categories_list,
      :severity,
      :enabled,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled ||= false
      end
    end

    # <p>The request would exceed the allowed number of event subscriptions for this
    #             account.
    # For information about increasing your quota, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a>
    # in the <i>Amazon Redshift Cluster Management Guide</i>.
    # </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    EventSubscriptionQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request parameters to get cluster credentials.</p>
    #
    # @!attribute db_user
    #   <p>The name of a database user. If a user name matching <code>DbUser</code> exists in
    #               the database, the temporary user credentials have the same permissions as the existing
    #               user. If <code>DbUser</code> doesn't exist in the database and <code>Autocreate</code>
    #               is <code>True</code>, a new user is created using the value for <code>DbUser</code> with
    #               PUBLIC permissions. If a database user matching the value for <code>DbUser</code>
    #               doesn't exist and <code>Autocreate</code> is <code>False</code>, then the command
    #               succeeds but the connection attempt will fail because the user doesn't exist in the
    #               database.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/redshift/latest/dg/r_CREATE_USER.html">CREATE USER</a> in the Amazon
    #               Redshift Database Developer Guide. </p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be 1 to 64 alphanumeric characters or hyphens. The user name can't be
    #                           <code>PUBLIC</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Must contain only lowercase letters, numbers, underscore, plus sign, period
    #                       (dot), at symbol (@), or hyphen.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Must not contain a colon ( : ) or slash ( / ). </p>
    #               </li>
    #               <li>
    #                   <p>Cannot be a reserved word. A list of reserved words can be found in <a href="http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html">Reserved Words</a> in the Amazon
    #                       Redshift Database Developer Guide.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute db_name
    #   <p>The name of a database that <code>DbUser</code> is authorized to log on to. If
    #                   <code>DbName</code> is not specified, <code>DbUser</code> can log on to any existing
    #               database.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be 1 to 64 alphanumeric characters or hyphens</p>
    #               </li>
    #               <li>
    #                   <p>Must contain only lowercase letters, numbers, underscore, plus sign, period
    #                       (dot), at symbol (@), or hyphen.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Must not contain a colon ( : ) or slash ( / ). </p>
    #               </li>
    #               <li>
    #                   <p>Cannot be a reserved word. A list of reserved words can be found in <a href="http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html">Reserved Words</a> in the Amazon
    #                       Redshift Database Developer Guide.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute cluster_identifier
    #   <p>The unique identifier of the cluster that contains the database for which you are
    #               requesting credentials. This parameter is case sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute duration_seconds
    #   <p>The number of seconds until the returned temporary password expires.</p>
    #           <p>Constraint: minimum 900, maximum 3600.</p>
    #           <p>Default: 900</p>
    #
    #   @return [Integer]
    #
    # @!attribute auto_create
    #   <p>Create a database user with the name specified for the user named in
    #                   <code>DbUser</code> if one does not exist.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute db_groups
    #   <p>A list of the names of existing database groups that the user named in
    #                   <code>DbUser</code> will join for the current session, in addition to any group
    #               memberships for an existing user. If not specified, a new user is added only to
    #               PUBLIC.</p>
    #           <p>Database group name constraints</p>
    #           <ul>
    #               <li>
    #                   <p>Must be 1 to 64 alphanumeric characters or hyphens</p>
    #               </li>
    #               <li>
    #                   <p>Must contain only lowercase letters, numbers, underscore, plus sign, period
    #                       (dot), at symbol (@), or hyphen.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Must not contain a colon ( : ) or slash ( / ). </p>
    #               </li>
    #               <li>
    #                   <p>Cannot be a reserved word. A list of reserved words can be found in <a href="http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html">Reserved Words</a> in the Amazon
    #                       Redshift Database Developer Guide.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    GetClusterCredentialsInput = ::Struct.new(
      :db_user,
      :db_name,
      :cluster_identifier,
      :duration_seconds,
      :auto_create,
      :db_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Temporary credentials with authorization to log on to an Amazon Redshift database.
    #         </p>
    #
    # @!attribute db_user
    #   <p>A database user name that is authorized to log on to the database <code>DbName</code>
    #               using the password <code>DbPassword</code>. If the specified DbUser exists in the
    #               database, the new user name has the same database permissions as the the user named in
    #               DbUser. By default, the user is added to PUBLIC. If the <code>DbGroups</code> parameter
    #               is specifed, <code>DbUser</code> is added to the listed groups for any sessions created
    #               using these credentials.</p>
    #
    #   @return [String]
    #
    # @!attribute db_password
    #   <p>A temporary password that authorizes the user name returned by <code>DbUser</code>
    #               to log on to the database <code>DbName</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute expiration
    #   <p>The date and time the password in <code>DbPassword</code> expires.</p>
    #
    #   @return [Time]
    #
    GetClusterCredentialsOutput = ::Struct.new(
      :db_user,
      :db_password,
      :expiration,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Redshift::Types::GetClusterCredentialsOutput "\
          "db_user=#{db_user || 'nil'}, "\
          "db_password=\"[SENSITIVE]\", "\
          "expiration=#{expiration || 'nil'}>"
      end
    end

    # @!attribute db_name
    #   <p>The name of the database for which you are requesting credentials.
    #               If the database name is specified, the IAM policy must allow access to the resource <code>dbname</code> for the specified database name.
    #               If the database name is not specified, access to all databases is allowed.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_identifier
    #   <p>The unique identifier of the cluster that contains the database for which you are
    #               requesting credentials. </p>
    #
    #   @return [String]
    #
    # @!attribute duration_seconds
    #   <p>The number of seconds until the returned temporary password expires.</p>
    #           <p>Range: 900-3600. Default: 900.</p>
    #
    #   @return [Integer]
    #
    GetClusterCredentialsWithIAMInput = ::Struct.new(
      :db_name,
      :cluster_identifier,
      :duration_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_user
    #   <p>A database user name that you provide when you connect to a database. The database user is mapped 1:1 to the source IAM identity. </p>
    #
    #   @return [String]
    #
    # @!attribute db_password
    #   <p>A temporary password that you provide when you connect to a database.</p>
    #
    #   @return [String]
    #
    # @!attribute expiration
    #   <p>The time (UTC) when the temporary password expires. After this timestamp, a log in with the temporary password fails.</p>
    #
    #   @return [Time]
    #
    # @!attribute next_refresh_time
    #   <p>Reserved for future use.</p>
    #
    #   @return [Time]
    #
    GetClusterCredentialsWithIAMOutput = ::Struct.new(
      :db_user,
      :db_password,
      :expiration,
      :next_refresh_time,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Redshift::Types::GetClusterCredentialsWithIAMOutput "\
          "db_user=#{db_user || 'nil'}, "\
          "db_password=\"[SENSITIVE]\", "\
          "expiration=#{expiration || 'nil'}, "\
          "next_refresh_time=#{next_refresh_time || 'nil'}>"
      end
    end

    # @!attribute action_type
    #   <p>The action type of the reserved-node configuration. The action type can be an exchange initiated from either a snapshot or a resize.</p>
    #
    #   Enum, one of: ["restore-cluster", "resize-cluster"]
    #
    #   @return [String]
    #
    # @!attribute cluster_identifier
    #   <p>The identifier for the cluster that is the source for a reserved-node exchange.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_identifier
    #   <p>The identifier for the snapshot that is the source for the reserved-node exchange.</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of response records to return in each call. If the number of
    #               remaining response records exceeds the specified <code>MaxRecords</code> value, a value
    #               is returned in a <code>Marker</code> field of the response. You can retrieve the next
    #               set of records by retrying the command with the returned marker value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous <code>GetReservedNodeExchangeConfigurationOptions</code> request. If this
    #               parameter is specified, the response includes only records beyond the marker, up to the value
    #               specified by the <code>MaxRecords</code> parameter. You can retrieve the next set of response
    #               records by providing the returned marker value in the <code>Marker</code> parameter and
    #               retrying the request.</p>
    #
    #   @return [String]
    #
    GetReservedNodeExchangeConfigurationOptionsInput = ::Struct.new(
      :action_type,
      :cluster_identifier,
      :snapshot_identifier,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute marker
    #   <p>A pagination token provided by a previous <code>GetReservedNodeExchangeConfigurationOptions</code> request.</p>
    #
    #   @return [String]
    #
    # @!attribute reserved_node_configuration_option_list
    #   <p>the configuration options for the reserved-node
    #               exchange. These options include information about the source reserved node and target reserved
    #               node. Details include the node type, the price, the node count, and the offering
    #               type.</p>
    #
    #   @return [Array<ReservedNodeConfigurationOption>]
    #
    GetReservedNodeExchangeConfigurationOptionsOutput = ::Struct.new(
      :marker,
      :reserved_node_configuration_option_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute reserved_node_id
    #   <p>A string representing the node identifier for the DC1 Reserved Node to be
    #               exchanged.</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>An integer setting the maximum number of ReservedNodeOfferings to
    #               retrieve.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>A value that indicates the starting point for the next set of
    #               ReservedNodeOfferings.</p>
    #
    #   @return [String]
    #
    GetReservedNodeExchangeOfferingsInput = ::Struct.new(
      :reserved_node_id,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute marker
    #   <p>An optional parameter that specifies the starting point for returning a set of
    #               response records. When the results of a <code>GetReservedNodeExchangeOfferings</code>
    #               request exceed the value specified in MaxRecords, Amazon Redshift returns a value in the
    #               marker field of the response. You can retrieve the next set of response records by
    #               providing the returned marker value in the marker parameter and retrying the request.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute reserved_node_offerings
    #   <p>Returns an array of <a>ReservedNodeOffering</a> objects.</p>
    #
    #   @return [Array<ReservedNodeOffering>]
    #
    GetReservedNodeExchangeOfferingsOutput = ::Struct.new(
      :marker,
      :reserved_node_offerings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about an HSM client certificate. The certificate is stored in a
    #             secure Hardware Storage Module (HSM), and used by the Amazon Redshift cluster to encrypt data
    #             files.</p>
    #
    # @!attribute hsm_client_certificate_identifier
    #   <p>The identifier of the HSM client certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute hsm_client_certificate_public_key
    #   <p>The public key that the Amazon Redshift cluster will use to connect to the HSM. You must
    #               register the public key in the HSM.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The list of tags for the HSM client certificate.</p>
    #
    #   @return [Array<Tag>]
    #
    HsmClientCertificate = ::Struct.new(
      :hsm_client_certificate_identifier,
      :hsm_client_certificate_public_key,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There is already an existing Amazon Redshift HSM client certificate with the specified
    #             identifier.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    HsmClientCertificateAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There is no Amazon Redshift HSM client certificate with the specified
    #             identifier.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    HsmClientCertificateNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The quota for HSM client certificates has been reached.
    # For information about increasing your quota, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a>
    # in the <i>Amazon Redshift Cluster Management Guide</i>.
    # </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    HsmClientCertificateQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about an HSM configuration, which is an object that describes
    #             to Amazon Redshift clusters the information they require to connect to an HSM where they can
    #             store database encryption keys.</p>
    #
    # @!attribute hsm_configuration_identifier
    #   <p>The name of the Amazon Redshift HSM configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A text description of the HSM configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute hsm_ip_address
    #   <p>The IP address that the Amazon Redshift cluster must use to access the HSM.</p>
    #
    #   @return [String]
    #
    # @!attribute hsm_partition_name
    #   <p>The name of the partition in the HSM where the Amazon Redshift clusters will store their
    #               database encryption keys.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The list of tags for the HSM configuration.</p>
    #
    #   @return [Array<Tag>]
    #
    HsmConfiguration = ::Struct.new(
      :hsm_configuration_identifier,
      :description,
      :hsm_ip_address,
      :hsm_partition_name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There is already an existing Amazon Redshift HSM configuration with the specified
    #             identifier.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    HsmConfigurationAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There is no Amazon Redshift HSM configuration with the specified identifier.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    HsmConfigurationNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The quota for HSM configurations has been reached.
    # For information about increasing your quota, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a>
    # in the <i>Amazon Redshift Cluster Management Guide</i>.
    # </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    HsmConfigurationQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the status of changes to HSM settings.</p>
    #
    # @!attribute hsm_client_certificate_identifier
    #   <p>Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to
    #               retrieve the data encryption keys stored in an HSM.</p>
    #
    #   @return [String]
    #
    # @!attribute hsm_configuration_identifier
    #   <p>Specifies the name of the HSM configuration that contains the information the
    #               Amazon Redshift cluster can use to retrieve and store keys in an HSM.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Reports whether the Amazon Redshift cluster has finished applying any HSM settings
    #               changes specified in a modify cluster command.</p>
    #           <p>Values: active, applying</p>
    #
    #   @return [String]
    #
    HsmStatus = ::Struct.new(
      :hsm_client_certificate_identifier,
      :hsm_configuration_identifier,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an IP range used in a security group.</p>
    #
    # @!attribute status
    #   <p>The status of the IP range, for example, "authorized".</p>
    #
    #   @return [String]
    #
    # @!attribute cidrip
    #   <p>The IP range in Classless Inter-Domain Routing (CIDR) notation.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The list of tags for the IP range.</p>
    #
    #   @return [Array<Tag>]
    #
    IPRange = ::Struct.new(
      :status,
      :cidrip,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have exceeded the allowed number of table restore requests. Wait for your
    #             current table restore requests to complete before making a new request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InProgressTableRestoreQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified options are incompatible.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    IncompatibleOrderableOptions = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of nodes specified exceeds the allotted capacity of the
    #             cluster.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InsufficientClusterCapacityFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The cluster does not have read bucket or put object permissions on the S3 bucket
    #             specified when enabling logging.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InsufficientS3BucketPolicyFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The authentication profile request is not valid. The profile name can't be null or empty.
    #             The authentication profile API operation must be available in the Amazon Web Services Region.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidAuthenticationProfileRequestFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The status of the authorization is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidAuthorizationStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The cluster parameter group action can not be completed because another task is in
    #             progress that involves the parameter group. Wait a few moments and try the operation
    #             again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidClusterParameterGroupStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The state of the cluster security group is not <code>available</code>. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidClusterSecurityGroupStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The cluster snapshot schedule state is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidClusterSnapshotScheduleStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified cluster snapshot is not in the <code>available</code> state, or other
    #             accounts are authorized to access the snapshot. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidClusterSnapshotStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified cluster is not in the <code>available</code> state. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidClusterStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The cluster subnet group cannot be deleted because it is in use.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidClusterSubnetGroupStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The state of the subnet is invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidClusterSubnetStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The provided cluster track name is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidClusterTrackFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There is an error with the datashare.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidDataShareFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Elastic IP (EIP) is invalid or cannot be found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidElasticIpFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The status of the endpoint is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidEndpointStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified HSM client certificate is not in the <code>available</code> state, or
    #             it is still in use by one or more Amazon Redshift clusters.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidHsmClientCertificateStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified HSM configuration is not in the <code>available</code> state, or it
    #             is still in use by one or more Amazon Redshift clusters.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidHsmConfigurationStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The namespace isn't valid because the namespace doesn't exist. Provide a valid namespace.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidNamespaceFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the Reserved Node being exchanged is not in an active state.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidReservedNodeStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The restore is invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidRestoreFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The retention period specified is either in the past or is not a valid value.</p>
    #         <p>The value must be either -1 or an integer between 1 and 3,653.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidRetentionPeriodFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The S3 bucket name is invalid. For more information about naming rules, go to
    #                 <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/BucketRestrictions.html">Bucket
    #                 Restrictions and Limitations</a> in the Amazon Simple Storage Service (S3)
    #             Developer Guide.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidS3BucketNameFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The string specified for the logging S3 key prefix does not comply with the
    #             documented constraints.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidS3KeyPrefixFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The schedule you submitted isn't valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidScheduleFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The scheduled action is not valid. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidScheduledActionFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The snapshot copy grant can't be deleted because it is used by one or more
    #             clusters.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidSnapshotCopyGrantStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested subnet is not valid, or not all of the subnets are in the same
    #             VPC.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidSubnet = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The subscription request is invalid because it is a duplicate request. This
    #             subscription request is already in progress.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidSubscriptionStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The value specified for the <code>sourceDatabaseName</code>,
    #                 <code>sourceSchemaName</code>, or <code>sourceTableName</code> parameter, or a
    #             combination of these, doesn't exist in the snapshot.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidTableRestoreArgumentFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The tag is invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidTagFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The usage limit is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidUsageLimitFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The cluster subnet group does not cover all Availability Zones.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidVPCNetworkStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The encryption key has exceeded its grant limit in Amazon Web Services KMS.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    LimitExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LogDestinationType
    #
    module LogDestinationType
      # No documentation available.
      #
      S3 = "s3"

      # No documentation available.
      #
      CLOUDWATCH = "cloudwatch"
    end

    # <p>Defines a maintenance track that determines which Amazon Redshift version to apply
    #             during a maintenance window. If the value for <code>MaintenanceTrack</code> is
    #                 <code>current</code>, the cluster is updated to the most recently certified
    #             maintenance release. If the value is <code>trailing</code>, the cluster is updated to
    #             the previously certified maintenance release. </p>
    #
    # @!attribute maintenance_track_name
    #   <p>The name of the maintenance track. Possible values are <code>current</code> and
    #                   <code>trailing</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute database_version
    #   <p>The version number for the cluster release.</p>
    #
    #   @return [String]
    #
    # @!attribute update_targets
    #   <p>An array of <a>UpdateTarget</a> objects to update with the maintenance
    #               track. </p>
    #
    #   @return [Array<UpdateTarget>]
    #
    MaintenanceTrack = ::Struct.new(
      :maintenance_track_name,
      :database_version,
      :update_targets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Mode
    #
    module Mode
      # No documentation available.
      #
      STANDARD = "standard"

      # No documentation available.
      #
      HIGH_PERFORMANCE = "high-performance"
    end

    # @!attribute cluster_identifier
    #   <p>The identifier of the cluster to be modified.</p>
    #
    #   @return [String]
    #
    # @!attribute aqua_configuration_status
    #   <p>The new value of AQUA configuration status. Possible values include the following.</p>
    #           <ul>
    #               <li>
    #                  <p>enabled - Use AQUA if it is available for the current Amazon Web Services Region and Amazon Redshift node type.</p>
    #               </li>
    #               <li>
    #                  <p>disabled - Don't use AQUA. </p>
    #               </li>
    #               <li>
    #                  <p>auto - Amazon Redshift determines whether to use AQUA.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["enabled", "disabled", "auto"]
    #
    #   @return [String]
    #
    ModifyAquaConfigurationInput = ::Struct.new(
      :cluster_identifier,
      :aqua_configuration_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute aqua_configuration
    #   <p>The updated AQUA configuration of the cluster. </p>
    #
    #   @return [AquaConfiguration]
    #
    ModifyAquaConfigurationOutput = ::Struct.new(
      :aqua_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_profile_name
    #   <p>The name of the authentication profile to replace.</p>
    #
    #   @return [String]
    #
    # @!attribute authentication_profile_content
    #   <p>The new content of the authentication profile in JSON format.
    #               The maximum length of the JSON string is determined by a quota for your account.</p>
    #
    #   @return [String]
    #
    ModifyAuthenticationProfileInput = ::Struct.new(
      :authentication_profile_name,
      :authentication_profile_content,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication_profile_name
    #   <p>The name of the authentication profile that was replaced.</p>
    #
    #   @return [String]
    #
    # @!attribute authentication_profile_content
    #   <p>The updated content of the authentication profile in JSON format.</p>
    #
    #   @return [String]
    #
    ModifyAuthenticationProfileOutput = ::Struct.new(
      :authentication_profile_name,
      :authentication_profile_content,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_identifier
    #   <p>The unique identifier of a cluster whose database revision you want to modify. </p>
    #           <p>Example: <code>examplecluster</code>
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute revision_target
    #   <p>The identifier of the database revision. You can retrieve this value from the
    #               response to the <a>DescribeClusterDbRevisions</a> request.</p>
    #
    #   @return [String]
    #
    ModifyClusterDbRevisionInput = ::Struct.new(
      :cluster_identifier,
      :revision_target,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>Describes a cluster.</p>
    #
    #   @return [Cluster]
    #
    ModifyClusterDbRevisionOutput = ::Struct.new(
      :cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute cluster_identifier
    #   <p>The unique identifier of the cluster for which you want to associate or
    #               disassociate IAM roles.</p>
    #
    #   @return [String]
    #
    # @!attribute add_iam_roles
    #   <p>Zero or more IAM roles to associate with the cluster. The roles must be in their
    #               Amazon Resource Name (ARN) format. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute remove_iam_roles
    #   <p>Zero or more IAM roles in ARN format to disassociate from the cluster. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute default_iam_role_arn
    #   <p>The Amazon Resource Name (ARN) for the IAM role that was set as default for the cluster when the cluster was last modified.</p>
    #
    #   @return [String]
    #
    ModifyClusterIamRolesInput = ::Struct.new(
      :cluster_identifier,
      :add_iam_roles,
      :remove_iam_roles,
      :default_iam_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>Describes a cluster.</p>
    #
    #   @return [Cluster]
    #
    ModifyClusterIamRolesOutput = ::Struct.new(
      :cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute cluster_identifier
    #   <p>The unique identifier of the cluster to be modified.</p>
    #           <p>Example: <code>examplecluster</code>
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute cluster_type
    #   <p>The new cluster type.</p>
    #           <p>When you submit your cluster resize request, your existing cluster goes into a
    #               read-only mode. After Amazon Redshift provisions a new cluster based on your resize
    #               requirements, there will be outage for a period while the old cluster is deleted and
    #               your connection is switched to the new cluster. You can use <a>DescribeResize</a> to track the progress of the resize request. </p>
    #           <p>Valid Values: <code> multi-node | single-node </code>
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute node_type
    #   <p>The new node type of the cluster. If you specify a new node type, you must also
    #               specify the number of nodes parameter.</p>
    #           <p>
    #   For more information about resizing clusters, go to
    #   <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/rs-resize-tutorial.html">Resizing Clusters in Amazon Redshift</a>
    #   in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #
    #           <p>Valid Values: <code>ds2.xlarge</code> | <code>ds2.8xlarge</code> |
    #               <code>dc1.large</code> | <code>dc1.8xlarge</code> |
    #               <code>dc2.large</code> | <code>dc2.8xlarge</code> |
    #               <code>ra3.xlplus</code> |  <code>ra3.4xlarge</code> | <code>ra3.16xlarge</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute number_of_nodes
    #   <p>The new number of nodes of the cluster. If you specify a new number of nodes, you
    #               must also specify the node type parameter.</p>
    #           <p>
    #   For more information about resizing clusters, go to
    #   <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/rs-resize-tutorial.html">Resizing Clusters in Amazon Redshift</a>
    #   in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #
    #           <p>Valid Values: Integer greater than <code>0</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute cluster_security_groups
    #   <p>A list of cluster security groups to be authorized on this cluster. This change is
    #               asynchronously applied as soon as possible.</p>
    #           <p>Security groups currently associated with the cluster, and not in the list of
    #               groups to apply, will be revoked from the cluster.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be 1 to 255 alphanumeric characters or hyphens</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                   <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute vpc_security_group_ids
    #   <p>A list of virtual private cloud (VPC) security groups to be associated with the
    #               cluster. This change is asynchronously applied as soon as possible.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute master_user_password
    #   <p>The new password for the cluster admin user. This change is asynchronously applied
    #               as soon as possible. Between the time of the request and the completion of the request,
    #               the <code>MasterUserPassword</code> element exists in the
    #                   <code>PendingModifiedValues</code> element of the operation response. </p>
    #           <note>
    #               <p>Operations never return the password, so this operation provides a way to
    #                   regain access to the admin user account for a cluster if the password is
    #                   lost.</p>
    #           </note>
    #           <p>Default: Uses existing setting.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be between 8 and 64 characters in length.</p>
    #               </li>
    #               <li>
    #                   <p>Must contain at least one uppercase letter.</p>
    #               </li>
    #               <li>
    #                   <p>Must contain at least one lowercase letter.</p>
    #               </li>
    #               <li>
    #                   <p>Must contain one number.</p>
    #               </li>
    #               <li>
    #                   <p>Can be any printable ASCII character (ASCII code 33-126) except <code>'</code>
    #                       (single quote), <code>"</code> (double quote), <code>\</code>, <code>/</code>, or <code>@</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute cluster_parameter_group_name
    #   <p>The name of the cluster parameter group to apply to this cluster. This change is
    #               applied only after the cluster is rebooted. To reboot a cluster use <a>RebootCluster</a>. </p>
    #           <p>Default: Uses existing setting.</p>
    #           <p>Constraints: The cluster parameter group must be in the same parameter group family
    #               that matches the cluster version.</p>
    #
    #   @return [String]
    #
    # @!attribute automated_snapshot_retention_period
    #   <p>The number of days that automated snapshots are retained. If the value is 0,
    #               automated snapshots are disabled. Even if automated snapshots are disabled, you can
    #               still create manual snapshots when you want with <a>CreateClusterSnapshot</a>. </p>
    #           <p>If you decrease the automated snapshot retention period from its current value,
    #               existing automated snapshots that fall outside of the new retention period will be
    #               immediately deleted.</p>
    #
    #           <p>You can't disable automated snapshots for RA3 node types. Set the automated retention period from 1-35 days.</p>
    #           <p>Default: Uses existing setting.</p>
    #           <p>Constraints: Must be a value from 0 to 35.</p>
    #
    #   @return [Integer]
    #
    # @!attribute manual_snapshot_retention_period
    #   <p>The default for number of days that a newly created manual snapshot is retained. If
    #               the value is -1, the manual snapshot is retained indefinitely. This value doesn't
    #               retroactively change the retention periods of existing manual snapshots.</p>
    #           <p>The value must be either -1 or an integer between 1 and 3,653.</p>
    #           <p>The default value is -1.</p>
    #
    #   @return [Integer]
    #
    # @!attribute preferred_maintenance_window
    #   <p>The weekly time range (in UTC) during which system maintenance can occur, if
    #               necessary. If system maintenance is necessary during the window, it may result in an
    #               outage.</p>
    #           <p>This maintenance window change is made immediately. If the new maintenance window
    #               indicates the current time, there must be at least 120 minutes between the current time
    #               and end of the window in order to ensure that pending changes are applied.</p>
    #           <p>Default: Uses existing setting.</p>
    #           <p>Format: ddd:hh24:mi-ddd:hh24:mi, for example
    #               <code>wed:07:30-wed:08:00</code>.</p>
    #           <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p>
    #           <p>Constraints: Must be at least 30 minutes.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_version
    #   <p>The new version number of the Amazon Redshift engine to upgrade to.</p>
    #           <p>For major version upgrades, if a non-default cluster parameter group is currently
    #               in use, a new cluster parameter group in the cluster parameter group family for the new
    #               version must be specified. The new cluster parameter group can be the default for that
    #               cluster parameter group family.
    #   For more information about parameters and parameter groups, go to
    #   <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Amazon Redshift Parameter Groups</a>
    #   in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #           <p>Example: <code>1.0</code>
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute allow_version_upgrade
    #   <p>If <code>true</code>, major version upgrades will be applied automatically to the
    #               cluster during the maintenance window. </p>
    #           <p>Default: <code>false</code>
    #           </p>
    #
    #   @return [Boolean]
    #
    # @!attribute hsm_client_certificate_identifier
    #   <p>Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to
    #               retrieve the data encryption keys stored in an HSM.</p>
    #
    #   @return [String]
    #
    # @!attribute hsm_configuration_identifier
    #   <p>Specifies the name of the HSM configuration that contains the information the
    #               Amazon Redshift cluster can use to retrieve and store keys in an HSM.</p>
    #
    #   @return [String]
    #
    # @!attribute new_cluster_identifier
    #   <p>The new identifier for the cluster.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>Alphabetic characters must be lowercase.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>Must be unique for all clusters within an Amazon Web Services account.</p>
    #               </li>
    #            </ul>
    #
    #               <p>Example: <code>examplecluster</code>
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute publicly_accessible
    #   <p>If <code>true</code>, the cluster can be accessed from a public network. Only
    #               clusters in VPCs can be set to be publicly available.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute elastic_ip
    #   <p>The Elastic IP (EIP) address for the cluster.</p>
    #           <p>Constraints: The cluster must be provisioned in EC2-VPC and publicly-accessible
    #               through an Internet gateway. For more information about provisioning clusters in
    #               EC2-VPC, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html cluster-platforms">Supported
    #                   Platforms to Launch Your Cluster</a> in the Amazon Redshift Cluster Management Guide.</p>
    #
    #   @return [String]
    #
    # @!attribute enhanced_vpc_routing
    #   <p>An option that specifies whether to create the cluster with enhanced VPC routing
    #               enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a
    #               VPC. For more information, see <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html">Enhanced VPC Routing</a> in
    #               the Amazon Redshift Cluster Management Guide.</p>
    #           <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p>
    #           <p>Default: false</p>
    #
    #   @return [Boolean]
    #
    # @!attribute maintenance_track_name
    #   <p>The name for the maintenance track that you want to assign for the cluster. This name
    #               change is asynchronous. The new track name stays in the
    #                   <code>PendingModifiedValues</code> for the cluster until the next maintenance
    #               window. When the maintenance track changes, the cluster is switched to the latest
    #               cluster release available for the maintenance track. At this point, the maintenance
    #               track name is applied.</p>
    #
    #   @return [String]
    #
    # @!attribute encrypted
    #   <p>Indicates whether the cluster is encrypted. If the value is encrypted (true) and you
    #               provide a value for the <code>KmsKeyId</code> parameter, we encrypt the cluster
    #               with the provided <code>KmsKeyId</code>. If you don't provide a <code>KmsKeyId</code>,
    #               we encrypt with the default key. </p>
    #               <p>If the value is not encrypted (false), then the cluster is decrypted. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute kms_key_id
    #   <p>The Key Management Service (KMS) key ID of the encryption key that you want to use
    #               to encrypt data in the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute availability_zone_relocation
    #   <p>The option to enable relocation for an Amazon Redshift cluster between Availability Zones after the cluster modification is complete.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute availability_zone
    #   <p>The option to initiate relocation for an Amazon Redshift cluster to the target Availability Zone.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The option to change the port of an Amazon Redshift cluster.</p>
    #
    #   @return [Integer]
    #
    ModifyClusterInput = ::Struct.new(
      :cluster_identifier,
      :cluster_type,
      :node_type,
      :number_of_nodes,
      :cluster_security_groups,
      :vpc_security_group_ids,
      :master_user_password,
      :cluster_parameter_group_name,
      :automated_snapshot_retention_period,
      :manual_snapshot_retention_period,
      :preferred_maintenance_window,
      :cluster_version,
      :allow_version_upgrade,
      :hsm_client_certificate_identifier,
      :hsm_configuration_identifier,
      :new_cluster_identifier,
      :publicly_accessible,
      :elastic_ip,
      :enhanced_vpc_routing,
      :maintenance_track_name,
      :encrypted,
      :kms_key_id,
      :availability_zone_relocation,
      :availability_zone,
      :port,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_identifier
    #   <p>A unique identifier for the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute defer_maintenance
    #   <p>A boolean indicating whether to enable the deferred maintenance window. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute defer_maintenance_identifier
    #   <p>A unique identifier for the deferred maintenance window.</p>
    #
    #   @return [String]
    #
    # @!attribute defer_maintenance_start_time
    #   <p>A timestamp indicating the start time for the deferred maintenance window.</p>
    #
    #   @return [Time]
    #
    # @!attribute defer_maintenance_end_time
    #   <p>A timestamp indicating end time for the deferred maintenance window. If you specify an
    #               end time, you can't specify a duration.</p>
    #
    #   @return [Time]
    #
    # @!attribute defer_maintenance_duration
    #   <p>An integer indicating the duration of the maintenance window in days. If you specify a
    #               duration, you can't specify an end time. The duration must be 45 days or less.</p>
    #
    #   @return [Integer]
    #
    ModifyClusterMaintenanceInput = ::Struct.new(
      :cluster_identifier,
      :defer_maintenance,
      :defer_maintenance_identifier,
      :defer_maintenance_start_time,
      :defer_maintenance_end_time,
      :defer_maintenance_duration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>Describes a cluster.</p>
    #
    #   @return [Cluster]
    #
    ModifyClusterMaintenanceOutput = ::Struct.new(
      :cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>Describes a cluster.</p>
    #
    #   @return [Cluster]
    #
    ModifyClusterOutput = ::Struct.new(
      :cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a modify cluster parameter group operation. </p>
    #
    # @!attribute parameter_group_name
    #   <p>The name of the parameter group to be modified.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>An array of parameters to be modified. A maximum of 20 parameters can be modified
    #               in a single request.</p>
    #           <p>For each parameter to be modified, you must supply at least the parameter name and
    #               parameter value; other name-value pairs of the parameter are optional.</p>
    #           <p>For the workload management (WLM) configuration, you must supply all the name-value
    #               pairs in the wlm_json_configuration parameter.</p>
    #
    #   @return [Array<Parameter>]
    #
    ModifyClusterParameterGroupInput = ::Struct.new(
      :parameter_group_name,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute parameter_group_name
    #   <p>The name of the cluster parameter group.</p>
    #
    #   @return [String]
    #
    # @!attribute parameter_group_status
    #   <p>The status of the parameter group. For example, if you made a change to a parameter
    #               group name-value pair, then the change could be pending a reboot of an associated
    #               cluster.</p>
    #
    #   @return [String]
    #
    ModifyClusterParameterGroupOutput = ::Struct.new(
      :parameter_group_name,
      :parameter_group_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute snapshot_identifier
    #   <p>The identifier of the snapshot whose setting you want to modify.</p>
    #
    #   @return [String]
    #
    # @!attribute manual_snapshot_retention_period
    #   <p>The number of days that a manual snapshot is retained. If the value is -1, the manual
    #               snapshot is retained indefinitely.</p>
    #           <p>If the manual snapshot falls outside of the new retention period, you can specify the
    #               force option to immediately delete the snapshot.</p>
    #           <p>The value must be either -1 or an integer between 1 and 3,653.</p>
    #
    #   @return [Integer]
    #
    # @!attribute force
    #   <p>A Boolean option to override an exception if the retention period has already
    #               passed.</p>
    #
    #   @return [Boolean]
    #
    ModifyClusterSnapshotInput = ::Struct.new(
      :snapshot_identifier,
      :manual_snapshot_retention_period,
      :force,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.force ||= false
      end
    end

    # @!attribute snapshot
    #   <p>Describes a snapshot.</p>
    #
    #   @return [Snapshot]
    #
    ModifyClusterSnapshotOutput = ::Struct.new(
      :snapshot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_identifier
    #   <p>A unique identifier for the cluster whose snapshot schedule you want to modify.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute schedule_identifier
    #   <p>A unique alphanumeric identifier for the schedule that you want to associate with the
    #               cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute disassociate_schedule
    #   <p>A boolean to indicate whether to remove the assoiciation between the cluster and the
    #               schedule.</p>
    #
    #   @return [Boolean]
    #
    ModifyClusterSnapshotScheduleInput = ::Struct.new(
      :cluster_identifier,
      :schedule_identifier,
      :disassociate_schedule,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ModifyClusterSnapshotScheduleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute cluster_subnet_group_name
    #   <p>The name of the subnet group to be modified.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A text description of the subnet group to be modified.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_ids
    #   <p>An array of VPC subnet IDs. A maximum of 20 subnets can be modified in a single
    #               request.</p>
    #
    #   @return [Array<String>]
    #
    ModifyClusterSubnetGroupInput = ::Struct.new(
      :cluster_subnet_group_name,
      :description,
      :subnet_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_subnet_group
    #   <p>Describes a subnet group.</p>
    #
    #   @return [ClusterSubnetGroup]
    #
    ModifyClusterSubnetGroupOutput = ::Struct.new(
      :cluster_subnet_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint_name
    #   <p>The endpoint to be modified.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_security_group_ids
    #   <p>The complete list of VPC security groups associated with the endpoint after the endpoint is modified.</p>
    #
    #   @return [Array<String>]
    #
    ModifyEndpointAccessInput = ::Struct.new(
      :endpoint_name,
      :vpc_security_group_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a Redshift-managed VPC endpoint.</p>
    #
    # @!attribute cluster_identifier
    #   <p>The cluster identifier of the cluster associated with the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_owner
    #   <p>The Amazon Web Services account ID of the owner of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_group_name
    #   <p>The subnet group name where Amazon Redshift chooses to deploy the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_status
    #   <p>The status of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_name
    #   <p>The name of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_create_time
    #   <p>The time (UTC) that the endpoint was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute port
    #   <p>The port number on which the cluster accepts incoming connections.</p>
    #
    #   @return [Integer]
    #
    # @!attribute address
    #   <p>The DNS address of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_security_groups
    #   <p>The security groups associated with the endpoint.</p>
    #
    #   @return [Array<VpcSecurityGroupMembership>]
    #
    # @!attribute vpc_endpoint
    #   <p>The connection endpoint for connecting to an Amazon Redshift cluster through the proxy.</p>
    #
    #   @return [VpcEndpoint]
    #
    ModifyEndpointAccessOutput = ::Struct.new(
      :cluster_identifier,
      :resource_owner,
      :subnet_group_name,
      :endpoint_status,
      :endpoint_name,
      :endpoint_create_time,
      :port,
      :address,
      :vpc_security_groups,
      :vpc_endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.port ||= 0
      end
    end

    # <p></p>
    #
    # @!attribute subscription_name
    #   <p>The name of the modified Amazon Redshift event notification subscription.</p>
    #
    #   @return [String]
    #
    # @!attribute sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the SNS topic to be used by the event
    #               notification subscription.</p>
    #
    #   @return [String]
    #
    # @!attribute source_type
    #   <p>The type of source that will be generating the events. For example, if you want to
    #               be notified of events generated by a cluster, you would set this parameter to cluster.
    #               If this value is not specified, events are returned for all Amazon Redshift objects in your
    #               Amazon Web Services account. You must specify a source type in order to specify source IDs.</p>
    #           <p>Valid values: cluster, cluster-parameter-group, cluster-security-group, cluster-snapshot, and scheduled-action.</p>
    #
    #   @return [String]
    #
    # @!attribute source_ids
    #   <p>A list of one or more identifiers of Amazon Redshift source objects. All of the objects
    #               must be of the same type as was specified in the source type parameter. The event
    #               subscription will return only events generated by the specified objects. If not
    #               specified, then events are returned for all objects within the source type
    #               specified.</p>
    #           <p>Example: my-cluster-1, my-cluster-2</p>
    #           <p>Example: my-snapshot-20131010</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute event_categories
    #   <p>Specifies the Amazon Redshift event categories to be published by the event notification
    #               subscription.</p>
    #           <p>Values: configuration, management, monitoring, security, pending</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute severity
    #   <p>Specifies the Amazon Redshift event severity to be published by the event notification
    #               subscription.</p>
    #           <p>Values: ERROR, INFO</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>A Boolean value indicating if the subscription is enabled. <code>true</code>
    #               indicates the subscription is enabled </p>
    #
    #   @return [Boolean]
    #
    ModifyEventSubscriptionInput = ::Struct.new(
      :subscription_name,
      :sns_topic_arn,
      :source_type,
      :source_ids,
      :event_categories,
      :severity,
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_subscription
    #   <p>Describes event subscriptions.</p>
    #
    #   @return [EventSubscription]
    #
    ModifyEventSubscriptionOutput = ::Struct.new(
      :event_subscription,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scheduled_action_name
    #   <p>The name of the scheduled action to modify. </p>
    #
    #   @return [String]
    #
    # @!attribute target_action
    #   <p>A modified JSON format of the scheduled action.
    #               For more information about this parameter, see <a>ScheduledAction</a>. </p>
    #
    #   @return [ScheduledActionType]
    #
    # @!attribute schedule
    #   <p>A modified schedule in either <code>at( )</code> or <code>cron( )</code> format.
    #               For more information about this parameter, see <a>ScheduledAction</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_role
    #   <p>A different IAM role to assume to run the target action.
    #               For more information about this parameter, see <a>ScheduledAction</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute scheduled_action_description
    #   <p>A modified description of the scheduled action. </p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>A modified start time of the scheduled action.
    #               For more information about this parameter, see <a>ScheduledAction</a>. </p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>A modified end time of the scheduled action.
    #               For more information about this parameter, see <a>ScheduledAction</a>. </p>
    #
    #   @return [Time]
    #
    # @!attribute enable
    #   <p>A modified enable flag of the scheduled action. If true, the scheduled action is active. If false, the scheduled action is disabled. </p>
    #
    #   @return [Boolean]
    #
    ModifyScheduledActionInput = ::Struct.new(
      :scheduled_action_name,
      :target_action,
      :schedule,
      :iam_role,
      :scheduled_action_description,
      :start_time,
      :end_time,
      :enable,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a scheduled action. You can use a scheduled action to trigger some Amazon Redshift API operations on a schedule.
    #             For information about which API operations can be scheduled, see  <a>ScheduledActionType</a>. </p>
    #
    # @!attribute scheduled_action_name
    #   <p>The name of the scheduled action. </p>
    #
    #   @return [String]
    #
    # @!attribute target_action
    #   <p>A JSON format string of the Amazon Redshift API operation with input parameters. </p>
    #           <p>"<code>{\"ResizeCluster\":{\"NodeType\":\"ds2.8xlarge\",\"ClusterIdentifier\":\"my-test-cluster\",\"NumberOfNodes\":3}}</code>". </p>
    #
    #   @return [ScheduledActionType]
    #
    # @!attribute schedule
    #   <p>The schedule for a one-time (at format) or recurring (cron format) scheduled action.
    #               Schedule invocations must be separated by at least one hour.</p>
    #           <p>Format of at expressions is "<code>at(yyyy-mm-ddThh:mm:ss)</code>". For example, "<code>at(2016-03-04T17:27:00)</code>".</p>
    #           <p>Format of cron expressions is "<code>cron(Minutes Hours Day-of-month Month Day-of-week Year)</code>".
    #               For example, "<code>cron(0 10 ? * MON *)</code>". For more information, see
    #               <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html CronExpressions">Cron Expressions</a>
    #               in the <i>Amazon CloudWatch Events User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_role
    #   <p>The IAM role to assume to run the scheduled action.
    #               This IAM role must have permission to run the Amazon Redshift API operation in the scheduled action.
    #               This IAM role must allow the Amazon Redshift scheduler (Principal scheduler.redshift.amazonaws.com) to assume permissions on your behalf.
    #
    #   For more information about the IAM role to use with the Amazon Redshift scheduler, see
    #   <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html">Using Identity-Based Policies for Amazon Redshift</a>
    #   in the <i>Amazon Redshift Cluster Management Guide</i>.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute scheduled_action_description
    #   <p>The description of the scheduled action. </p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the scheduled action. For example, <code>DISABLED</code>. </p>
    #
    #   Enum, one of: ["ACTIVE", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute next_invocations
    #   <p>List of times when the scheduled action will run. </p>
    #
    #   @return [Array<Time>]
    #
    # @!attribute start_time
    #   <p>The start time in UTC when the schedule is active. Before this time, the scheduled action does not trigger. </p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The end time in UTC when the schedule is no longer active. After this time, the scheduled action does not trigger. </p>
    #
    #   @return [Time]
    #
    ModifyScheduledActionOutput = ::Struct.new(
      :scheduled_action_name,
      :target_action,
      :schedule,
      :iam_role,
      :scheduled_action_description,
      :state,
      :next_invocations,
      :start_time,
      :end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute cluster_identifier
    #   <p>The unique identifier of the cluster for which you want to change the retention
    #               period for either automated or manual snapshots that are copied to a destination Amazon Web Services Region.</p>
    #           <p>Constraints: Must be the valid name of an existing cluster that has cross-region
    #               snapshot copy enabled.</p>
    #
    #   @return [String]
    #
    # @!attribute retention_period
    #   <p>The number of days to retain automated snapshots in the destination Amazon Web Services Region
    #               after they are copied from the source Amazon Web Services Region.</p>
    #           <p>By default, this only changes the retention period of copied automated snapshots. </p>
    #           <p>If you decrease the retention period for automated snapshots that are copied to a
    #               destination Amazon Web Services Region, Amazon Redshift deletes any existing automated snapshots that were
    #               copied to the destination Amazon Web Services Region and that fall outside of the new retention
    #               period.</p>
    #           <p>Constraints: Must be at least 1 and no more than 35 for automated snapshots. </p>
    #           <p>If you specify the <code>manual</code> option, only newly copied manual snapshots will
    #               have the new retention period. </p>
    #           <p>If you specify the value of -1 newly copied manual snapshots are retained
    #               indefinitely.</p>
    #           <p>Constraints: The number of days must be either -1 or an integer between 1 and 3,653
    #               for manual snapshots.</p>
    #
    #   @return [Integer]
    #
    # @!attribute manual
    #   <p>Indicates whether to apply the snapshot retention period to newly copied manual
    #               snapshots instead of automated snapshots.</p>
    #
    #   @return [Boolean]
    #
    ModifySnapshotCopyRetentionPeriodInput = ::Struct.new(
      :cluster_identifier,
      :retention_period,
      :manual,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.retention_period ||= 0
        self.manual ||= false
      end
    end

    # @!attribute cluster
    #   <p>Describes a cluster.</p>
    #
    #   @return [Cluster]
    #
    ModifySnapshotCopyRetentionPeriodOutput = ::Struct.new(
      :cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute schedule_identifier
    #   <p>A unique alphanumeric identifier of the schedule to modify.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule_definitions
    #   <p>An updated list of schedule definitions. A schedule definition is made up of schedule
    #               expressions, for example, "cron(30 12 *)" or "rate(12 hours)".</p>
    #
    #   @return [Array<String>]
    #
    ModifySnapshotScheduleInput = ::Struct.new(
      :schedule_identifier,
      :schedule_definitions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a snapshot schedule. You can set a regular interval for creating
    #             snapshots of a cluster. You can also schedule snapshots for specific dates. </p>
    #
    # @!attribute schedule_definitions
    #   <p>A list of ScheduleDefinitions.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute schedule_identifier
    #   <p>A unique identifier for the schedule.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule_description
    #   <p>The description of the schedule.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>An optional set of tags describing the schedule.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute next_invocations
    #   <p></p>
    #
    #   @return [Array<Time>]
    #
    # @!attribute associated_cluster_count
    #   <p>The number of clusters associated with the schedule.</p>
    #
    #   @return [Integer]
    #
    # @!attribute associated_clusters
    #   <p>A list of clusters associated with the schedule. A maximum of 100 clusters is returned.</p>
    #
    #   @return [Array<ClusterAssociatedToSchedule>]
    #
    ModifySnapshotScheduleOutput = ::Struct.new(
      :schedule_definitions,
      :schedule_identifier,
      :schedule_description,
      :tags,
      :next_invocations,
      :associated_cluster_count,
      :associated_clusters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute usage_limit_id
    #   <p>The identifier of the usage limit to modify.</p>
    #
    #   @return [String]
    #
    # @!attribute amount
    #   <p>The new limit amount.
    #               For more information about this parameter, see <a>UsageLimit</a>. </p>
    #
    #   @return [Integer]
    #
    # @!attribute breach_action
    #   <p>The new action that Amazon Redshift takes when the limit is reached.
    #               For more information about this parameter, see <a>UsageLimit</a>. </p>
    #
    #   Enum, one of: ["log", "emit-metric", "disable"]
    #
    #   @return [String]
    #
    ModifyUsageLimitInput = ::Struct.new(
      :usage_limit_id,
      :amount,
      :breach_action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a usage limit object for a cluster. </p>
    #
    # @!attribute usage_limit_id
    #   <p>The identifier of the usage limit.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_identifier
    #   <p>The identifier of the cluster with a usage limit.</p>
    #
    #   @return [String]
    #
    # @!attribute feature_type
    #   <p>The Amazon Redshift feature to which the limit applies.</p>
    #
    #   Enum, one of: ["spectrum", "concurrency-scaling", "cross-region-datasharing"]
    #
    #   @return [String]
    #
    # @!attribute limit_type
    #   <p>The type of limit. Depending on the feature type, this can be based on a time duration or data size.</p>
    #
    #   Enum, one of: ["time", "data-scanned"]
    #
    #   @return [String]
    #
    # @!attribute amount
    #   <p>The limit amount. If time-based, this amount is in minutes. If data-based, this amount is in terabytes (TB).</p>
    #
    #   @return [Integer]
    #
    # @!attribute period
    #   <p>The time period that the amount applies to. A <code>weekly</code> period begins on Sunday. The default is <code>monthly</code>. </p>
    #
    #   Enum, one of: ["daily", "weekly", "monthly"]
    #
    #   @return [String]
    #
    # @!attribute breach_action
    #   <p>The action that Amazon Redshift takes when the limit is reached. Possible values are: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>log</b> - To log an event in a system table. The default is log.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>emit-metric</b> - To emit CloudWatch metrics.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>disable</b> - To disable the feature until the next usage period begins.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["log", "emit-metric", "disable"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tag instances.</p>
    #
    #   @return [Array<Tag>]
    #
    ModifyUsageLimitOutput = ::Struct.new(
      :usage_limit_id,
      :cluster_identifier,
      :feature_type,
      :limit_type,
      :amount,
      :period,
      :breach_action,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.amount ||= 0
      end
    end

    # <p>Describes a network interface. </p>
    #
    # @!attribute network_interface_id
    #   <p>The network interface identifier. </p>
    #
    #   @return [String]
    #
    # @!attribute subnet_id
    #   <p>The subnet identifier. </p>
    #
    #   @return [String]
    #
    # @!attribute private_ip_address
    #   <p>The IPv4 address of the network interface within the subnet. </p>
    #
    #   @return [String]
    #
    # @!attribute availability_zone
    #   <p>The Availability Zone. </p>
    #
    #   @return [String]
    #
    NetworkInterface = ::Struct.new(
      :network_interface_id,
      :subnet_id,
      :private_ip_address,
      :availability_zone,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of node configurations.</p>
    #
    # @!attribute node_type
    #   <p>The node type, such as, "ds2.8xlarge".</p>
    #
    #   @return [String]
    #
    # @!attribute number_of_nodes
    #   <p>The number of nodes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute estimated_disk_utilization_percent
    #   <p>The estimated disk utilizaton percentage.</p>
    #
    #   @return [Float]
    #
    # @!attribute mode
    #   <p>The category of the node configuration recommendation.</p>
    #
    #   Enum, one of: ["standard", "high-performance"]
    #
    #   @return [String]
    #
    NodeConfigurationOption = ::Struct.new(
      :node_type,
      :number_of_nodes,
      :estimated_disk_utilization_percent,
      :mode,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.number_of_nodes ||= 0
      end
    end

    # <p>A set of elements to filter the returned node configurations.</p>
    #
    # @!attribute name
    #   <p>The name of the element to filter.</p>
    #
    #   Enum, one of: ["NodeType", "NumberOfNodes", "EstimatedDiskUtilizationPercent", "Mode"]
    #
    #   @return [String]
    #
    # @!attribute operator
    #   <p>The filter operator.
    #               If filter Name is NodeType only the 'in' operator is supported.
    #               Provide one value to evaluate for 'eq', 'lt', 'le', 'gt', and 'ge'.
    #               Provide two values to evaluate for 'between'.
    #               Provide a list of values for 'in'.</p>
    #
    #   Enum, one of: ["eq", "lt", "gt", "le", "ge", "in", "between"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>List of values. Compare Name using Operator to Values.
    #               If filter Name is NumberOfNodes, then values can range from 0 to 200.
    #               If filter Name is EstimatedDiskUtilizationPercent, then values can range from 0 to 100.
    #               For example, filter NumberOfNodes (name) GT (operator) 3 (values).</p>
    #
    #   @return [Array<String>]
    #
    NodeConfigurationOptionsFilter = ::Struct.new(
      :name,
      :operator,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for NodeConfigurationOptionsFilterName
    #
    module NodeConfigurationOptionsFilterName
      # No documentation available.
      #
      NODE_TYPE = "NodeType"

      # No documentation available.
      #
      NUM_NODES = "NumberOfNodes"

      # No documentation available.
      #
      ESTIMATED_DISK_UTILIZATION_PERCENT = "EstimatedDiskUtilizationPercent"

      # No documentation available.
      #
      MODE = "Mode"
    end

    # <p>The operation would exceed the number of nodes allowed for a cluster.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NumberOfNodesPerClusterLimitExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation would exceed the number of nodes allotted to the account.
    #
    # For information about increasing your quota, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a>
    # in the <i>Amazon Redshift Cluster Management Guide</i>.
    # </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NumberOfNodesQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OperatorType
    #
    module OperatorType
      # No documentation available.
      #
      EQ = "eq"

      # No documentation available.
      #
      LT = "lt"

      # No documentation available.
      #
      GT = "gt"

      # No documentation available.
      #
      LE = "le"

      # No documentation available.
      #
      GE = "ge"

      # No documentation available.
      #
      IN = "in"

      # No documentation available.
      #
      BETWEEN = "between"
    end

    # <p>Describes an orderable cluster option.</p>
    #
    # @!attribute cluster_version
    #   <p>The version of the orderable cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_type
    #   <p>The cluster type, for example <code>multi-node</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute node_type
    #   <p>The node type for the orderable cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute availability_zones
    #   <p>A list of availability zones for the orderable cluster.</p>
    #
    #   @return [Array<AvailabilityZone>]
    #
    OrderableClusterOption = ::Struct.new(
      :cluster_version,
      :cluster_type,
      :node_type,
      :availability_zones,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a parameter in a cluster parameter group.</p>
    #
    # @!attribute parameter_name
    #   <p>The name of the parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute parameter_value
    #   <p>The value of the parameter. If <code>ParameterName</code> is <code>wlm_json_configuration</code>,
    #               then the maximum size of <code>ParameterValue</code> is 8000 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute source
    #   <p>The source of the parameter value, such as "engine-default" or "user".</p>
    #
    #   @return [String]
    #
    # @!attribute data_type
    #   <p>The data type of the parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute allowed_values
    #   <p>The valid range of values for the parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute apply_type
    #   <p>Specifies how to apply the WLM configuration parameter. Some properties can be
    #               applied dynamically, while other properties require that any associated clusters be
    #               rebooted for the configuration changes to be applied.
    #   For more information about parameters and parameter groups, go to
    #   <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Amazon Redshift Parameter Groups</a>
    #   in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #
    #   Enum, one of: ["static", "dynamic"]
    #
    #   @return [String]
    #
    # @!attribute is_modifiable
    #   <p>If <code>true</code>, the parameter can be modified. Some parameters have security
    #               or operational implications that prevent them from being changed. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute minimum_engine_version
    #   <p>The earliest engine version to which the parameter can apply.</p>
    #
    #   @return [String]
    #
    Parameter = ::Struct.new(
      :parameter_name,
      :parameter_value,
      :description,
      :source,
      :data_type,
      :allowed_values,
      :apply_type,
      :is_modifiable,
      :minimum_engine_version,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_modifiable ||= false
      end
    end

    # Includes enum constants for ParameterApplyType
    #
    module ParameterApplyType
      # No documentation available.
      #
      static = "static"

      # No documentation available.
      #
      dynamic = "dynamic"
    end

    # <p>Describes a partner integration.</p>
    #
    # @!attribute database_name
    #   <p>The name of the database that receives data from a partner.</p>
    #
    #   @return [String]
    #
    # @!attribute partner_name
    #   <p>The name of the partner.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The partner integration status.</p>
    #
    #   Enum, one of: ["Active", "Inactive", "RuntimeFailure", "ConnectionFailure"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>The status message provided by the partner.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date (UTC) that the partner integration was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_at
    #   <p>The date (UTC) that the partner integration status was last updated by the partner.</p>
    #
    #   @return [Time]
    #
    PartnerIntegrationInfo = ::Struct.new(
      :database_name,
      :partner_name,
      :status,
      :status_message,
      :created_at,
      :updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PartnerIntegrationStatus
    #
    module PartnerIntegrationStatus
      # No documentation available.
      #
      Active = "Active"

      # No documentation available.
      #
      Inactive = "Inactive"

      # No documentation available.
      #
      RuntimeFailure = "RuntimeFailure"

      # No documentation available.
      #
      ConnectionFailure = "ConnectionFailure"
    end

    # <p>The name of the partner was not found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    PartnerNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a pause cluster operation. For example, a scheduled action to run the <code>PauseCluster</code> API operation. </p>
    #
    # @!attribute cluster_identifier
    #   <p>The identifier of the cluster to be paused.</p>
    #
    #   @return [String]
    #
    PauseClusterInput = ::Struct.new(
      :cluster_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a pause cluster operation. For example, a scheduled action to run the <code>PauseCluster</code> API operation. </p>
    #
    # @!attribute cluster_identifier
    #   <p>The identifier of the cluster to be paused.</p>
    #
    #   @return [String]
    #
    PauseClusterMessage = ::Struct.new(
      :cluster_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>Describes a cluster.</p>
    #
    #   @return [Cluster]
    #
    PauseClusterOutput = ::Struct.new(
      :cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes cluster attributes that are in a pending state. A change to one or more
    #             the attributes was requested and is in progress or will be applied.</p>
    #
    # @!attribute master_user_password
    #   <p>The pending or in-progress change of the admin user password for the
    #               cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute node_type
    #   <p>The pending or in-progress change of the cluster's node type.</p>
    #
    #   @return [String]
    #
    # @!attribute number_of_nodes
    #   <p>The pending or in-progress change of the number of nodes in the cluster.</p>
    #
    #   @return [Integer]
    #
    # @!attribute cluster_type
    #   <p>The pending or in-progress change of the cluster type.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_version
    #   <p>The pending or in-progress change of the service version.</p>
    #
    #   @return [String]
    #
    # @!attribute automated_snapshot_retention_period
    #   <p>The pending or in-progress change of the automated snapshot retention
    #               period.</p>
    #
    #   @return [Integer]
    #
    # @!attribute cluster_identifier
    #   <p>The pending or in-progress change of the new identifier for the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute publicly_accessible
    #   <p>The pending or in-progress change of the ability to connect to the cluster from the
    #               public network.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enhanced_vpc_routing
    #   <p>An option that specifies whether to create the cluster with enhanced VPC routing
    #               enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a
    #               VPC. For more information, see <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html">Enhanced VPC Routing</a> in
    #               the Amazon Redshift Cluster Management Guide.</p>
    #           <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p>
    #           <p>Default: false</p>
    #
    #   @return [Boolean]
    #
    # @!attribute maintenance_track_name
    #   <p>The name of the maintenance track that the cluster will change to during the next
    #               maintenance window.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_type
    #   <p>The encryption type for a cluster. Possible values are: KMS and None. </p>
    #
    #   @return [String]
    #
    PendingModifiedValues = ::Struct.new(
      :master_user_password,
      :node_type,
      :number_of_nodes,
      :cluster_type,
      :cluster_version,
      :automated_snapshot_retention_period,
      :cluster_identifier,
      :publicly_accessible,
      :enhanced_vpc_routing,
      :maintenance_track_name,
      :encryption_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute reserved_node_offering_id
    #   <p>The unique identifier of the reserved node offering you want to purchase.</p>
    #
    #   @return [String]
    #
    # @!attribute node_count
    #   <p>The number of reserved nodes that you want to purchase.</p>
    #           <p>Default: <code>1</code>
    #           </p>
    #
    #   @return [Integer]
    #
    PurchaseReservedNodeOfferingInput = ::Struct.new(
      :reserved_node_offering_id,
      :node_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute reserved_node
    #   <p>Describes a reserved node. You can call the <a>DescribeReservedNodeOfferings</a> API to obtain the available reserved node
    #               offerings. </p>
    #
    #   @return [ReservedNode]
    #
    PurchaseReservedNodeOfferingOutput = ::Struct.new(
      :reserved_node,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute cluster_identifier
    #   <p>The cluster identifier.</p>
    #
    #   @return [String]
    #
    RebootClusterInput = ::Struct.new(
      :cluster_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>Describes a cluster.</p>
    #
    #   @return [Cluster]
    #
    RebootClusterOutput = ::Struct.new(
      :cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a recurring charge.</p>
    #
    # @!attribute recurring_charge_amount
    #   <p>The amount charged per the period of time specified by the recurring charge
    #               frequency.</p>
    #
    #   @return [Float]
    #
    # @!attribute recurring_charge_frequency
    #   <p>The frequency at which the recurring charge amount is applied.</p>
    #
    #   @return [String]
    #
    RecurringCharge = ::Struct.new(
      :recurring_charge_amount,
      :recurring_charge_frequency,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.recurring_charge_amount ||= 0
      end
    end

    # @!attribute data_share_arn
    #   <p>The Amazon Resource Name (ARN) of the datashare to reject.</p>
    #
    #   @return [String]
    #
    RejectDataShareInput = ::Struct.new(
      :data_share_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute data_share_arn
    #   <p>An Amazon Resource Name (ARN) that references the datashare that is owned by a specific namespace of the producer cluster. A datashare ARN is in the <code>arn:aws:redshift:{region}:{account-id}:{datashare}:{namespace-guid}/{datashare-name}</code> format.</p>
    #
    #   @return [String]
    #
    # @!attribute producer_arn
    #   <p>The Amazon Resource Name (ARN) of the producer.</p>
    #
    #   @return [String]
    #
    # @!attribute allow_publicly_accessible_consumers
    #   <p>A value that specifies whether the datashare can be shared to a publicly accessible  cluster.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute data_share_associations
    #   <p>A value that specifies when the datashare has an association between producer and data
    #               consumers.</p>
    #
    #   @return [Array<DataShareAssociation>]
    #
    # @!attribute managed_by
    #   <p>The identifier of a datashare to show its managing entity.</p>
    #
    #   @return [String]
    #
    RejectDataShareOutput = ::Struct.new(
      :data_share_arn,
      :producer_arn,
      :allow_publicly_accessible_consumers,
      :data_share_associations,
      :managed_by,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.allow_publicly_accessible_consumers ||= false
      end
    end

    # <p>Describes a reserved node. You can call the <a>DescribeReservedNodeOfferings</a> API to obtain the available reserved node
    #             offerings. </p>
    #
    # @!attribute reserved_node_id
    #   <p>The unique identifier for the reservation.</p>
    #
    #   @return [String]
    #
    # @!attribute reserved_node_offering_id
    #   <p>The identifier for the reserved node offering.</p>
    #
    #   @return [String]
    #
    # @!attribute node_type
    #   <p>The node type of the reserved node.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The time the reservation started. You purchase a reserved node offering for a
    #               duration. This is the start time of that duration.</p>
    #
    #   @return [Time]
    #
    # @!attribute duration
    #   <p>The duration of the node reservation in seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute fixed_price
    #   <p>The fixed cost Amazon Redshift charges you for this reserved node.</p>
    #
    #   @return [Float]
    #
    # @!attribute usage_price
    #   <p>The hourly rate Amazon Redshift charges you for this reserved node.</p>
    #
    #   @return [Float]
    #
    # @!attribute currency_code
    #   <p>The currency code for the reserved cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute node_count
    #   <p>The number of reserved compute nodes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute state
    #   <p>The state of the reserved compute node.</p>
    #           <p>Possible Values:</p>
    #           <ul>
    #               <li>
    #                   <p>pending-payment-This reserved node has recently been purchased, and the
    #                       sale has been approved, but payment has not yet been confirmed.</p>
    #               </li>
    #               <li>
    #                   <p>active-This reserved node is owned by the caller and is available for
    #                       use.</p>
    #               </li>
    #               <li>
    #                   <p>payment-failed-Payment failed for the purchase attempt.</p>
    #               </li>
    #               <li>
    #                   <p>retired-The reserved node is no longer available. </p>
    #               </li>
    #               <li>
    #                   <p>exchanging-The owner is exchanging the reserved node for another reserved
    #                       node.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute offering_type
    #   <p>The anticipated utilization of the reserved node, as defined in the reserved node
    #               offering.</p>
    #
    #   @return [String]
    #
    # @!attribute recurring_charges
    #   <p>The recurring charges for the reserved node.</p>
    #
    #   @return [Array<RecurringCharge>]
    #
    # @!attribute reserved_node_offering_type
    #   <p></p>
    #
    #   Enum, one of: ["Regular", "Upgradable"]
    #
    #   @return [String]
    #
    ReservedNode = ::Struct.new(
      :reserved_node_id,
      :reserved_node_offering_id,
      :node_type,
      :start_time,
      :duration,
      :fixed_price,
      :usage_price,
      :currency_code,
      :node_count,
      :state,
      :offering_type,
      :recurring_charges,
      :reserved_node_offering_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.duration ||= 0
        self.fixed_price ||= 0
        self.usage_price ||= 0
        self.node_count ||= 0
      end
    end

    # <p>User already has a reservation with the given identifier.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ReservedNodeAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that the reserved node has already been exchanged.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ReservedNodeAlreadyMigratedFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details for a reserved-node exchange. Examples include the node type for a
    #             reserved node, the price for a node, the node's state, and other details.</p>
    #
    # @!attribute source_reserved_node
    #   <p>Describes a reserved node. You can call the <a>DescribeReservedNodeOfferings</a> API to obtain the available reserved node
    #               offerings. </p>
    #
    #   @return [ReservedNode]
    #
    # @!attribute target_reserved_node_count
    #   <p>The target reserved-node count.</p>
    #
    #   @return [Integer]
    #
    # @!attribute target_reserved_node_offering
    #   <p>Describes a reserved node offering.</p>
    #
    #   @return [ReservedNodeOffering]
    #
    ReservedNodeConfigurationOption = ::Struct.new(
      :source_reserved_node,
      :target_reserved_node_count,
      :target_reserved_node_offering,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.target_reserved_node_count ||= 0
      end
    end

    # Includes enum constants for ReservedNodeExchangeActionType
    #
    module ReservedNodeExchangeActionType
      # No documentation available.
      #
      RESTORE_CLUSTER = "restore-cluster"

      # No documentation available.
      #
      RESIZE_CLUSTER = "resize-cluster"
    end

    # <p>The reserved-node exchange status wasn't found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ReservedNodeExchangeNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Reserved-node status details, such as the source reserved-node
    #             identifier, the target reserved-node identifier, the node type, the node count, and
    #             other details.</p>
    #
    # @!attribute reserved_node_exchange_request_id
    #   <p>The identifier of the reserved-node exchange request.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the reserved-node exchange request. Statuses include in-progress and requested.</p>
    #
    #   Enum, one of: ["REQUESTED", "PENDING", "IN_PROGRESS", "RETRYING", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute request_time
    #   <p>A date and time that indicate when the reserved-node exchange was requested.</p>
    #
    #   @return [Time]
    #
    # @!attribute source_reserved_node_id
    #   <p>The identifier of the source reserved node.</p>
    #
    #   @return [String]
    #
    # @!attribute source_reserved_node_type
    #   <p>The source reserved-node type, for example ds2.xlarge.</p>
    #
    #   @return [String]
    #
    # @!attribute source_reserved_node_count
    #   <p>The source reserved-node count in the cluster.</p>
    #
    #   @return [Integer]
    #
    # @!attribute target_reserved_node_offering_id
    #   <p>The identifier of the target reserved node offering.</p>
    #
    #   @return [String]
    #
    # @!attribute target_reserved_node_type
    #   <p>The node type of the target reserved node, for example ra3.4xlarge.</p>
    #
    #   @return [String]
    #
    # @!attribute target_reserved_node_count
    #   <p>The count of target reserved nodes in the cluster.</p>
    #
    #   @return [Integer]
    #
    ReservedNodeExchangeStatus = ::Struct.new(
      :reserved_node_exchange_request_id,
      :status,
      :request_time,
      :source_reserved_node_id,
      :source_reserved_node_type,
      :source_reserved_node_count,
      :target_reserved_node_offering_id,
      :target_reserved_node_type,
      :target_reserved_node_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.source_reserved_node_count ||= 0
        self.target_reserved_node_count ||= 0
      end
    end

    # Includes enum constants for ReservedNodeExchangeStatusType
    #
    module ReservedNodeExchangeStatusType
      # No documentation available.
      #
      REQUESTED = "REQUESTED"

      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      RETRYING = "RETRYING"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>The specified reserved compute node not found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ReservedNodeNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a reserved node offering.</p>
    #
    # @!attribute reserved_node_offering_id
    #   <p>The offering identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute node_type
    #   <p>The node type offered by the reserved node offering.</p>
    #
    #   @return [String]
    #
    # @!attribute duration
    #   <p>The duration, in seconds, for which the offering will reserve the node.</p>
    #
    #   @return [Integer]
    #
    # @!attribute fixed_price
    #   <p>The upfront fixed charge you will pay to purchase the specific reserved node
    #               offering.</p>
    #
    #   @return [Float]
    #
    # @!attribute usage_price
    #   <p>The rate you are charged for each hour the cluster that is using the offering is
    #               running.</p>
    #
    #   @return [Float]
    #
    # @!attribute currency_code
    #   <p>The currency code for the compute nodes offering.</p>
    #
    #   @return [String]
    #
    # @!attribute offering_type
    #   <p>The anticipated utilization of the reserved node, as defined in the reserved node
    #               offering.</p>
    #
    #   @return [String]
    #
    # @!attribute recurring_charges
    #   <p>The charge to your account regardless of whether you are creating any clusters
    #               using the node offering. Recurring charges are only in effect for heavy-utilization
    #               reserved nodes.</p>
    #
    #   @return [Array<RecurringCharge>]
    #
    # @!attribute reserved_node_offering_type
    #   <p></p>
    #
    #   Enum, one of: ["Regular", "Upgradable"]
    #
    #   @return [String]
    #
    ReservedNodeOffering = ::Struct.new(
      :reserved_node_offering_id,
      :node_type,
      :duration,
      :fixed_price,
      :usage_price,
      :currency_code,
      :offering_type,
      :recurring_charges,
      :reserved_node_offering_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.duration ||= 0
        self.fixed_price ||= 0
        self.usage_price ||= 0
      end
    end

    # <p>Specified offering does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ReservedNodeOfferingNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ReservedNodeOfferingType
    #
    module ReservedNodeOfferingType
      # No documentation available.
      #
      Regular = "Regular"

      # No documentation available.
      #
      Upgradable = "Upgradable"
    end

    # <p>Request would exceed the user's compute node quota.
    # For information about increasing your quota, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a>
    # in the <i>Amazon Redshift Cluster Management Guide</i>.
    # </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ReservedNodeQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute parameter_group_name
    #   <p>The name of the cluster parameter group to be reset.</p>
    #
    #   @return [String]
    #
    # @!attribute reset_all_parameters
    #   <p>If <code>true</code>, all parameters in the specified parameter group will be reset
    #               to their default values. </p>
    #           <p>Default: <code>true</code>
    #           </p>
    #
    #   @return [Boolean]
    #
    # @!attribute parameters
    #   <p>An array of names of parameters to be reset. If
    #                   <i>ResetAllParameters</i> option is not used, then at least one
    #               parameter name must be supplied. </p>
    #           <p>Constraints: A maximum of 20 parameters can be reset in a single request.</p>
    #
    #   @return [Array<Parameter>]
    #
    ResetClusterParameterGroupInput = ::Struct.new(
      :parameter_group_name,
      :reset_all_parameters,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.reset_all_parameters ||= false
      end
    end

    # <p></p>
    #
    # @!attribute parameter_group_name
    #   <p>The name of the cluster parameter group.</p>
    #
    #   @return [String]
    #
    # @!attribute parameter_group_status
    #   <p>The status of the parameter group. For example, if you made a change to a parameter
    #               group name-value pair, then the change could be pending a reboot of an associated
    #               cluster.</p>
    #
    #   @return [String]
    #
    ResetClusterParameterGroupOutput = ::Struct.new(
      :parameter_group_name,
      :parameter_group_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a resize cluster operation. For example, a scheduled action to run the <code>ResizeCluster</code> API operation. </p>
    #
    # @!attribute cluster_identifier
    #   <p>The unique identifier for the cluster to resize.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_type
    #   <p>The new cluster type for the specified cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute node_type
    #   <p>The new node type for the nodes you are adding. If not specified, the cluster's current node type is used.</p>
    #
    #   @return [String]
    #
    # @!attribute number_of_nodes
    #   <p>The new number of nodes for the cluster. If not specified, the cluster's current number of nodes is used.</p>
    #
    #   @return [Integer]
    #
    # @!attribute classic
    #   <p>A boolean value indicating whether the resize operation is using the classic resize
    #               process. If you don't provide this parameter or set the value to
    #               <code>false</code>, the resize type is elastic. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute reserved_node_id
    #   <p>The identifier of the reserved node.</p>
    #
    #   @return [String]
    #
    # @!attribute target_reserved_node_offering_id
    #   <p>The identifier of the target reserved node offering.</p>
    #
    #   @return [String]
    #
    ResizeClusterInput = ::Struct.new(
      :cluster_identifier,
      :cluster_type,
      :node_type,
      :number_of_nodes,
      :classic,
      :reserved_node_id,
      :target_reserved_node_offering_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a resize cluster operation. For example, a scheduled action to run the <code>ResizeCluster</code> API operation. </p>
    #
    # @!attribute cluster_identifier
    #   <p>The unique identifier for the cluster to resize.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_type
    #   <p>The new cluster type for the specified cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute node_type
    #   <p>The new node type for the nodes you are adding. If not specified, the cluster's current node type is used.</p>
    #
    #   @return [String]
    #
    # @!attribute number_of_nodes
    #   <p>The new number of nodes for the cluster. If not specified, the cluster's current number of nodes is used.</p>
    #
    #   @return [Integer]
    #
    # @!attribute classic
    #   <p>A boolean value indicating whether the resize operation is using the classic resize
    #               process. If you don't provide this parameter or set the value to
    #               <code>false</code>, the resize type is elastic. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute reserved_node_id
    #   <p>The identifier of the reserved node.</p>
    #
    #   @return [String]
    #
    # @!attribute target_reserved_node_offering_id
    #   <p>The identifier of the target reserved node offering.</p>
    #
    #   @return [String]
    #
    ResizeClusterMessage = ::Struct.new(
      :cluster_identifier,
      :cluster_type,
      :node_type,
      :number_of_nodes,
      :classic,
      :reserved_node_id,
      :target_reserved_node_offering_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>Describes a cluster.</p>
    #
    #   @return [Cluster]
    #
    ResizeClusterOutput = ::Struct.new(
      :cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a resize operation.</p>
    #
    # @!attribute resize_type
    #   <p>Returns the value <code>ClassicResize</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute allow_cancel_resize
    #   <p>A boolean value indicating if the resize operation can be cancelled.</p>
    #
    #   @return [Boolean]
    #
    ResizeInfo = ::Struct.new(
      :resize_type,
      :allow_cancel_resize,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.allow_cancel_resize ||= false
      end
    end

    # <p>A resize operation for the specified cluster is not found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResizeNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource could not be found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute cluster_identifier
    #   <p>The identifier of the cluster that will be created from restoring the
    #               snapshot.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>Alphabetic characters must be lowercase.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>Must be unique for all clusters within an Amazon Web Services account.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute snapshot_identifier
    #   <p>The name of the snapshot from which to create the new cluster. This parameter isn't
    #               case sensitive.</p>
    #           <p>Example: <code>my-snapshot-id</code>
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_cluster_identifier
    #   <p>The name of the cluster the source snapshot was created from. This parameter is
    #               required if your IAM user has a policy containing a snapshot resource element that
    #               specifies anything other than * for the cluster name.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port number on which the cluster accepts connections.</p>
    #           <p>Default: The same port as the original cluster.</p>
    #           <p>Constraints: Must be between <code>1115</code> and <code>65535</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute availability_zone
    #   <p>The Amazon EC2 Availability Zone in which to restore the cluster.</p>
    #           <p>Default: A random, system-chosen Availability Zone.</p>
    #           <p>Example: <code>us-east-2a</code>
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute allow_version_upgrade
    #   <p>If <code>true</code>, major version upgrades can be applied during the maintenance
    #               window to the Amazon Redshift engine that is running on the cluster. </p>
    #           <p>Default: <code>true</code>
    #           </p>
    #
    #   @return [Boolean]
    #
    # @!attribute cluster_subnet_group_name
    #   <p>The name of the subnet group where you want to cluster restored.</p>
    #           <p>A snapshot of cluster in VPC can be restored only in VPC. Therefore, you must
    #               provide subnet group name where you want the cluster restored.</p>
    #
    #   @return [String]
    #
    # @!attribute publicly_accessible
    #   <p>If <code>true</code>, the cluster can be accessed from a public network. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute owner_account
    #   <p>The Amazon Web Services account used to create or copy the snapshot. Required if you are
    #               restoring a snapshot you do not own, optional if you own the snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute hsm_client_certificate_identifier
    #   <p>Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to
    #               retrieve the data encryption keys stored in an HSM.</p>
    #
    #   @return [String]
    #
    # @!attribute hsm_configuration_identifier
    #   <p>Specifies the name of the HSM configuration that contains the information the
    #               Amazon Redshift cluster can use to retrieve and store keys in an HSM.</p>
    #
    #   @return [String]
    #
    # @!attribute elastic_ip
    #   <p>The elastic IP (EIP) address for the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_parameter_group_name
    #   <p>The name of the parameter group to be associated with this cluster.</p>
    #           <p>Default: The default Amazon Redshift cluster parameter group. For information about the
    #               default parameter group, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Working with Amazon
    #                   Redshift Parameter Groups</a>.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be 1 to 255 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute cluster_security_groups
    #   <p>A list of security groups to be associated with this cluster.</p>
    #           <p>Default: The default cluster security group for Amazon Redshift.</p>
    #           <p>Cluster security groups only apply to clusters outside of VPCs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute vpc_security_group_ids
    #   <p>A list of Virtual Private Cloud (VPC) security groups to be associated with the
    #               cluster.</p>
    #           <p>Default: The default VPC security group is associated with the cluster.</p>
    #           <p>VPC security groups only apply to clusters in VPCs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute preferred_maintenance_window
    #   <p>The weekly time range (in UTC) during which automated cluster maintenance can
    #               occur.</p>
    #           <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #           </p>
    #           <p> Default: The value selected for the cluster from which the snapshot was taken. For
    #               more information about the time blocks for each region, see <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html rs-maintenance-windows">Maintenance Windows</a> in Amazon Redshift Cluster Management Guide. </p>
    #           <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p>
    #           <p>Constraints: Minimum 30-minute window.</p>
    #
    #   @return [String]
    #
    # @!attribute automated_snapshot_retention_period
    #   <p>The number of days that automated snapshots are retained. If the value is 0,
    #               automated snapshots are disabled. Even if automated snapshots are disabled, you can
    #               still create manual snapshots when you want with <a>CreateClusterSnapshot</a>. </p>
    #
    #           <p>You can't disable automated snapshots for RA3 node types. Set the automated retention period from 1-35 days.</p>
    #           <p>Default: The value selected for the cluster from which the snapshot was
    #               taken.</p>
    #           <p>Constraints: Must be a value from 0 to 35.</p>
    #
    #   @return [Integer]
    #
    # @!attribute manual_snapshot_retention_period
    #   <p>The default number of days to retain a manual snapshot. If the value is -1, the
    #               snapshot is retained indefinitely. This setting doesn't change the retention period
    #               of existing snapshots.</p>
    #           <p>The value must be either -1 or an integer between 1 and 3,653.</p>
    #
    #   @return [Integer]
    #
    # @!attribute kms_key_id
    #   <p>The Key Management Service (KMS) key ID of the encryption key that encrypts data in the cluster
    #               restored from a shared snapshot. You can also provide
    #               the key ID when you restore from an unencrypted snapshot to an encrypted cluster in
    #               the same account. Additionally, you can specify a new KMS key ID when you restore from an encrypted
    #               snapshot in the same account in order to change it. In that case, the restored cluster is encrypted
    #               with the new KMS key ID.</p>
    #
    #   @return [String]
    #
    # @!attribute node_type
    #   <p>The node type that the restored cluster will be provisioned with.</p>
    #           <p>Default: The node type of the cluster from which the snapshot was taken. You can
    #               modify this if you are using any DS node type. In that case, you can choose to restore
    #               into another DS node type of the same size. For example, you can restore ds1.8xlarge
    #               into ds2.8xlarge, or ds1.xlarge into ds2.xlarge. If you have a DC instance type, you
    #               must restore into that same instance type and size. In other words, you can only restore
    #               a dc1.large instance type into another dc1.large instance type or dc2.large instance
    #               type. You can't restore dc1.8xlarge to dc2.8xlarge. First restore to a dc1.8xlarge
    #               cluster, then resize to a dc2.8large cluster. For more information about node types, see
    #                   <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html rs-about-clusters-and-nodes">
    #                   About Clusters and Nodes</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
    #
    #   @return [String]
    #
    # @!attribute enhanced_vpc_routing
    #   <p>An option that specifies whether to create the cluster with enhanced VPC routing
    #               enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a
    #               VPC. For more information, see <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html">Enhanced VPC Routing</a> in
    #               the Amazon Redshift Cluster Management Guide.</p>
    #           <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p>
    #           <p>Default: false</p>
    #
    #   @return [Boolean]
    #
    # @!attribute additional_info
    #   <p>Reserved.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_roles
    #   <p>A list of Identity and Access Management (IAM) roles that can be used by the
    #               cluster to access other Amazon Web Services services. You must supply the IAM roles in their Amazon
    #               Resource Name (ARN) format. </p>
    #           <p>The maximum number of IAM roles that you can associate is subject to a quota.
    #               For more information, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Quotas and limits</a>
    #               in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute maintenance_track_name
    #   <p>The name of the maintenance track for the restored cluster. When you take a snapshot,
    #               the snapshot inherits the <code>MaintenanceTrack</code> value from the cluster. The
    #               snapshot might be on a different track than the cluster that was the source for the
    #               snapshot. For example, suppose that you take a snapshot of a cluster that is on the
    #               current track and then change the cluster to be on the trailing track. In this case, the
    #               snapshot and the source cluster are on different tracks.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_schedule_identifier
    #   <p>A unique identifier for the snapshot schedule.</p>
    #
    #   @return [String]
    #
    # @!attribute number_of_nodes
    #   <p>The number of nodes specified when provisioning the restored cluster.</p>
    #
    #   @return [Integer]
    #
    # @!attribute availability_zone_relocation
    #   <p>The option to enable relocation for an Amazon Redshift cluster between Availability Zones after the cluster is restored.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute aqua_configuration_status
    #   <p>The value represents how the cluster is configured to use AQUA (Advanced Query Accelerator) after the cluster is restored. Possible values include the following.</p>
    #           <ul>
    #               <li>
    #                  <p>enabled - Use AQUA if it is available for the current Amazon Web Services Region and Amazon Redshift node type.</p>
    #               </li>
    #               <li>
    #                  <p>disabled - Don't use AQUA. </p>
    #               </li>
    #               <li>
    #                  <p>auto - Amazon Redshift determines whether to use AQUA.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["enabled", "disabled", "auto"]
    #
    #   @return [String]
    #
    # @!attribute default_iam_role_arn
    #   <p>The Amazon Resource Name (ARN) for the IAM role that was set as default for the cluster when the cluster was last modified while it was restored from a snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute reserved_node_id
    #   <p>The identifier of the target reserved node offering.</p>
    #
    #   @return [String]
    #
    # @!attribute target_reserved_node_offering_id
    #   <p>The identifier of the target reserved node offering.</p>
    #
    #   @return [String]
    #
    # @!attribute encrypted
    #   <p>Enables support for restoring an unencrypted snapshot to a cluster encrypted
    #               with Key Management Service (KMS) and a customer managed key.</p>
    #
    #   @return [Boolean]
    #
    RestoreFromClusterSnapshotInput = ::Struct.new(
      :cluster_identifier,
      :snapshot_identifier,
      :snapshot_cluster_identifier,
      :port,
      :availability_zone,
      :allow_version_upgrade,
      :cluster_subnet_group_name,
      :publicly_accessible,
      :owner_account,
      :hsm_client_certificate_identifier,
      :hsm_configuration_identifier,
      :elastic_ip,
      :cluster_parameter_group_name,
      :cluster_security_groups,
      :vpc_security_group_ids,
      :preferred_maintenance_window,
      :automated_snapshot_retention_period,
      :manual_snapshot_retention_period,
      :kms_key_id,
      :node_type,
      :enhanced_vpc_routing,
      :additional_info,
      :iam_roles,
      :maintenance_track_name,
      :snapshot_schedule_identifier,
      :number_of_nodes,
      :availability_zone_relocation,
      :aqua_configuration_status,
      :default_iam_role_arn,
      :reserved_node_id,
      :target_reserved_node_offering_id,
      :encrypted,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>Describes a cluster.</p>
    #
    #   @return [Cluster]
    #
    RestoreFromClusterSnapshotOutput = ::Struct.new(
      :cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the status of a cluster restore action. Returns null if the cluster was
    #             not created by restoring a snapshot.</p>
    #
    # @!attribute status
    #   <p>The status of the restore action. Returns starting, restoring, completed, or
    #               failed.</p>
    #
    #   @return [String]
    #
    # @!attribute current_restore_rate_in_mega_bytes_per_second
    #   <p>The number of megabytes per second being transferred from the backup storage.
    #               Returns the average rate for a completed backup.
    #               This field is only updated when you restore to DC2 and DS2 node types. </p>
    #
    #   @return [Float]
    #
    # @!attribute snapshot_size_in_mega_bytes
    #   <p>The size of the set of snapshot data used to restore the cluster.
    #               This field is only updated when you restore to DC2 and DS2 node types. </p>
    #
    #   @return [Integer]
    #
    # @!attribute progress_in_mega_bytes
    #   <p>The number of megabytes that have been transferred from snapshot storage.
    #               This field is only updated when you restore to DC2 and DS2 node types. </p>
    #
    #   @return [Integer]
    #
    # @!attribute elapsed_time_in_seconds
    #   <p>The amount of time an in-progress restore has been running, or the amount of time
    #               it took a completed restore to finish.
    #               This field is only updated when you restore to DC2 and DS2 node types. </p>
    #
    #   @return [Integer]
    #
    # @!attribute estimated_time_to_completion_in_seconds
    #   <p>The estimate of the time remaining before the restore will complete. Returns 0 for
    #               a completed restore.
    #               This field is only updated when you restore to DC2 and DS2 node types. </p>
    #
    #   @return [Integer]
    #
    RestoreStatus = ::Struct.new(
      :status,
      :current_restore_rate_in_mega_bytes_per_second,
      :snapshot_size_in_mega_bytes,
      :progress_in_mega_bytes,
      :elapsed_time_in_seconds,
      :estimated_time_to_completion_in_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.current_restore_rate_in_mega_bytes_per_second ||= 0
        self.snapshot_size_in_mega_bytes ||= 0
        self.progress_in_mega_bytes ||= 0
        self.elapsed_time_in_seconds ||= 0
        self.estimated_time_to_completion_in_seconds ||= 0
      end
    end

    # <p></p>
    #
    # @!attribute cluster_identifier
    #   <p>The identifier of the Amazon Redshift cluster to restore the table to.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_identifier
    #   <p>The identifier of the snapshot to restore the table from. This snapshot must have
    #               been created from the Amazon Redshift cluster specified by the
    #                   <code>ClusterIdentifier</code> parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute source_database_name
    #   <p>The name of the source database that contains the table to restore from.</p>
    #
    #   @return [String]
    #
    # @!attribute source_schema_name
    #   <p>The name of the source schema that contains the table to restore from. If you do
    #               not specify a <code>SourceSchemaName</code> value, the default is
    #               <code>public</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute source_table_name
    #   <p>The name of the source table to restore from.</p>
    #
    #   @return [String]
    #
    # @!attribute target_database_name
    #   <p>The name of the database to restore the table to.</p>
    #
    #   @return [String]
    #
    # @!attribute target_schema_name
    #   <p>The name of the schema to restore the table to.</p>
    #
    #   @return [String]
    #
    # @!attribute new_table_name
    #   <p>The name of the table to create as a result of the current request.</p>
    #
    #   @return [String]
    #
    # @!attribute enable_case_sensitive_identifier
    #   <p>Indicates whether name identifiers for database, schema, and table are case sensitive.
    #               If <code>true</code>, the names are case sensitive.
    #               If <code>false</code> (default), the names are not case sensitive.</p>
    #
    #   @return [Boolean]
    #
    RestoreTableFromClusterSnapshotInput = ::Struct.new(
      :cluster_identifier,
      :snapshot_identifier,
      :source_database_name,
      :source_schema_name,
      :source_table_name,
      :target_database_name,
      :target_schema_name,
      :new_table_name,
      :enable_case_sensitive_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute table_restore_status
    #   <p>Describes the status of a <a>RestoreTableFromClusterSnapshot</a>
    #               operation.</p>
    #
    #   @return [TableRestoreStatus]
    #
    RestoreTableFromClusterSnapshotOutput = ::Struct.new(
      :table_restore_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a resume cluster operation. For example, a scheduled action to run the <code>ResumeCluster</code> API operation. </p>
    #
    # @!attribute cluster_identifier
    #   <p>The identifier of the cluster to be resumed.</p>
    #
    #   @return [String]
    #
    ResumeClusterInput = ::Struct.new(
      :cluster_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a resume cluster operation. For example, a scheduled action to run the <code>ResumeCluster</code> API operation. </p>
    #
    # @!attribute cluster_identifier
    #   <p>The identifier of the cluster to be resumed.</p>
    #
    #   @return [String]
    #
    ResumeClusterMessage = ::Struct.new(
      :cluster_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>Describes a cluster.</p>
    #
    #   @return [Cluster]
    #
    ResumeClusterOutput = ::Struct.new(
      :cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a <code>RevisionTarget</code>.</p>
    #
    # @!attribute database_revision
    #   <p>A unique string that identifies the version to update the cluster to. You can use this
    #               value in <a>ModifyClusterDbRevision</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A string that describes the changes and features that will be applied to the cluster
    #               when it is updated to the corresponding <a>ClusterDbRevision</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute database_revision_release_date
    #   <p>The date on which the database revision was released.</p>
    #
    #   @return [Time]
    #
    RevisionTarget = ::Struct.new(
      :database_revision,
      :description,
      :database_revision_release_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute cluster_security_group_name
    #   <p>The name of the security Group from which to revoke the ingress rule.</p>
    #
    #   @return [String]
    #
    # @!attribute cidrip
    #   <p>The IP range for which to revoke access. This range must be a valid Classless
    #               Inter-Domain Routing (CIDR) block of IP addresses. If <code>CIDRIP</code> is specified,
    #                   <code>EC2SecurityGroupName</code> and <code>EC2SecurityGroupOwnerId</code> cannot be
    #               provided. </p>
    #
    #   @return [String]
    #
    # @!attribute ec2_security_group_name
    #   <p>The name of the EC2 Security Group whose access is to be revoked. If
    #                   <code>EC2SecurityGroupName</code> is specified, <code>EC2SecurityGroupOwnerId</code>
    #               must also be provided and <code>CIDRIP</code> cannot be provided. </p>
    #
    #   @return [String]
    #
    # @!attribute ec2_security_group_owner_id
    #   <p>The Amazon Web Services account number of the owner of the security group specified in the
    #                   <code>EC2SecurityGroupName</code> parameter. The Amazon Web Services access key ID is not an
    #               acceptable value. If <code>EC2SecurityGroupOwnerId</code> is specified,
    #                   <code>EC2SecurityGroupName</code> must also be provided. and <code>CIDRIP</code>
    #               cannot be provided. </p>
    #           <p>Example: <code>111122223333</code>
    #           </p>
    #
    #   @return [String]
    #
    RevokeClusterSecurityGroupIngressInput = ::Struct.new(
      :cluster_security_group_name,
      :cidrip,
      :ec2_security_group_name,
      :ec2_security_group_owner_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_security_group
    #   <p>Describes a security group.</p>
    #
    #   @return [ClusterSecurityGroup]
    #
    RevokeClusterSecurityGroupIngressOutput = ::Struct.new(
      :cluster_security_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_identifier
    #   <p>The cluster to revoke access from.</p>
    #
    #   @return [String]
    #
    # @!attribute account
    #   <p>The Amazon Web Services account ID whose access is to be revoked.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_ids
    #   <p>The virtual private cloud (VPC) identifiers for which access is to be revoked.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute force
    #   <p>Indicates whether to force the revoke action.
    #              If true, the Redshift-managed VPC endpoints associated with the endpoint authorization are also deleted.</p>
    #
    #   @return [Boolean]
    #
    RevokeEndpointAccessInput = ::Struct.new(
      :cluster_identifier,
      :account,
      :vpc_ids,
      :force,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.force ||= false
      end
    end

    # <p>Describes an endpoint authorization for authorizing Redshift-managed VPC endpoint access to a cluster across Amazon Web Services accounts.</p>
    #
    # @!attribute grantor
    #   <p>The Amazon Web Services account ID of the cluster owner.</p>
    #
    #   @return [String]
    #
    # @!attribute grantee
    #   <p>The Amazon Web Services account ID of the grantee of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_identifier
    #   <p>The cluster identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute authorize_time
    #   <p>The time (UTC) when the authorization was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute cluster_status
    #   <p>The status of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the authorization action.</p>
    #
    #   Enum, one of: ["Authorized", "Revoking"]
    #
    #   @return [String]
    #
    # @!attribute allowed_all_vp_cs
    #   <p>Indicates whether all VPCs in the grantee account are allowed access to the cluster.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute allowed_vp_cs
    #   <p>The VPCs allowed access to the cluster.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute endpoint_count
    #   <p>The number of Redshift-managed VPC endpoints created for the authorization.</p>
    #
    #   @return [Integer]
    #
    RevokeEndpointAccessOutput = ::Struct.new(
      :grantor,
      :grantee,
      :cluster_identifier,
      :authorize_time,
      :cluster_status,
      :status,
      :allowed_all_vp_cs,
      :allowed_vp_cs,
      :endpoint_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.allowed_all_vp_cs ||= false
        self.endpoint_count ||= 0
      end
    end

    # <p></p>
    #
    # @!attribute snapshot_identifier
    #   <p>The identifier of the snapshot that the account can no longer access.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_cluster_identifier
    #   <p>The identifier of the cluster the snapshot was created from. This parameter is
    #               required if your IAM user has a policy containing a snapshot resource element that
    #               specifies anything other than * for the cluster name.</p>
    #
    #   @return [String]
    #
    # @!attribute account_with_restore_access
    #   <p>The identifier of the Amazon Web Services account that can no longer restore the specified
    #               snapshot.</p>
    #
    #   @return [String]
    #
    RevokeSnapshotAccessInput = ::Struct.new(
      :snapshot_identifier,
      :snapshot_cluster_identifier,
      :account_with_restore_access,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute snapshot
    #   <p>Describes a snapshot.</p>
    #
    #   @return [Snapshot]
    #
    RevokeSnapshotAccessOutput = ::Struct.new(
      :snapshot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute cluster_identifier
    #   <p>The unique identifier of the cluster that you want to rotate the encryption keys
    #               for.</p>
    #           <p>Constraints: Must be the name of valid cluster that has encryption
    #               enabled.</p>
    #
    #   @return [String]
    #
    RotateEncryptionKeyInput = ::Struct.new(
      :cluster_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>Describes a cluster.</p>
    #
    #   @return [Cluster]
    #
    RotateEncryptionKeyOutput = ::Struct.new(
      :cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Amazon SNS has responded that there is a problem with the specified Amazon SNS
    #             topic.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SNSInvalidTopicFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You do not have permission to publish to the specified Amazon SNS topic.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SNSNoAuthorizationFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An Amazon SNS topic with the specified Amazon Resource Name (ARN) does not
    #             exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SNSTopicArnNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The definition you submitted is not supported.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ScheduleDefinitionTypeUnsupportedFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ScheduleState
    #
    module ScheduleState
      # No documentation available.
      #
      MODIFYING = "MODIFYING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>Describes a scheduled action. You can use a scheduled action to trigger some Amazon Redshift API operations on a schedule.
    #             For information about which API operations can be scheduled, see  <a>ScheduledActionType</a>. </p>
    #
    # @!attribute scheduled_action_name
    #   <p>The name of the scheduled action. </p>
    #
    #   @return [String]
    #
    # @!attribute target_action
    #   <p>A JSON format string of the Amazon Redshift API operation with input parameters. </p>
    #           <p>"<code>{\"ResizeCluster\":{\"NodeType\":\"ds2.8xlarge\",\"ClusterIdentifier\":\"my-test-cluster\",\"NumberOfNodes\":3}}</code>". </p>
    #
    #   @return [ScheduledActionType]
    #
    # @!attribute schedule
    #   <p>The schedule for a one-time (at format) or recurring (cron format) scheduled action.
    #               Schedule invocations must be separated by at least one hour.</p>
    #           <p>Format of at expressions is "<code>at(yyyy-mm-ddThh:mm:ss)</code>". For example, "<code>at(2016-03-04T17:27:00)</code>".</p>
    #           <p>Format of cron expressions is "<code>cron(Minutes Hours Day-of-month Month Day-of-week Year)</code>".
    #               For example, "<code>cron(0 10 ? * MON *)</code>". For more information, see
    #               <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html CronExpressions">Cron Expressions</a>
    #               in the <i>Amazon CloudWatch Events User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_role
    #   <p>The IAM role to assume to run the scheduled action.
    #               This IAM role must have permission to run the Amazon Redshift API operation in the scheduled action.
    #               This IAM role must allow the Amazon Redshift scheduler (Principal scheduler.redshift.amazonaws.com) to assume permissions on your behalf.
    #
    #   For more information about the IAM role to use with the Amazon Redshift scheduler, see
    #   <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html">Using Identity-Based Policies for Amazon Redshift</a>
    #   in the <i>Amazon Redshift Cluster Management Guide</i>.
    #   </p>
    #
    #   @return [String]
    #
    # @!attribute scheduled_action_description
    #   <p>The description of the scheduled action. </p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the scheduled action. For example, <code>DISABLED</code>. </p>
    #
    #   Enum, one of: ["ACTIVE", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute next_invocations
    #   <p>List of times when the scheduled action will run. </p>
    #
    #   @return [Array<Time>]
    #
    # @!attribute start_time
    #   <p>The start time in UTC when the schedule is active. Before this time, the scheduled action does not trigger. </p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The end time in UTC when the schedule is no longer active. After this time, the scheduled action does not trigger. </p>
    #
    #   @return [Time]
    #
    ScheduledAction = ::Struct.new(
      :scheduled_action_name,
      :target_action,
      :schedule,
      :iam_role,
      :scheduled_action_description,
      :state,
      :next_invocations,
      :start_time,
      :end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The scheduled action already exists. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ScheduledActionAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A set of elements to filter the returned scheduled actions. </p>
    #
    # @!attribute name
    #   <p>The type of element to filter. </p>
    #
    #   Enum, one of: ["cluster-identifier", "iam-role"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>List of values. Compare if the value (of type defined by <code>Name</code>) equals an item in the list of scheduled actions. </p>
    #
    #   @return [Array<String>]
    #
    ScheduledActionFilter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ScheduledActionFilterName
    #
    module ScheduledActionFilterName
      # No documentation available.
      #
      CLUSTER_IDENTIFIER = "cluster-identifier"

      # No documentation available.
      #
      IAM_ROLE = "iam-role"
    end

    # <p>The scheduled action cannot be found. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ScheduledActionNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The quota for scheduled actions exceeded. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ScheduledActionQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ScheduledActionState
    #
    module ScheduledActionState
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # <p>The action type that specifies an Amazon Redshift API operation that is supported by the Amazon Redshift scheduler. </p>
    #
    # @!attribute resize_cluster
    #   <p>An action that runs a <code>ResizeCluster</code> API operation. </p>
    #
    #   @return [ResizeClusterMessage]
    #
    # @!attribute pause_cluster
    #   <p>An action that runs a <code>PauseCluster</code> API operation. </p>
    #
    #   @return [PauseClusterMessage]
    #
    # @!attribute resume_cluster
    #   <p>An action that runs a <code>ResumeCluster</code> API operation. </p>
    #
    #   @return [ResumeClusterMessage]
    #
    ScheduledActionType = ::Struct.new(
      :resize_cluster,
      :pause_cluster,
      :resume_cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The action type specified for a scheduled action is not supported. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ScheduledActionTypeUnsupportedFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ScheduledActionTypeValues
    #
    module ScheduledActionTypeValues
      # No documentation available.
      #
      RESIZE_CLUSTER = "ResizeCluster"

      # No documentation available.
      #
      PAUSE_CLUSTER = "PauseCluster"

      # No documentation available.
      #
      RESUME_CLUSTER = "ResumeCluster"
    end

    # <p>Describes a snapshot.</p>
    #
    # @!attribute snapshot_identifier
    #   <p>The snapshot identifier that is provided in the request.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_identifier
    #   <p>The identifier of the cluster for which the snapshot was taken.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_create_time
    #   <p>The time (in UTC format) when Amazon Redshift began the snapshot. A snapshot contains a
    #               copy of the cluster data as of this exact time.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The snapshot status. The value of the status depends on the API operation used: </p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <a>CreateClusterSnapshot</a> and <a>CopyClusterSnapshot</a> returns status as "creating". </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <a>DescribeClusterSnapshots</a> returns status as "creating",
    #                       "available", "final snapshot", or "failed".</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <a>DeleteClusterSnapshot</a> returns status as "deleted".</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port that the cluster is listening on.</p>
    #
    #   @return [Integer]
    #
    # @!attribute availability_zone
    #   <p>The Availability Zone in which the cluster was created.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_create_time
    #   <p>The time (UTC) when the cluster was originally created.</p>
    #
    #   @return [Time]
    #
    # @!attribute master_username
    #   <p>The admin user name for the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_version
    #   <p>The version ID of the Amazon Redshift engine that is running on the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_full_version
    #   <p>The cluster version of the cluster used to create the snapshot. For example, 1.0.15503. </p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_type
    #   <p>The snapshot type. Snapshots created using <a>CreateClusterSnapshot</a>
    #               and <a>CopyClusterSnapshot</a> are of type "manual". </p>
    #
    #   @return [String]
    #
    # @!attribute node_type
    #   <p>The node type of the nodes in the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute number_of_nodes
    #   <p>The number of nodes in the cluster.</p>
    #
    #   @return [Integer]
    #
    # @!attribute db_name
    #   <p>The name of the database that was created when the cluster was created.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The VPC identifier of the cluster if the snapshot is from a cluster in a VPC.
    #               Otherwise, this field is not in the output.</p>
    #
    #   @return [String]
    #
    # @!attribute encrypted
    #   <p>If <code>true</code>, the data in the snapshot is encrypted at rest.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute kms_key_id
    #   <p>The Key Management Service (KMS) key ID of the encryption key that was used to
    #               encrypt data in the cluster from which the snapshot was taken.</p>
    #
    #   @return [String]
    #
    # @!attribute encrypted_with_hsm
    #   <p>A boolean that indicates whether the snapshot data is encrypted using the HSM keys
    #               of the source cluster. <code>true</code> indicates that the data is encrypted using HSM
    #               keys.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute accounts_with_restore_access
    #   <p>A list of the Amazon Web Services accounts authorized to restore the snapshot. Returns
    #                   <code>null</code> if no accounts are authorized. Visible only to the snapshot owner.
    #           </p>
    #
    #   @return [Array<AccountWithRestoreAccess>]
    #
    # @!attribute owner_account
    #   <p>For manual snapshots, the Amazon Web Services account used to create or copy the snapshot.
    #               For automatic snapshots, the owner of the cluster. The owner can perform all snapshot
    #               actions, such as sharing a manual snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute total_backup_size_in_mega_bytes
    #   <p>The size of the complete set of backup data that would be used to restore the
    #               cluster.</p>
    #
    #   @return [Float]
    #
    # @!attribute actual_incremental_backup_size_in_mega_bytes
    #   <p>The size of the incremental backup.</p>
    #
    #   @return [Float]
    #
    # @!attribute backup_progress_in_mega_bytes
    #   <p>The number of megabytes that have been transferred to the snapshot
    #               backup.</p>
    #
    #   @return [Float]
    #
    # @!attribute current_backup_rate_in_mega_bytes_per_second
    #   <p>The number of megabytes per second being transferred to the snapshot backup.
    #               Returns <code>0</code> for a completed backup. </p>
    #
    #   @return [Float]
    #
    # @!attribute estimated_seconds_to_completion
    #   <p>The estimate of the time remaining before the snapshot backup will complete.
    #               Returns <code>0</code> for a completed backup. </p>
    #
    #   @return [Integer]
    #
    # @!attribute elapsed_time_in_seconds
    #   <p>The amount of time an in-progress snapshot backup has been running, or the amount
    #               of time it took a completed backup to finish.</p>
    #
    #   @return [Integer]
    #
    # @!attribute source_region
    #   <p>The source region from which the snapshot was copied.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The list of tags for the cluster snapshot.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute restorable_node_types
    #   <p>The list of node types that this cluster snapshot is able to restore
    #               into.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute enhanced_vpc_routing
    #   <p>An option that specifies whether to create the cluster with enhanced VPC routing
    #               enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a
    #               VPC. For more information, see <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html">Enhanced VPC Routing</a> in
    #               the Amazon Redshift Cluster Management Guide.</p>
    #           <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p>
    #           <p>Default: false</p>
    #
    #   @return [Boolean]
    #
    # @!attribute maintenance_track_name
    #   <p>The name of the maintenance track for the snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute manual_snapshot_retention_period
    #   <p>The number of days that a manual snapshot is retained. If the value is -1, the manual
    #               snapshot is retained indefinitely. </p>
    #
    #           <p>The value must be either -1 or an integer between 1 and 3,653.</p>
    #
    #   @return [Integer]
    #
    # @!attribute manual_snapshot_remaining_days
    #   <p>The number of days until a manual snapshot will pass its retention period.</p>
    #
    #   @return [Integer]
    #
    # @!attribute snapshot_retention_start_time
    #   <p>A timestamp representing the start of the retention period for the snapshot.</p>
    #
    #   @return [Time]
    #
    Snapshot = ::Struct.new(
      :snapshot_identifier,
      :cluster_identifier,
      :snapshot_create_time,
      :status,
      :port,
      :availability_zone,
      :cluster_create_time,
      :master_username,
      :cluster_version,
      :engine_full_version,
      :snapshot_type,
      :node_type,
      :number_of_nodes,
      :db_name,
      :vpc_id,
      :encrypted,
      :kms_key_id,
      :encrypted_with_hsm,
      :accounts_with_restore_access,
      :owner_account,
      :total_backup_size_in_mega_bytes,
      :actual_incremental_backup_size_in_mega_bytes,
      :backup_progress_in_mega_bytes,
      :current_backup_rate_in_mega_bytes_per_second,
      :estimated_seconds_to_completion,
      :elapsed_time_in_seconds,
      :source_region,
      :tags,
      :restorable_node_types,
      :enhanced_vpc_routing,
      :maintenance_track_name,
      :manual_snapshot_retention_period,
      :manual_snapshot_remaining_days,
      :snapshot_retention_start_time,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.port ||= 0
        self.number_of_nodes ||= 0
        self.encrypted ||= false
        self.encrypted_with_hsm ||= false
        self.total_backup_size_in_mega_bytes ||= 0
        self.actual_incremental_backup_size_in_mega_bytes ||= 0
        self.backup_progress_in_mega_bytes ||= 0
        self.current_backup_rate_in_mega_bytes_per_second ||= 0
        self.estimated_seconds_to_completion ||= 0
        self.elapsed_time_in_seconds ||= 0
        self.enhanced_vpc_routing ||= false
      end
    end

    # Includes enum constants for SnapshotAttributeToSortBy
    #
    module SnapshotAttributeToSortBy
      # No documentation available.
      #
      SOURCE_TYPE = "SOURCE_TYPE"

      # No documentation available.
      #
      TOTAL_SIZE = "TOTAL_SIZE"

      # No documentation available.
      #
      CREATE_TIME = "CREATE_TIME"
    end

    # <p>The cluster already has cross-region snapshot copy disabled.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SnapshotCopyAlreadyDisabledFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The cluster already has cross-region snapshot copy enabled.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SnapshotCopyAlreadyEnabledFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Cross-region snapshot copy was temporarily disabled. Try your request
    #             again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SnapshotCopyDisabledFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The snapshot copy grant that grants Amazon Redshift permission to encrypt copied
    #             snapshots with the specified encrypted symmetric key from Amazon Web Services KMS in the destination
    #             region.</p>
    #         <p>
    # For more information about managing snapshot copy grants, go to
    # <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html">Amazon Redshift Database Encryption</a>
    # in the <i>Amazon Redshift Cluster Management Guide</i>.
    # </p>
    #
    # @!attribute snapshot_copy_grant_name
    #   <p>The name of the snapshot copy grant.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>The unique identifier of the encrypted symmetric key in Amazon Web Services KMS to which
    #               Amazon Redshift is granted permission.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tag instances.</p>
    #
    #   @return [Array<Tag>]
    #
    SnapshotCopyGrant = ::Struct.new(
      :snapshot_copy_grant_name,
      :kms_key_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The snapshot copy grant can't be created because a grant with the same name already
    #             exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SnapshotCopyGrantAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified snapshot copy grant can't be found. Make sure that the name is typed
    #             correctly and that the grant exists in the destination region.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SnapshotCopyGrantNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon Web Services account has exceeded the maximum number of snapshot copy grants in this
    #             region.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SnapshotCopyGrantQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the errors returned by a snapshot.</p>
    #
    # @!attribute snapshot_identifier
    #   <p>A unique identifier for the snapshot returning the error.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_cluster_identifier
    #   <p>A unique identifier for the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute failure_code
    #   <p>The failure code for the error.</p>
    #
    #   @return [String]
    #
    # @!attribute failure_reason
    #   <p>The text message describing the error.</p>
    #
    #   @return [String]
    #
    SnapshotErrorMessage = ::Struct.new(
      :snapshot_identifier,
      :snapshot_cluster_identifier,
      :failure_code,
      :failure_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a snapshot schedule. You can set a regular interval for creating
    #             snapshots of a cluster. You can also schedule snapshots for specific dates. </p>
    #
    # @!attribute schedule_definitions
    #   <p>A list of ScheduleDefinitions.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute schedule_identifier
    #   <p>A unique identifier for the schedule.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule_description
    #   <p>The description of the schedule.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>An optional set of tags describing the schedule.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute next_invocations
    #   <p></p>
    #
    #   @return [Array<Time>]
    #
    # @!attribute associated_cluster_count
    #   <p>The number of clusters associated with the schedule.</p>
    #
    #   @return [Integer]
    #
    # @!attribute associated_clusters
    #   <p>A list of clusters associated with the schedule. A maximum of 100 clusters is returned.</p>
    #
    #   @return [Array<ClusterAssociatedToSchedule>]
    #
    SnapshotSchedule = ::Struct.new(
      :schedule_definitions,
      :schedule_identifier,
      :schedule_description,
      :tags,
      :next_invocations,
      :associated_cluster_count,
      :associated_clusters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified snapshot schedule already exists. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SnapshotScheduleAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>We could not find the specified snapshot schedule. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SnapshotScheduleNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have exceeded the quota of snapshot schedules. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SnapshotScheduleQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified snapshot schedule is already being updated.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SnapshotScheduleUpdateInProgressFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a sorting entity</p>
    #
    # @!attribute attribute
    #   <p>The category for sorting the snapshots.</p>
    #
    #   Enum, one of: ["SOURCE_TYPE", "TOTAL_SIZE", "CREATE_TIME"]
    #
    #   @return [String]
    #
    # @!attribute sort_order
    #   <p>The order for listing the attributes.</p>
    #
    #   Enum, one of: ["ASC", "DESC"]
    #
    #   @return [String]
    #
    SnapshotSortingEntity = ::Struct.new(
      :attribute,
      :sort_order,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SortByOrder
    #
    module SortByOrder
      # No documentation available.
      #
      ASCENDING = "ASC"

      # No documentation available.
      #
      DESCENDING = "DESC"
    end

    # <p>The specified Amazon Redshift event source could not be found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SourceNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SourceType
    #
    module SourceType
      # No documentation available.
      #
      cluster = "cluster"

      # No documentation available.
      #
      cluster_parameter_group = "cluster-parameter-group"

      # No documentation available.
      #
      cluster_security_group = "cluster-security-group"

      # No documentation available.
      #
      cluster_snapshot = "cluster-snapshot"

      # No documentation available.
      #
      scheduled_action = "scheduled-action"
    end

    # <p>Describes a subnet.</p>
    #
    # @!attribute subnet_identifier
    #   <p>The identifier of the subnet.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_availability_zone
    #   <p></p>
    #
    #   @return [AvailabilityZone]
    #
    # @!attribute subnet_status
    #   <p>The status of the subnet.</p>
    #
    #   @return [String]
    #
    Subnet = ::Struct.new(
      :subnet_identifier,
      :subnet_availability_zone,
      :subnet_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A specified subnet is already in use by another cluster.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SubnetAlreadyInUse = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There is already an existing event notification subscription with the specified
    #             name.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SubscriptionAlreadyExistFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The value specified for the event category was not one of the allowed values, or it
    #             specified a category that does not apply to the specified source type. The allowed
    #             values are Configuration, Management, Monitoring, and Security.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SubscriptionCategoryNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An Amazon Redshift event with the specified event ID does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SubscriptionEventIdNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An Amazon Redshift event notification subscription with the specified name does not
    #             exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SubscriptionNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The value specified for the event severity was not one of the allowed values, or it
    #             specified a severity that does not apply to the specified source type. The allowed
    #             values are ERROR and INFO.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SubscriptionSeverityNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the operations that are allowed on a maintenance track.</p>
    #
    # @!attribute operation_name
    #   <p>A list of the supported operations.</p>
    #
    #   @return [String]
    #
    SupportedOperation = ::Struct.new(
      :operation_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of supported platforms for orderable clusters.</p>
    #
    # @!attribute name
    #   <p></p>
    #
    #   @return [String]
    #
    SupportedPlatform = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of tables in the cluster exceeds the limit for the requested new cluster
    #             node type. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TableLimitExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified <code>TableRestoreRequestId</code> value was not found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TableRestoreNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the status of a <a>RestoreTableFromClusterSnapshot</a>
    #             operation.</p>
    #
    # @!attribute table_restore_request_id
    #   <p>The unique identifier for the table restore request.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>A value that describes the current state of the table restore request.</p>
    #           <p>Valid Values: <code>SUCCEEDED</code>, <code>FAILED</code>, <code>CANCELED</code>,
    #                   <code>PENDING</code>, <code>IN_PROGRESS</code>
    #           </p>
    #
    #   Enum, one of: ["PENDING", "IN_PROGRESS", "SUCCEEDED", "FAILED", "CANCELED"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A description of the status of the table restore request. Status values include
    #                   <code>SUCCEEDED</code>, <code>FAILED</code>, <code>CANCELED</code>,
    #                   <code>PENDING</code>, <code>IN_PROGRESS</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute request_time
    #   <p>The time that the table restore request was made, in Universal Coordinated Time
    #               (UTC).</p>
    #
    #   @return [Time]
    #
    # @!attribute progress_in_mega_bytes
    #   <p>The amount of data restored to the new table so far, in megabytes (MB).</p>
    #
    #   @return [Integer]
    #
    # @!attribute total_data_in_mega_bytes
    #   <p>The total amount of data to restore to the new table, in megabytes (MB).</p>
    #
    #   @return [Integer]
    #
    # @!attribute cluster_identifier
    #   <p>The identifier of the Amazon Redshift cluster that the table is being restored
    #               to.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_identifier
    #   <p>The identifier of the snapshot that the table is being restored from.</p>
    #
    #   @return [String]
    #
    # @!attribute source_database_name
    #   <p>The name of the source database that contains the table being restored.</p>
    #
    #   @return [String]
    #
    # @!attribute source_schema_name
    #   <p>The name of the source schema that contains the table being restored.</p>
    #
    #   @return [String]
    #
    # @!attribute source_table_name
    #   <p>The name of the source table being restored.</p>
    #
    #   @return [String]
    #
    # @!attribute target_database_name
    #   <p>The name of the database to restore the table to.</p>
    #
    #   @return [String]
    #
    # @!attribute target_schema_name
    #   <p>The name of the schema to restore the table to.</p>
    #
    #   @return [String]
    #
    # @!attribute new_table_name
    #   <p>The name of the table to create as a result of the table restore request.</p>
    #
    #   @return [String]
    #
    TableRestoreStatus = ::Struct.new(
      :table_restore_request_id,
      :status,
      :message,
      :request_time,
      :progress_in_mega_bytes,
      :total_data_in_mega_bytes,
      :cluster_identifier,
      :snapshot_identifier,
      :source_database_name,
      :source_schema_name,
      :source_table_name,
      :target_database_name,
      :target_schema_name,
      :new_table_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TableRestoreStatusType
    #
    module TableRestoreStatusType
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      CANCELED = "CANCELED"
    end

    # <p>A tag consisting of a name/value pair for a resource.</p>
    #
    # @!attribute key
    #   <p>The key, or name, for the resource tag.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value for the resource tag.</p>
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

    # <p>You have exceeded the number of tags allowed.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TagLimitExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A tag and its associated resource.</p>
    #
    # @!attribute tag
    #   <p>The tag for the resource.</p>
    #
    #   @return [Tag]
    #
    # @!attribute resource_name
    #   <p>The Amazon Resource Name (ARN) with which the tag is associated, for example:
    #                   <code>arn:aws:redshift:us-east-2:123456789:cluster:t1</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of resource with which the tag is associated. Valid resource types are: </p>
    #           <ul>
    #               <li>
    #                   <p>Cluster</p>
    #               </li>
    #               <li>
    #                   <p>CIDR/IP</p>
    #               </li>
    #               <li>
    #                   <p>EC2 security group</p>
    #               </li>
    #               <li>
    #                   <p>Snapshot</p>
    #               </li>
    #               <li>
    #                   <p>Cluster security group</p>
    #               </li>
    #               <li>
    #                   <p>Subnet group</p>
    #               </li>
    #               <li>
    #                   <p>HSM connection</p>
    #               </li>
    #               <li>
    #                   <p>HSM certificate</p>
    #               </li>
    #               <li>
    #                   <p>Parameter group</p>
    #               </li>
    #            </ul>
    #           <p>For more information about Amazon Redshift resource types and constructing ARNs, go to
    #                   <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-overview.html redshift-iam-access-control-specify-actions">Constructing an Amazon Redshift Amazon Resource Name (ARN)</a> in the
    #               Amazon Redshift Cluster Management Guide. </p>
    #
    #   @return [String]
    #
    TaggedResource = ::Struct.new(
      :tag,
      :resource_name,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Your account is not authorized to perform the requested operation.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnauthorizedOperation = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The partner integration is not authorized.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnauthorizedPartnerIntegrationFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified region is incorrect or does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnknownSnapshotCopyRegionFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested operation isn't supported.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnsupportedOperationFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A request option was specified that is not supported.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnsupportedOptionFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID that owns the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_identifier
    #   <p>The cluster identifier of the cluster whose partner integration status is being updated.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name of the database whose partner integration status is being updated.</p>
    #
    #   @return [String]
    #
    # @!attribute partner_name
    #   <p>The name of the partner whose integration status is being updated.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The value of the updated status.</p>
    #
    #   Enum, one of: ["Active", "Inactive", "RuntimeFailure", "ConnectionFailure"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>The status message provided by the partner.</p>
    #
    #   @return [String]
    #
    UpdatePartnerStatusInput = ::Struct.new(
      :account_id,
      :cluster_identifier,
      :database_name,
      :partner_name,
      :status,
      :status_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute database_name
    #   <p>The name of the database that receives data from the partner.</p>
    #
    #   @return [String]
    #
    # @!attribute partner_name
    #   <p>The name of the partner that is authorized to send data.</p>
    #
    #   @return [String]
    #
    UpdatePartnerStatusOutput = ::Struct.new(
      :database_name,
      :partner_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A maintenance track that you can switch the current track to.</p>
    #
    # @!attribute maintenance_track_name
    #   <p>The name of the new maintenance track.</p>
    #
    #   @return [String]
    #
    # @!attribute database_version
    #   <p>The cluster version for the new maintenance track.</p>
    #
    #   @return [String]
    #
    # @!attribute supported_operations
    #   <p>A list of operations supported by the maintenance track.</p>
    #
    #   @return [Array<SupportedOperation>]
    #
    UpdateTarget = ::Struct.new(
      :maintenance_track_name,
      :database_version,
      :supported_operations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a usage limit object for a cluster. </p>
    #
    # @!attribute usage_limit_id
    #   <p>The identifier of the usage limit.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_identifier
    #   <p>The identifier of the cluster with a usage limit.</p>
    #
    #   @return [String]
    #
    # @!attribute feature_type
    #   <p>The Amazon Redshift feature to which the limit applies.</p>
    #
    #   Enum, one of: ["spectrum", "concurrency-scaling", "cross-region-datasharing"]
    #
    #   @return [String]
    #
    # @!attribute limit_type
    #   <p>The type of limit. Depending on the feature type, this can be based on a time duration or data size.</p>
    #
    #   Enum, one of: ["time", "data-scanned"]
    #
    #   @return [String]
    #
    # @!attribute amount
    #   <p>The limit amount. If time-based, this amount is in minutes. If data-based, this amount is in terabytes (TB).</p>
    #
    #   @return [Integer]
    #
    # @!attribute period
    #   <p>The time period that the amount applies to. A <code>weekly</code> period begins on Sunday. The default is <code>monthly</code>. </p>
    #
    #   Enum, one of: ["daily", "weekly", "monthly"]
    #
    #   @return [String]
    #
    # @!attribute breach_action
    #   <p>The action that Amazon Redshift takes when the limit is reached. Possible values are: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>log</b> - To log an event in a system table. The default is log.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>emit-metric</b> - To emit CloudWatch metrics.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>disable</b> - To disable the feature until the next usage period begins.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["log", "emit-metric", "disable"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tag instances.</p>
    #
    #   @return [Array<Tag>]
    #
    UsageLimit = ::Struct.new(
      :usage_limit_id,
      :cluster_identifier,
      :feature_type,
      :limit_type,
      :amount,
      :period,
      :breach_action,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.amount ||= 0
      end
    end

    # <p>The usage limit already exists. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UsageLimitAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UsageLimitBreachAction
    #
    module UsageLimitBreachAction
      # No documentation available.
      #
      LOG = "log"

      # No documentation available.
      #
      EMIT_METRIC = "emit-metric"

      # No documentation available.
      #
      DISABLE = "disable"
    end

    # Includes enum constants for UsageLimitFeatureType
    #
    module UsageLimitFeatureType
      # No documentation available.
      #
      SPECTRUM = "spectrum"

      # No documentation available.
      #
      CONCURRENCY_SCALING = "concurrency-scaling"

      # No documentation available.
      #
      CROSS_REGION_DATASHARING = "cross-region-datasharing"
    end

    # Includes enum constants for UsageLimitLimitType
    #
    module UsageLimitLimitType
      # No documentation available.
      #
      TIME = "time"

      # No documentation available.
      #
      DATA_SCANNED = "data-scanned"
    end

    # <p>The usage limit identifier can't be found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UsageLimitNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UsageLimitPeriod
    #
    module UsageLimitPeriod
      # No documentation available.
      #
      DAILY = "daily"

      # No documentation available.
      #
      WEEKLY = "weekly"

      # No documentation available.
      #
      MONTHLY = "monthly"
    end

    # <p>The connection endpoint for connecting to an Amazon Redshift cluster through the proxy.</p>
    #
    # @!attribute vpc_endpoint_id
    #   <p>The connection endpoint ID for connecting an Amazon Redshift cluster through the proxy.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The VPC identifier that the endpoint is associated. </p>
    #
    #   @return [String]
    #
    # @!attribute network_interfaces
    #   <p>One or more network interfaces of the endpoint. Also known as an interface endpoint. </p>
    #
    #   @return [Array<NetworkInterface>]
    #
    VpcEndpoint = ::Struct.new(
      :vpc_endpoint_id,
      :vpc_id,
      :network_interfaces,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the members of a VPC security group.</p>
    #
    # @!attribute vpc_security_group_id
    #   <p>The identifier of the VPC security group.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the VPC security group.</p>
    #
    #   @return [String]
    #
    VpcSecurityGroupMembership = ::Struct.new(
      :vpc_security_group_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
