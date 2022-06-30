# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Neptune
  module Types

    # @!attribute db_cluster_identifier
    #   <p>The name of the DB cluster to associate the IAM role with.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to associate with the Neptune DB cluster,
    #         for example <code>arn:aws:iam::123456789012:role/NeptuneAccessRole</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute feature_name
    #   <p>The name of the feature for the Neptune DB cluster that the IAM role is to be associated with.
    #         For the list of supported feature names, see <a href="neptune/latest/userguide/api-other-apis.html DBEngineVersion">DBEngineVersion</a>.</p>
    #
    #   @return [String]
    #
    AddRoleToDBClusterInput = ::Struct.new(
      :db_cluster_identifier,
      :role_arn,
      :feature_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AddRoleToDBClusterOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute subscription_name
    #   <p>The name of the event notification subscription you want to add a source identifier
    #         to.</p>
    #
    #   @return [String]
    #
    # @!attribute source_identifier
    #   <p>The identifier of the event source to be added.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If the source type is a DB instance, then a <code>DBInstanceIdentifier</code> must be
    #             supplied.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is a DB security group, a <code>DBSecurityGroupName</code> must be
    #             supplied.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is a DB parameter group, a <code>DBParameterGroupName</code> must
    #             be supplied.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is a DB snapshot, a <code>DBSnapshotIdentifier</code> must be
    #             supplied.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    AddSourceIdentifierToSubscriptionInput = ::Struct.new(
      :subscription_name,
      :source_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_subscription
    #   <p>Contains the results of a successful invocation of the <a>DescribeEventSubscriptions</a> action.</p>
    #
    #   @return [EventSubscription]
    #
    AddSourceIdentifierToSubscriptionOutput = ::Struct.new(
      :event_subscription,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_name
    #   <p>The Amazon Neptune resource that the tags are added to. This value is an Amazon Resource
    #         Name (ARN). For information about creating an ARN, see <a href="https://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html tagging.ARN.Constructing"> Constructing an
    #         Amazon Resource Name (ARN)</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to be assigned to the Amazon Neptune resource.</p>
    #
    #   @return [Array<Tag>]
    #
    AddTagsToResourceInput = ::Struct.new(
      :resource_name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AddTagsToResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ApplyMethod
    #
    module ApplyMethod
      # No documentation available.
      #
      immediate = "immediate"

      # No documentation available.
      #
      pending_reboot = "pending-reboot"
    end

    # @!attribute resource_identifier
    #   <p>The Amazon Resource Name (ARN) of the resource that the pending maintenance action applies
    #         to. For information about creating an ARN, see <a href="https://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html tagging.ARN.Constructing"> Constructing an
    #         Amazon Resource Name (ARN)</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute apply_action
    #   <p>The pending maintenance action to apply to this resource.</p>
    #            <p>Valid values: <code>system-update</code>, <code>db-upgrade</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute opt_in_type
    #   <p>A value that specifies the type of opt-in request, or undoes an opt-in request. An opt-in
    #         request of type <code>immediate</code> can't be undone.</p>
    #            <p>Valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>immediate</code> - Apply the maintenance action immediately.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>next-maintenance</code> - Apply the maintenance action during the next
    #             maintenance window for the resource.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>undo-opt-in</code> - Cancel any existing <code>next-maintenance</code> opt-in
    #             requests.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    ApplyPendingMaintenanceActionInput = ::Struct.new(
      :resource_identifier,
      :apply_action,
      :opt_in_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_pending_maintenance_actions
    #   <p>Describes the pending maintenance actions for a resource.</p>
    #
    #   @return [ResourcePendingMaintenanceActions]
    #
    ApplyPendingMaintenanceActionOutput = ::Struct.new(
      :resource_pending_maintenance_actions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specified CIDRIP or EC2 security group is not authorized for the specified DB security group.</p>
    #          <p>Neptune may not also be authorized via IAM to perform necessary actions on your behalf.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    AuthorizationNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies an Availability Zone.</p>
    #
    # @!attribute name
    #   <p>The name of the availability zone.</p>
    #
    #   @return [String]
    #
    AvailabilityZone = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             <i>CertificateIdentifier</i> does not refer to an existing certificate.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    CertificateNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a character set.</p>
    #
    # @!attribute character_set_name
    #   <p>The name of the character set.</p>
    #
    #   @return [String]
    #
    # @!attribute character_set_description
    #   <p>The description of the character set.</p>
    #
    #   @return [String]
    #
    CharacterSet = ::Struct.new(
      :character_set_name,
      :character_set_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration setting for the log types to be enabled for export
    #       to CloudWatch Logs for a specific DB instance or DB cluster.</p>
    #
    #          <p>The <code>EnableLogTypes</code> and <code>DisableLogTypes</code> arrays
    #       determine which logs will be exported (or not exported) to CloudWatch Logs.</p>
    #
    # @!attribute enable_log_types
    #   <p>The list of log types to enable.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute disable_log_types
    #   <p>The list of log types to disable.</p>
    #
    #   @return [Array<String>]
    #
    CloudwatchLogsExportConfiguration = ::Struct.new(
      :enable_log_types,
      :disable_log_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_db_cluster_parameter_group_identifier
    #   <p>The identifier or Amazon Resource Name (ARN) for the source DB cluster parameter group.
    #         For information about creating an ARN, see <a href="https://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html tagging.ARN.Constructing"> Constructing an
    #         Amazon Resource Name (ARN)</a>.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must specify a valid DB cluster parameter group.</p>
    #               </li>
    #               <li>
    #                  <p>If the source DB cluster parameter group is in the same Amazon Region as the copy,
    #             specify a valid DB parameter group identifier, for example
    #             <code>my-db-cluster-param-group</code>, or a valid ARN.</p>
    #               </li>
    #               <li>
    #                  <p>If the source DB parameter group is in a different Amazon Region than the copy, specify a
    #             valid DB cluster parameter group ARN, for example
    #             <code>arn:aws:rds:us-east-1:123456789012:cluster-pg:custom-cluster-group1</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute target_db_cluster_parameter_group_identifier
    #   <p>The identifier for the copied DB cluster parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Cannot be null, empty, or blank</p>
    #               </li>
    #               <li>
    #                  <p>Must contain from 1 to 255 letters, numbers, or hyphens</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster-param-group1</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute target_db_cluster_parameter_group_description
    #   <p>A description for the copied DB cluster parameter group.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to be assigned to the copied DB cluster parameter group.</p>
    #
    #   @return [Array<Tag>]
    #
    CopyDBClusterParameterGroupInput = ::Struct.new(
      :source_db_cluster_parameter_group_identifier,
      :target_db_cluster_parameter_group_identifier,
      :target_db_cluster_parameter_group_description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster_parameter_group
    #   <p>Contains the details of an Amazon Neptune DB cluster parameter group.</p>
    #            <p>This data type is used as a response element in the <a>DescribeDBClusterParameterGroups</a> action.</p>
    #
    #   @return [DBClusterParameterGroup]
    #
    CopyDBClusterParameterGroupOutput = ::Struct.new(
      :db_cluster_parameter_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_db_cluster_snapshot_identifier
    #   <p>The identifier of the DB cluster snapshot to copy. This parameter is not
    #         case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must specify a valid system snapshot in the "available" state.</p>
    #               </li>
    #               <li>
    #                  <p>Specify a valid DB snapshot identifier.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster-snapshot1</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute target_db_cluster_snapshot_identifier
    #   <p>The identifier of the new DB cluster snapshot to create from the source DB cluster
    #         snapshot. This parameter is not case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster-snapshot2</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>The Amazon Amazon KMS key ID for an encrypted DB cluster snapshot. The KMS key ID is the Amazon
    #         Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key.</p>
    #
    #            <p>If you copy an encrypted DB cluster snapshot from your Amazon account, you can specify a
    #         value for <code>KmsKeyId</code> to encrypt the copy with a new KMS encryption key. If you
    #         don't specify a value for <code>KmsKeyId</code>, then the copy of the DB cluster snapshot is
    #         encrypted with the same KMS key as the source DB cluster snapshot.</p>
    #
    #            <p>If you copy an encrypted DB cluster snapshot that is shared from another Amazon account, then
    #         you must specify a value for <code>KmsKeyId</code>.</p>
    #            <p> KMS encryption keys are specific to the Amazon Region that they are created in, and you
    #         can't use encryption keys from one Amazon Region in another Amazon Region.</p>
    #
    #            <p>You cannot encrypt an unencrypted DB cluster snapshot when you copy it. If you try to
    #         copy an unencrypted DB cluster snapshot and specify a value for the KmsKeyId parameter, an
    #         error is returned.</p>
    #
    #   @return [String]
    #
    # @!attribute pre_signed_url
    #   <p>Not currently supported.</p>
    #
    #   @return [String]
    #
    # @!attribute copy_tags
    #   <p>True to copy all tags from the source DB cluster snapshot to the target DB cluster
    #         snapshot, and otherwise false. The default is false.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>The tags to assign to the new DB cluster snapshot copy.</p>
    #
    #   @return [Array<Tag>]
    #
    CopyDBClusterSnapshotInput = ::Struct.new(
      :source_db_cluster_snapshot_identifier,
      :target_db_cluster_snapshot_identifier,
      :kms_key_id,
      :pre_signed_url,
      :copy_tags,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster_snapshot
    #   <p>Contains the details for an Amazon Neptune DB cluster snapshot</p>
    #            <p>This data type is used as a response element in the <a>DescribeDBClusterSnapshots</a> action.</p>
    #
    #   @return [DBClusterSnapshot]
    #
    CopyDBClusterSnapshotOutput = ::Struct.new(
      :db_cluster_snapshot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_db_parameter_group_identifier
    #   <p>The identifier or ARN for the source DB parameter group. For information about creating
    #         an ARN, see <a href="https://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html tagging.ARN.Constructing"> Constructing an
    #         Amazon Resource Name (ARN)</a>.</p>
    #
    #            <p>Constraints:</p>
    #
    #            <ul>
    #               <li>
    #                  <p>Must specify a valid DB parameter group.</p>
    #               </li>
    #               <li>
    #                  <p>Must specify a valid DB parameter group identifier, for example
    #           <code>my-db-param-group</code>, or a valid ARN.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute target_db_parameter_group_identifier
    #   <p>The identifier for the copied DB parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Cannot be null, empty, or blank.</p>
    #               </li>
    #               <li>
    #                  <p>Must contain from 1 to 255 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #
    #            <p>Example: <code>my-db-parameter-group</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute target_db_parameter_group_description
    #   <p>A description for the copied DB parameter group.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to be assigned to the copied DB parameter group.</p>
    #
    #   @return [Array<Tag>]
    #
    CopyDBParameterGroupInput = ::Struct.new(
      :source_db_parameter_group_identifier,
      :target_db_parameter_group_identifier,
      :target_db_parameter_group_description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_parameter_group
    #   <p>Contains the details of an Amazon Neptune DB parameter group.</p>
    #            <p>This data type is used as a response element in the <a>DescribeDBParameterGroups</a> action.</p>
    #
    #   @return [DBParameterGroup]
    #
    CopyDBParameterGroupOutput = ::Struct.new(
      :db_parameter_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster_identifier
    #   <p>The DB cluster identifier of the DB cluster associated with the endpoint. This parameter is
    #         stored as a lowercase string.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_endpoint_identifier
    #   <p>The identifier to use for the new endpoint. This parameter is stored as a lowercase string.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_type
    #   <p>The type of the endpoint. One of: <code>READER</code>, <code>WRITER</code>, <code>ANY</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute static_members
    #   <p>List of DB instance identifiers that are part of the custom endpoint group.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute excluded_members
    #   <p>List of DB instance identifiers that aren't part of the custom endpoint group.
    #         All other eligible instances are reachable through the custom endpoint.
    #         Only relevant if the list of static members is empty.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>The tags to be assigned to the Amazon Neptune resource.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateDBClusterEndpointInput = ::Struct.new(
      :db_cluster_identifier,
      :db_cluster_endpoint_identifier,
      :endpoint_type,
      :static_members,
      :excluded_members,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This data type represents the information you need to connect to an Amazon Neptune DB cluster.
    #       This data type is used as a response element in the following actions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>CreateDBClusterEndpoint</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DescribeDBClusterEndpoints</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ModifyDBClusterEndpoint</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DeleteDBClusterEndpoint</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>For the data structure that represents Amazon Neptune DB instance endpoints,
    #       see <code>Endpoint</code>.</p>
    #
    # @!attribute db_cluster_endpoint_identifier
    #   <p>The identifier associated with the endpoint. This parameter is stored as a lowercase string.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_identifier
    #   <p>The DB cluster identifier of the DB cluster associated with the endpoint. This parameter is
    #         stored as a lowercase string.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_endpoint_resource_identifier
    #   <p>A unique system-generated identifier for an endpoint. It remains the same for the whole life of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint
    #   <p>The DNS address of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the endpoint. One of: <code>creating</code>, <code>available</code>, <code>deleting</code>, <code>inactive</code>, <code>modifying</code>. The <code>inactive</code> state applies to an endpoint that cannot be used for a certain kind of cluster,
    #         such as a <code>writer</code> endpoint for a read-only secondary cluster in a global database.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_type
    #   <p>The type of the endpoint. One of: <code>READER</code>, <code>WRITER</code>, <code>CUSTOM</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_endpoint_type
    #   <p>The type associated with a custom endpoint. One of: <code>READER</code>,
    #         <code>WRITER</code>, <code>ANY</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute static_members
    #   <p>List of DB instance identifiers that are part of the custom endpoint group.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute excluded_members
    #   <p>List of DB instance identifiers that aren't part of the custom endpoint group.
    #         All other eligible instances are reachable through the custom endpoint.
    #         Only relevant if the list of static members is empty.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute db_cluster_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) for the endpoint.</p>
    #
    #   @return [String]
    #
    CreateDBClusterEndpointOutput = ::Struct.new(
      :db_cluster_endpoint_identifier,
      :db_cluster_identifier,
      :db_cluster_endpoint_resource_identifier,
      :endpoint,
      :status,
      :endpoint_type,
      :custom_endpoint_type,
      :static_members,
      :excluded_members,
      :db_cluster_endpoint_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute availability_zones
    #   <p>A list of EC2 Availability Zones that instances in the DB cluster can be created
    #         in.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute backup_retention_period
    #   <p>The number of days for which automated backups are retained. You must specify a minimum
    #         value of 1.</p>
    #            <p>Default: 1</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be a value from 1 to 35</p>
    #               </li>
    #            </ul>
    #
    #   @return [Integer]
    #
    # @!attribute character_set_name
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute copy_tags_to_snapshot
    #   <p>
    #               <i>If set to <code>true</code>, tags are copied to any snapshot of
    #         the DB cluster that is created.</i>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute database_name
    #   <p>The name for your database of up to 64 alpha-numeric characters. If you do not provide a
    #         name, Amazon Neptune will not create a database in the DB cluster you are creating.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_identifier
    #   <p>The DB cluster identifier. This parameter is stored as a lowercase string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster1</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_parameter_group_name
    #   <p> The name of the DB cluster parameter group to associate with this DB cluster. If this
    #         argument is omitted, the default is used.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute vpc_security_group_ids
    #   <p>A list of EC2 VPC security groups to associate with this DB cluster.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute db_subnet_group_name
    #   <p>A DB subnet group to associate with this DB cluster.</p>
    #            <p>Constraints: Must match the name of an existing DBSubnetGroup. Must not be default.</p>
    #            <p>Example: <code>mySubnetgroup</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute engine
    #   <p>The name of the database engine to be used for this DB cluster.</p>
    #            <p>Valid Values: <code>neptune</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The version number of the database engine to use for the new DB cluster.</p>
    #            <p>Example: <code>1.0.2.1</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port number on which the instances in the DB cluster accept connections.</p>
    #            <p> Default: <code>8182</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute master_username
    #   <p>Not supported by Neptune.</p>
    #
    #   @return [String]
    #
    # @!attribute master_user_password
    #   <p>Not supported by Neptune.</p>
    #
    #   @return [String]
    #
    # @!attribute option_group_name
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute preferred_backup_window
    #   <p>The daily time range during which automated backups are created if automated backups are
    #         enabled using the <code>BackupRetentionPeriod</code> parameter.</p>
    #            <p>The default is a 30-minute window selected at random from an 8-hour block of time for each
    #         Amazon Region. To see the time blocks available, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html"> Adjusting the Preferred
    #         Maintenance Window</a> in the <i>Amazon Neptune User Guide.</i>
    #            </p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Must be in Universal Coordinated Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Must not conflict with the preferred maintenance window.</p>
    #               </li>
    #               <li>
    #                  <p>Must be at least 30 minutes.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute preferred_maintenance_window
    #   <p>The weekly time range during which system maintenance can occur, in Universal Coordinated
    #         Time (UTC).</p>
    #            <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #            </p>
    #            <p>The default is a 30-minute window selected at random from an 8-hour block of time for each
    #         Amazon Region, occurring on a random day of the week. To see the time blocks available, see
    #         <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html"> Adjusting the Preferred
    #         Maintenance Window</a> in the <i>Amazon Neptune User Guide.</i>
    #            </p>
    #            <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
    #            <p>Constraints: Minimum 30-minute window.</p>
    #
    #   @return [String]
    #
    # @!attribute replication_source_identifier
    #   <p>The Amazon Resource Name (ARN) of the source DB instance or DB cluster if this DB cluster
    #         is created as a Read Replica.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to assign to the new DB cluster.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute storage_encrypted
    #   <p>Specifies whether the DB cluster is encrypted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute kms_key_id
    #   <p>The Amazon KMS key identifier for an encrypted DB cluster.</p>
    #            <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If
    #         you are creating a DB cluster with the same Amazon account that owns the KMS encryption key used
    #         to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the
    #         KMS encryption key.</p>
    #            <p>If an encryption key is not specified in <code>KmsKeyId</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>If <code>ReplicationSourceIdentifier</code> identifies an encrypted source, then
    #             Amazon Neptune will use the encryption key used to encrypt the source. Otherwise, Amazon
    #             Neptune will use your default encryption key.</p>
    #               </li>
    #               <li>
    #                  <p>If the <code>StorageEncrypted</code> parameter is true and
    #             <code>ReplicationSourceIdentifier</code> is not specified, then Amazon Neptune will use
    #             your default encryption key.</p>
    #               </li>
    #            </ul>
    #            <p>Amazon KMS creates the default encryption key for your Amazon account. Your Amazon account has a
    #         different default encryption key for each Amazon Region.</p>
    #            <p>If you create a Read Replica of an encrypted DB cluster in another Amazon Region, you must
    #         set <code>KmsKeyId</code> to a KMS key ID that is valid in the destination Amazon Region. This
    #         key is used to encrypt the Read Replica in that Amazon Region.</p>
    #
    #   @return [String]
    #
    # @!attribute pre_signed_url
    #   <p>This parameter is not currently supported.</p>
    #
    #   @return [String]
    #
    # @!attribute enable_iam_database_authentication
    #   <p>If set to <code>true</code>, enables Amazon Identity and Access Management
    #         (IAM) authentication for the entire DB cluster (this cannot be set at an
    #         instance level).</p>
    #            <p>Default: <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_cloudwatch_logs_exports
    #   <p>The list of log types that need to be enabled for exporting to CloudWatch Logs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute deletion_protection
    #   <p>A value that indicates whether the DB cluster has deletion protection enabled.
    #         The database can't be deleted when deletion protection is enabled. By default,
    #         deletion protection is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute global_cluster_identifier
    #   <p>The ID of the Neptune global database to which this new DB cluster
    #         should be added.</p>
    #
    #   @return [String]
    #
    CreateDBClusterInput = ::Struct.new(
      :availability_zones,
      :backup_retention_period,
      :character_set_name,
      :copy_tags_to_snapshot,
      :database_name,
      :db_cluster_identifier,
      :db_cluster_parameter_group_name,
      :vpc_security_group_ids,
      :db_subnet_group_name,
      :engine,
      :engine_version,
      :port,
      :master_username,
      :master_user_password,
      :option_group_name,
      :preferred_backup_window,
      :preferred_maintenance_window,
      :replication_source_identifier,
      :tags,
      :storage_encrypted,
      :kms_key_id,
      :pre_signed_url,
      :enable_iam_database_authentication,
      :enable_cloudwatch_logs_exports,
      :deletion_protection,
      :global_cluster_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster
    #   <p>Contains the details of an Amazon Neptune DB cluster.</p>
    #            <p>This data type is used as a response element in the <a>DescribeDBClusters</a> action.</p>
    #
    #   @return [DBCluster]
    #
    CreateDBClusterOutput = ::Struct.new(
      :db_cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the name of an existing DBClusterParameterGroup.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>This value is stored as a lowercase string.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute db_parameter_group_family
    #   <p>The DB cluster parameter group family name. A DB cluster parameter group can be associated
    #         with one and only one DB cluster parameter group family, and can be applied only to a DB
    #         cluster running a database engine and engine version compatible with that DB cluster parameter
    #         group family.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description for the DB cluster parameter group.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to be assigned to the new DB cluster parameter group.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateDBClusterParameterGroupInput = ::Struct.new(
      :db_cluster_parameter_group_name,
      :db_parameter_group_family,
      :description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster_parameter_group
    #   <p>Contains the details of an Amazon Neptune DB cluster parameter group.</p>
    #            <p>This data type is used as a response element in the <a>DescribeDBClusterParameterGroups</a> action.</p>
    #
    #   @return [DBClusterParameterGroup]
    #
    CreateDBClusterParameterGroupOutput = ::Struct.new(
      :db_cluster_parameter_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster_snapshot_identifier
    #   <p>The identifier of the DB cluster snapshot. This parameter is stored as a lowercase
    #         string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster1-snapshot1</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_identifier
    #   <p>The identifier of the DB cluster to create a snapshot for. This parameter is not
    #         case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing DBCluster.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster1</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to be assigned to the DB cluster snapshot.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateDBClusterSnapshotInput = ::Struct.new(
      :db_cluster_snapshot_identifier,
      :db_cluster_identifier,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster_snapshot
    #   <p>Contains the details for an Amazon Neptune DB cluster snapshot</p>
    #            <p>This data type is used as a response element in the <a>DescribeDBClusterSnapshots</a> action.</p>
    #
    #   @return [DBClusterSnapshot]
    #
    CreateDBClusterSnapshotOutput = ::Struct.new(
      :db_cluster_snapshot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_name
    #   <p>Not supported.</p>
    #
    #   @return [String]
    #
    # @!attribute db_instance_identifier
    #   <p>The DB instance identifier. This parameter is stored as a lowercase string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>mydbinstance</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute allocated_storage
    #   <p>Not supported by Neptune.</p>
    #
    #   @return [Integer]
    #
    # @!attribute db_instance_class
    #   <p>The compute and memory capacity of the DB instance, for example, <code>db.m4.large</code>.
    #         Not all DB instance classes are available in all Amazon Regions.</p>
    #
    #   @return [String]
    #
    # @!attribute engine
    #   <p>The name of the database engine to be used for this instance.</p>
    #            <p>Valid Values: <code>neptune</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute master_username
    #   <p>Not supported by Neptune.</p>
    #
    #   @return [String]
    #
    # @!attribute master_user_password
    #   <p>Not supported by Neptune.</p>
    #
    #   @return [String]
    #
    # @!attribute db_security_groups
    #   <p>A list of DB security groups to associate with this DB instance.</p>
    #            <p>Default: The default DB security group for the database engine.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute vpc_security_group_ids
    #   <p>A list of EC2 VPC security groups to associate with this DB instance.</p>
    #            <p>Not applicable. The associated list of EC2 VPC security groups is managed by the DB
    #         cluster. For more information, see <a>CreateDBCluster</a>.</p>
    #            <p>Default: The default EC2 VPC security group for the DB subnet group's VPC.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute availability_zone
    #   <p> The EC2 Availability Zone that the DB instance is created in</p>
    #            <p>Default: A random, system-chosen Availability Zone in the endpoint's Amazon Region.</p>
    #            <p> Example: <code>us-east-1d</code>
    #            </p>
    #            <p> Constraint: The AvailabilityZone parameter can't be specified if the MultiAZ parameter is
    #         set to <code>true</code>. The specified Availability Zone must be in the same Amazon Region as
    #         the current endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute db_subnet_group_name
    #   <p>A DB subnet group to associate with this DB instance.</p>
    #            <p>If there is no DB subnet group, then it is a non-VPC DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute preferred_maintenance_window
    #   <p>The time range each week during which system maintenance can occur, in Universal
    #         Coordinated Time (UTC).</p>
    #            <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #            </p>
    #            <p>The default is a 30-minute window selected at random from an 8-hour block of time for each
    #         Amazon Region, occurring on a random day of the week.</p>
    #            <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
    #            <p>Constraints: Minimum 30-minute window.</p>
    #
    #   @return [String]
    #
    # @!attribute db_parameter_group_name
    #   <p>The name of the DB parameter group to associate with this DB instance. If this argument is
    #         omitted, the default DBParameterGroup for the specified engine is used.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be 1 to 255 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute backup_retention_period
    #   <p>The number of days for which automated backups are
    #         retained.</p>
    #            <p>Not applicable. The retention period for automated backups is managed by the DB cluster.
    #         For more information, see <a>CreateDBCluster</a>.</p>
    #            <p>Default: 1</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be a value from 0 to 35</p>
    #               </li>
    #               <li>
    #                  <p>Cannot be set to 0 if the DB instance is a source to Read Replicas</p>
    #               </li>
    #            </ul>
    #
    #   @return [Integer]
    #
    # @!attribute preferred_backup_window
    #   <p> The daily time range during which automated backups are created.</p>
    #            <p>Not applicable. The daily time range for creating automated backups is managed by the DB
    #         cluster. For more information, see <a>CreateDBCluster</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port number on which the database accepts connections.</p>
    #            <p>Not applicable. The port is managed by the DB cluster. For more information, see <a>CreateDBCluster</a>.</p>
    #            <p> Default: <code>8182</code>
    #            </p>
    #            <p>Type: Integer</p>
    #
    #   @return [Integer]
    #
    # @!attribute multi_az
    #   <p>Specifies if the DB instance is a Multi-AZ deployment. You can't set the AvailabilityZone
    #         parameter if the MultiAZ parameter is set to true.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute engine_version
    #   <p>The version number of the database engine to use. Currently, setting this
    #         parameter has no effect.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_minor_version_upgrade
    #   <p>Indicates that minor engine upgrades are applied automatically to the DB instance during
    #         the maintenance window.</p>
    #            <p>Default: <code>true</code>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute license_model
    #   <p>License model information for this DB instance.</p>
    #            <p> Valid values: <code>license-included</code> | <code>bring-your-own-license</code> |
    #         <code>general-public-license</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute iops
    #   <p>The amount of Provisioned IOPS (input/output operations per second) to be initially
    #         allocated for the DB instance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute option_group_name
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute character_set_name
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute publicly_accessible
    #   <p>This flag should no longer be used.</p>
    #
    #   @deprecated
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>The tags to assign to the new instance.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute db_cluster_identifier
    #   <p>The identifier of the DB cluster that the instance will belong to.</p>
    #            <p>For information on creating a DB cluster, see <a>CreateDBCluster</a>.</p>
    #            <p>Type: String</p>
    #
    #   @return [String]
    #
    # @!attribute storage_type
    #   <p>Specifies the storage type to be associated with the DB instance.</p>
    #            <p>Not applicable. Storage is managed by the DB Cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute tde_credential_arn
    #   <p>The ARN from the key store with which to associate the instance for TDE encryption.</p>
    #
    #   @return [String]
    #
    # @!attribute tde_credential_password
    #   <p>The password for the given ARN from the key store in order to access the device.</p>
    #
    #   @return [String]
    #
    # @!attribute storage_encrypted
    #   <p>Specifies whether the DB instance is encrypted.</p>
    #            <p>Not applicable. The encryption for DB instances is managed by the DB cluster. For more
    #         information, see <a>CreateDBCluster</a>.</p>
    #            <p>Default: false</p>
    #
    #   @return [Boolean]
    #
    # @!attribute kms_key_id
    #   <p>The Amazon KMS key identifier for an encrypted DB instance.</p>
    #            <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If
    #         you are creating a DB instance with the same Amazon account that owns the KMS encryption key used
    #         to encrypt the new DB instance, then you can use the KMS key alias instead of the ARN for the
    #         KM encryption key.</p>
    #            <p>Not applicable. The KMS key identifier is managed by the DB cluster. For more information,
    #         see <a>CreateDBCluster</a>.</p>
    #            <p>If the <code>StorageEncrypted</code> parameter is true, and you do not specify a value for
    #         the <code>KmsKeyId</code> parameter, then Amazon Neptune will use your default encryption key.
    #         Amazon KMS creates the default encryption key for your Amazon account. Your Amazon account has a
    #         different default encryption key for each Amazon Region.</p>
    #
    #   @return [String]
    #
    # @!attribute domain
    #   <p>Specify the Active Directory Domain to create the instance in.</p>
    #
    #   @return [String]
    #
    # @!attribute copy_tags_to_snapshot
    #   <p>True to copy all tags from the DB instance to snapshots of the DB instance, and otherwise
    #         false. The default is false.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute monitoring_interval
    #   <p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected
    #         for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default
    #         is 0.</p>
    #            <p>If <code>MonitoringRoleArn</code> is specified, then you must also set
    #         <code>MonitoringInterval</code> to a value other than 0.</p>
    #            <p>Valid Values: <code>0, 1, 5, 10, 15, 30, 60</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute monitoring_role_arn
    #   <p>The ARN for the IAM role that permits Neptune to send enhanced monitoring metrics to
    #         Amazon CloudWatch Logs. For example,
    #         <code>arn:aws:iam:123456789012:role/emaccess</code>.</p>
    #            <p>If <code>MonitoringInterval</code> is set to a value other than 0, then you must supply a
    #         <code>MonitoringRoleArn</code> value.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_iam_role_name
    #   <p>Specify the name of the IAM role to be used when making API calls to the Directory
    #         Service.</p>
    #
    #   @return [String]
    #
    # @!attribute promotion_tier
    #   <p>A value that specifies the order in which an Read Replica is promoted to the primary
    #         instance after a failure of the existing primary instance.
    #         </p>
    #            <p>Default: 1</p>
    #            <p>Valid Values: 0 - 15</p>
    #
    #   @return [Integer]
    #
    # @!attribute timezone
    #   <p>The time zone of the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute enable_iam_database_authentication
    #   <p>Not supported by Neptune (ignored).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_performance_insights
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute performance_insights_kms_key_id
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute enable_cloudwatch_logs_exports
    #   <p>The list of log types that need to be enabled for exporting to CloudWatch Logs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute deletion_protection
    #   <p>A value that indicates whether the DB instance has deletion protection enabled.
    #         The database can't be deleted when deletion protection is enabled. By default,
    #         deletion protection is disabled. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/manage-console-instances-delete.html">Deleting
    #         a DB Instance</a>.</p>
    #
    #            <p>DB instances in a DB cluster can be deleted even when deletion
    #         protection is enabled in their parent DB cluster.</p>
    #
    #   @return [Boolean]
    #
    CreateDBInstanceInput = ::Struct.new(
      :db_name,
      :db_instance_identifier,
      :allocated_storage,
      :db_instance_class,
      :engine,
      :master_username,
      :master_user_password,
      :db_security_groups,
      :vpc_security_group_ids,
      :availability_zone,
      :db_subnet_group_name,
      :preferred_maintenance_window,
      :db_parameter_group_name,
      :backup_retention_period,
      :preferred_backup_window,
      :port,
      :multi_az,
      :engine_version,
      :auto_minor_version_upgrade,
      :license_model,
      :iops,
      :option_group_name,
      :character_set_name,
      :publicly_accessible,
      :tags,
      :db_cluster_identifier,
      :storage_type,
      :tde_credential_arn,
      :tde_credential_password,
      :storage_encrypted,
      :kms_key_id,
      :domain,
      :copy_tags_to_snapshot,
      :monitoring_interval,
      :monitoring_role_arn,
      :domain_iam_role_name,
      :promotion_tier,
      :timezone,
      :enable_iam_database_authentication,
      :enable_performance_insights,
      :performance_insights_kms_key_id,
      :enable_cloudwatch_logs_exports,
      :deletion_protection,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_instance
    #   <p>Contains the details of an Amazon Neptune DB instance.</p>
    #            <p>This data type is used as a response element in the <a>DescribeDBInstances</a> action.</p>
    #
    #   @return [DBInstance]
    #
    CreateDBInstanceOutput = ::Struct.new(
      :db_instance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_parameter_group_name
    #   <p>The name of the DB parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be 1 to 255 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>This value is stored as a lowercase string.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute db_parameter_group_family
    #   <p>The DB parameter group family name. A DB parameter group can be associated with one and
    #         only one DB parameter group family, and can be applied only to a DB instance running a
    #         database engine and engine version compatible with that DB parameter group family.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description for the DB parameter group.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to be assigned to the new DB parameter group.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateDBParameterGroupInput = ::Struct.new(
      :db_parameter_group_name,
      :db_parameter_group_family,
      :description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_parameter_group
    #   <p>Contains the details of an Amazon Neptune DB parameter group.</p>
    #            <p>This data type is used as a response element in the <a>DescribeDBParameterGroups</a> action.</p>
    #
    #   @return [DBParameterGroup]
    #
    CreateDBParameterGroupOutput = ::Struct.new(
      :db_parameter_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_subnet_group_name
    #   <p>The name for the DB subnet group. This value is stored as a lowercase string.</p>
    #            <p>Constraints: Must contain no more than 255 letters, numbers, periods, underscores, spaces,
    #         or hyphens. Must not be default.</p>
    #            <p>Example: <code>mySubnetgroup</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute db_subnet_group_description
    #   <p>The description for the DB subnet group.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_ids
    #   <p>The EC2 Subnet IDs for the DB subnet group.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>The tags to be assigned to the new DB subnet group.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateDBSubnetGroupInput = ::Struct.new(
      :db_subnet_group_name,
      :db_subnet_group_description,
      :subnet_ids,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_subnet_group
    #   <p>Contains the details of an Amazon Neptune DB subnet group.</p>
    #            <p>This data type is used as a response element in the <a>DescribeDBSubnetGroups</a> action.</p>
    #
    #   @return [DBSubnetGroup]
    #
    CreateDBSubnetGroupOutput = ::Struct.new(
      :db_subnet_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute subscription_name
    #   <p>The name of the subscription.</p>
    #            <p>Constraints: The name must be less than 255 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the SNS topic created for event notification. The ARN is
    #         created by Amazon SNS when you create a topic and subscribe to it.</p>
    #
    #   @return [String]
    #
    # @!attribute source_type
    #   <p>The type of source that is generating the events. For example, if you want to be notified
    #         of events generated by a DB instance, you would set this parameter to db-instance. if this
    #         value is not specified, all events are returned.</p>
    #            <p>Valid values: <code>db-instance</code> | <code>db-cluster</code> |
    #         <code>db-parameter-group</code> | <code>db-security-group</code> | <code>db-snapshot</code> |
    #         <code>db-cluster-snapshot</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute event_categories
    #   <p> A list of event categories for a SourceType that you want to subscribe to. You can see a
    #         list of the categories for a given SourceType by using the
    #         <b>DescribeEventCategories</b> action.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute source_ids
    #   <p>The list of identifiers of the event sources for which events are returned. If not
    #         specified, then all sources are included in the response. An identifier must begin with a
    #         letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or
    #         contain two consecutive hyphens.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If SourceIds are supplied, SourceType must also be provided.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is a DB instance, then a <code>DBInstanceIdentifier</code> must be
    #             supplied.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is a DB security group, a <code>DBSecurityGroupName</code> must be
    #             supplied.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is a DB parameter group, a <code>DBParameterGroupName</code> must
    #             be supplied.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is a DB snapshot, a <code>DBSnapshotIdentifier</code> must be
    #             supplied.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute enabled
    #   <p> A Boolean value; set to <b>true</b> to activate the
    #         subscription, set to <b>false</b> to create the subscription but not
    #         active it.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>The tags to be applied to the new event subscription.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateEventSubscriptionInput = ::Struct.new(
      :subscription_name,
      :sns_topic_arn,
      :source_type,
      :event_categories,
      :source_ids,
      :enabled,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_subscription
    #   <p>Contains the results of a successful invocation of the <a>DescribeEventSubscriptions</a> action.</p>
    #
    #   @return [EventSubscription]
    #
    CreateEventSubscriptionOutput = ::Struct.new(
      :event_subscription,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_cluster_identifier
    #   <p>The cluster identifier of the new global database cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute source_db_cluster_identifier
    #   <p>(<i>Optional</i>) The Amazon Resource Name (ARN) of
    #         an existing Neptune DB cluster to use as the primary cluster of the new
    #         global database.</p>
    #
    #   @return [String]
    #
    # @!attribute engine
    #   <p>The name of the database engine to be used in the global database.</p>
    #            <p>Valid values: <code>neptune</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The Neptune engine version to be used by the global database.</p>
    #            <p>Valid values: <code>1.2.0.0</code> or above.</p>
    #
    #   @return [String]
    #
    # @!attribute deletion_protection
    #   <p>The deletion protection setting for the new global database.
    #         The global database can't be deleted when deletion protection is
    #         enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute storage_encrypted
    #   <p>The storage encryption setting for the new global database
    #         cluster.</p>
    #
    #   @return [Boolean]
    #
    CreateGlobalClusterInput = ::Struct.new(
      :global_cluster_identifier,
      :source_db_cluster_identifier,
      :engine,
      :engine_version,
      :deletion_protection,
      :storage_encrypted,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_cluster
    #   <p>Contains the details of an Amazon Neptune global database.</p>
    #            <p>This data type is used as a response element for the
    #         <a>CreateGlobalCluster</a>,
    #         <a>DescribeGlobalClusters</a>,
    #         <a>ModifyGlobalCluster</a>,
    #         <a>DeleteGlobalCluster</a>,
    #         <a>FailoverGlobalCluster</a>, and
    #         <a>RemoveFromGlobalCluster</a> actions.</p>
    #
    #   @return [GlobalCluster]
    #
    CreateGlobalClusterOutput = ::Struct.new(
      :global_cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the details of an Amazon Neptune DB cluster.</p>
    #          <p>This data type is used as a response element in the <a>DescribeDBClusters</a> action.</p>
    #
    # @!attribute allocated_storage
    #   <p>
    #               <code>AllocatedStorage</code> always returns 1, because Neptune DB cluster storage size is
    #         not fixed, but instead automatically adjusts as needed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute availability_zones
    #   <p>Provides the list of EC2 Availability Zones that instances in the DB cluster can be
    #         created in.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute backup_retention_period
    #   <p>Specifies the number of days for which automatic DB snapshots are retained.</p>
    #
    #   @return [Integer]
    #
    # @!attribute character_set_name
    #   <p>Not supported by Neptune.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>Contains the name of the initial database of this DB cluster that was provided at create
    #         time, if one was specified when the DB cluster was created. This same name is returned for the
    #         life of the DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_identifier
    #   <p>Contains a user-supplied DB cluster identifier. This identifier is the unique key that
    #         identifies a DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_parameter_group
    #   <p>Specifies the name of the DB cluster parameter group for the DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute db_subnet_group
    #   <p>Specifies information on the subnet group associated with the DB cluster, including the
    #         name, description, and subnets in the subnet group.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Specifies the current state of this DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute percent_progress
    #   <p>Specifies the progress of the operation as a percentage.</p>
    #
    #   @return [String]
    #
    # @!attribute earliest_restorable_time
    #   <p>Specifies the earliest time to which a database can be restored with point-in-time
    #         restore.</p>
    #
    #   @return [Time]
    #
    # @!attribute endpoint
    #   <p>Specifies the connection endpoint for the primary instance of the DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute reader_endpoint
    #   <p>The reader endpoint for the DB cluster. The reader endpoint for a DB cluster load-balances
    #         connections across the Read Replicas that are available in a DB cluster. As clients request
    #         new connections to the reader endpoint, Neptune distributes the connection requests among the
    #         Read Replicas in the DB cluster. This functionality can help balance your read workload across
    #         multiple Read Replicas in your DB cluster.</p>
    #            <p>If a failover occurs, and the Read Replica that you are connected to is promoted to be the
    #         primary instance, your connection is dropped. To continue sending your read workload to other
    #         Read Replicas in the cluster, you can then reconnect to the reader endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute multi_az
    #   <p>Specifies whether the DB cluster has instances in multiple Availability Zones.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute engine
    #   <p>Provides the name of the database engine to be used for this DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>Indicates the database engine version.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_restorable_time
    #   <p>Specifies the latest time to which a database can be restored with point-in-time
    #         restore.</p>
    #
    #   @return [Time]
    #
    # @!attribute port
    #   <p>Specifies the port that the database engine is listening on.</p>
    #
    #   @return [Integer]
    #
    # @!attribute master_username
    #   <p>Not supported by Neptune.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_option_group_memberships
    #   <p>Not supported by Neptune.</p>
    #
    #   @return [Array<DBClusterOptionGroupStatus>]
    #
    # @!attribute preferred_backup_window
    #   <p>Specifies the daily time range during which automated backups are created if automated
    #         backups are enabled, as determined by the <code>BackupRetentionPeriod</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute preferred_maintenance_window
    #   <p>Specifies the weekly time range during which system maintenance can occur, in Universal
    #         Coordinated Time (UTC).</p>
    #
    #   @return [String]
    #
    # @!attribute replication_source_identifier
    #   <p>Not supported by Neptune.</p>
    #
    #   @return [String]
    #
    # @!attribute read_replica_identifiers
    #   <p>Contains one or more identifiers of the Read Replicas associated with this DB
    #         cluster.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute db_cluster_members
    #   <p>Provides the list of instances that make up the DB cluster.</p>
    #
    #   @return [Array<DBClusterMember>]
    #
    # @!attribute vpc_security_groups
    #   <p>Provides a list of VPC security groups that the DB cluster belongs to.</p>
    #
    #   @return [Array<VpcSecurityGroupMembership>]
    #
    # @!attribute hosted_zone_id
    #   <p>Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.</p>
    #
    #   @return [String]
    #
    # @!attribute storage_encrypted
    #   <p>Specifies whether the DB cluster is encrypted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute kms_key_id
    #   <p>If <code>StorageEncrypted</code> is true, the Amazon KMS key identifier for the
    #         encrypted DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_resource_id
    #   <p>The Amazon Region-unique, immutable identifier for the DB cluster. This identifier is found
    #         in Amazon CloudTrail log entries whenever the Amazon KMS key for the DB cluster is accessed.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_arn
    #   <p>The Amazon Resource Name (ARN) for the DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute associated_roles
    #   <p>Provides a list of the Amazon Identity and Access Management (IAM) roles that are associated
    #         with the DB cluster. IAM roles that are associated with a DB cluster grant permission for the
    #         DB cluster to access other Amazon services on your behalf.</p>
    #
    #   @return [Array<DBClusterRole>]
    #
    # @!attribute iam_database_authentication_enabled
    #   <p>True if mapping of Amazon Identity and Access Management (IAM) accounts to database accounts
    #         is enabled, and otherwise false.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute clone_group_id
    #   <p>Identifies the clone group to which the DB cluster is associated.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_create_time
    #   <p>Specifies the time when the DB cluster was created, in Universal Coordinated Time
    #         (UTC).</p>
    #
    #   @return [Time]
    #
    # @!attribute copy_tags_to_snapshot
    #   <p>
    #               <i>If set to <code>true</code>, tags are copied to any snapshot of
    #         the DB cluster that is created.</i>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute enabled_cloudwatch_logs_exports
    #   <p>A list of log types that this DB cluster is configured to export to CloudWatch Logs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute deletion_protection
    #   <p>Indicates whether or not the DB cluster has deletion protection enabled.
    #         The database can't be deleted when deletion protection is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute cross_account_clone
    #   <p>If set to <code>true</code>, the DB cluster can be cloned across accounts.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute automatic_restart_time
    #   <p>Time at which the DB cluster will be automatically restarted.</p>
    #
    #   @return [Time]
    #
    DBCluster = ::Struct.new(
      :allocated_storage,
      :availability_zones,
      :backup_retention_period,
      :character_set_name,
      :database_name,
      :db_cluster_identifier,
      :db_cluster_parameter_group,
      :db_subnet_group,
      :status,
      :percent_progress,
      :earliest_restorable_time,
      :endpoint,
      :reader_endpoint,
      :multi_az,
      :engine,
      :engine_version,
      :latest_restorable_time,
      :port,
      :master_username,
      :db_cluster_option_group_memberships,
      :preferred_backup_window,
      :preferred_maintenance_window,
      :replication_source_identifier,
      :read_replica_identifiers,
      :db_cluster_members,
      :vpc_security_groups,
      :hosted_zone_id,
      :storage_encrypted,
      :kms_key_id,
      :db_cluster_resource_id,
      :db_cluster_arn,
      :associated_roles,
      :iam_database_authentication_enabled,
      :clone_group_id,
      :cluster_create_time,
      :copy_tags_to_snapshot,
      :enabled_cloudwatch_logs_exports,
      :deletion_protection,
      :cross_account_clone,
      :automatic_restart_time,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.multi_az ||= false
        self.storage_encrypted ||= false
        self.iam_database_authentication_enabled ||= false
      end

    end

    # <p>User already has a DB cluster with the given identifier.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    DBClusterAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This data type represents the information you need to connect to an Amazon Neptune DB cluster.
    #       This data type is used as a response element in the following actions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>CreateDBClusterEndpoint</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DescribeDBClusterEndpoints</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ModifyDBClusterEndpoint</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DeleteDBClusterEndpoint</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>For the data structure that represents Amazon Neptune DB instance endpoints,
    #       see <code>Endpoint</code>.</p>
    #
    # @!attribute db_cluster_endpoint_identifier
    #   <p>The identifier associated with the endpoint. This parameter is stored as a lowercase string.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_identifier
    #   <p>The DB cluster identifier of the DB cluster associated with the endpoint. This parameter is
    #         stored as a lowercase string.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_endpoint_resource_identifier
    #   <p>A unique system-generated identifier for an endpoint. It remains the same for the whole life of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint
    #   <p>The DNS address of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the endpoint. One of: <code>creating</code>, <code>available</code>, <code>deleting</code>, <code>inactive</code>, <code>modifying</code>. The <code>inactive</code> state applies to an endpoint that cannot be used for a certain kind of cluster,
    #         such as a <code>writer</code> endpoint for a read-only secondary cluster in a global database.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_type
    #   <p>The type of the endpoint. One of: <code>READER</code>, <code>WRITER</code>, <code>CUSTOM</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_endpoint_type
    #   <p>The type associated with a custom endpoint. One of: <code>READER</code>,
    #         <code>WRITER</code>, <code>ANY</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute static_members
    #   <p>List of DB instance identifiers that are part of the custom endpoint group.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute excluded_members
    #   <p>List of DB instance identifiers that aren't part of the custom endpoint group.
    #         All other eligible instances are reachable through the custom endpoint.
    #         Only relevant if the list of static members is empty.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute db_cluster_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) for the endpoint.</p>
    #
    #   @return [String]
    #
    DBClusterEndpoint = ::Struct.new(
      :db_cluster_endpoint_identifier,
      :db_cluster_identifier,
      :db_cluster_endpoint_resource_identifier,
      :endpoint,
      :status,
      :endpoint_type,
      :custom_endpoint_type,
      :static_members,
      :excluded_members,
      :db_cluster_endpoint_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified custom endpoint cannot be created because it already exists.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    DBClusterEndpointAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified custom endpoint doesn't exist.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    DBClusterEndpointNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The cluster already has the maximum number of custom endpoints.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    DBClusterEndpointQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about an instance that is part of a DB cluster.</p>
    #
    # @!attribute db_instance_identifier
    #   <p>Specifies the instance identifier for this member of the DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute is_cluster_writer
    #   <p>Value that is <code>true</code> if the cluster member is the primary instance for the DB
    #         cluster and <code>false</code> otherwise.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute db_cluster_parameter_group_status
    #   <p>Specifies the status of the DB cluster parameter group for this member of the DB
    #         cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute promotion_tier
    #   <p>A value that specifies the order in which a Read Replica is promoted to the primary
    #         instance after a failure of the existing primary instance.</p>
    #
    #   @return [Integer]
    #
    DBClusterMember = ::Struct.new(
      :db_instance_identifier,
      :is_cluster_writer,
      :db_cluster_parameter_group_status,
      :promotion_tier,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_cluster_writer ||= false
      end

    end

    # <p>
    #             <i>DBClusterIdentifier</i> does not refer to an existing DB cluster.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    DBClusterNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Not supported by Neptune.</p>
    #
    # @!attribute db_cluster_option_group_name
    #   <p>Not supported by Neptune.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Not supported by Neptune.</p>
    #
    #   @return [String]
    #
    DBClusterOptionGroupStatus = ::Struct.new(
      :db_cluster_option_group_name,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the details of an Amazon Neptune DB cluster parameter group.</p>
    #          <p>This data type is used as a response element in the <a>DescribeDBClusterParameterGroups</a> action.</p>
    #
    # @!attribute db_cluster_parameter_group_name
    #   <p>Provides the name of the DB cluster parameter group.</p>
    #
    #   @return [String]
    #
    # @!attribute db_parameter_group_family
    #   <p>Provides the name of the DB parameter group family that this DB cluster parameter group is
    #         compatible with.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Provides the customer-specified description for this DB cluster parameter group.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_parameter_group_arn
    #   <p>The Amazon Resource Name (ARN) for the DB cluster parameter group.</p>
    #
    #   @return [String]
    #
    DBClusterParameterGroup = ::Struct.new(
      :db_cluster_parameter_group_name,
      :db_parameter_group_family,
      :description,
      :db_cluster_parameter_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             <i>DBClusterParameterGroupName</i> does not refer to an
    #       existing DB Cluster parameter group.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    DBClusterParameterGroupNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>User attempted to create a new DB cluster and the user has already reached the maximum allowed DB cluster quota.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    DBClusterQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an Amazon Identity and Access Management (IAM) role that is associated with a DB
    #       cluster.</p>
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that is associated with the DB
    #         cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Describes the state of association between the IAM role and the DB cluster. The Status
    #         property returns one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - the IAM role ARN is associated with the DB cluster and can be
    #             used to access other Amazon services on your behalf.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> - the IAM role ARN is being associated with the DB
    #             cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INVALID</code> - the IAM role ARN is associated with the DB cluster, but the DB
    #             cluster is unable to assume the IAM role in order to access other Amazon services on your
    #             behalf.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute feature_name
    #   <p>The name of the feature associated with the Amazon Identity and Access Management (IAM) role.
    #         For the list of supported feature names, see <a href="https://docs.aws.amazon.com/neptune/latest/userguide/api-other-apis.html DescribeDBEngineVersions">DescribeDBEngineVersions</a>.
    #       </p>
    #
    #   @return [String]
    #
    DBClusterRole = ::Struct.new(
      :role_arn,
      :status,
      :feature_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified IAM role Amazon Resource Name (ARN) is already associated with the specified DB cluster.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    DBClusterRoleAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified IAM role Amazon Resource Name (ARN) is not associated with the specified DB cluster.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    DBClusterRoleNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have exceeded the maximum number of IAM roles that can be associated with the specified DB cluster.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    DBClusterRoleQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the details for an Amazon Neptune DB cluster snapshot</p>
    #          <p>This data type is used as a response element in the <a>DescribeDBClusterSnapshots</a> action.</p>
    #
    # @!attribute availability_zones
    #   <p>Provides the list of EC2 Availability Zones that instances in the DB cluster snapshot can
    #         be restored in.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute db_cluster_snapshot_identifier
    #   <p>Specifies the identifier for a DB cluster snapshot. Must match the identifier
    #         of an existing snapshot.</p>
    #
    #            <p>After you restore a DB cluster using a <code>DBClusterSnapshotIdentifier</code>,
    #         you must specify the same <code>DBClusterSnapshotIdentifier</code> for any future
    #         updates to the DB cluster. When you specify this property for an update, the DB
    #         cluster is not restored from the snapshot again, and the data in the database is not
    #         changed.</p>
    #
    #            <p>However, if you don't specify the <code>DBClusterSnapshotIdentifier</code>, an empty
    #         DB cluster is created, and the original DB cluster is deleted. If you specify a
    #         property that is different from the previous snapshot restore property, the DB
    #         cluster is restored from the snapshot specified by the <code>DBClusterSnapshotIdentifier</code>,
    #         and the original DB cluster is deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_identifier
    #   <p>Specifies the DB cluster identifier of the DB cluster that this DB cluster snapshot was
    #         created from.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_create_time
    #   <p>Provides the time when the snapshot was taken, in Universal Coordinated Time (UTC).</p>
    #
    #   @return [Time]
    #
    # @!attribute engine
    #   <p>Specifies the name of the database engine.</p>
    #
    #   @return [String]
    #
    # @!attribute allocated_storage
    #   <p>Specifies the allocated storage size in gibibytes (GiB).</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>Specifies the status of this DB cluster snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>Specifies the port that the DB cluster was listening on at the time of the
    #         snapshot.</p>
    #
    #   @return [Integer]
    #
    # @!attribute vpc_id
    #   <p>Provides the VPC ID associated with the DB cluster snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_create_time
    #   <p>Specifies the time when the DB cluster was created, in Universal Coordinated Time
    #         (UTC).</p>
    #
    #   @return [Time]
    #
    # @!attribute master_username
    #   <p>Not supported by Neptune.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>Provides the version of the database engine for this DB cluster snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute license_model
    #   <p>Provides the license model information for this DB cluster snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_type
    #   <p>Provides the type of the DB cluster snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute percent_progress
    #   <p>Specifies the percentage of the estimated data that has been transferred.</p>
    #
    #   @return [Integer]
    #
    # @!attribute storage_encrypted
    #   <p>Specifies whether the DB cluster snapshot is encrypted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute kms_key_id
    #   <p>If <code>StorageEncrypted</code> is true, the Amazon KMS key identifier for the encrypted DB
    #         cluster snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_snapshot_arn
    #   <p>The Amazon Resource Name (ARN) for the DB cluster snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute source_db_cluster_snapshot_arn
    #   <p>If the DB cluster snapshot was copied from a source DB cluster snapshot, the Amazon
    #         Resource Name (ARN) for the source DB cluster snapshot, otherwise, a null value.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_database_authentication_enabled
    #   <p>True if mapping of Amazon Identity and Access Management (IAM) accounts to database accounts
    #         is enabled, and otherwise false.</p>
    #
    #   @return [Boolean]
    #
    DBClusterSnapshot = ::Struct.new(
      :availability_zones,
      :db_cluster_snapshot_identifier,
      :db_cluster_identifier,
      :snapshot_create_time,
      :engine,
      :allocated_storage,
      :status,
      :port,
      :vpc_id,
      :cluster_create_time,
      :master_username,
      :engine_version,
      :license_model,
      :snapshot_type,
      :percent_progress,
      :storage_encrypted,
      :kms_key_id,
      :db_cluster_snapshot_arn,
      :source_db_cluster_snapshot_arn,
      :iam_database_authentication_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.allocated_storage ||= 0
        self.port ||= 0
        self.percent_progress ||= 0
        self.storage_encrypted ||= false
        self.iam_database_authentication_enabled ||= false
      end

    end

    # <p>User already has a DB cluster snapshot with the given identifier.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    DBClusterSnapshotAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the name and values of a manual DB cluster snapshot attribute.</p>
    #          <p>Manual DB cluster snapshot attributes are used to authorize other Amazon accounts to restore
    #       a manual DB cluster snapshot. For more information, see the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>
    #
    # @!attribute attribute_name
    #   <p>The name of the manual DB cluster snapshot attribute.</p>
    #            <p>The attribute named <code>restore</code> refers to the list of Amazon accounts that have
    #         permission to copy or restore the manual DB cluster snapshot. For more information, see the
    #         <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>
    #
    #   @return [String]
    #
    # @!attribute attribute_values
    #   <p>The value(s) for the manual DB cluster snapshot attribute.</p>
    #            <p>If the <code>AttributeName</code> field is set to <code>restore</code>, then this element
    #         returns a list of IDs of the Amazon accounts that are authorized to copy or restore the manual DB
    #         cluster snapshot. If a value of <code>all</code> is in the list, then the manual DB cluster
    #         snapshot is public and available for any Amazon account to copy or restore.</p>
    #
    #   @return [Array<String>]
    #
    DBClusterSnapshotAttribute = ::Struct.new(
      :attribute_name,
      :attribute_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the results of a successful call to the <a>DescribeDBClusterSnapshotAttributes</a> API action.</p>
    #          <p>Manual DB cluster snapshot attributes are used to authorize other Amazon accounts to copy or
    #       restore a manual DB cluster snapshot. For more information, see the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>
    #
    # @!attribute db_cluster_snapshot_identifier
    #   <p>The identifier of the manual DB cluster snapshot that the attributes apply to.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_snapshot_attributes
    #   <p>The list of attributes and values for the manual DB cluster snapshot.</p>
    #
    #   @return [Array<DBClusterSnapshotAttribute>]
    #
    DBClusterSnapshotAttributesResult = ::Struct.new(
      :db_cluster_snapshot_identifier,
      :db_cluster_snapshot_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             <i>DBClusterSnapshotIdentifier</i> does not refer to an existing
    #       DB cluster snapshot.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    DBClusterSnapshotNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> This data type is used as a response element in the action <a>DescribeDBEngineVersions</a>.</p>
    #
    # @!attribute engine
    #   <p>The name of the database engine.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The version number of the database engine.</p>
    #
    #   @return [String]
    #
    # @!attribute db_parameter_group_family
    #   <p>The name of the DB parameter group family for the database engine.</p>
    #
    #   @return [String]
    #
    # @!attribute db_engine_description
    #   <p>The description of the database engine.</p>
    #
    #   @return [String]
    #
    # @!attribute db_engine_version_description
    #   <p>The description of the database engine version.</p>
    #
    #   @return [String]
    #
    # @!attribute default_character_set
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    #
    #   @return [CharacterSet]
    #
    # @!attribute supported_character_sets
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    #
    #   @return [Array<CharacterSet>]
    #
    # @!attribute valid_upgrade_target
    #   <p>A list of engine versions that this database engine version can be upgraded to.</p>
    #
    #   @return [Array<UpgradeTarget>]
    #
    # @!attribute supported_timezones
    #   <p>A list of the time zones supported by this engine for the <code>Timezone</code> parameter
    #         of the <code>CreateDBInstance</code> action.</p>
    #
    #   @return [Array<Timezone>]
    #
    # @!attribute exportable_log_types
    #   <p>The types of logs that the database engine has available for export to CloudWatch
    #         Logs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute supports_log_exports_to_cloudwatch_logs
    #   <p>A value that indicates whether the engine version supports exporting the log types
    #         specified by ExportableLogTypes to CloudWatch Logs.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute supports_read_replica
    #   <p>Indicates whether the database engine version supports read replicas.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute supports_global_databases
    #   <p>A value that indicates whether you can use Aurora global databases with a specific DB engine version.</p>
    #
    #   @return [Boolean]
    #
    DBEngineVersion = ::Struct.new(
      :engine,
      :engine_version,
      :db_parameter_group_family,
      :db_engine_description,
      :db_engine_version_description,
      :default_character_set,
      :supported_character_sets,
      :valid_upgrade_target,
      :supported_timezones,
      :exportable_log_types,
      :supports_log_exports_to_cloudwatch_logs,
      :supports_read_replica,
      :supports_global_databases,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.supports_log_exports_to_cloudwatch_logs ||= false
        self.supports_read_replica ||= false
        self.supports_global_databases ||= false
      end

    end

    # <p>Contains the details of an Amazon Neptune DB instance.</p>
    #          <p>This data type is used as a response element in the <a>DescribeDBInstances</a> action.</p>
    #
    # @!attribute db_instance_identifier
    #   <p>Contains a user-supplied database identifier. This identifier is the unique key that
    #         identifies a DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute db_instance_class
    #   <p>Contains the name of the compute and memory capacity class of the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute engine
    #   <p>Provides the name of the database engine to be used for this DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute db_instance_status
    #   <p>Specifies the current state of this database.</p>
    #
    #   @return [String]
    #
    # @!attribute master_username
    #   <p>Not supported by Neptune.</p>
    #
    #   @return [String]
    #
    # @!attribute db_name
    #   <p>The database name.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint
    #   <p>Specifies the connection endpoint.</p>
    #
    #   @return [Endpoint]
    #
    # @!attribute allocated_storage
    #   <p>Not supported by Neptune.</p>
    #
    #   @return [Integer]
    #
    # @!attribute instance_create_time
    #   <p>Provides the date and time the DB instance was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute preferred_backup_window
    #   <p> Specifies the daily time range during which automated backups are created if automated
    #         backups are enabled, as determined by the <code>BackupRetentionPeriod</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_retention_period
    #   <p>Specifies the number of days for which automatic DB snapshots are retained.</p>
    #
    #   @return [Integer]
    #
    # @!attribute db_security_groups
    #   <p> Provides List of DB security group elements containing only
    #         <code>DBSecurityGroup.Name</code> and <code>DBSecurityGroup.Status</code> subelements.</p>
    #
    #   @return [Array<DBSecurityGroupMembership>]
    #
    # @!attribute vpc_security_groups
    #   <p>Provides a list of VPC security group elements that the DB instance belongs to.</p>
    #
    #   @return [Array<VpcSecurityGroupMembership>]
    #
    # @!attribute db_parameter_groups
    #   <p>Provides the list of DB parameter groups applied to this DB instance.</p>
    #
    #   @return [Array<DBParameterGroupStatus>]
    #
    # @!attribute availability_zone
    #   <p>Specifies the name of the Availability Zone the DB instance is located in.</p>
    #
    #   @return [String]
    #
    # @!attribute db_subnet_group
    #   <p>Specifies information on the subnet group associated with the DB instance, including the
    #         name, description, and subnets in the subnet group.</p>
    #
    #   @return [DBSubnetGroup]
    #
    # @!attribute preferred_maintenance_window
    #   <p>Specifies the weekly time range during which system maintenance can occur, in Universal
    #         Coordinated Time (UTC).</p>
    #
    #   @return [String]
    #
    # @!attribute pending_modified_values
    #   <p>Specifies that changes to the DB instance are pending. This element is only included when
    #         changes are pending. Specific changes are identified by subelements.</p>
    #
    #   @return [PendingModifiedValues]
    #
    # @!attribute latest_restorable_time
    #   <p>Specifies the latest time to which a database can be restored with point-in-time
    #         restore.</p>
    #
    #   @return [Time]
    #
    # @!attribute multi_az
    #   <p>Specifies if the DB instance is a Multi-AZ deployment.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute engine_version
    #   <p>Indicates the database engine version.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_minor_version_upgrade
    #   <p>Indicates that minor version patches are applied automatically.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute read_replica_source_db_instance_identifier
    #   <p>Contains the identifier of the source DB instance if this DB instance is a Read
    #         Replica.</p>
    #
    #   @return [String]
    #
    # @!attribute read_replica_db_instance_identifiers
    #   <p>Contains one or more identifiers of the Read Replicas associated with this DB
    #         instance.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute read_replica_db_cluster_identifiers
    #   <p>Contains one or more identifiers of DB clusters that are Read Replicas of this DB
    #         instance.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute license_model
    #   <p>License model information for this DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute iops
    #   <p>Specifies the Provisioned IOPS (I/O operations per second) value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute option_group_memberships
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    #
    #   @return [Array<OptionGroupMembership>]
    #
    # @!attribute character_set_name
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute secondary_availability_zone
    #   <p>If present, specifies the name of the secondary Availability Zone for a DB instance with
    #         multi-AZ support.</p>
    #
    #   @return [String]
    #
    # @!attribute publicly_accessible
    #   <p>This flag should no longer be used.</p>
    #
    #   @deprecated
    #
    #   @return [Boolean]
    #
    # @!attribute status_infos
    #   <p>The status of a Read Replica. If the instance is not a Read Replica, this is blank.</p>
    #
    #   @return [Array<DBInstanceStatusInfo>]
    #
    # @!attribute storage_type
    #   <p>Specifies the storage type associated with DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute tde_credential_arn
    #   <p>The ARN from the key store with which the instance is associated for TDE
    #         encryption.</p>
    #
    #   @return [String]
    #
    # @!attribute db_instance_port
    #   <p>Specifies the port that the DB instance listens on. If the DB instance is part of a DB
    #         cluster, this can be a different port than the DB cluster port.</p>
    #
    #   @return [Integer]
    #
    # @!attribute db_cluster_identifier
    #   <p>If the DB instance is a member of a DB cluster, contains the name of the DB cluster that
    #         the DB instance is a member of.</p>
    #
    #   @return [String]
    #
    # @!attribute storage_encrypted
    #   <p>Not supported: The encryption for DB instances is managed by the DB cluster.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute kms_key_id
    #   <p> Not supported: The encryption for DB instances is managed by the DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute dbi_resource_id
    #   <p>The Amazon Region-unique, immutable identifier for the DB instance. This identifier is found
    #         in Amazon CloudTrail log entries whenever the Amazon KMS key for the DB instance is accessed.</p>
    #
    #   @return [String]
    #
    # @!attribute ca_certificate_identifier
    #   <p>The identifier of the CA certificate for this DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_memberships
    #   <p>Not supported</p>
    #
    #   @return [Array<DomainMembership>]
    #
    # @!attribute copy_tags_to_snapshot
    #   <p>Specifies whether tags are copied from the DB instance to snapshots of the DB
    #         instance.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute monitoring_interval
    #   <p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected
    #         for the DB instance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute enhanced_monitoring_resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon CloudWatch Logs log stream that receives the
    #         Enhanced Monitoring metrics data for the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute monitoring_role_arn
    #   <p>The ARN for the IAM role that permits Neptune to send Enhanced Monitoring metrics to
    #         Amazon CloudWatch Logs.</p>
    #
    #   @return [String]
    #
    # @!attribute promotion_tier
    #   <p>A value that specifies the order in which a Read Replica is promoted to the primary
    #         instance after a failure of the existing primary instance.
    #      </p>
    #
    #   @return [Integer]
    #
    # @!attribute db_instance_arn
    #   <p>The Amazon Resource Name (ARN) for the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute timezone
    #   <p>Not supported.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_database_authentication_enabled
    #   <p>True if Amazon Identity and Access Management (IAM) authentication is enabled, and otherwise
    #         false.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute performance_insights_enabled
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute performance_insights_kms_key_id
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute enabled_cloudwatch_logs_exports
    #   <p>A list of log types that this DB instance is configured to export to CloudWatch
    #         Logs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute deletion_protection
    #   <p>Indicates whether or not the DB instance has deletion protection enabled.
    #         The instance can't be deleted when deletion protection is enabled. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/manage-console-instances-delete.html">Deleting
    #         a DB Instance</a>.</p>
    #
    #   @return [Boolean]
    #
    DBInstance = ::Struct.new(
      :db_instance_identifier,
      :db_instance_class,
      :engine,
      :db_instance_status,
      :master_username,
      :db_name,
      :endpoint,
      :allocated_storage,
      :instance_create_time,
      :preferred_backup_window,
      :backup_retention_period,
      :db_security_groups,
      :vpc_security_groups,
      :db_parameter_groups,
      :availability_zone,
      :db_subnet_group,
      :preferred_maintenance_window,
      :pending_modified_values,
      :latest_restorable_time,
      :multi_az,
      :engine_version,
      :auto_minor_version_upgrade,
      :read_replica_source_db_instance_identifier,
      :read_replica_db_instance_identifiers,
      :read_replica_db_cluster_identifiers,
      :license_model,
      :iops,
      :option_group_memberships,
      :character_set_name,
      :secondary_availability_zone,
      :publicly_accessible,
      :status_infos,
      :storage_type,
      :tde_credential_arn,
      :db_instance_port,
      :db_cluster_identifier,
      :storage_encrypted,
      :kms_key_id,
      :dbi_resource_id,
      :ca_certificate_identifier,
      :domain_memberships,
      :copy_tags_to_snapshot,
      :monitoring_interval,
      :enhanced_monitoring_resource_arn,
      :monitoring_role_arn,
      :promotion_tier,
      :db_instance_arn,
      :timezone,
      :iam_database_authentication_enabled,
      :performance_insights_enabled,
      :performance_insights_kms_key_id,
      :enabled_cloudwatch_logs_exports,
      :deletion_protection,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.allocated_storage ||= 0
        self.backup_retention_period ||= 0
        self.multi_az ||= false
        self.auto_minor_version_upgrade ||= false
        self.publicly_accessible ||= false
        self.db_instance_port ||= 0
        self.storage_encrypted ||= false
        self.copy_tags_to_snapshot ||= false
        self.iam_database_authentication_enabled ||= false
      end

    end

    # <p>User already has a DB instance with the given identifier.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    DBInstanceAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             <i>DBInstanceIdentifier</i> does not refer to an existing DB instance.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    DBInstanceNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides a list of status information for a DB instance.</p>
    #
    # @!attribute status_type
    #   <p>This value is currently "read replication."</p>
    #
    #   @return [String]
    #
    # @!attribute normal
    #   <p>Boolean value that is true if the instance is operating normally, or false if the instance
    #         is in an error state.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute status
    #   <p>Status of the DB instance. For a StatusType of read replica, the values can be
    #         replicating, error, stopped, or terminated.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>Details of the error if there is an error for the instance. If the instance is not in an
    #         error state, this value is blank.</p>
    #
    #   @return [String]
    #
    DBInstanceStatusInfo = ::Struct.new(
      :status_type,
      :normal,
      :status,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.normal ||= false
      end

    end

    # <p>Contains the details of an Amazon Neptune DB parameter group.</p>
    #          <p>This data type is used as a response element in the <a>DescribeDBParameterGroups</a> action.</p>
    #
    # @!attribute db_parameter_group_name
    #   <p>Provides the name of the DB parameter group.</p>
    #
    #   @return [String]
    #
    # @!attribute db_parameter_group_family
    #   <p>Provides the name of the DB parameter group family that this DB parameter group is
    #         compatible with.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Provides the customer-specified description for this DB parameter group.</p>
    #
    #   @return [String]
    #
    # @!attribute db_parameter_group_arn
    #   <p>The Amazon Resource Name (ARN) for the DB parameter group.</p>
    #
    #   @return [String]
    #
    DBParameterGroup = ::Struct.new(
      :db_parameter_group_name,
      :db_parameter_group_family,
      :description,
      :db_parameter_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A DB parameter group with the same name exists.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    DBParameterGroupAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             <i>DBParameterGroupName</i> does not refer to an
    #       existing DB parameter group.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    DBParameterGroupNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Request would result in user exceeding the allowed number of DB parameter groups.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    DBParameterGroupQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The status of the DB parameter group.</p>
    #          <p>This data type is used as a response element in the following actions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>CreateDBInstance</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DeleteDBInstance</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ModifyDBInstance</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>RebootDBInstance</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @!attribute db_parameter_group_name
    #   <p>The name of the DP parameter group.</p>
    #
    #   @return [String]
    #
    # @!attribute parameter_apply_status
    #   <p>The status of parameter updates.</p>
    #
    #   @return [String]
    #
    DBParameterGroupStatus = ::Struct.new(
      :db_parameter_group_name,
      :parameter_apply_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies membership in a designated DB security group.</p>
    #
    # @!attribute db_security_group_name
    #   <p>The name of the DB security group.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the DB security group.</p>
    #
    #   @return [String]
    #
    DBSecurityGroupMembership = ::Struct.new(
      :db_security_group_name,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             <i>DBSecurityGroupName</i> does not refer
    #       to an existing DB security group.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    DBSecurityGroupNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             <i>DBSnapshotIdentifier</i> is already used by an existing snapshot.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    DBSnapshotAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             <i>DBSnapshotIdentifier</i> does not refer to an existing DB snapshot.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    DBSnapshotNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the details of an Amazon Neptune DB subnet group.</p>
    #          <p>This data type is used as a response element in the <a>DescribeDBSubnetGroups</a> action.</p>
    #
    # @!attribute db_subnet_group_name
    #   <p>The name of the DB subnet group.</p>
    #
    #   @return [String]
    #
    # @!attribute db_subnet_group_description
    #   <p>Provides the description of the DB subnet group.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>Provides the VpcId of the DB subnet group.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_group_status
    #   <p>Provides the status of the DB subnet group.</p>
    #
    #   @return [String]
    #
    # @!attribute subnets
    #   <p> Contains a list of <a>Subnet</a> elements.</p>
    #
    #   @return [Array<Subnet>]
    #
    # @!attribute db_subnet_group_arn
    #   <p>The Amazon Resource Name (ARN) for the DB subnet group.</p>
    #
    #   @return [String]
    #
    DBSubnetGroup = ::Struct.new(
      :db_subnet_group_name,
      :db_subnet_group_description,
      :vpc_id,
      :subnet_group_status,
      :subnets,
      :db_subnet_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             <i>DBSubnetGroupName</i> is already used by an existing DB subnet group.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    DBSubnetGroupAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Subnets in the DB subnet group should cover at least two Availability
    #       Zones unless there is only one Availability Zone.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    DBSubnetGroupDoesNotCoverEnoughAZs = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             <i>DBSubnetGroupName</i> does not refer to an
    #       existing DB subnet group.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    DBSubnetGroupNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Request would result in user exceeding the allowed number of DB subnet groups.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    DBSubnetGroupQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Request would result in user exceeding the allowed number of subnets in a DB subnet groups.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    DBSubnetQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The DB upgrade failed because a resource the DB depends on could not be modified.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    DBUpgradeDependencyFailureFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster_endpoint_identifier
    #   <p>The identifier associated with the custom endpoint. This parameter is stored as a lowercase string.</p>
    #
    #   @return [String]
    #
    DeleteDBClusterEndpointInput = ::Struct.new(
      :db_cluster_endpoint_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This data type represents the information you need to connect to an Amazon Neptune DB cluster.
    #       This data type is used as a response element in the following actions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>CreateDBClusterEndpoint</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DescribeDBClusterEndpoints</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ModifyDBClusterEndpoint</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DeleteDBClusterEndpoint</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>For the data structure that represents Amazon RDS DB instance endpoints,
    #       see <code>Endpoint</code>.</p>
    #
    # @!attribute db_cluster_endpoint_identifier
    #   <p>The identifier associated with the endpoint. This parameter is stored as a lowercase string.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_identifier
    #   <p>The DB cluster identifier of the DB cluster associated with the endpoint. This parameter is
    #         stored as a lowercase string.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_endpoint_resource_identifier
    #   <p>A unique system-generated identifier for an endpoint. It remains the same for the whole life of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint
    #   <p>The DNS address of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the endpoint. One of: <code>creating</code>, <code>available</code>, <code>deleting</code>, <code>inactive</code>, <code>modifying</code>. The <code>inactive</code> state applies to an endpoint that cannot be used for a certain kind of cluster,
    #         such as a <code>writer</code> endpoint for a read-only secondary cluster in a global database.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_type
    #   <p>The type of the endpoint. One of: <code>READER</code>, <code>WRITER</code>, <code>CUSTOM</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_endpoint_type
    #   <p>The type associated with a custom endpoint. One of: <code>READER</code>,
    #         <code>WRITER</code>, <code>ANY</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute static_members
    #   <p>List of DB instance identifiers that are part of the custom endpoint group.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute excluded_members
    #   <p>List of DB instance identifiers that aren't part of the custom endpoint group.
    #         All other eligible instances are reachable through the custom endpoint.
    #         Only relevant if the list of static members is empty.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute db_cluster_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) for the endpoint.</p>
    #
    #   @return [String]
    #
    DeleteDBClusterEndpointOutput = ::Struct.new(
      :db_cluster_endpoint_identifier,
      :db_cluster_identifier,
      :db_cluster_endpoint_resource_identifier,
      :endpoint,
      :status,
      :endpoint_type,
      :custom_endpoint_type,
      :static_members,
      :excluded_members,
      :db_cluster_endpoint_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster_identifier
    #   <p>The DB cluster identifier for the DB cluster to be deleted. This parameter isn't
    #         case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match an existing DBClusterIdentifier.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute skip_final_snapshot
    #   <p> Determines whether a final DB cluster snapshot is created before the DB cluster is
    #         deleted. If <code>true</code> is specified, no DB cluster snapshot is created. If
    #         <code>false</code> is specified, a DB cluster snapshot is created before the DB cluster is
    #         deleted.</p>
    #            <note>
    #               <p>You must specify a <code>FinalDBSnapshotIdentifier</code> parameter if
    #           <code>SkipFinalSnapshot</code> is <code>false</code>.</p>
    #            </note>
    #            <p>Default: <code>false</code>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute final_db_snapshot_identifier
    #   <p> The DB cluster snapshot identifier of the new DB cluster snapshot created when
    #         <code>SkipFinalSnapshot</code> is set to <code>false</code>.</p>
    #            <note>
    #               <p> Specifying this parameter and also setting the <code>SkipFinalShapshot</code> parameter
    #           to true results in an error.</p>
    #            </note>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be 1 to 255 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    DeleteDBClusterInput = ::Struct.new(
      :db_cluster_identifier,
      :skip_final_snapshot,
      :final_db_snapshot_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.skip_final_snapshot ||= false
      end

    end

    # @!attribute db_cluster
    #   <p>Contains the details of an Amazon Neptune DB cluster.</p>
    #            <p>This data type is used as a response element in the <a>DescribeDBClusters</a> action.</p>
    #
    #   @return [DBCluster]
    #
    DeleteDBClusterOutput = ::Struct.new(
      :db_cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be the name of an existing DB cluster parameter group.</p>
    #               </li>
    #               <li>
    #                  <p>You can't delete a default DB cluster parameter group.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot be associated with any DB clusters.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    DeleteDBClusterParameterGroupInput = ::Struct.new(
      :db_cluster_parameter_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDBClusterParameterGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster_snapshot_identifier
    #   <p>The identifier of the DB cluster snapshot to delete.</p>
    #            <p>Constraints: Must be the name of an existing DB cluster snapshot in the
    #         <code>available</code> state.</p>
    #
    #   @return [String]
    #
    DeleteDBClusterSnapshotInput = ::Struct.new(
      :db_cluster_snapshot_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster_snapshot
    #   <p>Contains the details for an Amazon Neptune DB cluster snapshot</p>
    #            <p>This data type is used as a response element in the <a>DescribeDBClusterSnapshots</a> action.</p>
    #
    #   @return [DBClusterSnapshot]
    #
    DeleteDBClusterSnapshotOutput = ::Struct.new(
      :db_cluster_snapshot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_instance_identifier
    #   <p>The DB instance identifier for the DB instance to be deleted. This parameter isn't
    #         case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the name of an existing DB instance.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute skip_final_snapshot
    #   <p> Determines whether a final DB snapshot is created before the DB instance is deleted. If
    #         <code>true</code> is specified, no DBSnapshot is created. If <code>false</code> is specified,
    #         a DB snapshot is created before the DB instance is deleted.</p>
    #            <p>Note that when a DB instance is in a failure state and has a status of 'failed',
    #         'incompatible-restore', or 'incompatible-network', it can only be deleted when the
    #         SkipFinalSnapshot parameter is set to "true".</p>
    #            <p>Specify <code>true</code> when deleting a Read Replica.</p>
    #            <note>
    #               <p>The FinalDBSnapshotIdentifier parameter must be specified if SkipFinalSnapshot is
    #           <code>false</code>.</p>
    #            </note>
    #            <p>Default: <code>false</code>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute final_db_snapshot_identifier
    #   <p> The DBSnapshotIdentifier of the new DBSnapshot created when SkipFinalSnapshot is set to
    #         <code>false</code>.</p>
    #            <note>
    #               <p>Specifying this parameter and also setting the SkipFinalShapshot parameter to true
    #           results in an error.</p>
    #            </note>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be 1 to 255 letters or numbers.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #               <li>
    #                  <p>Cannot be specified when deleting a Read Replica.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    DeleteDBInstanceInput = ::Struct.new(
      :db_instance_identifier,
      :skip_final_snapshot,
      :final_db_snapshot_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.skip_final_snapshot ||= false
      end

    end

    # @!attribute db_instance
    #   <p>Contains the details of an Amazon Neptune DB instance.</p>
    #            <p>This data type is used as a response element in the <a>DescribeDBInstances</a> action.</p>
    #
    #   @return [DBInstance]
    #
    DeleteDBInstanceOutput = ::Struct.new(
      :db_instance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_parameter_group_name
    #   <p>The name of the DB parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be the name of an existing DB parameter group</p>
    #               </li>
    #               <li>
    #                  <p>You can't delete a default DB parameter group</p>
    #               </li>
    #               <li>
    #                  <p>Cannot be associated with any DB instances</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    DeleteDBParameterGroupInput = ::Struct.new(
      :db_parameter_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDBParameterGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_subnet_group_name
    #   <p>The name of the database subnet group to delete.</p>
    #            <note>
    #               <p>You can't delete the default subnet group.</p>
    #            </note>
    #            <p>Constraints:</p>
    #            <p>Constraints: Must match the name of an existing DBSubnetGroup. Must not be default.</p>
    #            <p>Example: <code>mySubnetgroup</code>
    #            </p>
    #
    #   @return [String]
    #
    DeleteDBSubnetGroupInput = ::Struct.new(
      :db_subnet_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDBSubnetGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute subscription_name
    #   <p>The name of the event notification subscription you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteEventSubscriptionInput = ::Struct.new(
      :subscription_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_subscription
    #   <p>Contains the results of a successful invocation of the <a>DescribeEventSubscriptions</a> action.</p>
    #
    #   @return [EventSubscription]
    #
    DeleteEventSubscriptionOutput = ::Struct.new(
      :event_subscription,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_cluster_identifier
    #   <p>The cluster identifier of the global database cluster being deleted.</p>
    #
    #   @return [String]
    #
    DeleteGlobalClusterInput = ::Struct.new(
      :global_cluster_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_cluster
    #   <p>Contains the details of an Amazon Neptune global database.</p>
    #            <p>This data type is used as a response element for the
    #         <a>CreateGlobalCluster</a>,
    #         <a>DescribeGlobalClusters</a>,
    #         <a>ModifyGlobalCluster</a>,
    #         <a>DeleteGlobalCluster</a>,
    #         <a>FailoverGlobalCluster</a>, and
    #         <a>RemoveFromGlobalCluster</a> actions.</p>
    #
    #   @return [GlobalCluster]
    #
    DeleteGlobalClusterOutput = ::Struct.new(
      :global_cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster_identifier
    #   <p>The DB cluster identifier of the DB cluster associated with the endpoint. This parameter is
    #         stored as a lowercase string.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_endpoint_identifier
    #   <p>The identifier of the endpoint to describe. This parameter is stored as a lowercase string.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>A set of name-value pairs that define which endpoints to include in the output.
    #         The filters are specified as name-value pairs, in the format
    #         <code>Name=<i>endpoint_type</i>,Values=<i>endpoint_type1</i>,<i>endpoint_type2</i>,...</code>.
    #         <code>Name</code> can be one of: <code>db-cluster-endpoint-type</code>, <code>db-cluster-endpoint-custom-type</code>, <code>db-cluster-endpoint-id</code>, <code>db-cluster-endpoint-status</code>.
    #         <code>Values</code> for the <code> db-cluster-endpoint-type</code> filter can be one or more of: <code>reader</code>, <code>writer</code>, <code>custom</code>.
    #         <code>Values</code> for the <code>db-cluster-endpoint-custom-type</code> filter can be one or more of: <code>reader</code>, <code>any</code>.
    #         <code>Values</code> for the <code>db-cluster-endpoint-status</code> filter can be one or more of: <code>available</code>, <code>creating</code>, <code>deleting</code>, <code>inactive</code>, <code>modifying</code>.
    #       </p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response.
    #         If more records exist than the specified <code>MaxRecords</code> value,
    #         a pagination token called a marker is included in the response so you can retrieve the remaining results.
    #       </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous
    #         <code>DescribeDBClusterEndpoints</code> request.
    #         If this parameter is specified, the response includes
    #         only records beyond the marker,
    #         up to the value specified by <code>MaxRecords</code>.
    #       </p>
    #
    #   @return [String]
    #
    DescribeDBClusterEndpointsInput = ::Struct.new(
      :db_cluster_identifier,
      :db_cluster_endpoint_identifier,
      :filters,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute marker
    #   <p> An optional pagination token provided by a previous
    #         <code>DescribeDBClusterEndpoints</code> request.
    #         If this parameter is specified, the response includes
    #         only records beyond the marker,
    #         up to the value specified by <code>MaxRecords</code>.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_endpoints
    #   <p>Contains the details of the endpoints associated with the cluster
    #         and matching any filter conditions.</p>
    #
    #   @return [Array<DBClusterEndpoint>]
    #
    DescribeDBClusterEndpointsOutput = ::Struct.new(
      :marker,
      :db_cluster_endpoints,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of a specific DB cluster parameter group to return details for.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>This parameter is not currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous
    #         <code>DescribeDBClusterParameterGroups</code> request. If this parameter is specified, the
    #         response includes only records beyond the marker, up to the value specified by
    #         <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    DescribeDBClusterParameterGroupsInput = ::Struct.new(
      :db_cluster_parameter_group_name,
      :filters,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute marker
    #   <p> An optional pagination token provided by a previous
    #         <code>DescribeDBClusterParameterGroups</code> request. If this parameter is specified, the
    #         response includes only records beyond the marker, up to the value specified by
    #         <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_parameter_groups
    #   <p>A list of DB cluster parameter groups.</p>
    #
    #   @return [Array<DBClusterParameterGroup>]
    #
    DescribeDBClusterParameterGroupsOutput = ::Struct.new(
      :marker,
      :db_cluster_parameter_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of a specific DB cluster parameter group to return parameter details for.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute source
    #   <p> A value that indicates to return only parameters for a specific source. Parameter sources
    #         can be <code>engine</code>, <code>service</code>, or <code>customer</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>This parameter is not currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous
    #         <code>DescribeDBClusterParameters</code> request. If this parameter is specified, the response
    #         includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.
    #      </p>
    #
    #   @return [String]
    #
    DescribeDBClusterParametersInput = ::Struct.new(
      :db_cluster_parameter_group_name,
      :source,
      :filters,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute parameters
    #   <p>Provides a list of parameters for the DB cluster parameter group.</p>
    #
    #   @return [Array<Parameter>]
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous DescribeDBClusterParameters request.
    #         If this parameter is specified, the response includes only records beyond the marker, up to
    #         the value specified by <code>MaxRecords</code> .</p>
    #
    #   @return [String]
    #
    DescribeDBClusterParametersOutput = ::Struct.new(
      :parameters,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster_snapshot_identifier
    #   <p>The identifier for the DB cluster snapshot to describe the attributes for.</p>
    #
    #   @return [String]
    #
    DescribeDBClusterSnapshotAttributesInput = ::Struct.new(
      :db_cluster_snapshot_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster_snapshot_attributes_result
    #   <p>Contains the results of a successful call to the <a>DescribeDBClusterSnapshotAttributes</a> API action.</p>
    #            <p>Manual DB cluster snapshot attributes are used to authorize other Amazon accounts to copy or
    #         restore a manual DB cluster snapshot. For more information, see the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>
    #
    #   @return [DBClusterSnapshotAttributesResult]
    #
    DescribeDBClusterSnapshotAttributesOutput = ::Struct.new(
      :db_cluster_snapshot_attributes_result,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster_identifier
    #   <p>The ID of the DB cluster to retrieve the list of DB cluster snapshots for. This parameter
    #         can't be used in conjunction with the <code>DBClusterSnapshotIdentifier</code> parameter. This
    #         parameter is not case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match the identifier of an existing DBCluster.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_snapshot_identifier
    #   <p>A specific DB cluster snapshot identifier to describe. This parameter can't be used in
    #         conjunction with the <code>DBClusterIdentifier</code> parameter. This value is stored as a
    #         lowercase string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match the identifier of an existing DBClusterSnapshot.</p>
    #               </li>
    #               <li>
    #                  <p>If this identifier is for an automated snapshot, the <code>SnapshotType</code>
    #             parameter must also be specified.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute snapshot_type
    #   <p>The type of DB cluster snapshots to be returned. You can specify one of the following
    #         values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>automated</code> - Return all DB cluster snapshots that have been automatically
    #             taken by Amazon Neptune for my Amazon account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>manual</code> - Return all DB cluster snapshots that have been taken by my Amazon
    #             account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>shared</code> - Return all manual DB cluster snapshots that have been shared to
    #             my Amazon account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>public</code> - Return all DB cluster snapshots that have been marked as
    #             public.</p>
    #               </li>
    #            </ul>
    #            <p>If you don't specify a <code>SnapshotType</code> value, then both automated and manual DB
    #         cluster snapshots are returned. You can include shared DB cluster snapshots with these results
    #         by setting the <code>IncludeShared</code> parameter to <code>true</code>. You can include
    #         public DB cluster snapshots with these results by setting the <code>IncludePublic</code>
    #         parameter to <code>true</code>.</p>
    #            <p>The <code>IncludeShared</code> and <code>IncludePublic</code> parameters don't apply for
    #         <code>SnapshotType</code> values of <code>manual</code> or <code>automated</code>. The
    #         <code>IncludePublic</code> parameter doesn't apply when <code>SnapshotType</code> is set to
    #         <code>shared</code>. The <code>IncludeShared</code> parameter doesn't apply when
    #         <code>SnapshotType</code> is set to <code>public</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>This parameter is not currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous
    #         <code>DescribeDBClusterSnapshots</code> request. If this parameter is specified, the response
    #         includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.
    #      </p>
    #
    #   @return [String]
    #
    # @!attribute include_shared
    #   <p>True to include shared manual DB cluster snapshots from other Amazon accounts that this Amazon
    #         account has been given permission to copy or restore, and otherwise false. The default is
    #         <code>false</code>.</p>
    #            <p>You can give an Amazon account permission to restore a manual DB cluster snapshot from
    #         another Amazon account by the <a>ModifyDBClusterSnapshotAttribute</a> API
    #         action.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute include_public
    #   <p>True to include manual DB cluster snapshots that are public and can be copied or restored
    #         by any Amazon account, and otherwise false. The default is <code>false</code>. The default is
    #         false.</p>
    #            <p>You can share a manual DB cluster snapshot as public by using the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>
    #
    #   @return [Boolean]
    #
    DescribeDBClusterSnapshotsInput = ::Struct.new(
      :db_cluster_identifier,
      :db_cluster_snapshot_identifier,
      :snapshot_type,
      :filters,
      :max_records,
      :marker,
      :include_shared,
      :include_public,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.include_shared ||= false
        self.include_public ||= false
      end

    end

    # @!attribute marker
    #   <p> An optional pagination token provided by a previous <a>DescribeDBClusterSnapshots</a> request. If this parameter is specified, the response
    #         includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.
    #      </p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_snapshots
    #   <p>Provides a list of DB cluster snapshots for the user.</p>
    #
    #   @return [Array<DBClusterSnapshot>]
    #
    DescribeDBClusterSnapshotsOutput = ::Struct.new(
      :marker,
      :db_cluster_snapshots,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster_identifier
    #   <p>The user-supplied DB cluster identifier. If this parameter is specified, information from
    #         only the specific DB cluster is returned. This parameter isn't case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match an existing DBClusterIdentifier.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>A filter that specifies one or more DB clusters to describe.</p>
    #            <p>Supported filters:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB cluster Amazon
    #           Resource Names (ARNs). The results list will only include information about the DB
    #           clusters identified by these ARNs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>engine</code> - Accepts an engine name (such as <code>neptune</code>),
    #           and restricts the results list to DB clusters created by that engine.</p>
    #               </li>
    #            </ul>
    #
    #            <p>For example, to invoke this API from the Amazon CLI and filter so that only
    #         Neptune DB clusters are returned, you could use the following command:</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous <a>DescribeDBClusters</a>
    #         request. If this parameter is specified, the response includes only records beyond the marker,
    #         up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    DescribeDBClustersInput = ::Struct.new(
      :db_cluster_identifier,
      :filters,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute marker
    #   <p>A pagination token that can be used in a subsequent DescribeDBClusters request.</p>
    #
    #   @return [String]
    #
    # @!attribute db_clusters
    #   <p>Contains a list of DB clusters for the user.</p>
    #
    #   @return [Array<DBCluster>]
    #
    DescribeDBClustersOutput = ::Struct.new(
      :marker,
      :db_clusters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute engine
    #   <p>The database engine to return.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The database engine version to return.</p>
    #            <p>Example: <code>5.1.49</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute db_parameter_group_family
    #   <p>The name of a specific DB parameter group family to return details for.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match an existing DBParameterGroupFamily.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Not currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more than the
    #         <code>MaxRecords</code> value is available, a pagination token called a marker is included in
    #         the response so that the following results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #         specified, the response includes only records beyond the marker, up to the value specified by
    #         <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute default_only
    #   <p>Indicates that only the default version of the specified engine or engine and major
    #         version combination is returned.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute list_supported_character_sets
    #   <p>If this parameter is specified and the requested engine supports the
    #         <code>CharacterSetName</code> parameter for <code>CreateDBInstance</code>, the response
    #         includes a list of supported character sets for each engine version.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute list_supported_timezones
    #   <p>If this parameter is specified and the requested engine supports the <code>TimeZone</code>
    #         parameter for <code>CreateDBInstance</code>, the response includes a list of supported time
    #         zones for each engine version.</p>
    #
    #   @return [Boolean]
    #
    DescribeDBEngineVersionsInput = ::Struct.new(
      :engine,
      :engine_version,
      :db_parameter_group_family,
      :filters,
      :max_records,
      :marker,
      :default_only,
      :list_supported_character_sets,
      :list_supported_timezones,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.default_only ||= false
      end

    end

    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #         specified, the response includes only records beyond the marker, up to the value specified by
    #         <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute db_engine_versions
    #   <p> A list of <code>DBEngineVersion</code> elements.</p>
    #
    #   @return [Array<DBEngineVersion>]
    #
    DescribeDBEngineVersionsOutput = ::Struct.new(
      :marker,
      :db_engine_versions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_instance_identifier
    #   <p>The user-supplied instance identifier. If this parameter is specified, information from
    #         only the specific DB instance is returned. This parameter isn't case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match the identifier of an existing DBInstance.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>A filter that specifies one or more DB instances to describe.</p>
    #            <p>Supported filters:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB cluster Amazon
    #           Resource Names (ARNs). The results list will only include information about the DB
    #           instances associated with the DB clusters identified by these ARNs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>engine</code> - Accepts an engine name (such as <code>neptune</code>),
    #           and restricts the results list to DB instances created by that engine.</p>
    #               </li>
    #            </ul>
    #
    #            <p>For example, to invoke this API from the Amazon CLI and filter so that only
    #         Neptune DB instances are returned, you could use the following command:</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous <code>DescribeDBInstances</code>
    #         request. If this parameter is specified, the response includes only records beyond the marker,
    #         up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    DescribeDBInstancesInput = ::Struct.new(
      :db_instance_identifier,
      :filters,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #         specified, the response includes only records beyond the marker, up to the value specified by
    #         <code>MaxRecords</code> .</p>
    #
    #   @return [String]
    #
    # @!attribute db_instances
    #   <p> A list of <a>DBInstance</a> instances.</p>
    #
    #   @return [Array<DBInstance>]
    #
    DescribeDBInstancesOutput = ::Struct.new(
      :marker,
      :db_instances,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_parameter_group_name
    #   <p>The name of a specific DB parameter group to return details for.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>This parameter is not currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous
    #         <code>DescribeDBParameterGroups</code> request. If this parameter is specified, the response
    #         includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    DescribeDBParameterGroupsInput = ::Struct.new(
      :db_parameter_group_name,
      :filters,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is
    #         specified, the response includes only records beyond the marker, up to the value specified by
    #         <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute db_parameter_groups
    #   <p>A list of <a>DBParameterGroup</a> instances.</p>
    #
    #   @return [Array<DBParameterGroup>]
    #
    DescribeDBParameterGroupsOutput = ::Struct.new(
      :marker,
      :db_parameter_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_parameter_group_name
    #   <p>The name of a specific DB parameter group to return details for.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match the name of an existing DBParameterGroup.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute source
    #   <p>The parameter types to return.</p>
    #            <p>Default: All parameter types returned</p>
    #            <p>Valid Values: <code>user | system | engine-default</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>This parameter is not currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous <code>DescribeDBParameters</code>
    #         request. If this parameter is specified, the response includes only records beyond the marker,
    #         up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    DescribeDBParametersInput = ::Struct.new(
      :db_parameter_group_name,
      :source,
      :filters,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute parameters
    #   <p>A list of <a>Parameter</a> values.</p>
    #
    #   @return [Array<Parameter>]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is
    #         specified, the response includes only records beyond the marker, up to the value specified by
    #         <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    DescribeDBParametersOutput = ::Struct.new(
      :parameters,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_subnet_group_name
    #   <p>The name of the DB subnet group to return details for.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>This parameter is not currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous DescribeDBSubnetGroups request. If
    #         this parameter is specified, the response includes only records beyond the marker, up to the
    #         value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    DescribeDBSubnetGroupsInput = ::Struct.new(
      :db_subnet_group_name,
      :filters,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #         specified, the response includes only records beyond the marker, up to the value specified by
    #         <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute db_subnet_groups
    #   <p> A list of <a>DBSubnetGroup</a> instances.</p>
    #
    #   @return [Array<DBSubnetGroup>]
    #
    DescribeDBSubnetGroupsOutput = ::Struct.new(
      :marker,
      :db_subnet_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_parameter_group_family
    #   <p>The name of the DB cluster parameter group family to return engine parameter information
    #         for.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>This parameter is not currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous
    #         <code>DescribeEngineDefaultClusterParameters</code> request. If this parameter is specified,
    #         the response includes only records beyond the marker, up to the value specified by
    #         <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    DescribeEngineDefaultClusterParametersInput = ::Struct.new(
      :db_parameter_group_family,
      :filters,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute engine_defaults
    #   <p> Contains the result of a successful invocation of the <a>DescribeEngineDefaultParameters</a> action.</p>
    #
    #   @return [EngineDefaults]
    #
    DescribeEngineDefaultClusterParametersOutput = ::Struct.new(
      :engine_defaults,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_parameter_group_family
    #   <p>The name of the DB parameter group family.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Not currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous
    #         <code>DescribeEngineDefaultParameters</code> request. If this parameter is specified, the
    #         response includes only records beyond the marker, up to the value specified by
    #         <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    DescribeEngineDefaultParametersInput = ::Struct.new(
      :db_parameter_group_family,
      :filters,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute engine_defaults
    #   <p> Contains the result of a successful invocation of the <a>DescribeEngineDefaultParameters</a> action.</p>
    #
    #   @return [EngineDefaults]
    #
    DescribeEngineDefaultParametersOutput = ::Struct.new(
      :engine_defaults,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_type
    #   <p>The type of source that is generating the events.</p>
    #            <p>Valid values: db-instance | db-parameter-group | db-security-group | db-snapshot</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>This parameter is not currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    DescribeEventCategoriesInput = ::Struct.new(
      :source_type,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_categories_map_list
    #   <p>A list of EventCategoriesMap data types.</p>
    #
    #   @return [Array<EventCategoriesMap>]
    #
    DescribeEventCategoriesOutput = ::Struct.new(
      :event_categories_map_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute subscription_name
    #   <p>The name of the event notification subscription you want to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>This parameter is not currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous DescribeOrderableDBInstanceOptions
    #         request. If this parameter is specified, the response includes only records beyond the marker,
    #         up to the value specified by <code>MaxRecords</code> .</p>
    #
    #   @return [String]
    #
    DescribeEventSubscriptionsInput = ::Struct.new(
      :subscription_name,
      :filters,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute marker
    #   <p> An optional pagination token provided by a previous DescribeOrderableDBInstanceOptions
    #         request. If this parameter is specified, the response includes only records beyond the marker,
    #         up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute event_subscriptions_list
    #   <p>A list of EventSubscriptions data types.</p>
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

    # @!attribute source_identifier
    #   <p>The identifier of the event source for which events are returned. If not specified, then
    #         all sources are included in the response.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If SourceIdentifier is supplied, SourceType must also be provided.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is <code>DBInstance</code>, then a
    #             <code>DBInstanceIdentifier</code> must be supplied.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is <code>DBSecurityGroup</code>, a <code>DBSecurityGroupName</code>
    #             must be supplied.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is <code>DBParameterGroup</code>, a
    #             <code>DBParameterGroupName</code> must be supplied.</p>
    #               </li>
    #               <li>
    #                  <p>If the source type is <code>DBSnapshot</code>, a <code>DBSnapshotIdentifier</code>
    #             must be supplied.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute source_type
    #   <p>The event source to retrieve events for. If no value is specified, all events are
    #         returned.</p>
    #
    #   Enum, one of: ["db-instance", "db-parameter-group", "db-security-group", "db-snapshot", "db-cluster", "db-cluster-snapshot"]
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p> The beginning of the time interval to retrieve events for, specified in ISO 8601 format.
    #         For more information about ISO 8601, go to the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia page.</a>
    #            </p>
    #            <p>Example: 2009-07-08T18:00Z</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p> The end of the time interval for which to retrieve events, specified in ISO 8601 format.
    #         For more information about ISO 8601, go to the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia page.</a>
    #            </p>
    #            <p>Example: 2009-07-08T18:00Z</p>
    #
    #   @return [Time]
    #
    # @!attribute duration
    #   <p>The number of minutes to retrieve events for.</p>
    #            <p>Default: 60</p>
    #
    #   @return [Integer]
    #
    # @!attribute event_categories
    #   <p>A list of event categories that trigger notifications for a event notification
    #         subscription.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute filters
    #   <p>This parameter is not currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous DescribeEvents request. If this
    #         parameter is specified, the response includes only records beyond the marker, up to the value
    #         specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    DescribeEventsInput = ::Struct.new(
      :source_identifier,
      :source_type,
      :start_time,
      :end_time,
      :duration,
      :event_categories,
      :filters,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute marker
    #   <p> An optional pagination token provided by a previous Events request. If this parameter is
    #         specified, the response includes only records beyond the marker, up to the value specified by
    #         <code>MaxRecords</code> .</p>
    #
    #   @return [String]
    #
    # @!attribute events
    #   <p> A list of <a>Event</a> instances.</p>
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

    # @!attribute global_cluster_identifier
    #   <p>The user-supplied DB cluster identifier. If this parameter is specified,
    #         only information about the specified DB cluster is returned. This parameter
    #         is not case-sensitive.</p>
    #
    #            <p>Constraints: If supplied, must match an existing DB cluster identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records
    #         exist than the specified <code>MaxRecords</code> value, a pagination marker token
    #         is included in the response that you can use to retrieve the remaining results.</p>
    #            <p>Default: <code>100</code>
    #            </p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>(<i>Optional</i>) A pagination token returned by a previous
    #         call to <code>DescribeGlobalClusters</code>. If this parameter is specified,
    #         the response will only include records beyond the marker, up to the number
    #         specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    DescribeGlobalClustersInput = ::Struct.new(
      :global_cluster_identifier,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute marker
    #   <p>A pagination token. If this parameter is returned in the response,
    #         more records are available, which can be retrieved by one or more additional
    #         calls to <code>DescribeGlobalClusters</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute global_clusters
    #   <p>The list of global clusters and instances returned by this request.</p>
    #
    #   @return [Array<GlobalCluster>]
    #
    DescribeGlobalClustersOutput = ::Struct.new(
      :marker,
      :global_clusters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute engine
    #   <p>The name of the engine to retrieve DB instance options for.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The engine version filter value. Specify this parameter to show only the available
    #         offerings matching the specified engine version.</p>
    #
    #   @return [String]
    #
    # @!attribute db_instance_class
    #   <p>The DB instance class filter value. Specify this parameter to show only the available
    #         offerings matching the specified DB instance class.</p>
    #
    #   @return [String]
    #
    # @!attribute license_model
    #   <p>The license model filter value. Specify this parameter to show only the available
    #         offerings matching the specified license model.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc
    #   <p>The VPC filter value. Specify this parameter to show only the available VPC or non-VPC
    #         offerings.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute filters
    #   <p>This parameter is not currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous DescribeOrderableDBInstanceOptions
    #         request. If this parameter is specified, the response includes only records beyond the marker,
    #         up to the value specified by <code>MaxRecords</code> .</p>
    #
    #   @return [String]
    #
    DescribeOrderableDBInstanceOptionsInput = ::Struct.new(
      :engine,
      :engine_version,
      :db_instance_class,
      :license_model,
      :vpc,
      :filters,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute orderable_db_instance_options
    #   <p>An <a>OrderableDBInstanceOption</a> structure
    #         containing information about orderable options for the DB instance.</p>
    #
    #   @return [Array<OrderableDBInstanceOption>]
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous OrderableDBInstanceOptions request.
    #         If this parameter is specified, the response includes only records beyond the marker, up to
    #         the value specified by <code>MaxRecords</code> .</p>
    #
    #   @return [String]
    #
    DescribeOrderableDBInstanceOptionsOutput = ::Struct.new(
      :orderable_db_instance_options,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_identifier
    #   <p>The ARN of a resource to return pending maintenance actions for.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>A filter that specifies one or more resources to return pending maintenance actions
    #         for.</p>
    #            <p>Supported filters:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB cluster Amazon
    #             Resource Names (ARNs). The results list will only include pending maintenance actions for
    #             the DB clusters identified by these ARNs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>db-instance-id</code> - Accepts DB instance identifiers and DB instance ARNs.
    #             The results list will only include pending maintenance actions for the DB instances
    #             identified by these ARNs.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous
    #         <code>DescribePendingMaintenanceActions</code> request. If this parameter is specified, the
    #         response includes only records beyond the marker, up to a number of records specified by
    #         <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than the
    #         specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
    #         response so that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    DescribePendingMaintenanceActionsInput = ::Struct.new(
      :resource_identifier,
      :filters,
      :marker,
      :max_records,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pending_maintenance_actions
    #   <p>A list of the pending maintenance actions for the resource.</p>
    #
    #   @return [Array<ResourcePendingMaintenanceActions>]
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous
    #         <code>DescribePendingMaintenanceActions</code> request. If this parameter is specified, the
    #         response includes only records beyond the marker, up to a number of records specified by
    #         <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    DescribePendingMaintenanceActionsOutput = ::Struct.new(
      :pending_maintenance_actions,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_instance_identifier
    #   <p>The customer identifier or the ARN of your DB instance.</p>
    #
    #   @return [String]
    #
    DescribeValidDBInstanceModificationsInput = ::Struct.new(
      :db_instance_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute valid_db_instance_modifications_message
    #   <p>Information about valid modifications that you can make to your DB instance. Contains the
    #         result of a successful call to the <a>DescribeValidDBInstanceModifications</a>
    #         action. You can use this information when you call <a>ModifyDBInstance</a>.
    #      </p>
    #
    #   @return [ValidDBInstanceModificationsMessage]
    #
    DescribeValidDBInstanceModificationsOutput = ::Struct.new(
      :valid_db_instance_modifications_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An Active Directory Domain membership record associated with a DB instance.</p>
    #
    # @!attribute domain
    #   <p>The identifier of the Active Directory Domain.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the DB instance's Active Directory Domain membership, such as joined,
    #         pending-join, failed etc).</p>
    #
    #   @return [String]
    #
    # @!attribute fqdn
    #   <p>The fully qualified domain name of the Active Directory Domain.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_role_name
    #   <p>The name of the IAM role to be used when making API calls to the Directory Service.</p>
    #
    #   @return [String]
    #
    DomainMembership = ::Struct.new(
      :domain,
      :status,
      :fqdn,
      :iam_role_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             <i>Domain</i> does not refer to an existing Active Directory Domain.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    DomainNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A range of double values.</p>
    #
    # @!attribute from
    #   <p>The minimum value in the range.</p>
    #
    #   @return [Float]
    #
    # @!attribute to
    #   <p>The maximum value in the range.</p>
    #
    #   @return [Float]
    #
    DoubleRange = ::Struct.new(
      :from,
      :to,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.from ||= 0
        self.to ||= 0
      end

    end

    # <p>Specifies a connection endpoint.</p>
    #
    #          <p>For the data structure that represents Amazon Neptune DB cluster endpoints,
    #       see <code>DBClusterEndpoint</code>.</p>
    #
    # @!attribute address
    #   <p>Specifies the DNS address of the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>Specifies the port that the database engine is listening on.</p>
    #
    #   @return [Integer]
    #
    # @!attribute hosted_zone_id
    #   <p>Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.</p>
    #
    #   @return [String]
    #
    Endpoint = ::Struct.new(
      :address,
      :port,
      :hosted_zone_id,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.port ||= 0
      end

    end

    # <p> Contains the result of a successful invocation of the <a>DescribeEngineDefaultParameters</a> action.</p>
    #
    # @!attribute db_parameter_group_family
    #   <p>Specifies the name of the DB parameter group family that the engine default parameters
    #         apply to.</p>
    #
    #   @return [String]
    #
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous EngineDefaults request. If this
    #         parameter is specified, the response includes only records beyond the marker, up to the value
    #         specified by <code>MaxRecords</code> .</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>Contains a list of engine default parameters.</p>
    #
    #   @return [Array<Parameter>]
    #
    EngineDefaults = ::Struct.new(
      :db_parameter_group_family,
      :marker,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> This data type is used as a response element in the <a>DescribeEvents</a>
    #       action.</p>
    #
    # @!attribute source_identifier
    #   <p>Provides the identifier for the source of the event.</p>
    #
    #   @return [String]
    #
    # @!attribute source_type
    #   <p>Specifies the source type for this event.</p>
    #
    #   Enum, one of: ["db-instance", "db-parameter-group", "db-security-group", "db-snapshot", "db-cluster", "db-cluster-snapshot"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>Provides the text of this event.</p>
    #
    #   @return [String]
    #
    # @!attribute event_categories
    #   <p>Specifies the category for the event.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute date
    #   <p>Specifies the date and time of the event.</p>
    #
    #   @return [Time]
    #
    # @!attribute source_arn
    #   <p>The Amazon Resource Name (ARN) for the event.</p>
    #
    #   @return [String]
    #
    Event = ::Struct.new(
      :source_identifier,
      :source_type,
      :message,
      :event_categories,
      :date,
      :source_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the results of a successful invocation of the <a>DescribeEventCategories</a> action.</p>
    #
    # @!attribute source_type
    #   <p>The source type that the returned categories belong to</p>
    #
    #   @return [String]
    #
    # @!attribute event_categories
    #   <p>The event categories for the specified source type</p>
    #
    #   @return [Array<String>]
    #
    EventCategoriesMap = ::Struct.new(
      :source_type,
      :event_categories,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the results of a successful invocation of the <a>DescribeEventSubscriptions</a> action.</p>
    #
    # @!attribute customer_aws_id
    #   <p>The Amazon customer account associated with the event notification subscription.</p>
    #
    #   @return [String]
    #
    # @!attribute cust_subscription_id
    #   <p>The event notification subscription Id.</p>
    #
    #   @return [String]
    #
    # @!attribute sns_topic_arn
    #   <p>The topic ARN of the event notification subscription.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the event notification subscription.</p>
    #            <p>Constraints:</p>
    #            <p>Can be one of the following: creating | modifying | deleting | active | no-permission |
    #         topic-not-exist</p>
    #            <p>The status "no-permission" indicates that Neptune no longer has permission to post to the
    #         SNS topic. The status "topic-not-exist" indicates that the topic was deleted after the
    #         subscription was created.</p>
    #
    #   @return [String]
    #
    # @!attribute subscription_creation_time
    #   <p>The time the event notification subscription was created.</p>
    #
    #   @return [String]
    #
    # @!attribute source_type
    #   <p>The source type for the event notification subscription.</p>
    #
    #   @return [String]
    #
    # @!attribute source_ids_list
    #   <p>A list of source IDs for the event notification subscription.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute event_categories_list
    #   <p>A list of event categories for the event notification subscription.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute enabled
    #   <p>A Boolean value indicating if the subscription is enabled. True indicates the subscription
    #         is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute event_subscription_arn
    #   <p>The Amazon Resource Name (ARN) for the event subscription.</p>
    #
    #   @return [String]
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
      :enabled,
      :event_subscription_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.enabled ||= false
      end

    end

    # <p>You have exceeded the number of events you can subscribe to.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    EventSubscriptionQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster_identifier
    #   <p>A DB cluster identifier to force a failover for. This parameter is not
    #         case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing DBCluster.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute target_db_instance_identifier
    #   <p>The name of the instance to promote to the primary instance.</p>
    #            <p>You must specify the instance identifier for an Read Replica in the DB cluster. For
    #         example, <code>mydbcluster-replica1</code>.</p>
    #
    #   @return [String]
    #
    FailoverDBClusterInput = ::Struct.new(
      :db_cluster_identifier,
      :target_db_instance_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster
    #   <p>Contains the details of an Amazon Neptune DB cluster.</p>
    #            <p>This data type is used as a response element in the <a>DescribeDBClusters</a> action.</p>
    #
    #   @return [DBCluster]
    #
    FailoverDBClusterOutput = ::Struct.new(
      :db_cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_cluster_identifier
    #   <p>Identifier of the Neptune global database that should be failed over.
    #         The identifier is the unique key assigned by the user when the Neptune
    #         global database was created. In other words, it's the name of the global
    #         database that you want to fail over.</p>
    #            <p>Constraints: Must match the identifier of an existing Neptune global
    #         database.</p>
    #
    #   @return [String]
    #
    # @!attribute target_db_cluster_identifier
    #   <p>The Amazon Resource Name (ARN) of the secondary Neptune DB cluster
    #         that you want to promote to primary for the global database.</p>
    #
    #   @return [String]
    #
    FailoverGlobalClusterInput = ::Struct.new(
      :global_cluster_identifier,
      :target_db_cluster_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_cluster
    #   <p>Contains the details of an Amazon Neptune global database.</p>
    #            <p>This data type is used as a response element for the
    #         <a>CreateGlobalCluster</a>,
    #         <a>DescribeGlobalClusters</a>,
    #         <a>ModifyGlobalCluster</a>,
    #         <a>DeleteGlobalCluster</a>,
    #         <a>FailoverGlobalCluster</a>, and
    #         <a>RemoveFromGlobalCluster</a> actions.</p>
    #
    #   @return [GlobalCluster]
    #
    FailoverGlobalClusterOutput = ::Struct.new(
      :global_cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This type is not currently supported.</p>
    #
    # @!attribute name
    #   <p>This parameter is not currently supported.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>This parameter is not currently supported.</p>
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

    # <p>Contains the details of an Amazon Neptune global database.</p>
    #          <p>This data type is used as a response element for the
    #       <a>CreateGlobalCluster</a>,
    #       <a>DescribeGlobalClusters</a>,
    #       <a>ModifyGlobalCluster</a>,
    #       <a>DeleteGlobalCluster</a>,
    #       <a>FailoverGlobalCluster</a>, and
    #       <a>RemoveFromGlobalCluster</a> actions.</p>
    #
    # @!attribute global_cluster_identifier
    #   <p>Contains a user-supplied global database cluster identifier. This identifier
    #         is the unique key that identifies a global database.</p>
    #
    #   @return [String]
    #
    # @!attribute global_cluster_resource_id
    #   <p>An immutable identifier for the global database that is unique within in all
    #         regions. This identifier is found in CloudTrail log entries whenever the KMS
    #         key for the DB cluster is accessed.</p>
    #
    #   @return [String]
    #
    # @!attribute global_cluster_arn
    #   <p>The Amazon Resource Name (ARN) for the global database.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Specifies the current state of this global database.</p>
    #
    #   @return [String]
    #
    # @!attribute engine
    #   <p>The Neptune database engine used by the global database
    #         (<code>"neptune"</code>).</p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The Neptune engine version used by the global database.</p>
    #
    #   @return [String]
    #
    # @!attribute storage_encrypted
    #   <p>The storage encryption setting for the global database.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute deletion_protection
    #   <p>The deletion protection setting for the global database.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute global_cluster_members
    #   <p>A list of cluster ARNs and instance ARNs for all the DB clusters
    #           that are part of the global database.</p>
    #
    #   @return [Array<GlobalClusterMember>]
    #
    GlobalCluster = ::Struct.new(
      :global_cluster_identifier,
      :global_cluster_resource_id,
      :global_cluster_arn,
      :status,
      :engine,
      :engine_version,
      :storage_encrypted,
      :deletion_protection,
      :global_cluster_members,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The <code>GlobalClusterIdentifier</code> already exists. Choose a new global database identifier (unique name) to create a new global database cluster.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    GlobalClusterAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #     A data structure with information about any primary and
    #     secondary clusters associated with an Neptune global database.
    #   </p>
    #
    # @!attribute db_cluster_arn
    #   <p>
    #       The Amazon Resource Name (ARN) for each Neptune cluster.
    #     </p>
    #
    #   @return [String]
    #
    # @!attribute readers
    #   <p>
    #       The Amazon Resource Name (ARN) for each read-only secondary cluster
    #       associated with the Neptune global database.
    #     </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute is_writer
    #   <p>
    #       Specifies whether the Neptune cluster is the primary cluster
    #       (that is, has read-write capability) for the Neptune global
    #       database with which it is associated.
    #     </p>
    #
    #   @return [Boolean]
    #
    GlobalClusterMember = ::Struct.new(
      :db_cluster_arn,
      :readers,
      :is_writer,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_writer ||= false
      end

    end

    # <p>The <code>GlobalClusterIdentifier</code> doesn't refer to an existing global database cluster. </p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    GlobalClusterNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of global database clusters for this account is already at the maximum allowed.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    GlobalClusterQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Request would result in user exceeding the allowed number of DB instances.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    InstanceQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The DB cluster does not have enough capacity for the current operation.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    InsufficientDBClusterCapacityFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specified DB instance class is not available in the specified Availability Zone.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    InsufficientDBInstanceCapacityFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There is insufficient storage available for the current action. You may
    #        be able to resolve this error by updating your subnet group to use different
    #        Availability Zones that have more storage available.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    InsufficientStorageClusterCapacityFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested operation cannot be performed on the endpoint while the endpoint is in this state.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    InvalidDBClusterEndpointStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The supplied value is not a valid DB cluster snapshot state.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    InvalidDBClusterSnapshotStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The DB cluster is not in a valid state.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    InvalidDBClusterStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified DB instance is not in the <i>available</i> state.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    InvalidDBInstanceStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The DB parameter group is in use or is in an invalid state. If you are attempting to
    #       delete the parameter group, you cannot delete it when the parameter group is in this state.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    InvalidDBParameterGroupStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The state of the DB security group does not allow deletion.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    InvalidDBSecurityGroupStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The state of the DB snapshot does not allow deletion.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    InvalidDBSnapshotStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The DB subnet group cannot be deleted because it is in use.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    InvalidDBSubnetGroupStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The DB subnet is not in the <i>available</i> state.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    InvalidDBSubnetStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The event subscription is in an invalid state.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    InvalidEventSubscriptionStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The global cluster is in an invalid state and can't perform the requested operation. </p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    InvalidGlobalClusterStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Cannot restore from vpc backup to non-vpc DB instance.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    InvalidRestoreFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested subnet is invalid, or multiple subnets were requested that are
    #       not all in a common VPC.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    InvalidSubnet = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>DB subnet group does not cover all Availability Zones after it is created
    #       because users' change.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    InvalidVPCNetworkStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Error accessing KMS key.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    KMSKeyNotAccessibleFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_name
    #   <p>The Amazon Neptune resource with tags to be listed. This value is an Amazon Resource Name
    #         (ARN). For information about creating an ARN, see <a href="https://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html tagging.ARN.Constructing"> Constructing an
    #         Amazon Resource Name (ARN)</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>This parameter is not currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_name,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tag_list
    #   <p>List of tags returned by the ListTagsForResource operation.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tag_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster_endpoint_identifier
    #   <p>The identifier of the endpoint to modify. This parameter is stored as a lowercase string.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_type
    #   <p>The type of the endpoint. One of: <code>READER</code>, <code>WRITER</code>, <code>ANY</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute static_members
    #   <p>List of DB instance identifiers that are part of the custom endpoint group.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute excluded_members
    #   <p>List of DB instance identifiers that aren't part of the custom endpoint group.
    #         All other eligible instances are reachable through the custom endpoint.
    #         Only relevant if the list of static members is empty.</p>
    #
    #   @return [Array<String>]
    #
    ModifyDBClusterEndpointInput = ::Struct.new(
      :db_cluster_endpoint_identifier,
      :endpoint_type,
      :static_members,
      :excluded_members,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This data type represents the information you need to connect to an Amazon Neptune DB cluster.
    #       This data type is used as a response element in the following actions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>CreateDBClusterEndpoint</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DescribeDBClusterEndpoints</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ModifyDBClusterEndpoint</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DeleteDBClusterEndpoint</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>For the data structure that represents Amazon RDS DB instance endpoints,
    #       see <code>Endpoint</code>.</p>
    #
    # @!attribute db_cluster_endpoint_identifier
    #   <p>The identifier associated with the endpoint. This parameter is stored as a lowercase string.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_identifier
    #   <p>The DB cluster identifier of the DB cluster associated with the endpoint. This parameter is
    #         stored as a lowercase string.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_endpoint_resource_identifier
    #   <p>A unique system-generated identifier for an endpoint. It remains the same for the whole life of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint
    #   <p>The DNS address of the endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the endpoint. One of: <code>creating</code>, <code>available</code>, <code>deleting</code>, <code>inactive</code>, <code>modifying</code>. The <code>inactive</code> state applies to an endpoint that cannot be used for a certain kind of cluster,
    #         such as a <code>writer</code> endpoint for a read-only secondary cluster in a global database.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_type
    #   <p>The type of the endpoint. One of: <code>READER</code>, <code>WRITER</code>, <code>CUSTOM</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_endpoint_type
    #   <p>The type associated with a custom endpoint. One of: <code>READER</code>,
    #         <code>WRITER</code>, <code>ANY</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute static_members
    #   <p>List of DB instance identifiers that are part of the custom endpoint group.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute excluded_members
    #   <p>List of DB instance identifiers that aren't part of the custom endpoint group.
    #         All other eligible instances are reachable through the custom endpoint.
    #         Only relevant if the list of static members is empty.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute db_cluster_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) for the endpoint.</p>
    #
    #   @return [String]
    #
    ModifyDBClusterEndpointOutput = ::Struct.new(
      :db_cluster_endpoint_identifier,
      :db_cluster_identifier,
      :db_cluster_endpoint_resource_identifier,
      :endpoint,
      :status,
      :endpoint_type,
      :custom_endpoint_type,
      :static_members,
      :excluded_members,
      :db_cluster_endpoint_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster_identifier
    #   <p>The DB cluster identifier for the cluster being modified. This parameter is not
    #         case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing DBCluster.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute new_db_cluster_identifier
    #   <p>The new DB cluster identifier for the DB cluster when renaming a DB cluster. This value is
    #         stored as a lowercase string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster2</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute apply_immediately
    #   <p>A value that specifies whether the modifications in this request and any pending
    #         modifications are asynchronously applied as soon as possible, regardless of the
    #         <code>PreferredMaintenanceWindow</code> setting for the DB cluster. If this parameter is set
    #         to <code>false</code>, changes to the DB cluster are applied during the next maintenance
    #         window.</p>
    #            <p>The <code>ApplyImmediately</code> parameter only affects <code>NewDBClusterIdentifier</code>
    #         values. If you set the <code>ApplyImmediately</code> parameter value to false, then changes to
    #         <code>NewDBClusterIdentifier</code> values are applied during the next maintenance window.
    #         All other changes are applied immediately, regardless of the value of the
    #         <code>ApplyImmediately</code> parameter.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute backup_retention_period
    #   <p>The number of days for which automated backups are retained. You must specify a minimum
    #         value of 1.</p>
    #            <p>Default: 1</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be a value from 1 to 35</p>
    #               </li>
    #            </ul>
    #
    #   @return [Integer]
    #
    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group to use for the DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_security_group_ids
    #   <p>A list of VPC security groups that the DB cluster will belong to.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute port
    #   <p>The port number on which the DB cluster accepts connections.</p>
    #            <p>Constraints: Value must be <code>1150-65535</code>
    #            </p>
    #            <p>Default: The same port as the original DB cluster.</p>
    #
    #   @return [Integer]
    #
    # @!attribute master_user_password
    #   <p>Not supported by Neptune.</p>
    #
    #   @return [String]
    #
    # @!attribute option_group_name
    #   <p>
    #               <i>Not supported by Neptune.</i>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute preferred_backup_window
    #   <p>The daily time range during which automated backups are created if automated backups are
    #         enabled, using the <code>BackupRetentionPeriod</code> parameter.</p>
    #            <p>The default is a 30-minute window selected at random from an 8-hour block of time for each
    #         Amazon Region.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Must be in Universal Coordinated Time (UTC).</p>
    #               </li>
    #               <li>
    #                  <p>Must not conflict with the preferred maintenance window.</p>
    #               </li>
    #               <li>
    #                  <p>Must be at least 30 minutes.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute preferred_maintenance_window
    #   <p>The weekly time range during which system maintenance can occur, in Universal Coordinated
    #         Time (UTC).</p>
    #            <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #            </p>
    #            <p>The default is a 30-minute window selected at random from an 8-hour block of time for each
    #         Amazon Region, occurring on a random day of the
    #         week.</p>
    #            <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
    #            <p>Constraints: Minimum 30-minute window.</p>
    #
    #   @return [String]
    #
    # @!attribute enable_iam_database_authentication
    #   <p>True to enable mapping of Amazon Identity and Access Management (IAM) accounts to database
    #         accounts, and otherwise false.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute cloudwatch_logs_export_configuration
    #   <p>The configuration setting for the log types to be enabled for export to CloudWatch Logs
    #         for a specific DB cluster.</p>
    #
    #   @return [CloudwatchLogsExportConfiguration]
    #
    # @!attribute engine_version
    #   <p>The version number of the database engine to which you want to upgrade. Changing this
    #         parameter results in an outage. The change is applied during the next maintenance window
    #         unless the <code>ApplyImmediately</code> parameter is set to true.</p>
    #            <p>For a list of valid engine versions, see <a href="https://docs.aws.amazon.com/neptune/latest/userguide/engine-releases.html">Engine Releases for Amazon
    #         Neptune</a>, or call <a href="https://docs.aws.amazon.com/neptune/latest/userguide/api-other-apis.html DescribeDBEngineVersions">DescribeDBEngineVersions</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute allow_major_version_upgrade
    #   <p>A value that indicates whether upgrades between different major versions are allowed.</p>
    #            <p>Constraints: You must set the allow-major-version-upgrade flag when providing an
    #         <code>EngineVersion</code> parameter that uses a different major version than the DB cluster's current
    #         version.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute db_instance_parameter_group_name
    #   <p>The name of the DB parameter group to apply to all instances of the DB cluster. </p>
    #            <note>
    #               <p>When you apply a parameter group using <code>DBInstanceParameterGroupName</code>,
    #         parameter changes aren't applied during the next maintenance window but instead are
    #         applied immediately.</p>
    #            </note>
    #            <p>Default: The existing name setting</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>The DB parameter group must be in the same DB parameter group family as
    #           the target DB cluster version.</p>
    #               </li>
    #               <li>
    #                  <p>The <code>DBInstanceParameterGroupName</code> parameter is only valid in combination with
    #           the <code>AllowMajorVersionUpgrade</code> parameter.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute deletion_protection
    #   <p>A value that indicates whether the DB cluster has deletion protection enabled.
    #         The database can't be deleted when deletion protection is enabled. By default,
    #         deletion protection is disabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute copy_tags_to_snapshot
    #   <p>
    #               <i>If set to <code>true</code>, tags are copied to any snapshot of
    #         the DB cluster that is created.</i>
    #            </p>
    #
    #   @return [Boolean]
    #
    ModifyDBClusterInput = ::Struct.new(
      :db_cluster_identifier,
      :new_db_cluster_identifier,
      :apply_immediately,
      :backup_retention_period,
      :db_cluster_parameter_group_name,
      :vpc_security_group_ids,
      :port,
      :master_user_password,
      :option_group_name,
      :preferred_backup_window,
      :preferred_maintenance_window,
      :enable_iam_database_authentication,
      :cloudwatch_logs_export_configuration,
      :engine_version,
      :allow_major_version_upgrade,
      :db_instance_parameter_group_name,
      :deletion_protection,
      :copy_tags_to_snapshot,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.apply_immediately ||= false
        self.allow_major_version_upgrade ||= false
      end

    end

    # @!attribute db_cluster
    #   <p>Contains the details of an Amazon Neptune DB cluster.</p>
    #            <p>This data type is used as a response element in the <a>DescribeDBClusters</a> action.</p>
    #
    #   @return [DBCluster]
    #
    ModifyDBClusterOutput = ::Struct.new(
      :db_cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group to modify.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>A list of parameters in the DB cluster parameter group to modify.</p>
    #
    #   @return [Array<Parameter>]
    #
    ModifyDBClusterParameterGroupInput = ::Struct.new(
      :db_cluster_parameter_group_name,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be 1 to 255 letters or numbers.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>This value is stored as a lowercase string.</p>
    #            </note>
    #
    #   @return [String]
    #
    ModifyDBClusterParameterGroupOutput = ::Struct.new(
      :db_cluster_parameter_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster_snapshot_identifier
    #   <p>The identifier for the DB cluster snapshot to modify the attributes for.</p>
    #
    #   @return [String]
    #
    # @!attribute attribute_name
    #   <p>The name of the DB cluster snapshot attribute to modify.</p>
    #            <p>To manage authorization for other Amazon accounts to copy or restore a manual DB cluster
    #         snapshot, set this value to <code>restore</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute values_to_add
    #   <p>A list of DB cluster snapshot attributes to add to the attribute specified by
    #         <code>AttributeName</code>.</p>
    #            <p>To authorize other Amazon accounts to copy or restore a manual DB cluster snapshot, set this
    #         list to include one or more Amazon account IDs, or <code>all</code> to make the manual DB cluster
    #         snapshot restorable by any Amazon account. Do not add the <code>all</code> value for any manual
    #         DB cluster snapshots that contain private information that you don't want available to all Amazon
    #         accounts.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute values_to_remove
    #   <p>A list of DB cluster snapshot attributes to remove from the attribute specified by
    #         <code>AttributeName</code>.</p>
    #            <p>To remove authorization for other Amazon accounts to copy or restore a manual DB cluster
    #         snapshot, set this list to include one or more Amazon account identifiers, or <code>all</code> to
    #         remove authorization for any Amazon account to copy or restore the DB cluster snapshot. If you
    #         specify <code>all</code>, an Amazon account whose account ID is explicitly added to the
    #         <code>restore</code> attribute can still copy or restore a manual DB cluster snapshot.</p>
    #
    #   @return [Array<String>]
    #
    ModifyDBClusterSnapshotAttributeInput = ::Struct.new(
      :db_cluster_snapshot_identifier,
      :attribute_name,
      :values_to_add,
      :values_to_remove,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster_snapshot_attributes_result
    #   <p>Contains the results of a successful call to the <a>DescribeDBClusterSnapshotAttributes</a> API action.</p>
    #            <p>Manual DB cluster snapshot attributes are used to authorize other Amazon accounts to copy or
    #         restore a manual DB cluster snapshot. For more information, see the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>
    #
    #   @return [DBClusterSnapshotAttributesResult]
    #
    ModifyDBClusterSnapshotAttributeOutput = ::Struct.new(
      :db_cluster_snapshot_attributes_result,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_instance_identifier
    #   <p>The DB instance identifier. This value is stored as a lowercase string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing DBInstance.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute allocated_storage
    #   <p>Not supported by Neptune.</p>
    #
    #   @return [Integer]
    #
    # @!attribute db_instance_class
    #   <p>The new compute and memory capacity of the DB instance, for example,
    #         <code>db.m4.large</code>. Not all DB instance classes are available in all Amazon
    #         Regions.</p>
    #            <p>If you modify the DB instance class, an outage occurs during the change. The change is
    #         applied during the next maintenance window, unless <code>ApplyImmediately</code> is specified
    #         as <code>true</code> for this request.</p>
    #            <p>Default: Uses existing setting</p>
    #
    #   @return [String]
    #
    # @!attribute db_subnet_group_name
    #   <p>The new DB subnet group for the DB instance. You can use this parameter to move your DB
    #         instance to a different VPC.</p>
    #            <p>Changing the subnet group causes an outage during the change. The change is applied during
    #         the next maintenance window, unless you specify <code>true</code> for the
    #         <code>ApplyImmediately</code> parameter.</p>
    #            <p>Constraints: If supplied, must match the name of an existing DBSubnetGroup.</p>
    #            <p>Example: <code>mySubnetGroup</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute db_security_groups
    #   <p>A list of DB security groups to authorize on this DB instance. Changing this setting
    #         doesn't result in an outage and the change is asynchronously applied as soon as
    #         possible.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match existing DBSecurityGroups.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute vpc_security_group_ids
    #   <p>A list of EC2 VPC security groups to authorize on this DB instance. This change is
    #         asynchronously applied as soon as possible.</p>
    #            <p>Not applicable. The associated list of EC2 VPC security groups is managed by the DB
    #         cluster. For more information, see <a>ModifyDBCluster</a>.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match existing VpcSecurityGroupIds.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute apply_immediately
    #   <p>Specifies whether the modifications in this request and any pending modifications are
    #         asynchronously applied as soon as possible, regardless of the
    #         <code>PreferredMaintenanceWindow</code> setting for the DB instance.</p>
    #            <p> If this parameter is set to <code>false</code>, changes to the DB instance are applied
    #         during the next maintenance window. Some parameter changes can cause an outage and are applied
    #         on the next call to <a>RebootDBInstance</a>, or the next
    #         failure reboot.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute master_user_password
    #   <p>Not supported by Neptune.</p>
    #
    #   @return [String]
    #
    # @!attribute db_parameter_group_name
    #   <p>The name of the DB parameter group to apply to the DB instance. Changing this setting
    #         doesn't result in an outage. The parameter group name itself is changed immediately, but the
    #         actual parameter changes are not applied until you reboot the instance without failover. The
    #         db instance will NOT be rebooted automatically and the parameter changes will NOT be applied
    #         during the next maintenance window.</p>
    #            <p>Default: Uses existing setting</p>
    #            <p>Constraints: The DB parameter group must be in the same DB parameter group family as this
    #         DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_retention_period
    #   <p>Not applicable. The retention period for automated backups is managed by the DB cluster.
    #         For more information, see <a>ModifyDBCluster</a>.</p>
    #            <p>Default: Uses existing setting</p>
    #
    #   @return [Integer]
    #
    # @!attribute preferred_backup_window
    #   <p> The daily time range during which automated backups are created if automated backups are
    #         enabled.</p>
    #            <p>Not applicable. The daily time range for creating automated backups is managed by the DB
    #         cluster. For more information, see <a>ModifyDBCluster</a>.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be in the format hh24:mi-hh24:mi</p>
    #               </li>
    #               <li>
    #                  <p>Must be in Universal Time Coordinated (UTC)</p>
    #               </li>
    #               <li>
    #                  <p>Must not conflict with the preferred maintenance window</p>
    #               </li>
    #               <li>
    #                  <p>Must be at least 30 minutes</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute preferred_maintenance_window
    #   <p>The weekly time range (in UTC) during which system maintenance can occur, which might
    #         result in an outage. Changing this parameter doesn't result in an outage, except in the
    #         following situation, and the change is asynchronously applied as soon as possible. If there
    #         are pending actions that cause a reboot, and the maintenance window is changed to include the
    #         current time, then changing this parameter will cause a reboot of the DB instance. If moving
    #         this window to the current time, there must be at least 30 minutes between the current time
    #         and end of the window to ensure pending changes are applied.</p>
    #            <p>Default: Uses existing setting</p>
    #            <p>Format: ddd:hh24:mi-ddd:hh24:mi</p>
    #            <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p>
    #            <p>Constraints: Must be at least 30 minutes</p>
    #
    #   @return [String]
    #
    # @!attribute multi_az
    #   <p>Specifies if the DB instance is a Multi-AZ deployment. Changing this parameter doesn't
    #         result in an outage and the change is applied during the next maintenance window unless the
    #         <code>ApplyImmediately</code> parameter is set to <code>true</code> for this request.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute engine_version
    #   <p>The version number of the database engine to upgrade to. Currently, setting this
    #         parameter has no effect. To upgrade your database engine to the most recent release,
    #         use the <a>ApplyPendingMaintenanceAction</a> API.</p>
    #
    #   @return [String]
    #
    # @!attribute allow_major_version_upgrade
    #   <p>Indicates that major version upgrades are allowed. Changing this parameter doesn't result
    #         in an outage and the change is asynchronously applied as soon as possible.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute auto_minor_version_upgrade
    #   <p> Indicates that minor version upgrades are applied automatically to the DB instance during
    #         the maintenance window. Changing this parameter doesn't result in an outage except in the
    #         following case and the change is asynchronously applied as soon as possible. An outage will
    #         result if this parameter is set to <code>true</code> during the maintenance window, and a
    #         newer minor version is available, and Neptune has enabled auto patching for that engine
    #         version.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute license_model
    #   <p>Not supported by Neptune.</p>
    #
    #   @return [String]
    #
    # @!attribute iops
    #   <p>The new Provisioned IOPS (I/O operations per second) value for the instance.</p>
    #            <p>Changing this setting doesn't result in an outage and the change is applied during the
    #         next maintenance window unless the <code>ApplyImmediately</code> parameter is set to
    #         <code>true</code> for this request.</p>
    #            <p>Default: Uses existing setting</p>
    #
    #   @return [Integer]
    #
    # @!attribute option_group_name
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute new_db_instance_identifier
    #   <p> The new DB instance identifier for the DB instance when renaming a DB instance. When you
    #         change the DB instance identifier, an instance reboot will occur immediately if you set
    #         <code>Apply Immediately</code> to true, or will occur during the next maintenance window if
    #         <code>Apply Immediately</code> to false. This value is stored as a lowercase string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>mydbinstance</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute storage_type
    #   <p>Not supported.</p>
    #
    #   @return [String]
    #
    # @!attribute tde_credential_arn
    #   <p>The ARN from the key store with which to associate the instance for TDE encryption.</p>
    #
    #   @return [String]
    #
    # @!attribute tde_credential_password
    #   <p>The password for the given ARN from the key store in order to access the device.</p>
    #
    #   @return [String]
    #
    # @!attribute ca_certificate_identifier
    #   <p>Indicates the certificate that needs to be associated with the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute domain
    #   <p>Not supported.</p>
    #
    #   @return [String]
    #
    # @!attribute copy_tags_to_snapshot
    #   <p>True to copy all tags from the DB instance to snapshots of the DB instance, and otherwise
    #         false. The default is false.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute monitoring_interval
    #   <p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected
    #         for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default
    #         is 0.</p>
    #            <p>If <code>MonitoringRoleArn</code> is specified, then you must also set
    #         <code>MonitoringInterval</code> to a value other than 0.</p>
    #            <p>Valid Values: <code>0, 1, 5, 10, 15, 30, 60</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute db_port_number
    #   <p>The port number on which the database accepts connections.</p>
    #            <p>The value of the <code>DBPortNumber</code> parameter must not match any of the port values
    #         specified for options in the option group for the DB instance.</p>
    #            <p>Your database will restart when you change the <code>DBPortNumber</code> value regardless
    #         of the value of the <code>ApplyImmediately</code> parameter.</p>
    #            <p> Default: <code>8182</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute publicly_accessible
    #   <p>This flag should no longer be used.</p>
    #
    #   @deprecated
    #
    #   @return [Boolean]
    #
    # @!attribute monitoring_role_arn
    #   <p>The ARN for the IAM role that permits Neptune to send enhanced monitoring metrics to
    #         Amazon CloudWatch Logs. For example, <code>arn:aws:iam:123456789012:role/emaccess</code>.</p>
    #            <p>If <code>MonitoringInterval</code> is set to a value other than 0, then you must supply a
    #         <code>MonitoringRoleArn</code> value.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_iam_role_name
    #   <p>Not supported</p>
    #
    #   @return [String]
    #
    # @!attribute promotion_tier
    #   <p>A value that specifies the order in which a Read Replica is promoted to the primary
    #         instance after a failure of the existing primary instance.</p>
    #            <p>Default: 1</p>
    #            <p>Valid Values: 0 - 15</p>
    #
    #   @return [Integer]
    #
    # @!attribute enable_iam_database_authentication
    #   <p>True to enable mapping of Amazon Identity and Access Management (IAM) accounts to database
    #         accounts, and otherwise false.</p>
    #            <p>You can enable IAM database authentication for the following database engines</p>
    #            <p>Not applicable. Mapping Amazon IAM accounts to database accounts is managed by the DB
    #         cluster. For more information, see <a>ModifyDBCluster</a>.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_performance_insights
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute performance_insights_kms_key_id
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute cloudwatch_logs_export_configuration
    #   <p>The configuration setting for the log types to be enabled for export to CloudWatch Logs
    #         for a specific DB instance or DB cluster.</p>
    #
    #   @return [CloudwatchLogsExportConfiguration]
    #
    # @!attribute deletion_protection
    #   <p>A value that indicates whether the DB instance has deletion protection enabled.
    #         The database can't be deleted when deletion protection is enabled. By default,
    #         deletion protection is disabled.  See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/manage-console-instances-delete.html">Deleting
    #         a DB Instance</a>.</p>
    #
    #   @return [Boolean]
    #
    ModifyDBInstanceInput = ::Struct.new(
      :db_instance_identifier,
      :allocated_storage,
      :db_instance_class,
      :db_subnet_group_name,
      :db_security_groups,
      :vpc_security_group_ids,
      :apply_immediately,
      :master_user_password,
      :db_parameter_group_name,
      :backup_retention_period,
      :preferred_backup_window,
      :preferred_maintenance_window,
      :multi_az,
      :engine_version,
      :allow_major_version_upgrade,
      :auto_minor_version_upgrade,
      :license_model,
      :iops,
      :option_group_name,
      :new_db_instance_identifier,
      :storage_type,
      :tde_credential_arn,
      :tde_credential_password,
      :ca_certificate_identifier,
      :domain,
      :copy_tags_to_snapshot,
      :monitoring_interval,
      :db_port_number,
      :publicly_accessible,
      :monitoring_role_arn,
      :domain_iam_role_name,
      :promotion_tier,
      :enable_iam_database_authentication,
      :enable_performance_insights,
      :performance_insights_kms_key_id,
      :cloudwatch_logs_export_configuration,
      :deletion_protection,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.apply_immediately ||= false
        self.allow_major_version_upgrade ||= false
      end

    end

    # @!attribute db_instance
    #   <p>Contains the details of an Amazon Neptune DB instance.</p>
    #            <p>This data type is used as a response element in the <a>DescribeDBInstances</a> action.</p>
    #
    #   @return [DBInstance]
    #
    ModifyDBInstanceOutput = ::Struct.new(
      :db_instance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_parameter_group_name
    #   <p>The name of the DB parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match the name of an existing DBParameterGroup.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>An array of parameter names, values, and the apply method for the parameter update. At
    #         least one parameter name, value, and apply method must be supplied; subsequent arguments are
    #         optional. A maximum of 20 parameters can be modified in a single request.</p>
    #            <p>Valid Values (for the application method): <code>immediate | pending-reboot</code>
    #            </p>
    #            <note>
    #               <p>You can use the immediate value with dynamic parameters only. You can use the
    #           pending-reboot value for both dynamic and static parameters, and changes are applied when
    #           you reboot the DB instance without failover.</p>
    #            </note>
    #
    #   @return [Array<Parameter>]
    #
    ModifyDBParameterGroupInput = ::Struct.new(
      :db_parameter_group_name,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_parameter_group_name
    #   <p>Provides the name of the DB parameter group.</p>
    #
    #   @return [String]
    #
    ModifyDBParameterGroupOutput = ::Struct.new(
      :db_parameter_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_subnet_group_name
    #   <p>The name for the DB subnet group. This value is stored as a lowercase string. You can't
    #         modify the default subnet group.</p>
    #            <p>Constraints: Must match the name of an existing DBSubnetGroup. Must not be default.</p>
    #            <p>Example: <code>mySubnetgroup</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute db_subnet_group_description
    #   <p>The description for the DB subnet group.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_ids
    #   <p>The EC2 subnet IDs for the DB subnet group.</p>
    #
    #   @return [Array<String>]
    #
    ModifyDBSubnetGroupInput = ::Struct.new(
      :db_subnet_group_name,
      :db_subnet_group_description,
      :subnet_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_subnet_group
    #   <p>Contains the details of an Amazon Neptune DB subnet group.</p>
    #            <p>This data type is used as a response element in the <a>DescribeDBSubnetGroups</a> action.</p>
    #
    #   @return [DBSubnetGroup]
    #
    ModifyDBSubnetGroupOutput = ::Struct.new(
      :db_subnet_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute subscription_name
    #   <p>The name of the event notification subscription.</p>
    #
    #   @return [String]
    #
    # @!attribute sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the SNS topic created for event notification. The ARN is
    #         created by Amazon SNS when you create a topic and subscribe to it.</p>
    #
    #   @return [String]
    #
    # @!attribute source_type
    #   <p>The type of source that is generating the events. For example, if you want to be notified
    #         of events generated by a DB instance, you would set this parameter to db-instance. if this
    #         value is not specified, all events are returned.</p>
    #            <p>Valid values: db-instance | db-parameter-group | db-security-group | db-snapshot</p>
    #
    #   @return [String]
    #
    # @!attribute event_categories
    #   <p> A list of event categories for a SourceType that you want to subscribe to. You can see a
    #         list of the categories for a given SourceType
    #
    #         by using the <b>DescribeEventCategories</b> action.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute enabled
    #   <p> A Boolean value; set to <b>true</b> to activate the
    #         subscription.</p>
    #
    #   @return [Boolean]
    #
    ModifyEventSubscriptionInput = ::Struct.new(
      :subscription_name,
      :sns_topic_arn,
      :source_type,
      :event_categories,
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_subscription
    #   <p>Contains the results of a successful invocation of the <a>DescribeEventSubscriptions</a> action.</p>
    #
    #   @return [EventSubscription]
    #
    ModifyEventSubscriptionOutput = ::Struct.new(
      :event_subscription,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_cluster_identifier
    #   <p>The DB cluster identifier for the global cluster being modified. This parameter
    #         is not case-sensitive.</p>
    #            <p>Constraints: Must match the identifier of an existing global database cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute new_global_cluster_identifier
    #   <p>A new cluster identifier to assign to the global database. This value is
    #         stored as a lowercase string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Can't end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-cluster2</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute deletion_protection
    #   <p>Indicates whether the global database has deletion protection enabled. The
    #         global database cannot be deleted when deletion protection is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute engine_version
    #   <p>The version number of the database engine to which you want to upgrade.
    #         Changing this parameter will result in an outage. The change is applied during
    #         the next maintenance window unless <code>ApplyImmediately</code> is enabled.</p>
    #            <p>To list all of the available Neptune engine versions, use the following command:</p>
    #
    #   @return [String]
    #
    # @!attribute allow_major_version_upgrade
    #   <p>A value that indicates whether major version upgrades are allowed.</p>
    #            <p>Constraints: You must allow major version upgrades if you specify a value
    #         for the <code>EngineVersion</code> parameter that is a different major version
    #         than the DB cluster's current version.</p>
    #            <p>If you upgrade the major version of a global database, the cluster and
    #         DB instance parameter groups are set to the default parameter groups for the
    #         new version, so you will need to apply any custom parameter groups after
    #         completing the upgrade.</p>
    #
    #   @return [Boolean]
    #
    ModifyGlobalClusterInput = ::Struct.new(
      :global_cluster_identifier,
      :new_global_cluster_identifier,
      :deletion_protection,
      :engine_version,
      :allow_major_version_upgrade,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_cluster
    #   <p>Contains the details of an Amazon Neptune global database.</p>
    #            <p>This data type is used as a response element for the
    #         <a>CreateGlobalCluster</a>,
    #         <a>DescribeGlobalClusters</a>,
    #         <a>ModifyGlobalCluster</a>,
    #         <a>DeleteGlobalCluster</a>,
    #         <a>FailoverGlobalCluster</a>, and
    #         <a>RemoveFromGlobalCluster</a> actions.</p>
    #
    #   @return [GlobalCluster]
    #
    ModifyGlobalClusterOutput = ::Struct.new(
      :global_cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Not supported by Neptune.</p>
    #
    # @!attribute option_group_name
    #   <p>Not supported by Neptune.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Not supported by Neptune.</p>
    #
    #   @return [String]
    #
    OptionGroupMembership = ::Struct.new(
      :option_group_name,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The designated option group could not be found.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    OptionGroupNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains a list of available options for a DB instance.</p>
    #          <p> This data type is used as a response element in the <a>DescribeOrderableDBInstanceOptions</a> action.</p>
    #
    # @!attribute engine
    #   <p>The engine type of a DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The engine version of a DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute db_instance_class
    #   <p>The DB instance class for a DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute license_model
    #   <p>The license model for a DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute availability_zones
    #   <p>A list of Availability Zones for a DB instance.</p>
    #
    #   @return [Array<AvailabilityZone>]
    #
    # @!attribute multi_az_capable
    #   <p>Indicates whether a DB instance is Multi-AZ capable.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute read_replica_capable
    #   <p>Indicates whether a DB instance can have a Read Replica.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute vpc
    #   <p>Indicates whether a DB instance is in a VPC.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute supports_storage_encryption
    #   <p>Indicates whether a DB instance supports encrypted storage.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute storage_type
    #   <p>Indicates the storage type for a DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute supports_iops
    #   <p>Indicates whether a DB instance supports provisioned IOPS.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute supports_enhanced_monitoring
    #   <p>Indicates whether a DB instance supports Enhanced Monitoring at intervals from 1 to 60
    #         seconds.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute supports_iam_database_authentication
    #   <p>Indicates whether a DB instance supports IAM database authentication.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute supports_performance_insights
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute min_storage_size
    #   <p>Minimum storage size for a DB instance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_storage_size
    #   <p>Maximum storage size for a DB instance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute min_iops_per_db_instance
    #   <p>Minimum total provisioned IOPS for a DB instance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_iops_per_db_instance
    #   <p>Maximum total provisioned IOPS for a DB instance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute min_iops_per_gib
    #   <p>Minimum provisioned IOPS per GiB for a DB instance.</p>
    #
    #   @return [Float]
    #
    # @!attribute max_iops_per_gib
    #   <p>Maximum provisioned IOPS per GiB for a DB instance.</p>
    #
    #   @return [Float]
    #
    # @!attribute supports_global_databases
    #   <p>A value that indicates whether you can use Neptune global databases with a specific combination of other DB engine attributes.</p>
    #
    #   @return [Boolean]
    #
    OrderableDBInstanceOption = ::Struct.new(
      :engine,
      :engine_version,
      :db_instance_class,
      :license_model,
      :availability_zones,
      :multi_az_capable,
      :read_replica_capable,
      :vpc,
      :supports_storage_encryption,
      :storage_type,
      :supports_iops,
      :supports_enhanced_monitoring,
      :supports_iam_database_authentication,
      :supports_performance_insights,
      :min_storage_size,
      :max_storage_size,
      :min_iops_per_db_instance,
      :max_iops_per_db_instance,
      :min_iops_per_gib,
      :max_iops_per_gib,
      :supports_global_databases,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.multi_az_capable ||= false
        self.read_replica_capable ||= false
        self.vpc ||= false
        self.supports_storage_encryption ||= false
        self.supports_iops ||= false
        self.supports_enhanced_monitoring ||= false
        self.supports_iam_database_authentication ||= false
        self.supports_performance_insights ||= false
        self.supports_global_databases ||= false
      end

    end

    # <p>Specifies a parameter.</p>
    #
    # @!attribute parameter_name
    #   <p>Specifies the name of the parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute parameter_value
    #   <p>Specifies the value of the parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Provides a description of the parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute source
    #   <p>Indicates the source of the parameter value.</p>
    #
    #   @return [String]
    #
    # @!attribute apply_type
    #   <p>Specifies the engine specific parameters type.</p>
    #
    #   @return [String]
    #
    # @!attribute data_type
    #   <p>Specifies the valid data type for the parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute allowed_values
    #   <p>Specifies the valid range of values for the parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute is_modifiable
    #   <p> Indicates whether (<code>true</code>) or not (<code>false</code>) the parameter can be
    #         modified. Some parameters have security or operational implications that prevent them from
    #         being changed.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute minimum_engine_version
    #   <p>The earliest engine version to which the parameter can apply.</p>
    #
    #   @return [String]
    #
    # @!attribute apply_method
    #   <p>Indicates when to apply parameter updates.</p>
    #
    #   Enum, one of: ["immediate", "pending-reboot"]
    #
    #   @return [String]
    #
    Parameter = ::Struct.new(
      :parameter_name,
      :parameter_value,
      :description,
      :source,
      :apply_type,
      :data_type,
      :allowed_values,
      :is_modifiable,
      :minimum_engine_version,
      :apply_method,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_modifiable ||= false
      end

    end

    # <p>A list of the log types whose configuration is still pending. In other
    #       words, these log types are in the process of being activated or deactivated.</p>
    #
    # @!attribute log_types_to_enable
    #   <p>Log types that are in the process of being deactivated. After they are
    #         deactivated, these log types aren't exported to CloudWatch Logs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute log_types_to_disable
    #   <p>Log types that are in the process of being enabled. After they are
    #         enabled, these log types are exported to CloudWatch Logs.</p>
    #
    #   @return [Array<String>]
    #
    PendingCloudwatchLogsExports = ::Struct.new(
      :log_types_to_enable,
      :log_types_to_disable,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about a pending maintenance action for a resource.</p>
    #
    # @!attribute action
    #   <p>The type of pending maintenance action that is available for the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_applied_after_date
    #   <p>The date of the maintenance window when the action is applied. The maintenance action is
    #         applied to the resource during its first maintenance window after this date. If this date is
    #         specified, any <code>next-maintenance</code> opt-in requests are ignored.</p>
    #
    #   @return [Time]
    #
    # @!attribute forced_apply_date
    #   <p>The date when the maintenance action is automatically applied. The maintenance action is
    #         applied to the resource on this date regardless of the maintenance window for the resource. If
    #         this date is specified, any <code>immediate</code> opt-in requests are ignored.</p>
    #
    #   @return [Time]
    #
    # @!attribute opt_in_status
    #   <p>Indicates the type of opt-in request that has been received for the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute current_apply_date
    #   <p>The effective date when the pending maintenance action is applied to the resource. This
    #         date takes into account opt-in requests received from the <a>ApplyPendingMaintenanceAction</a> API, the <code>AutoAppliedAfterDate</code>, and the
    #         <code>ForcedApplyDate</code>. This value is blank if an opt-in request has not been received
    #         and nothing has been specified as <code>AutoAppliedAfterDate</code> or
    #         <code>ForcedApplyDate</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>A description providing more detail about the maintenance action.</p>
    #
    #   @return [String]
    #
    PendingMaintenanceAction = ::Struct.new(
      :action,
      :auto_applied_after_date,
      :forced_apply_date,
      :opt_in_status,
      :current_apply_date,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> This data type is used as a response element in the <a>ModifyDBInstance</a>
    #       action.</p>
    #
    # @!attribute db_instance_class
    #   <p> Contains the new <code>DBInstanceClass</code> for the DB instance that will be applied or
    #         is currently being applied.</p>
    #
    #   @return [String]
    #
    # @!attribute allocated_storage
    #   <p> Contains the new <code>AllocatedStorage</code> size for the DB instance that will be
    #         applied or is currently being applied.</p>
    #
    #   @return [Integer]
    #
    # @!attribute master_user_password
    #   <p>Not supported by Neptune.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>Specifies the pending port for the DB instance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute backup_retention_period
    #   <p>Specifies the pending number of days for which automated backups are retained.</p>
    #
    #   @return [Integer]
    #
    # @!attribute multi_az
    #   <p>Indicates that the Single-AZ DB instance is to change to a Multi-AZ deployment.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute engine_version
    #   <p>Indicates the database engine version.</p>
    #
    #   @return [String]
    #
    # @!attribute license_model
    #   <p>Not supported by Neptune.</p>
    #
    #   @return [String]
    #
    # @!attribute iops
    #   <p>Specifies the new Provisioned IOPS value for the DB instance that will be applied or is
    #         currently being applied.</p>
    #
    #   @return [Integer]
    #
    # @!attribute db_instance_identifier
    #   <p> Contains the new <code>DBInstanceIdentifier</code> for the DB instance that will be
    #         applied or is currently being applied.</p>
    #
    #   @return [String]
    #
    # @!attribute storage_type
    #   <p>Specifies the storage type to be associated with the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute ca_certificate_identifier
    #   <p>Specifies the identifier of the CA certificate for the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute db_subnet_group_name
    #   <p>The new DB subnet group for the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute pending_cloudwatch_logs_exports
    #   <p>This <code>PendingCloudwatchLogsExports</code> structure specifies
    #         pending changes to which CloudWatch logs are enabled and which are disabled.</p>
    #
    #   @return [PendingCloudwatchLogsExports]
    #
    PendingModifiedValues = ::Struct.new(
      :db_instance_class,
      :allocated_storage,
      :master_user_password,
      :port,
      :backup_retention_period,
      :multi_az,
      :engine_version,
      :license_model,
      :iops,
      :db_instance_identifier,
      :storage_type,
      :ca_certificate_identifier,
      :db_subnet_group_name,
      :pending_cloudwatch_logs_exports,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster_identifier
    #   <p>Not supported.</p>
    #
    #   @return [String]
    #
    PromoteReadReplicaDBClusterInput = ::Struct.new(
      :db_cluster_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster
    #   <p>Contains the details of an Amazon Neptune DB cluster.</p>
    #            <p>This data type is used as a response element in the <a>DescribeDBClusters</a> action.</p>
    #
    #   @return [DBCluster]
    #
    PromoteReadReplicaDBClusterOutput = ::Struct.new(
      :db_cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provisioned IOPS not available in the specified Availability Zone.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    ProvisionedIopsNotAvailableInAZFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A range of integer values.</p>
    #
    # @!attribute from
    #   <p>The minimum value in the range.</p>
    #
    #   @return [Integer]
    #
    # @!attribute to
    #   <p>The maximum value in the range.</p>
    #
    #   @return [Integer]
    #
    # @!attribute step
    #   <p>The step value for the range. For example, if you have a range of 5,000 to 10,000, with a
    #         step value of 1,000, the valid values start at 5,000 and step up by 1,000. Even though 7,500
    #         is within the range, it isn't a valid value for the range. The valid values are 5,000, 6,000,
    #         7,000, 8,000...</p>
    #
    #   @return [Integer]
    #
    Range = ::Struct.new(
      :from,
      :to,
      :step,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.from ||= 0
        self.to ||= 0
      end

    end

    # @!attribute db_instance_identifier
    #   <p>The DB instance identifier. This parameter is stored as a lowercase string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing DBInstance.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute force_failover
    #   <p> When <code>true</code>, the reboot is conducted through a MultiAZ failover.</p>
    #            <p>Constraint: You can't specify <code>true</code> if the instance is not configured for
    #         MultiAZ.</p>
    #
    #   @return [Boolean]
    #
    RebootDBInstanceInput = ::Struct.new(
      :db_instance_identifier,
      :force_failover,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_instance
    #   <p>Contains the details of an Amazon Neptune DB instance.</p>
    #            <p>This data type is used as a response element in the <a>DescribeDBInstances</a> action.</p>
    #
    #   @return [DBInstance]
    #
    RebootDBInstanceOutput = ::Struct.new(
      :db_instance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_cluster_identifier
    #   <p>The identifier of the Neptune global database from which to detach the
    #         specified Neptune DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_identifier
    #   <p>The Amazon Resource Name (ARN) identifying the cluster to be detached
    #         from the Neptune global database cluster.</p>
    #
    #   @return [String]
    #
    RemoveFromGlobalClusterInput = ::Struct.new(
      :global_cluster_identifier,
      :db_cluster_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_cluster
    #   <p>Contains the details of an Amazon Neptune global database.</p>
    #            <p>This data type is used as a response element for the
    #         <a>CreateGlobalCluster</a>,
    #         <a>DescribeGlobalClusters</a>,
    #         <a>ModifyGlobalCluster</a>,
    #         <a>DeleteGlobalCluster</a>,
    #         <a>FailoverGlobalCluster</a>, and
    #         <a>RemoveFromGlobalCluster</a> actions.</p>
    #
    #   @return [GlobalCluster]
    #
    RemoveFromGlobalClusterOutput = ::Struct.new(
      :global_cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster_identifier
    #   <p>The name of the DB cluster to disassociate the IAM role from.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to disassociate from the DB cluster, for
    #         example <code>arn:aws:iam::123456789012:role/NeptuneAccessRole</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute feature_name
    #   <p>The name of the feature for the DB cluster that the IAM role is to be disassociated from.
    #         For the list of supported feature names, see <a href="https://docs.aws.amazon.com/neptune/latest/userguide/api-other-apis.html DescribeDBEngineVersions">DescribeDBEngineVersions</a>.</p>
    #
    #   @return [String]
    #
    RemoveRoleFromDBClusterInput = ::Struct.new(
      :db_cluster_identifier,
      :role_arn,
      :feature_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RemoveRoleFromDBClusterOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute subscription_name
    #   <p>The name of the event notification subscription you want to remove a source identifier
    #         from.</p>
    #
    #   @return [String]
    #
    # @!attribute source_identifier
    #   <p> The source identifier to be removed from the subscription, such as the <b>DB instance identifier</b> for a DB instance or the name of a security
    #         group.</p>
    #
    #   @return [String]
    #
    RemoveSourceIdentifierFromSubscriptionInput = ::Struct.new(
      :subscription_name,
      :source_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute event_subscription
    #   <p>Contains the results of a successful invocation of the <a>DescribeEventSubscriptions</a> action.</p>
    #
    #   @return [EventSubscription]
    #
    RemoveSourceIdentifierFromSubscriptionOutput = ::Struct.new(
      :event_subscription,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_name
    #   <p>The Amazon Neptune resource that the tags are removed from. This value is an Amazon
    #         Resource Name (ARN). For information about creating an ARN, see <a href="https://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html tagging.ARN.Constructing"> Constructing an
    #         Amazon Resource Name (ARN)</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The tag key (name) of the tag to be removed.</p>
    #
    #   @return [Array<String>]
    #
    RemoveTagsFromResourceInput = ::Struct.new(
      :resource_name,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RemoveTagsFromResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group to reset.</p>
    #
    #   @return [String]
    #
    # @!attribute reset_all_parameters
    #   <p>A value that is set to <code>true</code> to reset all parameters in the DB cluster
    #         parameter group to their default values, and <code>false</code> otherwise. You can't use this
    #         parameter if there is a list of parameter names specified for the <code>Parameters</code>
    #         parameter.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute parameters
    #   <p>A list of parameter names in the DB cluster parameter group to reset to the default
    #         values. You can't use this parameter if the <code>ResetAllParameters</code> parameter is set
    #         to <code>true</code>.</p>
    #
    #   @return [Array<Parameter>]
    #
    ResetDBClusterParameterGroupInput = ::Struct.new(
      :db_cluster_parameter_group_name,
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

    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be 1 to 255 letters or numbers.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>This value is stored as a lowercase string.</p>
    #            </note>
    #
    #   @return [String]
    #
    ResetDBClusterParameterGroupOutput = ::Struct.new(
      :db_cluster_parameter_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_parameter_group_name
    #   <p>The name of the DB parameter group.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the name of an existing DBParameterGroup.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute reset_all_parameters
    #   <p>Specifies whether (<code>true</code>) or not (<code>false</code>) to reset all parameters
    #         in the DB parameter group to default values.</p>
    #            <p>Default: <code>true</code>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute parameters
    #   <p>To reset the entire DB parameter group, specify the <code>DBParameterGroup</code> name and
    #         <code>ResetAllParameters</code> parameters. To reset specific parameters, provide a list of
    #         the following: <code>ParameterName</code> and <code>ApplyMethod</code>. A maximum of 20
    #         parameters can be modified in a single request.</p>
    #            <p>Valid Values (for Apply method): <code>pending-reboot</code>
    #            </p>
    #
    #   @return [Array<Parameter>]
    #
    ResetDBParameterGroupInput = ::Struct.new(
      :db_parameter_group_name,
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

    # @!attribute db_parameter_group_name
    #   <p>Provides the name of the DB parameter group.</p>
    #
    #   @return [String]
    #
    ResetDBParameterGroupOutput = ::Struct.new(
      :db_parameter_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource ID was not found.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    ResourceNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the pending maintenance actions for a resource.</p>
    #
    # @!attribute resource_identifier
    #   <p>The ARN of the resource that has pending maintenance actions.</p>
    #
    #   @return [String]
    #
    # @!attribute pending_maintenance_action_details
    #   <p>A list that provides details about the pending maintenance actions for the
    #         resource.</p>
    #
    #   @return [Array<PendingMaintenanceAction>]
    #
    ResourcePendingMaintenanceActions = ::Struct.new(
      :resource_identifier,
      :pending_maintenance_action_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute availability_zones
    #   <p>Provides the list of EC2 Availability Zones that instances in the restored DB cluster can
    #         be created in.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute db_cluster_identifier
    #   <p>The name of the DB cluster to create from the DB snapshot or DB cluster snapshot. This
    #         parameter isn't case-sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>my-snapshot-id</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_identifier
    #   <p>The identifier for the DB snapshot or DB cluster snapshot to restore from.</p>
    #            <p>You can use either the name or the Amazon Resource Name (ARN) to specify a DB cluster
    #         snapshot. However, you can use only the ARN to specify a DB snapshot.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing Snapshot.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute engine
    #   <p>The database engine to use for the new DB cluster.</p>
    #            <p>Default: The same as source</p>
    #            <p>Constraint: Must be compatible with the engine of the source</p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The version of the database engine to use for the new DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port number on which the new DB cluster accepts connections.</p>
    #            <p>Constraints: Value must be <code>1150-65535</code>
    #            </p>
    #            <p>Default: The same port as the original DB cluster.</p>
    #
    #   @return [Integer]
    #
    # @!attribute db_subnet_group_name
    #   <p>The name of the DB subnet group to use for the new DB cluster.</p>
    #            <p>Constraints: If supplied, must match the name of an existing DBSubnetGroup.</p>
    #            <p>Example: <code>mySubnetgroup</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>Not supported.</p>
    #
    #   @return [String]
    #
    # @!attribute option_group_name
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute vpc_security_group_ids
    #   <p>A list of VPC security groups that the new DB cluster will belong to.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>The tags to be assigned to the restored DB cluster.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute kms_key_id
    #   <p>The Amazon KMS key identifier to use when restoring an encrypted DB cluster from a DB
    #         snapshot or DB cluster snapshot.</p>
    #            <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If
    #         you are restoring a DB cluster with the same Amazon account that owns the KMS encryption key used
    #         to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the
    #         KMS encryption key.</p>
    #            <p>If you do not specify a value for the <code>KmsKeyId</code> parameter, then the following
    #         will occur:</p>
    #            <ul>
    #               <li>
    #                  <p>If the DB snapshot or DB cluster snapshot in <code>SnapshotIdentifier</code> is
    #             encrypted, then the restored DB cluster is encrypted using the KMS key that was used to
    #             encrypt the DB snapshot or DB cluster snapshot.</p>
    #               </li>
    #               <li>
    #                  <p>If the DB snapshot or DB cluster snapshot in <code>SnapshotIdentifier</code> is not
    #             encrypted, then the restored DB cluster is not encrypted.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute enable_iam_database_authentication
    #   <p>True to enable mapping of Amazon Identity and Access Management (IAM) accounts to database
    #         accounts, and otherwise false.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_cloudwatch_logs_exports
    #   <p>The list of logs that the restored DB cluster is to export to Amazon CloudWatch Logs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group to associate with the new DB cluster.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute deletion_protection
    #   <p>A value that indicates whether the DB cluster has deletion protection enabled.
    #         The database can't be deleted when deletion protection is enabled. By default,
    #         deletion protection is disabled.
    #       </p>
    #
    #   @return [Boolean]
    #
    # @!attribute copy_tags_to_snapshot
    #   <p>
    #               <i>If set to <code>true</code>, tags are copied to any snapshot of
    #         the restored DB cluster that is created.</i>
    #            </p>
    #
    #   @return [Boolean]
    #
    RestoreDBClusterFromSnapshotInput = ::Struct.new(
      :availability_zones,
      :db_cluster_identifier,
      :snapshot_identifier,
      :engine,
      :engine_version,
      :port,
      :db_subnet_group_name,
      :database_name,
      :option_group_name,
      :vpc_security_group_ids,
      :tags,
      :kms_key_id,
      :enable_iam_database_authentication,
      :enable_cloudwatch_logs_exports,
      :db_cluster_parameter_group_name,
      :deletion_protection,
      :copy_tags_to_snapshot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster
    #   <p>Contains the details of an Amazon Neptune DB cluster.</p>
    #            <p>This data type is used as a response element in the <a>DescribeDBClusters</a> action.</p>
    #
    #   @return [DBCluster]
    #
    RestoreDBClusterFromSnapshotOutput = ::Struct.new(
      :db_cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster_identifier
    #   <p>The name of the new DB cluster to be created.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute restore_type
    #   <p>The type of restore to be performed. You can specify one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>full-copy</code> - The new DB cluster is restored as a full copy of the source
    #             DB cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>copy-on-write</code> - The new DB cluster is restored as a clone of the source
    #             DB cluster.</p>
    #               </li>
    #            </ul>
    #            <p>If you don't specify a <code>RestoreType</code> value, then the new DB cluster is restored
    #         as a full copy of the source DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute source_db_cluster_identifier
    #   <p>The identifier of the source DB cluster from which to restore.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must match the identifier of an existing DBCluster.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute restore_to_time
    #   <p>The date and time to restore the DB cluster to.</p>
    #            <p>Valid Values: Value must be a time in Universal Coordinated Time (UTC) format</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be before the latest restorable time for the DB instance</p>
    #               </li>
    #               <li>
    #                  <p>Must be specified if <code>UseLatestRestorableTime</code> parameter is not
    #             provided</p>
    #               </li>
    #               <li>
    #                  <p>Cannot be specified if <code>UseLatestRestorableTime</code> parameter is true</p>
    #               </li>
    #               <li>
    #                  <p>Cannot be specified if <code>RestoreType</code> parameter is
    #             <code>copy-on-write</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>2015-03-07T23:45:00Z</code>
    #            </p>
    #
    #   @return [Time]
    #
    # @!attribute use_latest_restorable_time
    #   <p>A value that is set to <code>true</code> to restore the DB cluster to the latest
    #         restorable backup time, and <code>false</code> otherwise.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #            <p>Constraints: Cannot be specified if <code>RestoreToTime</code> parameter is
    #         provided.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute port
    #   <p>The port number on which the new DB cluster accepts connections.</p>
    #            <p>Constraints: Value must be <code>1150-65535</code>
    #            </p>
    #            <p>Default: The same port as the original DB cluster.</p>
    #
    #   @return [Integer]
    #
    # @!attribute db_subnet_group_name
    #   <p>The DB subnet group name to use for the new DB cluster.</p>
    #            <p>Constraints: If supplied, must match the name of an existing DBSubnetGroup.</p>
    #            <p>Example: <code>mySubnetgroup</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute option_group_name
    #   <p>
    #               <i>(Not supported by Neptune)</i>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute vpc_security_group_ids
    #   <p>A list of VPC security groups that the new DB cluster belongs to.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>The tags to be applied to the restored DB cluster.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute kms_key_id
    #   <p>The Amazon KMS key identifier to use when restoring an encrypted DB cluster from an encrypted
    #         DB cluster.</p>
    #            <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If
    #         you are restoring a DB cluster with the same Amazon account that owns the KMS encryption key used
    #         to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the
    #         KMS encryption key.</p>
    #            <p>You can restore to a new DB cluster and encrypt the new DB cluster with a KMS key that is
    #         different than the KMS key used to encrypt the source DB cluster. The new DB cluster is
    #         encrypted with the KMS key identified by the <code>KmsKeyId</code> parameter.</p>
    #            <p>If you do not specify a value for the <code>KmsKeyId</code> parameter, then the following
    #         will occur:</p>
    #            <ul>
    #               <li>
    #                  <p>If the DB cluster is encrypted, then the restored DB cluster is encrypted using the
    #             KMS key that was used to encrypt the source DB cluster.</p>
    #               </li>
    #               <li>
    #                  <p>If the DB cluster is not encrypted, then the restored DB cluster is not
    #             encrypted.</p>
    #               </li>
    #            </ul>
    #            <p>If <code>DBClusterIdentifier</code> refers to a DB cluster that is not encrypted, then the
    #         restore request is rejected.</p>
    #
    #   @return [String]
    #
    # @!attribute enable_iam_database_authentication
    #   <p>True to enable mapping of Amazon Identity and Access Management (IAM) accounts to database
    #         accounts, and otherwise false.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_cloudwatch_logs_exports
    #   <p>The list of logs that the restored DB cluster is to export to CloudWatch Logs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group to associate with the new DB cluster.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute deletion_protection
    #   <p>A value that indicates whether the DB cluster has deletion protection enabled.
    #         The database can't be deleted when deletion protection is enabled. By default,
    #         deletion protection is disabled.
    #       </p>
    #
    #   @return [Boolean]
    #
    RestoreDBClusterToPointInTimeInput = ::Struct.new(
      :db_cluster_identifier,
      :restore_type,
      :source_db_cluster_identifier,
      :restore_to_time,
      :use_latest_restorable_time,
      :port,
      :db_subnet_group_name,
      :option_group_name,
      :vpc_security_group_ids,
      :tags,
      :kms_key_id,
      :enable_iam_database_authentication,
      :enable_cloudwatch_logs_exports,
      :db_cluster_parameter_group_name,
      :deletion_protection,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.use_latest_restorable_time ||= false
      end

    end

    # @!attribute db_cluster
    #   <p>Contains the details of an Amazon Neptune DB cluster.</p>
    #            <p>This data type is used as a response element in the <a>DescribeDBClusters</a> action.</p>
    #
    #   @return [DBCluster]
    #
    RestoreDBClusterToPointInTimeOutput = ::Struct.new(
      :db_cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The SNS topic is invalid.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    SNSInvalidTopicFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There is no SNS authorization.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    SNSNoAuthorizationFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The ARN of the SNS topic could not be found.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    SNSTopicArnNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have exceeded the maximum number of accounts that you can share a manual DB snapshot with.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    SharedSnapshotQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Request would result in user exceeding the allowed number of DB snapshots.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    SnapshotQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The source could not be found.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
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
      db_instance = "db-instance"

      # No documentation available.
      #
      db_parameter_group = "db-parameter-group"

      # No documentation available.
      #
      db_security_group = "db-security-group"

      # No documentation available.
      #
      db_snapshot = "db-snapshot"

      # No documentation available.
      #
      db_cluster = "db-cluster"

      # No documentation available.
      #
      db_cluster_snapshot = "db-cluster-snapshot"
    end

    # @!attribute db_cluster_identifier
    #   <p>The DB cluster identifier of the Neptune DB cluster to be started.
    #         This parameter is stored as a lowercase string.</p>
    #
    #   @return [String]
    #
    StartDBClusterInput = ::Struct.new(
      :db_cluster_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster
    #   <p>Contains the details of an Amazon Neptune DB cluster.</p>
    #            <p>This data type is used as a response element in the <a>DescribeDBClusters</a> action.</p>
    #
    #   @return [DBCluster]
    #
    StartDBClusterOutput = ::Struct.new(
      :db_cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster_identifier
    #   <p>The DB cluster identifier of the Neptune DB cluster to be stopped.
    #         This parameter is stored as a lowercase string.</p>
    #
    #   @return [String]
    #
    StopDBClusterInput = ::Struct.new(
      :db_cluster_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster
    #   <p>Contains the details of an Amazon Neptune DB cluster.</p>
    #            <p>This data type is used as a response element in the <a>DescribeDBClusters</a> action.</p>
    #
    #   @return [DBCluster]
    #
    StopDBClusterOutput = ::Struct.new(
      :db_cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Request would result in user exceeding the allowed amount of storage available across all DB instances.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    StorageQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             <i>StorageType</i> specified cannot be associated with the DB Instance.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    StorageTypeNotSupportedFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a subnet.</p>
    #          <p> This data type is used as a response element in the <a>DescribeDBSubnetGroups</a> action.</p>
    #
    # @!attribute subnet_identifier
    #   <p>Specifies the identifier of the subnet.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_availability_zone
    #   <p>Specifies the EC2 Availability Zone that the subnet is in.</p>
    #
    #   @return [AvailabilityZone]
    #
    # @!attribute subnet_status
    #   <p>Specifies the status of the subnet.</p>
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

    # <p>The DB subnet is already in use in the Availability Zone.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    SubnetAlreadyInUse = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This subscription already exists.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    SubscriptionAlreadyExistFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The designated subscription category could not be found.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    SubscriptionCategoryNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The designated subscription could not be found.</p>
    #
    # @!attribute message
    #   <p>A message describing the details of the problem.</p>
    #
    #   @return [String]
    #
    SubscriptionNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Metadata assigned to an Amazon Neptune resource consisting of a key-value pair.</p>
    #
    # @!attribute key
    #   <p>A key is the required name of the tag. The string value can be from 1 to 128 Unicode
    #         characters in length and can't be prefixed with <code>aws:</code> or <code>rds:</code>.
    #         The string can only contain the set of Unicode letters, digits, white-space,
    #         '_', '.', '/', '=', '+', '-' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>A value is the optional value of the tag. The string value can be from 1 to 256 Unicode
    #         characters in length and can't be prefixed with <code>aws:</code> or <code>rds:</code>.
    #         The string can only contain the set of Unicode letters, digits, white-space,
    #         '_', '.', '/', '=', '+', '-' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").</p>
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

    # <p>A time zone associated with a <a>DBInstance</a>.</p>
    #
    # @!attribute timezone_name
    #   <p>The name of the time zone.</p>
    #
    #   @return [String]
    #
    Timezone = ::Struct.new(
      :timezone_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The version of the database engine that a DB instance can be upgraded to.</p>
    #
    # @!attribute engine
    #   <p>The name of the upgrade target database engine.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The version number of the upgrade target database engine.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The version of the database engine that a DB instance can be upgraded to.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_upgrade
    #   <p>A value that indicates whether the target version is applied to any source DB instances
    #         that have AutoMinorVersionUpgrade set to true.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_major_version_upgrade
    #   <p>A value that indicates whether a database engine is upgraded to a major version.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute supports_global_databases
    #   <p>A value that indicates whether you can use Neptune global databases with the target engine version.</p>
    #
    #   @return [Boolean]
    #
    UpgradeTarget = ::Struct.new(
      :engine,
      :engine_version,
      :description,
      :auto_upgrade,
      :is_major_version_upgrade,
      :supports_global_databases,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.auto_upgrade ||= false
        self.is_major_version_upgrade ||= false
      end

    end

    # <p>Information about valid modifications that you can make to your DB instance. Contains the
    #       result of a successful call to the <a>DescribeValidDBInstanceModifications</a>
    #       action. You can use this information when you call <a>ModifyDBInstance</a>.
    #    </p>
    #
    # @!attribute storage
    #   <p>Valid storage options for your DB instance.</p>
    #
    #   @return [Array<ValidStorageOptions>]
    #
    ValidDBInstanceModificationsMessage = ::Struct.new(
      :storage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about valid modifications that you can make to your DB
    #       instance.</p>
    #          <p>Contains the result of a successful call to the <a>DescribeValidDBInstanceModifications</a> action.</p>
    #
    # @!attribute storage_type
    #   <p>The valid storage types for your DB instance. For example, gp2, io1.</p>
    #
    #   @return [String]
    #
    # @!attribute storage_size
    #   <p>The valid range of storage in gibibytes. For example, 100 to 16384.</p>
    #
    #   @return [Array<Range>]
    #
    # @!attribute provisioned_iops
    #   <p>The valid range of provisioned IOPS. For example, 1000-20000.</p>
    #
    #   @return [Array<Range>]
    #
    # @!attribute iops_to_storage_ratio
    #   <p>The valid range of Provisioned IOPS to gibibytes of storage multiplier. For example, 3-10,
    #         which means that provisioned IOPS can be between 3 and 10 times storage.</p>
    #
    #   @return [Array<DoubleRange>]
    #
    ValidStorageOptions = ::Struct.new(
      :storage_type,
      :storage_size,
      :provisioned_iops,
      :iops_to_storage_ratio,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This data type is used as a response element for queries on VPC security group
    #       membership.</p>
    #
    # @!attribute vpc_security_group_id
    #   <p>The name of the VPC security group.</p>
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
