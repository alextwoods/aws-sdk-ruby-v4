# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::RDS
  module Types

    # <p>Describes a quota for an Amazon Web Services account.</p>
    #         <p>The following are account quotas:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>AllocatedStorage</code> - The total allocated storage per account, in GiB.
    #                     The used value is the total allocated storage in the account, in GiB.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>AuthorizationsPerDBSecurityGroup</code> - The number of ingress rules per DB security group.
    #                   The used value is the highest number of ingress rules in a DB security group in the account. Other
    #                   DB security groups in the account might have a lower number of ingress rules.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>CustomEndpointsPerDBCluster</code> - The number of custom endpoints per DB cluster.
    #                   The used value is the highest number of custom endpoints in a DB clusters in the account. Other
    #                   DB clusters in the account might have a lower number of custom endpoints.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>DBClusterParameterGroups</code> - The number of DB cluster parameter groups
    #                     per account, excluding default parameter groups. The used value is the count of
    #                     nondefault DB cluster parameter groups in the account.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>DBClusterRoles</code> - The number of associated Amazon Web Services Identity and Access Management (IAM) roles per DB cluster.
    #                   The used value is the highest number of associated IAM roles for a DB cluster in the account. Other
    #                   DB clusters in the account might have a lower number of associated IAM roles.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>DBClusters</code> - The number of DB clusters per account.
    #                   The used value is the count of DB clusters in the account.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>DBInstanceRoles</code> - The number of associated IAM roles per DB instance.
    #                   The used value is the highest number of associated IAM roles for a DB instance in the account. Other
    #                   DB instances in the account might have a lower number of associated IAM roles.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>DBInstances</code> - The number of DB instances per account.
    #                   The used value is the count of the DB instances in the account.</p>
    #                 <p>Amazon RDS DB instances, Amazon Aurora DB instances, Amazon Neptune instances, and Amazon DocumentDB
    #                       instances apply to this quota.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>DBParameterGroups</code> - The number of DB parameter groups per account,
    #                     excluding default parameter groups. The used value is the count of nondefault DB
    #                     parameter groups in the account.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>DBSecurityGroups</code> - The number of DB security groups (not VPC
    #                     security groups) per account, excluding the default security group. The used
    #                     value is the count of nondefault DB security groups in the account.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>DBSubnetGroups</code> - The number of DB subnet groups per account.
    #                   The used value is the count of the DB subnet groups in the account.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>EventSubscriptions</code> - The number of event subscriptions per account.
    #                   The used value is the count of the event subscriptions in the account.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>ManualClusterSnapshots</code> - The number of manual DB cluster snapshots per account.
    #                   The used value is the count of the manual DB cluster snapshots in the account.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>ManualSnapshots</code> - The number of manual DB instance snapshots per account.
    #                   The used value is the count of the manual DB instance snapshots in the account.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>OptionGroups</code> - The number of DB option groups per account, excluding
    #                     default option groups. The used value is the count of nondefault DB option
    #                     groups in the account.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>ReadReplicasPerMaster</code> - The number of read replicas per DB
    #                     instance. The used value is the highest number of read replicas for a DB
    #                     instance in the account. Other DB instances in the account might have a lower
    #                     number of read replicas.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>ReservedDBInstances</code> - The number of reserved DB instances per account.
    #                   The used value is the count of the active reserved DB instances in the account.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>SubnetsPerDBSubnetGroup</code> - The number of subnets per DB subnet group.
    #                   The used value is highest number of subnets for a DB subnet group in the account. Other
    #                   DB subnet groups in the account might have a lower number of subnets.</p>
    #             </li>
    #          </ul>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Limits.html">Quotas for Amazon RDS</a> in the
    #                 <i>Amazon RDS User Guide</i> and <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_Limits.html">Quotas for Amazon Aurora</a> in the
    #                 <i>Amazon Aurora User Guide</i>.</p>
    #
    # @!attribute account_quota_name
    #   <p>The name of the Amazon RDS quota for this Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute used
    #   <p>The amount currently used toward the quota maximum.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max
    #   <p>The maximum allowed value for the quota.</p>
    #
    #   @return [Integer]
    #
    AccountQuota = ::Struct.new(
      :account_quota_name,
      :used,
      :max,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.used ||= 0
        self.max ||= 0
      end
    end

    # Includes enum constants for ActivityStreamMode
    #
    module ActivityStreamMode
      # No documentation available.
      #
      sync = "sync"

      # No documentation available.
      #
      async = "async"
    end

    # Includes enum constants for ActivityStreamStatus
    #
    module ActivityStreamStatus
      # No documentation available.
      #
      stopped = "stopped"

      # No documentation available.
      #
      starting = "starting"

      # No documentation available.
      #
      started = "started"

      # No documentation available.
      #
      stopping = "stopping"
    end

    # @!attribute db_cluster_identifier
    #   <p>The name of the DB cluster to associate the IAM role with.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to associate with the Aurora DB
    #               cluster, for example <code>arn:aws:iam::123456789012:role/AuroraAccessRole</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute feature_name
    #   <p>The name of the feature for the DB cluster that the IAM role is to be associated with.
    #               For information about supported feature names, see <a>DBEngineVersion</a>.</p>
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

    # @!attribute db_instance_identifier
    #   <p>The name of the DB instance to associate the IAM role with.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to associate with the DB instance, for
    #               example <code>arn:aws:iam::123456789012:role/AccessRole</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute feature_name
    #   <p>The name of the feature for the DB instance that the IAM role is to be associated with.
    #               For information about supported feature names, see <a>DBEngineVersion</a>.</p>
    #
    #   @return [String]
    #
    AddRoleToDBInstanceInput = ::Struct.new(
      :db_instance_identifier,
      :role_arn,
      :feature_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AddRoleToDBInstanceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute subscription_name
    #   <p>The name of the RDS event notification subscription you want to add a source identifier to.</p>
    #
    #   @return [String]
    #
    # @!attribute source_identifier
    #   <p>The identifier of the event source to be added.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If the source type is a DB instance, a <code>DBInstanceIdentifier</code> value must be supplied.</p>
    #               </li>
    #               <li>
    #                   <p>If the source type is a DB cluster, a <code>DBClusterIdentifier</code> value must be supplied.</p>
    #               </li>
    #               <li>
    #                   <p>If the source type is a DB parameter group, a <code>DBParameterGroupName</code> value must be supplied.</p>
    #               </li>
    #               <li>
    #                   <p>If the source type is a DB security group, a <code>DBSecurityGroupName</code> value must be supplied.</p>
    #               </li>
    #               <li>
    #                   <p>If the source type is a DB snapshot, a <code>DBSnapshotIdentifier</code> value must be supplied.</p>
    #               </li>
    #               <li>
    #                   <p>If the source type is a DB cluster snapshot, a <code>DBClusterSnapshotIdentifier</code> value must be supplied.</p>
    #               </li>
    #               <li>
    #                   <p>If the source type is an RDS Proxy, a <code>DBProxyName</code> value must be supplied.</p>
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
    #   <p>Contains the results of a successful invocation of the <code>DescribeEventSubscriptions</code> action.</p>
    #
    #   @return [EventSubscription]
    #
    AddSourceIdentifierToSubscriptionOutput = ::Struct.new(
      :event_subscription,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute resource_name
    #   <p>The Amazon RDS resource that the tags are added to. This value is an Amazon Resource Name (ARN). For information about
    #               creating an ARN,
    #           see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html USER_Tagging.ARN.Constructing">
    #               Constructing an RDS Amazon Resource Name (ARN)</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to be assigned to the Amazon RDS resource.</p>
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

    # <p></p>
    #
    # @!attribute resource_identifier
    #   <p>The RDS Amazon Resource Name (ARN) of the resource that the
    #         pending maintenance action applies to. For information about
    #         creating an ARN,
    #         see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html USER_Tagging.ARN.Constructing">
    #           Constructing an RDS Amazon Resource Name (ARN)</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute apply_action
    #   <p>The pending maintenance action to apply to this resource.</p>
    #           <p>Valid values: <code>system-update</code>, <code>db-upgrade</code>,
    #             <code>hardware-maintenance</code>, <code>ca-certificate-rotation</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute opt_in_type
    #   <p>A value that specifies the type of opt-in request, or undoes an opt-in request. An opt-in
    #              request of type <code>immediate</code> can't be undone.</p>
    #           <p>Valid values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>immediate</code> - Apply the maintenance action immediately.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>next-maintenance</code> - Apply the maintenance action during
    #               the next maintenance window for the resource.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>undo-opt-in</code> - Cancel any existing <code>next-maintenance</code>
    #               opt-in requests.</p>
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

    # Includes enum constants for AuthScheme
    #
    module AuthScheme
      # No documentation available.
      #
      SECRETS = "SECRETS"
    end

    # <p>The specified CIDR IP range or Amazon EC2 security group is already authorized for
    #             the specified DB security group.</p>
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

    # <p>The specified CIDR IP range or Amazon EC2 security group might not be authorized
    #             for the specified DB security group.</p>
    #         <p>Or, RDS might not be authorized to perform necessary actions using IAM on your
    #             behalf.</p>
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

    # <p>The DB security group authorization quota has been reached.</p>
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

    # <p></p>
    #
    # @!attribute db_security_group_name
    #   <p>The name of the DB security group to add authorization to.</p>
    #
    #   @return [String]
    #
    # @!attribute cidrip
    #   <p>The IP range to authorize.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_security_group_name
    #   <p>Name of the EC2 security group to authorize.
    #           For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided.
    #           Otherwise, <code>EC2SecurityGroupOwnerId</code> and either <code>EC2SecurityGroupName</code>
    #         or <code>EC2SecurityGroupId</code> must be provided.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_security_group_id
    #   <p>Id of the EC2 security group to authorize.
    #           For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided.
    #           Otherwise, <code>EC2SecurityGroupOwnerId</code> and either <code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code> must be provided.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_security_group_owner_id
    #   <p>Amazon Web Services account number of the owner of the EC2 security group
    #           specified in the <code>EC2SecurityGroupName</code> parameter.
    #           The Amazon Web Services access key ID isn't an acceptable value.
    #           For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided.
    #           Otherwise, <code>EC2SecurityGroupOwnerId</code> and either <code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code> must be provided.</p>
    #
    #   @return [String]
    #
    AuthorizeDBSecurityGroupIngressInput = ::Struct.new(
      :db_security_group_name,
      :cidrip,
      :ec2_security_group_name,
      :ec2_security_group_id,
      :ec2_security_group_owner_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_security_group
    #   <p>Contains the details for an Amazon RDS DB security group.</p>
    #           <p>This data type is used as a response element
    #             in the <code>DescribeDBSecurityGroups</code> action.</p>
    #
    #   @return [DBSecurityGroup]
    #
    AuthorizeDBSecurityGroupIngressOutput = ::Struct.new(
      :db_security_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AutomationMode
    #
    module AutomationMode
      # No documentation available.
      #
      FULL = "full"

      # No documentation available.
      #
      ALL_PAUSED = "all-paused"
    end

    # <p>Contains Availability Zone information.</p>
    #         <p>This data type is used as an element in the <code>OrderableDBInstanceOption</code>
    #             data type.</p>
    #
    # @!attribute name
    #   <p>The name of the Availability Zone.</p>
    #
    #   @return [String]
    #
    AvailabilityZone = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the available processor feature information for the DB instance class of a DB instance.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html#USER_ConfigureProcessor">Configuring the
    #                 Processor of the DB Instance Class</a> in the <i>Amazon RDS User Guide.
    #             </i>
    #          </p>
    #
    # @!attribute name
    #   <p>The name of the processor feature. Valid names are <code>coreCount</code>
    #               and <code>threadsPerCore</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute default_value
    #   <p>The default value for the processor feature of the DB instance class.</p>
    #
    #   @return [String]
    #
    # @!attribute allowed_values
    #   <p>The allowed values for the processor feature of the DB instance class.</p>
    #
    #   @return [String]
    #
    AvailableProcessorFeature = ::Struct.new(
      :name,
      :default_value,
      :allowed_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_cluster_identifier
    #   <p>The DB cluster identifier of the DB cluster to be backtracked. This parameter is
    #               stored as a lowercase string.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>my-cluster1</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute backtrack_to
    #   <p>The timestamp of the time to backtrack the DB cluster to, specified in ISO
    #               8601 format. For more information about ISO 8601, see the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia
    #               page.</a>
    #            </p>
    #           <note>
    #               <p>If the specified time isn't a consistent time for the DB cluster,
    #                   Aurora automatically chooses the nearest possible consistent time for the DB cluster.</p>
    #           </note>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain a valid ISO 8601 timestamp.</p>
    #               </li>
    #               <li>
    #                   <p>Can't contain a timestamp set in the future.</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>2017-07-08T18:00Z</code>
    #            </p>
    #
    #   @return [Time]
    #
    # @!attribute force
    #   <p>A value that indicates whether to force the DB cluster to backtrack when binary logging is
    #               enabled. Otherwise, an error occurs when binary logging is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute use_earliest_time_on_point_in_time_unavailable
    #   <p>A value that indicates whether to backtrack the DB cluster to the earliest possible
    #               backtrack time when <i>BacktrackTo</i> is set to a timestamp earlier than the earliest
    #               backtrack time. When this parameter is disabled and <i>BacktrackTo</i> is set to a timestamp earlier than the earliest
    #               backtrack time, an error occurs.</p>
    #
    #   @return [Boolean]
    #
    BacktrackDBClusterInput = ::Struct.new(
      :db_cluster_identifier,
      :backtrack_to,
      :force,
      :use_earliest_time_on_point_in_time_unavailable,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This data type is used as a response element in the <code>DescribeDBClusterBacktracks</code> action.</p>
    #
    # @!attribute db_cluster_identifier
    #   <p>Contains a user-supplied DB cluster identifier. This identifier is the unique key that identifies a DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute backtrack_identifier
    #   <p>Contains the backtrack identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute backtrack_to
    #   <p>The timestamp of the time to which the DB cluster was backtracked.</p>
    #
    #   @return [Time]
    #
    # @!attribute backtracked_from
    #   <p>The timestamp of the time from which the DB cluster was backtracked.</p>
    #
    #   @return [Time]
    #
    # @!attribute backtrack_request_creation_time
    #   <p>The timestamp of the time at which the backtrack was requested.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The status of the backtrack. This property returns one of the following
    #               values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>applying</code> - The backtrack is currently being applied to or rolled back from the DB cluster.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>completed</code> - The backtrack has successfully been applied to or rolled back from the DB cluster.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>failed</code> - An error occurred while the backtrack was applied to or rolled back from the DB cluster.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>pending</code> - The backtrack is currently pending application to or rollback from the DB cluster.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    BacktrackDBClusterOutput = ::Struct.new(
      :db_cluster_identifier,
      :backtrack_identifier,
      :backtrack_to,
      :backtracked_from,
      :backtrack_request_creation_time,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @deprecated
    #   Please avoid using this fault
    #
    # @!attribute message
    #
    #   @return [String]
    #
    BackupPolicyNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute export_task_identifier
    #   <p>The identifier of the snapshot export task to cancel.</p>
    #
    #   @return [String]
    #
    CancelExportTaskInput = ::Struct.new(
      :export_task_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the details of a snapshot export to Amazon S3.</p>
    #         <p>This data type is used as a response element in the <code>DescribeExportTasks</code> action.</p>
    #
    # @!attribute export_task_identifier
    #   <p>A unique identifier for the snapshot export task. This ID isn't an identifier for
    #               the Amazon S3 bucket where the snapshot is exported to.</p>
    #
    #   @return [String]
    #
    # @!attribute source_arn
    #   <p>The Amazon Resource Name (ARN) of the snapshot exported to Amazon S3.</p>
    #
    #   @return [String]
    #
    # @!attribute export_only
    #   <p>The data exported from the snapshot. Valid values are the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>database</code> - Export all the data from a specified database.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>database.table</code>
    #                       <i>table-name</i> -
    #                   Export a table of the snapshot. This format is valid only for RDS for MySQL, RDS for MariaDB, and Aurora MySQL.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>database.schema</code>
    #                       <i>schema-name</i> - Export a database schema of the snapshot.
    #                   This format is valid only for RDS for PostgreSQL and Aurora PostgreSQL.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>database.schema.table</code>
    #                       <i>table-name</i> - Export a table of the database schema.
    #                   This format is valid only for RDS for PostgreSQL and Aurora PostgreSQL.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute snapshot_time
    #   <p>The time that the snapshot was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute task_start_time
    #   <p>The time that the snapshot export task started.</p>
    #
    #   @return [Time]
    #
    # @!attribute task_end_time
    #   <p>The time that the snapshot export task completed.</p>
    #
    #   @return [Time]
    #
    # @!attribute s3_bucket
    #   <p>The Amazon S3 bucket that the snapshot is exported to.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_prefix
    #   <p>The Amazon S3 bucket prefix that is the file name and path of the exported snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_role_arn
    #   <p>The name of the IAM role that is used to write to Amazon S3 when exporting a snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>The key identifier of the Amazon Web Services KMS key that is used to encrypt the snapshot when it's exported to
    #               Amazon S3. The KMS key identifier is its key ARN, key ID, alias ARN, or alias name. The IAM role used for the snapshot export
    #               must have encryption and decryption permissions to use this KMS key.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The progress status of the export task.</p>
    #
    #   @return [String]
    #
    # @!attribute percent_progress
    #   <p>The progress of the snapshot export task as a percentage.</p>
    #
    #   @return [Integer]
    #
    # @!attribute total_extracted_data_in_gb
    #   <p>The total amount of data exported, in gigabytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute failure_cause
    #   <p>The reason the export failed, if it failed.</p>
    #
    #   @return [String]
    #
    # @!attribute warning_message
    #   <p>A warning about the snapshot export task.</p>
    #
    #   @return [String]
    #
    CancelExportTaskOutput = ::Struct.new(
      :export_task_identifier,
      :source_arn,
      :export_only,
      :snapshot_time,
      :task_start_time,
      :task_end_time,
      :s3_bucket,
      :s3_prefix,
      :iam_role_arn,
      :kms_key_id,
      :status,
      :percent_progress,
      :total_extracted_data_in_gb,
      :failure_cause,
      :warning_message,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.percent_progress ||= 0
        self.total_extracted_data_in_gb ||= 0
      end
    end

    # <p>A CA certificate for an Amazon Web Services account.</p>
    #
    # @!attribute certificate_identifier
    #   <p>The unique key that identifies a certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate_type
    #   <p>The type of the certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute thumbprint
    #   <p>The thumbprint of the certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute valid_from
    #   <p>The starting date from which the certificate is valid.</p>
    #
    #   @return [Time]
    #
    # @!attribute valid_till
    #   <p>The final date that the certificate continues to be valid.</p>
    #
    #   @return [Time]
    #
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) for the certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute customer_override
    #   <p>Whether there is an override for the default certificate identifier.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute customer_override_valid_till
    #   <p>If there is an override for the default certificate identifier, when the override
    #               expires.</p>
    #
    #   @return [Time]
    #
    Certificate = ::Struct.new(
      :certificate_identifier,
      :certificate_type,
      :thumbprint,
      :valid_from,
      :valid_till,
      :certificate_arn,
      :customer_override,
      :customer_override_valid_till,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             <code>CertificateIdentifier</code> doesn't refer to an
    #         existing certificate.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    CertificateNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This data type is used as a response element in the action <code>DescribeDBEngineVersions</code>.</p>
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

    # <p>The configuration setting for the log types to be enabled for export to CloudWatch
    #             Logs for a specific DB instance or DB cluster.</p>
    #         <p>The <code>EnableLogTypes</code> and <code>DisableLogTypes</code> arrays determine which logs will be exported
    #             (or not exported) to CloudWatch Logs. The values within these arrays depend on the DB
    #             engine being used.</p>
    #         <p>For more information about exporting CloudWatch Logs for Amazon RDS DB instances, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch">Publishing Database Logs to Amazon CloudWatch Logs </a> in the <i>Amazon RDS User Guide</i>.</p>
    #         <p>For more information about exporting CloudWatch Logs for Amazon Aurora DB clusters, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch">Publishing Database Logs to Amazon CloudWatch Logs</a> in the <i>Amazon Aurora User Guide</i>.</p>
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

    # <p>This data type is used as a response element in the <code>ModifyDBCluster</code> operation and
    #             contains changes that will be applied during the next maintenance window.</p>
    #
    # @!attribute pending_cloudwatch_logs_exports
    #   <p>A list of the log types whose configuration is still pending. In other words, these log types are in the process of being activated or deactivated.</p>
    #
    #   @return [PendingCloudwatchLogsExports]
    #
    # @!attribute db_cluster_identifier
    #   <p>The DBClusterIdentifier value for the DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute master_user_password
    #   <p>The master credentials for the DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_database_authentication_enabled
    #   <p>A value that indicates whether mapping of Amazon Web Services Identity and Access Management (IAM) accounts to database accounts is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute engine_version
    #   <p>The database engine version.</p>
    #
    #   @return [String]
    #
    ClusterPendingModifiedValues = ::Struct.new(
      :pending_cloudwatch_logs_exports,
      :db_cluster_identifier,
      :master_user_password,
      :iam_database_authentication_enabled,
      :engine_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the settings that control the size and behavior of the connection pool associated with a <code>DBProxyTargetGroup</code>.</p>
    #
    # @!attribute max_connections_percent
    #   <p>The maximum size of the connection pool for each target in a target group. The value is expressed as a percentage of the
    #           <code>max_connections</code> setting for the RDS DB instance or Aurora DB cluster used by the target group.</p>
    #           <p>Default: 100</p>
    #           <p>Constraints: between 1 and 100</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_idle_connections_percent
    #   <p>Controls how actively the proxy closes idle database connections in the connection pool.
    #           The value is expressed as a percentage of the <code>max_connections</code> setting for the RDS DB instance or Aurora DB cluster used by the target group.
    #           With a high value, the proxy leaves a high percentage of idle database connections open. A low value causes the proxy to close more idle connections and return them to the database.</p>
    #           <p>Default: 50</p>
    #           <p>Constraints: between 0 and <code>MaxConnectionsPercent</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute connection_borrow_timeout
    #   <p>The number of seconds for a proxy to wait for a connection to become available in the connection pool. Only applies when the
    #           proxy has opened its maximum number of connections and all connections are busy with client sessions.</p>
    #           <p>Default: 120</p>
    #           <p>Constraints: between 1 and 3600, or 0 representing unlimited</p>
    #
    #   @return [Integer]
    #
    # @!attribute session_pinning_filters
    #   <p>Each item in the list represents a class of SQL operations that normally cause all later statements
    #           in a session using a proxy to be pinned to the same underlying database connection. Including an item
    #           in the list exempts that class of SQL operations from the pinning behavior.</p>
    #           <p>Default: no session pinning filters</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute init_query
    #   <p>One or more SQL statements for the proxy to run when opening each new database connection.
    #           Typically used with <code>SET</code> statements to make sure that each connection has identical
    #           settings such as time zone and character set. For multiple statements, use semicolons as the separator.
    #           You can also include multiple variables in a single <code>SET</code> statement, such as
    #           <code>SET x=1, y=2</code>.</p>
    #           <p>Default: no initialization query</p>
    #
    #   @return [String]
    #
    ConnectionPoolConfiguration = ::Struct.new(
      :max_connections_percent,
      :max_idle_connections_percent,
      :connection_borrow_timeout,
      :session_pinning_filters,
      :init_query,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Displays the settings that control the size and behavior of the connection pool associated with a <code>DBProxyTarget</code>.</p>
    #
    # @!attribute max_connections_percent
    #   <p>The maximum size of the connection pool for each target in a target group. The value is expressed as a percentage of the
    #           <code>max_connections</code> setting for the RDS DB instance or Aurora DB cluster used by the target group.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_idle_connections_percent
    #   <p>Controls how actively the proxy closes idle database connections in the connection pool.
    #           The value is expressed as a percentage of the <code>max_connections</code> setting for the RDS DB instance or Aurora DB cluster used by the target group.
    #           With a high value, the proxy leaves a high percentage of idle database connections open. A low value causes the proxy to close more idle connections and return them to the database.</p>
    #
    #   @return [Integer]
    #
    # @!attribute connection_borrow_timeout
    #   <p>The number of seconds for a proxy to wait for a connection to become available in the connection pool. Only applies when the
    #           proxy has opened its maximum number of connections and all connections are busy with client sessions.</p>
    #
    #   @return [Integer]
    #
    # @!attribute session_pinning_filters
    #   <p>Each item in the list represents a class of SQL operations that normally cause all later statements
    #           in a session using a proxy to be pinned to the same underlying database connection. Including an item
    #           in the list exempts that class of SQL operations from the pinning behavior. Currently, the only
    #           allowed value is <code>EXCLUDE_VARIABLE_SETS</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute init_query
    #   <p>One or more SQL statements for the proxy to run when opening each new database connection.
    #           Typically used with <code>SET</code> statements to make sure that each connection has identical
    #           settings such as time zone and character set. This setting is empty by default.
    #           For multiple statements, use semicolons as the separator.
    #           You can also include multiple variables in a single <code>SET</code> statement, such as
    #           <code>SET x=1, y=2</code>.</p>
    #
    #   @return [String]
    #
    ConnectionPoolConfigurationInfo = ::Struct.new(
      :max_connections_percent,
      :max_idle_connections_percent,
      :connection_borrow_timeout,
      :session_pinning_filters,
      :init_query,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_connections_percent ||= 0
        self.max_idle_connections_percent ||= 0
        self.connection_borrow_timeout ||= 0
      end
    end

    # @!attribute source_db_cluster_parameter_group_identifier
    #   <p>The identifier or Amazon Resource Name (ARN) for the source DB cluster parameter group.
    #               For information about
    #               creating an ARN,
    #               see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_Tagging.ARN.html USER_Tagging.ARN.Constructing">
    #                   Constructing an ARN for Amazon RDS</a> in the <i>Amazon Aurora User Guide</i>.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must specify a valid DB cluster parameter group.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute target_db_cluster_parameter_group_identifier
    #   <p>The identifier for the copied DB cluster parameter group.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Can't be null, empty, or blank</p>
    #               </li>
    #               <li>
    #                   <p>Must contain from 1 to 255 letters, numbers, or hyphens</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                   <p>Can't end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>my-cluster-param-group1</code>
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
    #   <p>A list of tags.
    #             For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
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
    #   <p>Contains the details of an Amazon RDS DB cluster parameter group.</p>
    #           <p>This data type is used as a response element in the <code>DescribeDBClusterParameterGroups</code> action.</p>
    #
    #   @return [DBClusterParameterGroup]
    #
    CopyDBClusterParameterGroupOutput = ::Struct.new(
      :db_cluster_parameter_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute source_db_cluster_snapshot_identifier
    #   <p>The identifier of the DB cluster snapshot to copy. This parameter isn't case-sensitive.</p>
    #           <p>You can't copy an encrypted, shared DB cluster snapshot from one Amazon Web Services Region to another.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must specify a valid system snapshot in the "available" state.</p>
    #               </li>
    #               <li>
    #                   <p>If the source snapshot is in the same Amazon Web Services Region as the copy, specify a valid DB snapshot identifier.</p>
    #               </li>
    #               <li>
    #                   <p>If the source snapshot is in a different Amazon Web Services Region than the copy,
    #                 specify a valid DB cluster snapshot ARN. For more information, go to
    #                 <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_CopySnapshot.html USER_CopySnapshot.AcrossRegions">
    #                     Copying Snapshots Across Amazon Web Services Regions</a> in the <i>Amazon Aurora User Guide</i>.</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>my-cluster-snapshot1</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute target_db_cluster_snapshot_identifier
    #   <p>The identifier of the new DB cluster snapshot to create from the source DB cluster snapshot. This parameter isn't case-sensitive.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>my-cluster-snapshot2</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services KMS key identifier for an encrypted DB cluster snapshot.
    #               The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the Amazon Web Services KMS key.</p>
    #           <p>If you copy an encrypted DB cluster snapshot from your Amazon Web Services account, you can specify a value for <code>KmsKeyId</code> to encrypt the copy with a new KMS key.
    #               If you don't specify a value for <code>KmsKeyId</code>, then the copy of the DB cluster snapshot is encrypted with the same KMS key as the source DB cluster snapshot.</p>
    #           <p>If you copy an encrypted DB cluster snapshot that is shared from another Amazon Web Services account, then you must specify a value for <code>KmsKeyId</code>.</p>
    #           <p>To copy an encrypted DB cluster snapshot to another Amazon Web Services Region, you must set <code>KmsKeyId</code> to the Amazon Web Services KMS key identifier
    #               you want to use to encrypt the copy of the DB cluster snapshot in the destination Amazon Web Services Region. KMS keys are specific to the Amazon Web Services
    #               Region that they are created in, and you can't use KMS keys from one Amazon Web Services Region
    #               in another Amazon Web Services Region.</p>
    #           <p>If you copy an unencrypted DB cluster snapshot and specify a value for the <code>KmsKeyId</code> parameter,
    #               an error is returned.</p>
    #
    #   @return [String]
    #
    # @!attribute pre_signed_url
    #   <p>The URL that contains a Signature Version 4 signed request for the <code>CopyDBClusterSnapshot</code> API action in the Amazon Web Services Region that contains the
    #               source DB cluster snapshot to copy. The <code>PreSignedUrl</code> parameter must be used when copying an encrypted DB cluster snapshot from another Amazon Web Services Region.
    #               Don't specify <code>PreSignedUrl</code> when you are copying an encrypted DB cluster snapshot in the same Amazon Web Services Region.</p>
    #           <p>The pre-signed URL must be a valid request for the <code>CopyDBClusterSnapshot</code> API action that can be
    #               executed in the source Amazon Web Services Region that contains the encrypted DB cluster snapshot to be copied.
    #               The pre-signed URL request must contain the following parameter values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>KmsKeyId</code> - The Amazon Web Services KMS key identifier for the KMS key to use to encrypt the copy of the DB
    #                   cluster snapshot in the destination Amazon Web Services Region. This is the same identifier for both the <code>CopyDBClusterSnapshot</code>
    #                   action that is called in the destination Amazon Web Services Region, and the action contained in the pre-signed URL.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DestinationRegion</code> - The name of the Amazon Web Services Region that the DB cluster snapshot is to be created in.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SourceDBClusterSnapshotIdentifier</code> - The DB cluster snapshot identifier for the encrypted DB cluster
    #                   snapshot to be copied. This identifier must be in the Amazon Resource Name (ARN) format for the source Amazon Web Services Region. For example,
    #                   if you are copying an encrypted DB cluster snapshot from the us-west-2 Amazon Web Services Region, then your <code>SourceDBClusterSnapshotIdentifier</code>
    #                   looks like the following example: <code>arn:aws:rds:us-west-2:123456789012:cluster-snapshot:aurora-cluster1-snapshot-20161115</code>.</p>
    #               </li>
    #            </ul>
    #           <p>To learn how to generate a Signature Version 4 signed request, see
    #
    #               <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html">
    #                   Authenticating Requests: Using Query Parameters (Amazon Web Services Signature Version 4)</a> and
    #               <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">
    #                   Signature Version 4 Signing Process</a>.</p>
    #           <note>
    #               <p>If you are using an Amazon Web Services SDK tool or the CLI, you can specify <code>SourceRegion</code> (or <code>--source-region</code> for the CLI)
    #                   instead of specifying <code>PreSignedUrl</code> manually. Specifying <code>SourceRegion</code> autogenerates a pre-signed URL that is a valid
    #                   request for the operation that can be executed in the source Amazon Web Services Region.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute copy_tags
    #   <p>A value that indicates whether to copy all tags from the source DB cluster snapshot to the target DB cluster snapshot.
    #               By default, tags are not copied.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>A list of tags.
    #             For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
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
    #   <p>Contains the details for an Amazon RDS DB cluster snapshot</p>
    #           <p>This data type is used as a response element
    #             in the <code>DescribeDBClusterSnapshots</code> action.</p>
    #
    #   @return [DBClusterSnapshot]
    #
    CopyDBClusterSnapshotOutput = ::Struct.new(
      :db_cluster_snapshot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute source_db_parameter_group_identifier
    #   <p>The identifier or ARN for the source DB parameter group.
    #           For information about
    #           creating an ARN,
    #           see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html USER_Tagging.ARN.Constructing">
    #               Constructing an ARN for Amazon RDS</a> in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must specify a valid DB parameter group.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute target_db_parameter_group_identifier
    #   <p>The identifier for the copied DB parameter group.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Can't be null, empty, or blank</p>
    #               </li>
    #               <li>
    #                   <p>Must contain from 1 to 255 letters, numbers, or hyphens</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                   <p>Can't end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>my-db-parameter-group</code>
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
    #   <p>A list of tags.
    #             For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
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
    #   <p>Contains the details of an Amazon RDS DB parameter group.</p>
    #           <p>This data type is used as a response element in the <code>DescribeDBParameterGroups</code> action.</p>
    #
    #   @return [DBParameterGroup]
    #
    CopyDBParameterGroupOutput = ::Struct.new(
      :db_parameter_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute source_db_snapshot_identifier
    #   <p>The identifier for the source DB snapshot.</p>
    #           <p>If the source snapshot is in the same Amazon Web Services Region as the copy, specify a valid DB
    #               snapshot identifier. For example, you might specify
    #                   <code>rds:mysql-instance1-snapshot-20130805</code>.</p>
    #           <p>If the source snapshot is in a different Amazon Web Services Region than the copy, specify a valid DB
    #               snapshot ARN. For example, you might specify
    #                   <code>arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20130805</code>.</p>
    #           <p>If you are copying from a shared manual DB snapshot,
    #             this parameter must be the Amazon Resource Name (ARN) of the shared DB snapshot.</p>
    #           <p>If you are copying an encrypted snapshot
    #               this parameter must be in the ARN format for the source Amazon Web Services Region,
    #               and must match the <code>SourceDBSnapshotIdentifier</code> in the <code>PreSignedUrl</code> parameter.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must specify a valid system snapshot in the "available" state.</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>rds:mydb-2012-04-02-00-01</code>
    #            </p>
    #           <p>Example: <code>arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20130805</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute target_db_snapshot_identifier
    #   <p>The identifier for the copy of the snapshot.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Can't be null, empty, or blank</p>
    #               </li>
    #               <li>
    #                   <p>Must contain from 1 to 255 letters, numbers, or hyphens</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                   <p>Can't end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>my-db-snapshot</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services KMS key identifier for an encrypted DB snapshot.
    #               The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.</p>
    #           <p>If you copy an encrypted DB snapshot from your Amazon Web Services account,
    #               you can specify a value for this parameter to encrypt the copy with a new KMS key.
    #               If you don't specify a value for this parameter,
    #               then the copy of the DB snapshot is encrypted with the same Amazon Web Services KMS key as the source DB snapshot.</p>
    #           <p>If you copy an encrypted DB snapshot that is shared from another Amazon Web Services account,
    #               then you must specify a value for this parameter.</p>
    #           <p>If you specify this parameter when you copy an unencrypted snapshot,
    #               the copy is encrypted.</p>
    #           <p>If you copy an encrypted snapshot to a different Amazon Web Services Region, then you must specify
    #               an Amazon Web Services KMS key identifier for the destination Amazon Web Services Region. KMS keys are specific to the Amazon Web Services Region
    #               that they are created in, and you can't use KMS keys from one Amazon Web Services Region in another
    #               Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags.
    #             For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute copy_tags
    #   <p>A value that indicates whether to copy all tags from the source DB snapshot to the target DB snapshot. By default, tags are not copied.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute pre_signed_url
    #   <p>The URL that contains a Signature Version 4 signed request for the
    #                   <code>CopyDBSnapshot</code> API action in the source Amazon Web Services Region that contains the
    #               source DB snapshot to copy.</p>
    #           <p>You must specify this parameter when you copy an encrypted DB snapshot from another
    #               Amazon Web Services Region by using the Amazon RDS API. Don't specify <code>PreSignedUrl</code> when you are
    #               copying an encrypted DB snapshot in the same Amazon Web Services Region.</p>
    #           <p>The presigned URL must be a valid request for the <code>CopyDBSnapshot</code> API action
    #               that can be executed in the source Amazon Web Services Region that contains the encrypted DB snapshot to be copied.
    #               The presigned URL request must contain the following parameter values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>DestinationRegion</code> - The Amazon Web Services Region that the encrypted DB snapshot is copied to.
    #                       This Amazon Web Services Region is the same one where the <code>CopyDBSnapshot</code> action is called that contains this presigned URL.</p>
    #                   <p>For example, if you copy an encrypted DB snapshot from the us-west-2 Amazon Web Services Region
    #                       to the us-east-1 Amazon Web Services Region, then you call the <code>CopyDBSnapshot</code> action in
    #                       the us-east-1 Amazon Web Services Region and provide a presigned URL that contains a call to the
    #                           <code>CopyDBSnapshot</code> action in the us-west-2 Amazon Web Services Region. For this
    #                       example, the <code>DestinationRegion</code> in the presigned URL must be set to
    #                       the us-east-1 Amazon Web Services Region.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>KmsKeyId</code> - The Amazon Web Services KMS key identifier for the KMS key to use to encrypt the copy of the DB snapshot in the destination Amazon Web Services Region.
    #                       This is the same identifier for both the <code>CopyDBSnapshot</code> action that is called in the destination Amazon Web Services Region,
    #                       and the action contained in the presigned URL.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SourceDBSnapshotIdentifier</code> - The DB snapshot identifier for the encrypted snapshot to be copied.
    #                       This identifier must be in the Amazon Resource Name (ARN) format for the source Amazon Web Services Region.
    #                       For example, if you are copying an encrypted DB snapshot from the us-west-2 Amazon Web Services Region, then your <code>SourceDBSnapshotIdentifier</code> looks like
    #                       the following example: <code>arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20161115</code>.</p>
    #               </li>
    #            </ul>
    #           <p>To learn how to generate a Signature Version 4 signed request, see
    #           <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html">Authenticating Requests: Using Query Parameters (Amazon Web Services Signature Version 4)</a> and
    #           <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4 Signing Process</a>.</p>
    #           <note>
    #               <p>If you are using an Amazon Web Services SDK tool or the CLI, you can specify <code>SourceRegion</code> (or <code>--source-region</code> for the CLI)
    #                  instead of specifying <code>PreSignedUrl</code> manually. Specifying <code>SourceRegion</code> autogenerates a pre-signed URL that is a valid
    #                  request for the operation that can be executed in the source Amazon Web Services Region.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute option_group_name
    #   <p>The name of an option group to associate with the copy of the snapshot.</p>
    #           <p>Specify this option if you are copying a snapshot from one Amazon Web Services Region to another,
    #               and your DB instance uses a nondefault option group.
    #               If your source DB instance uses Transparent Data Encryption for Oracle or Microsoft SQL Server,
    #               you must specify this option when copying across Amazon Web Services Regions.
    #               For more information, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CopySnapshot.html USER_CopySnapshot.Options">Option group considerations</a> in the <i>Amazon RDS User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute target_custom_availability_zone
    #   <p>The external custom Availability Zone (CAZ) identifier for the target CAZ.</p>
    #           <p>Example: <code>rds-caz-aiqhTgQv</code>.</p>
    #
    #   @return [String]
    #
    CopyDBSnapshotInput = ::Struct.new(
      :source_db_snapshot_identifier,
      :target_db_snapshot_identifier,
      :kms_key_id,
      :tags,
      :copy_tags,
      :pre_signed_url,
      :option_group_name,
      :target_custom_availability_zone,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_snapshot
    #   <p>Contains the details of an Amazon RDS DB snapshot.</p>
    #           <p>This data type is used as a response element
    #             in the <code>DescribeDBSnapshots</code> action.</p>
    #
    #   @return [DBSnapshot]
    #
    CopyDBSnapshotOutput = ::Struct.new(
      :db_snapshot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute source_option_group_identifier
    #   <p>The identifier for the source option group.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must specify a valid option group.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute target_option_group_identifier
    #   <p>The identifier for the copied option group.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Can't be null, empty, or blank</p>
    #               </li>
    #               <li>
    #                   <p>Must contain from 1 to 255 letters, numbers, or hyphens</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                   <p>Can't end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>my-option-group</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute target_option_group_description
    #   <p>The description for the copied option group.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags.
    #             For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [Array<Tag>]
    #
    CopyOptionGroupInput = ::Struct.new(
      :source_option_group_identifier,
      :target_option_group_identifier,
      :target_option_group_description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute option_group
    #   <p></p>
    #
    #   @return [OptionGroup]
    #
    CopyOptionGroupOutput = ::Struct.new(
      :option_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute engine
    #   <p>The database engine to use for your custom engine version (CEV). The only supported value is
    #               <code>custom-oracle-ee</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The name of your CEV. The name format is <code>19.<i>customized_string</i>
    #               </code>. For example,
    #               a valid name is <code>19.my_cev1</code>. This setting is required for RDS Custom for Oracle, but optional for Amazon RDS.
    #               The combination of <code>Engine</code> and <code>EngineVersion</code> is unique per customer per Region.</p>
    #
    #   @return [String]
    #
    # @!attribute database_installation_files_s3_bucket_name
    #   <p>The name of an Amazon S3 bucket that contains database installation files for your CEV. For example, a valid
    #               bucket name is <code>my-custom-installation-files</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute database_installation_files_s3_prefix
    #   <p>The Amazon S3 directory that contains the database installation files for your CEV. For example, a valid
    #               bucket name is <code>123456789012/cev1</code>. If this setting isn't specified, no prefix is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services KMS key identifier for an encrypted CEV. A symmetric KMS key is required for
    #               RDS Custom, but optional for Amazon RDS.</p>
    #           <p>If you have an existing symmetric KMS key in your account, you can use it with RDS Custom.
    #               No further action is necessary. If you don't already have a symmetric KMS key in your account,
    #               follow the instructions in <a href="https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html create-symmetric-cmk">
    #                   Creating symmetric KMS keys</a> in the <i>Amazon Web Services Key Management Service
    #                       Developer Guide</i>.</p>
    #           <p>You can choose the same symmetric key when you create a CEV and a DB instance, or choose different keys.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>An optional description of your CEV.</p>
    #
    #   @return [String]
    #
    # @!attribute manifest
    #   <p>The CEV manifest, which is a JSON document that describes the installation .zip files stored in Amazon S3.
    #               Specify the name/value pairs in a file or a quoted string. RDS Custom applies the patches in the order in which
    #               they are listed.</p>
    #           <p>The following JSON fields are valid:</p>
    #           <dl>
    #               <dt>MediaImportTemplateVersion</dt>
    #               <dd>
    #                       <p>Version of the CEV manifest. The date is in the format <code>YYYY-MM-DD</code>.</p>
    #                   </dd>
    #               <dt>databaseInstallationFileNames</dt>
    #               <dd>
    #                       <p>Ordered list of installation files for the CEV.</p>
    #                   </dd>
    #               <dt>opatchFileNames</dt>
    #               <dd>
    #                       <p>Ordered list of OPatch installers used for the Oracle DB engine.</p>
    #                   </dd>
    #               <dt>psuRuPatchFileNames</dt>
    #               <dd>
    #                       <p>The PSU and RU patches for this CEV.</p>
    #                   </dd>
    #               <dt>OtherPatchFileNames</dt>
    #               <dd>
    #                       <p>The patches that are not in the list of PSU and RU patches.
    #                       Amazon RDS applies these patches after applying the PSU and RU patches.</p>
    #                   </dd>
    #            </dl>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-cev.html custom-cev.preparing.manifest">
    #               Creating the CEV manifest</a> in the <i>Amazon RDS User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags.
    #             For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [Array<Tag>]
    #
    CreateCustomDBEngineVersionInput = ::Struct.new(
      :engine,
      :engine_version,
      :database_installation_files_s3_bucket_name,
      :database_installation_files_s3_prefix,
      :kms_key_id,
      :description,
      :manifest,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This data type is used as a response element in the action <code>DescribeDBEngineVersions</code>.</p>
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
    #   <p>The default character set for new instances of this engine version,
    #               if the <code>CharacterSetName</code> parameter of the CreateDBInstance API
    #               isn't specified.</p>
    #
    #   @return [CharacterSet]
    #
    # @!attribute supported_character_sets
    #   <p>A list of the character sets supported by this engine for the <code>CharacterSetName</code> parameter of the <code>CreateDBInstance</code> operation.</p>
    #
    #   @return [Array<CharacterSet>]
    #
    # @!attribute supported_nchar_character_sets
    #   <p>A list of the character sets supported by the Oracle DB engine for the <code>NcharCharacterSetName</code> parameter of the <code>CreateDBInstance</code> operation.</p>
    #
    #   @return [Array<CharacterSet>]
    #
    # @!attribute valid_upgrade_target
    #   <p>A list of engine versions that this database engine version can be upgraded to.</p>
    #
    #   @return [Array<UpgradeTarget>]
    #
    # @!attribute supported_timezones
    #   <p>A list of the time zones supported by this engine for the
    #               <code>Timezone</code> parameter of the <code>CreateDBInstance</code> action.</p>
    #
    #   @return [Array<Timezone>]
    #
    # @!attribute exportable_log_types
    #   <p>The types of logs that the database engine has available for export to CloudWatch Logs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute supports_log_exports_to_cloudwatch_logs
    #   <p>A value that indicates whether the engine version supports exporting the log types specified by ExportableLogTypes to CloudWatch Logs.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute supports_read_replica
    #   <p>Indicates whether the database engine version supports read replicas.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute supported_engine_modes
    #   <p>A list of the supported DB engine modes.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute supported_feature_names
    #   <p>A list of features supported by the DB engine.</p>
    #           <p>The supported features vary by DB engine and DB engine version.</p>
    #           <p>To determine the supported features for a specific DB engine and DB engine version using the CLI,
    #           use the following command:</p>
    #           <p>
    #               <code>aws rds describe-db-engine-versions --engine <engine_name> --engine-version <engine_version></code>
    #            </p>
    #           <p>For example, to determine the supported features for RDS for PostgreSQL version 13.3 using the CLI,
    #           use the following command:</p>
    #           <p>
    #               <code>aws rds describe-db-engine-versions --engine postgres --engine-version 13.3</code>
    #            </p>
    #           <p>The supported features are listed under <code>SupportedFeatureNames</code> in the output.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute status
    #   <p>The status of the DB engine version, either <code>available</code> or <code>deprecated</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute supports_parallel_query
    #   <p>A value that indicates whether you can use Aurora parallel query with a specific DB engine version.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute supports_global_databases
    #   <p>A value that indicates whether you can use Aurora global databases with a specific DB engine version.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute major_engine_version
    #   <p>The major engine version of the CEV.</p>
    #
    #   @return [String]
    #
    # @!attribute database_installation_files_s3_bucket_name
    #   <p>The name of the Amazon S3 bucket that contains your database installation files.</p>
    #
    #   @return [String]
    #
    # @!attribute database_installation_files_s3_prefix
    #   <p>The Amazon S3 directory that contains the database installation files.
    #               If not specified, then no prefix is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute db_engine_version_arn
    #   <p>The ARN of the custom engine version.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services KMS key identifier for an encrypted CEV. This parameter is required for
    #               RDS Custom, but optional for Amazon RDS.</p>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The creation time of the DB engine version.</p>
    #
    #   @return [Time]
    #
    # @!attribute tag_list
    #   <p>A list of tags.
    #             For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute supports_babelfish
    #   <p>A value that indicates whether the engine version supports Babelfish for Aurora PostgreSQL.</p>
    #
    #   @return [Boolean]
    #
    CreateCustomDBEngineVersionOutput = ::Struct.new(
      :engine,
      :engine_version,
      :db_parameter_group_family,
      :db_engine_description,
      :db_engine_version_description,
      :default_character_set,
      :supported_character_sets,
      :supported_nchar_character_sets,
      :valid_upgrade_target,
      :supported_timezones,
      :exportable_log_types,
      :supports_log_exports_to_cloudwatch_logs,
      :supports_read_replica,
      :supported_engine_modes,
      :supported_feature_names,
      :status,
      :supports_parallel_query,
      :supports_global_databases,
      :major_engine_version,
      :database_installation_files_s3_bucket_name,
      :database_installation_files_s3_prefix,
      :db_engine_version_arn,
      :kms_key_id,
      :create_time,
      :tag_list,
      :supports_babelfish,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.supports_log_exports_to_cloudwatch_logs ||= false
        self.supports_read_replica ||= false
        self.supports_parallel_query ||= false
        self.supports_global_databases ||= false
        self.supports_babelfish ||= false
      end
    end

    # @!attribute db_cluster_identifier
    #   <p>The DB cluster identifier of the DB cluster associated with the endpoint. This parameter is
    #               stored as a lowercase string.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_endpoint_identifier
    #   <p>The identifier to use for the new endpoint. This parameter is stored as a lowercase string.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint_type
    #   <p>The type of the endpoint, one of: <code>READER</code>, <code>WRITER</code>, <code>ANY</code>.</p>
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
    #               All other eligible instances are reachable through the custom endpoint.
    #               This parameter is relevant only if the list of static members is empty.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>The tags to be assigned to the Amazon RDS resource.</p>
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

    # <p>This data type represents the information you need to connect to an Amazon Aurora DB cluster.
    #       This data type is used as a response element in the following actions:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>CreateDBClusterEndpoint</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>DescribeDBClusterEndpoints</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>ModifyDBClusterEndpoint</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>DeleteDBClusterEndpoint</code>
    #                </p>
    #             </li>
    #          </ul>
    #         <p>For the data structure that represents Amazon RDS DB instance endpoints,
    #         see <code>Endpoint</code>.</p>
    #
    # @!attribute db_cluster_endpoint_identifier
    #   <p>The identifier associated with the endpoint. This parameter is stored as a lowercase string.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_identifier
    #   <p>The DB cluster identifier of the DB cluster associated with the endpoint. This parameter is
    #               stored as a lowercase string.</p>
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
    #   <p>The current status of the endpoint. One of: <code>creating</code>, <code>available</code>, <code>deleting</code>, <code>inactive</code>, <code>modifying</code>. The <code>inactive</code> state applies to an endpoint that can't be used for a certain kind of cluster,
    #        such as a <code>writer</code> endpoint for a read-only secondary cluster in a global database.</p>
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
    #          <code>WRITER</code>, <code>ANY</code>.</p>
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
    #          All other eligible instances are reachable through the custom endpoint.
    #          Only relevant if the list of static members is empty.</p>
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

    # <p></p>
    #
    # @!attribute availability_zones
    #   <p>A list of Availability Zones (AZs) where DB instances in the DB cluster can be created.</p>
    #           <p>For information on Amazon Web Services Regions and Availability Zones, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Concepts.RegionsAndAvailabilityZones.html">Choosing the Regions and
    #                 Availability Zones</a> in the <i>Amazon Aurora User Guide</i>.</p>
    #           <p>Valid for: Aurora DB clusters only</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute backup_retention_period
    #   <p>The number of days for which automated backups are retained.</p>
    #           <p>Default: 1</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be a value from 1 to 35</p>
    #               </li>
    #            </ul>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [Integer]
    #
    # @!attribute character_set_name
    #   <p>A value that indicates that the DB cluster should be associated with the specified CharacterSet.</p>
    #           <p>Valid for: Aurora DB clusters only</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The name for your database of up to 64 alphanumeric characters. If you do not
    #               provide a name, Amazon RDS doesn't create a database in the DB cluster you are
    #               creating.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_identifier
    #   <p>The DB cluster identifier. This parameter is stored as a lowercase string.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>my-cluster1</code>
    #            </p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group to associate
    #               with this DB cluster. If you do not specify a value, then
    #             the default DB cluster parameter group for the specified DB engine and version is used.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If supplied, must match the name of an existing DB cluster parameter group.</p>
    #               </li>
    #            </ul>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_security_group_ids
    #   <p>A list of EC2 VPC security groups to associate with this DB cluster.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute db_subnet_group_name
    #   <p>A DB subnet group to associate with this DB cluster.</p>
    #           <p>This setting is required to create a Multi-AZ DB cluster.</p>
    #           <p>Constraints: Must match the name of an existing DBSubnetGroup. Must not be default.</p>
    #           <p>Example: <code>mydbsubnetgroup</code>
    #            </p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [String]
    #
    # @!attribute engine
    #   <p>The name of the database engine to be used for this DB cluster.</p>
    #           <p>Valid Values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>aurora</code> (for MySQL 5.6-compatible Aurora)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>aurora-mysql</code> (for MySQL 5.7-compatible and MySQL 8.0-compatible Aurora)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>aurora-postgresql</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>mysql</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>postgres</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The version number of the database engine to use.</p>
    #           <p>To list all of the available engine versions for MySQL 5.6-compatible Aurora, use the following command:</p>
    #           <p>
    #               <code>aws rds describe-db-engine-versions --engine aurora --query "DBEngineVersions[].EngineVersion"</code>
    #            </p>
    #           <p>To list all of the available engine versions for MySQL 5.7-compatible and MySQL 8.0-compatible Aurora, use the following command:</p>
    #           <p>
    #               <code>aws rds describe-db-engine-versions --engine aurora-mysql --query "DBEngineVersions[].EngineVersion"</code>
    #            </p>
    #           <p>To list all of the available engine versions for Aurora PostgreSQL, use the following command:</p>
    #           <p>
    #               <code>aws rds describe-db-engine-versions --engine aurora-postgresql --query "DBEngineVersions[].EngineVersion"</code>
    #            </p>
    #           <p>To list all of the available engine versions for RDS for MySQL, use the following command:</p>
    #           <p>
    #               <code>aws rds describe-db-engine-versions --engine mysql --query "DBEngineVersions[].EngineVersion"</code>
    #            </p>
    #           <p>To list all of the available engine versions for RDS for PostgreSQL, use the following command:</p>
    #           <p>
    #               <code>aws rds describe-db-engine-versions --engine postgres --query "DBEngineVersions[].EngineVersion"</code>
    #            </p>
    #           <p>
    #               <b>Aurora MySQL</b>
    #            </p>
    #           <p>For information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Updates.html">MySQL on Amazon RDS Versions</a> in the
    #             <i>Amazon Aurora User Guide</i>.</p>
    #           <p>
    #               <b>Aurora PostgreSQL</b>
    #            </p>
    #           <p>For information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraPostgreSQL.Updates.20180305.html">Amazon Aurora PostgreSQL releases and engine versions</a> in the
    #              <i>Amazon Aurora User Guide</i>.</p>
    #           <p>
    #               <b>MySQL</b>
    #            </p>
    #           <p>For information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MySQL.html MySQL.Concepts.VersionMgmt">MySQL on Amazon RDS Versions</a> in the
    #             <i>Amazon RDS User Guide</i>.</p>
    #           <p>
    #               <b>PostgreSQL</b>
    #            </p>
    #           <p>For information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_PostgreSQL.html PostgreSQL.Concepts">Amazon RDS for PostgreSQL versions and extensions</a> in the
    #             <i>Amazon RDS User Guide</i>.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port number on which the instances in the DB cluster accept connections.</p>
    #           <p>
    #               <b>RDS for MySQL and Aurora MySQL</b>
    #            </p>
    #           <p>Default: <code>3306</code>
    #            </p>
    #           <p>Valid values: <code>1150-65535</code>
    #            </p>
    #           <p>
    #               <b>RDS for PostgreSQL and Aurora PostgreSQL</b>
    #            </p>
    #           <p>Default: <code>5432</code>
    #            </p>
    #           <p>Valid values: <code>1150-65535</code>
    #            </p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [Integer]
    #
    # @!attribute master_username
    #   <p>The name of the master user for the DB cluster.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be 1 to 16 letters or numbers.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Can't be a reserved word for the chosen database engine.</p>
    #               </li>
    #            </ul>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [String]
    #
    # @!attribute master_user_password
    #   <p>The password for the master database user. This password can contain any printable ASCII character except "/", """, or "@".</p>
    #           <p>Constraints: Must contain from 8 to 41 characters.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [String]
    #
    # @!attribute option_group_name
    #   <p>A value that indicates that the DB cluster should be associated with the specified option group.</p>
    #           <p>DB clusters are associated with a default option group that can't be modified.</p>
    #
    #   @return [String]
    #
    # @!attribute preferred_backup_window
    #   <p>The daily time range during which automated backups are created
    #           if automated backups are enabled
    #           using the <code>BackupRetentionPeriod</code> parameter.</p>
    #           <p>The default is a 30-minute window selected at random from an
    #           8-hour block of time for each Amazon Web Services Region.
    #           To view the time blocks available, see
    #           <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html Aurora.Managing.Backups.BackupWindow">
    #               Backup window</a> in the <i>Amazon Aurora User Guide</i>.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Must be in Universal Coordinated Time (UTC).</p>
    #               </li>
    #               <li>
    #                   <p>Must not conflict with the preferred maintenance window.</p>
    #               </li>
    #               <li>
    #                   <p>Must be at least 30 minutes.</p>
    #               </li>
    #            </ul>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [String]
    #
    # @!attribute preferred_maintenance_window
    #   <p>The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p>
    #           <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #            </p>
    #           <p>The default is a 30-minute window selected at random from an
    #               8-hour block of time for each Amazon Web Services Region, occurring on a random day of the
    #               week. To see the time blocks available, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html AdjustingTheMaintenanceWindow.Aurora">
    #                   Adjusting the Preferred DB Cluster Maintenance Window</a> in the <i>Amazon Aurora User Guide</i>.</p>
    #           <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
    #           <p>Constraints: Minimum 30-minute window.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [String]
    #
    # @!attribute replication_source_identifier
    #   <p>The Amazon Resource Name (ARN) of the source DB instance or DB cluster if this DB
    #               cluster is created as a read replica.</p>
    #           <p>Valid for: Aurora DB clusters only</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags to assign to the DB cluster.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute storage_encrypted
    #   <p>A value that indicates whether the DB cluster is encrypted.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [Boolean]
    #
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services KMS key identifier for an encrypted DB cluster.</p>
    #           <p>The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.
    #                    To use a KMS key in a different Amazon Web Services account, specify the key ARN or alias ARN.</p>
    #           <p>When a KMS key isn't specified in <code>KmsKeyId</code>:</p>
    #           <ul>
    #               <li>
    #                   <p>If <code>ReplicationSourceIdentifier</code> identifies an encrypted
    #                       source, then Amazon RDS will use the KMS key used to encrypt the
    #                       source. Otherwise, Amazon RDS will use your default KMS key.</p>
    #               </li>
    #               <li>
    #                   <p>If the <code>StorageEncrypted</code> parameter is enabled and
    #                           <code>ReplicationSourceIdentifier</code> isn't specified, then Amazon RDS
    #                       will use your default KMS key.</p>
    #               </li>
    #            </ul>
    #           <p>There is a default KMS key for your Amazon Web Services account. Your Amazon Web Services account
    #               has a different default KMS key for each Amazon Web Services Region.</p>
    #           <p>If you create a read replica of an encrypted DB cluster in another Amazon Web Services Region, you
    #               must set <code>KmsKeyId</code> to a KMS key identifier that is valid in the destination Amazon Web Services
    #               Region. This KMS key is used to encrypt the read replica in that Amazon Web Services Region.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [String]
    #
    # @!attribute pre_signed_url
    #   <p>A URL that contains a Signature Version 4 signed request for
    #               the <code>CreateDBCluster</code> action to be called in the source Amazon Web Services Region where the DB cluster is replicated from.
    #               Specify <code>PreSignedUrl</code> only when you are performing cross-Region replication from an encrypted DB cluster.</p>
    #           <p>The pre-signed URL must be a valid request for the <code>CreateDBCluster</code> API action
    #               that can be executed in the source Amazon Web Services Region that contains the encrypted DB cluster to be copied.</p>
    #           <p>The pre-signed URL request must contain the following parameter values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>KmsKeyId</code> - The Amazon Web Services KMS key identifier for the KMS key to use to encrypt the copy of
    #                   the DB cluster in the destination Amazon Web Services Region. This should refer to the same KMS key for both the <code>CreateDBCluster</code>
    #                   action that is called in the destination Amazon Web Services Region, and the action contained in the pre-signed URL.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DestinationRegion</code> - The name of the Amazon Web Services Region that Aurora read replica will
    #                       be created in.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ReplicationSourceIdentifier</code> - The DB cluster identifier for the encrypted DB cluster to be copied.
    #                   This identifier must be in the Amazon Resource Name (ARN) format for the source Amazon Web Services Region. For example, if you are copying an
    #                   encrypted DB cluster from the us-west-2 Amazon Web Services Region, then your <code>ReplicationSourceIdentifier</code> would look like
    #                   Example: <code>arn:aws:rds:us-west-2:123456789012:cluster:aurora-cluster1</code>.</p>
    #               </li>
    #            </ul>
    #           <p>To learn how to generate a Signature Version 4 signed request, see
    #               <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html">
    #                   Authenticating Requests: Using Query Parameters (Amazon Web Services Signature Version 4)</a> and
    #               <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">
    #                   Signature Version 4 Signing Process</a>.</p>
    #           <note>
    #               <p>If you are using an Amazon Web Services SDK tool or the CLI, you can specify <code>SourceRegion</code> (or <code>--source-region</code> for the CLI)
    #                   instead of specifying <code>PreSignedUrl</code> manually. Specifying <code>SourceRegion</code> autogenerates a pre-signed URL that is a valid
    #                   request for the operation that can be executed in the source Amazon Web Services Region.</p>
    #           </note>
    #           <p>Valid for: Aurora DB clusters only</p>
    #
    #   @return [String]
    #
    # @!attribute enable_iam_database_authentication
    #   <p>A value that indicates whether to enable mapping of Amazon Web Services Identity and Access
    #               Management (IAM) accounts to database accounts. By default, mapping isn't
    #               enabled.</p>
    #           <p>For more information, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html">
    #                   IAM Database Authentication</a> in the <i>Amazon Aurora User Guide.</i>.</p>
    #           <p>Valid for: Aurora DB clusters only</p>
    #
    #   @return [Boolean]
    #
    # @!attribute backtrack_window
    #   <p>The target backtrack window, in seconds. To disable backtracking, set this value to
    #               0.</p>
    #           <p>Default: 0</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If specified, this value must be set to a number from 0 to 259,200 (72 hours).</p>
    #               </li>
    #            </ul>
    #           <p>Valid for: Aurora MySQL DB clusters only</p>
    #
    #   @return [Integer]
    #
    # @!attribute enable_cloudwatch_logs_exports
    #   <p>The list of log types that need to be enabled for exporting to CloudWatch Logs. The values
    #               in the list depend on the DB engine being used.</p>
    #           <p>
    #               <b>RDS for MySQL</b>
    #            </p>
    #           <p>Possible values are <code>error</code>, <code>general</code>, and <code>slowquery</code>.</p>
    #           <p>
    #               <b>RDS for PostgreSQL</b>
    #            </p>
    #           <p>Possible values are <code>postgresql</code> and <code>upgrade</code>.</p>
    #           <p>
    #               <b>Aurora MySQL</b>
    #            </p>
    #           <p>Possible values are <code>audit</code>, <code>error</code>, <code>general</code>, and <code>slowquery</code>.</p>
    #           <p>
    #               <b>Aurora PostgreSQL</b>
    #            </p>
    #           <p>Possible value is <code>postgresql</code>.</p>
    #           <p>For more information about exporting CloudWatch Logs for Amazon RDS, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html USER_LogAccess.Procedural.UploadtoCloudWatch">Publishing Database Logs to Amazon CloudWatch Logs</a> in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>For more information about exporting CloudWatch Logs for Amazon Aurora, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html USER_LogAccess.Procedural.UploadtoCloudWatch">Publishing Database Logs to Amazon CloudWatch Logs</a> in the <i>Amazon Aurora User Guide</i>.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute engine_mode
    #   <p>The DB engine mode of the DB cluster, either <code>provisioned</code>, <code>serverless</code>,
    #               <code>parallelquery</code>, <code>global</code>, or <code>multimaster</code>.</p>
    #           <p>The <code>parallelquery</code> engine mode isn't required for Aurora MySQL version 1.23 and higher 1.x versions,
    #               and version 2.09 and higher 2.x versions.</p>
    #           <p>The <code>global</code> engine mode isn't required for Aurora MySQL version 1.22 and higher 1.x versions,
    #               and <code>global</code> engine mode isn't required for any 2.x versions.</p>
    #           <p>The <code>multimaster</code> engine mode only applies for DB clusters created with Aurora MySQL version 5.6.10a.</p>
    #           <p>For Aurora PostgreSQL, the <code>global</code> engine mode isn't required, and both the <code>parallelquery</code>
    #               and the <code>multimaster</code> engine modes currently aren't supported.</p>
    #           <p>Limitations and requirements apply to some DB engine modes. For more information, see the
    #               following sections in the <i>Amazon Aurora User Guide</i>:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html aurora-serverless.limitations">
    #                           Limitations of Aurora Serverless v1</a>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-mysql-parallel-query.html aurora-mysql-parallel-query-limitations">
    #                           Limitations of Parallel Query</a>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database.html aurora-global-database.limitations">
    #                           Limitations of Aurora Global Databases</a>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-multi-master.html aurora-multi-master-limitations">
    #                           Limitations of Multi-Master Clusters</a>
    #                  </p>
    #               </li>
    #            </ul>
    #           <p>Valid for: Aurora DB clusters only</p>
    #
    #   @return [String]
    #
    # @!attribute scaling_configuration
    #   <p>For DB clusters in <code>serverless</code> DB engine mode, the scaling properties of the DB cluster.</p>
    #           <p>Valid for: Aurora DB clusters only</p>
    #
    #   @return [ScalingConfiguration]
    #
    # @!attribute deletion_protection
    #   <p>A value that indicates whether the DB cluster has deletion protection enabled.
    #               The database can't be deleted when deletion protection is enabled. By default,
    #               deletion protection isn't enabled.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [Boolean]
    #
    # @!attribute global_cluster_identifier
    #   <p>The global cluster ID of an Aurora cluster that becomes the primary cluster
    #               in the new global database cluster.</p>
    #           <p>Valid for: Aurora DB clusters only</p>
    #
    #   @return [String]
    #
    # @!attribute enable_http_endpoint
    #   <p>A value that indicates whether to enable the HTTP endpoint for an Aurora Serverless v1 DB cluster. By default, the HTTP endpoint
    #               is disabled.</p>
    #           <p>When enabled, the HTTP endpoint provides a connectionless web service API for running
    #               SQL queries on the Aurora Serverless v1 DB cluster. You can also query your database
    #               from inside the RDS console with the query editor.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html">Using the Data API for Aurora Serverless v1</a> in the
    #               <i>Amazon Aurora User Guide</i>.</p>
    #           <p>Valid for: Aurora DB clusters only</p>
    #
    #   @return [Boolean]
    #
    # @!attribute copy_tags_to_snapshot
    #   <p>A value that indicates whether to copy all tags from the DB cluster to snapshots of the DB cluster.
    #               The default is not to copy them.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [Boolean]
    #
    # @!attribute domain
    #   <p>The Active Directory directory ID to create the DB cluster in.</p>
    #           <p>For Amazon Aurora DB clusters, Amazon RDS can use Kerberos authentication to authenticate users that connect to the DB cluster.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/kerberos-authentication.html">Kerberos authentication</a>
    #               in the <i>Amazon Aurora User Guide</i>.</p>
    #           <p>Valid for: Aurora DB clusters only</p>
    #
    #   @return [String]
    #
    # @!attribute domain_iam_role_name
    #   <p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>
    #           <p>Valid for: Aurora DB clusters only</p>
    #
    #   @return [String]
    #
    # @!attribute enable_global_write_forwarding
    #   <p>A value that indicates whether to enable this DB cluster to forward write operations to the primary cluster of an
    #         Aurora global database (<a>GlobalCluster</a>). By default, write operations are not allowed on Aurora DB clusters that
    #         are secondary clusters in an Aurora global database.</p>
    #           <p>You can set this value only on Aurora DB clusters that are members of an Aurora global database. With this parameter
    #         enabled, a secondary cluster can forward writes to the current primary cluster and the resulting changes are replicated back to
    #         this cluster. For the primary DB cluster of an Aurora global database, this value is used immediately if the
    #           primary is demoted by the <a>FailoverGlobalCluster</a> API operation, but it does nothing until then.</p>
    #           <p>Valid for: Aurora DB clusters only</p>
    #
    #   @return [Boolean]
    #
    # @!attribute db_cluster_instance_class
    #   <p>The compute and memory capacity of each DB instance in the Multi-AZ DB cluster, for example db.m6g.xlarge.
    #               Not all DB instance classes are available in all Amazon Web Services Regions, or for all database engines.</p>
    #           <p>For the full list of DB instance classes and availability for your engine, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html">DB instance class</a> in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>This setting is required to create a Multi-AZ DB cluster.</p>
    #           <p>Valid for: Multi-AZ DB clusters only</p>
    #
    #   @return [String]
    #
    # @!attribute allocated_storage
    #   <p>The amount of storage in gibibytes (GiB) to allocate to each DB instance in the Multi-AZ DB cluster.</p>
    #           <p>This setting is required to create a Multi-AZ DB cluster.</p>
    #           <p>Valid for: Multi-AZ DB clusters only</p>
    #
    #   @return [Integer]
    #
    # @!attribute storage_type
    #   <p>Specifies the storage type to be associated with the DB cluster.</p>
    #           <p>This setting is required to create a Multi-AZ DB cluster.</p>
    #           <p>Valid values: <code>io1</code>
    #            </p>
    #           <p>When specified, a value for the <code>Iops</code> parameter is required.</p>
    #           <p>Default: <code>io1</code>
    #            </p>
    #           <p>Valid for: Multi-AZ DB clusters only</p>
    #
    #   @return [String]
    #
    # @!attribute iops
    #   <p>The amount of Provisioned IOPS (input/output operations per second) to be initially allocated
    #               for each DB instance in the Multi-AZ DB cluster.</p>
    #           <p>For information about valid <code>Iops</code> values, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html USER_PIOPS">Amazon RDS Provisioned IOPS storage to improve performance</a> in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>This setting is required to create a Multi-AZ DB cluster.</p>
    #           <p>Constraints: Must be a multiple between .5 and 50 of the storage amount for the DB cluster.</p>
    #           <p>Valid for: Multi-AZ DB clusters only</p>
    #
    #   @return [Integer]
    #
    # @!attribute publicly_accessible
    #   <p>A value that indicates whether the DB cluster is publicly accessible.</p>
    #           <p>When the DB cluster is publicly accessible, its Domain Name System (DNS) endpoint
    #               resolves to the private IP address from within the DB cluster's virtual private cloud
    #               (VPC). It resolves to the public IP address from outside of the DB cluster's VPC. Access
    #               to the DB cluster is ultimately controlled by the security group it uses. That public
    #               access isn't permitted if the security group assigned to the DB cluster doesn't permit
    #               it.</p>
    #           <p>When the DB cluster isn't publicly accessible, it is an internal DB cluster with a DNS name that resolves to a private IP address.</p>
    #           <p>Default: The default behavior varies depending on whether <code>DBSubnetGroupName</code> is specified.</p>
    #           <p>If <code>DBSubnetGroupName</code> isn't specified, and <code>PubliclyAccessible</code> isn't specified, the following applies:</p>
    #           <ul>
    #               <li>
    #                   <p>If the default VPC in the target Region doesn’t have an internet gateway attached to it, the DB cluster is private.</p>
    #               </li>
    #               <li>
    #                   <p>If the default VPC in the target Region has an internet gateway attached to it, the DB cluster is public.</p>
    #               </li>
    #            </ul>
    #           <p>If <code>DBSubnetGroupName</code> is specified, and <code>PubliclyAccessible</code> isn't specified, the following applies:</p>
    #           <ul>
    #               <li>
    #                   <p>If the subnets are part of a VPC that doesn’t have an internet gateway attached to it, the DB cluster is private.</p>
    #               </li>
    #               <li>
    #                   <p>If the subnets are part of a VPC that has an internet gateway attached to it, the DB cluster is public.</p>
    #               </li>
    #            </ul>
    #           <p>Valid for: Multi-AZ DB clusters only</p>
    #
    #   @return [Boolean]
    #
    # @!attribute auto_minor_version_upgrade
    #   <p>A value that indicates whether minor engine upgrades are applied automatically to the DB cluster during the maintenance window.
    #               By default, minor engine upgrades are applied automatically.</p>
    #           <p>Valid for: Multi-AZ DB clusters only</p>
    #
    #   @return [Boolean]
    #
    # @!attribute monitoring_interval
    #   <p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB cluster. To turn off
    #               collecting Enhanced Monitoring metrics, specify 0. The default is 0.</p>
    #           <p>If <code>MonitoringRoleArn</code> is specified, also set <code>MonitoringInterval</code>
    #               to a value other than 0.</p>
    #           <p>Valid Values: <code>0, 1, 5, 10, 15, 30, 60</code>
    #            </p>
    #           <p>Valid for: Multi-AZ DB clusters only</p>
    #
    #   @return [Integer]
    #
    # @!attribute monitoring_role_arn
    #   <p>The Amazon Resource Name (ARN) for the IAM role that permits RDS to send Enhanced Monitoring metrics to Amazon CloudWatch Logs.
    #               An example is <code>arn:aws:iam:123456789012:role/emaccess</code>. For information on creating a monitoring role,
    #               see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html USER_Monitoring.OS.Enabling">Setting
    #                   up and enabling Enhanced Monitoring</a> in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>If <code>MonitoringInterval</code> is set to a value other than 0, supply a <code>MonitoringRoleArn</code> value.</p>
    #           <p>Valid for: Multi-AZ DB clusters only</p>
    #
    #   @return [String]
    #
    # @!attribute enable_performance_insights
    #   <p>A value that indicates whether to turn on Performance Insights for the DB cluster.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html">
    #               Using Amazon Performance Insights</a> in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>Valid for: Multi-AZ DB clusters only</p>
    #
    #   @return [Boolean]
    #
    # @!attribute performance_insights_kms_key_id
    #   <p>The Amazon Web Services KMS key identifier for encryption of Performance Insights data.</p>
    #           <p>The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.</p>
    #           <p>If you don't specify a value for <code>PerformanceInsightsKMSKeyId</code>, then Amazon RDS
    #               uses your default KMS key. There is a default KMS key for your Amazon Web Services account.
    #               Your Amazon Web Services account has a different default KMS key for each Amazon Web Services Region.</p>
    #           <p>Valid for: Multi-AZ DB clusters only</p>
    #
    #   @return [String]
    #
    # @!attribute performance_insights_retention_period
    #   <p>The amount of time, in days, to retain Performance Insights data. Valid values are 7 or 731 (2 years).</p>
    #           <p>Valid for: Multi-AZ DB clusters only</p>
    #
    #   @return [Integer]
    #
    # @!attribute serverless_v2_scaling_configuration
    #   <p>Contains the scaling configuration of an Aurora Serverless v2 DB cluster.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless-v2.html">Using Amazon Aurora Serverless v2</a> in the
    #               <i>Amazon Aurora User Guide</i>.</p>
    #
    #   @return [ServerlessV2ScalingConfiguration]
    #
    CreateDBClusterInput = ::Struct.new(
      :availability_zones,
      :backup_retention_period,
      :character_set_name,
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
      :backtrack_window,
      :enable_cloudwatch_logs_exports,
      :engine_mode,
      :scaling_configuration,
      :deletion_protection,
      :global_cluster_identifier,
      :enable_http_endpoint,
      :copy_tags_to_snapshot,
      :domain,
      :domain_iam_role_name,
      :enable_global_write_forwarding,
      :db_cluster_instance_class,
      :allocated_storage,
      :storage_type,
      :iops,
      :publicly_accessible,
      :auto_minor_version_upgrade,
      :monitoring_interval,
      :monitoring_role_arn,
      :enable_performance_insights,
      :performance_insights_kms_key_id,
      :performance_insights_retention_period,
      :serverless_v2_scaling_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster
    #   <p>Contains the details of an Amazon Aurora DB cluster or Multi-AZ DB cluster.</p>
    #           <p>For an Amazon Aurora DB cluster, this data type is used as a response element in the operations
    #             <code>CreateDBCluster</code>, <code>DeleteDBCluster</code>, <code>DescribeDBClusters</code>,
    #             <code>FailoverDBCluster</code>, <code>ModifyDBCluster</code>, <code>PromoteReadReplicaDBCluster</code>,
    #             <code>RestoreDBClusterFromS3</code>, <code>RestoreDBClusterFromSnapshot</code>,
    #             <code>RestoreDBClusterToPointInTime</code>, <code>StartDBCluster</code>, and <code>StopDBCluster</code>.</p>
    #           <p>For a Multi-AZ DB cluster, this data type is used as a response element in the operations
    #             <code>CreateDBCluster</code>, <code>DeleteDBCluster</code>, <code>DescribeDBClusters</code>,
    #             <code>FailoverDBCluster</code>, <code>ModifyDBCluster</code>, <code>RebootDBCluster</code>,
    #             <code>RestoreDBClusterFromSnapshot</code>, and <code>RestoreDBClusterToPointInTime</code>.</p>
    #           <p>For more information on Amazon Aurora DB clusters, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html">
    #                 What is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i>
    #            </p>
    #           <p>For more information on Multi-AZ DB clusters, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html">
    #                 Multi-AZ deployments with two readable standby DB instances</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [DBCluster]
    #
    CreateDBClusterOutput = ::Struct.new(
      :db_cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must not match the name of an existing DB cluster parameter group.</p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>This value is stored as a lowercase string.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute db_parameter_group_family
    #   <p>The DB cluster parameter group family name. A DB cluster parameter group can be associated with one and only one DB cluster
    #             parameter group family, and can be applied only to a DB cluster running a database engine and engine version compatible with that DB cluster parameter group family.</p>
    #           <p>
    #               <b>Aurora MySQL</b>
    #            </p>
    #           <p>Example: <code>aurora5.6</code>, <code>aurora-mysql5.7</code>, <code>aurora-mysql8.0</code>
    #            </p>
    #           <p>
    #               <b>Aurora PostgreSQL</b>
    #            </p>
    #           <p>Example: <code>aurora-postgresql9.6</code>
    #            </p>
    #           <p>
    #               <b>RDS for MySQL</b>
    #            </p>
    #           <p>Example: <code>mysql8.0</code>
    #            </p>
    #           <p>
    #               <b>RDS for PostgreSQL</b>
    #            </p>
    #           <p>Example: <code>postgres12</code>
    #            </p>
    #           <p>To list all of the available parameter group families for a DB engine, use the following command:</p>
    #           <p>
    #               <code>aws rds describe-db-engine-versions --query "DBEngineVersions[].DBParameterGroupFamily" --engine <engine></code>
    #            </p>
    #           <p>For example, to list all of the available parameter group families for the Aurora PostgreSQL DB engine, use the following command:</p>
    #           <p>
    #               <code>aws rds describe-db-engine-versions --query "DBEngineVersions[].DBParameterGroupFamily" --engine aurora-postgresql</code>
    #            </p>
    #           <note>
    #               <p>The output contains duplicates.</p>
    #           </note>
    #           <p>The following are the valid DB engine values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>aurora</code> (for MySQL 5.6-compatible Aurora)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>aurora-mysql</code> (for MySQL 5.7-compatible and MySQL 8.0-compatible Aurora)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>aurora-postgresql</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>mysql</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>postgres</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description for the DB cluster parameter group.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags to assign to the DB cluster parameter group.</p>
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
    #   <p>Contains the details of an Amazon RDS DB cluster parameter group.</p>
    #           <p>This data type is used as a response element in the <code>DescribeDBClusterParameterGroups</code> action.</p>
    #
    #   @return [DBClusterParameterGroup]
    #
    CreateDBClusterParameterGroupOutput = ::Struct.new(
      :db_cluster_parameter_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_cluster_snapshot_identifier
    #   <p>The identifier of the DB cluster snapshot. This parameter is stored as a lowercase string.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>my-cluster1-snapshot1</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_identifier
    #   <p>The identifier of the DB cluster to create a snapshot for. This parameter isn't case-sensitive.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must match the identifier of an existing DBCluster.</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>my-cluster1</code>
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
    #   <p>Contains the details for an Amazon RDS DB cluster snapshot</p>
    #           <p>This data type is used as a response element
    #             in the <code>DescribeDBClusterSnapshots</code> action.</p>
    #
    #   @return [DBClusterSnapshot]
    #
    CreateDBClusterSnapshotOutput = ::Struct.new(
      :db_cluster_snapshot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_name
    #   <p>The meaning of this parameter differs according to the database engine you use.</p>
    #           <p>
    #               <b>MySQL</b>
    #            </p>
    #           <p>The name of the database to create when the DB instance is created. If this parameter isn't specified, no database is created in the DB instance.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain 1 to 64 letters or numbers.</p>
    #               </li>
    #               <li>
    #                   <p>Must begin with a letter. Subsequent characters can be letters, underscores, or digits (0-9).</p>
    #               </li>
    #               <li>
    #                   <p>Can't be a word reserved by the specified database engine</p>
    #               </li>
    #            </ul>
    #           <p>
    #               <b>MariaDB</b>
    #            </p>
    #           <p>The name of the database to create when the DB instance is created. If this parameter isn't specified, no database is created in the DB instance.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain 1 to 64 letters or numbers.</p>
    #               </li>
    #               <li>
    #                   <p>Must begin with a letter. Subsequent characters can be letters, underscores, or digits (0-9).</p>
    #               </li>
    #               <li>
    #                   <p>Can't be a word reserved by the specified database engine</p>
    #               </li>
    #            </ul>
    #           <p>
    #               <b>PostgreSQL</b>
    #            </p>
    #           <p>The name of the database to create when the DB instance is created. If this parameter isn't specified, a database named <code>postgres</code>
    #             is created in the DB instance.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain 1 to 63 letters, numbers, or underscores.</p>
    #               </li>
    #               <li>
    #                   <p>Must begin with a letter. Subsequent characters can be letters, underscores, or digits (0-9).</p>
    #               </li>
    #               <li>
    #                   <p>Can't be a word reserved by the specified database engine</p>
    #               </li>
    #            </ul>
    #           <p>
    #               <b>Oracle</b>
    #            </p>
    #           <p>The Oracle System ID (SID) of the created DB instance.
    #             If you specify <code>null</code>, the default value <code>ORCL</code> is used.
    #             You can't specify the string NULL, or any other reserved word, for <code>DBName</code>.</p>
    #           <p>Default: <code>ORCL</code>
    #            </p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Can't be longer than 8 characters</p>
    #               </li>
    #            </ul>
    #           <p>
    #               <b>Amazon RDS Custom for Oracle</b>
    #            </p>
    #           <p>The Oracle System ID (SID) of the created RDS Custom DB instance.
    #             If you don't specify a value, the default value is <code>ORCL</code>.</p>
    #           <p>Default: <code>ORCL</code>
    #            </p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>It must contain 1 to 8 alphanumeric characters.</p>
    #               </li>
    #               <li>
    #                   <p>It must contain a letter.</p>
    #               </li>
    #               <li>
    #                   <p>It can't be a word reserved by the database engine.</p>
    #               </li>
    #            </ul>
    #           <p>
    #               <b>Amazon RDS Custom for SQL Server</b>
    #            </p>
    #           <p>Not applicable. Must be null.</p>
    #           <p>
    #               <b>SQL Server</b>
    #            </p>
    #           <p>Not applicable. Must be null.</p>
    #           <p>
    #               <b>Amazon Aurora MySQL</b>
    #            </p>
    #           <p>The name of the database to create when the primary DB instance of the Aurora MySQL DB cluster is
    #             created. If this parameter isn't specified for an Aurora MySQL DB cluster, no database is created
    #             in the DB cluster.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>It must contain 1 to 64 alphanumeric characters.</p>
    #               </li>
    #               <li>
    #                   <p>It can't be a word reserved by the database engine.</p>
    #               </li>
    #            </ul>
    #           <p>
    #               <b>Amazon Aurora PostgreSQL</b>
    #            </p>
    #           <p>The name of the database to create when the primary DB instance of the Aurora PostgreSQL DB cluster is
    #             created. If this parameter isn't specified for an Aurora PostgreSQL DB cluster,
    #             a database named <code>postgres</code> is created in the DB cluster.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>It must contain 1 to 63 alphanumeric characters.</p>
    #               </li>
    #               <li>
    #                   <p>It must begin with a letter or an underscore.
    #                     Subsequent characters can be letters, underscores, or digits
    #                     (0 to 9).</p>
    #               </li>
    #               <li>
    #                   <p>It can't be a word reserved by the
    #                     database engine.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute db_instance_identifier
    #   <p>The DB instance identifier. This parameter is stored as a lowercase string.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>mydbinstance</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute allocated_storage
    #   <p>The amount of storage in gibibytes (GiB) to allocate for the DB instance.</p>
    #           <p>Type: Integer</p>
    #           <p>
    #               <b>Amazon Aurora</b>
    #            </p>
    #           <p>Not applicable. Aurora cluster volumes automatically grow as the amount of data in your
    #             database increases, though you are only charged for the space that you use in an Aurora cluster volume.</p>
    #           <p>
    #               <b>Amazon RDS Custom</b>
    #            </p>
    #           <p>Constraints to the amount of storage for each storage type are the following:</p>
    #           <ul>
    #               <li>
    #                   <p>General Purpose (SSD) storage (gp2): Must be an integer from 40 to 65536 for RDS Custom for Oracle,
    #                 16384 for RDS Custom for SQL Server.</p>
    #               </li>
    #               <li>
    #                   <p>Provisioned IOPS storage (io1): Must be an integer from 40 to 65536 for RDS Custom for Oracle,
    #                 16384 for RDS Custom for SQL Server.</p>
    #               </li>
    #            </ul>
    #           <p>
    #               <b>MySQL</b>
    #            </p>
    #           <p>Constraints to the amount of storage for each storage type are the following:</p>
    #           <ul>
    #               <li>
    #                   <p>General Purpose (SSD) storage (gp2): Must be an integer from 20 to 65536.</p>
    #               </li>
    #               <li>
    #                   <p>Provisioned IOPS storage (io1): Must be an integer from 100 to 65536.</p>
    #               </li>
    #               <li>
    #                   <p>Magnetic storage (standard): Must be an integer from 5 to 3072.</p>
    #               </li>
    #            </ul>
    #           <p>
    #               <b>MariaDB</b>
    #            </p>
    #           <p>Constraints to the amount of storage for each storage type are the following:</p>
    #           <ul>
    #               <li>
    #                   <p>General Purpose (SSD) storage (gp2): Must be an integer from 20 to 65536.</p>
    #               </li>
    #               <li>
    #                   <p>Provisioned IOPS storage (io1): Must be an integer from 100 to 65536.</p>
    #               </li>
    #               <li>
    #                   <p>Magnetic storage (standard): Must be an integer from 5 to 3072.</p>
    #               </li>
    #            </ul>
    #           <p>
    #               <b>PostgreSQL</b>
    #            </p>
    #           <p>Constraints to the amount of storage for each storage type are the following:</p>
    #           <ul>
    #               <li>
    #                   <p>General Purpose (SSD) storage (gp2): Must be an integer from 20 to 65536.</p>
    #               </li>
    #               <li>
    #                   <p>Provisioned IOPS storage (io1): Must be an integer from 100 to 65536.</p>
    #               </li>
    #               <li>
    #                   <p>Magnetic storage (standard): Must be an integer from 5 to 3072.</p>
    #               </li>
    #            </ul>
    #           <p>
    #               <b>Oracle</b>
    #            </p>
    #           <p>Constraints to the amount of storage for each storage type are the following:</p>
    #           <ul>
    #               <li>
    #                   <p>General Purpose (SSD) storage (gp2): Must be an integer from 20 to 65536.</p>
    #               </li>
    #               <li>
    #                   <p>Provisioned IOPS storage (io1): Must be an integer from 100 to 65536.</p>
    #               </li>
    #               <li>
    #                   <p>Magnetic storage (standard): Must be an integer from 10 to 3072.</p>
    #               </li>
    #            </ul>
    #           <p>
    #               <b>SQL Server</b>
    #            </p>
    #           <p>Constraints to the amount of storage for each storage type are the following:</p>
    #           <ul>
    #               <li>
    #                   <p>General Purpose (SSD) storage (gp2):</p>
    #                   <ul>
    #                     <li>
    #                           <p>Enterprise and Standard editions: Must be an integer from 20 to 16384.</p>
    #                       </li>
    #                     <li>
    #                           <p>Web and Express editions: Must be an integer from 20 to 16384.</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                   <p>Provisioned IOPS storage (io1):</p>
    #                   <ul>
    #                     <li>
    #                           <p>Enterprise and Standard editions: Must be an integer from 100 to 16384.</p>
    #                       </li>
    #                     <li>
    #                           <p>Web and Express editions: Must be an integer from 100 to 16384.</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                   <p>Magnetic storage (standard):</p>
    #                   <ul>
    #                     <li>
    #                           <p>Enterprise and Standard editions: Must be an integer from 20 to 1024.</p>
    #                       </li>
    #                     <li>
    #                           <p>Web and Express editions: Must be an integer from 20 to 1024.</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    #   @return [Integer]
    #
    # @!attribute db_instance_class
    #   <p>The compute and memory capacity of the DB instance, for example db.m4.large.
    #             Not all DB instance classes are available in all Amazon Web Services Regions, or for all database engines.
    #             For the full list of DB instance classes,
    #             and availability for your engine, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html">DB Instance Class</a> in the <i>Amazon RDS User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute engine
    #   <p>The name of the database engine to be used for this instance.</p>
    #           <p>Not every database engine is available for every Amazon Web Services Region.</p>
    #           <p>Valid Values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>aurora</code> (for MySQL 5.6-compatible Aurora)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>aurora-mysql</code> (for MySQL 5.7-compatible and MySQL 8.0-compatible Aurora)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>aurora-postgresql</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>custom-oracle-ee (for RDS Custom for Oracle instances)</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>custom-sqlserver-ee (for RDS Custom for SQL Server instances)</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>custom-sqlserver-se (for RDS Custom for SQL Server instances)</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>custom-sqlserver-web (for RDS Custom for SQL Server instances)</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>mariadb</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>mysql</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-ee</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-ee-cdb</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-se2</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-se2-cdb</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>postgres</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-ee</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-se</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-ex</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-web</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute master_username
    #   <p>The name for the master user.</p>
    #           <p>
    #               <b>Amazon Aurora</b>
    #            </p>
    #           <p>Not applicable. The name for the master user is managed by the DB cluster.</p>
    #           <p>
    #               <b>Amazon RDS</b>
    #            </p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Required.</p>
    #               </li>
    #               <li>
    #                   <p>Must be 1 to 16 letters, numbers, or underscores.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Can't be a reserved word for the chosen database engine.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute master_user_password
    #   <p>The password for the master user. The password can include any printable ASCII character except "/", """, or "@".</p>
    #           <p>
    #               <b>Amazon Aurora</b>
    #            </p>
    #           <p>Not applicable. The password for the master user is managed by the DB
    #               cluster.</p>
    #           <p>
    #               <b>MariaDB</b>
    #            </p>
    #           <p>Constraints: Must contain from 8 to 41 characters.</p>
    #           <p>
    #               <b>Microsoft SQL Server</b>
    #            </p>
    #           <p>Constraints: Must contain from 8 to 128 characters.</p>
    #           <p>
    #               <b>MySQL</b>
    #            </p>
    #           <p>Constraints: Must contain from 8 to 41 characters.</p>
    #           <p>
    #               <b>Oracle</b>
    #            </p>
    #           <p>Constraints: Must contain from 8 to 30 characters.</p>
    #           <p>
    #               <b>PostgreSQL</b>
    #            </p>
    #           <p>Constraints: Must contain from 8 to 128 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute db_security_groups
    #   <p>A list of DB security groups to associate with this DB instance.</p>
    #           <p>Default: The default DB security group for the database engine.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute vpc_security_group_ids
    #   <p>A list of Amazon EC2 VPC security groups to associate with this DB instance.</p>
    #           <p>
    #               <b>Amazon Aurora</b>
    #            </p>
    #           <p>Not applicable. The associated list of EC2 VPC security groups is managed by
    #             the DB cluster.</p>
    #           <p>Default: The default EC2 VPC security group for the DB subnet group's VPC.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute availability_zone
    #   <p>The Availability Zone (AZ) where the database will be created. For information on
    #           Amazon Web Services Regions and Availability Zones, see
    #           <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html">Regions
    #           and Availability Zones</a>.</p>
    #           <p>
    #               <b>Amazon Aurora</b>
    #            </p>
    #           <p>Each Aurora DB cluster hosts copies of its storage in three separate Availability Zones. Specify one of these
    #               Availability Zones. Aurora automatically chooses an appropriate Availability Zone if you don't specify one.</p>
    #           <p>Default: A random, system-chosen Availability Zone in the endpoint's Amazon Web Services Region.</p>
    #           <p>Example: <code>us-east-1d</code>
    #            </p>
    #           <p>Constraint: The <code>AvailabilityZone</code> parameter can't be specified if the DB instance is a Multi-AZ deployment.
    #               The specified Availability Zone must be in the same Amazon Web Services Region as the current endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute db_subnet_group_name
    #   <p>A DB subnet group to associate with this DB instance.</p>
    #           <p>Constraints: Must match the name of an existing DBSubnetGroup. Must not be default.</p>
    #           <p>Example: <code>mydbsubnetgroup</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute preferred_maintenance_window
    #   <p>The time range each week during which system maintenance can occur,
    #             in Universal Coordinated Time (UTC).
    #             For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html Concepts.DBMaintenance">Amazon RDS Maintenance Window</a>.</p>
    #           <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #            </p>
    #           <p>The default is a 30-minute window selected at random from an
    #               8-hour block of time for each Amazon Web Services Region, occurring on a random day of the
    #               week.</p>
    #           <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
    #           <p>Constraints: Minimum 30-minute window.</p>
    #
    #   @return [String]
    #
    # @!attribute db_parameter_group_name
    #   <p>The name of the DB parameter group to associate with this DB instance. If you do not specify a value, then
    #             the default DB parameter group for the specified DB engine and version is used.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be 1 to 255 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                   <p>Can't end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute backup_retention_period
    #   <p>The number of days for which automated backups are retained. Setting this parameter to a positive number enables
    #             backups. Setting this parameter to 0 disables automated backups.</p>
    #           <p>
    #               <b>Amazon Aurora</b>
    #            </p>
    #           <p>Not applicable. The retention period for automated backups is managed by the DB cluster.</p>
    #           <p>Default: 1</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be a value from 0 to 35</p>
    #               </li>
    #               <li>
    #                   <p>Can't be set to 0 if the DB instance is a source to read replicas</p>
    #               </li>
    #               <li>
    #                   <p>Can't be set to 0 or 35 for an RDS Custom for Oracle DB instance</p>
    #               </li>
    #            </ul>
    #
    #   @return [Integer]
    #
    # @!attribute preferred_backup_window
    #   <p>The daily time range during which automated backups are created
    #           if automated backups are enabled,
    #           using the <code>BackupRetentionPeriod</code> parameter.
    #             The default is a 30-minute window selected at random from an
    #             8-hour block of time for each Amazon Web Services Region. For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html USER_WorkingWithAutomatedBackups.BackupWindow">Backup window</a> in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>
    #               <b>Amazon Aurora</b>
    #            </p>
    #           <p>Not applicable. The daily time range for creating automated backups is managed by
    #             the DB cluster.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Must be in Universal Coordinated Time (UTC).</p>
    #               </li>
    #               <li>
    #                   <p>Must not conflict with the preferred maintenance window.</p>
    #               </li>
    #               <li>
    #                   <p>Must be at least 30 minutes.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port number on which the database accepts connections.</p>
    #           <p>
    #               <b>MySQL</b>
    #            </p>
    #           <p>Default: <code>3306</code>
    #            </p>
    #           <p>Valid values: <code>1150-65535</code>
    #            </p>
    #           <p>Type: Integer</p>
    #           <p>
    #               <b>MariaDB</b>
    #            </p>
    #           <p>Default: <code>3306</code>
    #            </p>
    #           <p>Valid values: <code>1150-65535</code>
    #            </p>
    #           <p>Type: Integer</p>
    #           <p>
    #               <b>PostgreSQL</b>
    #            </p>
    #           <p>Default: <code>5432</code>
    #            </p>
    #           <p>Valid values: <code>1150-65535</code>
    #            </p>
    #           <p>Type: Integer</p>
    #           <p>
    #               <b>Oracle</b>
    #            </p>
    #           <p>Default: <code>1521</code>
    #            </p>
    #           <p>Valid values: <code>1150-65535</code>
    #            </p>
    #           <p>
    #               <b>SQL Server</b>
    #            </p>
    #           <p>Default: <code>1433</code>
    #            </p>
    #           <p>Valid values: <code>1150-65535</code> except <code>1234</code>, <code>1434</code>,
    #                   <code>3260</code>, <code>3343</code>, <code>3389</code>, <code>47001</code>, and
    #                   <code>49152-49156</code>.</p>
    #           <p>
    #               <b>Amazon Aurora</b>
    #            </p>
    #           <p>Default: <code>3306</code>
    #            </p>
    #           <p>Valid values: <code>1150-65535</code>
    #            </p>
    #           <p>Type: Integer</p>
    #
    #   @return [Integer]
    #
    # @!attribute multi_az
    #   <p>A value that indicates whether the DB instance is a Multi-AZ deployment. You can't set
    #             the <code>AvailabilityZone</code> parameter if the DB instance is a Multi-AZ deployment.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute engine_version
    #   <p>The version number of the database engine to use.</p>
    #           <p>For a list of valid engine versions, use the  <code>DescribeDBEngineVersions</code> action.</p>
    #           <p>The following are the database engines and links to information about the major and minor versions that are available with
    #             Amazon RDS. Not every database engine is available for every Amazon Web Services Region.</p>
    #           <p>
    #               <b>Amazon Aurora</b>
    #            </p>
    #           <p>Not applicable. The version number of the database engine to be used by the DB
    #               instance is managed by the DB cluster.</p>
    #           <p>
    #               <b>Amazon RDS Custom for Oracle</b>
    #            </p>
    #           <p>A custom engine version (CEV) that you have previously created. This setting is required for RDS Custom for Oracle. The CEV
    #             name has the following format: <code>19.<i>customized_string</i>
    #               </code>. An example identifier is
    #             <code>19.my_cev1</code>. For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-creating.html custom-creating.create">
    #                 Creating an RDS Custom for Oracle DB instance</a> in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>
    #               <b>Amazon RDS Custom for SQL Server</b>
    #            </p>
    #           <p>See <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-reqs-limits-MS.html">RDS Custom for SQL Server general requirements</a>
    #             in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>
    #               <b>MariaDB</b>
    #            </p>
    #           <p>For information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MariaDB.html MariaDB.Concepts.VersionMgmt">MariaDB on Amazon RDS Versions</a> in the
    #             <i>Amazon RDS User Guide</i>.</p>
    #           <p>
    #               <b>Microsoft SQL Server</b>
    #            </p>
    #           <p>For information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html SQLServer.Concepts.General.VersionSupport">Microsoft SQL Server Versions on Amazon RDS</a> in the
    #             <i>Amazon RDS User Guide</i>.</p>
    #           <p>
    #               <b>MySQL</b>
    #            </p>
    #           <p>For information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MySQL.html MySQL.Concepts.VersionMgmt">MySQL on Amazon RDS Versions</a> in the
    #             <i>Amazon RDS User Guide</i>.</p>
    #           <p>
    #               <b>Oracle</b>
    #            </p>
    #           <p>For information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.Oracle.PatchComposition.html">Oracle Database Engine Release Notes</a> in the
    #             <i>Amazon RDS User Guide</i>.</p>
    #           <p>
    #               <b>PostgreSQL</b>
    #            </p>
    #           <p>For information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_PostgreSQL.html PostgreSQL.Concepts">Amazon RDS for PostgreSQL versions and extensions</a> in the
    #             <i>Amazon RDS User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_minor_version_upgrade
    #   <p>A value that indicates whether minor engine upgrades are applied automatically to the DB instance during the maintenance window.
    #             By default, minor engine upgrades are applied automatically.</p>
    #           <p>If you create an RDS Custom DB instance, you must set <code>AutoMinorVersionUpgrade</code> to
    #             <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute license_model
    #   <p>License model information for this DB instance.</p>
    #           <p>Valid values:  <code>license-included</code> | <code>bring-your-own-license</code> | <code>general-public-license</code>
    #            </p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute iops
    #   <p>The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for the DB instance.
    #             For information about valid <code>Iops</code> values, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html USER_PIOPS">Amazon RDS Provisioned IOPS storage to improve performance</a> in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>Constraints: For MariaDB, MySQL, Oracle, and PostgreSQL DB instances, must be a multiple between .5 and 50
    #             of the storage amount for the DB instance. For SQL Server DB instances, must be a multiple between 1 and 50
    #             of the storage amount for the DB instance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute option_group_name
    #   <p>A value that indicates that the DB instance should be associated with the specified option group.</p>
    #           <p>Permanent options, such as the TDE option for Oracle Advanced Security TDE, can't be removed
    #             from an option group. Also, that option group can't be removed from a DB instance after it is
    #             associated with a DB instance.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute character_set_name
    #   <p>For supported engines, this value indicates that the DB instance should be associated with the
    #             specified <code>CharacterSet</code>.</p>
    #           <p>This setting doesn't apply to RDS Custom. However, if you need to change the character set,
    #             you can change it on the database itself.</p>
    #           <p>
    #               <b>Amazon Aurora</b>
    #            </p>
    #           <p>Not applicable. The character set is managed by
    #             the DB cluster. For more information, see <code>CreateDBCluster</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute nchar_character_set_name
    #   <p>The name of the NCHAR character set for the Oracle DB instance.</p>
    #           <p>This parameter doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute publicly_accessible
    #   <p>A value that indicates whether the DB instance is publicly accessible.</p>
    #           <p>When the DB instance is publicly accessible, its Domain Name System (DNS) endpoint resolves to the private IP address from
    #             within the DB instance's virtual private cloud (VPC). It resolves to the public IP address from outside of the DB instance's VPC.
    #             Access to the DB instance is ultimately controlled by the security group it uses.
    #             That public access is not permitted if the security group assigned to the DB instance doesn't permit it.</p>
    #           <p>When the DB instance isn't publicly accessible, it is an internal DB instance with a DNS name that resolves to a private IP address.</p>
    #           <p>Default: The default behavior varies depending on whether <code>DBSubnetGroupName</code> is specified.</p>
    #           <p>If <code>DBSubnetGroupName</code> isn't specified, and <code>PubliclyAccessible</code> isn't specified, the following applies:</p>
    #           <ul>
    #               <li>
    #                   <p>If the default VPC in the target Region doesn’t have an internet gateway attached to it, the DB instance is private.</p>
    #               </li>
    #               <li>
    #                   <p>If the default VPC in the target Region has an internet gateway attached to it, the DB instance is public.</p>
    #               </li>
    #            </ul>
    #           <p>If <code>DBSubnetGroupName</code> is specified, and <code>PubliclyAccessible</code> isn't specified, the following applies:</p>
    #           <ul>
    #               <li>
    #                   <p>If the subnets are part of a VPC that doesn’t have an internet gateway attached to it, the DB instance is private.</p>
    #               </li>
    #               <li>
    #                   <p>If the subnets are part of a VPC that has an internet gateway attached to it, the DB instance is public.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>Tags to assign to the DB instance.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute db_cluster_identifier
    #   <p>The identifier of the DB cluster that the instance will belong to.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute storage_type
    #   <p>Specifies the storage type to be associated with the DB instance.</p>
    #           <p>Valid values: <code>standard | gp2 | io1</code>
    #            </p>
    #           <p>If you specify <code>io1</code>, you must also include a value for the
    #               <code>Iops</code> parameter.</p>
    #           <p>Default: <code>io1</code> if the <code>Iops</code> parameter
    #               is specified, otherwise <code>gp2</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute tde_credential_arn
    #   <p>The ARN from the key store with which to associate the instance for TDE encryption.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute tde_credential_password
    #   <p>The password for the given ARN from the key store in order to access the device.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute storage_encrypted
    #   <p>A value that indicates whether the DB instance is encrypted. By default, it isn't encrypted.</p>
    #           <p>For RDS Custom instances, either set this parameter to <code>true</code> or leave it unset.
    #             If you set this parameter to <code>false</code>, RDS reports an error.</p>
    #           <p>
    #               <b>Amazon Aurora</b>
    #            </p>
    #           <p>Not applicable. The encryption for DB instances is managed by the DB cluster.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services KMS key identifier for an encrypted DB instance.</p>
    #           <p>The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.
    #             To use a KMS key in a different Amazon Web Services account, specify the key ARN or alias ARN.</p>
    #           <p>
    #               <b>Amazon Aurora</b>
    #            </p>
    #           <p>Not applicable. The Amazon Web Services KMS key identifier is managed by
    #             the DB cluster. For more information, see <code>CreateDBCluster</code>.</p>
    #           <p>If <code>StorageEncrypted</code> is enabled, and you do
    #           not specify a value for the <code>KmsKeyId</code> parameter, then
    #           Amazon RDS uses your default KMS key. There is a
    #           default KMS key for your Amazon Web Services account. Your Amazon Web Services account has a different
    #           default KMS key for each Amazon Web Services Region.</p>
    #           <p>
    #               <b>Amazon RDS Custom</b>
    #            </p>
    #           <p>A KMS key is required for RDS Custom instances. For most RDS engines, if you leave this parameter empty
    #             while enabling <code>StorageEncrypted</code>, the engine uses the default KMS key. However, RDS Custom
    #             doesn't use the default key when this parameter is empty. You must explicitly specify a key.</p>
    #
    #   @return [String]
    #
    # @!attribute domain
    #   <p>The Active Directory directory ID to create the DB instance in. Currently, only MySQL, Microsoft SQL
    #               Server, Oracle, and PostgreSQL DB instances can be created in an Active Directory Domain.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html">
    #              Kerberos Authentication</a> in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute copy_tags_to_snapshot
    #   <p>A value that indicates whether to copy tags from the DB instance to snapshots of the DB instance. By default, tags are not copied.</p>
    #           <p>
    #               <b>Amazon Aurora</b>
    #            </p>
    #           <p>Not applicable. Copying tags to snapshots is managed by the DB cluster. Setting this
    #             value for an Aurora DB instance has no effect on the DB cluster setting.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute monitoring_interval
    #   <p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected for
    #             the DB instance. To disable collection of Enhanced Monitoring metrics, specify 0. The default is 0.</p>
    #           <p>If <code>MonitoringRoleArn</code> is specified, then you must set <code>MonitoringInterval</code>
    #         to a value other than 0.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #           <p>Valid Values: <code>0, 1, 5, 10, 15, 30, 60</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute monitoring_role_arn
    #   <p>The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to Amazon CloudWatch Logs. For
    #             example, <code>arn:aws:iam:123456789012:role/emaccess</code>. For information on creating a monitoring role,
    #         see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html USER_Monitoring.OS.Enabling">Setting Up and Enabling Enhanced Monitoring</a>
    #             in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>If <code>MonitoringInterval</code> is set to a value other than 0, then you must supply a <code>MonitoringRoleArn</code> value.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_iam_role_name
    #   <p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute promotion_tier
    #   <p>A value that specifies the order in which an Aurora Replica is promoted to the primary instance
    #             after a failure of the existing primary instance. For more information,
    #         see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html Aurora.Managing.FaultTolerance">
    #             Fault Tolerance for an Aurora DB Cluster</a> in the <i>Amazon Aurora User Guide</i>.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #           <p>Default: 1</p>
    #           <p>Valid Values: 0 - 15</p>
    #
    #   @return [Integer]
    #
    # @!attribute timezone
    #   <p>The time zone of the DB instance.
    #               The time zone parameter is currently supported only by
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html SQLServer.Concepts.General.TimeZone">Microsoft SQL Server</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute enable_iam_database_authentication
    #   <p>A value that indicates whether to enable mapping of Amazon Web Services Identity and Access Management
    #               (IAM) accounts to database accounts. By default, mapping isn't enabled.</p>
    #           <p>This setting doesn't apply to RDS Custom or Amazon Aurora. In Aurora, mapping Amazon Web Services IAM accounts
    #           to database accounts is managed by the DB cluster.</p>
    #           <p>For more information, see
    #          <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html">
    #              IAM Database Authentication for MySQL and PostgreSQL</a> in the <i>Amazon RDS User Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_performance_insights
    #   <p>A value that indicates whether to enable Performance Insights for the DB instance. For more information, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html">Using Amazon Performance Insights</a> in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute performance_insights_kms_key_id
    #   <p>The Amazon Web Services KMS key identifier for encryption of Performance Insights data.</p>
    #           <p>The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.</p>
    #           <p>If you do not specify a value for <code>PerformanceInsightsKMSKeyId</code>, then Amazon RDS
    #               uses your default KMS key. There is a default KMS key for your Amazon Web Services account.
    #               Your Amazon Web Services account has a different default KMS key for each Amazon Web Services Region.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute performance_insights_retention_period
    #   <p>The amount of time, in days, to retain Performance Insights data. Valid values are 7 or 731 (2 years).</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [Integer]
    #
    # @!attribute enable_cloudwatch_logs_exports
    #   <p>The list of log types that need to be enabled for exporting to CloudWatch Logs. The values
    #               in the list depend on the DB engine. For more information, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html USER_LogAccess.Procedural.UploadtoCloudWatch">
    #               Publishing Database Logs to Amazon CloudWatch Logs</a> in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>
    #               <b>Amazon Aurora</b>
    #            </p>
    #           <p>Not applicable. CloudWatch Logs exports are managed by the DB cluster.</p>
    #           <p>
    #               <b>RDS Custom</b>
    #            </p>
    #           <p>Not applicable.</p>
    #           <p>
    #               <b>MariaDB</b>
    #            </p>
    #           <p>Possible values are <code>audit</code>, <code>error</code>, <code>general</code>, and <code>slowquery</code>.</p>
    #           <p>
    #               <b>Microsoft SQL Server</b>
    #            </p>
    #           <p>Possible values are <code>agent</code> and <code>error</code>.</p>
    #           <p>
    #               <b>MySQL</b>
    #            </p>
    #           <p>Possible values are <code>audit</code>, <code>error</code>, <code>general</code>, and <code>slowquery</code>.</p>
    #           <p>
    #               <b>Oracle</b>
    #            </p>
    #           <p>Possible values are <code>alert</code>, <code>audit</code>, <code>listener</code>, <code>trace</code>, and
    #               <code>oemagent</code>.</p>
    #           <p>
    #               <b>PostgreSQL</b>
    #            </p>
    #           <p>Possible values are <code>postgresql</code> and <code>upgrade</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute processor_features
    #   <p>The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [Array<ProcessorFeature>]
    #
    # @!attribute deletion_protection
    #   <p>A value that indicates whether the DB instance has deletion protection enabled.
    #               The database can't be deleted when deletion protection is enabled. By default,
    #               deletion protection isn't enabled. For more information, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html">
    #                   Deleting a DB Instance</a>.</p>
    #           <p>
    #               <b>Amazon Aurora</b>
    #            </p>
    #           <p>Not applicable. You can enable or disable deletion protection for the DB cluster.
    #               For more information, see <code>CreateDBCluster</code>. DB instances in a DB
    #               cluster can be deleted even when deletion protection is enabled for the DB cluster.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute max_allocated_storage
    #   <p>The upper limit in gibibytes (GiB) to which Amazon RDS can automatically scale the storage of the DB instance.</p>
    #           <p>For more information about this setting, including limitations that apply to it, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html USER_PIOPS.Autoscaling">
    #                   Managing capacity automatically with Amazon RDS storage autoscaling</a>
    #               in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [Integer]
    #
    # @!attribute enable_customer_owned_ip
    #   <p>A value that indicates whether to enable a customer-owned IP address (CoIP) for an RDS
    #               on Outposts DB instance.</p>
    #           <p>A <i>CoIP</i> provides local or external connectivity to resources in
    #               your Outpost subnets through your on-premises network. For some use cases, a CoIP can
    #               provide lower latency for connections to the DB instance from outside of its virtual
    #               private cloud (VPC) on your local network.</p>
    #           <p>For more information about RDS on Outposts, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html">Working with Amazon RDS on Amazon Web Services Outposts</a>
    #               in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>For more information about CoIPs, see <a href="https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html ip-addressing">Customer-owned IP addresses</a>
    #               in the <i>Amazon Web Services Outposts User Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute custom_iam_instance_profile
    #   <p>The instance profile associated with the underlying Amazon EC2 instance of an
    #               RDS Custom DB instance. The instance profile must meet the following requirements:</p>
    #           <ul>
    #               <li>
    #                   <p>The profile must exist in your account.</p>
    #               </li>
    #               <li>
    #                   <p>The profile must have an IAM role that Amazon EC2 has permissions to assume.</p>
    #               </li>
    #               <li>
    #                   <p>The instance profile name and the associated IAM role name must start with the prefix <code>AWSRDSCustom</code>.</p>
    #               </li>
    #            </ul>
    #           <p>For the list of permissions required for the IAM role, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-setup-orcl.html custom-setup-orcl.iam-vpc">
    #                   Configure IAM and your VPC</a> in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>This setting is required for RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_target
    #   <p>Specifies where automated backups and manual snapshots are stored.</p>
    #           <p>Possible values are <code>outposts</code> (Amazon Web Services Outposts) and <code>region</code> (Amazon Web Services Region). The default is <code>region</code>.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html">Working
    #               with Amazon RDS on Amazon Web Services Outposts</a> in the <i>Amazon RDS User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute network_type
    #   <p>The network type of the DB instance.</p>
    #           <p>Valid values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>IPV4</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DUAL</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <p>The network type is determined by the <code>DBSubnetGroup</code> specified for the DB instance.
    #               A <code>DBSubnetGroup</code> can support only the IPv4 protocol or the IPv4 and the IPv6
    #               protocols (<code>DUAL</code>).</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html">
    #               Working with a DB instance in a VPC</a> in the
    #               <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [String]
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
      :nchar_character_set_name,
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
      :performance_insights_retention_period,
      :enable_cloudwatch_logs_exports,
      :processor_features,
      :deletion_protection,
      :max_allocated_storage,
      :enable_customer_owned_ip,
      :custom_iam_instance_profile,
      :backup_target,
      :network_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_instance
    #   <p>Contains the details of an Amazon RDS DB instance.</p>
    #           <p>This data type is used as a response element in the operations <code>CreateDBInstance</code>,
    #             <code>CreateDBInstanceReadReplica</code>, <code>DeleteDBInstance</code>, <code>DescribeDBInstances</code>,
    #             <code>ModifyDBInstance</code>, <code>PromoteReadReplica</code>, <code>RebootDBInstance</code>,
    #             <code>RestoreDBInstanceFromDBSnapshot</code>, <code>RestoreDBInstanceFromS3</code>, <code>RestoreDBInstanceToPointInTime</code>,
    #             <code>StartDBInstance</code>, and <code>StopDBInstance</code>.</p>
    #
    #   @return [DBInstance]
    #
    CreateDBInstanceOutput = ::Struct.new(
      :db_instance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_instance_identifier
    #   <p>The DB instance identifier of the read replica. This identifier is the unique key
    #               that identifies a DB instance. This parameter is stored as a lowercase string.</p>
    #
    #   @return [String]
    #
    # @!attribute source_db_instance_identifier
    #   <p>The identifier of the DB instance that will act as the source for the read replica.
    #               Each DB instance can have up to five read replicas.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be the identifier of an existing MySQL, MariaDB, Oracle, PostgreSQL, or SQL Server DB
    #                       instance.</p>
    #               </li>
    #               <li>
    #                   <p>Can specify a DB instance that is a MySQL read replica only if the source is running MySQL
    #                       5.6 or later.</p>
    #               </li>
    #               <li>
    #                   <p>For the limitations of Oracle read replicas, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html">Read Replica Limitations with Oracle</a> in the
    #                     <i>Amazon RDS User Guide</i>.</p>
    #               </li>
    #               <li>
    #                   <p>For the limitations of SQL Server read replicas, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/SQLServer.ReadReplicas.Limitations.html">Read Replica
    #                           Limitations with Microsoft SQL Server</a> in the <i>Amazon RDS User Guide</i>.</p>
    #               </li>
    #               <li>
    #                   <p>Can specify a PostgreSQL DB instance only if the source is running PostgreSQL 9.3.5 or
    #                       later (9.4.7 and higher for cross-Region replication).</p>
    #               </li>
    #               <li>
    #                   <p>The specified DB instance must have automatic backups enabled, that is, its backup
    #                       retention period must be greater than 0.</p>
    #               </li>
    #               <li>
    #                   <p>If the source DB instance is in the same Amazon Web Services Region as the read replica, specify a valid DB
    #                       instance identifier.</p>
    #               </li>
    #               <li>
    #                   <p>If the source DB instance is in a different Amazon Web Services Region from the read replica, specify a valid DB instance ARN.
    #                For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html USER_Tagging.ARN.Constructing">Constructing an ARN for Amazon RDS</a>
    #                in the <i>Amazon RDS User Guide</i>. This doesn't apply to SQL Server or RDS Custom, which don't support
    #                cross-Region replicas.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute db_instance_class
    #   <p>The compute and memory capacity of the read replica, for example
    #                   db.m4.large. Not all DB instance classes are available in all Amazon Web Services
    #               Regions, or for all database engines. For the full list of DB instance classes, and
    #               availability for your engine, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html">DB Instance
    #                   Class</a> in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>Default: Inherits from the source DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute availability_zone
    #   <p>The Availability Zone (AZ) where the read replica will be created.</p>
    #           <p>Default: A random, system-chosen Availability Zone in the endpoint's Amazon Web Services Region.</p>
    #           <p>Example: <code>us-east-1d</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port number that the DB instance uses for connections.</p>
    #           <p>Default: Inherits from the source DB instance</p>
    #           <p>Valid Values: <code>1150-65535</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute multi_az
    #   <p>A value that indicates whether the read replica is in a Multi-AZ deployment.</p>
    #           <p>You can create a read replica as a Multi-AZ DB instance. RDS creates a standby of
    #               your replica in another Availability Zone for failover support for the replica. Creating
    #               your read replica as a Multi-AZ DB instance is independent of whether the source
    #               database is a Multi-AZ DB instance.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute auto_minor_version_upgrade
    #   <p>A value that indicates whether minor engine upgrades are applied automatically to the
    #               read replica during the maintenance window.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #           <p>Default: Inherits from the source DB instance</p>
    #
    #   @return [Boolean]
    #
    # @!attribute iops
    #   <p>The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for the DB instance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute option_group_name
    #   <p>The option group the DB instance is associated with. If omitted, the option group associated with the source instance is used.</p>
    #           <note>
    #               <p>For SQL Server, you must use the option group associated with the source
    #                   instance.</p>
    #           </note>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute db_parameter_group_name
    #   <p>The name of the DB parameter group to associate with this DB instance.</p>
    #           <p>If you do not specify a value for <code>DBParameterGroupName</code>, then Amazon RDS
    #               uses the <code>DBParameterGroup</code> of source DB instance for a same Region read
    #               replica, or the default <code>DBParameterGroup</code> for the specified DB engine for a
    #               cross-Region read replica.</p>
    #           <p>Specifying a parameter group for this operation is only supported for Oracle DB instances. It
    #           isn't supported for RDS Custom.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be 1 to 255 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                   <p>Can't end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute publicly_accessible
    #   <p>A value that indicates whether the DB instance is publicly accessible.</p>
    #           <p>When the DB cluster is publicly accessible, its Domain Name System (DNS) endpoint
    #             resolves to the private IP address from within the DB cluster's virtual private cloud
    #             (VPC). It resolves to the public IP address from outside of the DB cluster's VPC. Access
    #             to the DB cluster is ultimately controlled by the security group it uses. That public
    #             access isn't permitted if the security group assigned to the DB cluster doesn't permit
    #             it.</p>
    #           <p>When the DB instance isn't publicly accessible, it is an internal DB instance with a DNS name that resolves to a private IP address.</p>
    #           <p>For more information, see <a>CreateDBInstance</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>A list of tags.
    #             For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute db_subnet_group_name
    #   <p>Specifies a DB subnet group for the DB instance. The new DB instance is created in the VPC associated with the DB subnet group. If no DB subnet group is specified, then the new DB instance isn't created in a VPC.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Can only be specified if the source DB instance identifier specifies a DB instance in another Amazon Web Services Region.</p>
    #               </li>
    #               <li>
    #                   <p>If supplied, must match the name of an existing DBSubnetGroup.</p>
    #               </li>
    #               <li>
    #                   <p>The specified DB subnet group must be in the same Amazon Web Services Region in which the operation is running.</p>
    #               </li>
    #               <li>
    #                   <p>All read replicas in one Amazon Web Services Region that are created from the same source DB
    #                       instance must either:></p>
    #                   <ul>
    #                     <li>
    #                           <p>Specify DB subnet groups from the same VPC. All these read replicas are created in the same
    #                               VPC.</p>
    #                       </li>
    #                     <li>
    #                           <p>Not specify a DB subnet group. All these read replicas are created outside of any
    #                               VPC.</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #           <p>Example: <code>mydbsubnetgroup</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute vpc_security_group_ids
    #   <p>A list of Amazon EC2 VPC security groups to associate with the read replica.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #           <p>Default: The default EC2 VPC security group for the DB subnet group's VPC.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute storage_type
    #   <p>Specifies the storage type to be associated with the read replica.</p>
    #           <p>Valid values: <code>standard | gp2 | io1</code>
    #            </p>
    #           <p>If you specify <code>io1</code>, you must also include a value for the
    #               <code>Iops</code> parameter.</p>
    #           <p>Default: <code>io1</code> if the <code>Iops</code> parameter
    #               is specified, otherwise <code>gp2</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute copy_tags_to_snapshot
    #   <p>A value that indicates whether to copy all tags from the read replica to snapshots of
    #               the read replica. By default, tags are not copied.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute monitoring_interval
    #   <p>The interval, in seconds, between points when Enhanced Monitoring metrics are
    #               collected for the read replica. To disable collecting Enhanced Monitoring metrics,
    #               specify 0. The default is 0.</p>
    #           <p>If <code>MonitoringRoleArn</code> is specified, then you must also set <code>MonitoringInterval</code>
    #         to a value other than 0.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #           <p>Valid Values: <code>0, 1, 5, 10, 15, 30, 60</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute monitoring_role_arn
    #   <p>The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to Amazon CloudWatch Logs. For
    #         example, <code>arn:aws:iam:123456789012:role/emaccess</code>. For information on creating a monitoring role,
    #         go to <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html USER_Monitoring.OS.IAMRole">To
    #             create an IAM role for Amazon RDS Enhanced Monitoring</a> in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>If <code>MonitoringInterval</code> is set to a value other than 0, then you must
    #             supply a <code>MonitoringRoleArn</code> value.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services KMS key identifier for an encrypted read replica.</p>
    #           <p>The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.</p>
    #           <p>If you create an encrypted read replica in the same Amazon Web Services Region as the source DB
    #               instance, then do not specify a value for this parameter. A read replica in the same Amazon Web Services Region
    #               is always encrypted with the same KMS key as the source DB instance.</p>
    #           <p>If you create an encrypted read replica in a different Amazon Web Services Region, then you must
    #               specify a KMS key identifier for the destination Amazon Web Services Region. KMS keys are specific to
    #               the Amazon Web Services Region that they are created in, and you can't use KMS keys from one
    #               Amazon Web Services Region in another Amazon Web Services Region.</p>
    #           <p>You can't create an encrypted read replica from an unencrypted DB instance.</p>
    #           <p>This setting doesn't apply to RDS Custom, which uses the same KMS key as the primary
    #               replica.</p>
    #
    #   @return [String]
    #
    # @!attribute pre_signed_url
    #   <p>The URL that contains a Signature Version 4 signed request for the <code>CreateDBInstanceReadReplica</code> API action
    #               in the source Amazon Web Services Region that contains the source DB instance.</p>
    #           <p>You must specify this parameter when you create an encrypted read replica from
    #               another Amazon Web Services Region by using the Amazon RDS API. Don't specify
    #                   <code>PreSignedUrl</code> when you are creating an encrypted read replica in the
    #               same Amazon Web Services Region.</p>
    #           <p>The presigned URL must be a valid request for the <code>CreateDBInstanceReadReplica</code> API action
    #               that can be executed in the source Amazon Web Services Region that contains the encrypted source DB instance.
    #               The presigned URL request must contain the following parameter values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>DestinationRegion</code> - The Amazon Web Services Region that the encrypted read
    #                       replica is created in. This Amazon Web Services Region is the same one where the
    #                           <code>CreateDBInstanceReadReplica</code> action is called that contains this presigned URL.</p>
    #                   <p>For example, if you create an encrypted DB instance in the us-west-1 Amazon Web Services Region,
    #                       from a source DB instance in the us-east-2 Amazon Web Services Region,
    #                       then you call the <code>CreateDBInstanceReadReplica</code> action in
    #                       the us-east-1 Amazon Web Services Region and provide a presigned URL that contains a call to the
    #                       <code>CreateDBInstanceReadReplica</code> action in the us-west-2 Amazon Web Services Region. For this
    #                       example, the <code>DestinationRegion</code> in the presigned URL must be set to
    #                       the us-east-1 Amazon Web Services Region.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>KmsKeyId</code> - The Amazon Web Services KMS key identifier for the key to use to
    #                       encrypt the read replica in the destination Amazon Web Services Region. This is the same
    #                       identifier for both the <code>CreateDBInstanceReadReplica</code> action that is
    #                       called in the destination Amazon Web Services Region, and the action contained in the presigned
    #                       URL.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SourceDBInstanceIdentifier</code> - The DB instance identifier for
    #                       the encrypted DB instance to be replicated. This identifier must be in the
    #                       Amazon Resource Name (ARN) format for the source Amazon Web Services Region. For example, if you
    #                       are creating an encrypted read replica from a DB instance in the us-west-2 Amazon Web Services
    #                       Region, then your <code>SourceDBInstanceIdentifier</code> looks like the
    #                       following example:
    #                           <code>arn:aws:rds:us-west-2:123456789012:instance:mysql-instance1-20161115</code>.</p>
    #               </li>
    #            </ul>
    #           <p>To learn how to generate a Signature Version 4 signed request, see
    #               <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html">Authenticating Requests: Using Query Parameters (Amazon Web Services Signature Version 4)</a> and
    #               <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4 Signing Process</a>.</p>
    #           <note>
    #               <p>If you are using an Amazon Web Services SDK tool or the CLI, you can specify
    #                       <code>SourceRegion</code> (or <code>--source-region</code> for the CLI)
    #                   instead of specifying <code>PreSignedUrl</code> manually. Specifying
    #                       <code>SourceRegion</code> autogenerates a presigned URL that is a valid request
    #                   for the operation that can be executed in the source Amazon Web Services Region.</p>
    #               <p>
    #                  <code>SourceRegion</code> isn't supported for SQL Server, because SQL Server on Amazon RDS
    #                   doesn't support cross-Region read replicas.</p>
    #           </note>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute enable_iam_database_authentication
    #   <p>A value that indicates whether to enable mapping of Amazon Web Services Identity and Access Management
    #               (IAM) accounts to database accounts. By default, mapping isn't enabled.</p>
    #           <p>For more information about IAM database authentication, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html">
    #                 IAM Database Authentication for MySQL and PostgreSQL</a> in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_performance_insights
    #   <p>A value that indicates whether to enable Performance Insights for the read replica.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html">Using
    #               Amazon Performance Insights</a> in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute performance_insights_kms_key_id
    #   <p>The Amazon Web Services KMS key identifier for encryption of Performance Insights data.</p>
    #           <p>The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.</p>
    #           <p>If you do not specify a value for <code>PerformanceInsightsKMSKeyId</code>, then Amazon RDS
    #               uses your default KMS key. There is a default KMS key for your Amazon Web Services account.
    #               Your Amazon Web Services account has a different default KMS key for each Amazon Web Services Region.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute performance_insights_retention_period
    #   <p>The amount of time, in days, to retain Performance Insights data. Valid values are 7 or 731 (2 years).</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [Integer]
    #
    # @!attribute enable_cloudwatch_logs_exports
    #   <p>The list of logs that the new DB instance is to export to CloudWatch Logs. The values
    #               in the list depend on the DB engine being used. For more information, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html USER_LogAccess.Procedural.UploadtoCloudWatch">Publishing
    #                   Database Logs to Amazon CloudWatch Logs </a> in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute processor_features
    #   <p>The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [Array<ProcessorFeature>]
    #
    # @!attribute use_default_processor_features
    #   <p>A value that indicates whether the DB instance class of the DB instance uses its default
    #               processor features.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute deletion_protection
    #   <p>A value that indicates whether the DB instance has deletion protection enabled.
    #               The database can't be deleted when deletion protection is enabled. By default,
    #               deletion protection isn't enabled. For more information, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html">
    #                   Deleting a DB Instance</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute domain
    #   <p>The Active Directory directory ID to create the DB instance in. Currently, only MySQL, Microsoft SQL
    #               Server, Oracle, and PostgreSQL DB instances can be created in an Active Directory Domain.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html">
    #               Kerberos Authentication</a> in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_iam_role_name
    #   <p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute replica_mode
    #   <p>The open mode of the replica database: mounted or read-only.</p>
    #           <note>
    #               <p>This parameter is only supported for Oracle DB instances.</p>
    #           </note>
    #           <p>Mounted DB replicas are included in Oracle Database Enterprise Edition. The main use case for
    #               mounted replicas is cross-Region disaster recovery. The primary database doesn't use Active
    #               Data Guard to transmit information to the mounted replica. Because it doesn't accept
    #               user connections, a mounted replica can't serve a read-only workload.</p>
    #           <p>You can create a combination of mounted and read-only DB replicas for the same primary DB instance.
    #               For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html">Working with Oracle Read Replicas for Amazon RDS</a>
    #               in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>For RDS Custom, you must specify this parameter and set it to <code>mounted</code>. The value won't be set by default.
    #               After replica creation, you can manage the open mode manually.</p>
    #
    #   Enum, one of: ["open-read-only", "mounted"]
    #
    #   @return [String]
    #
    # @!attribute max_allocated_storage
    #   <p>The upper limit in gibibytes (GiB) to which Amazon RDS can automatically scale the storage of the DB instance.</p>
    #           <p>For more information about this setting, including limitations that apply to it, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html USER_PIOPS.Autoscaling">
    #                   Managing capacity automatically with Amazon RDS storage autoscaling</a>
    #               in the <i>Amazon RDS User Guide</i>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute custom_iam_instance_profile
    #   <p>The instance profile associated with the underlying Amazon EC2 instance of an
    #               RDS Custom DB instance. The instance profile must meet the following requirements:</p>
    #           <ul>
    #               <li>
    #                   <p>The profile must exist in your account.</p>
    #               </li>
    #               <li>
    #                   <p>The profile must have an IAM role that Amazon EC2 has permissions to assume.</p>
    #               </li>
    #               <li>
    #                   <p>The instance profile name and the associated IAM role name must start with the prefix <code>AWSRDSCustom</code>.</p>
    #               </li>
    #            </ul>
    #           <p>For the list of permissions required for the IAM role, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-setup-orcl.html custom-setup-orcl.iam-vpc">
    #                   Configure IAM and your VPC</a> in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>This setting is required for RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute network_type
    #   <p>The network type of the DB instance.</p>
    #           <p>Valid values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>IPV4</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DUAL</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <p>The network type is determined by the <code>DBSubnetGroup</code> specified for read replica.
    #               A <code>DBSubnetGroup</code> can support only the IPv4 protocol or the IPv4 and the IPv6
    #               protocols (<code>DUAL</code>).</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html">
    #               Working with a DB instance in a VPC</a> in the
    #               <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [String]
    #
    CreateDBInstanceReadReplicaInput = ::Struct.new(
      :db_instance_identifier,
      :source_db_instance_identifier,
      :db_instance_class,
      :availability_zone,
      :port,
      :multi_az,
      :auto_minor_version_upgrade,
      :iops,
      :option_group_name,
      :db_parameter_group_name,
      :publicly_accessible,
      :tags,
      :db_subnet_group_name,
      :vpc_security_group_ids,
      :storage_type,
      :copy_tags_to_snapshot,
      :monitoring_interval,
      :monitoring_role_arn,
      :kms_key_id,
      :pre_signed_url,
      :enable_iam_database_authentication,
      :enable_performance_insights,
      :performance_insights_kms_key_id,
      :performance_insights_retention_period,
      :enable_cloudwatch_logs_exports,
      :processor_features,
      :use_default_processor_features,
      :deletion_protection,
      :domain,
      :domain_iam_role_name,
      :replica_mode,
      :max_allocated_storage,
      :custom_iam_instance_profile,
      :network_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_instance
    #   <p>Contains the details of an Amazon RDS DB instance.</p>
    #           <p>This data type is used as a response element in the operations <code>CreateDBInstance</code>,
    #             <code>CreateDBInstanceReadReplica</code>, <code>DeleteDBInstance</code>, <code>DescribeDBInstances</code>,
    #             <code>ModifyDBInstance</code>, <code>PromoteReadReplica</code>, <code>RebootDBInstance</code>,
    #             <code>RestoreDBInstanceFromDBSnapshot</code>, <code>RestoreDBInstanceFromS3</code>, <code>RestoreDBInstanceToPointInTime</code>,
    #             <code>StartDBInstance</code>, and <code>StopDBInstance</code>.</p>
    #
    #   @return [DBInstance]
    #
    CreateDBInstanceReadReplicaOutput = ::Struct.new(
      :db_instance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_parameter_group_name
    #   <p>The name of the DB parameter group.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be 1 to 255 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                   <p>Can't end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>This value is stored as a lowercase string.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute db_parameter_group_family
    #   <p>The DB parameter group family name. A DB parameter group can be associated with one and only one DB parameter group family, and can be applied only to a DB instance running a database engine and engine version compatible with that DB parameter group family.</p>
    #           <p>To list all of the available parameter group families for a DB engine, use the following command:</p>
    #           <p>
    #               <code>aws rds describe-db-engine-versions --query "DBEngineVersions[].DBParameterGroupFamily" --engine <engine></code>
    #            </p>
    #           <p>For example, to list all of the available parameter group families for the MySQL DB engine, use the following command:</p>
    #           <p>
    #               <code>aws rds describe-db-engine-versions --query "DBEngineVersions[].DBParameterGroupFamily" --engine mysql</code>
    #            </p>
    #           <note>
    #               <p>The output contains duplicates.</p>
    #           </note>
    #           <p>The following are the valid DB engine values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>aurora</code> (for MySQL 5.6-compatible Aurora)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>aurora-mysql</code> (for MySQL 5.7-compatible and MySQL 8.0-compatible Aurora)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>aurora-postgresql</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>mariadb</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>mysql</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-ee</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-ee-cdb</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-se2</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-se2-cdb</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>postgres</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-ee</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-se</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-ex</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-web</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description for the DB parameter group.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags to assign to the DB parameter group.</p>
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
    #   <p>Contains the details of an Amazon RDS DB parameter group.</p>
    #           <p>This data type is used as a response element in the <code>DescribeDBParameterGroups</code> action.</p>
    #
    #   @return [DBParameterGroup]
    #
    CreateDBParameterGroupOutput = ::Struct.new(
      :db_parameter_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_proxy_name
    #   <p>The name of the DB proxy associated with the DB proxy endpoint that you create.</p>
    #
    #   @return [String]
    #
    # @!attribute db_proxy_endpoint_name
    #   <p>The name of the DB proxy endpoint to create.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_subnet_ids
    #   <p>The VPC subnet IDs for the DB proxy endpoint that you create. You can specify a
    #           different set of subnet IDs than for the original DB proxy.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute vpc_security_group_ids
    #   <p>The VPC security group IDs for the DB proxy endpoint that you create. You can
    #           specify a different set of security group IDs than for the original DB proxy.
    #           The default is the default security group for the VPC.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute target_role
    #   <p>A value that indicates whether the DB proxy endpoint can be used for read/write
    #           or read-only operations. The default is <code>READ_WRITE</code>.</p>
    #
    #   Enum, one of: ["READ_WRITE", "READ_ONLY"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags.
    #             For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [Array<Tag>]
    #
    CreateDBProxyEndpointInput = ::Struct.new(
      :db_proxy_name,
      :db_proxy_endpoint_name,
      :vpc_subnet_ids,
      :vpc_security_group_ids,
      :target_role,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_proxy_endpoint
    #   <p>The <code>DBProxyEndpoint</code> object that is created by the API operation.
    #           The DB proxy endpoint that you create might provide capabilities such as read/write
    #           or read-only operations, or using a different VPC than the proxy's default VPC.</p>
    #
    #   @return [DBProxyEndpoint]
    #
    CreateDBProxyEndpointOutput = ::Struct.new(
      :db_proxy_endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_proxy_name
    #   <p>The identifier for the proxy. This name must be unique for all proxies owned by your Amazon Web Services account in the specified Amazon Web Services Region. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_family
    #   <p>The kinds of databases that the proxy can connect to.
    #             This value determines which database network protocol the proxy recognizes when it interprets
    #           network traffic to and from the database.
    #           The engine family applies to MySQL and PostgreSQL for both RDS and Aurora.</p>
    #
    #   Enum, one of: ["MYSQL", "POSTGRESQL"]
    #
    #   @return [String]
    #
    # @!attribute auth
    #   <p>The authorization mechanism that the proxy uses.</p>
    #
    #   @return [Array<UserAuthConfig>]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that the proxy uses to access secrets in Amazon Web Services Secrets Manager.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_subnet_ids
    #   <p>One or more VPC subnet IDs to associate with the new proxy.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute vpc_security_group_ids
    #   <p>One or more VPC security group IDs to associate with the new proxy.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute require_tls
    #   <p>A Boolean parameter that specifies whether Transport Layer Security (TLS) encryption is required for connections to the proxy.
    #           By enabling this setting, you can enforce encrypted TLS connections to the proxy.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute idle_client_timeout
    #   <p>The number of seconds that a connection to the proxy can be inactive before the proxy disconnects it. You can set this
    #           value higher or lower than the connection timeout limit for the associated database.</p>
    #
    #   @return [Integer]
    #
    # @!attribute debug_logging
    #   <p>Whether the proxy includes detailed information about SQL statements in its logs.
    #           This information helps you to debug issues involving SQL behavior or the performance
    #           and scalability of the proxy connections. The debug information includes the text of
    #           SQL statements that you submit through the proxy. Thus, only enable this setting
    #           when needed for debugging, and only when you have security measures in place to
    #           safeguard any sensitive information that appears in the logs.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>An optional set of key-value pairs to associate arbitrary data of your choosing with the proxy.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateDBProxyInput = ::Struct.new(
      :db_proxy_name,
      :engine_family,
      :auth,
      :role_arn,
      :vpc_subnet_ids,
      :vpc_security_group_ids,
      :require_tls,
      :idle_client_timeout,
      :debug_logging,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.require_tls ||= false
        self.debug_logging ||= false
      end
    end

    # @!attribute db_proxy
    #   <p>The <code>DBProxy</code> structure corresponding to the new proxy.</p>
    #
    #   @return [DBProxy]
    #
    CreateDBProxyOutput = ::Struct.new(
      :db_proxy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_security_group_name
    #   <p>The name for the DB security group. This value is stored as a lowercase string.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be 1 to 255 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                   <p>Can't end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #               <li>
    #                   <p>Must not be "Default"</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>mysecuritygroup</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute db_security_group_description
    #   <p>The description for the DB security group.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags to assign to the DB security group.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateDBSecurityGroupInput = ::Struct.new(
      :db_security_group_name,
      :db_security_group_description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_security_group
    #   <p>Contains the details for an Amazon RDS DB security group.</p>
    #           <p>This data type is used as a response element
    #             in the <code>DescribeDBSecurityGroups</code> action.</p>
    #
    #   @return [DBSecurityGroup]
    #
    CreateDBSecurityGroupOutput = ::Struct.new(
      :db_security_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_snapshot_identifier
    #   <p>The identifier for the DB snapshot.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Can't be null, empty, or blank</p>
    #               </li>
    #               <li>
    #                   <p>Must contain from 1 to 255 letters, numbers, or hyphens</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                   <p>Can't end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>my-snapshot-id</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute db_instance_identifier
    #   <p>The identifier of the DB instance that you want to create the snapshot of.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must match the identifier of an existing DBInstance.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags.
    #             For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [Array<Tag>]
    #
    CreateDBSnapshotInput = ::Struct.new(
      :db_snapshot_identifier,
      :db_instance_identifier,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_snapshot
    #   <p>Contains the details of an Amazon RDS DB snapshot.</p>
    #           <p>This data type is used as a response element
    #             in the <code>DescribeDBSnapshots</code> action.</p>
    #
    #   @return [DBSnapshot]
    #
    CreateDBSnapshotOutput = ::Struct.new(
      :db_snapshot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_subnet_group_name
    #   <p>The name for the DB subnet group. This value is stored as a lowercase string.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain no more than 255 letters, numbers, periods, underscores, spaces, or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>Must not be default.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>mydbsubnetgroup</code>
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
    #   <p>Tags to assign to the DB subnet group.</p>
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
    #   <p>Contains the details of an Amazon RDS DB subnet group.</p>
    #           <p>This data type is used as a response element
    #             in the <code>DescribeDBSubnetGroups</code> action.</p>
    #
    #   @return [DBSubnetGroup]
    #
    CreateDBSubnetGroupOutput = ::Struct.new(
      :db_subnet_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute subscription_name
    #   <p>The name of the subscription.</p>
    #           <p>Constraints: The name must be less than 255 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.</p>
    #
    #   @return [String]
    #
    # @!attribute source_type
    #   <p>The type of source that is generating the events. For example, if you want to be
    #               notified of events generated by a DB instance, you set this parameter to
    #                   <code>db-instance</code>. For RDS Proxy events, specify <code>db-proxy</code>. If this value isn't specified, all events are
    #               returned.</p>
    #           <p>Valid values: <code>db-instance</code> | <code>db-cluster</code> | <code>db-parameter-group</code> | <code>db-security-group</code> | <code>db-snapshot</code> | <code>db-cluster-snapshot</code> | <code>db-proxy</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute event_categories
    #   <p>A list of event categories for a particular source type (<code>SourceType</code>)
    #               that you want to subscribe to. You can see a list of the categories for a given source type in the "Amazon RDS event categories and event messages" section of the <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.Messages.html">
    #                   <i>Amazon RDS User Guide</i>
    #               </a> or the
    #                   <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_Events.Messages.html">
    #                   <i>Amazon Aurora User Guide</i>
    #               </a>.
    #                   You can also see this list by using the <code>DescribeEventCategories</code> operation.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute source_ids
    #   <p>The list of identifiers of the event sources for which events are returned. If not specified, then all sources are included in the response.
    #             An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens. It can't end with a hyphen or contain two consecutive hyphens.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If <code>SourceIds</code> are supplied, <code>SourceType</code> must also be provided.</p>
    #               </li>
    #               <li>
    #                   <p>If the source type is a DB instance, a <code>DBInstanceIdentifier</code> value must be supplied.</p>
    #               </li>
    #               <li>
    #                   <p>If the source type is a DB cluster, a <code>DBClusterIdentifier</code> value must be supplied.</p>
    #               </li>
    #               <li>
    #                   <p>If the source type is a DB parameter group, a <code>DBParameterGroupName</code> value must be supplied.</p>
    #               </li>
    #               <li>
    #                   <p>If the source type is a DB security group, a <code>DBSecurityGroupName</code> value must be supplied.</p>
    #               </li>
    #               <li>
    #                   <p>If the source type is a DB snapshot, a <code>DBSnapshotIdentifier</code> value must be supplied.</p>
    #               </li>
    #               <li>
    #                   <p>If the source type is a DB cluster snapshot, a <code>DBClusterSnapshotIdentifier</code> value must be supplied.</p>
    #               </li>
    #               <li>
    #                   <p>If the source type is an RDS Proxy, a <code>DBProxyName</code> value must be supplied.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute enabled
    #   <p>A value that indicates whether to activate the subscription. If the event notification subscription isn't activated, the subscription is created but not active.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>A list of tags.
    #             For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
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
    #   <p>Contains the results of a successful invocation of the <code>DescribeEventSubscriptions</code> action.</p>
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
    #   <p>The Amazon Resource Name (ARN) to use as the primary cluster of the global database.
    #           This parameter is optional.</p>
    #
    #   @return [String]
    #
    # @!attribute engine
    #   <p>The name of the database engine to be used for this DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The engine version of the Aurora global database.</p>
    #
    #   @return [String]
    #
    # @!attribute deletion_protection
    #   <p>The deletion protection setting for the new global database.
    #           The global database can't be deleted when deletion protection is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute database_name
    #   <p>The name for your database of up to 64 alpha-numeric characters. If you do not provide a name, Amazon
    #           Aurora will not create a database in the global database cluster you are creating.</p>
    #
    #   @return [String]
    #
    # @!attribute storage_encrypted
    #   <p>The storage encryption setting for the new global database cluster.</p>
    #
    #   @return [Boolean]
    #
    CreateGlobalClusterInput = ::Struct.new(
      :global_cluster_identifier,
      :source_db_cluster_identifier,
      :engine,
      :engine_version,
      :deletion_protection,
      :database_name,
      :storage_encrypted,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_cluster
    #   <p>A data type representing an Aurora global database.</p>
    #
    #   @return [GlobalCluster]
    #
    CreateGlobalClusterOutput = ::Struct.new(
      :global_cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute option_group_name
    #   <p>Specifies the name of the option group to be created.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be 1 to 255 letters, numbers, or hyphens</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                   <p>Can't end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>myoptiongroup</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute engine_name
    #   <p>Specifies the name of the engine that this option group should be associated with.</p>
    #           <p>Valid Values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>mariadb</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>mysql</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-ee</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-ee-cdb</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-se2</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-se2-cdb</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>postgres</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-ee</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-se</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-ex</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-web</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute major_engine_version
    #   <p>Specifies the major version of the engine that this option group should be associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute option_group_description
    #   <p>The description of the option group.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags to assign to the option group.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateOptionGroupInput = ::Struct.new(
      :option_group_name,
      :engine_name,
      :major_engine_version,
      :option_group_description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute option_group
    #   <p></p>
    #
    #   @return [OptionGroup]
    #
    CreateOptionGroupOutput = ::Struct.new(
      :option_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             <code>CustomAvailabilityZoneId</code> doesn't refer to an existing custom
    #             Availability Zone identifier.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    CustomAvailabilityZoneNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A CEV with the specified name already exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    CustomDBEngineVersionAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified CEV was not found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    CustomDBEngineVersionNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have exceeded your CEV quota.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    CustomDBEngineVersionQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CustomEngineVersionStatus
    #
    module CustomEngineVersionStatus
      # No documentation available.
      #
      available = "available"

      # No documentation available.
      #
      inactive = "inactive"

      # No documentation available.
      #
      inactive_except_restore = "inactive-except-restore"
    end

    # <p>Contains the details of an Amazon Aurora DB cluster or Multi-AZ DB cluster.</p>
    #         <p>For an Amazon Aurora DB cluster, this data type is used as a response element in the operations
    #           <code>CreateDBCluster</code>, <code>DeleteDBCluster</code>, <code>DescribeDBClusters</code>,
    #           <code>FailoverDBCluster</code>, <code>ModifyDBCluster</code>, <code>PromoteReadReplicaDBCluster</code>,
    #           <code>RestoreDBClusterFromS3</code>, <code>RestoreDBClusterFromSnapshot</code>,
    #           <code>RestoreDBClusterToPointInTime</code>, <code>StartDBCluster</code>, and <code>StopDBCluster</code>.</p>
    #         <p>For a Multi-AZ DB cluster, this data type is used as a response element in the operations
    #           <code>CreateDBCluster</code>, <code>DeleteDBCluster</code>, <code>DescribeDBClusters</code>,
    #           <code>FailoverDBCluster</code>, <code>ModifyDBCluster</code>, <code>RebootDBCluster</code>,
    #           <code>RestoreDBClusterFromSnapshot</code>, and <code>RestoreDBClusterToPointInTime</code>.</p>
    #         <p>For more information on Amazon Aurora DB clusters, see
    #           <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html">
    #               What is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i>
    #          </p>
    #         <p>For more information on Multi-AZ DB clusters, see
    #           <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html">
    #               Multi-AZ deployments with two readable standby DB instances</a> in the <i>Amazon RDS User Guide.</i>
    #          </p>
    #
    # @!attribute allocated_storage
    #   <p>For all database engines except Amazon Aurora, <code>AllocatedStorage</code> specifies the allocated storage size in gibibytes (GiB).
    #             For Aurora, <code>AllocatedStorage</code> always returns 1, because Aurora DB cluster storage size isn't fixed, but instead automatically
    #         adjusts as needed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute availability_zones
    #   <p>Provides the list of Availability Zones (AZs) where instances in the DB cluster can be created.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute backup_retention_period
    #   <p>Specifies the number of days for which automatic DB snapshots are retained.</p>
    #
    #   @return [Integer]
    #
    # @!attribute character_set_name
    #   <p>If present, specifies the name of the character set that this cluster is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>Contains the name of the initial database of this DB cluster that was provided at create time, if one was specified when the DB cluster was created. This same name is returned for the life of the DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_identifier
    #   <p>Contains a user-supplied DB cluster identifier. This identifier is the unique key that identifies a DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_parameter_group
    #   <p>Specifies the name of the DB cluster parameter group for the DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute db_subnet_group
    #   <p>Specifies information on the subnet group associated with the DB cluster, including the name, description, and subnets in the subnet group.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Specifies the current state of this DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute automatic_restart_time
    #   <p>The time when a stopped DB cluster is restarted automatically.</p>
    #
    #   @return [Time]
    #
    # @!attribute percent_progress
    #   <p>Specifies the progress of the operation as a percentage.</p>
    #
    #   @return [String]
    #
    # @!attribute earliest_restorable_time
    #   <p>The earliest time to which a database can be restored with point-in-time
    #               restore.</p>
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
    #               connections across the Aurora Replicas that are available in a DB cluster. As clients request new connections
    #               to the reader endpoint, Aurora distributes the connection requests among the Aurora Replicas in the DB cluster.
    #               This functionality can help balance your read workload across multiple Aurora Replicas in your DB cluster.</p>
    #           <p>If a failover occurs, and the Aurora Replica that you are connected to is promoted
    #               to be the primary instance, your connection is dropped. To
    #               continue sending your read workload to other Aurora Replicas in the cluster,
    #               you can then reconnect to the reader endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_endpoints
    #   <p>Identifies all custom endpoints associated with the cluster.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute multi_az
    #   <p>Specifies whether the DB cluster has instances in multiple Availability Zones.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute engine
    #   <p>The name of the database engine to be used for this DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>Indicates the database engine version.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_restorable_time
    #   <p>Specifies the latest time to which a database can be restored with point-in-time restore.</p>
    #
    #   @return [Time]
    #
    # @!attribute port
    #   <p>Specifies the port that the database engine is listening on.</p>
    #
    #   @return [Integer]
    #
    # @!attribute master_username
    #   <p>Contains the master username for the DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_option_group_memberships
    #   <p>Provides the list of option group memberships for this DB cluster.</p>
    #
    #   @return [Array<DBClusterOptionGroupStatus>]
    #
    # @!attribute preferred_backup_window
    #   <p>Specifies the daily time range during which automated backups are
    #               created if automated backups are enabled, as determined
    #               by the <code>BackupRetentionPeriod</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute preferred_maintenance_window
    #   <p>Specifies the weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p>
    #
    #   @return [String]
    #
    # @!attribute replication_source_identifier
    #   <p>Contains the identifier of the source DB cluster if this DB cluster is a read
    #               replica.</p>
    #
    #   @return [String]
    #
    # @!attribute read_replica_identifiers
    #   <p>Contains one or more identifiers of the read replicas associated with this DB
    #               cluster.</p>
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
    #   <p>If <code>StorageEncrypted</code> is enabled, the Amazon Web Services KMS key identifier for the encrypted DB cluster.</p>
    #           <p>The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_resource_id
    #   <p>The Amazon Web Services Region-unique, immutable identifier for the DB cluster. This identifier is found in Amazon Web Services CloudTrail log entries whenever
    #             the KMS key for the DB cluster is accessed.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_arn
    #   <p>The Amazon Resource Name (ARN) for the DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute associated_roles
    #   <p>Provides a list of the Amazon Web Services Identity and Access Management (IAM) roles that are associated with the DB cluster.
    #             IAM roles that are associated with a DB cluster grant permission for the DB cluster to access other Amazon Web Services
    #             on your behalf.</p>
    #
    #   @return [Array<DBClusterRole>]
    #
    # @!attribute iam_database_authentication_enabled
    #   <p>A value that indicates whether the mapping of Amazon Web Services Identity and Access Management (IAM) accounts to database accounts is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute clone_group_id
    #   <p>Identifies the clone group to which the DB cluster is associated.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_create_time
    #   <p>Specifies the time when the DB cluster was created, in Universal Coordinated Time (UTC).</p>
    #
    #   @return [Time]
    #
    # @!attribute earliest_backtrack_time
    #   <p>The earliest time to which a DB cluster can be backtracked.</p>
    #
    #   @return [Time]
    #
    # @!attribute backtrack_window
    #   <p>The target backtrack window, in seconds. If this value is set to 0, backtracking is
    #               disabled for the DB cluster. Otherwise, backtracking is enabled.</p>
    #
    #   @return [Integer]
    #
    # @!attribute backtrack_consumed_change_records
    #   <p>The number of change records stored for Backtrack.</p>
    #
    #   @return [Integer]
    #
    # @!attribute enabled_cloudwatch_logs_exports
    #   <p>A list of log types that this DB cluster is configured to export to CloudWatch Logs.</p>
    #           <p>Log types vary by DB engine. For information about the log types for each DB engine, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html">Amazon RDS Database Log Files</a> in the <i>Amazon Aurora User Guide.</i>
    #            </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute capacity
    #   <p>The current capacity of an Aurora Serverless v1 DB cluster. The capacity is 0 (zero)
    #             when the cluster is paused.</p>
    #           <p>For more information about Aurora Serverless v1, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html">Using Amazon Aurora Serverless v1</a> in the
    #             <i>Amazon Aurora User Guide</i>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute engine_mode
    #   <p>The DB engine mode of the DB cluster, either <code>provisioned</code>, <code>serverless</code>,
    #               <code>parallelquery</code>, <code>global</code>, or <code>multimaster</code>.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBCluster.html">
    #               CreateDBCluster</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute scaling_configuration_info
    #   <p>Shows the scaling configuration for an Aurora DB cluster in <code>serverless</code> DB engine mode.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html">Using Amazon Aurora Serverless v1</a> in the
    #               <i>Amazon Aurora User Guide</i>.</p>
    #
    #   @return [ScalingConfigurationInfo]
    #
    # @!attribute deletion_protection
    #   <p>Indicates if the DB cluster has deletion protection enabled.
    #               The database can't be deleted when deletion protection is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute http_endpoint_enabled
    #   <p>A value that indicates whether the HTTP endpoint for an Aurora Serverless v1 DB cluster is enabled.</p>
    #           <p>When enabled, the HTTP endpoint provides a connectionless web service API for running
    #             SQL queries on the Aurora Serverless v1 DB cluster. You can also query your database
    #             from inside the RDS console with the query editor.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html">Using the Data API for Aurora Serverless v1</a> in the
    #             <i>Amazon Aurora User Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute activity_stream_mode
    #   <p>The mode of the database activity stream.
    #              Database events such as a change or access generate an activity stream event.
    #              The database session can handle these events either synchronously or asynchronously.</p>
    #
    #   Enum, one of: ["sync", "async"]
    #
    #   @return [String]
    #
    # @!attribute activity_stream_status
    #   <p>The status of the database activity stream.</p>
    #
    #   Enum, one of: ["stopped", "starting", "started", "stopping"]
    #
    #   @return [String]
    #
    # @!attribute activity_stream_kms_key_id
    #   <p>The Amazon Web Services KMS key identifier used for encrypting messages in the database activity stream.</p>
    #           <p>The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.</p>
    #
    #   @return [String]
    #
    # @!attribute activity_stream_kinesis_stream_name
    #   <p>The name of the Amazon Kinesis data stream used for the database activity stream.</p>
    #
    #   @return [String]
    #
    # @!attribute copy_tags_to_snapshot
    #   <p>Specifies whether tags are copied from the DB cluster to snapshots of the DB cluster.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute cross_account_clone
    #   <p>Specifies whether the DB cluster is a clone of a DB cluster owned by a different Amazon Web Services account.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute domain_memberships
    #   <p>The Active Directory Domain membership records associated with the DB cluster.</p>
    #
    #   @return [Array<DomainMembership>]
    #
    # @!attribute tag_list
    #   <p>A list of tags.
    #             For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute global_write_forwarding_status
    #   <p>Specifies whether a secondary cluster in an Aurora global database has
    #           write forwarding enabled, not enabled, or is in the process of enabling it.</p>
    #
    #   Enum, one of: ["enabled", "disabled", "enabling", "disabling", "unknown"]
    #
    #   @return [String]
    #
    # @!attribute global_write_forwarding_requested
    #   <p>Specifies whether you have requested to enable write forwarding for a secondary cluster
    #         in an Aurora global database. Because write forwarding takes time to enable, check the
    #         value of <code>GlobalWriteForwardingStatus</code> to confirm that the request has completed
    #         before using the write forwarding feature for this cluster.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute pending_modified_values
    #   <p>A value that specifies that changes to the DB cluster are pending. This element is only included when changes are pending.
    #             Specific changes are identified by subelements.</p>
    #
    #   @return [ClusterPendingModifiedValues]
    #
    # @!attribute db_cluster_instance_class
    #   <p>The name of the compute and memory capacity class of the DB instance.</p>
    #           <p>This setting is only for non-Aurora Multi-AZ DB clusters.</p>
    #
    #   @return [String]
    #
    # @!attribute storage_type
    #   <p>The storage type associated with the DB cluster.</p>
    #           <p>This setting is only for non-Aurora Multi-AZ DB clusters.</p>
    #
    #   @return [String]
    #
    # @!attribute iops
    #   <p>The Provisioned IOPS (I/O operations per second) value.</p>
    #           <p>This setting is only for non-Aurora Multi-AZ DB clusters.</p>
    #
    #   @return [Integer]
    #
    # @!attribute publicly_accessible
    #   <p>Specifies the accessibility options for the DB instance.</p>
    #           <p>When the DB instance is publicly accessible, its Domain Name System (DNS) endpoint resolves to the private
    #               IP address from within the DB instance's virtual private cloud (VPC).
    #               It resolves to the public IP address from outside of the DB instance's VPC.
    #               Access to the DB instance is ultimately controlled by the security group it uses.
    #               That public access is not permitted if the security group assigned to the DB instance doesn't permit it.</p>
    #           <p>When the DB instance isn't publicly accessible, it is an internal DB instance with a DNS name that resolves to a private IP address.</p>
    #           <p>For more information, see <a>CreateDBInstance</a>.</p>
    #           <p>This setting is only for non-Aurora Multi-AZ DB clusters.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute auto_minor_version_upgrade
    #   <p>A value that indicates that minor version patches are applied automatically.</p>
    #           <p>This setting is only for non-Aurora Multi-AZ DB clusters.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute monitoring_interval
    #   <p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB cluster.</p>
    #           <p>This setting is only for non-Aurora Multi-AZ DB clusters.</p>
    #
    #   @return [Integer]
    #
    # @!attribute monitoring_role_arn
    #   <p>The ARN for the IAM role that permits RDS to send Enhanced Monitoring metrics to Amazon CloudWatch Logs.</p>
    #           <p>This setting is only for non-Aurora Multi-AZ DB clusters.</p>
    #
    #   @return [String]
    #
    # @!attribute performance_insights_enabled
    #   <p>True if Performance Insights is enabled for the DB cluster, and otherwise false.</p>
    #           <p>This setting is only for non-Aurora Multi-AZ DB clusters.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute performance_insights_kms_key_id
    #   <p>The Amazon Web Services KMS key identifier for encryption of Performance Insights data.</p>
    #           <p>The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.</p>
    #           <p>This setting is only for non-Aurora Multi-AZ DB clusters.</p>
    #
    #   @return [String]
    #
    # @!attribute performance_insights_retention_period
    #   <p>The amount of time, in days, to retain Performance Insights data. Valid values are 7 or 731 (2 years).</p>
    #           <p>This setting is only for non-Aurora Multi-AZ DB clusters.</p>
    #
    #   @return [Integer]
    #
    # @!attribute serverless_v2_scaling_configuration
    #   <p>Shows the scaling configuration for an Aurora Serverless v2 DB cluster.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless-v2.html">Using Amazon Aurora Serverless v2</a> in the
    #               <i>Amazon Aurora User Guide</i>.</p>
    #
    #   @return [ServerlessV2ScalingConfigurationInfo]
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
      :automatic_restart_time,
      :percent_progress,
      :earliest_restorable_time,
      :endpoint,
      :reader_endpoint,
      :custom_endpoints,
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
      :earliest_backtrack_time,
      :backtrack_window,
      :backtrack_consumed_change_records,
      :enabled_cloudwatch_logs_exports,
      :capacity,
      :engine_mode,
      :scaling_configuration_info,
      :deletion_protection,
      :http_endpoint_enabled,
      :activity_stream_mode,
      :activity_stream_status,
      :activity_stream_kms_key_id,
      :activity_stream_kinesis_stream_name,
      :copy_tags_to_snapshot,
      :cross_account_clone,
      :domain_memberships,
      :tag_list,
      :global_write_forwarding_status,
      :global_write_forwarding_requested,
      :pending_modified_values,
      :db_cluster_instance_class,
      :storage_type,
      :iops,
      :publicly_accessible,
      :auto_minor_version_upgrade,
      :monitoring_interval,
      :monitoring_role_arn,
      :performance_insights_enabled,
      :performance_insights_kms_key_id,
      :performance_insights_retention_period,
      :serverless_v2_scaling_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.storage_encrypted ||= false
        self.auto_minor_version_upgrade ||= false
      end
    end

    # <p>The user already has a DB cluster with the given identifier.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBClusterAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This data type is used as a response element in the <code>DescribeDBClusterBacktracks</code> action.</p>
    #
    # @!attribute db_cluster_identifier
    #   <p>Contains a user-supplied DB cluster identifier. This identifier is the unique key that identifies a DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute backtrack_identifier
    #   <p>Contains the backtrack identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute backtrack_to
    #   <p>The timestamp of the time to which the DB cluster was backtracked.</p>
    #
    #   @return [Time]
    #
    # @!attribute backtracked_from
    #   <p>The timestamp of the time from which the DB cluster was backtracked.</p>
    #
    #   @return [Time]
    #
    # @!attribute backtrack_request_creation_time
    #   <p>The timestamp of the time at which the backtrack was requested.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The status of the backtrack. This property returns one of the following
    #               values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>applying</code> - The backtrack is currently being applied to or rolled back from the DB cluster.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>completed</code> - The backtrack has successfully been applied to or rolled back from the DB cluster.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>failed</code> - An error occurred while the backtrack was applied to or rolled back from the DB cluster.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>pending</code> - The backtrack is currently pending application to or rollback from the DB cluster.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    DBClusterBacktrack = ::Struct.new(
      :db_cluster_identifier,
      :backtrack_identifier,
      :backtrack_to,
      :backtracked_from,
      :backtrack_request_creation_time,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             <code>BacktrackIdentifier</code> doesn't refer to an existing backtrack.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBClusterBacktrackNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This data type represents the information you need to connect to an Amazon Aurora DB cluster.
    #       This data type is used as a response element in the following actions:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>CreateDBClusterEndpoint</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>DescribeDBClusterEndpoints</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>ModifyDBClusterEndpoint</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>DeleteDBClusterEndpoint</code>
    #                </p>
    #             </li>
    #          </ul>
    #         <p>For the data structure that represents Amazon RDS DB instance endpoints,
    #         see <code>Endpoint</code>.</p>
    #
    # @!attribute db_cluster_endpoint_identifier
    #   <p>The identifier associated with the endpoint. This parameter is stored as a lowercase string.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_identifier
    #   <p>The DB cluster identifier of the DB cluster associated with the endpoint. This parameter is
    #               stored as a lowercase string.</p>
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
    #   <p>The current status of the endpoint. One of: <code>creating</code>, <code>available</code>, <code>deleting</code>, <code>inactive</code>, <code>modifying</code>. The <code>inactive</code> state applies to an endpoint that can't be used for a certain kind of cluster,
    #        such as a <code>writer</code> endpoint for a read-only secondary cluster in a global database.</p>
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
    #          <code>WRITER</code>, <code>ANY</code>.</p>
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
    #          All other eligible instances are reachable through the custom endpoint.
    #          Only relevant if the list of static members is empty.</p>
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

    # <p>The specified custom endpoint can't be created because it already exists.</p>
    #
    # @!attribute message
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
    #   <p>Value that is <code>true</code> if the cluster member is the primary instance for the DB cluster and <code>false</code> otherwise.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute db_cluster_parameter_group_status
    #   <p>Specifies the status of the DB cluster parameter group for this member of the DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute promotion_tier
    #   <p>A value that specifies the order in which an Aurora Replica is promoted to the primary instance
    #         after a failure of the existing primary instance. For more information,
    #         see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html Aurora.Managing.FaultTolerance">
    #             Fault Tolerance for an Aurora DB Cluster</a> in the <i>Amazon Aurora User Guide</i>.</p>
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
    #             <code>DBClusterIdentifier</code> doesn't refer to an existing DB cluster.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBClusterNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains status information for a DB cluster option group.</p>
    #
    # @!attribute db_cluster_option_group_name
    #   <p>Specifies the name of the DB cluster option group.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Specifies the status of the DB cluster option group.</p>
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

    # <p>Contains the details of an Amazon RDS DB cluster parameter group.</p>
    #         <p>This data type is used as a response element in the <code>DescribeDBClusterParameterGroups</code> action.</p>
    #
    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group.</p>
    #
    #   @return [String]
    #
    # @!attribute db_parameter_group_family
    #   <p>The name of the DB parameter group family that this DB cluster parameter group is compatible with.</p>
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
    #             <code>DBClusterParameterGroupName</code> doesn't refer to an existing DB
    #             cluster parameter group.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBClusterParameterGroupNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The user attempted to create a new DB cluster and the user has already reached the
    #             maximum allowed DB cluster quota.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBClusterQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an Amazon Web Services Identity and Access Management (IAM) role that is associated with a DB cluster.</p>
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that is associated with the DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Describes the state of association between the IAM role and the DB cluster. The Status property returns one of the following
    #           values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>ACTIVE</code> - the IAM role ARN is associated with the DB cluster and can be used to
    #               access other Amazon Web Services on your behalf.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>PENDING</code> - the IAM role ARN is being associated with the DB cluster.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>INVALID</code> - the IAM role ARN is associated with the DB cluster, but the DB cluster is unable
    #                   to assume the IAM role in order to access other Amazon Web Services on your behalf.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute feature_name
    #   <p>The name of the feature associated with the Amazon Web Services Identity and Access Management (IAM) role.
    #               For information about supported feature names, see <a>DBEngineVersion</a>.</p>
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
    #
    #   @return [String]
    #
    DBClusterRoleAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified IAM role Amazon Resource Name (ARN) isn't associated with the specified DB cluster.</p>
    #
    # @!attribute message
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
    #
    #   @return [String]
    #
    DBClusterRoleQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the details for an Amazon RDS DB cluster snapshot</p>
    #         <p>This data type is used as a response element
    #           in the <code>DescribeDBClusterSnapshots</code> action.</p>
    #
    # @!attribute availability_zones
    #   <p>Provides the list of Availability Zones (AZs) where instances in the DB cluster snapshot can be restored.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute db_cluster_snapshot_identifier
    #   <p>Specifies the identifier for the DB cluster snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_identifier
    #   <p>Specifies the DB cluster identifier of the DB cluster that this DB cluster snapshot was created from.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_create_time
    #   <p>Provides the time when the snapshot was taken, in Universal Coordinated Time (UTC).</p>
    #
    #   @return [Time]
    #
    # @!attribute engine
    #   <p>Specifies the name of the database engine for this DB cluster snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_mode
    #   <p>Provides the engine mode of the database engine for this DB cluster snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute allocated_storage
    #   <p>Specifies the allocated storage size in gibibytes (GiB).</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>Specifies the status of this DB cluster snapshot. Valid statuses are the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>available</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>copying</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>creating</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>Specifies the port that the DB cluster was listening on at the time of the snapshot.</p>
    #
    #   @return [Integer]
    #
    # @!attribute vpc_id
    #   <p>Provides the VPC ID associated with the DB cluster snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_create_time
    #   <p>Specifies the time when the DB cluster was created, in Universal Coordinated Time (UTC).</p>
    #
    #   @return [Time]
    #
    # @!attribute master_username
    #   <p>Provides the master username for this DB cluster snapshot.</p>
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
    #   <p>If <code>StorageEncrypted</code> is true, the Amazon Web Services KMS key identifier for the encrypted DB cluster snapshot.</p>
    #           <p>The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.</p>
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
    #               Resource Name (ARN) for the source DB cluster snapshot, otherwise, a null value.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_database_authentication_enabled
    #   <p>True if mapping of Amazon Web Services Identity and Access Management (IAM) accounts to database accounts is enabled, and otherwise false.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tag_list
    #   <p>A list of tags.
    #             For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [Array<Tag>]
    #
    DBClusterSnapshot = ::Struct.new(
      :availability_zones,
      :db_cluster_snapshot_identifier,
      :db_cluster_identifier,
      :snapshot_create_time,
      :engine,
      :engine_mode,
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
      :tag_list,
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

    # <p>The user already has a DB cluster snapshot with the given identifier.</p>
    #
    # @!attribute message
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
    #         <p>Manual DB cluster snapshot attributes are used to authorize other Amazon Web Services accounts
    #             to restore a manual DB cluster snapshot. For more information, see the <code>ModifyDBClusterSnapshotAttribute</code>
    #             API action.</p>
    #
    # @!attribute attribute_name
    #   <p>The name of the manual DB cluster snapshot attribute.</p>
    #           <p>The attribute named <code>restore</code> refers to the list of Amazon Web Services accounts that
    #               have permission to copy or restore the manual DB cluster snapshot. For more information,
    #               see the <code>ModifyDBClusterSnapshotAttribute</code>
    #               API action.</p>
    #
    #   @return [String]
    #
    # @!attribute attribute_values
    #   <p>The value(s) for the manual DB cluster snapshot attribute.</p>
    #           <p>If the <code>AttributeName</code> field is set to <code>restore</code>, then this element
    #               returns a list of IDs of the Amazon Web Services accounts that are authorized to copy or restore the manual
    #               DB cluster snapshot. If a value of <code>all</code> is in the list, then the manual DB cluster snapshot
    #               is public and available for any Amazon Web Services account to copy or restore.</p>
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

    # <p>Contains the results of a successful call to the <code>DescribeDBClusterSnapshotAttributes</code>
    #             API action.</p>
    #         <p>Manual DB cluster snapshot attributes are used to authorize other Amazon Web Services accounts
    #             to copy or restore a manual DB cluster snapshot. For more information, see the <code>ModifyDBClusterSnapshotAttribute</code>
    #             API action.</p>
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
    #             <code>DBClusterSnapshotIdentifier</code> doesn't refer to an existing DB cluster snapshot.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBClusterSnapshotNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This data type is used as a response element in the action <code>DescribeDBEngineVersions</code>.</p>
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
    #   <p>The default character set for new instances of this engine version,
    #               if the <code>CharacterSetName</code> parameter of the CreateDBInstance API
    #               isn't specified.</p>
    #
    #   @return [CharacterSet]
    #
    # @!attribute supported_character_sets
    #   <p>A list of the character sets supported by this engine for the <code>CharacterSetName</code> parameter of the <code>CreateDBInstance</code> operation.</p>
    #
    #   @return [Array<CharacterSet>]
    #
    # @!attribute supported_nchar_character_sets
    #   <p>A list of the character sets supported by the Oracle DB engine for the <code>NcharCharacterSetName</code> parameter of the <code>CreateDBInstance</code> operation.</p>
    #
    #   @return [Array<CharacterSet>]
    #
    # @!attribute valid_upgrade_target
    #   <p>A list of engine versions that this database engine version can be upgraded to.</p>
    #
    #   @return [Array<UpgradeTarget>]
    #
    # @!attribute supported_timezones
    #   <p>A list of the time zones supported by this engine for the
    #               <code>Timezone</code> parameter of the <code>CreateDBInstance</code> action.</p>
    #
    #   @return [Array<Timezone>]
    #
    # @!attribute exportable_log_types
    #   <p>The types of logs that the database engine has available for export to CloudWatch Logs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute supports_log_exports_to_cloudwatch_logs
    #   <p>A value that indicates whether the engine version supports exporting the log types specified by ExportableLogTypes to CloudWatch Logs.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute supports_read_replica
    #   <p>Indicates whether the database engine version supports read replicas.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute supported_engine_modes
    #   <p>A list of the supported DB engine modes.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute supported_feature_names
    #   <p>A list of features supported by the DB engine.</p>
    #           <p>The supported features vary by DB engine and DB engine version.</p>
    #           <p>To determine the supported features for a specific DB engine and DB engine version using the CLI,
    #           use the following command:</p>
    #           <p>
    #               <code>aws rds describe-db-engine-versions --engine <engine_name> --engine-version <engine_version></code>
    #            </p>
    #           <p>For example, to determine the supported features for RDS for PostgreSQL version 13.3 using the CLI,
    #           use the following command:</p>
    #           <p>
    #               <code>aws rds describe-db-engine-versions --engine postgres --engine-version 13.3</code>
    #            </p>
    #           <p>The supported features are listed under <code>SupportedFeatureNames</code> in the output.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute status
    #   <p>The status of the DB engine version, either <code>available</code> or <code>deprecated</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute supports_parallel_query
    #   <p>A value that indicates whether you can use Aurora parallel query with a specific DB engine version.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute supports_global_databases
    #   <p>A value that indicates whether you can use Aurora global databases with a specific DB engine version.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute major_engine_version
    #   <p>The major engine version of the CEV.</p>
    #
    #   @return [String]
    #
    # @!attribute database_installation_files_s3_bucket_name
    #   <p>The name of the Amazon S3 bucket that contains your database installation files.</p>
    #
    #   @return [String]
    #
    # @!attribute database_installation_files_s3_prefix
    #   <p>The Amazon S3 directory that contains the database installation files.
    #               If not specified, then no prefix is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute db_engine_version_arn
    #   <p>The ARN of the custom engine version.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services KMS key identifier for an encrypted CEV. This parameter is required for
    #               RDS Custom, but optional for Amazon RDS.</p>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The creation time of the DB engine version.</p>
    #
    #   @return [Time]
    #
    # @!attribute tag_list
    #   <p>A list of tags.
    #             For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute supports_babelfish
    #   <p>A value that indicates whether the engine version supports Babelfish for Aurora PostgreSQL.</p>
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
      :supported_nchar_character_sets,
      :valid_upgrade_target,
      :supported_timezones,
      :exportable_log_types,
      :supports_log_exports_to_cloudwatch_logs,
      :supports_read_replica,
      :supported_engine_modes,
      :supported_feature_names,
      :status,
      :supports_parallel_query,
      :supports_global_databases,
      :major_engine_version,
      :database_installation_files_s3_bucket_name,
      :database_installation_files_s3_prefix,
      :db_engine_version_arn,
      :kms_key_id,
      :create_time,
      :tag_list,
      :supports_babelfish,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.supports_log_exports_to_cloudwatch_logs ||= false
        self.supports_read_replica ||= false
        self.supports_parallel_query ||= false
        self.supports_global_databases ||= false
        self.supports_babelfish ||= false
      end
    end

    # <p>Contains the details of an Amazon RDS DB instance.</p>
    #         <p>This data type is used as a response element in the operations <code>CreateDBInstance</code>,
    #           <code>CreateDBInstanceReadReplica</code>, <code>DeleteDBInstance</code>, <code>DescribeDBInstances</code>,
    #           <code>ModifyDBInstance</code>, <code>PromoteReadReplica</code>, <code>RebootDBInstance</code>,
    #           <code>RestoreDBInstanceFromDBSnapshot</code>, <code>RestoreDBInstanceFromS3</code>, <code>RestoreDBInstanceToPointInTime</code>,
    #           <code>StartDBInstance</code>, and <code>StopDBInstance</code>.</p>
    #
    # @!attribute db_instance_identifier
    #   <p>Contains a user-supplied database identifier. This identifier is the unique key that identifies a DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute db_instance_class
    #   <p>Contains the name of the compute and memory capacity class of the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute engine
    #   <p>The name of the database engine to be used for this DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute db_instance_status
    #   <p>Specifies the current state of this database.</p>
    #           <p>For information about DB instance statuses, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/accessing-monitoring.html Overview.DBInstance.Status">Viewing DB instance status</a>
    #             in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute automatic_restart_time
    #   <p>The time when a stopped DB instance is restarted automatically.</p>
    #
    #   @return [Time]
    #
    # @!attribute master_username
    #   <p>Contains the master username for the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute db_name
    #   <p>The meaning of this parameter differs according to the database engine you use.</p>
    #           <p>
    #               <b>MySQL, MariaDB, SQL Server, PostgreSQL</b>
    #            </p>
    #           <p>Contains the name of the initial database of this instance that was provided at create time, if one was specified when the DB instance was created. This same name is returned for the life of the DB instance.</p>
    #           <p>Type: String</p>
    #           <p>
    #               <b>Oracle</b>
    #            </p>
    #           <p>Contains the Oracle System ID (SID) of the created DB instance. Not shown when the returned parameters do not apply to an Oracle DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint
    #   <p>Specifies the connection endpoint.</p>
    #           <note>
    #               <p>The endpoint might not be shown for instances whose status is <code>creating</code>.</p>
    #           </note>
    #
    #   @return [Endpoint]
    #
    # @!attribute allocated_storage
    #   <p>Specifies the allocated storage size specified in gibibytes (GiB).</p>
    #
    #   @return [Integer]
    #
    # @!attribute instance_create_time
    #   <p>Provides the date and time the DB instance was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute preferred_backup_window
    #   <p>Specifies the daily time range during which automated backups are
    #           created if automated backups are enabled, as determined
    #           by the <code>BackupRetentionPeriod</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_retention_period
    #   <p>Specifies the number of days for which automatic DB snapshots are retained.</p>
    #
    #   @return [Integer]
    #
    # @!attribute db_security_groups
    #   <p>A list of DB security group elements containing
    #           <code>DBSecurityGroup.Name</code> and <code>DBSecurityGroup.Status</code> subelements.</p>
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
    #   <p>Specifies information on the subnet group associated with the DB instance, including the name, description, and subnets in the subnet group.</p>
    #
    #   @return [DBSubnetGroup]
    #
    # @!attribute preferred_maintenance_window
    #   <p>Specifies the weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p>
    #
    #   @return [String]
    #
    # @!attribute pending_modified_values
    #   <p>A value that specifies that changes to the DB instance are pending. This element is only included when changes are pending. Specific changes are identified by subelements.</p>
    #
    #   @return [PendingModifiedValues]
    #
    # @!attribute latest_restorable_time
    #   <p>Specifies the latest time to which a database can be restored with point-in-time restore.</p>
    #
    #   @return [Time]
    #
    # @!attribute multi_az
    #   <p>Specifies if the DB instance is a Multi-AZ deployment. This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute engine_version
    #   <p>Indicates the database engine version.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_minor_version_upgrade
    #   <p>A value that indicates that minor version patches are applied automatically.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute read_replica_source_db_instance_identifier
    #   <p>Contains the identifier of the source DB instance if this DB instance is a read
    #               replica.</p>
    #
    #   @return [String]
    #
    # @!attribute read_replica_db_instance_identifiers
    #   <p>Contains one or more identifiers of the read replicas associated with this DB
    #               instance.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute read_replica_db_cluster_identifiers
    #   <p>Contains one or more identifiers of Aurora DB clusters to which the RDS DB instance
    #               is replicated as a read replica. For example, when you create an Aurora read replica of
    #               an RDS for MySQL DB instance, the Aurora MySQL DB cluster for the Aurora read replica is
    #               shown. This output doesn't contain information about cross-Region Aurora read
    #               replicas.</p>
    #           <note>
    #               <p>Currently, each RDS DB instance can have only one Aurora read replica.</p>
    #           </note>
    #
    #   @return [Array<String>]
    #
    # @!attribute replica_mode
    #   <p>The open mode of an Oracle read replica. The default is <code>open-read-only</code>.
    #               For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html">Working with Oracle Read Replicas for Amazon RDS</a>
    #               in the <i>Amazon RDS User Guide</i>.</p>
    #           <note>
    #               <p>This attribute is only supported in RDS for Oracle.</p>
    #           </note>
    #
    #   Enum, one of: ["open-read-only", "mounted"]
    #
    #   @return [String]
    #
    # @!attribute license_model
    #   <p>License model information for this DB instance. This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute iops
    #   <p>Specifies the Provisioned IOPS (I/O operations per second) value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute option_group_memberships
    #   <p>Provides the list of option group memberships for this DB instance.</p>
    #
    #   @return [Array<OptionGroupMembership>]
    #
    # @!attribute character_set_name
    #   <p>If present, specifies the name of the character set that this instance is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute nchar_character_set_name
    #   <p>The name of the NCHAR character set for the Oracle DB instance. This character set specifies the
    #               Unicode encoding for data stored in table columns of type NCHAR, NCLOB, or NVARCHAR2.</p>
    #
    #   @return [String]
    #
    # @!attribute secondary_availability_zone
    #   <p>If present, specifies the name of the secondary Availability Zone for a DB instance with multi-AZ support.</p>
    #
    #   @return [String]
    #
    # @!attribute publicly_accessible
    #   <p>Specifies the accessibility options for the DB instance.</p>
    #           <p>When the DB cluster is publicly accessible, its Domain Name System (DNS) endpoint
    #             resolves to the private IP address from within the DB cluster's virtual private cloud
    #             (VPC). It resolves to the public IP address from outside of the DB cluster's VPC. Access
    #             to the DB cluster is ultimately controlled by the security group it uses. That public
    #             access isn't permitted if the security group assigned to the DB cluster doesn't permit
    #             it.</p>
    #           <p>When the DB instance isn't publicly accessible, it is an internal DB instance with a DNS name that resolves to a private IP address.</p>
    #           <p>For more information, see <a>CreateDBInstance</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute status_infos
    #   <p>The status of a read replica. If the instance isn't a read replica, this is
    #               blank.</p>
    #
    #   @return [Array<DBInstanceStatusInfo>]
    #
    # @!attribute storage_type
    #   <p>Specifies the storage type associated with DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute tde_credential_arn
    #   <p>The ARN from the key store with which the instance is associated for TDE encryption.</p>
    #
    #   @return [String]
    #
    # @!attribute db_instance_port
    #   <p>Specifies the port that the DB instance listens on. If the DB instance is part of a DB cluster, this can be a different port than the DB cluster port.</p>
    #
    #   @return [Integer]
    #
    # @!attribute db_cluster_identifier
    #   <p>If the DB instance is a member of a DB cluster, contains the name of the DB cluster that the DB instance is a member of.</p>
    #
    #   @return [String]
    #
    # @!attribute storage_encrypted
    #   <p>Specifies whether the DB instance is encrypted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute kms_key_id
    #   <p>If <code>StorageEncrypted</code> is true, the Amazon Web Services KMS key identifier
    #               for the encrypted DB instance.</p>
    #           <p>The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.</p>
    #
    #   @return [String]
    #
    # @!attribute dbi_resource_id
    #   <p>The Amazon Web Services Region-unique, immutable identifier for the DB instance. This identifier is found in Amazon Web Services CloudTrail log
    #             entries whenever the Amazon Web Services KMS key for the DB instance is accessed.</p>
    #
    #   @return [String]
    #
    # @!attribute ca_certificate_identifier
    #   <p>The identifier of the CA certificate for this DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_memberships
    #   <p>The Active Directory Domain membership records associated with the DB instance.</p>
    #
    #   @return [Array<DomainMembership>]
    #
    # @!attribute copy_tags_to_snapshot
    #   <p>Specifies whether tags are copied from the DB instance to snapshots of the DB instance.</p>
    #           <p>
    #               <b>Amazon Aurora</b>
    #            </p>
    #           <p>Not applicable. Copying tags to snapshots is managed by the DB cluster. Setting this
    #               value for an Aurora DB instance has no effect on the DB cluster setting. For more
    #               information, see <code>DBCluster</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute monitoring_interval
    #   <p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute enhanced_monitoring_resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon CloudWatch Logs log stream that receives the Enhanced Monitoring metrics data for the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute monitoring_role_arn
    #   <p>The ARN for the IAM role that permits RDS to send Enhanced Monitoring metrics to Amazon CloudWatch Logs.</p>
    #
    #   @return [String]
    #
    # @!attribute promotion_tier
    #   <p>A value that specifies the order in which an Aurora Replica is promoted to the primary instance
    #         after a failure of the existing primary instance. For more information,
    #         see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html Aurora.Managing.FaultTolerance">
    #             Fault Tolerance for an Aurora DB Cluster</a> in the <i>Amazon Aurora User Guide</i>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute db_instance_arn
    #   <p>The Amazon Resource Name (ARN) for the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute timezone
    #   <p>The time zone of the DB instance.
    #               In most cases, the <code>Timezone</code> element is empty.
    #               <code>Timezone</code> content appears only for
    #               Microsoft SQL Server DB instances
    #               that were created with a time zone specified.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_database_authentication_enabled
    #   <p>True if mapping of Amazon Web Services Identity and Access Management (IAM) accounts to database accounts is enabled, and otherwise false.</p>
    #           <p>IAM database authentication can be enabled for the following database engines</p>
    #           <ul>
    #               <li>
    #                   <p>For MySQL 5.6, minor version 5.6.34 or higher</p>
    #               </li>
    #               <li>
    #                   <p>For MySQL 5.7, minor version 5.7.16 or higher</p>
    #               </li>
    #               <li>
    #                   <p>Aurora 5.6 or higher. To enable IAM database authentication for Aurora, see DBCluster Type.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Boolean]
    #
    # @!attribute performance_insights_enabled
    #   <p>True if Performance Insights is enabled for the DB instance, and otherwise false.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute performance_insights_kms_key_id
    #   <p>The Amazon Web Services KMS key identifier for encryption of Performance Insights data.</p>
    #           <p>The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.</p>
    #
    #   @return [String]
    #
    # @!attribute performance_insights_retention_period
    #   <p>The amount of time, in days, to retain Performance Insights data. Valid values are 7 or 731 (2 years).</p>
    #
    #   @return [Integer]
    #
    # @!attribute enabled_cloudwatch_logs_exports
    #   <p>A list of log types that this DB instance is configured to export to CloudWatch Logs.</p>
    #           <p>Log types vary by DB engine. For information about the log types for each DB engine, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html">Amazon RDS Database Log Files</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute processor_features
    #   <p>The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.</p>
    #
    #   @return [Array<ProcessorFeature>]
    #
    # @!attribute deletion_protection
    #   <p>Indicates if the DB instance has deletion protection enabled.
    #               The database can't be deleted when deletion protection is enabled.
    #               For more information, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html">
    #                   Deleting a DB Instance</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute associated_roles
    #   <p>The Amazon Web Services Identity and Access Management (IAM) roles associated with the DB instance.</p>
    #
    #   @return [Array<DBInstanceRole>]
    #
    # @!attribute listener_endpoint
    #   <p>Specifies the listener connection endpoint for SQL Server Always On.</p>
    #
    #   @return [Endpoint]
    #
    # @!attribute max_allocated_storage
    #   <p>The upper limit in gibibytes (GiB) to which Amazon RDS can automatically scale the storage of the DB instance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tag_list
    #   <p>A list of tags.
    #             For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute db_instance_automated_backups_replications
    #   <p>The list of replicated automated backups associated with the DB instance.</p>
    #
    #   @return [Array<DBInstanceAutomatedBackupsReplication>]
    #
    # @!attribute customer_owned_ip_enabled
    #   <p>Specifies whether a customer-owned IP address (CoIP) is enabled for an RDS on Outposts DB instance.</p>
    #           <p>A <i>CoIP </i>provides local or external connectivity to resources in
    #               your Outpost subnets through your on-premises network. For some use cases, a CoIP can
    #               provide lower latency for connections to the DB instance from outside of its virtual
    #               private cloud (VPC) on your local network.</p>
    #           <p>For more information about RDS on Outposts, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html">Working with Amazon RDS on Amazon Web Services Outposts</a>
    #               in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>For more information about CoIPs, see <a href="https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html ip-addressing">Customer-owned IP addresses</a>
    #               in the <i>Amazon Web Services Outposts User Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute aws_backup_recovery_point_arn
    #   <p>The Amazon Resource Name (ARN) of the recovery point in Amazon Web Services Backup.</p>
    #
    #   @return [String]
    #
    # @!attribute activity_stream_status
    #   <p>The status of the database activity stream.</p>
    #
    #   Enum, one of: ["stopped", "starting", "started", "stopping"]
    #
    #   @return [String]
    #
    # @!attribute activity_stream_kms_key_id
    #   <p>The Amazon Web Services KMS key identifier used for encrypting messages in the database activity stream.
    #               The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.</p>
    #
    #   @return [String]
    #
    # @!attribute activity_stream_kinesis_stream_name
    #   <p>The name of the Amazon Kinesis data stream used for the database activity stream.</p>
    #
    #   @return [String]
    #
    # @!attribute activity_stream_mode
    #   <p>The mode of the database activity stream. Database events such as a change or access generate
    #               an activity stream event. RDS for Oracle always handles these events asynchronously.</p>
    #
    #   Enum, one of: ["sync", "async"]
    #
    #   @return [String]
    #
    # @!attribute activity_stream_engine_native_audit_fields_included
    #   <p>Indicates whether engine-native audit fields are included in the database activity stream.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute automation_mode
    #   <p>The automation mode of the RDS Custom DB instance: <code>full</code> or <code>all paused</code>.
    #               If <code>full</code>, the DB instance automates monitoring and instance recovery. If
    #               <code>all paused</code>, the instance pauses automation for the duration set by
    #               <code>--resume-full-automation-mode-minutes</code>.</p>
    #
    #   Enum, one of: ["full", "all-paused"]
    #
    #   @return [String]
    #
    # @!attribute resume_full_automation_mode_time
    #   <p>The number of minutes to pause the automation. When the time period ends, RDS Custom resumes full automation.
    #               The minimum value is 60 (default). The maximum value is 1,440.</p>
    #
    #   @return [Time]
    #
    # @!attribute custom_iam_instance_profile
    #   <p>The instance profile associated with the underlying Amazon EC2 instance of an
    #               RDS Custom DB instance. The instance profile must meet the following requirements:</p>
    #           <ul>
    #               <li>
    #                   <p>The profile must exist in your account.</p>
    #               </li>
    #               <li>
    #                   <p>The profile must have an IAM role that Amazon EC2 has permissions to assume.</p>
    #               </li>
    #               <li>
    #                   <p>The instance profile name and the associated IAM role name must start with the prefix <code>AWSRDSCustom</code>.</p>
    #               </li>
    #            </ul>
    #           <p>For the list of permissions required for the IAM role, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-setup-orcl.html custom-setup-orcl.iam-vpc">
    #                   Configure IAM and your VPC</a> in the <i>Amazon RDS User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_target
    #   <p>Specifies where automated backups and manual snapshots are stored: Amazon Web Services Outposts or the Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute network_type
    #   <p>The network type of the DB instance.</p>
    #           <p>Valid values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>IPV4</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DUAL</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <p>The network type is determined by the <code>DBSubnetGroup</code> specified for the DB instance.
    #               A <code>DBSubnetGroup</code> can support only the IPv4 protocol or the IPv4 and the IPv6
    #               protocols (<code>DUAL</code>).</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html">
    #               Working with a DB instance in a VPC</a> in the
    #               <i>Amazon RDS User Guide</i> and
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html">
    #                   Working with a DB instance in a VPC</a> in the
    #               <i>Amazon Aurora User Guide.</i>
    #            </p>
    #
    #   @return [String]
    #
    DBInstance = ::Struct.new(
      :db_instance_identifier,
      :db_instance_class,
      :engine,
      :db_instance_status,
      :automatic_restart_time,
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
      :replica_mode,
      :license_model,
      :iops,
      :option_group_memberships,
      :character_set_name,
      :nchar_character_set_name,
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
      :performance_insights_retention_period,
      :enabled_cloudwatch_logs_exports,
      :processor_features,
      :deletion_protection,
      :associated_roles,
      :listener_endpoint,
      :max_allocated_storage,
      :tag_list,
      :db_instance_automated_backups_replications,
      :customer_owned_ip_enabled,
      :aws_backup_recovery_point_arn,
      :activity_stream_status,
      :activity_stream_kms_key_id,
      :activity_stream_kinesis_stream_name,
      :activity_stream_mode,
      :activity_stream_engine_native_audit_fields_included,
      :automation_mode,
      :resume_full_automation_mode_time,
      :custom_iam_instance_profile,
      :backup_target,
      :network_type,
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
        self.deletion_protection ||= false
      end
    end

    # <p>The user already has a DB instance with the given identifier.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBInstanceAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An automated backup of a DB instance. It consists of system backups, transaction logs, and the database instance properties that
    #             existed at the time you deleted the source instance.</p>
    #
    # @!attribute db_instance_arn
    #   <p>The Amazon Resource Name (ARN) for the automated backups.</p>
    #
    #   @return [String]
    #
    # @!attribute dbi_resource_id
    #   <p>The identifier for the source DB instance, which can't be changed and which is unique to an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The Amazon Web Services Region associated with the automated backup.</p>
    #
    #   @return [String]
    #
    # @!attribute db_instance_identifier
    #   <p>The customer id of the instance that is/was associated with the automated backup.</p>
    #
    #   @return [String]
    #
    # @!attribute restore_window
    #   <p>Earliest and latest time an instance can be restored to.</p>
    #
    #   @return [RestoreWindow]
    #
    # @!attribute allocated_storage
    #   <p>Specifies the allocated storage size in gibibytes (GiB).</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>Provides a list of status information for an automated backup:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>active</code> - automated backups for current instances</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>retained</code> - automated backups for deleted instances</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>creating</code> - automated backups that are waiting
    #                   for the first automated snapshot to be available.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port number that the automated backup used for connections.</p>
    #           <p>Default: Inherits from the source DB instance</p>
    #           <p>Valid Values: <code>1150-65535</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute availability_zone
    #   <p>The Availability Zone that the automated backup was created in. For information on
    #               Amazon Web Services Regions and Availability Zones, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html">Regions
    #                   and Availability Zones</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>Provides the VPC ID associated with the DB instance</p>
    #
    #   @return [String]
    #
    # @!attribute instance_create_time
    #   <p>Provides the date and time that the DB instance was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute master_username
    #   <p>The license model of an automated backup.</p>
    #
    #   @return [String]
    #
    # @!attribute engine
    #   <p>The name of the database engine for this automated backup.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The version of the database engine for the automated backup.</p>
    #
    #   @return [String]
    #
    # @!attribute license_model
    #   <p>License model information for the automated backup.</p>
    #
    #   @return [String]
    #
    # @!attribute iops
    #   <p>The IOPS (I/O operations per second) value for the automated backup.</p>
    #
    #   @return [Integer]
    #
    # @!attribute option_group_name
    #   <p>The option group the automated backup is associated with. If omitted, the default option group for the engine specified is used.</p>
    #
    #   @return [String]
    #
    # @!attribute tde_credential_arn
    #   <p>The ARN from the key store with which the automated backup is associated for TDE encryption.</p>
    #
    #   @return [String]
    #
    # @!attribute encrypted
    #   <p>Specifies whether the automated backup is encrypted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute storage_type
    #   <p>Specifies the storage type associated with the automated backup.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services KMS key ID for an automated backup.</p>
    #           <p>The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.</p>
    #
    #   @return [String]
    #
    # @!attribute timezone
    #   <p>The time zone of the automated backup. In most cases, the <code>Timezone</code> element is empty.
    #               <code>Timezone</code> content appears only for Microsoft SQL Server DB instances
    #               that were created with a time zone specified.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_database_authentication_enabled
    #   <p>True if mapping of Amazon Web Services Identity and Access Management (IAM) accounts to database accounts is enabled,
    #               and otherwise false.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute backup_retention_period
    #   <p>The retention period for the automated backups.</p>
    #
    #   @return [Integer]
    #
    # @!attribute db_instance_automated_backups_arn
    #   <p>The Amazon Resource Name (ARN) for the replicated automated backups.</p>
    #
    #   @return [String]
    #
    # @!attribute db_instance_automated_backups_replications
    #   <p>The list of replications to different Amazon Web Services Regions associated with the automated backup.</p>
    #
    #   @return [Array<DBInstanceAutomatedBackupsReplication>]
    #
    # @!attribute backup_target
    #   <p>Specifies where automated backups are stored: Amazon Web Services Outposts or the Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    DBInstanceAutomatedBackup = ::Struct.new(
      :db_instance_arn,
      :dbi_resource_id,
      :region,
      :db_instance_identifier,
      :restore_window,
      :allocated_storage,
      :status,
      :port,
      :availability_zone,
      :vpc_id,
      :instance_create_time,
      :master_username,
      :engine,
      :engine_version,
      :license_model,
      :iops,
      :option_group_name,
      :tde_credential_arn,
      :encrypted,
      :storage_type,
      :kms_key_id,
      :timezone,
      :iam_database_authentication_enabled,
      :backup_retention_period,
      :db_instance_automated_backups_arn,
      :db_instance_automated_backups_replications,
      :backup_target,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.allocated_storage ||= 0
        self.port ||= 0
        self.encrypted ||= false
        self.iam_database_authentication_enabled ||= false
      end
    end

    # <p>No automated backup for this DB instance was found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBInstanceAutomatedBackupNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The quota for retained automated backups was exceeded. This prevents you
    #             from retaining any additional automated backups. The retained automated backups
    #             quota is the same as your DB Instance quota.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBInstanceAutomatedBackupQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Automated backups of a DB instance replicated to another Amazon Web Services Region. They consist of system backups, transaction logs, and database instance properties.</p>
    #
    # @!attribute db_instance_automated_backups_arn
    #   <p>The Amazon Resource Name (ARN) of the replicated automated backups.</p>
    #
    #   @return [String]
    #
    DBInstanceAutomatedBackupsReplication = ::Struct.new(
      :db_instance_automated_backups_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             <code>DBInstanceIdentifier</code> doesn't refer to an existing DB instance.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBInstanceNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an Amazon Web Services Identity and Access Management (IAM) role that is associated with a DB instance.</p>
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that is associated with the DB
    #               instance.</p>
    #
    #   @return [String]
    #
    # @!attribute feature_name
    #   <p>The name of the feature associated with the Amazon Web Services Identity and Access Management (IAM) role.
    #               For information about supported feature names, see <code>DBEngineVersion</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Describes the state of association between the IAM role and the DB instance. The Status property returns one of the following
    #               values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>ACTIVE</code> - the IAM role ARN is associated with the DB instance and can be used to
    #                   access other Amazon Web Services services on your behalf.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>PENDING</code> - the IAM role ARN is being associated with the DB instance.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>INVALID</code> - the IAM role ARN is associated with the DB instance, but the DB instance is unable
    #                   to assume the IAM role in order to access other Amazon Web Services services on your behalf.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    DBInstanceRole = ::Struct.new(
      :role_arn,
      :feature_name,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified <code>RoleArn</code> or <code>FeatureName</code> value is already associated with the DB instance.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBInstanceRoleAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified <code>RoleArn</code> value doesn't match the specified feature for
    #             the DB instance.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBInstanceRoleNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You can't associate any more Amazon Web Services Identity and Access Management (IAM) roles with the DB instance because the quota has been reached.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBInstanceRoleQuotaExceededFault = ::Struct.new(
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
    #   <p>Boolean value that is true if the instance is operating normally, or false if the instance is in an error state.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute status
    #   <p>Status of the DB instance. For a StatusType of read replica, the values can be
    #               replicating, replication stop point set, replication stop point reached, error, stopped,
    #               or terminated.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>Details of the error if there is an error for the instance. If the instance isn't in an error state, this value is blank.</p>
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

    # <p>
    #             <code>LogFileName</code> doesn't refer to an existing DB log file.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBLogFileNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the details of an Amazon RDS DB parameter group.</p>
    #         <p>This data type is used as a response element in the <code>DescribeDBParameterGroups</code> action.</p>
    #
    # @!attribute db_parameter_group_name
    #   <p>The name of the DB parameter group.</p>
    #
    #   @return [String]
    #
    # @!attribute db_parameter_group_family
    #   <p>The name of the DB parameter group family that this DB parameter group is compatible with.</p>
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
    #             <code>DBParameterGroupName</code> doesn't refer to an
    #         existing DB parameter group.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBParameterGroupNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request would result in the user exceeding the allowed number of DB parameter
    #             groups.</p>
    #
    # @!attribute message
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
    #         <p>This data type is used as a response element in the following actions:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>CreateDBInstance</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>CreateDBInstanceReadReplica</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>DeleteDBInstance</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>ModifyDBInstance</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>RebootDBInstance</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>RestoreDBInstanceFromDBSnapshot</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @!attribute db_parameter_group_name
    #   <p>The name of the DB parameter group.</p>
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

    # <p>The data structure representing a proxy managed by the RDS Proxy.</p>
    #         <p>This data type is used as a response element in the <code>DescribeDBProxies</code> action.</p>
    #
    # @!attribute db_proxy_name
    #   <p>The identifier for the proxy. This name must be unique for all proxies owned by your Amazon Web Services account in the specified Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute db_proxy_arn
    #   <p>The Amazon Resource Name (ARN) for the proxy.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of this proxy. A status of <code>available</code> means the
    #           proxy is ready to handle requests. Other values indicate that you must wait for
    #           the proxy to be ready, or take some action to resolve an issue.</p>
    #
    #   Enum, one of: ["available", "modifying", "incompatible-network", "insufficient-resource-limits", "creating", "deleting", "suspended", "suspending", "reactivating"]
    #
    #   @return [String]
    #
    # @!attribute engine_family
    #   <p>The engine family applies to MySQL and PostgreSQL for both RDS and Aurora.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>Provides the VPC ID of the DB proxy.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_security_group_ids
    #   <p>Provides a list of VPC security groups that the proxy belongs to.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute vpc_subnet_ids
    #   <p>The EC2 subnet IDs for the proxy.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute auth
    #   <p>One or more data structures specifying the authorization mechanism to connect to the associated RDS DB instance
    #           or Aurora DB cluster.</p>
    #
    #   @return [Array<UserAuthConfigInfo>]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) for the IAM role that the proxy uses to access Amazon Secrets Manager.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint
    #   <p>The endpoint that you can use to connect to the DB proxy. You include the endpoint value in the
    #           connection string for a database client application.</p>
    #
    #   @return [String]
    #
    # @!attribute require_tls
    #   <p>Indicates whether Transport Layer Security (TLS) encryption is required for connections to the proxy.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute idle_client_timeout
    #   <p>The number of seconds a connection to the proxy can have no activity before the proxy drops the client connection.
    #           The proxy keeps the underlying database connection open and puts it back into the connection pool for reuse by
    #           later connection requests.</p>
    #           <p>Default: 1800 (30 minutes)</p>
    #           <p>Constraints: 1 to 28,800</p>
    #
    #   @return [Integer]
    #
    # @!attribute debug_logging
    #   <p>Whether the proxy includes detailed information about SQL statements in its logs.
    #           This information helps you to debug issues involving SQL behavior or the performance
    #           and scalability of the proxy connections. The debug information includes the text of
    #           SQL statements that you submit through the proxy. Thus, only enable this setting
    #           when needed for debugging, and only when you have security measures in place to
    #           safeguard any sensitive information that appears in the logs.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute created_date
    #   <p>The date and time when the proxy was first created.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_date
    #   <p>The date and time when the proxy was last updated.</p>
    #
    #   @return [Time]
    #
    DBProxy = ::Struct.new(
      :db_proxy_name,
      :db_proxy_arn,
      :status,
      :engine_family,
      :vpc_id,
      :vpc_security_group_ids,
      :vpc_subnet_ids,
      :auth,
      :role_arn,
      :endpoint,
      :require_tls,
      :idle_client_timeout,
      :debug_logging,
      :created_date,
      :updated_date,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.require_tls ||= false
        self.idle_client_timeout ||= 0
        self.debug_logging ||= false
      end
    end

    # <p>The specified proxy name must be unique for all proxies owned by your Amazon Web Services account in the specified Amazon Web Services Region.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBProxyAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The data structure representing an endpoint associated with a DB proxy. RDS automatically creates one
    #         endpoint for each DB proxy. For Aurora DB clusters, you can associate additional endpoints with the same
    #         DB proxy. These endpoints can be read/write or read-only. They can also reside in different VPCs than the
    #         associated DB proxy.</p>
    #         <p>This data type is used as a response element in the <code>DescribeDBProxyEndpoints</code> operation.</p>
    #
    # @!attribute db_proxy_endpoint_name
    #   <p>The name for the DB proxy endpoint. An identifier must begin with a letter and
    #           must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen
    #           or contain two consecutive hyphens.</p>
    #
    #   @return [String]
    #
    # @!attribute db_proxy_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) for the DB proxy endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute db_proxy_name
    #   <p>The identifier for the DB proxy that is associated with this DB proxy endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of this DB proxy endpoint. A status of <code>available</code> means the
    #           endpoint is ready to handle requests. Other values indicate that you must wait for
    #           the endpoint to be ready, or take some action to resolve an issue.</p>
    #
    #   Enum, one of: ["available", "modifying", "incompatible-network", "insufficient-resource-limits", "creating", "deleting"]
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>Provides the VPC ID of the DB proxy endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_security_group_ids
    #   <p>Provides a list of VPC security groups that the DB proxy endpoint belongs to.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute vpc_subnet_ids
    #   <p>The EC2 subnet IDs for the DB proxy endpoint.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute endpoint
    #   <p>The endpoint that you can use to connect to the DB proxy. You include the endpoint value in the
    #           connection string for a database client application.</p>
    #
    #   @return [String]
    #
    # @!attribute created_date
    #   <p>The date and time when the DB proxy endpoint was first created.</p>
    #
    #   @return [Time]
    #
    # @!attribute target_role
    #   <p>A value that indicates whether the DB proxy endpoint can be used for read/write or read-only operations.</p>
    #
    #   Enum, one of: ["READ_WRITE", "READ_ONLY"]
    #
    #   @return [String]
    #
    # @!attribute is_default
    #   <p>A value that indicates whether this endpoint is the default endpoint for the associated DB proxy.
    #           Default DB proxy endpoints always have read/write capability. Other endpoints that you associate with the
    #           DB proxy can be either read/write or read-only.</p>
    #
    #   @return [Boolean]
    #
    DBProxyEndpoint = ::Struct.new(
      :db_proxy_endpoint_name,
      :db_proxy_endpoint_arn,
      :db_proxy_name,
      :status,
      :vpc_id,
      :vpc_security_group_ids,
      :vpc_subnet_ids,
      :endpoint,
      :created_date,
      :target_role,
      :is_default,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_default ||= false
      end
    end

    # <p>The specified DB proxy endpoint name must be unique for all DB proxy endpoints owned by your Amazon Web Services account in the specified Amazon Web Services Region.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBProxyEndpointAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The DB proxy endpoint doesn't exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBProxyEndpointNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The DB proxy already has the maximum number of endpoints.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBProxyEndpointQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DBProxyEndpointStatus
    #
    module DBProxyEndpointStatus
      # No documentation available.
      #
      AVAILABLE = "available"

      # No documentation available.
      #
      MODIFYING = "modifying"

      # No documentation available.
      #
      INCOMPATIBLE_NETWORK = "incompatible-network"

      # No documentation available.
      #
      INSUFFICIENT_RESOURCE_LIMITS = "insufficient-resource-limits"

      # No documentation available.
      #
      CREATING = "creating"

      # No documentation available.
      #
      DELETING = "deleting"
    end

    # Includes enum constants for DBProxyEndpointTargetRole
    #
    module DBProxyEndpointTargetRole
      # No documentation available.
      #
      READ_WRITE = "READ_WRITE"

      # No documentation available.
      #
      READ_ONLY = "READ_ONLY"
    end

    # <p>The specified proxy name doesn't correspond to a proxy owned by your Amazon Web Services account in the specified Amazon Web Services Region.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBProxyNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Your Amazon Web Services account already has the maximum number of proxies in the specified Amazon Web Services Region.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBProxyQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DBProxyStatus
    #
    module DBProxyStatus
      # No documentation available.
      #
      AVAILABLE = "available"

      # No documentation available.
      #
      MODIFYING = "modifying"

      # No documentation available.
      #
      INCOMPATIBLE_NETWORK = "incompatible-network"

      # No documentation available.
      #
      INSUFFICIENT_RESOURCE_LIMITS = "insufficient-resource-limits"

      # No documentation available.
      #
      CREATING = "creating"

      # No documentation available.
      #
      DELETING = "deleting"

      # No documentation available.
      #
      SUSPENDED = "suspended"

      # No documentation available.
      #
      SUSPENDING = "suspending"

      # No documentation available.
      #
      REACTIVATING = "reactivating"
    end

    # <p>Contains the details for an RDS Proxy target. It represents an RDS DB instance or Aurora DB cluster
    #         that the proxy can connect to. One or more targets are associated with an RDS Proxy target group.</p>
    #         <p>This data type is used as a response element in the <code>DescribeDBProxyTargets</code> action.</p>
    #
    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) for the RDS DB instance or Aurora DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint
    #   <p>The writer endpoint for the RDS DB instance or Aurora DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute tracked_cluster_id
    #   <p>The DB cluster identifier when the target represents an Aurora DB cluster. This field is blank when the target represents an RDS DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute rds_resource_id
    #   <p>The identifier representing the target. It can be the instance identifier for an RDS DB instance,
    #           or the cluster identifier for an Aurora DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port that the RDS Proxy uses to connect to the target RDS DB instance or Aurora DB cluster.</p>
    #
    #   @return [Integer]
    #
    # @!attribute type
    #   <p>Specifies the kind of database, such as an RDS DB instance or an Aurora DB cluster, that the target represents.</p>
    #
    #   Enum, one of: ["RDS_INSTANCE", "RDS_SERVERLESS_ENDPOINT", "TRACKED_CLUSTER"]
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>A value that indicates whether the target of the proxy can be used for read/write or read-only operations.</p>
    #
    #   Enum, one of: ["READ_WRITE", "READ_ONLY", "UNKNOWN"]
    #
    #   @return [String]
    #
    # @!attribute target_health
    #   <p>Information about the connection health of the RDS Proxy target.</p>
    #
    #   @return [TargetHealth]
    #
    DBProxyTarget = ::Struct.new(
      :target_arn,
      :endpoint,
      :tracked_cluster_id,
      :rds_resource_id,
      :port,
      :type,
      :role,
      :target_health,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.port ||= 0
      end
    end

    # <p>The proxy is already associated with the specified RDS DB instance or Aurora DB cluster.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBProxyTargetAlreadyRegisteredFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a set of RDS DB instances, Aurora DB clusters, or both that a proxy can connect to. Currently, each target group
    #         is associated with exactly one RDS DB instance or Aurora DB cluster.</p>
    #         <p>This data type is used as a response element in the <code>DescribeDBProxyTargetGroups</code> action.</p>
    #
    # @!attribute db_proxy_name
    #   <p>The identifier for the RDS proxy associated with this target group.</p>
    #
    #   @return [String]
    #
    # @!attribute target_group_name
    #   <p>The identifier for the target group. This name must be unique for all target groups owned by your Amazon Web Services account in the specified Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute target_group_arn
    #   <p>The Amazon Resource Name (ARN) representing the target group.</p>
    #
    #   @return [String]
    #
    # @!attribute is_default
    #   <p>Whether this target group is the first one used for connection requests by the associated proxy.
    #           Because each proxy is currently associated with a single target group, currently this setting
    #           is always <code>true</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute status
    #   <p>The current status of this target group. A status of <code>available</code> means the
    #           target group is correctly associated with a database. Other values indicate that you must wait for
    #           the target group to be ready, or take some action to resolve an issue.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_pool_config
    #   <p>The settings that determine the size and behavior of the connection pool for the target group.</p>
    #
    #   @return [ConnectionPoolConfigurationInfo]
    #
    # @!attribute created_date
    #   <p>The date and time when the target group was first created.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_date
    #   <p>The date and time when the target group was last updated.</p>
    #
    #   @return [Time]
    #
    DBProxyTargetGroup = ::Struct.new(
      :db_proxy_name,
      :target_group_name,
      :target_group_arn,
      :is_default,
      :status,
      :connection_pool_config,
      :created_date,
      :updated_date,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_default ||= false
      end
    end

    # <p>The specified target group isn't available for a proxy owned by your Amazon Web Services account in the specified Amazon Web Services Region.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBProxyTargetGroupNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified RDS DB instance or Aurora DB cluster isn't available for a proxy owned by your Amazon Web Services account in the specified Amazon Web Services Region.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBProxyTargetNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the details for an Amazon RDS DB security group.</p>
    #         <p>This data type is used as a response element
    #           in the <code>DescribeDBSecurityGroups</code> action.</p>
    #
    # @!attribute owner_id
    #   <p>Provides the Amazon Web Services ID of the owner of a specific DB security group.</p>
    #
    #   @return [String]
    #
    # @!attribute db_security_group_name
    #   <p>Specifies the name of the DB security group.</p>
    #
    #   @return [String]
    #
    # @!attribute db_security_group_description
    #   <p>Provides the description of the DB security group.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>Provides the VpcId of the DB security group.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_security_groups
    #   <p>Contains a list of <code>EC2SecurityGroup</code> elements.</p>
    #
    #   @return [Array<EC2SecurityGroup>]
    #
    # @!attribute ip_ranges
    #   <p>Contains a list of <code>IPRange</code> elements.</p>
    #
    #   @return [Array<IPRange>]
    #
    # @!attribute db_security_group_arn
    #   <p>The Amazon Resource Name (ARN) for the DB security group.</p>
    #
    #   @return [String]
    #
    DBSecurityGroup = ::Struct.new(
      :owner_id,
      :db_security_group_name,
      :db_security_group_description,
      :vpc_id,
      :ec2_security_groups,
      :ip_ranges,
      :db_security_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A DB security group with the name specified in
    #         <code>DBSecurityGroupName</code> already exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBSecurityGroupAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This data type is used as a response element in the following actions:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>ModifyDBInstance</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>RebootDBInstance</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>RestoreDBInstanceFromDBSnapshot</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>RestoreDBInstanceToPointInTime</code>
    #                </p>
    #             </li>
    #          </ul>
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
    #             <code>DBSecurityGroupName</code> doesn't refer to an existing DB security group.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBSecurityGroupNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A DB security group isn't allowed for this action.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBSecurityGroupNotSupportedFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request would result in the user exceeding the allowed number of DB security
    #             groups.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBSecurityGroupQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the details of an Amazon RDS DB snapshot.</p>
    #         <p>This data type is used as a response element
    #           in the <code>DescribeDBSnapshots</code> action.</p>
    #
    # @!attribute db_snapshot_identifier
    #   <p>Specifies the identifier for the DB snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute db_instance_identifier
    #   <p>Specifies the DB instance identifier of the DB instance this DB snapshot was created from.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_create_time
    #   <p>Specifies when the snapshot was taken in Coordinated Universal Time (UTC). Changes for the copy when the snapshot is copied.</p>
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
    #   <p>Specifies the status of this DB snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>Specifies the port that the database engine was listening on at the time of the snapshot.</p>
    #
    #   @return [Integer]
    #
    # @!attribute availability_zone
    #   <p>Specifies the name of the Availability Zone the DB instance was located in at the time of the DB snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>Provides the VPC ID associated with the DB snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_create_time
    #   <p>Specifies the time in Coordinated Universal Time (UTC) when the DB instance, from
    #               which the snapshot was taken, was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute master_username
    #   <p>Provides the master username for the DB snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>Specifies the version of the database engine.</p>
    #
    #   @return [String]
    #
    # @!attribute license_model
    #   <p>License model information for the restored DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_type
    #   <p>Provides the type of the DB snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute iops
    #   <p>Specifies the Provisioned IOPS (I/O operations per second) value of the DB instance at the time of the snapshot.</p>
    #
    #   @return [Integer]
    #
    # @!attribute option_group_name
    #   <p>Provides the option group name for the DB snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute percent_progress
    #   <p>The percentage of the estimated data that has been transferred.</p>
    #
    #   @return [Integer]
    #
    # @!attribute source_region
    #   <p>The Amazon Web Services Region that the DB snapshot was created in or copied from.</p>
    #
    #   @return [String]
    #
    # @!attribute source_db_snapshot_identifier
    #   <p>The DB snapshot Amazon Resource Name (ARN) that the DB snapshot was copied from. It only has a value in the case of a cross-account or cross-Region copy.</p>
    #
    #   @return [String]
    #
    # @!attribute storage_type
    #   <p>Specifies the storage type associated with DB snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute tde_credential_arn
    #   <p>The ARN from the key store with which to associate the instance for TDE encryption.</p>
    #
    #   @return [String]
    #
    # @!attribute encrypted
    #   <p>Specifies whether the DB snapshot is encrypted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute kms_key_id
    #   <p>If <code>Encrypted</code> is true, the Amazon Web Services KMS key identifier
    #               for the encrypted DB snapshot.</p>
    #           <p>The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.</p>
    #
    #   @return [String]
    #
    # @!attribute db_snapshot_arn
    #   <p>The Amazon Resource Name (ARN) for the DB snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute timezone
    #   <p>The time zone of the DB snapshot.
    #               In most cases, the <code>Timezone</code> element is empty.
    #               <code>Timezone</code> content appears only for
    #               snapshots taken from
    #               Microsoft SQL Server DB instances
    #               that were created with a time zone specified.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_database_authentication_enabled
    #   <p>True if mapping of Amazon Web Services Identity and Access Management (IAM) accounts to database accounts is enabled, and otherwise false.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute processor_features
    #   <p>The number of CPU cores and the number of threads per core for the DB instance class
    #               of the DB instance when the DB snapshot was created.</p>
    #
    #   @return [Array<ProcessorFeature>]
    #
    # @!attribute dbi_resource_id
    #   <p>The identifier for the source DB instance, which can't be changed and which is unique to an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_list
    #   <p>A list of tags.
    #             For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute original_snapshot_create_time
    #   <p>Specifies the time of the CreateDBSnapshot operation in Coordinated Universal Time (UTC). Doesn't change when the snapshot is copied.</p>
    #
    #   @return [Time]
    #
    # @!attribute snapshot_target
    #   <p>Specifies where manual snapshots are stored: Amazon Web Services Outposts or the Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    DBSnapshot = ::Struct.new(
      :db_snapshot_identifier,
      :db_instance_identifier,
      :snapshot_create_time,
      :engine,
      :allocated_storage,
      :status,
      :port,
      :availability_zone,
      :vpc_id,
      :instance_create_time,
      :master_username,
      :engine_version,
      :license_model,
      :snapshot_type,
      :iops,
      :option_group_name,
      :percent_progress,
      :source_region,
      :source_db_snapshot_identifier,
      :storage_type,
      :tde_credential_arn,
      :encrypted,
      :kms_key_id,
      :db_snapshot_arn,
      :timezone,
      :iam_database_authentication_enabled,
      :processor_features,
      :dbi_resource_id,
      :tag_list,
      :original_snapshot_create_time,
      :snapshot_target,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.allocated_storage ||= 0
        self.port ||= 0
        self.percent_progress ||= 0
        self.encrypted ||= false
        self.iam_database_authentication_enabled ||= false
      end
    end

    # <p>
    #             <code>DBSnapshotIdentifier</code> is already used by an existing snapshot.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBSnapshotAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the name and values of a manual DB snapshot attribute</p>
    #         <p>Manual DB snapshot attributes are used to authorize other Amazon Web Services accounts
    #     to restore a manual DB snapshot. For more information, see the <code>ModifyDBSnapshotAttribute</code>
    #     API.</p>
    #
    # @!attribute attribute_name
    #   <p>The name of the manual DB snapshot attribute.</p>
    #           <p>The attribute named <code>restore</code> refers to the list of Amazon Web Services accounts that
    #             have permission to copy or restore the manual DB cluster snapshot. For more information,
    #             see the <code>ModifyDBSnapshotAttribute</code>
    #             API action.</p>
    #
    #   @return [String]
    #
    # @!attribute attribute_values
    #   <p>The value or values for the manual DB snapshot attribute.</p>
    #           <p>If the <code>AttributeName</code> field is set to <code>restore</code>, then this element
    #         returns a list of IDs of the Amazon Web Services accounts that are authorized to copy or restore the manual
    #         DB snapshot. If a value of <code>all</code> is in the list, then the manual DB snapshot
    #         is public and available for any Amazon Web Services account to copy or restore.</p>
    #
    #   @return [Array<String>]
    #
    DBSnapshotAttribute = ::Struct.new(
      :attribute_name,
      :attribute_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the results of a successful call to the <code>DescribeDBSnapshotAttributes</code>
    #     API action.</p>
    #         <p>Manual DB snapshot attributes are used to authorize other Amazon Web Services accounts
    #       to copy or restore a manual DB snapshot. For more information, see the <code>ModifyDBSnapshotAttribute</code>
    #       API action.</p>
    #
    # @!attribute db_snapshot_identifier
    #   <p>The identifier of the manual DB snapshot that the attributes apply to.</p>
    #
    #   @return [String]
    #
    # @!attribute db_snapshot_attributes
    #   <p>The list of attributes and values for the manual DB snapshot.</p>
    #
    #   @return [Array<DBSnapshotAttribute>]
    #
    DBSnapshotAttributesResult = ::Struct.new(
      :db_snapshot_identifier,
      :db_snapshot_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             <code>DBSnapshotIdentifier</code> doesn't refer to an existing DB snapshot.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBSnapshotNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the details of an Amazon RDS DB subnet group.</p>
    #         <p>This data type is used as a response element
    #           in the <code>DescribeDBSubnetGroups</code> action.</p>
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
    #   <p>Contains a list of <code>Subnet</code> elements.</p>
    #
    #   @return [Array<Subnet>]
    #
    # @!attribute db_subnet_group_arn
    #   <p>The Amazon Resource Name (ARN) for the DB subnet group.</p>
    #
    #   @return [String]
    #
    # @!attribute supported_network_types
    #   <p>The network type of the DB subnet group.</p>
    #           <p>Valid values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>IPV4</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DUAL</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <p>A <code>DBSubnetGroup</code> can support only the IPv4 protocol or the IPv4 and the IPv6
    #               protocols (<code>DUAL</code>).</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html">
    #               Working with a DB instance in a VPC</a> in the
    #               <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [Array<String>]
    #
    DBSubnetGroup = ::Struct.new(
      :db_subnet_group_name,
      :db_subnet_group_description,
      :vpc_id,
      :subnet_group_status,
      :subnets,
      :db_subnet_group_arn,
      :supported_network_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             <code>DBSubnetGroupName</code> is already used by an existing DB subnet group.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBSubnetGroupAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Subnets in the DB subnet group should cover at least two Availability Zones unless there is only one Availability Zone.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBSubnetGroupDoesNotCoverEnoughAZs = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The DBSubnetGroup shouldn't be specified while creating read replicas that lie
    #             in the same region as the source instance.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBSubnetGroupNotAllowedFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             <code>DBSubnetGroupName</code> doesn't refer to an existing DB subnet group.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBSubnetGroupNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request would result in the user exceeding the allowed number of DB subnet
    #             groups.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBSubnetGroupQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request would result in the user exceeding the allowed number of subnets in a
    #             DB subnet groups.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBSubnetQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The DB upgrade failed because a resource the DB depends on can't be
    #             modified.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DBUpgradeDependencyFailureFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute engine
    #   <p>The database engine. The only supported engine is <code>custom-oracle-ee</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The custom engine version (CEV) for your DB instance. This option is required for
    #               RDS Custom, but optional for Amazon RDS. The combination of <code>Engine</code> and
    #               <code>EngineVersion</code> is unique per customer per Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    DeleteCustomDBEngineVersionInput = ::Struct.new(
      :engine,
      :engine_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This data type is used as a response element in the action <code>DescribeDBEngineVersions</code>.</p>
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
    #   <p>The default character set for new instances of this engine version,
    #               if the <code>CharacterSetName</code> parameter of the CreateDBInstance API
    #               isn't specified.</p>
    #
    #   @return [CharacterSet]
    #
    # @!attribute supported_character_sets
    #   <p>A list of the character sets supported by this engine for the <code>CharacterSetName</code> parameter of the <code>CreateDBInstance</code> operation.</p>
    #
    #   @return [Array<CharacterSet>]
    #
    # @!attribute supported_nchar_character_sets
    #   <p>A list of the character sets supported by the Oracle DB engine for the <code>NcharCharacterSetName</code> parameter of the <code>CreateDBInstance</code> operation.</p>
    #
    #   @return [Array<CharacterSet>]
    #
    # @!attribute valid_upgrade_target
    #   <p>A list of engine versions that this database engine version can be upgraded to.</p>
    #
    #   @return [Array<UpgradeTarget>]
    #
    # @!attribute supported_timezones
    #   <p>A list of the time zones supported by this engine for the
    #               <code>Timezone</code> parameter of the <code>CreateDBInstance</code> action.</p>
    #
    #   @return [Array<Timezone>]
    #
    # @!attribute exportable_log_types
    #   <p>The types of logs that the database engine has available for export to CloudWatch Logs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute supports_log_exports_to_cloudwatch_logs
    #   <p>A value that indicates whether the engine version supports exporting the log types specified by ExportableLogTypes to CloudWatch Logs.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute supports_read_replica
    #   <p>Indicates whether the database engine version supports read replicas.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute supported_engine_modes
    #   <p>A list of the supported DB engine modes.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute supported_feature_names
    #   <p>A list of features supported by the DB engine.</p>
    #           <p>The supported features vary by DB engine and DB engine version.</p>
    #           <p>To determine the supported features for a specific DB engine and DB engine version using the CLI,
    #           use the following command:</p>
    #           <p>
    #               <code>aws rds describe-db-engine-versions --engine <engine_name> --engine-version <engine_version></code>
    #            </p>
    #           <p>For example, to determine the supported features for RDS for PostgreSQL version 13.3 using the CLI,
    #           use the following command:</p>
    #           <p>
    #               <code>aws rds describe-db-engine-versions --engine postgres --engine-version 13.3</code>
    #            </p>
    #           <p>The supported features are listed under <code>SupportedFeatureNames</code> in the output.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute status
    #   <p>The status of the DB engine version, either <code>available</code> or <code>deprecated</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute supports_parallel_query
    #   <p>A value that indicates whether you can use Aurora parallel query with a specific DB engine version.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute supports_global_databases
    #   <p>A value that indicates whether you can use Aurora global databases with a specific DB engine version.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute major_engine_version
    #   <p>The major engine version of the CEV.</p>
    #
    #   @return [String]
    #
    # @!attribute database_installation_files_s3_bucket_name
    #   <p>The name of the Amazon S3 bucket that contains your database installation files.</p>
    #
    #   @return [String]
    #
    # @!attribute database_installation_files_s3_prefix
    #   <p>The Amazon S3 directory that contains the database installation files.
    #               If not specified, then no prefix is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute db_engine_version_arn
    #   <p>The ARN of the custom engine version.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services KMS key identifier for an encrypted CEV. This parameter is required for
    #               RDS Custom, but optional for Amazon RDS.</p>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The creation time of the DB engine version.</p>
    #
    #   @return [Time]
    #
    # @!attribute tag_list
    #   <p>A list of tags.
    #             For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute supports_babelfish
    #   <p>A value that indicates whether the engine version supports Babelfish for Aurora PostgreSQL.</p>
    #
    #   @return [Boolean]
    #
    DeleteCustomDBEngineVersionOutput = ::Struct.new(
      :engine,
      :engine_version,
      :db_parameter_group_family,
      :db_engine_description,
      :db_engine_version_description,
      :default_character_set,
      :supported_character_sets,
      :supported_nchar_character_sets,
      :valid_upgrade_target,
      :supported_timezones,
      :exportable_log_types,
      :supports_log_exports_to_cloudwatch_logs,
      :supports_read_replica,
      :supported_engine_modes,
      :supported_feature_names,
      :status,
      :supports_parallel_query,
      :supports_global_databases,
      :major_engine_version,
      :database_installation_files_s3_bucket_name,
      :database_installation_files_s3_prefix,
      :db_engine_version_arn,
      :kms_key_id,
      :create_time,
      :tag_list,
      :supports_babelfish,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.supports_log_exports_to_cloudwatch_logs ||= false
        self.supports_read_replica ||= false
        self.supports_parallel_query ||= false
        self.supports_global_databases ||= false
        self.supports_babelfish ||= false
      end
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

    # <p>This data type represents the information you need to connect to an Amazon Aurora DB cluster.
    #       This data type is used as a response element in the following actions:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>CreateDBClusterEndpoint</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>DescribeDBClusterEndpoints</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>ModifyDBClusterEndpoint</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>DeleteDBClusterEndpoint</code>
    #                </p>
    #             </li>
    #          </ul>
    #         <p>For the data structure that represents Amazon RDS DB instance endpoints,
    #         see <code>Endpoint</code>.</p>
    #
    # @!attribute db_cluster_endpoint_identifier
    #   <p>The identifier associated with the endpoint. This parameter is stored as a lowercase string.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_identifier
    #   <p>The DB cluster identifier of the DB cluster associated with the endpoint. This parameter is
    #               stored as a lowercase string.</p>
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
    #   <p>The current status of the endpoint. One of: <code>creating</code>, <code>available</code>, <code>deleting</code>, <code>inactive</code>, <code>modifying</code>. The <code>inactive</code> state applies to an endpoint that can't be used for a certain kind of cluster,
    #        such as a <code>writer</code> endpoint for a read-only secondary cluster in a global database.</p>
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
    #          <code>WRITER</code>, <code>ANY</code>.</p>
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
    #          All other eligible instances are reachable through the custom endpoint.
    #          Only relevant if the list of static members is empty.</p>
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

    # <p></p>
    #
    # @!attribute db_cluster_identifier
    #   <p>The DB cluster identifier for the DB cluster to be deleted. This parameter isn't case-sensitive.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must match an existing DBClusterIdentifier.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute skip_final_snapshot
    #   <p>A value that indicates whether to skip the creation of a final DB cluster snapshot before the DB cluster is deleted.
    #             If skip is specified, no DB cluster snapshot is created. If skip isn't specified, a DB cluster snapshot
    #             is created before the DB cluster is deleted. By default, skip isn't specified, and the DB cluster snapshot is created.
    #             By default, this parameter is disabled.</p>
    #           <note>
    #               <p>You must specify a <code>FinalDBSnapshotIdentifier</code> parameter if <code>SkipFinalSnapshot</code> is disabled.</p>
    #           </note>
    #
    #   @return [Boolean]
    #
    # @!attribute final_db_snapshot_identifier
    #   <p>The DB cluster snapshot identifier of the new DB cluster snapshot created when <code>SkipFinalSnapshot</code>
    #         is disabled.</p>
    #           <note>
    #               <p>Specifying this parameter and also skipping the creation of a final DB cluster snapshot
    #             with the <code>SkipFinalShapshot</code> parameter results in an error.</p>
    #           </note>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be 1 to 255 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                   <p>Can't end with a hyphen or contain two consecutive hyphens</p>
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
    #   <p>Contains the details of an Amazon Aurora DB cluster or Multi-AZ DB cluster.</p>
    #           <p>For an Amazon Aurora DB cluster, this data type is used as a response element in the operations
    #             <code>CreateDBCluster</code>, <code>DeleteDBCluster</code>, <code>DescribeDBClusters</code>,
    #             <code>FailoverDBCluster</code>, <code>ModifyDBCluster</code>, <code>PromoteReadReplicaDBCluster</code>,
    #             <code>RestoreDBClusterFromS3</code>, <code>RestoreDBClusterFromSnapshot</code>,
    #             <code>RestoreDBClusterToPointInTime</code>, <code>StartDBCluster</code>, and <code>StopDBCluster</code>.</p>
    #           <p>For a Multi-AZ DB cluster, this data type is used as a response element in the operations
    #             <code>CreateDBCluster</code>, <code>DeleteDBCluster</code>, <code>DescribeDBClusters</code>,
    #             <code>FailoverDBCluster</code>, <code>ModifyDBCluster</code>, <code>RebootDBCluster</code>,
    #             <code>RestoreDBClusterFromSnapshot</code>, and <code>RestoreDBClusterToPointInTime</code>.</p>
    #           <p>For more information on Amazon Aurora DB clusters, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html">
    #                 What is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i>
    #            </p>
    #           <p>For more information on Multi-AZ DB clusters, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html">
    #                 Multi-AZ deployments with two readable standby DB instances</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [DBCluster]
    #
    DeleteDBClusterOutput = ::Struct.new(
      :db_cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be the name of an existing DB cluster parameter group.</p>
    #               </li>
    #               <li>
    #                   <p>You can't delete a default DB cluster parameter group.</p>
    #               </li>
    #               <li>
    #                   <p>Can't be associated with any DB clusters.</p>
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

    # <p></p>
    #
    # @!attribute db_cluster_snapshot_identifier
    #   <p>The identifier of the DB cluster snapshot to delete.</p>
    #           <p>Constraints: Must be the name of an existing DB cluster snapshot in the <code>available</code> state.</p>
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
    #   <p>Contains the details for an Amazon RDS DB cluster snapshot</p>
    #           <p>This data type is used as a response element
    #             in the <code>DescribeDBClusterSnapshots</code> action.</p>
    #
    #   @return [DBClusterSnapshot]
    #
    DeleteDBClusterSnapshotOutput = ::Struct.new(
      :db_cluster_snapshot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Parameter input for the <code>DeleteDBInstanceAutomatedBackup</code> operation.</p>
    #
    # @!attribute dbi_resource_id
    #   <p>The identifier for the source DB instance, which can't be changed and which is unique to an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute db_instance_automated_backups_arn
    #   <p>The Amazon Resource Name (ARN) of the automated backups to delete, for example,
    #               <code>arn:aws:rds:us-east-1:123456789012:auto-backup:ab-L2IJCEXJP7XQ7HOJ4SIEXAMPLE</code>.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    DeleteDBInstanceAutomatedBackupInput = ::Struct.new(
      :dbi_resource_id,
      :db_instance_automated_backups_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_instance_automated_backup
    #   <p>An automated backup of a DB instance. It consists of system backups, transaction logs, and the database instance properties that
    #               existed at the time you deleted the source instance.</p>
    #
    #   @return [DBInstanceAutomatedBackup]
    #
    DeleteDBInstanceAutomatedBackupOutput = ::Struct.new(
      :db_instance_automated_backup,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_instance_identifier
    #   <p>The DB instance identifier for the DB instance to be deleted. This parameter isn't case-sensitive.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must match the name of an existing DB instance.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute skip_final_snapshot
    #   <p>A value that indicates whether to skip the creation of a final DB snapshot before deleting the instance.
    #             If you enable this parameter, RDS doesn't create a DB snapshot. If you don't enable this parameter,
    #             RDS creates a DB snapshot before the DB instance is deleted. By default, skip isn't enabled,
    #             and the DB snapshot is created.</p>
    #           <note>
    #               <p>If you don't enable this parameter, you must specify the <code>FinalDBSnapshotIdentifier</code> parameter.</p>
    #           </note>
    #           <p>When a DB instance is in a failure state and has a status of <code>failed</code>, <code>incompatible-restore</code>,
    #             or <code>incompatible-network</code>, RDS can delete the instance only if you enable this parameter.</p>
    #           <p>If you delete a read replica or an RDS Custom instance, you must enable this setting.</p>
    #           <p>This setting is required for RDS Custom.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute final_db_snapshot_identifier
    #   <p>The <code>DBSnapshotIdentifier</code> of the new <code>DBSnapshot</code> created when the <code>SkipFinalSnapshot</code>
    #           parameter is disabled.</p>
    #           <note>
    #               <p>If you enable this parameter and also enable SkipFinalShapshot, the command results in an error.</p>
    #           </note>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be 1 to 255 letters or numbers.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>Can't be specified when deleting a read replica.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute delete_automated_backups
    #   <p>A value that indicates whether to remove automated backups immediately after the DB
    #               instance is deleted. This parameter isn't case-sensitive. The default is to remove
    #               automated backups immediately after the DB instance is deleted.</p>
    #
    #   @return [Boolean]
    #
    DeleteDBInstanceInput = ::Struct.new(
      :db_instance_identifier,
      :skip_final_snapshot,
      :final_db_snapshot_identifier,
      :delete_automated_backups,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.skip_final_snapshot ||= false
      end
    end

    # @!attribute db_instance
    #   <p>Contains the details of an Amazon RDS DB instance.</p>
    #           <p>This data type is used as a response element in the operations <code>CreateDBInstance</code>,
    #             <code>CreateDBInstanceReadReplica</code>, <code>DeleteDBInstance</code>, <code>DescribeDBInstances</code>,
    #             <code>ModifyDBInstance</code>, <code>PromoteReadReplica</code>, <code>RebootDBInstance</code>,
    #             <code>RestoreDBInstanceFromDBSnapshot</code>, <code>RestoreDBInstanceFromS3</code>, <code>RestoreDBInstanceToPointInTime</code>,
    #             <code>StartDBInstance</code>, and <code>StopDBInstance</code>.</p>
    #
    #   @return [DBInstance]
    #
    DeleteDBInstanceOutput = ::Struct.new(
      :db_instance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_parameter_group_name
    #   <p>The name of the DB parameter group.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be the name of an existing DB parameter group</p>
    #               </li>
    #               <li>
    #                   <p>You can't delete a default DB parameter group</p>
    #               </li>
    #               <li>
    #                   <p>Can't be associated with any DB instances</p>
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

    # @!attribute db_proxy_endpoint_name
    #   <p>The name of the DB proxy endpoint to delete.</p>
    #
    #   @return [String]
    #
    DeleteDBProxyEndpointInput = ::Struct.new(
      :db_proxy_endpoint_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_proxy_endpoint
    #   <p>The data structure representing the details of the DB proxy endpoint that you delete.</p>
    #
    #   @return [DBProxyEndpoint]
    #
    DeleteDBProxyEndpointOutput = ::Struct.new(
      :db_proxy_endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_proxy_name
    #   <p>The name of the DB proxy to delete.</p>
    #
    #   @return [String]
    #
    DeleteDBProxyInput = ::Struct.new(
      :db_proxy_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_proxy
    #   <p>The data structure representing the details of the DB proxy that you delete.</p>
    #
    #   @return [DBProxy]
    #
    DeleteDBProxyOutput = ::Struct.new(
      :db_proxy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_security_group_name
    #   <p>The name of the DB security group to delete.</p>
    #           <note>
    #               <p>You can't delete the default DB security group.</p>
    #           </note>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be 1 to 255 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                   <p>Can't end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #               <li>
    #                   <p>Must not be "Default"</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    DeleteDBSecurityGroupInput = ::Struct.new(
      :db_security_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDBSecurityGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_snapshot_identifier
    #   <p>The DB snapshot identifier.</p>
    #           <p>Constraints: Must be the name of an existing DB snapshot in the <code>available</code> state.</p>
    #
    #   @return [String]
    #
    DeleteDBSnapshotInput = ::Struct.new(
      :db_snapshot_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_snapshot
    #   <p>Contains the details of an Amazon RDS DB snapshot.</p>
    #           <p>This data type is used as a response element
    #             in the <code>DescribeDBSnapshots</code> action.</p>
    #
    #   @return [DBSnapshot]
    #
    DeleteDBSnapshotOutput = ::Struct.new(
      :db_snapshot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_subnet_group_name
    #   <p>The name of the database subnet group to delete.</p>
    #           <note>
    #               <p>You can't delete the default subnet group.</p>
    #           </note>
    #           <p>Constraints: Must match the name of an existing DBSubnetGroup. Must not be default.</p>
    #           <p>Example: <code>mydbsubnetgroup</code>
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

    # <p></p>
    #
    # @!attribute subscription_name
    #   <p>The name of the RDS event notification subscription you want to delete.</p>
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
    #   <p>Contains the results of a successful invocation of the <code>DescribeEventSubscriptions</code> action.</p>
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
    #   <p>A data type representing an Aurora global database.</p>
    #
    #   @return [GlobalCluster]
    #
    DeleteGlobalClusterOutput = ::Struct.new(
      :global_cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute option_group_name
    #   <p>The name of the option group to be deleted.</p>
    #           <note>
    #               <p>You can't delete default option groups.</p>
    #           </note>
    #
    #   @return [String]
    #
    DeleteOptionGroupInput = ::Struct.new(
      :option_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteOptionGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_proxy_name
    #   <p>The identifier of the <code>DBProxy</code> that is associated with the <code>DBProxyTargetGroup</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute target_group_name
    #   <p>The identifier of the <code>DBProxyTargetGroup</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute db_instance_identifiers
    #   <p>One or more DB instance identifiers.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute db_cluster_identifiers
    #   <p>One or more DB cluster identifiers.</p>
    #
    #   @return [Array<String>]
    #
    DeregisterDBProxyTargetsInput = ::Struct.new(
      :db_proxy_name,
      :target_group_name,
      :db_instance_identifiers,
      :db_cluster_identifiers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeregisterDBProxyTargetsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    DescribeAccountAttributesInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Data returned by the <b>DescribeAccountAttributes</b> action.</p>
    #
    # @!attribute account_quotas
    #   <p>A list of <code>AccountQuota</code> objects. Within this list, each quota has a name,
    #               a count of usage toward the quota maximum, and a maximum value for the quota.</p>
    #
    #   @return [Array<AccountQuota>]
    #
    DescribeAccountAttributesOutput = ::Struct.new(
      :account_quotas,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute certificate_identifier
    #   <p>The user-supplied certificate identifier. If this parameter is specified, information for only the identified certificate is returned. This parameter isn't case-sensitive.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must match an existing CertificateIdentifier.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>This parameter isn't currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response.
    #           If more records exist than the specified <code>MaxRecords</code> value,
    #           a pagination token called a marker is included in the response so you can retrieve the remaining results.</p>
    #           <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous
    #           <code>DescribeCertificates</code> request.
    #           If this parameter is specified, the response includes
    #           only records beyond the marker,
    #           up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    DescribeCertificatesInput = ::Struct.new(
      :certificate_identifier,
      :filters,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Data returned by the <b>DescribeCertificates</b> action.</p>
    #
    # @!attribute certificates
    #   <p>The list of <code>Certificate</code> objects for the Amazon Web Services account.</p>
    #
    #   @return [Array<Certificate>]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous
    #               <code>DescribeCertificates</code> request.
    #               If this parameter is specified, the response includes
    #               only records beyond the marker,
    #               up to the value specified by <code>MaxRecords</code> .</p>
    #
    #   @return [String]
    #
    DescribeCertificatesOutput = ::Struct.new(
      :certificates,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_cluster_identifier
    #   <p>The DB cluster identifier of the DB cluster to be described. This parameter is
    #               stored as a lowercase string.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>my-cluster1</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute backtrack_identifier
    #   <p>If specified, this value is the backtrack identifier of the backtrack to be
    #               described.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain a valid universally unique identifier (UUID). For more
    #                       information about UUIDs, see <a href="http://www.ietf.org/rfc/rfc4122.txt">A Universally Unique Identifier
    #                           (UUID) URN Namespace</a>.</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>123e4567-e89b-12d3-a456-426655440000</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>A filter that specifies one or more DB clusters to describe. Supported filters
    #               include the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>db-cluster-backtrack-id</code> - Accepts backtrack identifiers. The
    #                       results list includes information about only the backtracks identified by these
    #                       identifiers.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>db-cluster-backtrack-status</code> - Accepts any of the following backtrack status values:</p>
    #                   <ul>
    #                     <li>
    #                           <p>
    #                           <code>applying</code>
    #                        </p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <code>completed</code>
    #                        </p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <code>failed</code>
    #                        </p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <code>pending</code>
    #                        </p>
    #                       </li>
    #                  </ul>
    #                   <p>The results list includes information about only the backtracks identified
    #                       by these values.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response.
    #               If more records exist than the specified <code>MaxRecords</code> value,
    #               a pagination token called a marker is included in the response so you can retrieve the remaining results.</p>
    #           <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous
    #               <code>DescribeDBClusterBacktracks</code> request.
    #               If this parameter is specified, the response includes
    #               only records beyond the marker,
    #               up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    DescribeDBClusterBacktracksInput = ::Struct.new(
      :db_cluster_identifier,
      :backtrack_identifier,
      :filters,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the result of a successful invocation of the <code>DescribeDBClusterBacktracks</code> action.</p>
    #
    # @!attribute marker
    #   <p>A pagination token that can be used in a later <code>DescribeDBClusterBacktracks</code> request.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_backtracks
    #   <p>Contains a list of backtracks for the user.</p>
    #
    #   @return [Array<DBClusterBacktrack>]
    #
    DescribeDBClusterBacktracksOutput = ::Struct.new(
      :marker,
      :db_cluster_backtracks,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster_identifier
    #   <p>The DB cluster identifier of the DB cluster associated with the endpoint. This parameter is
    #               stored as a lowercase string.</p>
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
    #          The filters are specified as name-value pairs, in the format
    #          <code>Name=<i>endpoint_type</i>,Values=<i>endpoint_type1</i>,<i>endpoint_type2</i>,...</code>.
    #          <code>Name</code> can be one of: <code>db-cluster-endpoint-type</code>, <code>db-cluster-endpoint-custom-type</code>, <code>db-cluster-endpoint-id</code>, <code>db-cluster-endpoint-status</code>.
    #            <code>Values</code> for the <code> db-cluster-endpoint-type</code> filter can be one or more of: <code>reader</code>, <code>writer</code>, <code>custom</code>.
    #          <code>Values</code> for the <code>db-cluster-endpoint-custom-type</code> filter can be one or more of: <code>reader</code>, <code>any</code>.
    #          <code>Values</code> for the <code>db-cluster-endpoint-status</code> filter can be one or more of: <code>available</code>, <code>creating</code>, <code>deleting</code>, <code>inactive</code>, <code>modifying</code>.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response.
    #               If more records exist than the specified <code>MaxRecords</code> value,
    #               a pagination token called a marker is included in the response so you can retrieve the remaining results.</p>
    #           <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous
    #               <code>DescribeDBClusterEndpoints</code> request.
    #               If this parameter is specified, the response includes
    #               only records beyond the marker,
    #               up to the value specified by <code>MaxRecords</code>.</p>
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
    #   <p>An optional pagination token provided by a previous
    #               <code>DescribeDBClusterEndpoints</code> request.
    #               If this parameter is specified, the response includes
    #               only records beyond the marker,
    #               up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_endpoints
    #   <p>Contains the details of the endpoints associated with the cluster
    #          and matching any filter conditions.</p>
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

    # <p></p>
    #
    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of a specific DB cluster parameter group to return details for.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>This parameter isn't currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response.
    #           If more records exist than the specified <code>MaxRecords</code> value,
    #             a pagination token called a marker is included in the response so you can retrieve the remaining results.</p>
    #           <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous
    #           <code>DescribeDBClusterParameterGroups</code> request.
    #           If this parameter is specified, the response includes
    #           only records beyond the marker,
    #           up to the value specified by <code>MaxRecords</code>.</p>
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

    # <p></p>
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous
    #               <code>DescribeDBClusterParameterGroups</code> request.
    #               If this parameter is specified, the response includes
    #               only records beyond the marker,
    #               up to the value specified by <code>MaxRecords</code>.</p>
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

    # <p></p>
    #
    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of a specific DB cluster parameter group to return parameter details for.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute source
    #   <p>A value that indicates to return only parameters for a specific source.
    #         Parameter sources can be <code>engine</code>, <code>service</code>,
    #         or <code>customer</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>This parameter isn't currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response.
    #         If more records exist than the specified <code>MaxRecords</code> value,
    #             a pagination token called a marker is included in the response so you can retrieve the remaining results.</p>
    #           <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous
    #         <code>DescribeDBClusterParameters</code> request.
    #         If this parameter is specified, the response includes
    #         only records beyond the marker,
    #         up to the value specified by <code>MaxRecords</code>.</p>
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

    # <p>Provides details about a DB cluster parameter group including the parameters in the DB cluster parameter group.</p>
    #
    # @!attribute parameters
    #   <p>Provides a list of parameters for the DB cluster parameter group.</p>
    #
    #   @return [Array<Parameter>]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous
    #               <code>DescribeDBClusterParameters</code> request.
    #               If this parameter is specified, the response includes
    #               only records beyond the marker,
    #               up to the value specified by <code>MaxRecords</code>.</p>
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

    # <p></p>
    #
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
    #   <p>Contains the results of a successful call to the <code>DescribeDBClusterSnapshotAttributes</code>
    #               API action.</p>
    #           <p>Manual DB cluster snapshot attributes are used to authorize other Amazon Web Services accounts
    #               to copy or restore a manual DB cluster snapshot. For more information, see the <code>ModifyDBClusterSnapshotAttribute</code>
    #               API action.</p>
    #
    #   @return [DBClusterSnapshotAttributesResult]
    #
    DescribeDBClusterSnapshotAttributesOutput = ::Struct.new(
      :db_cluster_snapshot_attributes_result,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_cluster_identifier
    #   <p>The ID of the DB cluster to retrieve the list of DB cluster snapshots for.
    #               This parameter can't be used in conjunction with the
    #               <code>DBClusterSnapshotIdentifier</code> parameter.
    #               This parameter isn't case-sensitive.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If supplied, must match the identifier of an existing DBCluster.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_snapshot_identifier
    #   <p>A specific DB cluster snapshot identifier to describe.
    #               This parameter can't be used in conjunction with the
    #               <code>DBClusterIdentifier</code> parameter.
    #               This value is stored as a lowercase string.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If supplied, must match the identifier of an existing DBClusterSnapshot.</p>
    #               </li>
    #               <li>
    #                   <p>If this identifier is for an automated snapshot, the <code>SnapshotType</code> parameter must also be specified.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute snapshot_type
    #   <p>The type of DB cluster snapshots to be returned. You can specify one of the following values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>automated</code> - Return all DB cluster snapshots that have been automatically taken by
    #                 Amazon RDS for my Amazon Web Services account.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>manual</code> - Return all DB cluster snapshots that have been taken by my Amazon Web Services account.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>shared</code> - Return all manual DB cluster snapshots that have been shared to my Amazon Web Services account.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>public</code> - Return all DB cluster snapshots that have been marked as public.</p>
    #               </li>
    #            </ul>
    #           <p>If you don't specify a <code>SnapshotType</code> value, then both automated and manual DB cluster snapshots are
    #             returned. You can include shared DB cluster snapshots with these results by enabling the <code>IncludeShared</code>
    #             parameter. You can include public DB cluster snapshots with these results by enabling the
    #             <code>IncludePublic</code> parameter.</p>
    #           <p>The <code>IncludeShared</code> and <code>IncludePublic</code> parameters don't apply for <code>SnapshotType</code> values
    #             of <code>manual</code> or <code>automated</code>. The <code>IncludePublic</code> parameter doesn't apply when <code>SnapshotType</code> is
    #             set to <code>shared</code>. The <code>IncludeShared</code> parameter doesn't apply when <code>SnapshotType</code> is set to
    #             <code>public</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>A filter that specifies one or more DB cluster snapshots to describe.</p>
    #           <p>Supported filters:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB
    #                 cluster Amazon Resource Names (ARNs).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>db-cluster-snapshot-id</code> - Accepts DB cluster snapshot identifiers.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>snapshot-type</code> - Accepts types of DB cluster snapshots.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>engine</code> - Accepts names of database engines.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response.
    #               If more records exist than the specified <code>MaxRecords</code> value,
    #             a pagination token called a marker is included in the response so you can retrieve the remaining results.</p>
    #           <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous
    #               <code>DescribeDBClusterSnapshots</code> request.
    #               If this parameter is specified, the response includes
    #               only records beyond the marker,
    #               up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute include_shared
    #   <p>A value that indicates whether to include shared manual DB cluster snapshots
    #               from other Amazon Web Services accounts that this Amazon Web Services account has been given
    #               permission to copy or restore. By default, these snapshots are not included.</p>
    #           <p>You can give an Amazon Web Services account permission to restore a manual DB cluster snapshot from
    #               another Amazon Web Services account by the <code>ModifyDBClusterSnapshotAttribute</code> API action.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute include_public
    #   <p>A value that indicates whether to include manual DB cluster snapshots that are public and can be copied
    #               or restored by any Amazon Web Services account. By default, the public snapshots are not included.</p>
    #           <p>You can share a manual DB cluster snapshot  as public by using the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>
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

    # <p>Provides a list of DB cluster snapshots for the user as the result of a call to the <code>DescribeDBClusterSnapshots</code> action.</p>
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous
    #             <code>DescribeDBClusterSnapshots</code> request.
    #         If this parameter is specified, the response includes
    #         only records beyond the marker,
    #         up to the value specified by <code>MaxRecords</code>.</p>
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

    # <p></p>
    #
    # @!attribute db_cluster_identifier
    #   <p>The user-supplied DB cluster identifier. If this parameter is specified, information from only the specific DB cluster is returned. This parameter isn't case-sensitive.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If supplied, must match an existing DBClusterIdentifier.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>A filter that specifies one or more DB clusters to describe.</p>
    #           <p>Supported filters:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>clone-group-id</code> - Accepts clone group identifiers.
    #                 The results list only includes information about
    #                 the DB clusters associated with these clone groups.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB
    #                 cluster Amazon Resource Names (ARNs). The results list only includes information about
    #                 the DB clusters identified by these ARNs.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>domain</code> - Accepts Active Directory directory IDs.
    #                 The results list only includes information about
    #                 the DB clusters associated with these domains.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>engine</code> - Accepts engine names.
    #                 The results list only includes information about
    #                 the DB clusters for these engines.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response.
    #               If more records exist than the specified <code>MaxRecords</code> value,
    #             a pagination token called a marker is included in the response so you can retrieve the remaining results.</p>
    #           <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous
    #               <code>DescribeDBClusters</code> request.
    #               If this parameter is specified, the response includes
    #               only records beyond the marker,
    #               up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute include_shared
    #   <p>Optional Boolean parameter that specifies whether the output includes information about clusters
    #             shared from other Amazon Web Services accounts.</p>
    #
    #   @return [Boolean]
    #
    DescribeDBClustersInput = ::Struct.new(
      :db_cluster_identifier,
      :filters,
      :max_records,
      :marker,
      :include_shared,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.include_shared ||= false
      end
    end

    # <p>Contains the result of a successful invocation of the <code>DescribeDBClusters</code> action.</p>
    #
    # @!attribute marker
    #   <p>A pagination token that can be used in a later DescribeDBClusters request.</p>
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
    #           <p>Valid Values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>aurora</code> (for MySQL 5.6-compatible Aurora)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>aurora-mysql</code> (for MySQL 5.7-compatible and MySQL 8.0-compatible Aurora)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>aurora-postgresql</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>mariadb</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>mysql</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-ee</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-ee-cdb</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-se2</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-se2-cdb</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>postgres</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-ee</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-se</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-ex</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-web</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The database engine version to return.</p>
    #           <p>Example: <code>5.1.49</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute db_parameter_group_family
    #   <p>The name of a specific DB parameter group family to return details for.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If supplied, must match an existing DBParameterGroupFamily.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>A filter that specifies one or more DB engine versions to describe.</p>
    #           <p>Supported filters:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>db-parameter-group-family</code> - Accepts parameter groups family names.
    #                     The results list only includes information about
    #                     the DB engine versions for these parameter group families.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>engine</code> - Accepts engine names.
    #                     The results list only includes information about
    #                     the DB engine versions for these engines.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>engine-mode</code> - Accepts DB engine modes.
    #                     The results list only includes information about
    #                     the DB engine versions for these engine modes. Valid
    #                     DB engine modes are the following:</p>
    #                   <ul>
    #                     <li>
    #                           <p>
    #                           <code>global</code>
    #                        </p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <code>multimaster</code>
    #                        </p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <code>parallelquery</code>
    #                        </p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <code>provisioned</code>
    #                        </p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <code>serverless</code>
    #                        </p>
    #                       </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>engine-version</code> - Accepts engine versions.
    #                     The results list only includes information about
    #                     the DB engine versions for these engine versions.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>status</code> - Accepts engine version statuses.
    #                     The results list only includes information about
    #                     the DB engine versions for these statuses. Valid statuses
    #                     are the following:</p>
    #                   <ul>
    #                     <li>
    #                           <p>
    #                           <code>available</code>
    #                        </p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <code>deprecated</code>
    #                        </p>
    #                       </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response.
    #       If more than the <code>MaxRecords</code> value is available, a pagination token called a marker is
    #       included in the response so you can retrieve the remaining results.</p>
    #           <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request.
    #           If this parameter is specified, the response includes
    #           only records beyond the marker,
    #           up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute default_only
    #   <p>A value that indicates whether only the default version of the specified engine or engine and major version combination is returned.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute list_supported_character_sets
    #   <p>A value that indicates whether to list the supported character sets for each engine version.</p>
    #           <p>If this parameter is enabled and the requested engine supports the <code>CharacterSetName</code> parameter for
    #                   <code>CreateDBInstance</code>, the response includes a list of supported character sets for each engine
    #               version.</p>
    #           <p>For RDS Custom, the default is not to list supported character sets. If you set <code>ListSupportedCharacterSets</code>
    #             to <code>true</code>, RDS Custom returns no results.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute list_supported_timezones
    #   <p>A value that indicates whether to list the supported time zones for each engine version.</p>
    #           <p>If this parameter is enabled and the requested engine supports the <code>TimeZone</code> parameter for <code>CreateDBInstance</code>,
    #               the response includes a list of supported time zones for each engine version.</p>
    #           <p>For RDS Custom, the default is not to list supported time zones. If you set <code>ListSupportedTimezones</code>
    #               to <code>true</code>, RDS Custom returns no results.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute include_all
    #   <p>A value that indicates whether to include engine versions that aren't available in the list. The default is to list only available engine versions.</p>
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
      :include_all,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.default_only ||= false
      end
    end

    # <p>Contains the result of a successful invocation of the <code>DescribeDBEngineVersions</code> action.</p>
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request.
    #               If this parameter is specified, the response includes
    #               only records beyond the marker,
    #               up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute db_engine_versions
    #   <p>A list of <code>DBEngineVersion</code> elements.</p>
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

    # <p>Parameter input for DescribeDBInstanceAutomatedBackups.</p>
    #
    # @!attribute dbi_resource_id
    #   <p>The resource ID of the DB instance that is the source of
    #               the automated backup. This parameter isn't case-sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute db_instance_identifier
    #   <p>(Optional) The user-supplied instance identifier. If this parameter is specified, it must
    #               match the identifier of an existing DB instance. It returns information from the
    #               specific DB instance' automated backup. This parameter isn't case-sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>A filter that specifies which resources to return based on status.</p>
    #           <p>Supported filters are the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>status</code>
    #                  </p>
    #                   <ul>
    #                     <li>
    #                           <p>
    #                           <code>active</code> - automated backups for current instances</p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <code>retained</code> - automated backups for deleted instances and after backup replication is stopped</p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <code>creating</code> - automated backups that are waiting for the first automated snapshot to be available</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>db-instance-id</code> - Accepts DB instance identifiers and Amazon Resource Names (ARNs).
    #                   The results list includes only information about the DB instance automated backups identified by these ARNs.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>dbi-resource-id</code> - Accepts DB resource identifiers and Amazon Resource Names (ARNs).
    #                   The results list includes only information about the DB instance resources identified by these ARNs.</p>
    #               </li>
    #            </ul>
    #           <p>Returns all resources by default. The status for each resource is specified in the response.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the specified
    #               <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that
    #               you can retrieve the remaining results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>The pagination token provided in the previous request. If this parameter is specified the response
    #               includes only records beyond the marker, up to <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute db_instance_automated_backups_arn
    #   <p>The Amazon Resource Name (ARN) of the replicated automated backups, for example,
    #               <code>arn:aws:rds:us-east-1:123456789012:auto-backup:ab-L2IJCEXJP7XQ7HOJ4SIEXAMPLE</code>.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    DescribeDBInstanceAutomatedBackupsInput = ::Struct.new(
      :dbi_resource_id,
      :db_instance_identifier,
      :filters,
      :max_records,
      :marker,
      :db_instance_automated_backups_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the result of a successful invocation of the <code>DescribeDBInstanceAutomatedBackups</code> action.</p>
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request.
    #               If this parameter is specified, the response includes
    #               only records beyond the marker,
    #               up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute db_instance_automated_backups
    #   <p>A list of <code>DBInstanceAutomatedBackup</code> instances.</p>
    #
    #   @return [Array<DBInstanceAutomatedBackup>]
    #
    DescribeDBInstanceAutomatedBackupsOutput = ::Struct.new(
      :marker,
      :db_instance_automated_backups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_instance_identifier
    #   <p>The user-supplied instance identifier. If this parameter is specified, information from only the specific DB instance is returned. This parameter isn't case-sensitive.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If supplied, must match the identifier of an existing DBInstance.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>A filter that specifies one or more DB instances to describe.</p>
    #           <p>Supported filters:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB
    #                 cluster Amazon Resource Names (ARNs). The results list only includes information about
    #                 the DB instances associated with the DB clusters identified by these ARNs.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>db-instance-id</code> - Accepts DB instance identifiers and DB
    #                 instance Amazon Resource Names (ARNs). The results list only includes information about
    #                 the DB instances identified by these ARNs.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>dbi-resource-id</code> - Accepts DB instance resource identifiers. The results list will
    #                 only include information about the DB instances identified by these DB instance resource identifiers.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>domain</code> - Accepts Active Directory directory IDs. The results list only includes
    #                 information about the DB instances associated with these domains.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>engine</code> - Accepts engine names. The results list only includes information
    #                 about the DB instances for these engines.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response.
    #           If more records exist than the specified <code>MaxRecords</code> value,
    #           a pagination token called a marker is included in the response so that
    #           you can retrieve the remaining results.</p>
    #           <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous
    #           <code>DescribeDBInstances</code> request.
    #           If this parameter is specified, the response includes
    #           only records beyond the marker,
    #           up to the value specified by <code>MaxRecords</code>.</p>
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

    # <p>Contains the result of a successful invocation of the <code>DescribeDBInstances</code> action.</p>
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request.
    #               If this parameter is specified, the response includes
    #               only records beyond the marker,
    #               up to the value specified by <code>MaxRecords</code> .</p>
    #
    #   @return [String]
    #
    # @!attribute db_instances
    #   <p>A list of <code>DBInstance</code> instances.</p>
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

    # <p>This data type is used as a response element to <code>DescribeDBLogFiles</code>.</p>
    #
    # @!attribute log_file_name
    #   <p>The name of the log file for the specified DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute last_written
    #   <p>A POSIX timestamp when the last log entry was written.</p>
    #
    #   @return [Integer]
    #
    # @!attribute size
    #   <p>The size, in bytes, of the log file for the specified DB instance.</p>
    #
    #   @return [Integer]
    #
    DescribeDBLogFilesDetails = ::Struct.new(
      :log_file_name,
      :last_written,
      :size,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.last_written ||= 0
        self.size ||= 0
      end
    end

    # <p></p>
    #
    # @!attribute db_instance_identifier
    #   <p>The customer-assigned name of the DB instance that contains the log files you want to list.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must match the identifier of an existing DBInstance.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute filename_contains
    #   <p>Filters the available log files for log file names that contain the specified string.</p>
    #
    #   @return [String]
    #
    # @!attribute file_last_written
    #   <p>Filters the available log files for files written since the specified date, in POSIX timestamp format with milliseconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute file_size
    #   <p>Filters the available log files for files larger than the specified size.</p>
    #
    #   @return [Integer]
    #
    # @!attribute filters
    #   <p>This parameter isn't currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so you can retrieve the remaining results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>The pagination token provided in the previous request. If this parameter is specified the response includes only records beyond the marker, up to MaxRecords.</p>
    #
    #   @return [String]
    #
    DescribeDBLogFilesInput = ::Struct.new(
      :db_instance_identifier,
      :filename_contains,
      :file_last_written,
      :file_size,
      :filters,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.file_last_written ||= 0
        self.file_size ||= 0
      end
    end

    # <p>The response from a call to <code>DescribeDBLogFiles</code>.</p>
    #
    # @!attribute describe_db_log_files
    #   <p>The DB log files returned.</p>
    #
    #   @return [Array<DescribeDBLogFilesDetails>]
    #
    # @!attribute marker
    #   <p>A pagination token that can be used in a later <code>DescribeDBLogFiles</code> request.</p>
    #
    #   @return [String]
    #
    DescribeDBLogFilesOutput = ::Struct.new(
      :describe_db_log_files,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_parameter_group_name
    #   <p>The name of a specific DB parameter group to return details for.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>This parameter isn't currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response.
    #           If more records exist than the specified <code>MaxRecords</code> value,
    #               a pagination token called a marker is included in the response so that
    #           you can retrieve the remaining results.</p>
    #           <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous
    #           <code>DescribeDBParameterGroups</code> request.
    #               If this parameter is specified, the response includes
    #           only records beyond the marker,
    #           up to the value specified by <code>MaxRecords</code>.</p>
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

    # <p>Contains the result of a successful invocation of the <code>DescribeDBParameterGroups</code> action.</p>
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request.
    #               If this parameter is specified, the response includes
    #               only records beyond the marker,
    #               up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute db_parameter_groups
    #   <p>A list of <code>DBParameterGroup</code> instances.</p>
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
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If supplied, must match the name of an existing DBParameterGroup.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute source
    #   <p>The parameter types to return.</p>
    #           <p>Default: All parameter types returned</p>
    #           <p>Valid Values: <code>user | system | engine-default</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>This parameter isn't currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response.
    #           If more records exist than the specified <code>MaxRecords</code> value,
    #               a pagination token called a marker is included in the response so that
    #           you can retrieve the remaining results.</p>
    #           <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous
    #           <code>DescribeDBParameters</code> request.
    #               If this parameter is specified, the response includes
    #           only records beyond the marker,
    #           up to the value specified by <code>MaxRecords</code>.</p>
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

    # <p>Contains the result of a successful invocation of the <code>DescribeDBParameters</code> action.</p>
    #
    # @!attribute parameters
    #   <p>A list of <code>Parameter</code> values.</p>
    #
    #   @return [Array<Parameter>]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request.
    #               If this parameter is specified, the response includes
    #               only records beyond the marker,
    #               up to the value specified by <code>MaxRecords</code>.</p>
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

    # @!attribute db_proxy_name
    #   <p>The name of the DB proxy. If you omit this parameter,
    #           the output includes information about all DB proxies owned by
    #           your Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>This parameter is not currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request.
    #           If this parameter is specified, the response includes only records beyond the marker,
    #           up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist
    #             than the specified <code>MaxRecords</code> value, a pagination token called a marker is
    #             included in the response so that the remaining results can be retrieved.</p>
    #           <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    DescribeDBProxiesInput = ::Struct.new(
      :db_proxy_name,
      :filters,
      :marker,
      :max_records,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_proxies
    #   <p>A return value representing an arbitrary number of <code>DBProxy</code> data structures.</p>
    #
    #   @return [Array<DBProxy>]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request.
    #           If this parameter is specified, the response includes only records beyond the marker,
    #           up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    DescribeDBProxiesOutput = ::Struct.new(
      :db_proxies,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_proxy_name
    #   <p>The name of the DB proxy whose endpoints you want to describe. If you omit
    #           this parameter, the output includes information about all DB proxy endpoints
    #           associated with all your DB proxies.</p>
    #
    #   @return [String]
    #
    # @!attribute db_proxy_endpoint_name
    #   <p>The name of a DB proxy endpoint to describe. If you omit this parameter,
    #           the output includes information about all DB proxy endpoints associated with
    #           the specified proxy.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>This parameter is not currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request.
    #           If this parameter is specified, the response includes only records beyond the marker,
    #           up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist
    #             than the specified <code>MaxRecords</code> value, a pagination token called a marker is
    #             included in the response so that the remaining results can be retrieved.</p>
    #           <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    DescribeDBProxyEndpointsInput = ::Struct.new(
      :db_proxy_name,
      :db_proxy_endpoint_name,
      :filters,
      :marker,
      :max_records,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_proxy_endpoints
    #   <p>The list of <code>ProxyEndpoint</code> objects returned by the API operation.</p>
    #
    #   @return [Array<DBProxyEndpoint>]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request.
    #           If this parameter is specified, the response includes only records beyond the marker,
    #           up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    DescribeDBProxyEndpointsOutput = ::Struct.new(
      :db_proxy_endpoints,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_proxy_name
    #   <p>The identifier of the <code>DBProxy</code> associated with the target group.</p>
    #
    #   @return [String]
    #
    # @!attribute target_group_name
    #   <p>The identifier of the <code>DBProxyTargetGroup</code> to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>This parameter is not currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request.
    #           If this parameter is specified, the response includes only records beyond the marker,
    #           up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response.
    #           If more records exist than the specified <code>MaxRecords</code> value,
    #           a pagination token called a marker is included in the response so that the remaining
    #           results can be retrieved.</p>
    #           <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    DescribeDBProxyTargetGroupsInput = ::Struct.new(
      :db_proxy_name,
      :target_group_name,
      :filters,
      :marker,
      :max_records,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute target_groups
    #   <p>An arbitrary number of <code>DBProxyTargetGroup</code> objects, containing details of the corresponding target groups.</p>
    #
    #   @return [Array<DBProxyTargetGroup>]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request.
    #           If this parameter is specified, the response includes only records beyond the marker,
    #           up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    DescribeDBProxyTargetGroupsOutput = ::Struct.new(
      :target_groups,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_proxy_name
    #   <p>The identifier of the <code>DBProxyTarget</code> to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute target_group_name
    #   <p>The identifier of the <code>DBProxyTargetGroup</code> to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>This parameter is not currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request.
    #           If this parameter is specified, the response includes only records beyond the marker,
    #           up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response.
    #           If more records exist than the specified <code>MaxRecords</code> value,
    #           a pagination token called a marker is included in the response so that the remaining
    #           results can be retrieved.</p>
    #           <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    DescribeDBProxyTargetsInput = ::Struct.new(
      :db_proxy_name,
      :target_group_name,
      :filters,
      :marker,
      :max_records,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute targets
    #   <p>An arbitrary number of <code>DBProxyTarget</code> objects, containing details of the corresponding targets.</p>
    #
    #   @return [Array<DBProxyTarget>]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request.
    #           If this parameter is specified, the response includes only records beyond the marker,
    #           up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    DescribeDBProxyTargetsOutput = ::Struct.new(
      :targets,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_security_group_name
    #   <p>The name of the DB security group to return details for.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>This parameter isn't currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response.
    #           If more records exist than the specified <code>MaxRecords</code> value,
    #           a pagination token called a marker is included in the response so that
    #           you can retrieve the remaining results.</p>
    #           <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous
    #           <code>DescribeDBSecurityGroups</code> request.
    #           If this parameter is specified, the response includes
    #           only records beyond the marker,
    #           up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    DescribeDBSecurityGroupsInput = ::Struct.new(
      :db_security_group_name,
      :filters,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the result of a successful invocation of the <code>DescribeDBSecurityGroups</code> action.</p>
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request.
    #               If this parameter is specified, the response includes
    #               only records beyond the marker,
    #               up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute db_security_groups
    #   <p>A list of <code>DBSecurityGroup</code> instances.</p>
    #
    #   @return [Array<DBSecurityGroup>]
    #
    DescribeDBSecurityGroupsOutput = ::Struct.new(
      :marker,
      :db_security_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_snapshot_identifier
    #   <p>The identifier for the DB snapshot to describe the attributes for.</p>
    #
    #   @return [String]
    #
    DescribeDBSnapshotAttributesInput = ::Struct.new(
      :db_snapshot_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_snapshot_attributes_result
    #   <p>Contains the results of a successful call to the <code>DescribeDBSnapshotAttributes</code>
    #       API action.</p>
    #           <p>Manual DB snapshot attributes are used to authorize other Amazon Web Services accounts
    #         to copy or restore a manual DB snapshot. For more information, see the <code>ModifyDBSnapshotAttribute</code>
    #         API action.</p>
    #
    #   @return [DBSnapshotAttributesResult]
    #
    DescribeDBSnapshotAttributesOutput = ::Struct.new(
      :db_snapshot_attributes_result,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_instance_identifier
    #   <p>The ID of the DB instance to retrieve the list of DB snapshots for.
    #           This parameter can't be used in conjunction with <code>DBSnapshotIdentifier</code>.
    #           This parameter isn't case-sensitive.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If supplied, must match the identifier of an existing DBInstance.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute db_snapshot_identifier
    #   <p>A specific DB snapshot identifier to describe. This parameter can't be used in conjunction with <code>DBInstanceIdentifier</code>.
    #               This value is stored as a lowercase string.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If supplied, must match the identifier of an existing DBSnapshot.</p>
    #               </li>
    #               <li>
    #                   <p>If this identifier is for an automated snapshot, the <code>SnapshotType</code> parameter must also be specified.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute snapshot_type
    #   <p>The type of snapshots to be returned. You can specify one of the following values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>automated</code> - Return all DB snapshots that have been automatically taken by
    #         Amazon RDS for my Amazon Web Services account.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>manual</code> - Return all DB snapshots that have been taken by my Amazon Web Services account.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>shared</code> - Return all manual DB snapshots that have been shared to my Amazon Web Services account.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>public</code> - Return all DB snapshots that have been marked as public.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>awsbackup</code> - Return the DB snapshots managed by the Amazon Web Services Backup service.</p>
    #                   <p>For information about Amazon Web Services Backup, see the
    #                     <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html">
    #                           <i>Amazon Web Services Backup Developer Guide.</i>
    #                       </a>
    #                  </p>
    #                   <p>The <code>awsbackup</code> type does not apply to Aurora.</p>
    #               </li>
    #            </ul>
    #           <p>If you don't specify a <code>SnapshotType</code> value, then both automated and manual snapshots are
    #         returned. Shared and public DB snapshots are not included in the returned results by default.
    #         You can include shared snapshots with these results by enabling the <code>IncludeShared</code>
    #         parameter. You can include public snapshots with these results by enabling the
    #         <code>IncludePublic</code> parameter.</p>
    #           <p>The <code>IncludeShared</code> and <code>IncludePublic</code> parameters don't apply for <code>SnapshotType</code> values
    #         of <code>manual</code> or <code>automated</code>. The <code>IncludePublic</code> parameter doesn't apply when <code>SnapshotType</code> is
    #         set to <code>shared</code>. The <code>IncludeShared</code> parameter doesn't apply when <code>SnapshotType</code> is set to
    #         <code>public</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>A filter that specifies one or more DB snapshots to describe.</p>
    #           <p>Supported filters:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>db-instance-id</code> - Accepts DB instance identifiers and DB
    #                 instance Amazon Resource Names (ARNs).</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>db-snapshot-id</code> - Accepts DB snapshot identifiers.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>dbi-resource-id</code> - Accepts identifiers of source DB instances.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>snapshot-type</code> - Accepts types of DB snapshots.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>engine</code> - Accepts names of database engines.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response.
    #           If more records exist than the specified <code>MaxRecords</code> value,
    #           a pagination token called a marker is included in the response so that
    #           you can retrieve the remaining results.</p>
    #           <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous
    #           <code>DescribeDBSnapshots</code> request.
    #               If this parameter is specified, the response includes
    #           only records beyond the marker,
    #           up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute include_shared
    #   <p>A value that indicates whether to include shared manual DB cluster snapshots
    #             from other Amazon Web Services accounts that this Amazon Web Services account has been given
    #             permission to copy or restore. By default, these snapshots are not included.</p>
    #           <p>You can give an Amazon Web Services account permission to restore a manual DB snapshot from
    #       another Amazon Web Services account by using the <code>ModifyDBSnapshotAttribute</code> API action.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute include_public
    #   <p>A value that indicates whether to include manual DB cluster snapshots that are public and can be copied
    #             or restored by any Amazon Web Services account. By default, the public snapshots are not included.</p>
    #           <p>You can share a manual DB snapshot as public by using the <a>ModifyDBSnapshotAttribute</a> API.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute dbi_resource_id
    #   <p>A specific DB resource ID to describe.</p>
    #
    #   @return [String]
    #
    DescribeDBSnapshotsInput = ::Struct.new(
      :db_instance_identifier,
      :db_snapshot_identifier,
      :snapshot_type,
      :filters,
      :max_records,
      :marker,
      :include_shared,
      :include_public,
      :dbi_resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.include_shared ||= false
        self.include_public ||= false
      end
    end

    # <p>Contains the result of a successful invocation of the <code>DescribeDBSnapshots</code> action.</p>
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request.
    #               If this parameter is specified, the response includes
    #               only records beyond the marker,
    #               up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute db_snapshots
    #   <p>A list of <code>DBSnapshot</code> instances.</p>
    #
    #   @return [Array<DBSnapshot>]
    #
    DescribeDBSnapshotsOutput = ::Struct.new(
      :marker,
      :db_snapshots,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_subnet_group_name
    #   <p>The name of the DB subnet group to return details for.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>This parameter isn't currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response.
    #           If more records exist than the specified <code>MaxRecords</code> value,
    #           a pagination token called a marker is included in the response so that
    #           you can retrieve the remaining results.</p>
    #           <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous DescribeDBSubnetGroups request.
    #               If this parameter is specified, the response includes
    #               only records beyond the marker,
    #               up to the value specified by <code>MaxRecords</code>.</p>
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

    # <p>Contains the result of a successful invocation of the <code>DescribeDBSubnetGroups</code> action.</p>
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request.
    #               If this parameter is specified, the response includes
    #               only records beyond the marker,
    #               up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute db_subnet_groups
    #   <p>A list of <code>DBSubnetGroup</code> instances.</p>
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

    # <p></p>
    #
    # @!attribute db_parameter_group_family
    #   <p>The name of the DB cluster parameter group family to return engine parameter information for.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>This parameter isn't currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response.
    #         If more records exist than the specified <code>MaxRecords</code> value,
    #             a pagination token called a marker is included in the response so you can retrieve the remaining results.</p>
    #           <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous
    #         <code>DescribeEngineDefaultClusterParameters</code> request.
    #         If this parameter is specified, the response includes
    #         only records beyond the marker,
    #         up to the value specified by <code>MaxRecords</code>.</p>
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
    #   <p>Contains the result of a successful invocation of the <code>DescribeEngineDefaultParameters</code> action.</p>
    #
    #   @return [EngineDefaults]
    #
    DescribeEngineDefaultClusterParametersOutput = ::Struct.new(
      :engine_defaults,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_parameter_group_family
    #   <p>The name of the DB parameter group family.</p>
    #           <p>Valid Values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>aurora5.6</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>aurora-mysql5.7</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>aurora-mysql8.0</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>aurora-postgresql10</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>aurora-postgresql11</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>aurora-postgresql12</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>aurora-postgresql13</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>mariadb10.2</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>mariadb10.3</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>mariadb10.4</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>mariadb10.5</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>mariadb10.6</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>mysql5.7</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>mysql8.0</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>postgres10</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>postgres11</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>postgres12</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>postgres13</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>postgres14</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-ee-11.0</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-ee-12.0</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-ee-13.0</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-ee-14.0</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-ee-15.0</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-ex-11.0</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-ex-12.0</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-ex-13.0</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-ex-14.0</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-ex-15.0</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-se-11.0</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-se-12.0</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-se-13.0</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-se-14.0</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-se-15.0</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-web-11.0</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-web-12.0</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-web-13.0</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-web-14.0</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-web-15.0</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>This parameter isn't currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response.
    #           If more records exist than the specified <code>MaxRecords</code> value,
    #             a pagination token called a marker is included in the response so you can retrieve the remaining results.</p>
    #           <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous
    #           <code>DescribeEngineDefaultParameters</code> request.
    #               If this parameter is specified, the response includes
    #           only records beyond the marker,
    #           up to the value specified by <code>MaxRecords</code>.</p>
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
    #   <p>Contains the result of a successful invocation of the <code>DescribeEngineDefaultParameters</code> action.</p>
    #
    #   @return [EngineDefaults]
    #
    DescribeEngineDefaultParametersOutput = ::Struct.new(
      :engine_defaults,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute source_type
    #   <p>The type of source that is generating the events. For RDS Proxy events, specify <code>db-proxy</code>.</p>
    #           <p>Valid values: <code>db-instance</code> | <code>db-cluster</code> | <code>db-parameter-group</code> | <code>db-security-group</code> | <code>db-snapshot</code> | <code>db-cluster-snapshot</code> | <code>db-proxy</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>This parameter isn't currently supported.</p>
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

    # <p>Data returned from the <code>DescribeEventCategories</code> operation.</p>
    #
    # @!attribute event_categories_map_list
    #   <p>A list of <code>EventCategoriesMap</code> data types.</p>
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
    #   <p>The name of the RDS event notification subscription you want to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>This parameter isn't currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response.
    #               If more records exist than the specified <code>MaxRecords</code> value,
    #               a pagination token called a marker is included in the response so that
    #               you can retrieve the remaining results.</p>
    #           <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous
    #               DescribeOrderableDBInstanceOptions request.
    #               If this parameter is specified, the response includes
    #               only records beyond the marker,
    #               up to the value specified by <code>MaxRecords</code> .</p>
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

    # <p>Data returned by the <b>DescribeEventSubscriptions</b> action.</p>
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous
    #               DescribeOrderableDBInstanceOptions request.
    #               If this parameter is specified, the response includes
    #               only records beyond the marker,
    #               up to the value specified by <code>MaxRecords</code>.</p>
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

    # <p></p>
    #
    # @!attribute source_identifier
    #   <p>The identifier of the event source for which events are returned. If not specified, then all sources are included in the response.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If <code>SourceIdentifier</code> is supplied, <code>SourceType</code> must also be provided.</p>
    #               </li>
    #               <li>
    #                   <p>If the source type is a DB instance, a <code>DBInstanceIdentifier</code> value must be supplied.</p>
    #               </li>
    #               <li>
    #                   <p>If the source type is a DB cluster, a <code>DBClusterIdentifier</code> value must be supplied.</p>
    #               </li>
    #               <li>
    #                   <p>If the source type is a DB parameter group, a <code>DBParameterGroupName</code> value must be supplied.</p>
    #               </li>
    #               <li>
    #                   <p>If the source type is a DB security group, a <code>DBSecurityGroupName</code> value must be supplied.</p>
    #               </li>
    #               <li>
    #                   <p>If the source type is a DB snapshot, a <code>DBSnapshotIdentifier</code> value must be supplied.</p>
    #               </li>
    #               <li>
    #                   <p>If the source type is a DB cluster snapshot, a <code>DBClusterSnapshotIdentifier</code> value must be supplied.</p>
    #               </li>
    #               <li>
    #                   <p>If the source type is an RDS Proxy, a <code>DBProxyName</code> value must be supplied.</p>
    #               </li>
    #               <li>
    #                   <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute source_type
    #   <p>The event source to retrieve events for. If no value is specified, all events are returned.</p>
    #
    #   Enum, one of: ["db-instance", "db-parameter-group", "db-security-group", "db-snapshot", "db-cluster", "db-cluster-snapshot", "custom-engine-version", "db-proxy"]
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The beginning of the time interval to retrieve events for,
    #           specified in ISO 8601 format. For more information about ISO 8601,
    #           go to the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia page.</a>
    #            </p>
    #           <p>Example: 2009-07-08T18:00Z</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The end of the time interval for which to retrieve events,
    #           specified in ISO 8601 format. For more information about ISO 8601,
    #           go to the <a href="http://en.wikipedia.org/wiki/ISO_8601">ISO8601 Wikipedia page.</a>
    #            </p>
    #           <p>Example: 2009-07-08T18:00Z</p>
    #
    #   @return [Time]
    #
    # @!attribute duration
    #   <p>The number of minutes to retrieve events for.</p>
    #           <p>Default: 60</p>
    #
    #   @return [Integer]
    #
    # @!attribute event_categories
    #   <p>A list of event categories that trigger notifications for a event notification subscription.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute filters
    #   <p>This parameter isn't currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response.
    #           If more records exist than the specified <code>MaxRecords</code> value,
    #               a pagination token called a marker is included in the response so that
    #           you can retrieve the remaining results.</p>
    #           <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous
    #           DescribeEvents request.
    #           If this parameter is specified, the response includes
    #           only records beyond the marker,
    #           up to the value specified by <code>MaxRecords</code>.</p>
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

    # <p>Contains the result of a successful invocation of the <code>DescribeEvents</code> action.</p>
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous
    #               Events request.
    #               If this parameter is specified, the response includes
    #               only records beyond the marker,
    #               up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute events
    #   <p>A list of <code>Event</code> instances.</p>
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

    # @!attribute export_task_identifier
    #   <p>The identifier of the snapshot export task to be described.</p>
    #
    #   @return [String]
    #
    # @!attribute source_arn
    #   <p>The Amazon Resource Name (ARN) of the snapshot exported to Amazon S3.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Filters specify one or more snapshot exports to describe. The filters are specified as name-value pairs that define what to
    #               include in the output. Filter names and values are case-sensitive.</p>
    #           <p>Supported filters include the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>export-task-identifier</code> - An identifier for the snapshot export task.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>s3-bucket</code> - The Amazon S3 bucket the snapshot is exported to.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>source-arn</code> - The Amazon Resource Name (ARN) of the snapshot exported to Amazon S3</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>status</code> - The status of the export task. Must be lowercase. Valid statuses are the following:</p>
    #                   <ul>
    #                     <li>
    #                           <p>
    #                           <code>canceled</code>
    #                        </p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <code>canceling</code>
    #                        </p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <code>complete</code>
    #                        </p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <code>failed</code>
    #                        </p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <code>in_progress</code>
    #                        </p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <code>starting</code>
    #                        </p>
    #                       </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous <code>DescribeExportTasks</code> request.
    #               If you specify this parameter, the response includes only records beyond the marker,
    #               up to the value specified by the <code>MaxRecords</code> parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #               specified value, a pagination token called a marker is included in the response.
    #               You can use the marker in a later <code>DescribeExportTasks</code> request
    #               to retrieve the remaining results.</p>
    #           <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    DescribeExportTasksInput = ::Struct.new(
      :export_task_identifier,
      :source_arn,
      :filters,
      :marker,
      :max_records,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute marker
    #   <p>A pagination token that can be used in a later <code>DescribeExportTasks</code>
    #               request. A marker is used for pagination to identify the location to begin output for
    #               the next response of <code>DescribeExportTasks</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute export_tasks
    #   <p>Information about an export of a snapshot to Amazon S3.</p>
    #
    #   @return [Array<ExportTask>]
    #
    DescribeExportTasksOutput = ::Struct.new(
      :marker,
      :export_tasks,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_cluster_identifier
    #   <p>The user-supplied DB cluster identifier. If this parameter is specified, information from only the specific DB cluster is returned. This parameter isn't case-sensitive.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If supplied, must match an existing DBClusterIdentifier.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>This parameter isn't currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the specified
    #           <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that
    #          you can retrieve the remaining results.</p>
    #           <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous <code>DescribeGlobalClusters</code> request. If
    #           this parameter is specified, the response includes only records beyond the marker, up to the value
    #           specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    DescribeGlobalClustersInput = ::Struct.new(
      :global_cluster_identifier,
      :filters,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute marker
    #   <p>An optional pagination token provided by a previous <code>DescribeGlobalClusters</code> request.
    #           If this parameter is specified, the response includes
    #           only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute global_clusters
    #   <p>The list of global clusters returned by this request.</p>
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

    # <p></p>
    #
    # @!attribute engine_name
    #   <p>A required parameter. Options available for the given engine name are described.</p>
    #           <p>Valid Values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>mariadb</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>mysql</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-ee</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-ee-cdb</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-se2</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-se2-cdb</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>postgres</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-ee</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-se</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-ex</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-web</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute major_engine_version
    #   <p>If specified, filters the results to include only options for the specified major engine version.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>This parameter isn't currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response.
    #               If more records exist than the specified <code>MaxRecords</code> value,
    #               a pagination token called a marker is included in the response so that
    #               you can retrieve the remaining results.</p>
    #           <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request.
    #               If this parameter is specified, the response includes
    #               only records beyond the marker,
    #               up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    DescribeOptionGroupOptionsInput = ::Struct.new(
      :engine_name,
      :major_engine_version,
      :filters,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute option_group_options
    #   <p>List of available option group options.</p>
    #
    #   @return [Array<OptionGroupOption>]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request.
    #               If this parameter is specified, the response includes
    #               only records beyond the marker,
    #               up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    DescribeOptionGroupOptionsOutput = ::Struct.new(
      :option_group_options,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute option_group_name
    #   <p>The name of the option group to describe. Can't be supplied together with EngineName or MajorEngineVersion.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>This parameter isn't currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous DescribeOptionGroups request.
    #               If this parameter is specified, the response includes
    #               only records beyond the marker,
    #               up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response.
    #               If more records exist than the specified <code>MaxRecords</code> value,
    #               a pagination token called a marker is included in the response so that
    #               you can retrieve the remaining results.</p>
    #           <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute engine_name
    #   <p>Filters the list of option groups to only include groups associated with a specific database engine.</p>
    #           <p>Valid Values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>mariadb</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>mysql</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-ee</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-ee-cdb</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-se2</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-se2-cdb</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>postgres</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-ee</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-se</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-ex</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-web</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute major_engine_version
    #   <p>Filters the list of option groups to only include groups associated with a specific database engine version. If specified, then EngineName must also be specified.</p>
    #
    #   @return [String]
    #
    DescribeOptionGroupsInput = ::Struct.new(
      :option_group_name,
      :filters,
      :marker,
      :max_records,
      :engine_name,
      :major_engine_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>List of option groups.</p>
    #
    # @!attribute option_groups_list
    #   <p>List of option groups.</p>
    #
    #   @return [Array<OptionGroup>]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request.
    #               If this parameter is specified, the response includes
    #               only records beyond the marker,
    #               up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    DescribeOptionGroupsOutput = ::Struct.new(
      :option_groups_list,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute engine
    #   <p>The name of the engine to retrieve DB instance options for.</p>
    #           <p>Valid Values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>aurora</code> (for MySQL 5.6-compatible Aurora)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>aurora-mysql</code> (for MySQL 5.7-compatible and MySQL 8.0-compatible Aurora)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>aurora-postgresql</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>mariadb</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>mysql</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-ee</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-ee-cdb</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-se2</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-se2-cdb</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>postgres</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-ee</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-se</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-ex</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-web</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The engine version filter value. Specify this parameter to show only the available offerings matching the specified engine version.</p>
    #
    #   @return [String]
    #
    # @!attribute db_instance_class
    #   <p>The DB instance class filter value. Specify this parameter to show only the available offerings matching the specified DB instance class.</p>
    #
    #   @return [String]
    #
    # @!attribute license_model
    #   <p>The license model filter value. Specify this parameter to show only the available offerings
    #             matching the specified license model.</p>
    #           <p>RDS Custom supports only the BYOL licensing model.</p>
    #
    #   @return [String]
    #
    # @!attribute availability_zone_group
    #   <p>The Availability Zone group associated with a Local Zone. Specify this parameter to retrieve available offerings for the Local Zones in the group.</p>
    #           <p>Omit this parameter to show the available offerings in the specified Amazon Web Services Region.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc
    #   <p>A value that indicates whether to show only VPC or non-VPC offerings. RDS Custom supports
    #         only VPC offerings.</p>
    #           <p>RDS Custom supports only VPC offerings. If you describe non-VPC offerings for RDS Custom, the output
    #             shows VPC offerings.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute filters
    #   <p>This parameter isn't currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response.
    #               If more records exist than the specified <code>MaxRecords</code> value,
    #               a pagination token called a marker is included in the response so that
    #               you can retrieve the remaining results.</p>
    #           <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous
    #               DescribeOrderableDBInstanceOptions request.
    #               If this parameter is specified, the response includes
    #               only records beyond the marker,
    #               up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    DescribeOrderableDBInstanceOptionsInput = ::Struct.new(
      :engine,
      :engine_version,
      :db_instance_class,
      :license_model,
      :availability_zone_group,
      :vpc,
      :filters,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the result of a successful invocation of the <code>DescribeOrderableDBInstanceOptions</code> action.</p>
    #
    # @!attribute orderable_db_instance_options
    #   <p>An <code>OrderableDBInstanceOption</code> structure containing information about orderable options for the DB instance.</p>
    #
    #   @return [Array<OrderableDBInstanceOption>]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous
    #               OrderableDBInstanceOptions request.
    #               If this parameter is specified, the response includes
    #               only records beyond the marker,
    #               up to the value specified by <code>MaxRecords</code>.</p>
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

    # <p></p>
    #
    # @!attribute resource_identifier
    #   <p>The ARN of a resource to return pending maintenance actions for.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>A filter that specifies one or more resources to return pending maintenance actions for.</p>
    #           <p>Supported filters:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB
    #                 cluster Amazon Resource Names (ARNs). The results list only includes pending maintenance
    #                 actions for the DB clusters identified by these ARNs.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>db-instance-id</code> - Accepts DB instance identifiers and DB
    #               instance ARNs. The results list only includes pending maintenance
    #               actions for the DB instances identified by these ARNs.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous
    #               <code>DescribePendingMaintenanceActions</code> request.
    #               If this parameter is specified, the response includes
    #               only records beyond the marker,
    #               up to a number of records specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response.
    #               If more records exist than the specified <code>MaxRecords</code> value,
    #               a pagination token called a marker is included in the response so that
    #               you can retrieve the remaining results.</p>
    #           <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
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

    # <p>Data returned from the <b>DescribePendingMaintenanceActions</b> action.</p>
    #
    # @!attribute pending_maintenance_actions
    #   <p>A list of the pending maintenance actions for the resource.</p>
    #
    #   @return [Array<ResourcePendingMaintenanceActions>]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous
    #               <code>DescribePendingMaintenanceActions</code> request.
    #               If this parameter is specified, the response includes
    #               only records beyond the marker,
    #               up to a number of records specified by <code>MaxRecords</code>.</p>
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

    # <p></p>
    #
    # @!attribute reserved_db_instance_id
    #   <p>The reserved DB instance identifier filter value. Specify this parameter to show only the reservation that matches the specified reservation ID.</p>
    #
    #   @return [String]
    #
    # @!attribute reserved_db_instances_offering_id
    #   <p>The offering identifier filter value. Specify this parameter to show only purchased reservations matching the specified offering identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute db_instance_class
    #   <p>The DB instance class filter value. Specify this parameter to show only those reservations matching the specified DB instances class.</p>
    #
    #   @return [String]
    #
    # @!attribute duration
    #   <p>The duration filter value, specified in years or seconds. Specify this parameter to show only reservations for this duration.</p>
    #           <p>Valid Values: <code>1 | 3 | 31536000 | 94608000</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute product_description
    #   <p>The product description filter value. Specify this parameter to show only those reservations matching the specified product description.</p>
    #
    #   @return [String]
    #
    # @!attribute offering_type
    #   <p>The offering type filter value. Specify this parameter to show only the available offerings matching the specified offering type.</p>
    #           <p>Valid Values: <code>"Partial Upfront" | "All Upfront" | "No Upfront" </code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute multi_az
    #   <p>A value that indicates whether to show only those reservations that support Multi-AZ.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute lease_id
    #   <p>The lease identifier filter value. Specify this parameter to show only the reservation that matches the specified lease ID.</p>
    #           <note>
    #               <p>Amazon Web Services Support might request the lease ID for an issue related to a reserved DB instance.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>This parameter isn't currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response.
    #       If more than the <code>MaxRecords</code> value is available, a pagination token called a marker is
    #             included in the response so you can retrieve the remaining results.</p>
    #           <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request.
    #           If this parameter is specified, the response includes
    #           only records beyond the marker,
    #           up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    DescribeReservedDBInstancesInput = ::Struct.new(
      :reserved_db_instance_id,
      :reserved_db_instances_offering_id,
      :db_instance_class,
      :duration,
      :product_description,
      :offering_type,
      :multi_az,
      :lease_id,
      :filters,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute reserved_db_instances_offering_id
    #   <p>The offering identifier filter value. Specify this parameter to show only the available offering that matches the specified reservation identifier.</p>
    #           <p>Example: <code>438012d3-4052-4cc7-b2e3-8d3372e0e706</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute db_instance_class
    #   <p>The DB instance class filter value. Specify this parameter to show only the available offerings matching the specified DB instance class.</p>
    #
    #   @return [String]
    #
    # @!attribute duration
    #   <p>Duration filter value, specified in years or seconds. Specify this parameter to show only reservations for this duration.</p>
    #           <p>Valid Values: <code>1 | 3 | 31536000 | 94608000</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute product_description
    #   <p>Product description filter value. Specify this parameter to show only the available offerings that contain the specified product description.</p>
    #           <note>
    #               <p>The results show offerings that partially match the filter value.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute offering_type
    #   <p>The offering type filter value. Specify this parameter to show only the available offerings matching the specified offering type.</p>
    #           <p>Valid Values: <code>"Partial Upfront" | "All Upfront" | "No Upfront" </code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute multi_az
    #   <p>A value that indicates whether to show only those reservations that support Multi-AZ.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute filters
    #   <p>This parameter isn't currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response.
    #       If more than the <code>MaxRecords</code> value is available, a pagination token called a marker is
    #       included in the response so you can retrieve the remaining results.</p>
    #           <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request.
    #           If this parameter is specified, the response includes
    #           only records beyond the marker,
    #           up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    DescribeReservedDBInstancesOfferingsInput = ::Struct.new(
      :reserved_db_instances_offering_id,
      :db_instance_class,
      :duration,
      :product_description,
      :offering_type,
      :multi_az,
      :filters,
      :max_records,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the result of a successful invocation of the <code>DescribeReservedDBInstancesOfferings</code> action.</p>
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request.
    #           If this parameter is specified, the response includes
    #           only records beyond the marker,
    #           up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute reserved_db_instances_offerings
    #   <p>A list of reserved DB instance offerings.</p>
    #
    #   @return [Array<ReservedDBInstancesOffering>]
    #
    DescribeReservedDBInstancesOfferingsOutput = ::Struct.new(
      :marker,
      :reserved_db_instances_offerings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the result of a successful invocation of the <code>DescribeReservedDBInstances</code> action.</p>
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request.
    #           If this parameter is specified, the response includes
    #           only records beyond the marker,
    #           up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute reserved_db_instances
    #   <p>A list of reserved DB instances.</p>
    #
    #   @return [Array<ReservedDBInstance>]
    #
    DescribeReservedDBInstancesOutput = ::Struct.new(
      :marker,
      :reserved_db_instances,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute region_name
    #   <p>The source Amazon Web Services Region name. For example, <code>us-east-1</code>.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must specify a valid Amazon Web Services Region name.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist
    #               than the specified <code>MaxRecords</code> value, a pagination token called a marker is
    #               included in the response so you can retrieve the remaining results.</p>
    #           <p>Default: 100</p>
    #           <p>Constraints: Minimum 20, maximum 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous <code>DescribeSourceRegions</code> request. If this parameter is specified, the response
    #               includes only records beyond the marker, up to the value specified by
    #               <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>This parameter isn't currently supported.</p>
    #
    #   @return [Array<Filter>]
    #
    DescribeSourceRegionsInput = ::Struct.new(
      :region_name,
      :max_records,
      :marker,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the result of a successful invocation of the <code>DescribeSourceRegions</code> action.</p>
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request.
    #           If this parameter is specified, the response includes
    #           only records beyond the marker,
    #           up to the value specified by <code>MaxRecords</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute source_regions
    #   <p>A list of <code>SourceRegion</code> instances that contains each source Amazon Web Services Region that the
    #               current Amazon Web Services Region can get a read replica or a DB snapshot from.</p>
    #
    #   @return [Array<SourceRegion>]
    #
    DescribeSourceRegionsOutput = ::Struct.new(
      :marker,
      :source_regions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
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
    #   <p>Information about valid modifications that you can make to your DB instance.
    #               Contains the result of a successful call to the
    #               <code>DescribeValidDBInstanceModifications</code> action.
    #               You can use this information when you call
    #               <code>ModifyDBInstance</code>.</p>
    #
    #   @return [ValidDBInstanceModificationsMessage]
    #
    DescribeValidDBInstanceModificationsOutput = ::Struct.new(
      :valid_db_instance_modifications_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An Active Directory Domain membership record associated with the DB instance or cluster.</p>
    #
    # @!attribute domain
    #   <p>The identifier of the Active Directory Domain.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the Active Directory Domain membership for the DB instance or cluster. Values include joined, pending-join, failed, and so on.</p>
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
    #             <code>Domain</code> doesn't refer to an existing Active Directory domain.</p>
    #
    # @!attribute message
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

    # <p></p>
    #
    # @!attribute db_instance_identifier
    #   <p>The customer-assigned name of the DB instance that contains the log files you want to list.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must match the identifier of an existing DBInstance.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute log_file_name
    #   <p>The name of the log file to be downloaded.</p>
    #
    #   @return [String]
    #
    # @!attribute marker
    #   <p>The pagination token provided in the previous request or "0". If the Marker parameter is specified the response includes only records beyond the marker until the end of the file or up to NumberOfLines.</p>
    #
    #   @return [String]
    #
    # @!attribute number_of_lines
    #   <p>The number of lines to download. If the number of lines specified results in a file over 1 MB in size, the file is truncated at 1 MB in size.</p>
    #           <p>If the NumberOfLines parameter is specified, then the block of lines returned can be from the beginning
    #               or the end of the log file, depending on the value of the Marker parameter.</p>
    #           <ul>
    #               <li>
    #                   <p>If neither Marker or NumberOfLines are specified, the entire log file is returned up to a
    #                 maximum of 10000 lines, starting with the most recent log entries first.</p>
    #               </li>
    #               <li>
    #                   <p>If
    #                 NumberOfLines is specified and Marker isn't specified, then the most recent lines from the end
    #                       of the log file are returned.</p>
    #               </li>
    #               <li>
    #                   <p>If Marker is specified as "0", then the specified
    #                         number of lines from the beginning of the log file are returned.</p>
    #               </li>
    #               <li>
    #                   <p>You can
    #                           download the log file in blocks of lines by specifying the size of the block using
    #                       the NumberOfLines parameter, and by specifying a value of "0" for the Marker parameter in your
    #                       first request. Include the Marker value returned in the response as the Marker value for the next
    #                       request, continuing until the AdditionalDataPending response element returns false.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Integer]
    #
    DownloadDBLogFilePortionInput = ::Struct.new(
      :db_instance_identifier,
      :log_file_name,
      :marker,
      :number_of_lines,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.number_of_lines ||= 0
      end
    end

    # <p>This data type is used as a response element to <code>DownloadDBLogFilePortion</code>.</p>
    #
    # @!attribute log_file_data
    #   <p>Entries from the specified log file.</p>
    #
    #   @return [String]
    #
    # @!attribute marker
    #   <p>A pagination token that can be used in a later <code>DownloadDBLogFilePortion</code> request.</p>
    #
    #   @return [String]
    #
    # @!attribute additional_data_pending
    #   <p>Boolean value that if true, indicates there is more data to be downloaded.</p>
    #
    #   @return [Boolean]
    #
    DownloadDBLogFilePortionOutput = ::Struct.new(
      :log_file_data,
      :marker,
      :additional_data_pending,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.additional_data_pending ||= false
      end
    end

    # <p>This data type is used as a response element in the following actions:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>AuthorizeDBSecurityGroupIngress</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>DescribeDBSecurityGroups</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>RevokeDBSecurityGroupIngress</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @!attribute status
    #   <p>Provides the status of the EC2 security group. Status can be "authorizing", "authorized", "revoking", and "revoked".</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_security_group_name
    #   <p>Specifies the name of the EC2 security group.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_security_group_id
    #   <p>Specifies the id of the EC2 security group.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_security_group_owner_id
    #   <p>Specifies the Amazon Web Services ID of the owner of the EC2 security group
    #           specified in the <code>EC2SecurityGroupName</code> field.</p>
    #
    #   @return [String]
    #
    EC2SecurityGroup = ::Struct.new(
      :status,
      :ec2_security_group_name,
      :ec2_security_group_id,
      :ec2_security_group_owner_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This data type represents the information you need to connect to an Amazon RDS DB instance.
    #       This data type is used as a response element in the following actions:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>CreateDBInstance</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>DescribeDBInstances</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>DeleteDBInstance</code>
    #                </p>
    #             </li>
    #          </ul>
    #         <p>For the data structure that represents Amazon Aurora DB cluster endpoints,
    #         see <code>DBClusterEndpoint</code>.</p>
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

    # <p>Contains the result of a successful invocation of the <code>DescribeEngineDefaultParameters</code> action.</p>
    #
    # @!attribute db_parameter_group_family
    #   <p>Specifies the name of the DB parameter group family that the engine default parameters apply to.</p>
    #
    #   @return [String]
    #
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous
    #               EngineDefaults request.
    #               If this parameter is specified, the response includes
    #               only records beyond the marker,
    #               up to the value specified by <code>MaxRecords</code> .</p>
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

    # Includes enum constants for EngineFamily
    #
    module EngineFamily
      # No documentation available.
      #
      MYSQL = "MYSQL"

      # No documentation available.
      #
      POSTGRESQL = "POSTGRESQL"
    end

    # <p>This data type is used as a response element in the <code>DescribeEvents</code> action.</p>
    #
    # @!attribute source_identifier
    #   <p>Provides the identifier for the source of the event.</p>
    #
    #   @return [String]
    #
    # @!attribute source_type
    #   <p>Specifies the source type for this event.</p>
    #
    #   Enum, one of: ["db-instance", "db-parameter-group", "db-security-group", "db-snapshot", "db-cluster", "db-cluster-snapshot", "custom-engine-version", "db-proxy"]
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

    # <p>Contains the results of a successful invocation of the <code>DescribeEventCategories</code> operation.</p>
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

    # <p>Contains the results of a successful invocation of the <code>DescribeEventSubscriptions</code> action.</p>
    #
    # @!attribute customer_aws_id
    #   <p>The Amazon Web Services customer account associated with the RDS event notification subscription.</p>
    #
    #   @return [String]
    #
    # @!attribute cust_subscription_id
    #   <p>The RDS event notification subscription Id.</p>
    #
    #   @return [String]
    #
    # @!attribute sns_topic_arn
    #   <p>The topic ARN of the RDS event notification subscription.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the RDS event notification subscription.</p>
    #           <p>Constraints:</p>
    #           <p>Can be one of the following: creating | modifying | deleting | active | no-permission | topic-not-exist</p>
    #           <p>The status "no-permission" indicates that RDS no longer has permission to post to the SNS topic. The status "topic-not-exist" indicates that the topic was deleted after the subscription was created.</p>
    #
    #   @return [String]
    #
    # @!attribute subscription_creation_time
    #   <p>The time the RDS event notification subscription was created.</p>
    #
    #   @return [String]
    #
    # @!attribute source_type
    #   <p>The source type for the RDS event notification subscription.</p>
    #
    #   @return [String]
    #
    # @!attribute source_ids_list
    #   <p>A list of source IDs for the RDS event notification subscription.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute event_categories_list
    #   <p>A list of event categories for the RDS event notification subscription.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute enabled
    #   <p>A Boolean value indicating if the subscription is enabled. True indicates the subscription is enabled.</p>
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

    # <p>You have reached the maximum number of event subscriptions.</p>
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

    # <p>Contains the details of a snapshot export to Amazon S3.</p>
    #         <p>This data type is used as a response element in the <code>DescribeExportTasks</code> action.</p>
    #
    # @!attribute export_task_identifier
    #   <p>A unique identifier for the snapshot export task. This ID isn't an identifier for
    #               the Amazon S3 bucket where the snapshot is exported to.</p>
    #
    #   @return [String]
    #
    # @!attribute source_arn
    #   <p>The Amazon Resource Name (ARN) of the snapshot exported to Amazon S3.</p>
    #
    #   @return [String]
    #
    # @!attribute export_only
    #   <p>The data exported from the snapshot. Valid values are the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>database</code> - Export all the data from a specified database.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>database.table</code>
    #                       <i>table-name</i> -
    #                   Export a table of the snapshot. This format is valid only for RDS for MySQL, RDS for MariaDB, and Aurora MySQL.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>database.schema</code>
    #                       <i>schema-name</i> - Export a database schema of the snapshot.
    #                   This format is valid only for RDS for PostgreSQL and Aurora PostgreSQL.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>database.schema.table</code>
    #                       <i>table-name</i> - Export a table of the database schema.
    #                   This format is valid only for RDS for PostgreSQL and Aurora PostgreSQL.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute snapshot_time
    #   <p>The time that the snapshot was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute task_start_time
    #   <p>The time that the snapshot export task started.</p>
    #
    #   @return [Time]
    #
    # @!attribute task_end_time
    #   <p>The time that the snapshot export task completed.</p>
    #
    #   @return [Time]
    #
    # @!attribute s3_bucket
    #   <p>The Amazon S3 bucket that the snapshot is exported to.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_prefix
    #   <p>The Amazon S3 bucket prefix that is the file name and path of the exported snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_role_arn
    #   <p>The name of the IAM role that is used to write to Amazon S3 when exporting a snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>The key identifier of the Amazon Web Services KMS key that is used to encrypt the snapshot when it's exported to
    #               Amazon S3. The KMS key identifier is its key ARN, key ID, alias ARN, or alias name. The IAM role used for the snapshot export
    #               must have encryption and decryption permissions to use this KMS key.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The progress status of the export task.</p>
    #
    #   @return [String]
    #
    # @!attribute percent_progress
    #   <p>The progress of the snapshot export task as a percentage.</p>
    #
    #   @return [Integer]
    #
    # @!attribute total_extracted_data_in_gb
    #   <p>The total amount of data exported, in gigabytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute failure_cause
    #   <p>The reason the export failed, if it failed.</p>
    #
    #   @return [String]
    #
    # @!attribute warning_message
    #   <p>A warning about the snapshot export task.</p>
    #
    #   @return [String]
    #
    ExportTask = ::Struct.new(
      :export_task_identifier,
      :source_arn,
      :export_only,
      :snapshot_time,
      :task_start_time,
      :task_end_time,
      :s3_bucket,
      :s3_prefix,
      :iam_role_arn,
      :kms_key_id,
      :status,
      :percent_progress,
      :total_extracted_data_in_gb,
      :failure_cause,
      :warning_message,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.percent_progress ||= 0
        self.total_extracted_data_in_gb ||= 0
      end
    end

    # <p>You can't start an export task that's already running.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ExportTaskAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The export task doesn't exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ExportTaskNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_cluster_identifier
    #   <p>A DB cluster identifier to force a failover for. This parameter isn't case-sensitive.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must match the identifier of an existing DBCluster.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute target_db_instance_identifier
    #   <p>The name of the DB instance to promote to the primary DB instance.</p>
    #           <p>Specify the DB instance identifier for an Aurora Replica or a Multi-AZ readable standby in the DB cluster,
    #           for example <code>mydbcluster-replica1</code>.</p>
    #           <p>This setting isn't supported for RDS for MySQL Multi-AZ DB clusters.</p>
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
    #   <p>Contains the details of an Amazon Aurora DB cluster or Multi-AZ DB cluster.</p>
    #           <p>For an Amazon Aurora DB cluster, this data type is used as a response element in the operations
    #             <code>CreateDBCluster</code>, <code>DeleteDBCluster</code>, <code>DescribeDBClusters</code>,
    #             <code>FailoverDBCluster</code>, <code>ModifyDBCluster</code>, <code>PromoteReadReplicaDBCluster</code>,
    #             <code>RestoreDBClusterFromS3</code>, <code>RestoreDBClusterFromSnapshot</code>,
    #             <code>RestoreDBClusterToPointInTime</code>, <code>StartDBCluster</code>, and <code>StopDBCluster</code>.</p>
    #           <p>For a Multi-AZ DB cluster, this data type is used as a response element in the operations
    #             <code>CreateDBCluster</code>, <code>DeleteDBCluster</code>, <code>DescribeDBClusters</code>,
    #             <code>FailoverDBCluster</code>, <code>ModifyDBCluster</code>, <code>RebootDBCluster</code>,
    #             <code>RestoreDBClusterFromSnapshot</code>, and <code>RestoreDBClusterToPointInTime</code>.</p>
    #           <p>For more information on Amazon Aurora DB clusters, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html">
    #                 What is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i>
    #            </p>
    #           <p>For more information on Multi-AZ DB clusters, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html">
    #                 Multi-AZ deployments with two readable standby DB instances</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
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
    #   <p>Identifier of the Aurora global database (<a>GlobalCluster</a>)
    #       that should be failed over. The identifier is the unique key assigned by
    #       the user when the Aurora global database was created. In other words,
    #       it's the name of the Aurora global database that you want to fail over.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must match the identifier of an existing
    #         <a>GlobalCluster</a> (Aurora global database).</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute target_db_cluster_identifier
    #   <p>Identifier of the secondary Aurora DB cluster that you want to promote to primary for the Aurora
    #          global database (<a>GlobalCluster</a>.) Use the Amazon Resource Name (ARN) for the identifier so that
    #          Aurora can locate the cluster in its Amazon Web Services Region.</p>
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
    #   <p>A data type representing an Aurora global database.</p>
    #
    #   @return [GlobalCluster]
    #
    FailoverGlobalClusterOutput = ::Struct.new(
      :global_cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the state of scheduled or in-process failover operations on an
    #       Aurora global database (<a>GlobalCluster</a>). This Data type is empty unless a failover
    #       operation is scheduled or is currently underway on the Aurora global database.</p>
    #
    # @!attribute status
    #   <p>The current status of the Aurora global database (<a>GlobalCluster</a>). Possible values are as follows:</p>
    #           <ul>
    #               <li>
    #                   <p>pending  A request to fail over the Aurora global database (<a>GlobalCluster</a>) has been received by the service. The
    #           <code>GlobalCluster</code>'s primary DB cluster and the specified secondary DB cluster are being verified before the failover
    #           process can start.</p>
    #               </li>
    #               <li>
    #                   <p>failing-over  This status covers the range of Aurora internal operations that take place during the failover process, such
    #           as demoting the primary Aurora DB cluster, promoting the secondary Aurora DB, and synchronizing replicas.</p>
    #               </li>
    #               <li>
    #                   <p>cancelling  The request to fail over the Aurora global database (<a>GlobalCluster</a>) was cancelled and the primary
    #           Aurora DB cluster and the selected secondary Aurora DB cluster are returning to their previous states.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["pending", "failing-over", "cancelling"]
    #
    #   @return [String]
    #
    # @!attribute from_db_cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the Aurora DB cluster that is currently being demoted, and which is associated with this
    #          state.</p>
    #
    #   @return [String]
    #
    # @!attribute to_db_cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the Aurora DB cluster that is currently being promoted, and which is associated
    #        with this state.</p>
    #
    #   @return [String]
    #
    FailoverState = ::Struct.new(
      :status,
      :from_db_cluster_arn,
      :to_db_cluster_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FailoverStatus
    #
    module FailoverStatus
      # No documentation available.
      #
      PENDING = "pending"

      # No documentation available.
      #
      FAILING_OVER = "failing-over"

      # No documentation available.
      #
      CANCELLING = "cancelling"
    end

    # <p>A filter name and value pair that is used to return a more specific list of results
    #             from a describe operation. Filters can be used to match a set of resources by specific
    #             criteria, such as IDs. The filters supported by a describe operation are documented
    #             with the describe operation.</p>
    #         <note>
    #             <p>Currently, wildcards are not supported in filters.</p>
    #         </note>
    #         <p>The following actions can be filtered:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>DescribeDBClusterBacktracks</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>DescribeDBClusterEndpoints</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>DescribeDBClusters</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>DescribeDBInstances</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>DescribePendingMaintenanceActions</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @!attribute name
    #   <p>The name of the filter. Filter names are case-sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>One or more filter values. Filter values are case-sensitive.</p>
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

    # <p>A data type representing an Aurora global database.</p>
    #
    # @!attribute global_cluster_identifier
    #   <p>Contains a user-supplied global database cluster identifier. This identifier is the unique key that
    #           identifies a global database cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute global_cluster_resource_id
    #   <p>The Amazon Web Services Region-unique, immutable identifier for the global database cluster. This identifier is found in
    #           Amazon Web Services CloudTrail log entries whenever the Amazon Web Services KMS key for the DB cluster is accessed.</p>
    #
    #   @return [String]
    #
    # @!attribute global_cluster_arn
    #   <p>The Amazon Resource Name (ARN) for the global database cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Specifies the current state of this global database cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute engine
    #   <p>The Aurora database engine used by the global database cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>Indicates the database engine version.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The default database name within the new global database cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute storage_encrypted
    #   <p>The storage encryption setting for the global database cluster.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute deletion_protection
    #   <p>The deletion protection setting for the new global database cluster.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute global_cluster_members
    #   <p>The list of cluster IDs for secondary clusters within the global database cluster. Currently limited to
    #           1 item.</p>
    #
    #   @return [Array<GlobalClusterMember>]
    #
    # @!attribute failover_state
    #   <p>A data object containing all properties for the current state of an in-process or pending failover process for this Aurora global database.
    #         This object is empty unless the <a>FailoverGlobalCluster</a> API operation has been called on this Aurora global database (<a>GlobalCluster</a>).</p>
    #
    #   @return [FailoverState]
    #
    GlobalCluster = ::Struct.new(
      :global_cluster_identifier,
      :global_cluster_resource_id,
      :global_cluster_arn,
      :status,
      :engine,
      :engine_version,
      :database_name,
      :storage_encrypted,
      :deletion_protection,
      :global_cluster_members,
      :failover_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The <code>GlobalClusterIdentifier</code> already exists. Choose a new global database identifier (unique name) to create a new global database cluster.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    GlobalClusterAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A data structure with information about any primary and
    #         secondary clusters associated with an Aurora global database.</p>
    #
    # @!attribute db_cluster_arn
    #   <p>The Amazon Resource Name (ARN) for each Aurora cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute readers
    #   <p>The Amazon Resource Name (ARN) for each read-only secondary cluster
    #           associated with the Aurora global database.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute is_writer
    #   <p>Specifies whether the Aurora cluster is the primary cluster
    #           (that is, has read-write capability) for the Aurora global
    #           database with which it is associated.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute global_write_forwarding_status
    #   <p>Specifies whether a secondary cluster in an Aurora global database has
    #           write forwarding enabled, not enabled, or is in the process of enabling it.</p>
    #
    #   Enum, one of: ["enabled", "disabled", "enabling", "disabling", "unknown"]
    #
    #   @return [String]
    #
    GlobalClusterMember = ::Struct.new(
      :db_cluster_arn,
      :readers,
      :is_writer,
      :global_write_forwarding_status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_writer ||= false
      end
    end

    # <p>The <code>GlobalClusterIdentifier</code> doesn't refer to an existing global database cluster.</p>
    #
    # @!attribute message
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
    #
    #   @return [String]
    #
    GlobalClusterQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for IAMAuthMode
    #
    module IAMAuthMode
      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      REQUIRED = "REQUIRED"
    end

    # <p>This data type is used as a response element in the <code>DescribeDBSecurityGroups</code> action.</p>
    #
    # @!attribute status
    #   <p>Specifies the status of the IP range. Status can be "authorizing", "authorized", "revoking", and "revoked".</p>
    #
    #   @return [String]
    #
    # @!attribute cidrip
    #   <p>Specifies the IP range.</p>
    #
    #   @return [String]
    #
    IPRange = ::Struct.new(
      :status,
      :cidrip,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The IAM role requires additional permissions to export to an Amazon S3 bucket.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    IamRoleMissingPermissionsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The IAM role is missing for exporting to an Amazon S3 bucket.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    IamRoleNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request would result in the user exceeding the allowed number of DB
    #             instances.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InstanceQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested operation can't be performed because there aren't enough available IP addresses
    #            in the proxy's subnets. Add more CIDR blocks to the VPC or remove IP address that aren't required
    #            from the subnets.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InsufficientAvailableIPsInSubnetFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The DB cluster doesn't have enough capacity for the current operation.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InsufficientDBClusterCapacityFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified DB instance class isn't available in the specified Availability
    #             Zone.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InsufficientDBInstanceCapacityFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There is insufficient storage available for the current action. You might be able to
    #             resolve this error by updating your subnet group to use different Availability Zones
    #             that have more storage available.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InsufficientStorageClusterCapacityFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You can't delete the CEV.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidCustomDBEngineVersionStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             <code>Capacity</code> isn't a valid Aurora Serverless DB cluster
    #             capacity. Valid capacity values are <code>2</code>, <code>4</code>, <code>8</code>, <code>16</code>,
    #             <code>32</code>, <code>64</code>, <code>128</code>, and <code>256</code>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidDBClusterCapacityFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested operation can't be performed on the endpoint while the endpoint is in this state.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidDBClusterEndpointStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The supplied value isn't a valid DB cluster snapshot state.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidDBClusterSnapshotStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested operation can't be performed while the cluster is in this state.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidDBClusterStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The automated backup is in an invalid state.
    #             For example, this automated backup is associated with an active instance.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidDBInstanceAutomatedBackupStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The DB instance isn't in a valid state.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidDBInstanceStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The DB parameter group is in use or is in an invalid state. If you are attempting
    #             to delete the parameter group, you can't delete it when the parameter group is in
    #             this state.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidDBParameterGroupStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You can't perform this operation while the DB proxy endpoint is in a particular state.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidDBProxyEndpointStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested operation can't be performed while the proxy is in this state.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidDBProxyStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The state of the DB security group doesn't allow deletion.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidDBSecurityGroupStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The state of the DB snapshot doesn't allow deletion.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidDBSnapshotStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The DBSubnetGroup doesn't belong to the same VPC as that of an existing
    #             cross-region read replica of the same source instance.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidDBSubnetGroupFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The DB subnet group cannot be deleted because it's in use.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidDBSubnetGroupStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The DB subnet isn't in the <i>available</i> state.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidDBSubnetStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This error can occur if someone else is modifying a subscription. You should retry the action.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidEventSubscriptionStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The export is invalid for exporting to an Amazon S3 bucket.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidExportOnlyFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The state of the export snapshot is invalid for exporting to an Amazon S3 bucket.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidExportSourceStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You can't cancel an export task that has completed.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidExportTaskStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The global cluster is in an invalid state and can't perform the requested operation.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidGlobalClusterStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The option group isn't in the <i>available</i> state.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidOptionGroupStateFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Cannot restore from VPC backup to non-VPC DB instance.</p>
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

    # <p>The specified Amazon S3 bucket name can't be found or Amazon RDS isn't
    #             authorized to access the specified Amazon S3 bucket. Verify the <b>SourceS3BucketName</b> and <b>S3IngestionRoleArn</b> values and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidS3BucketFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested subnet is invalid, or multiple subnets were requested that are not all in a common VPC.</p>
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

    # <p>The DB subnet group doesn't cover all Availability Zones after it's
    #             created because of users' change.</p>
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

    # <p>An error occurred accessing an Amazon Web Services KMS key.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    KMSKeyNotAccessibleFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute resource_name
    #   <p>The Amazon RDS resource with tags to be listed. This value is an Amazon Resource Name (ARN). For information about
    #               creating an ARN,
    #               see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html USER_Tagging.ARN.Constructing">
    #                   Constructing an ARN for Amazon RDS</a> in the <i>Amazon RDS User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>This parameter isn't currently supported.</p>
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

    # <p></p>
    #
    # @!attribute tag_list
    #   <p>List of tags returned by the <code>ListTagsForResource</code> operation.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tag_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The minimum DB engine version required for each corresponding allowed value for an option setting.</p>
    #
    # @!attribute allowed_value
    #   <p>The allowed value for an option setting.</p>
    #
    #   @return [String]
    #
    # @!attribute minimum_engine_version
    #   <p>The minimum DB engine version required for the allowed value.</p>
    #
    #   @return [String]
    #
    MinimumEngineVersionPerAllowedValue = ::Struct.new(
      :allowed_value,
      :minimum_engine_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_identifier
    #   <p>The new default certificate identifier to override the current one with.</p>
    #           <p>To determine the valid values, use the <code>describe-certificates</code> CLI
    #               command or the <code>DescribeCertificates</code> API operation.</p>
    #
    #   @return [String]
    #
    # @!attribute remove_customer_override
    #   <p>A value that indicates whether to remove the override for the default certificate.
    #               If the override is removed, the default certificate is the system
    #               default.</p>
    #
    #   @return [Boolean]
    #
    ModifyCertificatesInput = ::Struct.new(
      :certificate_identifier,
      :remove_customer_override,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate
    #   <p>A CA certificate for an Amazon Web Services account.</p>
    #
    #   @return [Certificate]
    #
    ModifyCertificatesOutput = ::Struct.new(
      :certificate,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster_identifier
    #   <p>The DB cluster identifier for the cluster being modified. This parameter isn't case-sensitive.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must match the identifier of an existing DB cluster.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute capacity
    #   <p>The DB cluster capacity.</p>
    #           <p>When you change the capacity of a paused Aurora Serverless v1 DB cluster, it automatically resumes.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>For Aurora MySQL, valid capacity values are <code>1</code>, <code>2</code>, <code>4</code>, <code>8</code>, <code>16</code>, <code>32</code>, <code>64</code>, <code>128</code>, and <code>256</code>.</p>
    #               </li>
    #               <li>
    #                   <p>For Aurora PostgreSQL, valid capacity values are <code>2</code>, <code>4</code>, <code>8</code>, <code>16</code>, <code>32</code>, <code>64</code>, <code>192</code>, and <code>384</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Integer]
    #
    # @!attribute seconds_before_timeout
    #   <p>The amount of time, in seconds, that Aurora Serverless v1 tries to find a scaling point
    #               to perform seamless scaling before enforcing the timeout action. The default is
    #               300.</p>
    #           <p>Specify a value between 10 and 600 seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute timeout_action
    #   <p>The action to take when the timeout is reached, either <code>ForceApplyCapacityChange</code> or <code>RollbackCapacityChange</code>.</p>
    #           <p>
    #               <code>ForceApplyCapacityChange</code>, the default, sets the capacity to the specified value as soon as possible.</p>
    #           <p>
    #               <code>RollbackCapacityChange</code> ignores the capacity change if a scaling point isn't found in the timeout period.</p>
    #
    #   @return [String]
    #
    ModifyCurrentDBClusterCapacityInput = ::Struct.new(
      :db_cluster_identifier,
      :capacity,
      :seconds_before_timeout,
      :timeout_action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster_identifier
    #   <p>A user-supplied DB cluster identifier. This identifier is the unique key that
    #               identifies a DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute pending_capacity
    #   <p>A value that specifies the capacity that the DB cluster scales to next.</p>
    #
    #   @return [Integer]
    #
    # @!attribute current_capacity
    #   <p>The current capacity of the DB cluster.</p>
    #
    #   @return [Integer]
    #
    # @!attribute seconds_before_timeout
    #   <p>The number of seconds before a call to <code>ModifyCurrentDBClusterCapacity</code> times out.</p>
    #
    #   @return [Integer]
    #
    # @!attribute timeout_action
    #   <p>The timeout action of a call to <code>ModifyCurrentDBClusterCapacity</code>, either
    #               <code>ForceApplyCapacityChange</code> or <code>RollbackCapacityChange</code>.</p>
    #
    #   @return [String]
    #
    ModifyCurrentDBClusterCapacityOutput = ::Struct.new(
      :db_cluster_identifier,
      :pending_capacity,
      :current_capacity,
      :seconds_before_timeout,
      :timeout_action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute engine
    #   <p>The DB engine. The only supported value is <code>custom-oracle-ee</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The custom engine version (CEV) that you want to modify. This option is required for
    #               RDS Custom for Oracle, but optional for Amazon RDS. The combination of <code>Engine</code> and
    #               <code>EngineVersion</code> is unique per customer per Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>An optional description of your CEV.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The availability status to be assigned to the CEV. Valid values are as follows:</p>
    #           <dl>
    #               <dt>available</dt>
    #               <dd>
    #                       <p>You can use this CEV to create a new RDS Custom DB instance.</p>
    #                   </dd>
    #               <dt>inactive</dt>
    #               <dd>
    #                       <p>You can create a new RDS Custom instance by restoring a DB snapshot with this CEV.
    #                       You can't patch or create new instances with this CEV.</p>
    #                   </dd>
    #            </dl>
    #           <p>You can change any status to any status. A typical reason to change status is to prevent the accidental
    #               use of a CEV, or to make a deprecated CEV eligible for use again. For example, you might change the status
    #               of your CEV from <code>available</code> to <code>inactive</code>, and from <code>inactive</code> back to
    #               <code>available</code>. To change the availability status of the CEV, it must not currently be in use by an
    #               RDS Custom instance, snapshot, or automated backup.</p>
    #
    #   Enum, one of: ["available", "inactive", "inactive-except-restore"]
    #
    #   @return [String]
    #
    ModifyCustomDBEngineVersionInput = ::Struct.new(
      :engine,
      :engine_version,
      :description,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This data type is used as a response element in the action <code>DescribeDBEngineVersions</code>.</p>
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
    #   <p>The default character set for new instances of this engine version,
    #               if the <code>CharacterSetName</code> parameter of the CreateDBInstance API
    #               isn't specified.</p>
    #
    #   @return [CharacterSet]
    #
    # @!attribute supported_character_sets
    #   <p>A list of the character sets supported by this engine for the <code>CharacterSetName</code> parameter of the <code>CreateDBInstance</code> operation.</p>
    #
    #   @return [Array<CharacterSet>]
    #
    # @!attribute supported_nchar_character_sets
    #   <p>A list of the character sets supported by the Oracle DB engine for the <code>NcharCharacterSetName</code> parameter of the <code>CreateDBInstance</code> operation.</p>
    #
    #   @return [Array<CharacterSet>]
    #
    # @!attribute valid_upgrade_target
    #   <p>A list of engine versions that this database engine version can be upgraded to.</p>
    #
    #   @return [Array<UpgradeTarget>]
    #
    # @!attribute supported_timezones
    #   <p>A list of the time zones supported by this engine for the
    #               <code>Timezone</code> parameter of the <code>CreateDBInstance</code> action.</p>
    #
    #   @return [Array<Timezone>]
    #
    # @!attribute exportable_log_types
    #   <p>The types of logs that the database engine has available for export to CloudWatch Logs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute supports_log_exports_to_cloudwatch_logs
    #   <p>A value that indicates whether the engine version supports exporting the log types specified by ExportableLogTypes to CloudWatch Logs.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute supports_read_replica
    #   <p>Indicates whether the database engine version supports read replicas.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute supported_engine_modes
    #   <p>A list of the supported DB engine modes.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute supported_feature_names
    #   <p>A list of features supported by the DB engine.</p>
    #           <p>The supported features vary by DB engine and DB engine version.</p>
    #           <p>To determine the supported features for a specific DB engine and DB engine version using the CLI,
    #           use the following command:</p>
    #           <p>
    #               <code>aws rds describe-db-engine-versions --engine <engine_name> --engine-version <engine_version></code>
    #            </p>
    #           <p>For example, to determine the supported features for RDS for PostgreSQL version 13.3 using the CLI,
    #           use the following command:</p>
    #           <p>
    #               <code>aws rds describe-db-engine-versions --engine postgres --engine-version 13.3</code>
    #            </p>
    #           <p>The supported features are listed under <code>SupportedFeatureNames</code> in the output.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute status
    #   <p>The status of the DB engine version, either <code>available</code> or <code>deprecated</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute supports_parallel_query
    #   <p>A value that indicates whether you can use Aurora parallel query with a specific DB engine version.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute supports_global_databases
    #   <p>A value that indicates whether you can use Aurora global databases with a specific DB engine version.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute major_engine_version
    #   <p>The major engine version of the CEV.</p>
    #
    #   @return [String]
    #
    # @!attribute database_installation_files_s3_bucket_name
    #   <p>The name of the Amazon S3 bucket that contains your database installation files.</p>
    #
    #   @return [String]
    #
    # @!attribute database_installation_files_s3_prefix
    #   <p>The Amazon S3 directory that contains the database installation files.
    #               If not specified, then no prefix is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute db_engine_version_arn
    #   <p>The ARN of the custom engine version.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services KMS key identifier for an encrypted CEV. This parameter is required for
    #               RDS Custom, but optional for Amazon RDS.</p>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The creation time of the DB engine version.</p>
    #
    #   @return [Time]
    #
    # @!attribute tag_list
    #   <p>A list of tags.
    #             For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute supports_babelfish
    #   <p>A value that indicates whether the engine version supports Babelfish for Aurora PostgreSQL.</p>
    #
    #   @return [Boolean]
    #
    ModifyCustomDBEngineVersionOutput = ::Struct.new(
      :engine,
      :engine_version,
      :db_parameter_group_family,
      :db_engine_description,
      :db_engine_version_description,
      :default_character_set,
      :supported_character_sets,
      :supported_nchar_character_sets,
      :valid_upgrade_target,
      :supported_timezones,
      :exportable_log_types,
      :supports_log_exports_to_cloudwatch_logs,
      :supports_read_replica,
      :supported_engine_modes,
      :supported_feature_names,
      :status,
      :supports_parallel_query,
      :supports_global_databases,
      :major_engine_version,
      :database_installation_files_s3_bucket_name,
      :database_installation_files_s3_prefix,
      :db_engine_version_arn,
      :kms_key_id,
      :create_time,
      :tag_list,
      :supports_babelfish,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.supports_log_exports_to_cloudwatch_logs ||= false
        self.supports_read_replica ||= false
        self.supports_parallel_query ||= false
        self.supports_global_databases ||= false
        self.supports_babelfish ||= false
      end
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
    #          All other eligible instances are reachable through the custom endpoint.
    #          Only relevant if the list of static members is empty.</p>
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

    # <p>This data type represents the information you need to connect to an Amazon Aurora DB cluster.
    #       This data type is used as a response element in the following actions:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>CreateDBClusterEndpoint</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>DescribeDBClusterEndpoints</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>ModifyDBClusterEndpoint</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>DeleteDBClusterEndpoint</code>
    #                </p>
    #             </li>
    #          </ul>
    #         <p>For the data structure that represents Amazon RDS DB instance endpoints,
    #         see <code>Endpoint</code>.</p>
    #
    # @!attribute db_cluster_endpoint_identifier
    #   <p>The identifier associated with the endpoint. This parameter is stored as a lowercase string.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_identifier
    #   <p>The DB cluster identifier of the DB cluster associated with the endpoint. This parameter is
    #               stored as a lowercase string.</p>
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
    #   <p>The current status of the endpoint. One of: <code>creating</code>, <code>available</code>, <code>deleting</code>, <code>inactive</code>, <code>modifying</code>. The <code>inactive</code> state applies to an endpoint that can't be used for a certain kind of cluster,
    #        such as a <code>writer</code> endpoint for a read-only secondary cluster in a global database.</p>
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
    #          <code>WRITER</code>, <code>ANY</code>.</p>
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
    #          All other eligible instances are reachable through the custom endpoint.
    #          Only relevant if the list of static members is empty.</p>
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

    # <p></p>
    #
    # @!attribute db_cluster_identifier
    #   <p>The DB cluster identifier for the cluster being modified. This parameter isn't case-sensitive.</p>
    #           <p>Constraints: This identifier must match the identifier of an existing DB
    #               cluster.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [String]
    #
    # @!attribute new_db_cluster_identifier
    #   <p>The new DB cluster identifier for the DB cluster when renaming a DB cluster. This value is stored as a lowercase string.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain from 1 to 63 letters, numbers, or hyphens</p>
    #               </li>
    #               <li>
    #                   <p>The first character must be a letter</p>
    #               </li>
    #               <li>
    #                   <p>Can't end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>my-cluster2</code>
    #            </p>
    #           <p>Valid for: Aurora DB clusters only</p>
    #
    #   @return [String]
    #
    # @!attribute apply_immediately
    #   <p>A value that indicates whether the modifications in this request and
    #         any pending modifications are asynchronously applied
    #         as soon as possible, regardless of the
    #         <code>PreferredMaintenanceWindow</code> setting for the DB cluster.
    #         If this parameter is disabled, changes to the
    #         DB cluster are applied during the next maintenance window.</p>
    #           <p>The <code>ApplyImmediately</code> parameter only affects the <code>EnableIAMDatabaseAuthentication</code>,
    #         <code>MasterUserPassword</code>, and <code>NewDBClusterIdentifier</code> values. If the <code>ApplyImmediately</code>
    #         parameter is disabled, then changes to the <code>EnableIAMDatabaseAuthentication</code>, <code>MasterUserPassword</code>,
    #         and <code>NewDBClusterIdentifier</code> values are applied during the next maintenance window. All other changes are
    #         applied immediately, regardless of the value of the <code>ApplyImmediately</code> parameter.</p>
    #           <p>By default, this parameter is disabled.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [Boolean]
    #
    # @!attribute backup_retention_period
    #   <p>The number of days for which automated backups are retained. Specify a minimum value of 1.</p>
    #           <p>Default: 1</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be a value from 1 to 35</p>
    #               </li>
    #            </ul>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [Integer]
    #
    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group to use for the DB cluster.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_security_group_ids
    #   <p>A list of VPC security groups that the DB cluster will belong to.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute port
    #   <p>The port number on which the DB cluster accepts connections.</p>
    #           <p>Constraints: Value must be <code>1150-65535</code>
    #            </p>
    #           <p>Default: The same port as the original DB cluster.</p>
    #           <p>Valid for: Aurora DB clusters only</p>
    #
    #   @return [Integer]
    #
    # @!attribute master_user_password
    #   <p>The new password for the master database user. This password can contain any printable ASCII character except "/", """, or "@".</p>
    #           <p>Constraints: Must contain from 8 to 41 characters.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [String]
    #
    # @!attribute option_group_name
    #   <p>A value that indicates that the DB cluster should be associated with the specified option group.</p>
    #           <p>DB clusters are associated with a default option group that can't be modified.</p>
    #
    #   @return [String]
    #
    # @!attribute preferred_backup_window
    #   <p>The daily time range during which automated backups are created
    #               if automated backups are enabled,
    #               using the <code>BackupRetentionPeriod</code> parameter.</p>
    #           <p>The default is a 30-minute window selected at random from an
    #               8-hour block of time for each Amazon Web Services Region.
    #               To view the time blocks available, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html Aurora.Managing.Backups.BackupWindow">
    #                   Backup window</a> in the <i>Amazon Aurora User Guide</i>.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Must be in Universal Coordinated Time (UTC).</p>
    #               </li>
    #               <li>
    #                   <p>Must not conflict with the preferred maintenance window.</p>
    #               </li>
    #               <li>
    #                   <p>Must be at least 30 minutes.</p>
    #               </li>
    #            </ul>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [String]
    #
    # @!attribute preferred_maintenance_window
    #   <p>The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p>
    #           <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #            </p>
    #           <p>The default is a 30-minute window selected at random from an
    #               8-hour block of time for each Amazon Web Services Region, occurring on a random day of the
    #               week. To see the time blocks available, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html AdjustingTheMaintenanceWindow.Aurora">
    #                   Adjusting the Preferred DB Cluster Maintenance Window</a> in the <i>Amazon Aurora User Guide</i>.</p>
    #           <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
    #           <p>Constraints: Minimum 30-minute window.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [String]
    #
    # @!attribute enable_iam_database_authentication
    #   <p>A value that indicates whether to enable mapping of Amazon Web Services Identity and Access
    #               Management (IAM) accounts to database accounts. By default, mapping isn't
    #               enabled.</p>
    #           <p>For more information, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html">
    #                   IAM Database Authentication</a> in the <i>Amazon Aurora User Guide</i>.</p>
    #           <p>Valid for: Aurora DB clusters only</p>
    #
    #   @return [Boolean]
    #
    # @!attribute backtrack_window
    #   <p>The target backtrack window, in seconds. To disable backtracking, set this value to
    #               0.</p>
    #           <p>Default: 0</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If specified, this value must be set to a number from 0 to 259,200 (72 hours).</p>
    #               </li>
    #            </ul>
    #           <p>Valid for: Aurora MySQL DB clusters only</p>
    #
    #   @return [Integer]
    #
    # @!attribute cloudwatch_logs_export_configuration
    #   <p>The configuration setting for the log types to be enabled for export to CloudWatch Logs for a specific DB cluster. The values
    #               in the list depend on the DB engine being used.</p>
    #               <p>
    #               <b>RDS for MySQL</b>
    #            </p>
    #               <p>Possible values are <code>error</code>, <code>general</code>, and <code>slowquery</code>.</p>
    #               <p>
    #               <b>RDS for PostgreSQL</b>
    #            </p>
    #               <p>Possible values are <code>postgresql</code> and <code>upgrade</code>.</p>
    #               <p>
    #               <b>Aurora MySQL</b>
    #            </p>
    #               <p>Possible values are <code>audit</code>, <code>error</code>, <code>general</code>, and <code>slowquery</code>.</p>
    #               <p>
    #               <b>Aurora PostgreSQL</b>
    #            </p>
    #               <p>Possible value is <code>postgresql</code>.</p>
    #               <p>For more information about exporting CloudWatch Logs for Amazon RDS, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html USER_LogAccess.Procedural.UploadtoCloudWatch">
    #                   Publishing Database Logs to Amazon CloudWatch Logs</a> in the <i>Amazon RDS User Guide</i>.</p>
    #               <p>For more information about exporting CloudWatch Logs for Amazon Aurora, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html USER_LogAccess.Procedural.UploadtoCloudWatch">Publishing Database Logs to Amazon CloudWatch Logs</a> in the <i>Amazon Aurora User Guide</i>.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [CloudwatchLogsExportConfiguration]
    #
    # @!attribute engine_version
    #   <p>The version number of the database engine to which you want to upgrade.
    #               Changing this parameter results in an outage. The change is applied during
    #               the next maintenance window unless <code>ApplyImmediately</code> is enabled.</p>
    #           <p>To list all of the available engine versions for MySQL 5.6-compatible Aurora, use the following command:</p>
    #           <p>
    #               <code>aws rds describe-db-engine-versions --engine aurora --query "DBEngineVersions[].EngineVersion"</code>
    #            </p>
    #           <p>To list all of the available engine versions for MySQL 5.7-compatible and MySQL 8.0-compatible Aurora, use the following command:</p>
    #           <p>
    #               <code>aws rds describe-db-engine-versions --engine aurora-mysql --query "DBEngineVersions[].EngineVersion"</code>
    #            </p>
    #           <p>To list all of the available engine versions for Aurora PostgreSQL, use the following command:</p>
    #           <p>
    #               <code>aws rds describe-db-engine-versions --engine aurora-postgresql --query "DBEngineVersions[].EngineVersion"</code>
    #            </p>
    #           <p>To list all of the available engine versions for RDS for MySQL, use the following command:</p>
    #           <p>
    #               <code>aws rds describe-db-engine-versions --engine mysql --query "DBEngineVersions[].EngineVersion"</code>
    #            </p>
    #           <p>To list all of the available engine versions for RDS for PostgreSQL, use the following command:</p>
    #           <p>
    #               <code>aws rds describe-db-engine-versions --engine postgres --query "DBEngineVersions[].EngineVersion"</code>
    #            </p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [String]
    #
    # @!attribute allow_major_version_upgrade
    #   <p>A value that indicates whether major version upgrades are allowed.</p>
    #           <p>Constraints: You must allow major version upgrades when specifying a value for the
    #                   <code>EngineVersion</code> parameter that is a different major version than the DB
    #               cluster's current version.</p>
    #           <p>Valid for: Aurora DB clusters only</p>
    #
    #   @return [Boolean]
    #
    # @!attribute db_instance_parameter_group_name
    #   <p>The name of the DB parameter group to apply to all instances of the DB cluster.</p>
    #           <note>
    #               <p>When you apply a parameter group using the <code>DBInstanceParameterGroupName</code> parameter, the DB
    #             cluster isn't rebooted automatically. Also, parameter changes are applied immediately rather than
    #                during the next maintenance window.</p>
    #           </note>
    #           <p>Default: The existing name setting</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>The DB parameter group must be in the same DB parameter group family as this DB cluster.</p>
    #               </li>
    #               <li>
    #                   <p>The <code>DBInstanceParameterGroupName</code> parameter is valid in combination with the
    #                 <code>AllowMajorVersionUpgrade</code> parameter for a major version upgrade only.</p>
    #               </li>
    #            </ul>
    #           <p>Valid for: Aurora DB clusters only</p>
    #
    #   @return [String]
    #
    # @!attribute domain
    #   <p>The Active Directory directory ID to move the DB cluster to.
    #             Specify <code>none</code> to remove the cluster from its current domain.
    #             The domain must be created prior to this operation.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/kerberos-authentication.html">Kerberos Authentication</a>
    #               in the <i>Amazon Aurora User Guide</i>.</p>
    #           <p>Valid for: Aurora DB clusters only</p>
    #
    #   @return [String]
    #
    # @!attribute domain_iam_role_name
    #   <p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>
    #           <p>Valid for: Aurora DB clusters only</p>
    #
    #   @return [String]
    #
    # @!attribute scaling_configuration
    #   <p>The scaling properties of the DB cluster. You can only modify scaling properties for DB clusters in <code>serverless</code> DB engine mode.</p>
    #           <p>Valid for: Aurora DB clusters only</p>
    #
    #   @return [ScalingConfiguration]
    #
    # @!attribute deletion_protection
    #   <p>A value that indicates whether the DB cluster has deletion protection enabled.
    #               The database can't be deleted when deletion protection is enabled. By default,
    #               deletion protection isn't enabled.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_http_endpoint
    #   <p>A value that indicates whether to enable the HTTP endpoint for an Aurora Serverless v1 DB cluster. By default, the HTTP endpoint
    #               is disabled.</p>
    #           <p>When enabled, the HTTP endpoint provides a connectionless web service API for running
    #               SQL queries on the Aurora Serverless v1 DB cluster. You can also query your database
    #               from inside the RDS console with the query editor.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html">Using the Data API for Aurora Serverless v1</a> in the
    #               <i>Amazon Aurora User Guide</i>.</p>
    #           <p>Valid for: Aurora DB clusters only</p>
    #
    #   @return [Boolean]
    #
    # @!attribute copy_tags_to_snapshot
    #   <p>A value that indicates whether to copy all tags from the DB cluster to snapshots of the DB cluster.
    #               The default is not to copy them.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_global_write_forwarding
    #   <p>A value that indicates whether to enable this DB cluster to forward write operations to the primary cluster of an
    #         Aurora global database (<a>GlobalCluster</a>). By default, write operations are not allowed on Aurora DB clusters that
    #         are secondary clusters in an Aurora global database.</p>
    #           <p>You can set this value only on Aurora DB clusters that are members of an Aurora global database. With this parameter
    #         enabled, a secondary cluster can forward writes to the current primary cluster and the resulting changes are replicated back to
    #         this cluster. For the primary DB cluster of an Aurora global database, this value is used immediately if the primary is
    #         demoted by the <a>FailoverGlobalCluster</a> API operation, but it does nothing until then.</p>
    #           <p>Valid for: Aurora DB clusters only</p>
    #
    #   @return [Boolean]
    #
    # @!attribute db_cluster_instance_class
    #   <p>The compute and memory capacity of each DB instance in the Multi-AZ DB cluster, for example db.m6g.xlarge.
    #               Not all DB instance classes are available in all Amazon Web Services Regions, or for all database engines.</p>
    #           <p>For the full list of DB instance classes and availability for your engine, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html">
    #           DB Instance Class</a> in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>Valid for: Multi-AZ DB clusters only</p>
    #
    #   @return [String]
    #
    # @!attribute allocated_storage
    #   <p>The amount of storage in gibibytes (GiB) to allocate to each DB instance in the Multi-AZ DB cluster.</p>
    #           <p>Type: Integer</p>
    #           <p>Valid for: Multi-AZ DB clusters only</p>
    #
    #   @return [Integer]
    #
    # @!attribute storage_type
    #   <p>Specifies the storage type to be associated with the DB cluster.</p>
    #           <p>Valid values: <code>io1</code>
    #            </p>
    #           <p>When specified, a value for the <code>Iops</code> parameter is required.</p>
    #           <p>Default: <code>io1</code>
    #            </p>
    #           <p>Valid for: Multi-AZ DB clusters only</p>
    #
    #   @return [String]
    #
    # @!attribute iops
    #   <p>The amount of Provisioned IOPS (input/output operations per second) to be initially allocated
    #               for each DB instance in the Multi-AZ DB cluster.</p>
    #           <p>For information about valid Iops values, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html USER_PIOPS">Amazon RDS Provisioned IOPS Storage to Improve Performance</a> in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>Constraints: Must be a multiple between .5 and 50 of the storage amount for the DB cluster.</p>
    #           <p>Valid for: Multi-AZ DB clusters only</p>
    #
    #   @return [Integer]
    #
    # @!attribute auto_minor_version_upgrade
    #   <p>A value that indicates whether minor engine upgrades are applied automatically to the DB cluster during the maintenance window.
    #               By default, minor engine upgrades are applied automatically.</p>
    #           <p>Valid for: Multi-AZ DB clusters only</p>
    #
    #   @return [Boolean]
    #
    # @!attribute monitoring_interval
    #   <p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB cluster.
    #               To turn off collecting Enhanced Monitoring metrics, specify 0. The default is 0.</p>
    #           <p>If <code>MonitoringRoleArn</code> is specified, also set <code>MonitoringInterval</code>
    #               to a value other than 0.</p>
    #           <p>Valid Values: <code>0, 1, 5, 10, 15, 30, 60</code>
    #            </p>
    #           <p>Valid for: Multi-AZ DB clusters only</p>
    #
    #   @return [Integer]
    #
    # @!attribute monitoring_role_arn
    #   <p>The Amazon Resource Name (ARN) for the IAM role that permits RDS to send Enhanced Monitoring metrics to Amazon CloudWatch Logs. An
    #               example is <code>arn:aws:iam:123456789012:role/emaccess</code>. For information on creating a monitoring role,
    #               see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html USER_Monitoring.OS.IAMRole">To
    #                   create an IAM role for Amazon RDS Enhanced Monitoring</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #           <p>If <code>MonitoringInterval</code> is set to a value other than 0, supply a <code>MonitoringRoleArn</code> value.</p>
    #           <p>Valid for: Multi-AZ DB clusters only</p>
    #
    #   @return [String]
    #
    # @!attribute enable_performance_insights
    #   <p>A value that indicates whether to turn on Performance Insights for the DB cluster.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html">
    #               Using Amazon Performance Insights</a> in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>Valid for: Multi-AZ DB clusters only</p>
    #
    #   @return [Boolean]
    #
    # @!attribute performance_insights_kms_key_id
    #   <p>The Amazon Web Services KMS key identifier for encryption of Performance Insights data.</p>
    #           <p>The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.</p>
    #           <p>If you don't specify a value for <code>PerformanceInsightsKMSKeyId</code>, then Amazon RDS
    #               uses your default KMS key. There is a default KMS key for your Amazon Web Services account.
    #               Your Amazon Web Services account has a different default KMS key for each Amazon Web Services Region.</p>
    #           <p>Valid for: Multi-AZ DB clusters only</p>
    #
    #   @return [String]
    #
    # @!attribute performance_insights_retention_period
    #   <p>The amount of time, in days, to retain Performance Insights data. Valid values are 7 or 731 (2 years).</p>
    #           <p>Valid for: Multi-AZ DB clusters only</p>
    #
    #   @return [Integer]
    #
    # @!attribute serverless_v2_scaling_configuration
    #   <p>Contains the scaling configuration of an Aurora Serverless v2 DB cluster.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless-v2.html">Using Amazon Aurora Serverless v2</a> in the
    #               <i>Amazon Aurora User Guide</i>.</p>
    #
    #   @return [ServerlessV2ScalingConfiguration]
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
      :backtrack_window,
      :cloudwatch_logs_export_configuration,
      :engine_version,
      :allow_major_version_upgrade,
      :db_instance_parameter_group_name,
      :domain,
      :domain_iam_role_name,
      :scaling_configuration,
      :deletion_protection,
      :enable_http_endpoint,
      :copy_tags_to_snapshot,
      :enable_global_write_forwarding,
      :db_cluster_instance_class,
      :allocated_storage,
      :storage_type,
      :iops,
      :auto_minor_version_upgrade,
      :monitoring_interval,
      :monitoring_role_arn,
      :enable_performance_insights,
      :performance_insights_kms_key_id,
      :performance_insights_retention_period,
      :serverless_v2_scaling_configuration,
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
    #   <p>Contains the details of an Amazon Aurora DB cluster or Multi-AZ DB cluster.</p>
    #           <p>For an Amazon Aurora DB cluster, this data type is used as a response element in the operations
    #             <code>CreateDBCluster</code>, <code>DeleteDBCluster</code>, <code>DescribeDBClusters</code>,
    #             <code>FailoverDBCluster</code>, <code>ModifyDBCluster</code>, <code>PromoteReadReplicaDBCluster</code>,
    #             <code>RestoreDBClusterFromS3</code>, <code>RestoreDBClusterFromSnapshot</code>,
    #             <code>RestoreDBClusterToPointInTime</code>, <code>StartDBCluster</code>, and <code>StopDBCluster</code>.</p>
    #           <p>For a Multi-AZ DB cluster, this data type is used as a response element in the operations
    #             <code>CreateDBCluster</code>, <code>DeleteDBCluster</code>, <code>DescribeDBClusters</code>,
    #             <code>FailoverDBCluster</code>, <code>ModifyDBCluster</code>, <code>RebootDBCluster</code>,
    #             <code>RestoreDBClusterFromSnapshot</code>, and <code>RestoreDBClusterToPointInTime</code>.</p>
    #           <p>For more information on Amazon Aurora DB clusters, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html">
    #                 What is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i>
    #            </p>
    #           <p>For more information on Multi-AZ DB clusters, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html">
    #                 Multi-AZ deployments with two readable standby DB instances</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [DBCluster]
    #
    ModifyDBClusterOutput = ::Struct.new(
      :db_cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group to modify.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>A list of parameters in the DB cluster parameter group to modify.</p>
    #           <p>Valid Values (for the application method): <code>immediate | pending-reboot</code>
    #            </p>
    #           <note>
    #               <p>You can use the <code>immediate</code> value with dynamic parameters only. You can use the
    #                 <code>pending-reboot</code> value for both dynamic and static parameters.</p>
    #               <p>When the application method is <code>immediate</code>, changes to dynamic parameters are applied immediately
    #             to the DB clusters associated with the parameter group. When the application method is <code>pending-reboot</code>,
    #             changes to dynamic and static parameters are applied after a reboot without failover to the DB clusters associated with the
    #             parameter group.</p>
    #           </note>
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

    # <p></p>
    #
    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be 1 to 255 letters or numbers.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                   <p>Can't end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>This value is stored as a lowercase string.</p>
    #           </note>
    #
    #   @return [String]
    #
    ModifyDBClusterParameterGroupOutput = ::Struct.new(
      :db_cluster_parameter_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_cluster_snapshot_identifier
    #   <p>The identifier for the DB cluster snapshot to modify the attributes for.</p>
    #
    #   @return [String]
    #
    # @!attribute attribute_name
    #   <p>The name of the DB cluster snapshot attribute to modify.</p>
    #           <p>To manage authorization for other Amazon Web Services accounts to copy or restore a manual DB cluster snapshot,
    #               set this value to <code>restore</code>.</p>
    #           <note>
    #               <p>To view the list of attributes available to modify, use the
    #                   <a>DescribeDBClusterSnapshotAttributes</a> API action.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute values_to_add
    #   <p>A list of DB cluster snapshot attributes to add to the attribute specified by <code>AttributeName</code>.</p>
    #           <p>To authorize other Amazon Web Services accounts to copy or restore a manual DB cluster snapshot, set this list to include one or more Amazon Web Services account
    #               IDs, or <code>all</code> to make the manual DB cluster snapshot restorable by
    #               any Amazon Web Services account. Do not add the <code>all</code> value for any
    #               manual DB cluster snapshots that contain private information that you don't want available
    #               to all Amazon Web Services accounts.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute values_to_remove
    #   <p>A list of DB cluster snapshot attributes to remove from the attribute specified by <code>AttributeName</code>.</p>
    #           <p>To remove authorization for other Amazon Web Services accounts to copy or restore a manual DB cluster snapshot, set this list to include
    #               one or more Amazon Web Services account
    #               identifiers, or <code>all</code> to remove authorization for any Amazon Web Services account to copy or
    #               restore the DB cluster snapshot. If you specify <code>all</code>, an Amazon Web Services account whose account ID is
    #               explicitly added to the <code>restore</code> attribute
    #               can still copy or restore a manual DB cluster snapshot.</p>
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
    #   <p>Contains the results of a successful call to the <code>DescribeDBClusterSnapshotAttributes</code>
    #               API action.</p>
    #           <p>Manual DB cluster snapshot attributes are used to authorize other Amazon Web Services accounts
    #               to copy or restore a manual DB cluster snapshot. For more information, see the <code>ModifyDBClusterSnapshotAttribute</code>
    #               API action.</p>
    #
    #   @return [DBClusterSnapshotAttributesResult]
    #
    ModifyDBClusterSnapshotAttributeOutput = ::Struct.new(
      :db_cluster_snapshot_attributes_result,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_instance_identifier
    #   <p>The DB instance identifier. This value is stored as a lowercase string.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must match the identifier of an existing DBInstance.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute allocated_storage
    #   <p>The new amount of storage in gibibytes (GiB) to allocate for the DB instance.</p>
    #           <p>For MariaDB, MySQL, Oracle, and PostgreSQL,
    #             the value supplied must be at least 10% greater than the current value.
    #             Values that are not at least 10% greater than the existing value are rounded up
    #             so that they are 10% greater than the current value.</p>
    #           <p>For the valid values for allocated storage for each engine,
    #             see <code>CreateDBInstance</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute db_instance_class
    #   <p>The new compute and memory capacity of the DB instance, for example db.m4.large.
    #             Not all DB instance classes are available in all Amazon Web Services Regions, or for all database engines.
    #             For the full list of DB instance classes,
    #             and availability for your engine, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html">DB Instance Class</a> in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>If you modify the DB instance class, an outage occurs during the change.
    #           The change is applied during the next maintenance window,
    #           unless <code>ApplyImmediately</code> is enabled for this request.</p>
    #           <p>This setting doesn't apply to RDS Custom for Oracle.</p>
    #           <p>Default: Uses existing setting</p>
    #
    #   @return [String]
    #
    # @!attribute db_subnet_group_name
    #   <p>The new DB subnet group for the DB instance.
    #             You can use this parameter to move your DB instance to a different VPC.
    #
    #
    #             If your DB instance isn't in a VPC, you can also use this parameter to move your DB instance into a VPC.
    #             For more information, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html USER_VPC.Non-VPC2VPC">Working with a DB instance in a VPC</a>
    #             in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>Changing the subnet group causes an outage during the change.
    #           The change is applied during the next maintenance window,
    #           unless you enable <code>ApplyImmediately</code>.</p>
    #           <p>This parameter doesn't apply to RDS Custom.</p>
    #           <p>Constraints: If supplied, must match the name of an existing DBSubnetGroup.</p>
    #           <p>Example: <code>mydbsubnetgroup</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute db_security_groups
    #   <p>A list of DB security groups to authorize on this DB instance. Changing this setting doesn't
    #             result in an outage and the change is asynchronously applied as soon as possible.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If supplied, must match existing DBSecurityGroups.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute vpc_security_group_ids
    #   <p>A list of Amazon EC2 VPC security groups to authorize on this DB instance. This change is
    #             asynchronously applied as soon as possible.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #           <p>
    #               <b>Amazon Aurora</b>
    #            </p>
    #           <p>Not applicable. The associated list of EC2 VPC security groups is managed by
    #             the DB cluster. For more information, see <code>ModifyDBCluster</code>.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If supplied, must match existing VpcSecurityGroupIds.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute apply_immediately
    #   <p>A value that indicates whether the modifications in this request and any pending modifications are asynchronously applied as soon as possible,
    #             regardless of the <code>PreferredMaintenanceWindow</code> setting for the DB instance. By default, this parameter is disabled.</p>
    #           <p>If this parameter is disabled, changes to the DB instance are applied during the next maintenance window. Some parameter changes can cause an outage
    #           and are applied on the next call to <a>RebootDBInstance</a>, or the next failure reboot. Review the table of parameters in
    #           <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Modifying.html">Modifying a DB Instance</a> in the
    #           <i>Amazon RDS User Guide</i> to see the impact of enabling or disabling <code>ApplyImmediately</code> for each modified parameter and to
    #           determine when the changes are applied.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute master_user_password
    #   <p>The new password for the master user. The password can include any printable ASCII
    #             character except "/", """, or "@".</p>
    #           <p>Changing this parameter doesn't result in an outage and the change is asynchronously applied as soon as possible.
    #           Between the time of the request and the completion of the request,
    #           the <code>MasterUserPassword</code> element exists in the
    #             <code>PendingModifiedValues</code> element of the operation response.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #           <p>
    #               <b>Amazon Aurora</b>
    #            </p>
    #           <p>Not applicable. The password for the master user is managed by the DB cluster. For
    #               more information, see <code>ModifyDBCluster</code>.</p>
    #           <p>Default: Uses existing setting</p>
    #           <p>
    #               <b>MariaDB</b>
    #            </p>
    #           <p>Constraints: Must contain from 8 to 41 characters.</p>
    #           <p>
    #               <b>Microsoft SQL Server</b>
    #            </p>
    #           <p>Constraints: Must contain from 8 to 128 characters.</p>
    #           <p>
    #               <b>MySQL</b>
    #            </p>
    #           <p>Constraints: Must contain from 8 to 41 characters.</p>
    #           <p>
    #               <b>Oracle</b>
    #            </p>
    #           <p>Constraints: Must contain from 8 to 30 characters.</p>
    #           <p>
    #               <b>PostgreSQL</b>
    #            </p>
    #           <p>Constraints: Must contain from 8 to 128 characters.</p>
    #           <note>
    #               <p>Amazon RDS API actions never return the password,
    #                 so this action provides a way to regain access to a primary instance user if the password is lost.
    #                 This includes restoring privileges that might have been accidentally revoked.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute db_parameter_group_name
    #   <p>The name of the DB parameter group to apply to the DB instance.</p>
    #           <p>Changing this setting doesn't result in an outage. The parameter group name itself is changed
    #             immediately, but the actual parameter changes are not applied until you reboot the
    #             instance without failover. In this case, the DB instance isn't rebooted automatically, and the
    #             parameter changes aren't applied during the next maintenance window. However, if you modify
    #             dynamic parameters in the newly associated DB parameter group, these changes are applied
    #             immediately without a reboot.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #           <p>Default: Uses existing setting</p>
    #           <p>Constraints: The DB parameter group must be in the same DB parameter group family as the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_retention_period
    #   <p>The number of days to retain automated backups. Setting this parameter to a positive number enables backups. Setting this parameter to 0 disables automated backups.</p>
    #           <note>
    #               <p>Enabling and disabling backups can result in a brief I/O suspension that lasts from a few seconds to a few minutes, depending on the size and class of your DB instance.</p>
    #           </note>
    #           <p>These changes are applied during the next maintenance window unless the <code>ApplyImmediately</code> parameter is enabled
    #               for this request. If you change the parameter from one non-zero value to another non-zero value, the change is asynchronously
    #               applied as soon as possible.</p>
    #           <p>
    #               <b>Amazon Aurora</b>
    #            </p>
    #           <p>Not applicable. The retention period for automated backups is managed by the DB
    #               cluster. For more information, see <code>ModifyDBCluster</code>.</p>
    #           <p>Default: Uses existing setting</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>It must be a value from 0 to 35. It can't be set to 0 if the DB instance is a source to
    #                 read replicas. It can't be set to 0 or 35 for an RDS Custom for Oracle DB instance.</p>
    #               </li>
    #               <li>
    #                   <p>It can be specified for a MySQL read replica only if the source is running MySQL 5.6 or
    #                       later.</p>
    #               </li>
    #               <li>
    #                   <p>It can be specified for a PostgreSQL read replica only if the source is running PostgreSQL
    #                       9.3.5.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Integer]
    #
    # @!attribute preferred_backup_window
    #   <p>The daily time range during which automated backups are created
    #           if automated backups are enabled,
    #           as determined by the <code>BackupRetentionPeriod</code> parameter.
    #           Changing this parameter doesn't result in an outage and the change is asynchronously applied as soon as possible.
    #           The default is a 30-minute window selected at random from an
    #           8-hour block of time for each Amazon Web Services Region. For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html USER_WorkingWithAutomatedBackups.BackupWindow">Backup window</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #           <p>
    #               <b>Amazon Aurora</b>
    #            </p>
    #           <p>Not applicable. The daily time range for creating automated backups is managed by
    #               the DB cluster. For more information, see <code>ModifyDBCluster</code>.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be in the format hh24:mi-hh24:mi</p>
    #               </li>
    #               <li>
    #                   <p>Must be in Universal Time Coordinated (UTC)</p>
    #               </li>
    #               <li>
    #                   <p>Must not conflict with the preferred maintenance window</p>
    #               </li>
    #               <li>
    #                   <p>Must be at least 30 minutes</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute preferred_maintenance_window
    #   <p>The weekly time range (in UTC) during which system maintenance can occur, which
    #               might result in an outage. Changing this parameter doesn't result in an outage, except
    #               in the following situation, and the change is asynchronously applied as soon as
    #               possible. If there are pending actions that cause a reboot, and the maintenance window
    #               is changed to include the current time, then changing this parameter will cause a reboot
    #               of the DB instance. If moving this window to the current time, there must be at least 30
    #               minutes between the current time and end of the window to ensure pending changes are
    #               applied.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html Concepts.DBMaintenance">Amazon RDS Maintenance Window</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #           <p>Default: Uses existing setting</p>
    #           <p>Format: ddd:hh24:mi-ddd:hh24:mi</p>
    #           <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p>
    #           <p>Constraints: Must be at least 30 minutes</p>
    #
    #   @return [String]
    #
    # @!attribute multi_az
    #   <p>A value that indicates whether the DB instance is a Multi-AZ deployment. Changing this parameter doesn't result
    #             in an outage. The change is applied during the next maintenance window unless the <code>ApplyImmediately</code>
    #             parameter is enabled for this request.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute engine_version
    #   <p>The version number of the database engine to upgrade to.
    #       Changing this parameter results in an outage and the change
    #       is applied during the next maintenance window
    #       unless the <code>ApplyImmediately</code> parameter is enabled for this request.</p>
    #           <p>For major version upgrades, if a nondefault DB parameter group is currently in use, a
    #               new DB parameter group in the DB parameter group family for the new engine version must
    #               be specified. The new DB parameter group can be the default for that DB parameter group
    #               family.</p>
    #           <p>If you specify only a major version, Amazon RDS will update the DB instance to the
    #             default minor version if the current minor version is lower.
    #             For information about valid engine versions, see <code>CreateDBInstance</code>,
    #             or call <code>DescribeDBEngineVersions</code>.</p>
    #           <p>In RDS Custom for Oracle, this parameter is supported for read replicas only if they are in the
    #             <code>PATCH_DB_FAILURE</code> lifecycle.</p>
    #
    #   @return [String]
    #
    # @!attribute allow_major_version_upgrade
    #   <p>A value that indicates whether major version upgrades are allowed. Changing this parameter doesn't
    #             result in an outage and the change is asynchronously applied as soon as possible.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #           <p>Constraints: Major version upgrades must be allowed when specifying a value
    #             for the EngineVersion parameter that is a different major version than the DB instance's current version.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute auto_minor_version_upgrade
    #   <p>A value that indicates whether minor version upgrades are applied automatically to the DB instance
    #             during the maintenance window. An outage occurs when all the following conditions are met:</p>
    #           <ul>
    #               <li>
    #                   <p>The automatic upgrade is enabled for the maintenance window.</p>
    #               </li>
    #               <li>
    #                   <p>A newer minor version is available.</p>
    #               </li>
    #               <li>
    #                   <p>RDS has enabled automatic patching for the engine version.</p>
    #               </li>
    #            </ul>
    #           <p>If any of the preceding conditions isn't met, RDS applies the change as soon as possible and
    #         doesn't cause an outage.</p>
    #           <p>For an RDS Custom DB instance, set <code>AutoMinorVersionUpgrade</code>
    #             to <code>false</code>. Otherwise, the operation returns an error.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute license_model
    #   <p>The license model for the DB instance.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #           <p>Valid values: <code>license-included</code> | <code>bring-your-own-license</code> |
    #               <code>general-public-license</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute iops
    #   <p>The new Provisioned IOPS (I/O operations per second) value for the RDS instance.</p>
    #           <p>Changing this setting doesn't result in an outage and
    #               the change is applied during the next maintenance window
    #               unless the <code>ApplyImmediately</code> parameter is enabled for this request.
    #             If you are migrating from Provisioned IOPS to standard storage, set this value to 0.
    #             The DB instance will require a reboot for the change in storage type to take effect.</p>
    #           <p>If you choose to migrate your DB instance from using standard storage to using
    #               Provisioned IOPS, or from using Provisioned IOPS to using standard storage, the process
    #               can take time. The duration of the migration depends on several factors such as database
    #               load, storage size, storage type (standard or Provisioned IOPS), amount of IOPS
    #               provisioned (if any), and the number of prior scale storage operations. Typical
    #               migration times are under 24 hours, but the process can take up to several days in some
    #               cases. During the migration, the DB instance is available for use, but might experience
    #               performance degradation. While the migration takes place, nightly backups for the
    #               instance are suspended. No other Amazon RDS operations can take place for the instance,
    #               including modifying the instance, rebooting the instance, deleting the instance,
    #               creating a read replica for the instance, and creating a DB snapshot of the instance.</p>
    #           <p>Constraints: For MariaDB, MySQL, Oracle, and PostgreSQL,
    #             the value supplied must be at least 10% greater than the current value.
    #             Values that are not at least 10% greater than the existing value are rounded up so that they are 10% greater than the current value.</p>
    #           <p>Default: Uses existing setting</p>
    #
    #   @return [Integer]
    #
    # @!attribute option_group_name
    #   <p>A value that indicates the DB instance should be associated with the specified option group.</p>
    #           <p>Changing this parameter doesn't result in an outage, with one exception. If the parameter change results
    #             in an option group that enables OEM, it can cause a brief period, lasting less than a second, during which
    #             new connections are rejected but existing connections aren't interrupted.</p>
    #           <p>The change is applied during the next maintenance window unless the <code>ApplyImmediately</code> parameter
    #             is enabled for this request.</p>
    #           <p>Permanent options, such as the TDE option for Oracle Advanced Security TDE, can't be removed
    #             from an option group, and that option group can't be removed from a DB instance after
    #             it is associated with a DB instance.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute new_db_instance_identifier
    #   <p>The new DB instance identifier for the DB instance when renaming a DB instance. When you change the DB instance
    #             identifier, an instance reboot occurs immediately if you enable <code>ApplyImmediately</code>, or will occur
    #             during the next maintenance window if you disable Apply Immediately. This value is stored as a lowercase string.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>mydbinstance</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute storage_type
    #   <p>Specifies the storage type to be associated with the DB instance.</p>
    #           <p>If you specify Provisioned IOPS (<code>io1</code>),
    #             you must also include a value for the <code>Iops</code> parameter.</p>
    #           <p>If you choose to migrate your DB instance from using standard storage to using
    #               Provisioned IOPS, or from using Provisioned IOPS to using standard storage, the process
    #               can take time. The duration of the migration depends on several factors such as database
    #               load, storage size, storage type (standard or Provisioned IOPS), amount of IOPS
    #               provisioned (if any), and the number of prior scale storage operations. Typical
    #               migration times are under 24 hours, but the process can take up to several days in some
    #               cases. During the migration, the DB instance is available for use, but might experience
    #               performance degradation. While the migration takes place, nightly backups for the
    #               instance are suspended. No other Amazon RDS operations can take place for the instance,
    #               including modifying the instance, rebooting the instance, deleting the instance,
    #               creating a read replica for the instance, and creating a DB snapshot of the instance.</p>
    #           <p>Valid values: <code>standard | gp2 | io1</code>
    #            </p>
    #           <p>Default: <code>io1</code> if the <code>Iops</code> parameter
    #             is specified, otherwise <code>gp2</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute tde_credential_arn
    #   <p>The ARN from the key store with which to associate the instance for TDE encryption.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute tde_credential_password
    #   <p>The password for the given ARN from the key store in order to access the device.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute ca_certificate_identifier
    #   <p>Specifies the certificate to associate with the DB instance.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute domain
    #   <p>The Active Directory directory ID to move the DB instance to.
    #             Specify <code>none</code> to remove the instance from its current domain.
    #             You must create the domain before this operation. Currently, you can create only MySQL, Microsoft SQL
    #             Server, Oracle, and PostgreSQL DB instances in an Active Directory Domain.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html">
    #             Kerberos Authentication</a> in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute copy_tags_to_snapshot
    #   <p>A value that indicates whether to copy all tags from the DB instance to snapshots of the DB instance. By default, tags are not copied.</p>
    #           <p>
    #               <b>Amazon Aurora</b>
    #            </p>
    #           <p>Not applicable. Copying tags to snapshots is managed by the DB cluster. Setting this
    #             value for an Aurora DB instance has no effect on the DB cluster setting. For more
    #             information, see <code>ModifyDBCluster</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute monitoring_interval
    #   <p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected
    #             for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0, which is the default.</p>
    #           <p>If <code>MonitoringRoleArn</code> is specified, set <code>MonitoringInterval</code> to a value other than 0.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #           <p>Valid Values: <code>0, 1, 5, 10, 15, 30, 60</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute db_port_number
    #   <p>The port number on which the database accepts connections.</p>
    #           <p>The value of the <code>DBPortNumber</code> parameter must not match any of the port values
    #             specified for options in the option group for the DB instance.</p>
    #           <p>If you change the <code>DBPortNumber</code> value, your database restarts regardless of
    #             the value of the <code>ApplyImmediately</code> parameter.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #           <p>
    #               <b>MySQL</b>
    #            </p>
    #           <p>Default: <code>3306</code>
    #            </p>
    #           <p>Valid values: <code>1150-65535</code>
    #            </p>
    #           <p>
    #               <b>MariaDB</b>
    #            </p>
    #           <p>Default: <code>3306</code>
    #            </p>
    #           <p>Valid values: <code>1150-65535</code>
    #            </p>
    #           <p>
    #               <b>PostgreSQL</b>
    #            </p>
    #           <p>Default: <code>5432</code>
    #            </p>
    #           <p>Valid values: <code>1150-65535</code>
    #            </p>
    #           <p>Type: Integer</p>
    #           <p>
    #               <b>Oracle</b>
    #            </p>
    #           <p>Default: <code>1521</code>
    #            </p>
    #           <p>Valid values: <code>1150-65535</code>
    #            </p>
    #           <p>
    #               <b>SQL Server</b>
    #            </p>
    #           <p>Default: <code>1433</code>
    #            </p>
    #           <p>Valid values: <code>1150-65535</code> except <code>1234</code>, <code>1434</code>,
    #                   <code>3260</code>, <code>3343</code>, <code>3389</code>, <code>47001</code>, and
    #                   <code>49152-49156</code>.</p>
    #           <p>
    #               <b>Amazon Aurora</b>
    #            </p>
    #           <p>Default: <code>3306</code>
    #            </p>
    #           <p>Valid values: <code>1150-65535</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute publicly_accessible
    #   <p>A value that indicates whether the DB instance is publicly accessible.</p>
    #           <p>When the DB cluster is publicly accessible, its Domain Name System (DNS) endpoint
    #             resolves to the private IP address from within the DB cluster's virtual private cloud
    #             (VPC). It resolves to the public IP address from outside of the DB cluster's VPC. Access
    #             to the DB cluster is ultimately controlled by the security group it uses. That public
    #             access isn't permitted if the security group assigned to the DB cluster doesn't permit
    #             it.</p>
    #           <p>When the DB instance isn't publicly accessible, it is an internal DB instance with a DNS name that resolves to a private IP address.</p>
    #           <p>
    #               <code>PubliclyAccessible</code> only applies to DB instances in a VPC. The DB instance must be part of a
    #             public subnet and <code>PubliclyAccessible</code> must be enabled for it to be publicly accessible.</p>
    #           <p>Changes to the <code>PubliclyAccessible</code> parameter are applied immediately regardless
    #         of the value of the <code>ApplyImmediately</code> parameter.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute monitoring_role_arn
    #   <p>The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to Amazon CloudWatch Logs. For
    #         example, <code>arn:aws:iam:123456789012:role/emaccess</code>. For information on creating a monitoring role,
    #         see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html USER_Monitoring.OS.IAMRole">To
    #             create an IAM role for Amazon RDS Enhanced Monitoring</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #           <p>If <code>MonitoringInterval</code> is set to a value other than 0, supply a <code>MonitoringRoleArn</code>
    #             value.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_iam_role_name
    #   <p>The name of the IAM role to use when making API calls to the Directory Service.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute promotion_tier
    #   <p>A value that specifies the order in which an Aurora Replica is promoted to the primary instance
    #         after a failure of the existing primary instance. For more information,
    #         see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html Aurora.Managing.FaultTolerance">
    #             Fault Tolerance for an Aurora DB Cluster</a> in the <i>Amazon Aurora User Guide</i>.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #           <p>Default: 1</p>
    #           <p>Valid Values: 0 - 15</p>
    #
    #   @return [Integer]
    #
    # @!attribute enable_iam_database_authentication
    #   <p>A value that indicates whether to enable mapping of Amazon Web Services Identity and Access Management
    #               (IAM) accounts to database accounts. By default, mapping isn't enabled.</p>
    #           <p>This setting doesn't apply to Amazon Aurora. Mapping Amazon Web Services IAM accounts to database accounts is managed by the DB
    #             cluster.</p>
    #           <p>For more information about IAM database authentication, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html">
    #                 IAM Database Authentication for MySQL and PostgreSQL</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_performance_insights
    #   <p>A value that indicates whether to enable Performance Insights for the DB instance.</p>
    #           <p>For more information, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html">Using Amazon Performance Insights</a> in the <i>Amazon RDS User Guide.</i>.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute performance_insights_kms_key_id
    #   <p>The Amazon Web Services KMS key identifier for encryption of Performance Insights data.</p>
    #           <p>The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.</p>
    #           <p>If you do not specify a value for <code>PerformanceInsightsKMSKeyId</code>, then Amazon RDS
    #               uses your default KMS key. There is a default KMS key for your Amazon Web Services account.
    #               Your Amazon Web Services account has a different default KMS key for each Amazon Web Services Region.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute performance_insights_retention_period
    #   <p>The amount of time, in days, to retain Performance Insights data. Valid values are 7 or 731 (2 years).</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [Integer]
    #
    # @!attribute cloudwatch_logs_export_configuration
    #   <p>The configuration setting for the log types to be enabled for export to CloudWatch Logs for a
    #               specific DB instance.</p>
    #           <p>A change to the <code>CloudwatchLogsExportConfiguration</code> parameter is always applied to the DB instance
    #               immediately. Therefore, the <code>ApplyImmediately</code> parameter has no effect.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [CloudwatchLogsExportConfiguration]
    #
    # @!attribute processor_features
    #   <p>The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [Array<ProcessorFeature>]
    #
    # @!attribute use_default_processor_features
    #   <p>A value that indicates whether the DB instance class of the DB instance uses its default
    #               processor features.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute deletion_protection
    #   <p>A value that indicates whether the DB instance has deletion protection enabled.
    #               The database can't be deleted when deletion protection is enabled. By default,
    #               deletion protection isn't enabled. For more information, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html">
    #                   Deleting a DB Instance</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute max_allocated_storage
    #   <p>The upper limit in gibibytes (GiB) to which Amazon RDS can automatically scale the storage of the DB instance.</p>
    #           <p>For more information about this setting, including limitations that apply to it, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html USER_PIOPS.Autoscaling">
    #                   Managing capacity automatically with Amazon RDS storage autoscaling</a>
    #               in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [Integer]
    #
    # @!attribute certificate_rotation_restart
    #   <p>A value that indicates whether the DB instance is restarted when you rotate your
    #               SSL/TLS certificate.</p>
    #           <p>By default, the DB instance is restarted when you rotate your SSL/TLS certificate. The certificate
    #               is not updated until the DB instance is restarted.</p>
    #           <important>
    #               <p>Set this parameter only if you are <i>not</i> using SSL/TLS to connect to the DB instance.</p>
    #           </important>
    #           <p>If you are using SSL/TLS to connect to the DB instance, follow the appropriate instructions for your
    #               DB engine to rotate your SSL/TLS certificate:</p>
    #           <ul>
    #               <li>
    #                   <p>For more information about rotating your SSL/TLS certificate for RDS DB engines, see
    #                       <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL-certificate-rotation.html">
    #                           Rotating Your SSL/TLS Certificate.</a> in the <i>Amazon RDS User Guide.</i>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>For more information about rotating your SSL/TLS certificate for Aurora DB engines, see
    #                       <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL-certificate-rotation.html">
    #                           Rotating Your SSL/TLS Certificate</a> in the <i>Amazon Aurora User Guide</i>.</p>
    #               </li>
    #            </ul>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute replica_mode
    #   <p>A value that sets the open mode of a replica database to either mounted or read-only.</p>
    #           <note>
    #               <p>Currently, this parameter is only supported for Oracle DB instances.</p>
    #           </note>
    #           <p>Mounted DB replicas are included in Oracle Enterprise Edition. The main use case for
    #               mounted replicas is cross-Region disaster recovery. The primary database doesn't use
    #               Active Data Guard to transmit information to the mounted replica. Because it doesn't
    #               accept user connections, a mounted replica can't serve a read-only workload.
    #               For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html">Working with Oracle Read Replicas for Amazon RDS</a>
    #               in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   Enum, one of: ["open-read-only", "mounted"]
    #
    #   @return [String]
    #
    # @!attribute enable_customer_owned_ip
    #   <p>A value that indicates whether to enable a customer-owned IP address (CoIP) for an RDS on Outposts DB instance.</p>
    #           <p>A <i>CoIP</i> provides local or external connectivity to resources in
    #               your Outpost subnets through your on-premises network. For some use cases, a CoIP can
    #               provide lower latency for connections to the DB instance from outside of its virtual
    #               private cloud (VPC) on your local network.</p>
    #           <p>For more information about RDS on Outposts, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html">Working with Amazon RDS on Amazon Web Services Outposts</a>
    #               in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>For more information about CoIPs, see <a href="https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html ip-addressing">Customer-owned IP addresses</a>
    #               in the <i>Amazon Web Services Outposts User Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute aws_backup_recovery_point_arn
    #   <p>The Amazon Resource Name (ARN) of the recovery point in Amazon Web Services Backup.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute automation_mode
    #   <p>The automation mode of the RDS Custom DB instance: <code>full</code> or <code>all paused</code>.
    #               If <code>full</code>, the DB instance automates monitoring and instance recovery. If
    #               <code>all paused</code>, the instance pauses automation for the duration set by
    #               <code>ResumeFullAutomationModeMinutes</code>.</p>
    #
    #   Enum, one of: ["full", "all-paused"]
    #
    #   @return [String]
    #
    # @!attribute resume_full_automation_mode_minutes
    #   <p>The number of minutes to pause the automation. When the time period ends, RDS Custom resumes
    #               full automation. The minimum value is <code>60</code> (default). The maximum value is <code>1,440</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute network_type
    #   <p>The network type of the DB instance.</p>
    #           <p>Valid values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>IPV4</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DUAL</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <p>The network type is determined by the <code>DBSubnetGroup</code> specified for the DB instance.
    #               A <code>DBSubnetGroup</code> can support only the IPv4 protocol or the IPv4 and the IPv6
    #               protocols (<code>DUAL</code>).</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html">
    #               Working with a DB instance in a VPC</a> in the
    #               <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [String]
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
      :performance_insights_retention_period,
      :cloudwatch_logs_export_configuration,
      :processor_features,
      :use_default_processor_features,
      :deletion_protection,
      :max_allocated_storage,
      :certificate_rotation_restart,
      :replica_mode,
      :enable_customer_owned_ip,
      :aws_backup_recovery_point_arn,
      :automation_mode,
      :resume_full_automation_mode_minutes,
      :network_type,
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
    #   <p>Contains the details of an Amazon RDS DB instance.</p>
    #           <p>This data type is used as a response element in the operations <code>CreateDBInstance</code>,
    #             <code>CreateDBInstanceReadReplica</code>, <code>DeleteDBInstance</code>, <code>DescribeDBInstances</code>,
    #             <code>ModifyDBInstance</code>, <code>PromoteReadReplica</code>, <code>RebootDBInstance</code>,
    #             <code>RestoreDBInstanceFromDBSnapshot</code>, <code>RestoreDBInstanceFromS3</code>, <code>RestoreDBInstanceToPointInTime</code>,
    #             <code>StartDBInstance</code>, and <code>StopDBInstance</code>.</p>
    #
    #   @return [DBInstance]
    #
    ModifyDBInstanceOutput = ::Struct.new(
      :db_instance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_parameter_group_name
    #   <p>The name of the DB parameter group.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If supplied, must match the name of an existing <code>DBParameterGroup</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>An array of parameter names, values, and the application methods for the parameter update. At least one parameter name, value, and
    #             application method must be supplied; later arguments are optional. A maximum of 20 parameters can be modified in a single request.</p>
    #           <p>Valid Values (for the application method): <code>immediate | pending-reboot</code>
    #            </p>
    #           <p>You can use the <code>immediate</code> value with dynamic parameters only. You can use the <code>pending-reboot</code> value for both dynamic
    #             and static parameters.</p>
    #           <p>When the application method is <code>immediate</code>, changes to dynamic parameters are applied immediately to the DB instances associated with
    #             the parameter group.</p>
    #           <p>When the application method is <code>pending-reboot</code>, changes to dynamic and static parameters are applied after a reboot without failover
    #             to the DB instances associated with the parameter group.</p>
    #           <note>
    #               <p>You can't use <code>pending-reboot</code> with dynamic parameters on RDS for SQL Server DB instances. Use <code>immediate</code>.</p>
    #           </note>
    #           <p>For more information on modifying DB parameters, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithParamGroups.html">Working
    #             with DB parameter groups</a> in the <i>Amazon RDS User Guide</i>.</p>
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

    # <p>Contains the result of a successful invocation of the
    #         <code>ModifyDBParameterGroup</code> or <code>ResetDBParameterGroup</code> action.</p>
    #
    # @!attribute db_parameter_group_name
    #   <p>The name of the DB parameter group.</p>
    #
    #   @return [String]
    #
    ModifyDBParameterGroupOutput = ::Struct.new(
      :db_parameter_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_proxy_endpoint_name
    #   <p>The name of the DB proxy sociated with the DB proxy endpoint that you want to modify.</p>
    #
    #   @return [String]
    #
    # @!attribute new_db_proxy_endpoint_name
    #   <p>The new identifier for the <code>DBProxyEndpoint</code>. An identifier must
    #           begin with a letter and must contain only ASCII letters, digits, and hyphens; it
    #           can't end with a hyphen or contain two consecutive hyphens.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_security_group_ids
    #   <p>The VPC security group IDs for the DB proxy endpoint. When the DB proxy endpoint
    #           uses a different VPC than the original proxy, you also specify a different
    #           set of security group IDs than for the original proxy.</p>
    #
    #   @return [Array<String>]
    #
    ModifyDBProxyEndpointInput = ::Struct.new(
      :db_proxy_endpoint_name,
      :new_db_proxy_endpoint_name,
      :vpc_security_group_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_proxy_endpoint
    #   <p>The <code>DBProxyEndpoint</code> object representing the new settings for the DB proxy endpoint.</p>
    #
    #   @return [DBProxyEndpoint]
    #
    ModifyDBProxyEndpointOutput = ::Struct.new(
      :db_proxy_endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_proxy_name
    #   <p>The identifier for the <code>DBProxy</code> to modify.</p>
    #
    #   @return [String]
    #
    # @!attribute new_db_proxy_name
    #   <p>The new identifier for the <code>DBProxy</code>. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens.</p>
    #
    #   @return [String]
    #
    # @!attribute auth
    #   <p>The new authentication settings for the <code>DBProxy</code>.</p>
    #
    #   @return [Array<UserAuthConfig>]
    #
    # @!attribute require_tls
    #   <p>Whether Transport Layer Security (TLS) encryption is required for connections to the proxy.
    #           By enabling this setting, you can enforce encrypted TLS connections to the proxy, even if the associated database doesn't
    #           use TLS.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute idle_client_timeout
    #   <p>The number of seconds that a connection to the proxy can be inactive before the proxy disconnects it. You can set this
    #           value higher or lower than the connection timeout limit for the associated database.</p>
    #
    #   @return [Integer]
    #
    # @!attribute debug_logging
    #   <p>Whether the proxy includes detailed information about SQL statements in its logs.
    #           This information helps you to debug issues involving SQL behavior or the performance
    #           and scalability of the proxy connections. The debug information includes the text of
    #           SQL statements that you submit through the proxy. Thus, only enable this setting
    #           when needed for debugging, and only when you have security measures in place to
    #           safeguard any sensitive information that appears in the logs.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that the proxy uses to access secrets in Amazon Web Services Secrets Manager.</p>
    #
    #   @return [String]
    #
    # @!attribute security_groups
    #   <p>The new list of security groups for the <code>DBProxy</code>.</p>
    #
    #   @return [Array<String>]
    #
    ModifyDBProxyInput = ::Struct.new(
      :db_proxy_name,
      :new_db_proxy_name,
      :auth,
      :require_tls,
      :idle_client_timeout,
      :debug_logging,
      :role_arn,
      :security_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_proxy
    #   <p>The <code>DBProxy</code> object representing the new settings for the proxy.</p>
    #
    #   @return [DBProxy]
    #
    ModifyDBProxyOutput = ::Struct.new(
      :db_proxy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute target_group_name
    #   <p>The name of the new target group to assign to the proxy.</p>
    #
    #   @return [String]
    #
    # @!attribute db_proxy_name
    #   <p>The name of the new proxy to which to assign the target group.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_pool_config
    #   <p>The settings that determine the size and behavior of the connection pool for the target group.</p>
    #
    #   @return [ConnectionPoolConfiguration]
    #
    # @!attribute new_name
    #   <p>The new name for the modified <code>DBProxyTarget</code>. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens.</p>
    #
    #   @return [String]
    #
    ModifyDBProxyTargetGroupInput = ::Struct.new(
      :target_group_name,
      :db_proxy_name,
      :connection_pool_config,
      :new_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_proxy_target_group
    #   <p>The settings of the modified <code>DBProxyTarget</code>.</p>
    #
    #   @return [DBProxyTargetGroup]
    #
    ModifyDBProxyTargetGroupOutput = ::Struct.new(
      :db_proxy_target_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_snapshot_identifier
    #   <p>The identifier for the DB snapshot to modify the attributes for.</p>
    #
    #   @return [String]
    #
    # @!attribute attribute_name
    #   <p>The name of the DB snapshot attribute to modify.</p>
    #           <p>To manage authorization for other Amazon Web Services accounts to copy or restore a manual DB snapshot,
    #         set this value to <code>restore</code>.</p>
    #           <note>
    #               <p>To view the list of attributes available to modify, use the
    #                 <a>DescribeDBSnapshotAttributes</a> API action.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute values_to_add
    #   <p>A list of DB snapshot attributes to add to the attribute specified by <code>AttributeName</code>.</p>
    #           <p>To authorize other Amazon Web Services accounts to copy or restore a manual snapshot, set this list to include one or more Amazon Web Services account
    #         IDs, or <code>all</code> to make the manual DB snapshot restorable by
    #         any Amazon Web Services account. Do not add the <code>all</code> value for any
    #         manual DB snapshots that contain private information that you don't want available
    #         to all Amazon Web Services accounts.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute values_to_remove
    #   <p>A list of DB snapshot attributes to remove from the attribute specified by <code>AttributeName</code>.</p>
    #           <p>To remove authorization for other Amazon Web Services accounts to copy or restore a manual snapshot, set this list to include
    #         one or more Amazon Web Services account
    #         identifiers, or <code>all</code> to remove authorization for any Amazon Web Services account to copy or
    #         restore the DB snapshot. If you specify <code>all</code>, an Amazon Web Services account whose
    #         account ID is explicitly added to the <code>restore</code> attribute
    #         can still copy or restore the manual DB snapshot.</p>
    #
    #   @return [Array<String>]
    #
    ModifyDBSnapshotAttributeInput = ::Struct.new(
      :db_snapshot_identifier,
      :attribute_name,
      :values_to_add,
      :values_to_remove,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_snapshot_attributes_result
    #   <p>Contains the results of a successful call to the <code>DescribeDBSnapshotAttributes</code>
    #       API action.</p>
    #           <p>Manual DB snapshot attributes are used to authorize other Amazon Web Services accounts
    #         to copy or restore a manual DB snapshot. For more information, see the <code>ModifyDBSnapshotAttribute</code>
    #         API action.</p>
    #
    #   @return [DBSnapshotAttributesResult]
    #
    ModifyDBSnapshotAttributeOutput = ::Struct.new(
      :db_snapshot_attributes_result,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_snapshot_identifier
    #   <p>The identifier of the DB snapshot to modify.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The engine version to upgrade the DB snapshot to.</p>
    #           <p>The following are the database engines and engine versions that are available when you upgrade a DB snapshot.</p>
    #           <p>
    #               <b>MySQL</b>
    #            </p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>5.5.46</code> (supported for 5.1 DB snapshots)</p>
    #               </li>
    #            </ul>
    #           <p>
    #               <b>Oracle</b>
    #            </p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>12.1.0.2.v8</code>  (supported for 12.1.0.1 DB snapshots)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>11.2.0.4.v12</code> (supported for 11.2.0.2 DB snapshots)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>11.2.0.4.v11</code> (supported for 11.2.0.3 DB snapshots)</p>
    #               </li>
    #            </ul>
    #           <p>
    #               <b>PostgreSQL</b>
    #            </p>
    #           <p>For the list of engine versions that are available for upgrading a DB snapshot, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.PostgreSQL.html USER_UpgradeDBInstance.PostgreSQL.MajorVersion">
    #                 Upgrading the PostgreSQL DB Engine for Amazon RDS</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute option_group_name
    #   <p>The option group to identify with the upgraded DB snapshot.</p>
    #           <p>You can specify this parameter when you upgrade an Oracle DB snapshot.
    #               The same option group considerations apply when upgrading a DB snapshot as when upgrading a DB instance.
    #               For more information, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Oracle.html USER_UpgradeDBInstance.Oracle.OGPG.OG">Option group considerations</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [String]
    #
    ModifyDBSnapshotInput = ::Struct.new(
      :db_snapshot_identifier,
      :engine_version,
      :option_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_snapshot
    #   <p>Contains the details of an Amazon RDS DB snapshot.</p>
    #           <p>This data type is used as a response element
    #             in the <code>DescribeDBSnapshots</code> action.</p>
    #
    #   @return [DBSnapshot]
    #
    ModifyDBSnapshotOutput = ::Struct.new(
      :db_snapshot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_subnet_group_name
    #   <p>The name for the DB subnet group. This value is stored as a lowercase string.
    #             You can't modify the default subnet group.</p>
    #           <p>Constraints: Must match the name of an existing DBSubnetGroup. Must not be default.</p>
    #           <p>Example: <code>mydbsubnetgroup</code>
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
    #   <p>Contains the details of an Amazon RDS DB subnet group.</p>
    #           <p>This data type is used as a response element
    #             in the <code>DescribeDBSubnetGroups</code> action.</p>
    #
    #   @return [DBSubnetGroup]
    #
    ModifyDBSubnetGroupOutput = ::Struct.new(
      :db_subnet_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute subscription_name
    #   <p>The name of the RDS event notification subscription.</p>
    #
    #   @return [String]
    #
    # @!attribute sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.</p>
    #
    #   @return [String]
    #
    # @!attribute source_type
    #   <p>The type of source that is generating the events. For example, if you want to be notified of events generated by a DB instance, you would set this parameter to db-instance. For RDS Proxy events, specify <code>db-proxy</code>. If this value isn't specified, all events are returned.</p>
    #           <p>Valid values: <code>db-instance</code> | <code>db-cluster</code> | <code>db-parameter-group</code> | <code>db-security-group</code> | <code>db-snapshot</code> | <code>db-cluster-snapshot</code> | <code>db-proxy</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute event_categories
    #   <p>A list of event categories for a source type (<code>SourceType</code>) that you want to subscribe to.
    #               You can see a list of the categories for a given source type
    #               in <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html">Events</a> in the <i>Amazon RDS User Guide</i>
    #               or by using the <code>DescribeEventCategories</code> operation.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute enabled
    #   <p>A value that indicates whether to activate the subscription.</p>
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
    #   <p>Contains the results of a successful invocation of the <code>DescribeEventSubscriptions</code> action.</p>
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
    #   <p>The DB cluster identifier for the global cluster being modified. This parameter isn't case-sensitive.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must match the identifier of an existing global database cluster.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute new_global_cluster_identifier
    #   <p>The new cluster identifier for the global database cluster when modifying a global database cluster.
    #           This value is stored as a lowercase string.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain from 1 to 63 letters, numbers, or hyphens</p>
    #               </li>
    #               <li>
    #                   <p>The first character must be a letter</p>
    #               </li>
    #               <li>
    #                   <p>Can't end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>my-cluster2</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute deletion_protection
    #   <p>Indicates if the global database cluster has deletion protection enabled. The global database cluster
    #           can't be deleted when deletion protection is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute engine_version
    #   <p>The version number of the database engine to which you want to upgrade.
    #             Changing this parameter results in an outage. The change is applied during
    #             the next maintenance window unless <code>ApplyImmediately</code> is enabled.</p>
    #           <p>To list all of the available engine versions for <code>aurora</code> (for MySQL 5.6-compatible Aurora), use the following command:</p>
    #           <p>
    #               <code>aws rds describe-db-engine-versions --engine aurora --query '*[]|[?SupportsGlobalDatabases == `true`].[EngineVersion]'</code>
    #            </p>
    #           <p>To list all of the available engine versions for <code>aurora-mysql</code> (for MySQL 5.7-compatible and MySQL 8.0-compatible Aurora), use the following command:</p>
    #           <p>
    #               <code>aws rds describe-db-engine-versions --engine aurora-mysql --query '*[]|[?SupportsGlobalDatabases == `true`].[EngineVersion]'</code>
    #            </p>
    #           <p>To list all of the available engine versions for <code>aurora-postgresql</code>, use the following command:</p>
    #           <p>
    #               <code>aws rds describe-db-engine-versions --engine aurora-postgresql --query '*[]|[?SupportsGlobalDatabases == `true`].[EngineVersion]'</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute allow_major_version_upgrade
    #   <p>A value that indicates whether major version upgrades are allowed.</p>
    #           <p>Constraints: You must allow major version upgrades when specifying a value for the
    #                   <code>EngineVersion</code> parameter that is a different major version than the DB
    #               cluster's current version.</p>
    #           <p>If you upgrade the major version of a global database, the cluster and DB instance parameter
    #           groups are set to the default parameter groups for the new version. Apply any custom parameter
    #           groups after completing the upgrade.</p>
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
    #   <p>A data type representing an Aurora global database.</p>
    #
    #   @return [GlobalCluster]
    #
    ModifyGlobalClusterOutput = ::Struct.new(
      :global_cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute option_group_name
    #   <p>The name of the option group to be modified.</p>
    #           <p>Permanent options, such as the TDE option for Oracle Advanced Security TDE, can't be removed from an option group, and that option group can't be removed from a DB instance once it is associated with a DB instance</p>
    #
    #   @return [String]
    #
    # @!attribute options_to_include
    #   <p>Options in this list are added to the option group or, if already present, the specified configuration is used to update the existing configuration.</p>
    #
    #   @return [Array<OptionConfiguration>]
    #
    # @!attribute options_to_remove
    #   <p>Options in this list are removed from the option group.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute apply_immediately
    #   <p>A value that indicates whether to apply the change immediately or during the next maintenance window for each instance associated with the option group.</p>
    #
    #   @return [Boolean]
    #
    ModifyOptionGroupInput = ::Struct.new(
      :option_group_name,
      :options_to_include,
      :options_to_remove,
      :apply_immediately,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.apply_immediately ||= false
      end
    end

    # @!attribute option_group
    #   <p></p>
    #
    #   @return [OptionGroup]
    #
    ModifyOptionGroupOutput = ::Struct.new(
      :option_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The network type is invalid for the DB instance. Valid nework type values are <code>IPV4</code> and <code>DUAL</code>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NetworkTypeNotSupported = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Option details.</p>
    #
    # @!attribute option_name
    #   <p>The name of the option.</p>
    #
    #   @return [String]
    #
    # @!attribute option_description
    #   <p>The description of the option.</p>
    #
    #   @return [String]
    #
    # @!attribute persistent
    #   <p>Indicate if this option is persistent.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute permanent
    #   <p>Indicate if this option is permanent.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute port
    #   <p>If required, the port configured for this option to use.</p>
    #
    #   @return [Integer]
    #
    # @!attribute option_version
    #   <p>The version of the option.</p>
    #
    #   @return [String]
    #
    # @!attribute option_settings
    #   <p>The option settings for this option.</p>
    #
    #   @return [Array<OptionSetting>]
    #
    # @!attribute db_security_group_memberships
    #   <p>If the option requires access to a port, then this DB security group allows access to the port.</p>
    #
    #   @return [Array<DBSecurityGroupMembership>]
    #
    # @!attribute vpc_security_group_memberships
    #   <p>If the option requires access to a port, then this VPC security group allows access to the port.</p>
    #
    #   @return [Array<VpcSecurityGroupMembership>]
    #
    Option = ::Struct.new(
      :option_name,
      :option_description,
      :persistent,
      :permanent,
      :port,
      :option_version,
      :option_settings,
      :db_security_group_memberships,
      :vpc_security_group_memberships,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.persistent ||= false
        self.permanent ||= false
      end
    end

    # <p>A list of all available options</p>
    #
    # @!attribute option_name
    #   <p>The configuration of options to include in a group.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The optional port for the option.</p>
    #
    #   @return [Integer]
    #
    # @!attribute option_version
    #   <p>The version for the option.</p>
    #
    #   @return [String]
    #
    # @!attribute db_security_group_memberships
    #   <p>A list of DBSecurityGroupMembership name strings used for this option.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute vpc_security_group_memberships
    #   <p>A list of VpcSecurityGroupMembership name strings used for this option.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute option_settings
    #   <p>The option settings to include in an option group.</p>
    #
    #   @return [Array<OptionSetting>]
    #
    OptionConfiguration = ::Struct.new(
      :option_name,
      :port,
      :option_version,
      :db_security_group_memberships,
      :vpc_security_group_memberships,
      :option_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute option_group_name
    #   <p>Specifies the name of the option group.</p>
    #
    #   @return [String]
    #
    # @!attribute option_group_description
    #   <p>Provides a description of the option group.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_name
    #   <p>Indicates the name of the engine that this option group can be applied to.</p>
    #
    #   @return [String]
    #
    # @!attribute major_engine_version
    #   <p>Indicates the major engine version associated with this option group.</p>
    #
    #   @return [String]
    #
    # @!attribute options
    #   <p>Indicates what options are available in the option group.</p>
    #
    #   @return [Array<Option>]
    #
    # @!attribute allows_vpc_and_non_vpc_instance_memberships
    #   <p>Indicates whether this option group can be applied to both VPC
    #              and non-VPC instances. The value <code>true</code> indicates the option group
    #              can be applied to both VPC and non-VPC instances.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute vpc_id
    #   <p>If <b>AllowsVpcAndNonVpcInstanceMemberships</b> is <code>false</code>, this field is blank.
    #              If <b>AllowsVpcAndNonVpcInstanceMemberships</b> is <code>true</code> and this field is blank,
    #              then this option group can be applied to both VPC and non-VPC instances.
    #              If this field contains a value, then this option group can only be
    #              applied to instances that are in the VPC indicated by this field.</p>
    #
    #   @return [String]
    #
    # @!attribute option_group_arn
    #   <p>The Amazon Resource Name (ARN) for the option group.</p>
    #
    #   @return [String]
    #
    OptionGroup = ::Struct.new(
      :option_group_name,
      :option_group_description,
      :engine_name,
      :major_engine_version,
      :options,
      :allows_vpc_and_non_vpc_instance_memberships,
      :vpc_id,
      :option_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.allows_vpc_and_non_vpc_instance_memberships ||= false
      end
    end

    # <p>The option group you are trying to create already exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OptionGroupAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information on the option groups the DB instance is a member of.</p>
    #
    # @!attribute option_group_name
    #   <p>The name of the option group that the instance belongs to.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the DB instance's option group membership. Valid values are:
    #         <code>in-sync</code>,
    #         <code>pending-apply</code>,
    #         <code>pending-removal</code>,
    #         <code>pending-maintenance-apply</code>,
    #         <code>pending-maintenance-removal</code>,
    #         <code>applying</code>,
    #         <code>removing</code>,
    #         and <code>failed</code>.</p>
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

    # <p>The specified option group could not be found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OptionGroupNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Available option.</p>
    #
    # @!attribute name
    #   <p>The name of the option.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the option.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_name
    #   <p>The name of the engine that this option can be applied to.</p>
    #
    #   @return [String]
    #
    # @!attribute major_engine_version
    #   <p>Indicates the major engine version that the option is available for.</p>
    #
    #   @return [String]
    #
    # @!attribute minimum_required_minor_engine_version
    #   <p>The minimum required engine version for the option to be applied.</p>
    #
    #   @return [String]
    #
    # @!attribute port_required
    #   <p>Specifies whether the option requires a port.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute default_port
    #   <p>If the option requires a port, specifies the default port for the option.</p>
    #
    #   @return [Integer]
    #
    # @!attribute options_depended_on
    #   <p>The options that are prerequisites for this option.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute options_conflicts_with
    #   <p>The options that conflict with this option.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute persistent
    #   <p>Persistent options can't be removed from an option group while DB instances are associated with the option group. If you disassociate all DB instances from the option group, your can remove the persistent option from the option group.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute permanent
    #   <p>Permanent options can never be removed from an option group. An option group containing a permanent option can't be removed from a DB instance.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute requires_auto_minor_engine_version_upgrade
    #   <p>If true, you must enable the Auto Minor Version Upgrade setting for your DB instance
    #               before you can use this option.
    #               You can enable Auto Minor Version Upgrade when you first create your DB instance,
    #               or by modifying your DB instance later.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute vpc_only
    #   <p>If true, you can only use this option with a DB instance that is in a VPC.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute supports_option_version_downgrade
    #   <p>If true, you can change the option to an earlier version of the option.
    #               This only applies to options that have different versions available.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute option_group_option_settings
    #   <p>The option settings that are available (and the default value) for each option in an option group.</p>
    #
    #   @return [Array<OptionGroupOptionSetting>]
    #
    # @!attribute option_group_option_versions
    #   <p>The versions that are available for the option.</p>
    #
    #   @return [Array<OptionVersion>]
    #
    OptionGroupOption = ::Struct.new(
      :name,
      :description,
      :engine_name,
      :major_engine_version,
      :minimum_required_minor_engine_version,
      :port_required,
      :default_port,
      :options_depended_on,
      :options_conflicts_with,
      :persistent,
      :permanent,
      :requires_auto_minor_engine_version_upgrade,
      :vpc_only,
      :supports_option_version_downgrade,
      :option_group_option_settings,
      :option_group_option_versions,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.port_required ||= false
        self.persistent ||= false
        self.permanent ||= false
        self.requires_auto_minor_engine_version_upgrade ||= false
        self.vpc_only ||= false
      end
    end

    # <p>Option group option settings are used to display settings available for each option with their default values and other information. These values are used with the DescribeOptionGroupOptions action.</p>
    #
    # @!attribute setting_name
    #   <p>The name of the option group option.</p>
    #
    #   @return [String]
    #
    # @!attribute setting_description
    #   <p>The description of the option group option.</p>
    #
    #   @return [String]
    #
    # @!attribute default_value
    #   <p>The default value for the option group option.</p>
    #
    #   @return [String]
    #
    # @!attribute apply_type
    #   <p>The DB engine specific parameter type for the option group option.</p>
    #
    #   @return [String]
    #
    # @!attribute allowed_values
    #   <p>Indicates the acceptable values for the option group option.</p>
    #
    #   @return [String]
    #
    # @!attribute is_modifiable
    #   <p>Boolean value where true indicates that this option group option can be changed from the default value.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_required
    #   <p>Boolean value where true indicates that a value must be specified for this option setting of the option group option.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute minimum_engine_version_per_allowed_value
    #   <p>The minimum DB engine version required for the corresponding allowed value for this option setting.</p>
    #
    #   @return [Array<MinimumEngineVersionPerAllowedValue>]
    #
    OptionGroupOptionSetting = ::Struct.new(
      :setting_name,
      :setting_description,
      :default_value,
      :apply_type,
      :allowed_values,
      :is_modifiable,
      :is_required,
      :minimum_engine_version_per_allowed_value,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_modifiable ||= false
        self.is_required ||= false
      end
    end

    # <p>The quota of 20 option groups was exceeded for this Amazon Web Services account.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OptionGroupQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Option settings are the actual settings being applied or configured for that option. It is used when you modify an option group or describe option groups. For example, the NATIVE_NETWORK_ENCRYPTION option has a setting called SQLNET.ENCRYPTION_SERVER that can have several different values.</p>
    #
    # @!attribute name
    #   <p>The name of the option that has settings that you can set.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The current value of the option setting.</p>
    #
    #   @return [String]
    #
    # @!attribute default_value
    #   <p>The default value of the option setting.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the option setting.</p>
    #
    #   @return [String]
    #
    # @!attribute apply_type
    #   <p>The DB engine specific parameter type.</p>
    #
    #   @return [String]
    #
    # @!attribute data_type
    #   <p>The data type of the option setting.</p>
    #
    #   @return [String]
    #
    # @!attribute allowed_values
    #   <p>The allowed values of the option setting.</p>
    #
    #   @return [String]
    #
    # @!attribute is_modifiable
    #   <p>A Boolean value that, when true, indicates the option setting can be modified from the default.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_collection
    #   <p>Indicates if the option setting is part of a collection.</p>
    #
    #   @return [Boolean]
    #
    OptionSetting = ::Struct.new(
      :name,
      :value,
      :default_value,
      :description,
      :apply_type,
      :data_type,
      :allowed_values,
      :is_modifiable,
      :is_collection,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_modifiable ||= false
        self.is_collection ||= false
      end
    end

    # <p>The version for an option. Option group option versions are returned by
    #             the <code>DescribeOptionGroupOptions</code> action.</p>
    #
    # @!attribute version
    #   <p>The version of the option.</p>
    #
    #   @return [String]
    #
    # @!attribute is_default
    #   <p>True if the version is the default version of the option, and otherwise false.</p>
    #
    #   @return [Boolean]
    #
    OptionVersion = ::Struct.new(
      :version,
      :is_default,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_default ||= false
      end
    end

    # <p>Contains a list of available options for a DB instance.</p>
    #         <p>This data type is used as a response element in the <code>DescribeOrderableDBInstanceOptions</code> action.</p>
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
    # @!attribute availability_zone_group
    #   <p>The Availability Zone group for a DB instance.</p>
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
    #   <p>Indicates whether a DB instance can have a read replica.</p>
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
    #   <p>Indicates whether a DB instance supports Enhanced Monitoring at intervals from 1 to 60 seconds.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute supports_iam_database_authentication
    #   <p>Indicates whether a DB instance supports IAM database authentication.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute supports_performance_insights
    #   <p>True if a DB instance supports Performance Insights, otherwise false.</p>
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
    # @!attribute available_processor_features
    #   <p>A list of the available processor features for the DB instance class of a DB instance.</p>
    #
    #   @return [Array<AvailableProcessorFeature>]
    #
    # @!attribute supported_engine_modes
    #   <p>A list of the supported DB engine modes.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute supports_storage_autoscaling
    #   <p>Whether Amazon RDS can automatically scale storage for DB instances that use the specified DB instance class.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute supports_kerberos_authentication
    #   <p>Whether a DB instance supports Kerberos Authentication.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute outpost_capable
    #   <p>Whether a DB instance supports RDS on Outposts.</p>
    #           <p>For more information about RDS on Outposts, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html">Amazon RDS on Amazon Web Services Outposts</a>
    #               in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute supported_activity_stream_modes
    #   <p>The list of supported modes for Database Activity Streams. Aurora PostgreSQL returns the value <code>[sync,
    #             async]</code>. Aurora MySQL and RDS for Oracle return <code>[async]</code> only. If Database Activity Streams
    #             isn't supported, the return value is an empty list.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute supports_global_databases
    #   <p>A value that indicates whether you can use Aurora global databases with a specific combination of other DB engine attributes.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute supports_clusters
    #   <p>Whether DB instances can be configured as a Multi-AZ DB cluster.</p>
    #           <p>For more information on Multi-AZ DB clusters, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html">
    #                  Multi-AZ deployments with two readable standby DB instances</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute supported_network_types
    #   <p>The network types supported by the DB instance (<code>IPV4</code> or <code>DUAL</code>).</p>
    #           <p>A DB instance can support only the IPv4 protocol or the IPv4 and the IPv6
    #               protocols (<code>DUAL</code>).</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html">
    #               Working with a DB instance in a VPC</a> in the
    #               <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [Array<String>]
    #
    OrderableDBInstanceOption = ::Struct.new(
      :engine,
      :engine_version,
      :db_instance_class,
      :license_model,
      :availability_zone_group,
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
      :available_processor_features,
      :supported_engine_modes,
      :supports_storage_autoscaling,
      :supports_kerberos_authentication,
      :outpost_capable,
      :supported_activity_stream_modes,
      :supports_global_databases,
      :supports_clusters,
      :supported_network_types,
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
        self.outpost_capable ||= false
        self.supports_global_databases ||= false
        self.supports_clusters ||= false
      end
    end

    # <p>A data type that represents an Outpost.</p>
    #         <p>For more information about RDS on Outposts, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html">Amazon RDS on Amazon Web Services Outposts</a>
    #           in the <i>Amazon RDS User Guide.</i>
    #          </p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Outpost.</p>
    #
    #   @return [String]
    #
    Outpost = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This data type is used as a request parameter in the
    #         <code>ModifyDBParameterGroup</code> and <code>ResetDBParameterGroup</code> actions.</p>
    #         <p>This data type is used as a response element in the
    #         <code>DescribeEngineDefaultParameters</code> and <code>DescribeDBParameters</code> actions.</p>
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
    #   <p>Indicates whether (<code>true</code>) or not (<code>false</code>) the parameter can be modified.
    #           Some parameters have security or operational implications
    #           that prevent them from being changed.</p>
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
    # @!attribute supported_engine_modes
    #   <p>The valid DB engine modes.</p>
    #
    #   @return [Array<String>]
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
      :supported_engine_modes,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_modifiable ||= false
      end
    end

    # <p>A list of the log types whose configuration is still pending. In other words, these log types are in the process of being activated or deactivated.</p>
    #
    # @!attribute log_types_to_enable
    #   <p>Log types that are in the process of being deactivated. After they are deactivated, these log types aren't exported to CloudWatch Logs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute log_types_to_disable
    #   <p>Log types that are in the process of being enabled. After they are enabled, these log types are exported to CloudWatch Logs.</p>
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
    #   <p>The type of pending maintenance action that is available for the resource.
    #             Valid actions are <code>system-update</code>, <code>db-upgrade</code>, <code>hardware-maintenance</code>,
    #             and <code>ca-certificate-rotation</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_applied_after_date
    #   <p>The date of the maintenance window when the action is applied.
    #              The maintenance action is applied to the resource during
    #              its first maintenance window after this date.</p>
    #
    #   @return [Time]
    #
    # @!attribute forced_apply_date
    #   <p>The date when the maintenance action is automatically applied.</p>
    #           <p>On this date, the maintenance action is applied to the resource as soon as possible,
    #               regardless of the maintenance window for the resource. There might be a delay of
    #               one or more days from this date before the maintenance action is applied.</p>
    #
    #   @return [Time]
    #
    # @!attribute opt_in_status
    #   <p>Indicates the type of opt-in request that has been received for the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute current_apply_date
    #   <p>The effective date when the pending maintenance action is applied
    #              to the resource. This date takes into account opt-in requests received from
    #              the <code>ApplyPendingMaintenanceAction</code> API, the <code>AutoAppliedAfterDate</code>,
    #              and the <code>ForcedApplyDate</code>. This value is blank if an
    #              opt-in request has not been received and nothing has been specified as
    #              <code>AutoAppliedAfterDate</code> or <code>ForcedApplyDate</code>.</p>
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

    # <p>This data type is used as a response element in the <code>ModifyDBInstance</code> operation and
    #           contains changes that will be applied during the next maintenance window.</p>
    #
    # @!attribute db_instance_class
    #   <p>The name of the compute and memory capacity class for the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute allocated_storage
    #   <p>The allocated storage size for the DB instance specified in gibibytes (GiB).</p>
    #
    #   @return [Integer]
    #
    # @!attribute master_user_password
    #   <p>The master credentials for the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port for the DB instance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute backup_retention_period
    #   <p>The number of days for which automated backups are retained.</p>
    #
    #   @return [Integer]
    #
    # @!attribute multi_az
    #   <p>A value that indicates that the Single-AZ DB instance will change to a Multi-AZ deployment.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute engine_version
    #   <p>The database engine version.</p>
    #
    #   @return [String]
    #
    # @!attribute license_model
    #   <p>The license model for the DB instance.</p>
    #           <p>Valid values: <code>license-included</code> | <code>bring-your-own-license</code> |
    #               <code>general-public-license</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute iops
    #   <p>The Provisioned IOPS value for the DB instance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute db_instance_identifier
    #   <p>The  database identifier for the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute storage_type
    #   <p>The storage type of the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute ca_certificate_identifier
    #   <p>The identifier of the CA certificate for the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute db_subnet_group_name
    #   <p>The DB subnet group for the DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute pending_cloudwatch_logs_exports
    #   <p>A list of the log types whose configuration is still pending. In other words, these log types are in the process of being activated or deactivated.</p>
    #
    #   @return [PendingCloudwatchLogsExports]
    #
    # @!attribute processor_features
    #   <p>The number of CPU cores and the number of threads per core for the DB instance class
    #               of the DB instance.</p>
    #
    #   @return [Array<ProcessorFeature>]
    #
    # @!attribute iam_database_authentication_enabled
    #   <p>Whether mapping of Amazon Web Services Identity and Access Management (IAM) accounts to database accounts is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute automation_mode
    #   <p>The automation mode of the RDS Custom DB instance: <code>full</code> or <code>all-paused</code>.
    #               If <code>full</code>, the DB instance automates monitoring and instance recovery. If
    #               <code>all-paused</code>, the instance pauses automation for the duration set by
    #               <code>--resume-full-automation-mode-minutes</code>.</p>
    #
    #   Enum, one of: ["full", "all-paused"]
    #
    #   @return [String]
    #
    # @!attribute resume_full_automation_mode_time
    #   <p>The number of minutes to pause the automation. When the time period ends, RDS Custom resumes full automation.
    #               The minimum value is 60 (default). The maximum value is 1,440.</p>
    #
    #   @return [Time]
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
      :processor_features,
      :iam_database_authentication_enabled,
      :automation_mode,
      :resume_full_automation_mode_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #             <code>SourceDBInstanceIdentifier</code>
    #         refers to a DB instance with
    #         <code>BackupRetentionPeriod</code> equal to 0.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    PointInTimeRestoreNotEnabledFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the processor features of a DB instance class.</p>
    #         <p>To specify the number of CPU cores, use the <code>coreCount</code> feature name
    #             for the <code>Name</code> parameter. To specify the number of threads per core, use the
    #             <code>threadsPerCore</code> feature name for the <code>Name</code> parameter.</p>
    #         <p>You can set the processor features of the DB instance class for a DB instance when you
    #             call one of the following actions:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>CreateDBInstance</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>ModifyDBInstance</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>RestoreDBInstanceFromDBSnapshot</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>RestoreDBInstanceFromS3</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>RestoreDBInstanceToPointInTime</code>
    #                </p>
    #             </li>
    #          </ul>
    #         <p>You can view the valid processor values for a particular instance class by calling the
    #                 <code>DescribeOrderableDBInstanceOptions</code> action and specifying the
    #             instance class for the <code>DBInstanceClass</code> parameter.</p>
    #         <p>In addition, you can use the following actions for DB instance class processor information:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>DescribeDBInstances</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>DescribeDBSnapshots</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>DescribeValidDBInstanceModifications</code>
    #                </p>
    #             </li>
    #          </ul>
    #         <p>If you call <code>DescribeDBInstances</code>, <code>ProcessorFeature</code> returns
    #             non-null values only if the following conditions are met:</p>
    #         <ul>
    #             <li>
    #                 <p>You are accessing an Oracle DB instance.</p>
    #             </li>
    #             <li>
    #                 <p>Your Oracle DB instance class supports configuring the number of CPU cores and threads per core.</p>
    #             </li>
    #             <li>
    #                 <p>The current number CPU cores and threads is set to a non-default value.</p>
    #             </li>
    #          </ul>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html#USER_ConfigureProcessor">Configuring the
    #                 Processor of the DB Instance Class</a> in the <i>Amazon RDS User Guide.
    #             </i>
    #          </p>
    #
    # @!attribute name
    #   <p>The name of the processor feature. Valid names are <code>coreCount</code> and <code>threadsPerCore</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of a processor feature name.</p>
    #
    #   @return [String]
    #
    ProcessorFeature = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_cluster_identifier
    #   <p>The identifier of the DB cluster read replica to promote. This parameter isn't
    #               case-sensitive.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must match the identifier of an existing DB cluster read replica.</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>my-cluster-replica1</code>
    #            </p>
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
    #   <p>Contains the details of an Amazon Aurora DB cluster or Multi-AZ DB cluster.</p>
    #           <p>For an Amazon Aurora DB cluster, this data type is used as a response element in the operations
    #             <code>CreateDBCluster</code>, <code>DeleteDBCluster</code>, <code>DescribeDBClusters</code>,
    #             <code>FailoverDBCluster</code>, <code>ModifyDBCluster</code>, <code>PromoteReadReplicaDBCluster</code>,
    #             <code>RestoreDBClusterFromS3</code>, <code>RestoreDBClusterFromSnapshot</code>,
    #             <code>RestoreDBClusterToPointInTime</code>, <code>StartDBCluster</code>, and <code>StopDBCluster</code>.</p>
    #           <p>For a Multi-AZ DB cluster, this data type is used as a response element in the operations
    #             <code>CreateDBCluster</code>, <code>DeleteDBCluster</code>, <code>DescribeDBClusters</code>,
    #             <code>FailoverDBCluster</code>, <code>ModifyDBCluster</code>, <code>RebootDBCluster</code>,
    #             <code>RestoreDBClusterFromSnapshot</code>, and <code>RestoreDBClusterToPointInTime</code>.</p>
    #           <p>For more information on Amazon Aurora DB clusters, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html">
    #                 What is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i>
    #            </p>
    #           <p>For more information on Multi-AZ DB clusters, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html">
    #                 Multi-AZ deployments with two readable standby DB instances</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [DBCluster]
    #
    PromoteReadReplicaDBClusterOutput = ::Struct.new(
      :db_cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_instance_identifier
    #   <p>The DB instance identifier. This value is stored as a lowercase string.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must match the identifier of an existing read replica DB instance.</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>mydbinstance</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute backup_retention_period
    #   <p>The number of days for which automated backups are retained. Setting this parameter to a positive number enables backups. Setting this parameter to 0 disables automated backups.</p>
    #           <p>Default: 1</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be a value from 0 to 35.</p>
    #               </li>
    #               <li>
    #                   <p>Can't be set to 0 if the DB instance is a source to read replicas.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Integer]
    #
    # @!attribute preferred_backup_window
    #   <p>The daily time range during which automated backups are created
    #           if automated backups are enabled,
    #           using the <code>BackupRetentionPeriod</code> parameter.</p>
    #           <p>The default is a 30-minute window selected at random from an
    #               8-hour block of time for each Amazon Web Services Region.
    #               To see the time blocks available, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html">
    #               Adjusting the Preferred Maintenance Window</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Must be in Universal Coordinated Time (UTC).</p>
    #               </li>
    #               <li>
    #                   <p>Must not conflict with the preferred maintenance window.</p>
    #               </li>
    #               <li>
    #                   <p>Must be at least 30 minutes.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    PromoteReadReplicaInput = ::Struct.new(
      :db_instance_identifier,
      :backup_retention_period,
      :preferred_backup_window,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_instance
    #   <p>Contains the details of an Amazon RDS DB instance.</p>
    #           <p>This data type is used as a response element in the operations <code>CreateDBInstance</code>,
    #             <code>CreateDBInstanceReadReplica</code>, <code>DeleteDBInstance</code>, <code>DescribeDBInstances</code>,
    #             <code>ModifyDBInstance</code>, <code>PromoteReadReplica</code>, <code>RebootDBInstance</code>,
    #             <code>RestoreDBInstanceFromDBSnapshot</code>, <code>RestoreDBInstanceFromS3</code>, <code>RestoreDBInstanceToPointInTime</code>,
    #             <code>StartDBInstance</code>, and <code>StopDBInstance</code>.</p>
    #
    #   @return [DBInstance]
    #
    PromoteReadReplicaOutput = ::Struct.new(
      :db_instance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provisioned IOPS not available in the specified Availability Zone.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ProvisionedIopsNotAvailableInAZFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute reserved_db_instances_offering_id
    #   <p>The ID of the Reserved DB instance offering to purchase.</p>
    #           <p>Example: 438012d3-4052-4cc7-b2e3-8d3372e0e706</p>
    #
    #   @return [String]
    #
    # @!attribute reserved_db_instance_id
    #   <p>Customer-specified identifier to track this reservation.</p>
    #           <p>Example: myreservationID</p>
    #
    #   @return [String]
    #
    # @!attribute db_instance_count
    #   <p>The number of instances to reserve.</p>
    #           <p>Default: <code>1</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute tags
    #   <p>A list of tags.
    #             For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [Array<Tag>]
    #
    PurchaseReservedDBInstancesOfferingInput = ::Struct.new(
      :reserved_db_instances_offering_id,
      :reserved_db_instance_id,
      :db_instance_count,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute reserved_db_instance
    #   <p>This data type is used as a response element in the
    #               <code>DescribeReservedDBInstances</code> and
    #               <code>PurchaseReservedDBInstancesOffering</code> actions.</p>
    #
    #   @return [ReservedDBInstance]
    #
    PurchaseReservedDBInstancesOfferingOutput = ::Struct.new(
      :reserved_db_instance,
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
    #   <p>The step value for the range.
    #               For example, if you have a range of 5,000 to 10,000,
    #               with a step value of 1,000,
    #               the valid values start at 5,000 and step up by 1,000.
    #               Even though 7,500 is within the range,
    #               it isn't a valid value for the range.
    #               The valid values are 5,000, 6,000, 7,000, 8,000...</p>
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

    # @!attribute db_cluster_identifier
    #   <p>The DB cluster identifier. This parameter is stored as a lowercase string.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must match the identifier of an existing DBCluster.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    RebootDBClusterInput = ::Struct.new(
      :db_cluster_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster
    #   <p>Contains the details of an Amazon Aurora DB cluster or Multi-AZ DB cluster.</p>
    #           <p>For an Amazon Aurora DB cluster, this data type is used as a response element in the operations
    #             <code>CreateDBCluster</code>, <code>DeleteDBCluster</code>, <code>DescribeDBClusters</code>,
    #             <code>FailoverDBCluster</code>, <code>ModifyDBCluster</code>, <code>PromoteReadReplicaDBCluster</code>,
    #             <code>RestoreDBClusterFromS3</code>, <code>RestoreDBClusterFromSnapshot</code>,
    #             <code>RestoreDBClusterToPointInTime</code>, <code>StartDBCluster</code>, and <code>StopDBCluster</code>.</p>
    #           <p>For a Multi-AZ DB cluster, this data type is used as a response element in the operations
    #             <code>CreateDBCluster</code>, <code>DeleteDBCluster</code>, <code>DescribeDBClusters</code>,
    #             <code>FailoverDBCluster</code>, <code>ModifyDBCluster</code>, <code>RebootDBCluster</code>,
    #             <code>RestoreDBClusterFromSnapshot</code>, and <code>RestoreDBClusterToPointInTime</code>.</p>
    #           <p>For more information on Amazon Aurora DB clusters, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html">
    #                 What is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i>
    #            </p>
    #           <p>For more information on Multi-AZ DB clusters, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html">
    #                 Multi-AZ deployments with two readable standby DB instances</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [DBCluster]
    #
    RebootDBClusterOutput = ::Struct.new(
      :db_cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_instance_identifier
    #   <p>The DB instance identifier. This parameter is stored as a lowercase string.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must match the identifier of an existing DBInstance.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute force_failover
    #   <p>A value that indicates whether the reboot is conducted through a Multi-AZ failover.</p>
    #           <p>Constraint: You can't enable force failover if the instance isn't configured for Multi-AZ.</p>
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
    #   <p>Contains the details of an Amazon RDS DB instance.</p>
    #           <p>This data type is used as a response element in the operations <code>CreateDBInstance</code>,
    #             <code>CreateDBInstanceReadReplica</code>, <code>DeleteDBInstance</code>, <code>DescribeDBInstances</code>,
    #             <code>ModifyDBInstance</code>, <code>PromoteReadReplica</code>, <code>RebootDBInstance</code>,
    #             <code>RestoreDBInstanceFromDBSnapshot</code>, <code>RestoreDBInstanceFromS3</code>, <code>RestoreDBInstanceToPointInTime</code>,
    #             <code>StartDBInstance</code>, and <code>StopDBInstance</code>.</p>
    #
    #   @return [DBInstance]
    #
    RebootDBInstanceOutput = ::Struct.new(
      :db_instance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This data type is used as a response element in the
    #             <code>DescribeReservedDBInstances</code> and <code>DescribeReservedDBInstancesOfferings</code> actions.</p>
    #
    # @!attribute recurring_charge_amount
    #   <p>The amount of the recurring charge.</p>
    #
    #   @return [Float]
    #
    # @!attribute recurring_charge_frequency
    #   <p>The frequency of the recurring charge.</p>
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

    # @!attribute db_proxy_name
    #   <p>The identifier of the <code>DBProxy</code> that is associated with the <code>DBProxyTargetGroup</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute target_group_name
    #   <p>The identifier of the <code>DBProxyTargetGroup</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute db_instance_identifiers
    #   <p>One or more DB instance identifiers.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute db_cluster_identifiers
    #   <p>One or more DB cluster identifiers.</p>
    #
    #   @return [Array<String>]
    #
    RegisterDBProxyTargetsInput = ::Struct.new(
      :db_proxy_name,
      :target_group_name,
      :db_instance_identifiers,
      :db_cluster_identifiers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_proxy_targets
    #   <p>One or more <code>DBProxyTarget</code> objects that are created when you register targets with a target group.</p>
    #
    #   @return [Array<DBProxyTarget>]
    #
    RegisterDBProxyTargetsOutput = ::Struct.new(
      :db_proxy_targets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_cluster_identifier
    #   <p>The cluster identifier to detach from the Aurora global database cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_identifier
    #   <p>The Amazon Resource Name (ARN) identifying the cluster that was detached from the Aurora global database cluster.</p>
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
    #   <p>A data type representing an Aurora global database.</p>
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
    #   <p>The Amazon Resource Name (ARN) of the IAM role to disassociate from the Aurora DB cluster, for example
    #           <code>arn:aws:iam::123456789012:role/AuroraAccessRole</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute feature_name
    #   <p>The name of the feature for the DB cluster that the IAM role is to be disassociated from.
    #               For information about supported feature names, see <a>DBEngineVersion</a>.</p>
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

    # @!attribute db_instance_identifier
    #   <p>The name of the DB instance to disassociate the IAM role from.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to disassociate from the DB instance,
    #               for example, <code>arn:aws:iam::123456789012:role/AccessRole</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute feature_name
    #   <p>The name of the feature for the DB instance that the IAM role is to be disassociated from.
    #               For information about supported feature names, see <code>DBEngineVersion</code>.</p>
    #
    #   @return [String]
    #
    RemoveRoleFromDBInstanceInput = ::Struct.new(
      :db_instance_identifier,
      :role_arn,
      :feature_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RemoveRoleFromDBInstanceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute subscription_name
    #   <p>The name of the RDS event notification subscription you want to remove a source identifier from.</p>
    #
    #   @return [String]
    #
    # @!attribute source_identifier
    #   <p>The source identifier to be removed from the subscription, such as the <b>DB instance identifier</b>
    #               for a DB instance or the name of a security group.</p>
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
    #   <p>Contains the results of a successful invocation of the <code>DescribeEventSubscriptions</code> action.</p>
    #
    #   @return [EventSubscription]
    #
    RemoveSourceIdentifierFromSubscriptionOutput = ::Struct.new(
      :event_subscription,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute resource_name
    #   <p>The Amazon RDS resource that the tags are removed from. This value is an Amazon Resource Name (ARN). For information about
    #               creating an ARN,
    #               see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html USER_Tagging.ARN.Constructing">
    #                   Constructing an ARN for Amazon RDS</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
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

    # Includes enum constants for ReplicaMode
    #
    module ReplicaMode
      # No documentation available.
      #
      OPEN_READ_ONLY = "open-read-only"

      # No documentation available.
      #
      MOUNTED = "mounted"
    end

    # <p>This data type is used as a response element in the
    #             <code>DescribeReservedDBInstances</code> and
    #             <code>PurchaseReservedDBInstancesOffering</code> actions.</p>
    #
    # @!attribute reserved_db_instance_id
    #   <p>The unique identifier for the reservation.</p>
    #
    #   @return [String]
    #
    # @!attribute reserved_db_instances_offering_id
    #   <p>The offering identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute db_instance_class
    #   <p>The DB instance class for the reserved DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The time the reservation started.</p>
    #
    #   @return [Time]
    #
    # @!attribute duration
    #   <p>The duration of the reservation in seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute fixed_price
    #   <p>The fixed price charged for this reserved DB instance.</p>
    #
    #   @return [Float]
    #
    # @!attribute usage_price
    #   <p>The hourly price charged for this reserved DB instance.</p>
    #
    #   @return [Float]
    #
    # @!attribute currency_code
    #   <p>The currency code for the reserved DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute db_instance_count
    #   <p>The number of reserved DB instances.</p>
    #
    #   @return [Integer]
    #
    # @!attribute product_description
    #   <p>The description of the reserved DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute offering_type
    #   <p>The offering type of this reserved DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute multi_az
    #   <p>Indicates if the reservation applies to Multi-AZ deployments.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute state
    #   <p>The state of the reserved DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute recurring_charges
    #   <p>The recurring price charged to run this reserved DB instance.</p>
    #
    #   @return [Array<RecurringCharge>]
    #
    # @!attribute reserved_db_instance_arn
    #   <p>The Amazon Resource Name (ARN) for the reserved DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute lease_id
    #   <p>The unique identifier for the lease associated with the reserved DB instance.</p>
    #           <note>
    #               <p>Amazon Web Services Support might request the lease ID for an issue related to a reserved DB instance.</p>
    #           </note>
    #
    #   @return [String]
    #
    ReservedDBInstance = ::Struct.new(
      :reserved_db_instance_id,
      :reserved_db_instances_offering_id,
      :db_instance_class,
      :start_time,
      :duration,
      :fixed_price,
      :usage_price,
      :currency_code,
      :db_instance_count,
      :product_description,
      :offering_type,
      :multi_az,
      :state,
      :recurring_charges,
      :reserved_db_instance_arn,
      :lease_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.duration ||= 0
        self.fixed_price ||= 0
        self.usage_price ||= 0
        self.db_instance_count ||= 0
        self.multi_az ||= false
      end
    end

    # <p>User already has a reservation with the given identifier.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ReservedDBInstanceAlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified reserved DB Instance not found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ReservedDBInstanceNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Request would exceed the user's DB Instance quota.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ReservedDBInstanceQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This data type is used as a response element in the <code>DescribeReservedDBInstancesOfferings</code> action.</p>
    #
    # @!attribute reserved_db_instances_offering_id
    #   <p>The offering identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute db_instance_class
    #   <p>The DB instance class for the reserved DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute duration
    #   <p>The duration of the offering in seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute fixed_price
    #   <p>The fixed price charged for this offering.</p>
    #
    #   @return [Float]
    #
    # @!attribute usage_price
    #   <p>The hourly price charged for this offering.</p>
    #
    #   @return [Float]
    #
    # @!attribute currency_code
    #   <p>The currency code for the reserved DB instance offering.</p>
    #
    #   @return [String]
    #
    # @!attribute product_description
    #   <p>The database engine used by the offering.</p>
    #
    #   @return [String]
    #
    # @!attribute offering_type
    #   <p>The offering type.</p>
    #
    #   @return [String]
    #
    # @!attribute multi_az
    #   <p>Indicates if the offering applies to Multi-AZ deployments.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute recurring_charges
    #   <p>The recurring price charged to run this reserved DB instance.</p>
    #
    #   @return [Array<RecurringCharge>]
    #
    ReservedDBInstancesOffering = ::Struct.new(
      :reserved_db_instances_offering_id,
      :db_instance_class,
      :duration,
      :fixed_price,
      :usage_price,
      :currency_code,
      :product_description,
      :offering_type,
      :multi_az,
      :recurring_charges,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.duration ||= 0
        self.fixed_price ||= 0
        self.usage_price ||= 0
        self.multi_az ||= false
      end
    end

    # <p>Specified offering does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ReservedDBInstancesOfferingNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group to reset.</p>
    #
    #   @return [String]
    #
    # @!attribute reset_all_parameters
    #   <p>A value that indicates whether to reset all parameters in the DB cluster parameter group
    #           to their default values. You can't use this parameter if there
    #           is a list of parameter names specified for the <code>Parameters</code> parameter.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute parameters
    #   <p>A list of parameter names in the DB cluster parameter group to reset to the default values. You can't use this
    #           parameter if the <code>ResetAllParameters</code> parameter is enabled.</p>
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

    # <p></p>
    #
    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be 1 to 255 letters or numbers.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                   <p>Can't end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>This value is stored as a lowercase string.</p>
    #           </note>
    #
    #   @return [String]
    #
    ResetDBClusterParameterGroupOutput = ::Struct.new(
      :db_cluster_parameter_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_parameter_group_name
    #   <p>The name of the DB parameter group.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must match the name of an existing <code>DBParameterGroup</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute reset_all_parameters
    #   <p>A value that indicates whether to reset all parameters in the DB parameter group to default values.
    #             By default, all parameters in the DB parameter group are reset to default values.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute parameters
    #   <p>To reset the entire DB parameter group, specify the <code>DBParameterGroup</code>
    #               name and <code>ResetAllParameters</code> parameters. To reset specific parameters,
    #               provide a list of the following: <code>ParameterName</code> and
    #               <code>ApplyMethod</code>. A maximum of 20 parameters can be modified in a single
    #               request.</p>
    #           <p>
    #               <b>MySQL</b>
    #            </p>
    #           <p>Valid Values (for Apply method): <code>immediate</code> | <code>pending-reboot</code>
    #            </p>
    #           <p>You can use the immediate value with dynamic parameters only. You can use
    #               the <code>pending-reboot</code> value for both dynamic and static parameters, and changes
    #               are applied when DB instance reboots.</p>
    #           <p>
    #               <b>MariaDB</b>
    #            </p>
    #           <p>Valid Values (for Apply method): <code>immediate</code> | <code>pending-reboot</code>
    #            </p>
    #           <p>You can use the immediate value with dynamic parameters only. You can use
    #         the <code>pending-reboot</code> value for both dynamic and static parameters, and changes
    #         are applied when DB instance reboots.</p>
    #           <p>
    #               <b>Oracle</b>
    #            </p>
    #           <p>Valid Values (for Apply method): <code>pending-reboot</code>
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

    # <p>Contains the result of a successful invocation of the
    #         <code>ModifyDBParameterGroup</code> or <code>ResetDBParameterGroup</code> action.</p>
    #
    # @!attribute db_parameter_group_name
    #   <p>The name of the DB parameter group.</p>
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
    #   <p>A list that provides details about the pending maintenance actions for the resource.</p>
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
    #   <p>A list of Availability Zones (AZs) where instances in the restored DB cluster can be created.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute backup_retention_period
    #   <p>The number of days for which automated backups of the restored DB cluster are retained. You must specify a minimum value of 1.</p>
    #           <p>Default: 1</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be a value from 1 to 35</p>
    #               </li>
    #            </ul>
    #
    #   @return [Integer]
    #
    # @!attribute character_set_name
    #   <p>A value that indicates that the restored DB cluster should be associated with the specified CharacterSet.</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The database name for the restored DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_identifier
    #   <p>The name of the DB cluster to create from the source data in the Amazon S3 bucket. This parameter isn't case-sensitive.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>my-cluster1</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group to associate
    #               with the restored DB cluster. If this argument is omitted, <code>default.aurora5.6</code> is used.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute vpc_security_group_ids
    #   <p>A list of EC2 VPC security groups to associate with the restored DB cluster.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute db_subnet_group_name
    #   <p>A DB subnet group to associate with the restored DB cluster.</p>
    #           <p>Constraints: If supplied, must match the name of an existing DBSubnetGroup.</p>
    #           <p>Example: <code>mydbsubnetgroup</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute engine
    #   <p>The name of the database engine to be used for this DB cluster.</p>
    #           <p>Valid Values: <code>aurora</code> (for MySQL 5.6-compatible Aurora), <code>aurora-mysql</code> (for MySQL 5.7-compatible and MySQL 8.0-compatible Aurora), and <code>aurora-postgresql</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The version number of the database engine to use.</p>
    #           <p>To list all of the available engine versions for <code>aurora</code> (for MySQL 5.6-compatible Aurora), use the following command:</p>
    #           <p>
    #               <code>aws rds describe-db-engine-versions --engine aurora --query "DBEngineVersions[].EngineVersion"</code>
    #            </p>
    #           <p>To list all of the available engine versions for <code>aurora-mysql</code> (for MySQL 5.7-compatible and MySQL 8.0-compatible Aurora), use the following command:</p>
    #           <p>
    #               <code>aws rds describe-db-engine-versions --engine aurora-mysql --query "DBEngineVersions[].EngineVersion"</code>
    #            </p>
    #           <p>To list all of the available engine versions for <code>aurora-postgresql</code>, use the following command:</p>
    #           <p>
    #               <code>aws rds describe-db-engine-versions --engine aurora-postgresql --query "DBEngineVersions[].EngineVersion"</code>
    #            </p>
    #           <p>
    #               <b>Aurora MySQL</b>
    #            </p>
    #           <p>Example: <code>5.6.10a</code>, <code>5.6.mysql_aurora.1.19.2</code>, <code>5.7.12</code>, <code>5.7.mysql_aurora.2.04.5</code>, <code>8.0.mysql_aurora.3.01.0</code>
    #            </p>
    #           <p>
    #               <b>Aurora PostgreSQL</b>
    #            </p>
    #           <p>Example: <code>9.6.3</code>, <code>10.7</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port number on which the instances in the restored DB cluster accept connections.</p>
    #           <p>Default: <code>3306</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute master_username
    #   <p>The name of the master user for the restored DB cluster.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be 1 to 16 letters or numbers.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Can't be a reserved word for the chosen database engine.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute master_user_password
    #   <p>The password for the master database user. This password can contain any printable ASCII character except "/", """, or "@".</p>
    #           <p>Constraints: Must contain from 8 to 41 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute option_group_name
    #   <p>A value that indicates that the restored DB cluster should be associated with the specified option group.</p>
    #           <p>Permanent options can't be removed from an option group. An option group can't be removed from a
    #               DB cluster once it is associated with a DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute preferred_backup_window
    #   <p>The daily time range during which automated backups are created
    #               if automated backups are enabled
    #               using the <code>BackupRetentionPeriod</code> parameter.</p>
    #           <p>The default is a 30-minute window selected at random from an
    #               8-hour block of time for each Amazon Web Services Region.
    #               To view the time blocks available, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html Aurora.Managing.Backups.BackupWindow">
    #                   Backup window</a> in the <i>Amazon Aurora User Guide</i>.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Must be in Universal Coordinated Time (UTC).</p>
    #               </li>
    #               <li>
    #                   <p>Must not conflict with the preferred maintenance window.</p>
    #               </li>
    #               <li>
    #                   <p>Must be at least 30 minutes.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute preferred_maintenance_window
    #   <p>The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p>
    #           <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #            </p>
    #           <p>The default is a 30-minute window selected at random from an
    #               8-hour block of time for each Amazon Web Services Region, occurring on a random day of the
    #               week. To see the time blocks available, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html AdjustingTheMaintenanceWindow.Aurora">
    #                   Adjusting the Preferred Maintenance Window</a> in the <i>Amazon Aurora User Guide</i>.</p>
    #           <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
    #           <p>Constraints: Minimum 30-minute window.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags.
    #             For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute storage_encrypted
    #   <p>A value that indicates whether the restored DB cluster is encrypted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services KMS key identifier for an encrypted DB cluster.</p>
    #           <p>The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.
    #               To use a KMS key in a different Amazon Web Services account, specify the key ARN or alias ARN.</p>
    #           <p>If the StorageEncrypted parameter is enabled, and you do
    #               not specify a value for the <code>KmsKeyId</code> parameter, then
    #               Amazon RDS will use your default KMS key. There is a
    #               default KMS key for your Amazon Web Services account. Your Amazon Web Services account has a different
    #               default KMS key for each Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute enable_iam_database_authentication
    #   <p>A value that indicates whether to enable mapping of Amazon Web Services Identity and Access
    #               Management (IAM) accounts to database accounts. By default, mapping isn't
    #               enabled.</p>
    #           <p>For more information, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html">
    #                   IAM Database Authentication</a> in the <i>Amazon Aurora User Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute source_engine
    #   <p>The identifier for the database engine that was backed up to create the files stored in the
    #               Amazon S3 bucket.</p>
    #           <p>Valid values: <code>mysql</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute source_engine_version
    #   <p>The version of the database that the backup files were created from.</p>
    #           <p>MySQL versions 5.5, 5.6, and 5.7 are supported.</p>
    #           <p>Example: <code>5.6.40</code>, <code>5.7.28</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket_name
    #   <p>The name of the Amazon S3 bucket that contains the data used to create the Amazon Aurora DB cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_prefix
    #   <p>The prefix for all of the file names that contain the data used to create the Amazon Aurora DB cluster.
    #           If you do not specify a <b>SourceS3Prefix</b> value, then the Amazon Aurora DB cluster is
    #           created by using all of the files in the Amazon S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_ingestion_role_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services Identity and Access Management (IAM) role that authorizes
    #           Amazon RDS to access the Amazon S3 bucket on your behalf.</p>
    #
    #   @return [String]
    #
    # @!attribute backtrack_window
    #   <p>The target backtrack window, in seconds. To disable backtracking, set this value to
    #               0.</p>
    #           <note>
    #               <p>Currently, Backtrack is only supported for Aurora MySQL DB clusters.</p>
    #           </note>
    #           <p>Default: 0</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If specified, this value must be set to a number from 0 to 259,200 (72 hours).</p>
    #               </li>
    #            </ul>
    #
    #   @return [Integer]
    #
    # @!attribute enable_cloudwatch_logs_exports
    #   <p>The list of logs that the restored DB cluster is to export to CloudWatch Logs. The values
    #               in the list depend on the DB engine being used.</p>
    #           <p>
    #               <b>Aurora MySQL</b>
    #            </p>
    #           <p>Possible values are <code>audit</code>, <code>error</code>, <code>general</code>, and <code>slowquery</code>.</p>
    #           <p>
    #               <b>Aurora PostgreSQL</b>
    #            </p>
    #           <p>Possible value is <code>postgresql</code>.</p>
    #           <p>For more information about exporting CloudWatch Logs for Amazon Aurora, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html USER_LogAccess.Procedural.UploadtoCloudWatch">Publishing Database Logs to Amazon CloudWatch Logs</a> in the <i>Amazon Aurora User Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute deletion_protection
    #   <p>A value that indicates whether the DB cluster has deletion protection enabled.
    #               The database can't be deleted when deletion protection is enabled. By default,
    #               deletion protection isn't enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute copy_tags_to_snapshot
    #   <p>A value that indicates whether to copy all tags from the restored DB cluster to snapshots of the restored DB cluster. The default is not to copy them.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute domain
    #   <p>Specify the Active Directory directory ID to restore the DB cluster in.
    #             The domain must be created prior to this operation.</p>
    #           <p>For Amazon Aurora DB clusters, Amazon RDS can use Kerberos Authentication to authenticate users that connect to the DB cluster.
    #           For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/kerberos-authentication.html">Kerberos Authentication</a>
    #           in the <i>Amazon Aurora User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_iam_role_name
    #   <p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>
    #
    #   @return [String]
    #
    # @!attribute serverless_v2_scaling_configuration
    #   <p>Contains the scaling configuration of an Aurora Serverless v2 DB cluster.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless-v2.html">Using Amazon Aurora Serverless v2</a> in the
    #               <i>Amazon Aurora User Guide</i>.</p>
    #
    #   @return [ServerlessV2ScalingConfiguration]
    #
    RestoreDBClusterFromS3Input = ::Struct.new(
      :availability_zones,
      :backup_retention_period,
      :character_set_name,
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
      :tags,
      :storage_encrypted,
      :kms_key_id,
      :enable_iam_database_authentication,
      :source_engine,
      :source_engine_version,
      :s3_bucket_name,
      :s3_prefix,
      :s3_ingestion_role_arn,
      :backtrack_window,
      :enable_cloudwatch_logs_exports,
      :deletion_protection,
      :copy_tags_to_snapshot,
      :domain,
      :domain_iam_role_name,
      :serverless_v2_scaling_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster
    #   <p>Contains the details of an Amazon Aurora DB cluster or Multi-AZ DB cluster.</p>
    #           <p>For an Amazon Aurora DB cluster, this data type is used as a response element in the operations
    #             <code>CreateDBCluster</code>, <code>DeleteDBCluster</code>, <code>DescribeDBClusters</code>,
    #             <code>FailoverDBCluster</code>, <code>ModifyDBCluster</code>, <code>PromoteReadReplicaDBCluster</code>,
    #             <code>RestoreDBClusterFromS3</code>, <code>RestoreDBClusterFromSnapshot</code>,
    #             <code>RestoreDBClusterToPointInTime</code>, <code>StartDBCluster</code>, and <code>StopDBCluster</code>.</p>
    #           <p>For a Multi-AZ DB cluster, this data type is used as a response element in the operations
    #             <code>CreateDBCluster</code>, <code>DeleteDBCluster</code>, <code>DescribeDBClusters</code>,
    #             <code>FailoverDBCluster</code>, <code>ModifyDBCluster</code>, <code>RebootDBCluster</code>,
    #             <code>RestoreDBClusterFromSnapshot</code>, and <code>RestoreDBClusterToPointInTime</code>.</p>
    #           <p>For more information on Amazon Aurora DB clusters, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html">
    #                 What is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i>
    #            </p>
    #           <p>For more information on Multi-AZ DB clusters, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html">
    #                 Multi-AZ deployments with two readable standby DB instances</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [DBCluster]
    #
    RestoreDBClusterFromS3Output = ::Struct.new(
      :db_cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute availability_zones
    #   <p>Provides the list of Availability Zones (AZs) where instances in the restored DB
    #               cluster can be created.</p>
    #           <p>Valid for: Aurora DB clusters only</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute db_cluster_identifier
    #   <p>The name of the DB cluster to create from the DB snapshot or DB cluster snapshot.
    #               This parameter isn't case-sensitive.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain from 1 to 63 letters, numbers, or hyphens</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                   <p>Can't end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>my-snapshot-id</code>
    #            </p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_identifier
    #   <p>The identifier for the DB snapshot or DB cluster snapshot to restore from.</p>
    #           <p>You can use either the name or the Amazon Resource Name (ARN) to specify a DB
    #               cluster snapshot. However, you can use only the ARN to specify a DB snapshot.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must match the identifier of an existing Snapshot.</p>
    #               </li>
    #            </ul>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [String]
    #
    # @!attribute engine
    #   <p>The database engine to use for the new DB cluster.</p>
    #           <p>Default: The same as source</p>
    #           <p>Constraint: Must be compatible with the engine of the source</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The version of the database engine to use for the new DB cluster.</p>
    #           <p>To list all of the available engine versions for MySQL 5.6-compatible Aurora, use the following command:</p>
    #           <p>
    #               <code>aws rds describe-db-engine-versions --engine aurora --query "DBEngineVersions[].EngineVersion"</code>
    #            </p>
    #           <p>To list all of the available engine versions for MySQL 5.7-compatible and MySQL 8.0-compatible Aurora, use the following command:</p>
    #           <p>
    #               <code>aws rds describe-db-engine-versions --engine aurora-mysql --query "DBEngineVersions[].EngineVersion"</code>
    #            </p>
    #           <p>To list all of the available engine versions for Aurora PostgreSQL, use the following command:</p>
    #           <p>
    #               <code>aws rds describe-db-engine-versions --engine aurora-postgresql --query "DBEngineVersions[].EngineVersion"</code>
    #            </p>
    #           <p>To list all of the available engine versions for RDS for MySQL, use the following command:</p>
    #           <p>
    #               <code>aws rds describe-db-engine-versions --engine mysql --query "DBEngineVersions[].EngineVersion"</code>
    #            </p>
    #           <p>To list all of the available engine versions for RDS for PostgreSQL, use the following command:</p>
    #           <p>
    #               <code>aws rds describe-db-engine-versions --engine postgres --query "DBEngineVersions[].EngineVersion"</code>
    #            </p>
    #           <p>
    #               <b>Aurora MySQL</b>
    #            </p>
    #           <p>See <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Updates.html">MySQL on Amazon RDS Versions</a> in the
    #             <i>Amazon Aurora User Guide</i>.</p>
    #           <p>
    #               <b>Aurora PostgreSQL</b>
    #            </p>
    #           <p>See <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraPostgreSQL.Updates.20180305.html">Amazon Aurora PostgreSQL releases and engine versions</a> in the
    #             <i>Amazon Aurora User Guide</i>.</p>
    #           <p>
    #               <b>MySQL</b>
    #            </p>
    #           <p>See <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MySQL.html MySQL.Concepts.VersionMgmt">MySQL on Amazon RDS Versions</a> in the
    #             <i>Amazon RDS User Guide.</i>
    #            </p>
    #           <p>
    #               <b>PostgreSQL</b>
    #            </p>
    #           <p>See <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_PostgreSQL.html PostgreSQL.Concepts">Amazon RDS for PostgreSQL versions and extensions</a> in the
    #             <i>Amazon RDS User Guide.</i>
    #            </p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port number on which the new DB cluster accepts connections.</p>
    #           <p>Constraints: This value must be <code>1150-65535</code>
    #            </p>
    #           <p>Default: The same port as the original DB cluster.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [Integer]
    #
    # @!attribute db_subnet_group_name
    #   <p>The name of the DB subnet group to use for the new DB cluster.</p>
    #           <p>Constraints: If supplied, must match the name of an existing DB subnet group.</p>
    #           <p>Example: <code>mydbsubnetgroup</code>
    #            </p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [String]
    #
    # @!attribute database_name
    #   <p>The database name for the restored DB cluster.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [String]
    #
    # @!attribute option_group_name
    #   <p>The name of the option group to use for the restored DB cluster.</p>
    #           <p>DB clusters are associated with a default option group that can't be modified.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_security_group_ids
    #   <p>A list of VPC security groups that the new DB cluster will belong to.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>The tags to be assigned to the restored DB cluster.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services KMS key identifier to use when restoring an encrypted DB cluster from a DB
    #               snapshot or DB cluster snapshot.</p>
    #           <p>The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.
    #             To use a KMS key in a different Amazon Web Services account, specify the key ARN or alias ARN.</p>
    #           <p>When you don't specify a value for the <code>KmsKeyId</code> parameter, then the
    #               following occurs:</p>
    #           <ul>
    #               <li>
    #                   <p>If the DB snapshot or DB cluster snapshot in
    #                       <code>SnapshotIdentifier</code> is encrypted, then the restored DB cluster
    #                       is encrypted using the KMS key that was used to encrypt the DB snapshot or DB
    #                       cluster snapshot.</p>
    #               </li>
    #               <li>
    #                   <p>If the DB snapshot or DB cluster snapshot in
    #                       <code>SnapshotIdentifier</code> isn't encrypted, then the restored DB cluster
    #                       isn't encrypted.</p>
    #               </li>
    #            </ul>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [String]
    #
    # @!attribute enable_iam_database_authentication
    #   <p>A value that indicates whether to enable mapping of Amazon Web Services Identity and Access
    #               Management (IAM) accounts to database accounts. By default, mapping isn't
    #               enabled.</p>
    #           <p>For more information, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html">
    #                   IAM Database Authentication</a> in the <i>Amazon Aurora User Guide</i>.</p>
    #           <p>Valid for: Aurora DB clusters only</p>
    #
    #   @return [Boolean]
    #
    # @!attribute backtrack_window
    #   <p>The target backtrack window, in seconds. To disable backtracking, set this value to
    #               0.</p>
    #           <note>
    #               <p>Currently, Backtrack is only supported for Aurora MySQL DB clusters.</p>
    #           </note>
    #           <p>Default: 0</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If specified, this value must be set to a number from 0 to 259,200 (72 hours).</p>
    #               </li>
    #            </ul>
    #           <p>Valid for: Aurora DB clusters only</p>
    #
    #   @return [Integer]
    #
    # @!attribute enable_cloudwatch_logs_exports
    #   <p>The list of logs that the restored DB cluster is to export to Amazon CloudWatch Logs.
    #               The values in the list depend on the DB engine being used.</p>
    #           <p>
    #               <b>RDS for MySQL</b>
    #            </p>
    #           <p>Possible values are <code>error</code>, <code>general</code>, and <code>slowquery</code>.</p>
    #           <p>
    #               <b>RDS for PostgreSQL</b>
    #            </p>
    #           <p>Possible values are <code>postgresql</code> and <code>upgrade</code>.</p>
    #           <p>
    #               <b>Aurora MySQL</b>
    #            </p>
    #           <p>Possible values are <code>audit</code>, <code>error</code>, <code>general</code>, and <code>slowquery</code>.</p>
    #           <p>
    #               <b>Aurora PostgreSQL</b>
    #            </p>
    #           <p>Possible value is <code>postgresql</code>.</p>
    #           <p>For more information about exporting CloudWatch Logs for Amazon RDS, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html USER_LogAccess.Procedural.UploadtoCloudWatch">Publishing Database Logs to Amazon CloudWatch Logs</a> in the <i>Amazon RDS User Guide.</i>.</p>
    #           <p>For more information about exporting CloudWatch Logs for Amazon Aurora, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html USER_LogAccess.Procedural.UploadtoCloudWatch">Publishing Database Logs to Amazon CloudWatch Logs</a> in the <i>Amazon Aurora User Guide</i>.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute engine_mode
    #   <p>The DB engine mode of the DB cluster, either <code>provisioned</code>, <code>serverless</code>,
    #               <code>parallelquery</code>, <code>global</code>, or <code>multimaster</code>.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBCluster.html">
    #               CreateDBCluster</a>.</p>
    #           <p>Valid for: Aurora DB clusters only</p>
    #
    #   @return [String]
    #
    # @!attribute scaling_configuration
    #   <p>For DB clusters in <code>serverless</code> DB engine mode, the scaling properties of the DB cluster.</p>
    #           <p>Valid for: Aurora DB clusters only</p>
    #
    #   @return [ScalingConfiguration]
    #
    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group to associate with this DB cluster. If this
    #               argument is omitted, the default DB cluster parameter group for the specified engine is
    #               used.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If supplied, must match the name of an existing default DB cluster parameter group.</p>
    #               </li>
    #               <li>
    #                   <p>Must be 1 to 255 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [String]
    #
    # @!attribute deletion_protection
    #   <p>A value that indicates whether the DB cluster has deletion protection enabled.
    #               The database can't be deleted when deletion protection is enabled. By default,
    #               deletion protection isn't enabled.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [Boolean]
    #
    # @!attribute copy_tags_to_snapshot
    #   <p>A value that indicates whether to copy all tags from the restored DB cluster to snapshots of the restored DB cluster. The default is not to copy them.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [Boolean]
    #
    # @!attribute domain
    #   <p>Specify the Active Directory directory ID to restore the DB cluster in.
    #              The domain must be created prior to this operation. Currently, only MySQL, Microsoft SQL
    #              Server, Oracle, and PostgreSQL DB instances can be created in an Active Directory Domain.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html">
    #               Kerberos Authentication</a> in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>Valid for: Aurora DB clusters only</p>
    #
    #   @return [String]
    #
    # @!attribute domain_iam_role_name
    #   <p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>
    #           <p>Valid for: Aurora DB clusters only</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_instance_class
    #   <p>The compute and memory capacity of the each DB instance in the Multi-AZ DB cluster, for example db.m6g.xlarge.
    #               Not all DB instance classes are available in all Amazon Web Services Regions, or for all database engines.</p>
    #           <p>For the full list of DB instance classes, and availability for your engine, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html">DB Instance Class</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #           <p>Valid for: Multi-AZ DB clusters only</p>
    #
    #   @return [String]
    #
    # @!attribute storage_type
    #   <p>Specifies the storage type to be associated with the each DB instance in the Multi-AZ DB cluster.</p>
    #           <p>Valid values: <code>io1</code>
    #            </p>
    #           <p>When specified, a value for the <code>Iops</code> parameter is required.</p>
    #           <p>Default: <code>io1</code>
    #            </p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [String]
    #
    # @!attribute iops
    #   <p>The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for
    #               each DB instance in the Multi-AZ DB cluster.</p>
    #           <p>For information about valid Iops values, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html USER_PIOPS">Amazon RDS Provisioned IOPS Storage to Improve Performance</a> in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>Constraints: Must be a multiple between .5 and 50 of the storage amount for the DB instance.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [Integer]
    #
    # @!attribute publicly_accessible
    #   <p>A value that indicates whether the DB cluster is publicly accessible.</p>
    #           <p>When the DB cluster is publicly accessible, its Domain Name System (DNS) endpoint resolves to the private IP address
    #               from within the DB cluster's virtual private cloud (VPC). It resolves to the public IP address from outside of the DB cluster's VPC.
    #               Access to the DB cluster is ultimately controlled by the security group it uses.
    #               That public access is not permitted if the security group assigned to the DB cluster doesn't permit it.</p>
    #           <p>When the DB cluster isn't publicly accessible, it is an internal DB cluster with a DNS name that resolves to a private IP address.</p>
    #           <p>Default: The default behavior varies depending on whether <code>DBSubnetGroupName</code> is specified.</p>
    #           <p>If <code>DBSubnetGroupName</code> isn't specified, and <code>PubliclyAccessible</code> isn't specified, the following applies:</p>
    #           <ul>
    #               <li>
    #                   <p>If the default VPC in the target Region doesn’t have an internet gateway attached to it, the DB cluster is private.</p>
    #               </li>
    #               <li>
    #                   <p>If the default VPC in the target Region has an internet gateway attached to it, the DB cluster is public.</p>
    #               </li>
    #            </ul>
    #           <p>If <code>DBSubnetGroupName</code> is specified, and <code>PubliclyAccessible</code> isn't specified, the following applies:</p>
    #           <ul>
    #               <li>
    #                   <p>If the subnets are part of a VPC that doesn’t have an internet gateway attached to it, the DB cluster is private.</p>
    #               </li>
    #               <li>
    #                   <p>If the subnets are part of a VPC that has an internet gateway attached to it, the DB cluster is public.</p>
    #               </li>
    #            </ul>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [Boolean]
    #
    # @!attribute serverless_v2_scaling_configuration
    #   <p>Contains the scaling configuration of an Aurora Serverless v2 DB cluster.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless-v2.html">Using Amazon Aurora Serverless v2</a> in the
    #               <i>Amazon Aurora User Guide</i>.</p>
    #
    #   @return [ServerlessV2ScalingConfiguration]
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
      :backtrack_window,
      :enable_cloudwatch_logs_exports,
      :engine_mode,
      :scaling_configuration,
      :db_cluster_parameter_group_name,
      :deletion_protection,
      :copy_tags_to_snapshot,
      :domain,
      :domain_iam_role_name,
      :db_cluster_instance_class,
      :storage_type,
      :iops,
      :publicly_accessible,
      :serverless_v2_scaling_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster
    #   <p>Contains the details of an Amazon Aurora DB cluster or Multi-AZ DB cluster.</p>
    #           <p>For an Amazon Aurora DB cluster, this data type is used as a response element in the operations
    #             <code>CreateDBCluster</code>, <code>DeleteDBCluster</code>, <code>DescribeDBClusters</code>,
    #             <code>FailoverDBCluster</code>, <code>ModifyDBCluster</code>, <code>PromoteReadReplicaDBCluster</code>,
    #             <code>RestoreDBClusterFromS3</code>, <code>RestoreDBClusterFromSnapshot</code>,
    #             <code>RestoreDBClusterToPointInTime</code>, <code>StartDBCluster</code>, and <code>StopDBCluster</code>.</p>
    #           <p>For a Multi-AZ DB cluster, this data type is used as a response element in the operations
    #             <code>CreateDBCluster</code>, <code>DeleteDBCluster</code>, <code>DescribeDBClusters</code>,
    #             <code>FailoverDBCluster</code>, <code>ModifyDBCluster</code>, <code>RebootDBCluster</code>,
    #             <code>RestoreDBClusterFromSnapshot</code>, and <code>RestoreDBClusterToPointInTime</code>.</p>
    #           <p>For more information on Amazon Aurora DB clusters, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html">
    #                 What is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i>
    #            </p>
    #           <p>For more information on Multi-AZ DB clusters, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html">
    #                 Multi-AZ deployments with two readable standby DB instances</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [DBCluster]
    #
    RestoreDBClusterFromSnapshotOutput = ::Struct.new(
      :db_cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_cluster_identifier
    #   <p>The name of the new DB cluster to be created.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain from 1 to 63 letters, numbers, or hyphens</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                   <p>Can't end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [String]
    #
    # @!attribute restore_type
    #   <p>The type of restore to be performed. You can specify one of the following values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>full-copy</code> - The new DB cluster is restored as a full copy of the
    #                   source DB cluster.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>copy-on-write</code> - The new DB cluster is restored as a clone of the
    #                   source DB cluster.</p>
    #               </li>
    #            </ul>
    #           <p>Constraints: You can't specify <code>copy-on-write</code> if the engine version of the source DB cluster is earlier than 1.11.</p>
    #           <p>If you don't specify a <code>RestoreType</code> value, then the new DB cluster is
    #               restored as a full copy of the source DB cluster.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [String]
    #
    # @!attribute source_db_cluster_identifier
    #   <p>The identifier of the source DB cluster from which to restore.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must match the identifier of an existing DBCluster.</p>
    #               </li>
    #            </ul>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [String]
    #
    # @!attribute restore_to_time
    #   <p>The date and time to restore the DB cluster to.</p>
    #           <p>Valid Values: Value must be a time in Universal Coordinated Time (UTC) format</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be before the latest restorable time for the DB instance</p>
    #               </li>
    #               <li>
    #                   <p>Must be specified if <code>UseLatestRestorableTime</code> parameter isn't provided</p>
    #               </li>
    #               <li>
    #                   <p>Can't be specified if the <code>UseLatestRestorableTime</code> parameter is enabled</p>
    #               </li>
    #               <li>
    #                   <p>Can't be specified if the <code>RestoreType</code> parameter is <code>copy-on-write</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>2015-03-07T23:45:00Z</code>
    #            </p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [Time]
    #
    # @!attribute use_latest_restorable_time
    #   <p>A value that indicates whether to restore the DB cluster to the latest
    #               restorable backup time. By default, the DB cluster isn't restored to the latest
    #               restorable backup time.</p>
    #           <p>Constraints: Can't be specified if <code>RestoreToTime</code> parameter is provided.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [Boolean]
    #
    # @!attribute port
    #   <p>The port number on which the new DB cluster accepts connections.</p>
    #           <p>Constraints: A value from <code>1150-65535</code>.</p>
    #           <p>Default: The default port for the engine.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [Integer]
    #
    # @!attribute db_subnet_group_name
    #   <p>The DB subnet group name to use for the new DB cluster.</p>
    #           <p>Constraints: If supplied, must match the name of an existing DBSubnetGroup.</p>
    #           <p>Example: <code>mydbsubnetgroup</code>
    #            </p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [String]
    #
    # @!attribute option_group_name
    #   <p>The name of the option group for the new DB cluster.</p>
    #           <p>DB clusters are associated with a default option group that can't be modified.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_security_group_ids
    #   <p>A list of VPC security groups that the new DB cluster belongs to.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>A list of tags.
    #             For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services KMS key identifier to use when restoring an encrypted DB cluster from an encrypted DB cluster.</p>
    #           <p>The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.
    #             To use a KMS key in a different Amazon Web Services account, specify the key ARN or alias ARN.</p>
    #           <p>You can restore to a new DB cluster and encrypt the new DB cluster with a KMS key that is different from the
    #             KMS key used to encrypt the source DB cluster. The new DB cluster is encrypted with the KMS key
    #             identified by the <code>KmsKeyId</code> parameter.</p>
    #           <p>If you don't specify a value for the <code>KmsKeyId</code> parameter, then the following occurs:</p>
    #           <ul>
    #               <li>
    #                   <p>If the DB cluster is encrypted, then the restored DB cluster is encrypted using the KMS key that was used to encrypt the source DB cluster.</p>
    #               </li>
    #               <li>
    #                   <p>If the DB cluster isn't encrypted, then the restored DB cluster isn't encrypted.</p>
    #               </li>
    #            </ul>
    #           <p>If <code>DBClusterIdentifier</code> refers to a DB cluster that isn't encrypted, then the restore request
    #         is rejected.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [String]
    #
    # @!attribute enable_iam_database_authentication
    #   <p>A value that indicates whether to enable mapping of Amazon Web Services Identity and Access
    #               Management (IAM) accounts to database accounts. By default, mapping isn't
    #               enabled.</p>
    #           <p>For more information, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html">
    #                   IAM Database Authentication</a> in the <i>Amazon Aurora User Guide</i>.</p>
    #           <p>Valid for: Aurora DB clusters only</p>
    #
    #   @return [Boolean]
    #
    # @!attribute backtrack_window
    #   <p>The target backtrack window, in seconds. To disable backtracking, set this value to
    #               0.</p>
    #           <p>Default: 0</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If specified, this value must be set to a number from 0 to 259,200 (72 hours).</p>
    #               </li>
    #            </ul>
    #           <p>Valid for: Aurora MySQL DB clusters only</p>
    #
    #   @return [Integer]
    #
    # @!attribute enable_cloudwatch_logs_exports
    #   <p>The list of logs that the restored DB cluster is to export to CloudWatch Logs. The values
    #               in the list depend on the DB engine being used.</p>
    #           <p>
    #               <b>RDS for MySQL</b>
    #            </p>
    #           <p>Possible values are <code>error</code>, <code>general</code>, and <code>slowquery</code>.</p>
    #           <p>
    #               <b>RDS for PostgreSQL</b>
    #            </p>
    #           <p>Possible values are <code>postgresql</code> and <code>upgrade</code>.</p>
    #           <p>
    #               <b>Aurora MySQL</b>
    #            </p>
    #           <p>Possible values are <code>audit</code>, <code>error</code>, <code>general</code>, and <code>slowquery</code>.</p>
    #           <p>
    #               <b>Aurora PostgreSQL</b>
    #            </p>
    #           <p>Possible value is <code>postgresql</code>.</p>
    #           <p>For more information about exporting CloudWatch Logs for Amazon RDS, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html USER_LogAccess.Procedural.UploadtoCloudWatch">Publishing Database Logs to Amazon CloudWatch Logs</a> in the <i>Amazon RDS User Guide.</i>.</p>
    #           <p>For more information about exporting CloudWatch Logs for Amazon Aurora, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html USER_LogAccess.Procedural.UploadtoCloudWatch">Publishing Database Logs to Amazon CloudWatch Logs</a> in the <i>Amazon Aurora User Guide</i>.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute db_cluster_parameter_group_name
    #   <p>The name of the DB cluster parameter group to associate with this DB cluster.
    #               If this argument is omitted, the default DB cluster parameter group for the specified engine is used.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If supplied, must match the name of an existing DB cluster parameter group.</p>
    #               </li>
    #               <li>
    #                   <p>Must be 1 to 255 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [String]
    #
    # @!attribute deletion_protection
    #   <p>A value that indicates whether the DB cluster has deletion protection enabled.
    #               The database can't be deleted when deletion protection is enabled. By default,
    #               deletion protection isn't enabled.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [Boolean]
    #
    # @!attribute copy_tags_to_snapshot
    #   <p>A value that indicates whether to copy all tags from the restored DB cluster to snapshots of the restored DB cluster. The default is not to copy them.</p>
    #           <p>Valid for: Aurora DB clusters and Multi-AZ DB clusters</p>
    #
    #   @return [Boolean]
    #
    # @!attribute domain
    #   <p>Specify the Active Directory directory ID to restore the DB cluster in.
    #             The domain must be created prior to this operation.</p>
    #           <p>For Amazon Aurora DB clusters, Amazon RDS can use Kerberos Authentication to authenticate users that connect to the DB cluster.
    #           For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/kerberos-authentication.html">Kerberos Authentication</a>
    #           in the <i>Amazon Aurora User Guide</i>.</p>
    #           <p>Valid for: Aurora DB clusters only</p>
    #
    #   @return [String]
    #
    # @!attribute domain_iam_role_name
    #   <p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>
    #           <p>Valid for: Aurora DB clusters only</p>
    #
    #   @return [String]
    #
    # @!attribute scaling_configuration
    #   <p>For DB clusters in <code>serverless</code> DB engine mode, the scaling properties of the DB cluster.</p>
    #           <p>Valid for: Aurora DB clusters only</p>
    #
    #   @return [ScalingConfiguration]
    #
    # @!attribute engine_mode
    #   <p>The engine mode of the new cluster. Specify <code>provisioned</code> or <code>serverless</code>,
    #         depending on the type of the cluster you are creating. You can create an Aurora Serverless v1 clone
    #         from a provisioned cluster, or a provisioned clone from an Aurora Serverless v1 cluster. To create a clone
    #         that is an Aurora Serverless v1 cluster, the original cluster must be an Aurora Serverless v1 cluster or
    #         an encrypted provisioned cluster.</p>
    #           <p>Valid for: Aurora DB clusters only</p>
    #
    #   @return [String]
    #
    # @!attribute db_cluster_instance_class
    #   <p>The compute and memory capacity of the each DB instance in the Multi-AZ DB cluster,
    #               for example db.m6g.xlarge. Not all DB instance classes are available in all Amazon Web Services
    #               Regions, or for all database engines.</p>
    #           <p>For the full list of DB instance classes, and availability for your engine, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html">DB instance class</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #           <p>Valid for: Multi-AZ DB clusters only</p>
    #
    #   @return [String]
    #
    # @!attribute storage_type
    #   <p>Specifies the storage type to be associated with the each DB instance in the Multi-AZ DB cluster.</p>
    #           <p>Valid values: <code>io1</code>
    #            </p>
    #           <p>When specified, a value for the <code>Iops</code> parameter is required.</p>
    #           <p>Default: <code>io1</code>
    #            </p>
    #           <p>Valid for: Multi-AZ DB clusters only</p>
    #
    #   @return [String]
    #
    # @!attribute publicly_accessible
    #   <p>A value that indicates whether the DB cluster is publicly accessible.</p>
    #           <p>When the DB cluster is publicly accessible, its Domain Name System (DNS) endpoint resolves to the private IP address
    #               from within the DB cluster's virtual private cloud (VPC). It resolves
    #               to the public IP address from outside of the DB cluster's VPC.
    #               Access to the DB cluster is ultimately controlled by the security group it uses.
    #               That public access is not permitted if the security group assigned to the DB cluster doesn't permit it.</p>
    #           <p>When the DB cluster isn't publicly accessible, it is an internal DB cluster with a DNS name that resolves to a private IP address.</p>
    #           <p>Default: The default behavior varies depending on whether <code>DBSubnetGroupName</code> is specified.</p>
    #           <p>If <code>DBSubnetGroupName</code> isn't specified, and <code>PubliclyAccessible</code> isn't specified, the following applies:</p>
    #           <ul>
    #               <li>
    #                   <p>If the default VPC in the target Region doesn’t have an internet gateway attached to it, the DB cluster is private.</p>
    #               </li>
    #               <li>
    #                   <p>If the default VPC in the target Region has an internet gateway attached to it, the DB cluster is public.</p>
    #               </li>
    #            </ul>
    #           <p>If <code>DBSubnetGroupName</code> is specified, and <code>PubliclyAccessible</code> isn't specified, the following applies:</p>
    #           <ul>
    #               <li>
    #                   <p>If the subnets are part of a VPC that doesn’t have an internet gateway attached to it, the DB cluster is private.</p>
    #               </li>
    #               <li>
    #                   <p>If the subnets are part of a VPC that has an internet gateway attached to it, the DB cluster is public.</p>
    #               </li>
    #            </ul>
    #           <p>Valid for: Multi-AZ DB clusters only</p>
    #
    #   @return [Boolean]
    #
    # @!attribute iops
    #   <p>The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for
    #               each DB instance in the Multi-AZ DB cluster.</p>
    #           <p>For information about valid <code>Iops</code> values, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html USER_PIOPS">Amazon RDS Provisioned IOPS storage to improve performance</a> in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>Constraints: Must be a multiple between .5 and 50 of the storage amount for the DB instance.</p>
    #           <p>Valid for: Multi-AZ DB clusters only</p>
    #
    #   @return [Integer]
    #
    # @!attribute serverless_v2_scaling_configuration
    #   <p>Contains the scaling configuration of an Aurora Serverless v2 DB cluster.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless-v2.html">Using Amazon Aurora Serverless v2</a> in the
    #               <i>Amazon Aurora User Guide</i>.</p>
    #
    #   @return [ServerlessV2ScalingConfiguration]
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
      :backtrack_window,
      :enable_cloudwatch_logs_exports,
      :db_cluster_parameter_group_name,
      :deletion_protection,
      :copy_tags_to_snapshot,
      :domain,
      :domain_iam_role_name,
      :scaling_configuration,
      :engine_mode,
      :db_cluster_instance_class,
      :storage_type,
      :publicly_accessible,
      :iops,
      :serverless_v2_scaling_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.use_latest_restorable_time ||= false
      end
    end

    # @!attribute db_cluster
    #   <p>Contains the details of an Amazon Aurora DB cluster or Multi-AZ DB cluster.</p>
    #           <p>For an Amazon Aurora DB cluster, this data type is used as a response element in the operations
    #             <code>CreateDBCluster</code>, <code>DeleteDBCluster</code>, <code>DescribeDBClusters</code>,
    #             <code>FailoverDBCluster</code>, <code>ModifyDBCluster</code>, <code>PromoteReadReplicaDBCluster</code>,
    #             <code>RestoreDBClusterFromS3</code>, <code>RestoreDBClusterFromSnapshot</code>,
    #             <code>RestoreDBClusterToPointInTime</code>, <code>StartDBCluster</code>, and <code>StopDBCluster</code>.</p>
    #           <p>For a Multi-AZ DB cluster, this data type is used as a response element in the operations
    #             <code>CreateDBCluster</code>, <code>DeleteDBCluster</code>, <code>DescribeDBClusters</code>,
    #             <code>FailoverDBCluster</code>, <code>ModifyDBCluster</code>, <code>RebootDBCluster</code>,
    #             <code>RestoreDBClusterFromSnapshot</code>, and <code>RestoreDBClusterToPointInTime</code>.</p>
    #           <p>For more information on Amazon Aurora DB clusters, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html">
    #                 What is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i>
    #            </p>
    #           <p>For more information on Multi-AZ DB clusters, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html">
    #                 Multi-AZ deployments with two readable standby DB instances</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [DBCluster]
    #
    RestoreDBClusterToPointInTimeOutput = ::Struct.new(
      :db_cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_instance_identifier
    #   <p>Name of the DB instance to create from the DB snapshot. This parameter isn't case-sensitive.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain from 1 to 63 numbers, letters, or hyphens</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                   <p>Can't end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>my-snapshot-id</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute db_snapshot_identifier
    #   <p>The identifier for the DB snapshot to restore from.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must match the identifier of an existing DBSnapshot.</p>
    #               </li>
    #               <li>
    #                   <p>If you are restoring from a shared manual DB snapshot, the <code>DBSnapshotIdentifier</code>
    #                 must be the ARN of the shared DB snapshot.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute db_instance_class
    #   <p>The compute and memory capacity of the Amazon RDS DB instance, for example db.m4.large.
    #             Not all DB instance classes are available in all Amazon Web Services Regions, or for all database engines.
    #             For the full list of DB instance classes,
    #             and availability for your engine, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html">DB Instance Class</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #           <p>Default: The same DBInstanceClass as the original DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port number on which the database accepts connections.</p>
    #           <p>Default: The same port as the original DB instance</p>
    #           <p>Constraints: Value must be <code>1150-65535</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute availability_zone
    #   <p>The Availability Zone (AZ) where the DB instance will be created.</p>
    #           <p>Default: A random, system-chosen Availability Zone.</p>
    #           <p>Constraint: You can't specify the <code>AvailabilityZone</code> parameter if the DB instance is a Multi-AZ deployment.</p>
    #           <p>Example: <code>us-east-1a</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute db_subnet_group_name
    #   <p>The DB subnet group name to use for the new instance.</p>
    #           <p>Constraints: If supplied, must match the name of an existing DBSubnetGroup.</p>
    #           <p>Example: <code>mydbsubnetgroup</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute multi_az
    #   <p>A value that indicates whether the DB instance is a Multi-AZ deployment.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #           <p>Constraint: You can't specify the <code>AvailabilityZone</code> parameter if the DB instance is a Multi-AZ deployment.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute publicly_accessible
    #   <p>A value that indicates whether the DB instance is publicly accessible.</p>
    #           <p>When the DB instance is publicly accessible, its Domain Name System (DNS) endpoint resolves to the private IP address
    #             from within the DB instance's virtual private cloud (VPC).
    #             It resolves to the public IP address from outside of the DB instance's VPC. Access to the DB instance is ultimately controlled
    #             by the security group it uses. That public access is not permitted if the security group assigned to the DB instance doesn't permit it.</p>
    #           <p>When the DB instance isn't publicly accessible, it is an internal DB instance with a DNS name that resolves to a private IP address.</p>
    #           <p>For more information, see <a>CreateDBInstance</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute auto_minor_version_upgrade
    #   <p>A value that indicates whether minor version upgrades are applied automatically to the DB instance
    #             during the maintenance window.</p>
    #           <p>If you restore an RDS Custom DB instance, you must disable this parameter.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute license_model
    #   <p>License model information for the restored DB instance.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #           <p>Default: Same as source.</p>
    #           <p>Valid values:  <code>license-included</code> | <code>bring-your-own-license</code> | <code>general-public-license</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute db_name
    #   <p>The database name for the restored DB instance.</p>
    #           <p>This parameter doesn't apply to the MySQL, PostgreSQL, or MariaDB engines. It also doesn't apply to RDS
    #             Custom DB instances.</p>
    #
    #   @return [String]
    #
    # @!attribute engine
    #   <p>The database engine to use for the new instance.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #           <p>Default: The same as source</p>
    #           <p>Constraint: Must be compatible with the engine of the source. For example, you can restore a MariaDB 10.1 DB instance from a MySQL 5.6 snapshot.</p>
    #           <p>Valid Values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>mariadb</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>mysql</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-ee</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-ee-cdb</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-se2</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-se2-cdb</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>postgres</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-ee</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-se</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-ex</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-web</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute iops
    #   <p>Specifies the amount of provisioned IOPS for the DB instance, expressed in I/O operations per second.
    #             If this parameter isn't specified, the IOPS value is taken from the backup.
    #             If this parameter is set to 0, the new instance is converted to a non-PIOPS instance.
    #             The conversion takes additional time, though your DB instance is available for connections before the conversion starts.</p>
    #           <p>The provisioned IOPS value must follow the requirements for your database engine.
    #             For more information, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html USER_PIOPS">Amazon RDS Provisioned IOPS Storage to Improve Performance</a>
    #             in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #           <p>Constraints: Must be an integer greater than 1000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute option_group_name
    #   <p>The name of the option group to be used for the restored DB instance.</p>
    #
    #
    #           <p>Permanent options, such as the TDE option for Oracle Advanced Security TDE, can't be removed from an option
    #           group, and that option group can't be removed from a DB instance after it is associated with a DB instance.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags.
    #             For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute storage_type
    #   <p>Specifies the storage type to be associated with the DB instance.</p>
    #           <p>Valid values: <code>standard | gp2 | io1</code>
    #            </p>
    #           <p>If you specify <code>io1</code>, you must also include a value for the
    #               <code>Iops</code> parameter.</p>
    #           <p>Default: <code>io1</code> if the <code>Iops</code> parameter
    #               is specified, otherwise <code>gp2</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute tde_credential_arn
    #   <p>The ARN from the key store with which to associate the instance for TDE encryption.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute tde_credential_password
    #   <p>The password for the given ARN from the key store in order to access the device.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_security_group_ids
    #   <p>A list of EC2 VPC security groups to associate with this DB instance.</p>
    #           <p>Default: The default EC2 VPC security group for the DB subnet group's VPC.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute domain
    #   <p>Specify the Active Directory directory ID to restore the DB instance in.
    #              The domain/ must be created prior to this operation. Currently, you can create only MySQL, Microsoft SQL
    #              Server, Oracle, and PostgreSQL DB instances in an Active Directory Domain.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html">
    #              Kerberos Authentication</a> in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute copy_tags_to_snapshot
    #   <p>A value that indicates whether to copy all tags from the restored DB instance to snapshots of the DB instance.</p>
    #           <p>In most cases, tags aren't copied by default. However, when you restore a DB instance from a DB snapshot, RDS checks whether you
    #             specify new tags. If yes, the new tags are added to the restored DB instance. If there are no new tags, RDS looks for the tags from
    #             the source DB instance for the DB snapshot, and then adds those tags to the restored DB instance.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html USER_Tagging.CopyTags">
    #             Copying tags to DB instance snapshots</a> in the <i>Amazon RDS User Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute domain_iam_role_name
    #   <p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute enable_iam_database_authentication
    #   <p>A value that indicates whether to enable mapping of Amazon Web Services Identity and Access
    #             Management (IAM) accounts to database accounts. By default, mapping is disabled.</p>
    #           <p>For more information about IAM database authentication, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html">
    #                 IAM Database Authentication for MySQL and PostgreSQL</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_cloudwatch_logs_exports
    #   <p>The list of logs that the restored DB instance is to export to CloudWatch Logs. The values
    #               in the list depend on the DB engine being used. For more information, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html USER_LogAccess.Procedural.UploadtoCloudWatch">Publishing Database Logs to Amazon CloudWatch Logs</a> in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute processor_features
    #   <p>The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [Array<ProcessorFeature>]
    #
    # @!attribute use_default_processor_features
    #   <p>A value that indicates whether the DB instance class of the DB instance uses its default
    #               processor features.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute db_parameter_group_name
    #   <p>The name of the DB parameter group to associate with this DB instance.</p>
    #           <p>If you don't specify a value for <code>DBParameterGroupName</code>, then RDS uses the default <code>DBParameterGroup</code>
    #               for the specified DB engine.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If supplied, must match the name of an existing DBParameterGroup.</p>
    #               </li>
    #               <li>
    #                   <p>Must be 1 to 255 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute deletion_protection
    #   <p>A value that indicates whether the DB instance has deletion protection enabled.
    #               The database can't be deleted when deletion protection is enabled. By default,
    #               deletion protection isn't enabled. For more information, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html">
    #                   Deleting a DB Instance</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_customer_owned_ip
    #   <p>A value that indicates whether to enable a customer-owned IP address (CoIP) for an RDS on Outposts DB instance.</p>
    #           <p>A <i>CoIP</i> provides local or external connectivity to resources in
    #               your Outpost subnets through your on-premises network. For some use cases, a CoIP can
    #               provide lower latency for connections to the DB instance from outside of its virtual
    #               private cloud (VPC) on your local network.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #           <p>For more information about RDS on Outposts, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html">Working with Amazon RDS on Amazon Web Services Outposts</a>
    #               in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>For more information about CoIPs, see <a href="https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html ip-addressing">Customer-owned IP addresses</a>
    #               in the <i>Amazon Web Services Outposts User Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute custom_iam_instance_profile
    #   <p>The instance profile associated with the underlying Amazon EC2 instance of an
    #               RDS Custom DB instance. The instance profile must meet the following requirements:</p>
    #           <ul>
    #               <li>
    #                   <p>The profile must exist in your account.</p>
    #               </li>
    #               <li>
    #                   <p>The profile must have an IAM role that Amazon EC2 has permissions to assume.</p>
    #               </li>
    #               <li>
    #                   <p>The instance profile name and the associated IAM role name must start with the prefix <code>AWSRDSCustom</code>.</p>
    #               </li>
    #            </ul>
    #           <p>For the list of permissions required for the IAM role, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-setup-orcl.html custom-setup-orcl.iam-vpc">
    #                   Configure IAM and your VPC</a> in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>This setting is required for RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_target
    #   <p>Specifies where automated backups and manual snapshots are stored for the restored DB instance.</p>
    #           <p>Possible values are <code>outposts</code> (Amazon Web Services Outposts) and <code>region</code> (Amazon Web Services Region). The default is <code>region</code>.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html">Working
    #               with Amazon RDS on Amazon Web Services Outposts</a> in the <i>Amazon RDS User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute network_type
    #   <p>The network type of the DB instance.</p>
    #           <p>Valid values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>IPV4</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DUAL</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <p>The network type is determined by the <code>DBSubnetGroup</code> specified for the DB instance.
    #               A <code>DBSubnetGroup</code> can support only the IPv4 protocol or the IPv4 and the IPv6
    #               protocols (<code>DUAL</code>).</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html">
    #               Working with a DB instance in a VPC</a> in the
    #               <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [String]
    #
    RestoreDBInstanceFromDBSnapshotInput = ::Struct.new(
      :db_instance_identifier,
      :db_snapshot_identifier,
      :db_instance_class,
      :port,
      :availability_zone,
      :db_subnet_group_name,
      :multi_az,
      :publicly_accessible,
      :auto_minor_version_upgrade,
      :license_model,
      :db_name,
      :engine,
      :iops,
      :option_group_name,
      :tags,
      :storage_type,
      :tde_credential_arn,
      :tde_credential_password,
      :vpc_security_group_ids,
      :domain,
      :copy_tags_to_snapshot,
      :domain_iam_role_name,
      :enable_iam_database_authentication,
      :enable_cloudwatch_logs_exports,
      :processor_features,
      :use_default_processor_features,
      :db_parameter_group_name,
      :deletion_protection,
      :enable_customer_owned_ip,
      :custom_iam_instance_profile,
      :backup_target,
      :network_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_instance
    #   <p>Contains the details of an Amazon RDS DB instance.</p>
    #           <p>This data type is used as a response element in the operations <code>CreateDBInstance</code>,
    #             <code>CreateDBInstanceReadReplica</code>, <code>DeleteDBInstance</code>, <code>DescribeDBInstances</code>,
    #             <code>ModifyDBInstance</code>, <code>PromoteReadReplica</code>, <code>RebootDBInstance</code>,
    #             <code>RestoreDBInstanceFromDBSnapshot</code>, <code>RestoreDBInstanceFromS3</code>, <code>RestoreDBInstanceToPointInTime</code>,
    #             <code>StartDBInstance</code>, and <code>StopDBInstance</code>.</p>
    #
    #   @return [DBInstance]
    #
    RestoreDBInstanceFromDBSnapshotOutput = ::Struct.new(
      :db_instance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_name
    #   <p>The name of the database to create when the DB instance is created.
    #               Follow the naming rules specified in <code>CreateDBInstance</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute db_instance_identifier
    #   <p>The DB instance identifier. This parameter is stored as a lowercase string.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>mydbinstance</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute allocated_storage
    #   <p>The amount of storage (in gigabytes) to allocate initially for the DB instance.
    #               Follow the allocation rules specified in <code>CreateDBInstance</code>.</p>
    #           <note>
    #               <p>Be sure to allocate enough memory for your new DB instance
    #                   so that the restore operation can succeed.
    #                   You can also allocate additional memory for future growth.</p>
    #           </note>
    #
    #   @return [Integer]
    #
    # @!attribute db_instance_class
    #   <p>The compute and memory capacity of the DB instance,
    #               for example db.m4.large.
    #               Not all DB instance classes are available in all Amazon Web Services Regions,
    #               or for all database engines.
    #               For the full list of DB instance classes,
    #               and availability for your engine, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html">DB Instance Class</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #           <p>Importing from Amazon S3 isn't supported on the db.t2.micro DB instance class.</p>
    #
    #   @return [String]
    #
    # @!attribute engine
    #   <p>The name of the database engine to be used for this instance.</p>
    #           <p>Valid Values:
    #               <code>mysql</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute master_username
    #   <p>The name for the master user.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be 1 to 16 letters or numbers.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Can't be a reserved word for the chosen database engine.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute master_user_password
    #   <p>The password for the master user.
    #               The password can include any printable ASCII character except "/", """, or "@".</p>
    #           <p>Constraints: Must contain from 8 to 41 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute db_security_groups
    #   <p>A list of DB security groups to associate with this DB instance.</p>
    #           <p>Default: The default DB security group for the database engine.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute vpc_security_group_ids
    #   <p>A list of VPC security groups to associate with this DB instance.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute availability_zone
    #   <p>The Availability Zone that the DB instance is created in.
    #               For information about Amazon Web Services Regions and Availability Zones, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html">Regions and Availability Zones</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #           <p>Default: A random, system-chosen Availability Zone in the endpoint's Amazon Web Services Region.</p>
    #           <p>Example: <code>us-east-1d</code>
    #            </p>
    #           <p>Constraint: The <code>AvailabilityZone</code> parameter can't be specified if the DB instance is a Multi-AZ deployment.
    #               The specified Availability Zone must be in the same Amazon Web Services Region as the current endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute db_subnet_group_name
    #   <p>A DB subnet group to associate with this DB instance.</p>
    #           <p>Constraints: If supplied, must match the name of an existing DBSubnetGroup.</p>
    #           <p>Example: <code>mydbsubnetgroup</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute preferred_maintenance_window
    #   <p>The time range each week during which system maintenance can occur,
    #               in Universal Coordinated Time (UTC).
    #               For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html Concepts.DBMaintenance">Amazon RDS Maintenance Window</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be in the format <code>ddd:hh24:mi-ddd:hh24:mi</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
    #               </li>
    #               <li>
    #                   <p>Must be in Universal Coordinated Time (UTC).</p>
    #               </li>
    #               <li>
    #                   <p>Must not conflict with the preferred backup window.</p>
    #               </li>
    #               <li>
    #                   <p>Must be at least 30 minutes.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute db_parameter_group_name
    #   <p>The name of the DB parameter group to associate with this DB instance.</p>
    #           <p>If you do not specify a value for <code>DBParameterGroupName</code>, then the default <code>DBParameterGroup</code>
    #               for the specified DB engine is used.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_retention_period
    #   <p>The number of days for which automated backups are retained.
    #               Setting this parameter to a positive number enables backups.
    #               For more information, see <code>CreateDBInstance</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute preferred_backup_window
    #   <p>The time range each day
    #               during which automated backups are created
    #               if automated backups are enabled.
    #               For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html USER_WorkingWithAutomatedBackups.BackupWindow">Backup window</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p>
    #               </li>
    #               <li>
    #                   <p>Must be in Universal Coordinated Time (UTC).</p>
    #               </li>
    #               <li>
    #                   <p>Must not conflict with the preferred maintenance window.</p>
    #               </li>
    #               <li>
    #                   <p>Must be at least 30 minutes.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port number on which the database accepts connections.</p>
    #           <p>Type: Integer</p>
    #           <p>Valid Values: <code>1150</code>-<code>65535</code>
    #            </p>
    #           <p>Default: <code>3306</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute multi_az
    #   <p>A value that indicates whether the DB instance is a Multi-AZ deployment.
    #               If the DB instance is a Multi-AZ deployment, you can't set the <code>AvailabilityZone</code> parameter.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute engine_version
    #   <p>The version number of the database engine to use.
    #               Choose the latest minor version of your database engine.
    #               For information about engine versions, see <code>CreateDBInstance</code>, or call <code>DescribeDBEngineVersions</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_minor_version_upgrade
    #   <p>A value that indicates whether minor engine upgrades are applied automatically
    #               to the DB instance during the maintenance window. By default, minor engine upgrades
    #               are not applied automatically.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute license_model
    #   <p>The license model for this DB instance.
    #               Use <code>general-public-license</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute iops
    #   <p>The amount of Provisioned IOPS (input/output operations per second)
    #               to allocate initially for the DB instance.
    #               For information about valid Iops values, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html USER_PIOPS">Amazon RDS Provisioned IOPS Storage to Improve Performance</a>
    #               in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute option_group_name
    #   <p>The name of the option group to associate with this DB instance.
    #               If this argument is omitted, the default option group for the specified engine is used.</p>
    #
    #   @return [String]
    #
    # @!attribute publicly_accessible
    #   <p>A value that indicates whether the DB instance is publicly accessible.</p>
    #           <p>When the DB instance is publicly accessible, its Domain Name System (DNS) endpoint resolves to the private IP address
    #               from within the DB instance's virtual private cloud (VPC).
    #               It resolves to the public IP address from outside of the DB instance's VPC.
    #               Access to the DB instance is ultimately controlled by the security group it uses.
    #               That public access is not permitted if the security group assigned to the DB instance doesn't permit it.</p>
    #           <p>When the DB instance isn't publicly accessible, it is an internal DB instance with a DNS name that resolves to a private IP address.</p>
    #           <p>For more information, see <a>CreateDBInstance</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>A list of tags to associate with this DB instance.
    #               For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute storage_type
    #   <p>Specifies the storage type to be associated with the DB instance.</p>
    #           <p>Valid values: <code>standard</code> | <code>gp2</code> | <code>io1</code>
    #            </p>
    #           <p>If you specify <code>io1</code>,
    #               you must also include a value for the <code>Iops</code> parameter.</p>
    #           <p>Default: <code>io1</code>
    #               if the <code>Iops</code> parameter is specified;
    #               otherwise <code>gp2</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute storage_encrypted
    #   <p>A value that indicates whether the new DB instance is encrypted or not.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services KMS key identifier for an encrypted DB instance.</p>
    #           <p>The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.
    #               To use a KMS key in a different Amazon Web Services account, specify the key ARN or alias ARN.</p>
    #           <p>If the <code>StorageEncrypted</code> parameter is enabled,
    #               and you do not specify a value for the <code>KmsKeyId</code> parameter,
    #               then Amazon RDS will use your default KMS key.
    #               There is a default KMS key for your Amazon Web Services account.
    #               Your Amazon Web Services account has a different default KMS key for each Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute copy_tags_to_snapshot
    #   <p>A value that indicates whether to copy all tags from the DB instance to snapshots of the DB instance. By default, tags are not copied.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute monitoring_interval
    #   <p>The interval, in seconds,
    #               between points when Enhanced Monitoring metrics are collected for the DB instance.
    #               To disable collecting Enhanced Monitoring metrics, specify 0.</p>
    #           <p>If <code>MonitoringRoleArn</code> is specified,
    #               then you must also set <code>MonitoringInterval</code> to a value other than 0.</p>
    #           <p>Valid Values: 0, 1, 5, 10, 15, 30, 60</p>
    #           <p>Default: <code>0</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute monitoring_role_arn
    #   <p>The ARN for the IAM role that permits RDS
    #               to send enhanced monitoring metrics to Amazon CloudWatch Logs.
    #               For example, <code>arn:aws:iam:123456789012:role/emaccess</code>.
    #               For information on creating a monitoring role, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html USER_Monitoring.OS.Enabling">Setting Up and Enabling Enhanced Monitoring</a>
    #               in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #           <p>If <code>MonitoringInterval</code> is set to a value other than 0,
    #               then you must supply a <code>MonitoringRoleArn</code> value.</p>
    #
    #   @return [String]
    #
    # @!attribute enable_iam_database_authentication
    #   <p>A value that indicates whether to enable mapping of Amazon Web Services Identity and Access Management
    #               (IAM) accounts to database accounts. By default, mapping isn't enabled.</p>
    #           <p>For more information about IAM database authentication, see
    #            <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html">
    #                IAM Database Authentication for MySQL and PostgreSQL</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute source_engine
    #   <p>The name of the engine of your source database.</p>
    #           <p>Valid Values:
    #               <code>mysql</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute source_engine_version
    #   <p>The version of the database that the backup files were created from.</p>
    #           <p>MySQL versions 5.6 and 5.7 are supported.</p>
    #           <p>Example: <code>5.6.40</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket_name
    #   <p>The name of your Amazon S3 bucket
    #               that contains your database backup file.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_prefix
    #   <p>The prefix of your Amazon S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_ingestion_role_arn
    #   <p>An Amazon Web Services Identity and Access Management (IAM) role to allow Amazon RDS to access your Amazon S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute enable_performance_insights
    #   <p>A value that indicates whether to enable Performance Insights for the DB instance.</p>
    #           <p>For more information, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html">Using Amazon Performance Insights</a> in the <i>Amazon RDS User Guide.</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute performance_insights_kms_key_id
    #   <p>The Amazon Web Services KMS key identifier for encryption of Performance Insights data.</p>
    #           <p>The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.</p>
    #           <p>If you do not specify a value for <code>PerformanceInsightsKMSKeyId</code>, then Amazon RDS
    #               uses your default KMS key. There is a default KMS key for your Amazon Web Services account.
    #               Your Amazon Web Services account has a different default KMS key for each Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute performance_insights_retention_period
    #   <p>The amount of time, in days, to retain Performance Insights data. Valid values are 7 or 731 (2 years).</p>
    #
    #   @return [Integer]
    #
    # @!attribute enable_cloudwatch_logs_exports
    #   <p>The list of logs that the restored DB instance is to export to CloudWatch Logs. The values
    #               in the list depend on the DB engine being used. For more information, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html USER_LogAccess.Procedural.UploadtoCloudWatch">Publishing Database Logs to Amazon CloudWatch Logs</a> in the <i>Amazon RDS User Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute processor_features
    #   <p>The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.</p>
    #
    #   @return [Array<ProcessorFeature>]
    #
    # @!attribute use_default_processor_features
    #   <p>A value that indicates whether the DB instance class of the DB instance uses its default
    #               processor features.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute deletion_protection
    #   <p>A value that indicates whether the DB instance has deletion protection enabled.
    #               The database can't be deleted when deletion protection is enabled. By default,
    #               deletion protection isn't enabled. For more information, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html">
    #                   Deleting a DB Instance</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute max_allocated_storage
    #   <p>The upper limit in gibibytes (GiB) to which Amazon RDS can automatically scale the storage of the DB instance.</p>
    #           <p>For more information about this setting, including limitations that apply to it, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html USER_PIOPS.Autoscaling">
    #                   Managing capacity automatically with Amazon RDS storage autoscaling</a>
    #               in the <i>Amazon RDS User Guide</i>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute network_type
    #   <p>The network type of the DB instance.</p>
    #           <p>Valid values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>IPV4</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DUAL</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <p>The network type is determined by the <code>DBSubnetGroup</code> specified for the DB instance.
    #               A <code>DBSubnetGroup</code> can support only the IPv4 protocol or the IPv4 and the IPv6
    #               protocols (<code>DUAL</code>).</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html">
    #               Working with a DB instance in a VPC</a> in the
    #               <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [String]
    #
    RestoreDBInstanceFromS3Input = ::Struct.new(
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
      :publicly_accessible,
      :tags,
      :storage_type,
      :storage_encrypted,
      :kms_key_id,
      :copy_tags_to_snapshot,
      :monitoring_interval,
      :monitoring_role_arn,
      :enable_iam_database_authentication,
      :source_engine,
      :source_engine_version,
      :s3_bucket_name,
      :s3_prefix,
      :s3_ingestion_role_arn,
      :enable_performance_insights,
      :performance_insights_kms_key_id,
      :performance_insights_retention_period,
      :enable_cloudwatch_logs_exports,
      :processor_features,
      :use_default_processor_features,
      :deletion_protection,
      :max_allocated_storage,
      :network_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_instance
    #   <p>Contains the details of an Amazon RDS DB instance.</p>
    #           <p>This data type is used as a response element in the operations <code>CreateDBInstance</code>,
    #             <code>CreateDBInstanceReadReplica</code>, <code>DeleteDBInstance</code>, <code>DescribeDBInstances</code>,
    #             <code>ModifyDBInstance</code>, <code>PromoteReadReplica</code>, <code>RebootDBInstance</code>,
    #             <code>RestoreDBInstanceFromDBSnapshot</code>, <code>RestoreDBInstanceFromS3</code>, <code>RestoreDBInstanceToPointInTime</code>,
    #             <code>StartDBInstance</code>, and <code>StopDBInstance</code>.</p>
    #
    #   @return [DBInstance]
    #
    RestoreDBInstanceFromS3Output = ::Struct.new(
      :db_instance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute source_db_instance_identifier
    #   <p>The identifier of the source DB instance from which to restore.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must match the identifier of an existing DB instance.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute target_db_instance_identifier
    #   <p>The name of the new DB instance to be created.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must contain from 1 to 63 letters, numbers, or hyphens</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                   <p>Can't end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute restore_time
    #   <p>The date and time to restore from.</p>
    #           <p>Valid Values: Value must be a time in Universal Coordinated Time (UTC) format</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>Must be before the latest restorable time for the DB instance</p>
    #               </li>
    #               <li>
    #                   <p>Can't be specified if the <code>UseLatestRestorableTime</code> parameter is enabled</p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>2009-09-07T23:45:00Z</code>
    #            </p>
    #
    #   @return [Time]
    #
    # @!attribute use_latest_restorable_time
    #   <p>A value that indicates whether the DB instance is restored from the latest backup time. By default, the DB instance
    #             isn't restored from the latest backup time.</p>
    #           <p>Constraints: Can't be specified if the <code>RestoreTime</code> parameter is provided.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute db_instance_class
    #   <p>The compute and memory capacity of the Amazon RDS DB instance, for example
    #                   db.m4.large. Not all DB instance classes are available in all Amazon Web Services
    #               Regions, or for all database engines. For the full list of DB instance classes, and
    #               availability for your engine, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html">DB Instance
    #                   Class</a> in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>Default: The same DBInstanceClass as the original DB instance.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port number on which the database accepts connections.</p>
    #           <p>Constraints: Value must be <code>1150-65535</code>
    #            </p>
    #           <p>Default: The same port as the original DB instance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute availability_zone
    #   <p>The Availability Zone (AZ) where the DB instance will be created.</p>
    #           <p>Default: A random, system-chosen Availability Zone.</p>
    #           <p>Constraint: You can't specify the <code>AvailabilityZone</code> parameter if the DB instance is a Multi-AZ deployment.</p>
    #           <p>Example: <code>us-east-1a</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute db_subnet_group_name
    #   <p>The DB subnet group name to use for the new instance.</p>
    #           <p>Constraints: If supplied, must match the name of an existing DBSubnetGroup.</p>
    #           <p>Example: <code>mydbsubnetgroup</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute multi_az
    #   <p>A value that indicates whether the DB instance is a Multi-AZ deployment.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #           <p>Constraint: You can't specify the <code>AvailabilityZone</code> parameter if the DB instance is a
    #             Multi-AZ deployment.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute publicly_accessible
    #   <p>A value that indicates whether the DB instance is publicly accessible.</p>
    #           <p>When the DB cluster is publicly accessible, its Domain Name System (DNS) endpoint
    #             resolves to the private IP address from within the DB cluster's virtual private cloud
    #             (VPC). It resolves to the public IP address from outside of the DB cluster's VPC. Access
    #             to the DB cluster is ultimately controlled by the security group it uses. That public
    #             access isn't permitted if the security group assigned to the DB cluster doesn't permit
    #             it.</p>
    #           <p>When the DB instance isn't publicly accessible, it is an internal DB instance with a DNS name that resolves to a private IP address.</p>
    #           <p>For more information, see <a>CreateDBInstance</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute auto_minor_version_upgrade
    #   <p>A value that indicates whether minor version upgrades are applied automatically to the
    #             DB instance during the maintenance window.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute license_model
    #   <p>License model information for the restored DB instance.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #           <p>Default: Same as source.</p>
    #           <p>Valid values:  <code>license-included</code> | <code>bring-your-own-license</code> | <code>general-public-license</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute db_name
    #   <p>The database name for the restored DB instance.</p>
    #           <note>
    #               <p>This parameter isn't supported for the MySQL or MariaDB engines. It also doesn't apply to RDS Custom.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute engine
    #   <p>The database engine to use for the new instance.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #           <p>Default: The same as source</p>
    #           <p>Constraint: Must be compatible with the engine of the source</p>
    #           <p>Valid Values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>mariadb</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>mysql</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-ee</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-ee-cdb</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-se2</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>oracle-se2-cdb</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>postgres</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-ee</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-se</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-ex</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>sqlserver-web</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute iops
    #   <p>The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for the DB instance.</p>
    #           <p>Constraints: Must be an integer greater than 1000.</p>
    #           <p>
    #               <b>SQL Server</b>
    #            </p>
    #           <p>Setting the IOPS value for the SQL Server database engine isn't supported.</p>
    #
    #   @return [Integer]
    #
    # @!attribute option_group_name
    #   <p>The name of the option group to be used for the restored DB instance.</p>
    #
    #
    #           <p>Permanent options, such as the TDE option for Oracle Advanced Security TDE, can't be removed from an
    #           option group, and that option group can't be removed from a DB instance after it is associated with a DB instance</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute copy_tags_to_snapshot
    #   <p>A value that indicates whether to copy all tags from the restored DB instance to snapshots of the DB instance. By default, tags are not copied.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>A list of tags.
    #             For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute storage_type
    #   <p>Specifies the storage type to be associated with the DB instance.</p>
    #           <p>Valid values: <code>standard | gp2 | io1</code>
    #            </p>
    #           <p>If you specify <code>io1</code>, you must also include a value for the
    #               <code>Iops</code> parameter.</p>
    #           <p>Default: <code>io1</code> if the <code>Iops</code> parameter
    #               is specified, otherwise <code>gp2</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute tde_credential_arn
    #   <p>The ARN from the key store with which to associate the instance for TDE encryption.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute tde_credential_password
    #   <p>The password for the given ARN from the key store in order to access the device.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_security_group_ids
    #   <p>A list of EC2 VPC security groups to associate with this DB instance.</p>
    #           <p>Default: The default EC2 VPC security group for the DB subnet group's VPC.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute domain
    #   <p>Specify the Active Directory directory ID to restore the DB instance in.
    #             Create the domain before running this command. Currently, you can create only the MySQL, Microsoft SQL
    #             Server, Oracle, and PostgreSQL DB instances in an Active Directory Domain.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html">
    #             Kerberos Authentication</a> in the <i>Amazon RDS User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_iam_role_name
    #   <p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute enable_iam_database_authentication
    #   <p>A value that indicates whether to enable mapping of Amazon Web Services Identity and Access Management
    #               (IAM) accounts to database accounts. By default, mapping isn't enabled.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #           <p>For more information about IAM database authentication, see
    #           <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html">
    #               IAM Database Authentication for MySQL and PostgreSQL</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_cloudwatch_logs_exports
    #   <p>The list of logs that the restored DB instance is to export to CloudWatch Logs. The values
    #               in the list depend on the DB engine being used. For more information, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html USER_LogAccess.Procedural.UploadtoCloudWatch">Publishing Database Logs to Amazon CloudWatch Logs</a> in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute processor_features
    #   <p>The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [Array<ProcessorFeature>]
    #
    # @!attribute use_default_processor_features
    #   <p>A value that indicates whether the DB instance class of the DB instance uses its default processor features.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute db_parameter_group_name
    #   <p>The name of the DB parameter group to associate with this DB instance.</p>
    #           <p>If you do not specify a value for <code>DBParameterGroupName</code>, then the default <code>DBParameterGroup</code>
    #                   for the specified DB engine is used.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #           <p>Constraints:</p>
    #           <ul>
    #               <li>
    #                   <p>If supplied, must match the name of an existing DBParameterGroup.</p>
    #               </li>
    #               <li>
    #                   <p>Must be 1 to 255 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute deletion_protection
    #   <p>A value that indicates whether the DB instance has deletion protection enabled.
    #               The database can't be deleted when deletion protection is enabled. By default,
    #               deletion protection isn't enabled. For more information, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html">
    #                   Deleting a DB Instance</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute source_dbi_resource_id
    #   <p>The resource ID of the source DB instance from which to restore.</p>
    #
    #   @return [String]
    #
    # @!attribute max_allocated_storage
    #   <p>The upper limit in gibibytes (GiB) to which Amazon RDS can automatically scale the storage of the DB instance.</p>
    #           <p>For more information about this setting, including limitations that apply to it, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html USER_PIOPS.Autoscaling">
    #                 Managing capacity automatically with Amazon RDS storage autoscaling</a>
    #             in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [Integer]
    #
    # @!attribute source_db_instance_automated_backups_arn
    #   <p>The Amazon Resource Name (ARN) of the replicated automated backups from which to restore, for example,
    #               <code>arn:aws:rds:useast-1:123456789012:auto-backup:ab-L2IJCEXJP7XQ7HOJ4SIEXAMPLE</code>.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute enable_customer_owned_ip
    #   <p>A value that indicates whether to enable a customer-owned IP address (CoIP) for an RDS on Outposts DB instance.</p>
    #           <p>A <i>CoIP</i> provides local or external connectivity to resources in
    #               your Outpost subnets through your on-premises network. For some use cases, a CoIP can
    #               provide lower latency for connections to the DB instance from outside of its virtual
    #               private cloud (VPC) on your local network.</p>
    #           <p>This setting doesn't apply to RDS Custom.</p>
    #           <p>For more information about RDS on Outposts, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html">Working with Amazon RDS on Amazon Web Services Outposts</a>
    #               in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>For more information about CoIPs, see <a href="https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html ip-addressing">Customer-owned IP addresses</a>
    #               in the <i>Amazon Web Services Outposts User Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute custom_iam_instance_profile
    #   <p>The instance profile associated with the underlying Amazon EC2 instance of an
    #               RDS Custom DB instance. The instance profile must meet the following requirements:</p>
    #           <ul>
    #               <li>
    #                   <p>The profile must exist in your account.</p>
    #               </li>
    #               <li>
    #                   <p>The profile must have an IAM role that Amazon EC2 has permissions to assume.</p>
    #               </li>
    #               <li>
    #                   <p>The instance profile name and the associated IAM role name must start with the prefix <code>AWSRDSCustom</code>.</p>
    #               </li>
    #            </ul>
    #           <p>For the list of permissions required for the IAM role, see
    #               <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-setup-orcl.html custom-setup-orcl.iam-vpc">
    #                   Configure IAM and your VPC</a> in the <i>Amazon RDS User Guide</i>.</p>
    #           <p>This setting is required for RDS Custom.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_target
    #   <p>Specifies where automated backups and manual snapshots are stored for the restored DB instance.</p>
    #           <p>Possible values are <code>outposts</code> (Amazon Web Services Outposts) and <code>region</code> (Amazon Web Services Region). The default is <code>region</code>.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html">Working
    #               with Amazon RDS on Amazon Web Services Outposts</a> in the <i>Amazon RDS User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute network_type
    #   <p>The network type of the DB instance.</p>
    #           <p>Valid values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>IPV4</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DUAL</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <p>The network type is determined by the <code>DBSubnetGroup</code> specified for the DB instance.
    #               A <code>DBSubnetGroup</code> can support only the IPv4 protocol or the IPv4 and the IPv6
    #               protocols (<code>DUAL</code>).</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html">
    #               Working with a DB instance in a VPC</a> in the
    #               <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [String]
    #
    RestoreDBInstanceToPointInTimeInput = ::Struct.new(
      :source_db_instance_identifier,
      :target_db_instance_identifier,
      :restore_time,
      :use_latest_restorable_time,
      :db_instance_class,
      :port,
      :availability_zone,
      :db_subnet_group_name,
      :multi_az,
      :publicly_accessible,
      :auto_minor_version_upgrade,
      :license_model,
      :db_name,
      :engine,
      :iops,
      :option_group_name,
      :copy_tags_to_snapshot,
      :tags,
      :storage_type,
      :tde_credential_arn,
      :tde_credential_password,
      :vpc_security_group_ids,
      :domain,
      :domain_iam_role_name,
      :enable_iam_database_authentication,
      :enable_cloudwatch_logs_exports,
      :processor_features,
      :use_default_processor_features,
      :db_parameter_group_name,
      :deletion_protection,
      :source_dbi_resource_id,
      :max_allocated_storage,
      :source_db_instance_automated_backups_arn,
      :enable_customer_owned_ip,
      :custom_iam_instance_profile,
      :backup_target,
      :network_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.use_latest_restorable_time ||= false
      end
    end

    # @!attribute db_instance
    #   <p>Contains the details of an Amazon RDS DB instance.</p>
    #           <p>This data type is used as a response element in the operations <code>CreateDBInstance</code>,
    #             <code>CreateDBInstanceReadReplica</code>, <code>DeleteDBInstance</code>, <code>DescribeDBInstances</code>,
    #             <code>ModifyDBInstance</code>, <code>PromoteReadReplica</code>, <code>RebootDBInstance</code>,
    #             <code>RestoreDBInstanceFromDBSnapshot</code>, <code>RestoreDBInstanceFromS3</code>, <code>RestoreDBInstanceToPointInTime</code>,
    #             <code>StartDBInstance</code>, and <code>StopDBInstance</code>.</p>
    #
    #   @return [DBInstance]
    #
    RestoreDBInstanceToPointInTimeOutput = ::Struct.new(
      :db_instance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Earliest and latest time an instance can be restored to:</p>
    #
    # @!attribute earliest_time
    #   <p>The earliest time you can restore an instance to.</p>
    #
    #   @return [Time]
    #
    # @!attribute latest_time
    #   <p>The latest time you can restore an instance to.</p>
    #
    #   @return [Time]
    #
    RestoreWindow = ::Struct.new(
      :earliest_time,
      :latest_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute db_security_group_name
    #   <p>The name of the DB security group to revoke ingress from.</p>
    #
    #   @return [String]
    #
    # @!attribute cidrip
    #   <p>The IP range to revoke access from.
    #           Must be a valid CIDR range. If <code>CIDRIP</code> is specified,
    #           <code>EC2SecurityGroupName</code>, <code>EC2SecurityGroupId</code> and <code>EC2SecurityGroupOwnerId</code>
    #           can't be provided.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_security_group_name
    #   <p>The name of the EC2 security group to revoke access from.
    #           For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided.
    #           Otherwise, EC2SecurityGroupOwnerId and either <code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code> must be provided.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_security_group_id
    #   <p>The id of the EC2 security group to revoke access from.
    #           For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided.
    #           Otherwise, EC2SecurityGroupOwnerId and either <code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code> must be provided.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_security_group_owner_id
    #   <p>The Amazon Web Services account number of the owner of the EC2 security group
    #           specified in the <code>EC2SecurityGroupName</code> parameter.
    #           The Amazon Web Services access key ID isn't an acceptable value.
    #           For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided.
    #           Otherwise, EC2SecurityGroupOwnerId and either <code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code> must be provided.</p>
    #
    #   @return [String]
    #
    RevokeDBSecurityGroupIngressInput = ::Struct.new(
      :db_security_group_name,
      :cidrip,
      :ec2_security_group_name,
      :ec2_security_group_id,
      :ec2_security_group_owner_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_security_group
    #   <p>Contains the details for an Amazon RDS DB security group.</p>
    #           <p>This data type is used as a response element
    #             in the <code>DescribeDBSecurityGroups</code> action.</p>
    #
    #   @return [DBSecurityGroup]
    #
    RevokeDBSecurityGroupIngressOutput = ::Struct.new(
      :db_security_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>SNS has responded that there is a problem with the SNS topic specified.</p>
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

    # <p>You do not have permission to publish to the SNS topic ARN.</p>
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

    # <p>The SNS topic ARN does not exist.</p>
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

    # <p>Contains the scaling configuration of an Aurora Serverless v1 DB cluster.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html">Using Amazon Aurora Serverless v1</a> in the
    #             <i>Amazon Aurora User Guide</i>.</p>
    #
    # @!attribute min_capacity
    #   <p>The minimum capacity for an Aurora DB cluster in <code>serverless</code> DB engine mode.</p>
    #           <p>For Aurora MySQL, valid capacity values are <code>1</code>, <code>2</code>, <code>4</code>, <code>8</code>, <code>16</code>, <code>32</code>, <code>64</code>, <code>128</code>, and <code>256</code>.</p>
    #           <p>For Aurora PostgreSQL, valid capacity values are <code>2</code>, <code>4</code>, <code>8</code>, <code>16</code>, <code>32</code>, <code>64</code>, <code>192</code>, and <code>384</code>.</p>
    #           <p>The minimum capacity must be less than or equal to the maximum capacity.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_capacity
    #   <p>The maximum capacity for an Aurora DB cluster in <code>serverless</code> DB engine mode.</p>
    #           <p>For Aurora MySQL, valid capacity values are <code>1</code>, <code>2</code>, <code>4</code>, <code>8</code>, <code>16</code>, <code>32</code>, <code>64</code>, <code>128</code>, and <code>256</code>.</p>
    #           <p>For Aurora PostgreSQL, valid capacity values are <code>2</code>, <code>4</code>, <code>8</code>, <code>16</code>, <code>32</code>, <code>64</code>, <code>192</code>, and <code>384</code>.</p>
    #           <p>The maximum capacity must be greater than or equal to the minimum capacity.</p>
    #
    #   @return [Integer]
    #
    # @!attribute auto_pause
    #   <p>A value that indicates whether to allow or disallow automatic pause for an Aurora DB cluster in <code>serverless</code> DB engine mode.
    #               A DB cluster can be paused only when it's idle (it has no connections).</p>
    #           <note>
    #               <p>If a DB cluster is paused for more than seven days, the DB cluster might be backed up with a snapshot.
    #                   In this case, the DB cluster is restored when there is a request to connect to it.</p>
    #           </note>
    #
    #   @return [Boolean]
    #
    # @!attribute seconds_until_auto_pause
    #   <p>The time, in seconds, before an Aurora DB cluster in <code>serverless</code> mode is paused.</p>
    #           <p>Specify a value between 300 and 86,400 seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute timeout_action
    #   <p>The action to take when the timeout is reached, either <code>ForceApplyCapacityChange</code> or <code>RollbackCapacityChange</code>.</p>
    #           <p>
    #               <code>ForceApplyCapacityChange</code> sets the capacity to the specified value as soon as possible.</p>
    #           <p>
    #               <code>RollbackCapacityChange</code>, the default, ignores the capacity change if a scaling point isn't found in the timeout period.</p>
    #           <important>
    #               <p>If you specify <code>ForceApplyCapacityChange</code>, connections that
    #                   prevent Aurora Serverless v1 from finding a scaling point might be dropped.</p>
    #           </important>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.how-it-works.html aurora-serverless.how-it-works.auto-scaling">
    #                       Autoscaling for Aurora Serverless v1</a> in the <i>Amazon Aurora User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute seconds_before_timeout
    #   <p>The amount of time, in seconds, that Aurora Serverless v1 tries to find a scaling point
    #               to perform seamless scaling before enforcing the timeout action. The default is 300.</p>
    #           <p>Specify a value between 60 and 600 seconds.</p>
    #
    #   @return [Integer]
    #
    ScalingConfiguration = ::Struct.new(
      :min_capacity,
      :max_capacity,
      :auto_pause,
      :seconds_until_auto_pause,
      :timeout_action,
      :seconds_before_timeout,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Shows the scaling configuration for an Aurora DB cluster in <code>serverless</code> DB engine mode.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html">Using Amazon Aurora Serverless v1</a> in the
    #             <i>Amazon Aurora User Guide</i>.</p>
    #
    # @!attribute min_capacity
    #   <p>The maximum capacity for the Aurora DB cluster in <code>serverless</code> DB engine
    #               mode.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_capacity
    #   <p>The maximum capacity for an Aurora DB cluster in <code>serverless</code> DB engine mode.</p>
    #
    #   @return [Integer]
    #
    # @!attribute auto_pause
    #   <p>A value that indicates whether automatic pause is allowed for the Aurora DB cluster
    #               in <code>serverless</code> DB engine mode.</p>
    #           <p>When the value is set to false for an Aurora Serverless v1 DB cluster, the DB cluster automatically resumes.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute seconds_until_auto_pause
    #   <p>The remaining amount of time, in seconds, before the Aurora DB cluster in
    #                   <code>serverless</code> mode is paused. A DB cluster can be paused only when
    #               it's idle (it has no connections).</p>
    #
    #   @return [Integer]
    #
    # @!attribute timeout_action
    #   <p>The action that occurs when Aurora times out while attempting to change the capacity of an
    #               Aurora Serverless v1 cluster. The value is either <code>ForceApplyCapacityChange</code> or
    #               <code>RollbackCapacityChange</code>.</p>
    #           <p>
    #               <code>ForceApplyCapacityChange</code>, the default, sets the capacity to the specified value as soon as possible.</p>
    #           <p>
    #               <code>RollbackCapacityChange</code> ignores the capacity change if a scaling point isn't found in the timeout period.</p>
    #
    #   @return [String]
    #
    # @!attribute seconds_before_timeout
    #   <p>The number of seconds before scaling times out. What happens when an attempted scaling action times out
    #               is determined by the <code>TimeoutAction</code> setting.</p>
    #
    #   @return [Integer]
    #
    ScalingConfigurationInfo = ::Struct.new(
      :min_capacity,
      :max_capacity,
      :auto_pause,
      :seconds_until_auto_pause,
      :timeout_action,
      :seconds_before_timeout,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the scaling configuration of an Aurora Serverless v2 DB cluster.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless-v2.html">Using Amazon Aurora Serverless v2</a> in the
    #             <i>Amazon Aurora User Guide</i>.</p>
    #
    # @!attribute min_capacity
    #   <p>The minimum number of Aurora capacity units (ACUs) for a DB instance in an Aurora Serverless v2 cluster.
    #               You can specify ACU values in half-step increments, such as 8, 8.5, 9, and so on. The smallest value
    #               that you can use is 0.5.</p>
    #
    #   @return [Float]
    #
    # @!attribute max_capacity
    #   <p>The maximum number of Aurora capacity units (ACUs) for a DB instance in an Aurora Serverless v2 cluster.
    #               You can specify ACU values in half-step increments, such as 40, 40.5, 41, and so on. The largest value
    #               that you can use is 128.</p>
    #
    #   @return [Float]
    #
    ServerlessV2ScalingConfiguration = ::Struct.new(
      :min_capacity,
      :max_capacity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Shows the scaling configuration for an Aurora Serverless v2 DB cluster.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless-v2.html">Using Amazon Aurora Serverless v2</a> in the
    #             <i>Amazon Aurora User Guide</i>.</p>
    #
    # @!attribute min_capacity
    #   <p>The minimum number of Aurora capacity units (ACUs) for a DB instance in an Aurora Serverless v2 cluster.
    #               You can specify ACU values in half-step increments, such as 8, 8.5, 9, and so on. The smallest value
    #               that you can use is 0.5.</p>
    #
    #   @return [Float]
    #
    # @!attribute max_capacity
    #   <p>The maximum number of Aurora capacity units (ACUs) for a DB instance in an Aurora Serverless v2 cluster.
    #               You can specify ACU values in half-step increments, such as 40, 40.5, 41, and so on. The largest value
    #               that you can use is 128.</p>
    #
    #   @return [Float]
    #
    ServerlessV2ScalingConfigurationInfo = ::Struct.new(
      :min_capacity,
      :max_capacity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have exceeded the maximum number of accounts that you can share a manual DB snapshot with.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SharedSnapshotQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request would result in the user exceeding the allowed number of DB
    #             snapshots.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SnapshotQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested source could not be found.</p>
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

    # <p>Contains an Amazon Web Services Region name as the result of a successful call to the <code>DescribeSourceRegions</code> action.</p>
    #
    # @!attribute region_name
    #   <p>The name of the source Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint
    #   <p>The endpoint for the source Amazon Web Services Region endpoint.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the source Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute supports_db_instance_automated_backups_replication
    #   <p>Whether the source Amazon Web Services Region supports replicating automated backups to the current Amazon Web Services Region.</p>
    #
    #   @return [Boolean]
    #
    SourceRegion = ::Struct.new(
      :region_name,
      :endpoint,
      :status,
      :supports_db_instance_automated_backups_replication,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.supports_db_instance_automated_backups_replication ||= false
      end
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

      # No documentation available.
      #
      custom_engine_version = "custom-engine-version"

      # No documentation available.
      #
      db_proxy = "db-proxy"
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the DB cluster,
    #               for example, <code>arn:aws:rds:us-east-1:12345667890:cluster:das-cluster</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute mode
    #   <p>Specifies the mode of the database activity stream.
    #               Database events such as a change or access generate an activity stream event.
    #               The database session can handle these events either synchronously or asynchronously.</p>
    #
    #   Enum, one of: ["sync", "async"]
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services KMS key identifier for encrypting messages in the database activity stream.
    #               The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.</p>
    #
    #   @return [String]
    #
    # @!attribute apply_immediately
    #   <p>Specifies whether or not the database activity stream is to start as soon as possible,
    #               regardless of the maintenance window for the database.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute engine_native_audit_fields_included
    #   <p>Specifies whether the database activity stream includes engine-native audit fields. This option only applies
    #           to an Oracle DB instance. By default, no engine-native audit fields are included.</p>
    #
    #   @return [Boolean]
    #
    StartActivityStreamInput = ::Struct.new(
      :resource_arn,
      :mode,
      :kms_key_id,
      :apply_immediately,
      :engine_native_audit_fields_included,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute kms_key_id
    #   <p>The Amazon Web Services KMS key identifier for encryption of messages in the database activity stream.</p>
    #
    #   @return [String]
    #
    # @!attribute kinesis_stream_name
    #   <p>The name of the Amazon Kinesis data stream to be used for the database activity stream.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the database activity stream.</p>
    #
    #   Enum, one of: ["stopped", "starting", "started", "stopping"]
    #
    #   @return [String]
    #
    # @!attribute mode
    #   <p>The mode of the database activity stream.</p>
    #
    #   Enum, one of: ["sync", "async"]
    #
    #   @return [String]
    #
    # @!attribute apply_immediately
    #   <p>Indicates whether or not the database activity stream will start as soon as possible,
    #               regardless of the maintenance window for the database.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute engine_native_audit_fields_included
    #   <p>Indicates whether engine-native audit fields are included in the database activity stream.</p>
    #
    #   @return [Boolean]
    #
    StartActivityStreamOutput = ::Struct.new(
      :kms_key_id,
      :kinesis_stream_name,
      :status,
      :mode,
      :apply_immediately,
      :engine_native_audit_fields_included,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.apply_immediately ||= false
      end
    end

    # @!attribute db_cluster_identifier
    #   <p>The DB cluster identifier of the Amazon Aurora DB cluster to be started. This parameter is stored as
    #           a lowercase string.</p>
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
    #   <p>Contains the details of an Amazon Aurora DB cluster or Multi-AZ DB cluster.</p>
    #           <p>For an Amazon Aurora DB cluster, this data type is used as a response element in the operations
    #             <code>CreateDBCluster</code>, <code>DeleteDBCluster</code>, <code>DescribeDBClusters</code>,
    #             <code>FailoverDBCluster</code>, <code>ModifyDBCluster</code>, <code>PromoteReadReplicaDBCluster</code>,
    #             <code>RestoreDBClusterFromS3</code>, <code>RestoreDBClusterFromSnapshot</code>,
    #             <code>RestoreDBClusterToPointInTime</code>, <code>StartDBCluster</code>, and <code>StopDBCluster</code>.</p>
    #           <p>For a Multi-AZ DB cluster, this data type is used as a response element in the operations
    #             <code>CreateDBCluster</code>, <code>DeleteDBCluster</code>, <code>DescribeDBClusters</code>,
    #             <code>FailoverDBCluster</code>, <code>ModifyDBCluster</code>, <code>RebootDBCluster</code>,
    #             <code>RestoreDBClusterFromSnapshot</code>, and <code>RestoreDBClusterToPointInTime</code>.</p>
    #           <p>For more information on Amazon Aurora DB clusters, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html">
    #                 What is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i>
    #            </p>
    #           <p>For more information on Multi-AZ DB clusters, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html">
    #                 Multi-AZ deployments with two readable standby DB instances</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [DBCluster]
    #
    StartDBClusterOutput = ::Struct.new(
      :db_cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_db_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the source DB instance for the replicated automated backups, for example,
    #               <code>arn:aws:rds:us-west-2:123456789012:db:mydatabase</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_retention_period
    #   <p>The retention period for the replicated automated backups.</p>
    #
    #   @return [Integer]
    #
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services KMS key identifier for encryption of the replicated automated backups. The KMS key ID is the
    #               Amazon Resource Name (ARN) for the KMS encryption key in the destination Amazon Web Services Region, for example,
    #               <code>arn:aws:kms:us-east-1:123456789012:key/AKIAIOSFODNN7EXAMPLE</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute pre_signed_url
    #   <p>A URL that contains a Signature Version 4 signed request for the StartDBInstanceAutomatedBackupsReplication action to be
    #               called in the Amazon Web Services Region of the source DB instance. The presigned URL must be a valid request for the
    #               StartDBInstanceAutomatedBackupsReplication API action that can be executed in the Amazon Web Services Region that contains
    #               the source DB instance.</p>
    #
    #   @return [String]
    #
    StartDBInstanceAutomatedBackupsReplicationInput = ::Struct.new(
      :source_db_instance_arn,
      :backup_retention_period,
      :kms_key_id,
      :pre_signed_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_instance_automated_backup
    #   <p>An automated backup of a DB instance. It consists of system backups, transaction logs, and the database instance properties that
    #               existed at the time you deleted the source instance.</p>
    #
    #   @return [DBInstanceAutomatedBackup]
    #
    StartDBInstanceAutomatedBackupsReplicationOutput = ::Struct.new(
      :db_instance_automated_backup,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_instance_identifier
    #   <p>The user-supplied instance identifier.</p>
    #
    #   @return [String]
    #
    StartDBInstanceInput = ::Struct.new(
      :db_instance_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_instance
    #   <p>Contains the details of an Amazon RDS DB instance.</p>
    #           <p>This data type is used as a response element in the operations <code>CreateDBInstance</code>,
    #             <code>CreateDBInstanceReadReplica</code>, <code>DeleteDBInstance</code>, <code>DescribeDBInstances</code>,
    #             <code>ModifyDBInstance</code>, <code>PromoteReadReplica</code>, <code>RebootDBInstance</code>,
    #             <code>RestoreDBInstanceFromDBSnapshot</code>, <code>RestoreDBInstanceFromS3</code>, <code>RestoreDBInstanceToPointInTime</code>,
    #             <code>StartDBInstance</code>, and <code>StopDBInstance</code>.</p>
    #
    #   @return [DBInstance]
    #
    StartDBInstanceOutput = ::Struct.new(
      :db_instance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute export_task_identifier
    #   <p>A unique identifier for the snapshot export task. This ID isn't an identifier for
    #               the Amazon S3 bucket where the snapshot is to be exported to.</p>
    #
    #   @return [String]
    #
    # @!attribute source_arn
    #   <p>The Amazon Resource Name (ARN) of the snapshot to export to Amazon S3.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket_name
    #   <p>The name of the Amazon S3 bucket to export the snapshot to.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_role_arn
    #   <p>The name of the IAM role to use for writing to the Amazon S3 bucket
    #               when exporting a snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>The ID of the Amazon Web Services KMS key to use to encrypt the snapshot exported to Amazon S3. The Amazon Web Services KMS
    #               key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.
    #               The caller of this operation must be authorized to execute the following operations.
    #               These can be set in the Amazon Web Services KMS key policy:</p>
    #           <ul>
    #               <li>
    #                   <p>GrantOperation.Encrypt</p>
    #               </li>
    #               <li>
    #                   <p>GrantOperation.Decrypt</p>
    #               </li>
    #               <li>
    #                   <p>GrantOperation.GenerateDataKey</p>
    #               </li>
    #               <li>
    #                   <p>GrantOperation.GenerateDataKeyWithoutPlaintext</p>
    #               </li>
    #               <li>
    #                   <p>GrantOperation.ReEncryptFrom</p>
    #               </li>
    #               <li>
    #                   <p>GrantOperation.ReEncryptTo</p>
    #               </li>
    #               <li>
    #                   <p>GrantOperation.CreateGrant</p>
    #               </li>
    #               <li>
    #                   <p>GrantOperation.DescribeKey</p>
    #               </li>
    #               <li>
    #                   <p>GrantOperation.RetireGrant</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute s3_prefix
    #   <p>The Amazon S3 bucket prefix to use as the file name and path of the exported snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute export_only
    #   <p>The data to be exported from the snapshot.
    #               If this parameter is not provided, all the snapshot data is exported.
    #               Valid values are the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>database</code> - Export all the data from a specified database.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>database.table</code>
    #                       <i>table-name</i> -
    #                   Export a table of the snapshot. This format is valid only for RDS for MySQL, RDS for MariaDB, and Aurora MySQL.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>database.schema</code>
    #                       <i>schema-name</i> - Export a database schema of the snapshot.
    #                   This format is valid only for RDS for PostgreSQL and Aurora PostgreSQL.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>database.schema.table</code>
    #                       <i>table-name</i> - Export a table of the database schema.
    #                   This format is valid only for RDS for PostgreSQL and Aurora PostgreSQL.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    StartExportTaskInput = ::Struct.new(
      :export_task_identifier,
      :source_arn,
      :s3_bucket_name,
      :iam_role_arn,
      :kms_key_id,
      :s3_prefix,
      :export_only,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the details of a snapshot export to Amazon S3.</p>
    #         <p>This data type is used as a response element in the <code>DescribeExportTasks</code> action.</p>
    #
    # @!attribute export_task_identifier
    #   <p>A unique identifier for the snapshot export task. This ID isn't an identifier for
    #               the Amazon S3 bucket where the snapshot is exported to.</p>
    #
    #   @return [String]
    #
    # @!attribute source_arn
    #   <p>The Amazon Resource Name (ARN) of the snapshot exported to Amazon S3.</p>
    #
    #   @return [String]
    #
    # @!attribute export_only
    #   <p>The data exported from the snapshot. Valid values are the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>database</code> - Export all the data from a specified database.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>database.table</code>
    #                       <i>table-name</i> -
    #                   Export a table of the snapshot. This format is valid only for RDS for MySQL, RDS for MariaDB, and Aurora MySQL.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>database.schema</code>
    #                       <i>schema-name</i> - Export a database schema of the snapshot.
    #                   This format is valid only for RDS for PostgreSQL and Aurora PostgreSQL.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>database.schema.table</code>
    #                       <i>table-name</i> - Export a table of the database schema.
    #                   This format is valid only for RDS for PostgreSQL and Aurora PostgreSQL.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute snapshot_time
    #   <p>The time that the snapshot was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute task_start_time
    #   <p>The time that the snapshot export task started.</p>
    #
    #   @return [Time]
    #
    # @!attribute task_end_time
    #   <p>The time that the snapshot export task completed.</p>
    #
    #   @return [Time]
    #
    # @!attribute s3_bucket
    #   <p>The Amazon S3 bucket that the snapshot is exported to.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_prefix
    #   <p>The Amazon S3 bucket prefix that is the file name and path of the exported snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_role_arn
    #   <p>The name of the IAM role that is used to write to Amazon S3 when exporting a snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_id
    #   <p>The key identifier of the Amazon Web Services KMS key that is used to encrypt the snapshot when it's exported to
    #               Amazon S3. The KMS key identifier is its key ARN, key ID, alias ARN, or alias name. The IAM role used for the snapshot export
    #               must have encryption and decryption permissions to use this KMS key.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The progress status of the export task.</p>
    #
    #   @return [String]
    #
    # @!attribute percent_progress
    #   <p>The progress of the snapshot export task as a percentage.</p>
    #
    #   @return [Integer]
    #
    # @!attribute total_extracted_data_in_gb
    #   <p>The total amount of data exported, in gigabytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute failure_cause
    #   <p>The reason the export failed, if it failed.</p>
    #
    #   @return [String]
    #
    # @!attribute warning_message
    #   <p>A warning about the snapshot export task.</p>
    #
    #   @return [String]
    #
    StartExportTaskOutput = ::Struct.new(
      :export_task_identifier,
      :source_arn,
      :export_only,
      :snapshot_time,
      :task_start_time,
      :task_end_time,
      :s3_bucket,
      :s3_prefix,
      :iam_role_arn,
      :kms_key_id,
      :status,
      :percent_progress,
      :total_extracted_data_in_gb,
      :failure_cause,
      :warning_message,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.percent_progress ||= 0
        self.total_extracted_data_in_gb ||= 0
      end
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the DB cluster for the database activity stream.
    #               For example, <code>arn:aws:rds:us-east-1:12345667890:cluster:das-cluster</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute apply_immediately
    #   <p>Specifies whether or not the database activity stream is to stop as soon as possible,
    #               regardless of the maintenance window for the database.</p>
    #
    #   @return [Boolean]
    #
    StopActivityStreamInput = ::Struct.new(
      :resource_arn,
      :apply_immediately,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute kms_key_id
    #   <p>The Amazon Web Services KMS key identifier used for encrypting messages in the database activity stream.</p>
    #           <p>The Amazon Web Services KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.</p>
    #
    #   @return [String]
    #
    # @!attribute kinesis_stream_name
    #   <p>The name of the Amazon Kinesis data stream used for the database activity stream.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the database activity stream.</p>
    #
    #   Enum, one of: ["stopped", "starting", "started", "stopping"]
    #
    #   @return [String]
    #
    StopActivityStreamOutput = ::Struct.new(
      :kms_key_id,
      :kinesis_stream_name,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_cluster_identifier
    #   <p>The DB cluster identifier of the Amazon Aurora DB cluster to be stopped. This parameter is stored as
    #           a lowercase string.</p>
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
    #   <p>Contains the details of an Amazon Aurora DB cluster or Multi-AZ DB cluster.</p>
    #           <p>For an Amazon Aurora DB cluster, this data type is used as a response element in the operations
    #             <code>CreateDBCluster</code>, <code>DeleteDBCluster</code>, <code>DescribeDBClusters</code>,
    #             <code>FailoverDBCluster</code>, <code>ModifyDBCluster</code>, <code>PromoteReadReplicaDBCluster</code>,
    #             <code>RestoreDBClusterFromS3</code>, <code>RestoreDBClusterFromSnapshot</code>,
    #             <code>RestoreDBClusterToPointInTime</code>, <code>StartDBCluster</code>, and <code>StopDBCluster</code>.</p>
    #           <p>For a Multi-AZ DB cluster, this data type is used as a response element in the operations
    #             <code>CreateDBCluster</code>, <code>DeleteDBCluster</code>, <code>DescribeDBClusters</code>,
    #             <code>FailoverDBCluster</code>, <code>ModifyDBCluster</code>, <code>RebootDBCluster</code>,
    #             <code>RestoreDBClusterFromSnapshot</code>, and <code>RestoreDBClusterToPointInTime</code>.</p>
    #           <p>For more information on Amazon Aurora DB clusters, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html">
    #                 What is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i>
    #            </p>
    #           <p>For more information on Multi-AZ DB clusters, see
    #             <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html">
    #                 Multi-AZ deployments with two readable standby DB instances</a> in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [DBCluster]
    #
    StopDBClusterOutput = ::Struct.new(
      :db_cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_db_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the source DB instance for which to stop replicating automated backups, for example,
    #               <code>arn:aws:rds:us-west-2:123456789012:db:mydatabase</code>.</p>
    #
    #   @return [String]
    #
    StopDBInstanceAutomatedBackupsReplicationInput = ::Struct.new(
      :source_db_instance_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_instance_automated_backup
    #   <p>An automated backup of a DB instance. It consists of system backups, transaction logs, and the database instance properties that
    #               existed at the time you deleted the source instance.</p>
    #
    #   @return [DBInstanceAutomatedBackup]
    #
    StopDBInstanceAutomatedBackupsReplicationOutput = ::Struct.new(
      :db_instance_automated_backup,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_instance_identifier
    #   <p>The user-supplied instance identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute db_snapshot_identifier
    #   <p>The user-supplied instance identifier of the DB Snapshot created immediately before the DB instance is stopped.</p>
    #
    #   @return [String]
    #
    StopDBInstanceInput = ::Struct.new(
      :db_instance_identifier,
      :db_snapshot_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute db_instance
    #   <p>Contains the details of an Amazon RDS DB instance.</p>
    #           <p>This data type is used as a response element in the operations <code>CreateDBInstance</code>,
    #             <code>CreateDBInstanceReadReplica</code>, <code>DeleteDBInstance</code>, <code>DescribeDBInstances</code>,
    #             <code>ModifyDBInstance</code>, <code>PromoteReadReplica</code>, <code>RebootDBInstance</code>,
    #             <code>RestoreDBInstanceFromDBSnapshot</code>, <code>RestoreDBInstanceFromS3</code>, <code>RestoreDBInstanceToPointInTime</code>,
    #             <code>StartDBInstance</code>, and <code>StopDBInstance</code>.</p>
    #
    #   @return [DBInstance]
    #
    StopDBInstanceOutput = ::Struct.new(
      :db_instance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request would result in the user exceeding the allowed amount of storage
    #             available across all DB instances.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    StorageQuotaExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Storage of the <code>StorageType</code> specified can't be associated
    #             with the DB instance.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    StorageTypeNotSupportedFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This data type is used as a response element for the <code>DescribeDBSubnetGroups</code> operation.</p>
    #
    # @!attribute subnet_identifier
    #   <p>The identifier of the subnet.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_availability_zone
    #   <p>Contains Availability Zone information.</p>
    #           <p>This data type is used as an element in the <code>OrderableDBInstanceOption</code>
    #               data type.</p>
    #
    #   @return [AvailabilityZone]
    #
    # @!attribute subnet_outpost
    #   <p>If the subnet is associated with an Outpost, this value specifies the Outpost.</p>
    #           <p>For more information about RDS on Outposts, see <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html">Amazon RDS on Amazon Web Services Outposts</a>
    #               in the <i>Amazon RDS User Guide.</i>
    #            </p>
    #
    #   @return [Outpost]
    #
    # @!attribute subnet_status
    #   <p>The status of the subnet.</p>
    #
    #   @return [String]
    #
    Subnet = ::Struct.new(
      :subnet_identifier,
      :subnet_availability_zone,
      :subnet_outpost,
      :subnet_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The DB subnet is already in use in the Availability Zone.</p>
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

    # <p>The supplied subscription name already exists.</p>
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

    # <p>The supplied category does not exist.</p>
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

    # <p>The subscription name does not exist.</p>
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

    # <p>Metadata assigned to an Amazon RDS resource consisting of a key-value pair.</p>
    #
    # @!attribute key
    #   <p>A key is the required name of the tag. The string value can be from 1 to 128 Unicode characters in length and can't be prefixed with <code>aws:</code> or <code>rds:</code>. The string can only contain only the set of Unicode letters, digits, white-space, '_', '.', ':', '/', '=', '+', '-', '@' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$").</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>A value is the optional value of the tag. The string value can be from 1 to 256 Unicode characters in length and can't be prefixed with <code>aws:</code> or <code>rds:</code>. The string can only contain only the set of Unicode letters, digits, white-space, '_', '.', ':', '/', '=', '+', '-', '@' (Java regex: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$").</p>
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

    # <p>Information about the connection health of an RDS Proxy target.</p>
    #
    # @!attribute state
    #   <p>The current state of the connection health lifecycle for the RDS Proxy target.
    #              The following is a typical lifecycle example for the states of an RDS Proxy target:</p>
    #           <p>
    #               <code>registering</code> > <code>unavailable</code> > <code>available</code> > <code>unavailable</code> > <code>available</code>
    #            </p>
    #
    #   Enum, one of: ["REGISTERING", "AVAILABLE", "UNAVAILABLE"]
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason for the current health <code>State</code> of the RDS Proxy target.</p>
    #
    #   Enum, one of: ["UNREACHABLE", "CONNECTION_FAILED", "AUTH_FAILURE", "PENDING_PROXY_CAPACITY", "INVALID_REPLICATION_STATE"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the health of the RDS Proxy target.
    #               If the <code>State</code> is <code>AVAILABLE</code>, a description is not included.</p>
    #
    #   @return [String]
    #
    TargetHealth = ::Struct.new(
      :state,
      :reason,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TargetHealthReason
    #
    module TargetHealthReason
      # No documentation available.
      #
      UNREACHABLE = "UNREACHABLE"

      # No documentation available.
      #
      CONNECTION_FAILED = "CONNECTION_FAILED"

      # No documentation available.
      #
      AUTH_FAILURE = "AUTH_FAILURE"

      # No documentation available.
      #
      PENDING_PROXY_CAPACITY = "PENDING_PROXY_CAPACITY"

      # No documentation available.
      #
      INVALID_REPLICATION_STATE = "INVALID_REPLICATION_STATE"
    end

    # Includes enum constants for TargetRole
    #
    module TargetRole
      # No documentation available.
      #
      READ_WRITE = "READ_WRITE"

      # No documentation available.
      #
      READ_ONLY = "READ_ONLY"

      # No documentation available.
      #
      UNKNOWN = "UNKNOWN"
    end

    # Includes enum constants for TargetState
    #
    module TargetState
      # No documentation available.
      #
      registering = "REGISTERING"

      # No documentation available.
      #
      available = "AVAILABLE"

      # No documentation available.
      #
      unavailable = "UNAVAILABLE"
    end

    # Includes enum constants for TargetType
    #
    module TargetType
      # No documentation available.
      #
      RDS_INSTANCE = "RDS_INSTANCE"

      # No documentation available.
      #
      RDS_SERVERLESS_ENDPOINT = "RDS_SERVERLESS_ENDPOINT"

      # No documentation available.
      #
      TRACKED_CLUSTER = "TRACKED_CLUSTER"
    end

    # <p>A time zone associated with a
    #             <code>DBInstance</code>
    #             or a <code>DBSnapshot</code>.
    #             This data type is an element in the response to
    #             the <code>DescribeDBInstances</code>,
    #             the <code>DescribeDBSnapshots</code>,
    #             and the <code>DescribeDBEngineVersions</code>
    #             actions.</p>
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
    #   <p>A value that indicates whether the target version is applied to any source DB instances that have <code>AutoMinorVersionUpgrade</code> set to true.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_major_version_upgrade
    #   <p>A value that indicates whether upgrading to the target version requires upgrading the major version of the database engine.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute supported_engine_modes
    #   <p>A list of the supported DB engine modes for the target engine version.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute supports_parallel_query
    #   <p>A value that indicates whether you can use Aurora parallel query with the target engine version.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute supports_global_databases
    #   <p>A value that indicates whether you can use Aurora global databases with the target engine version.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute supports_babelfish
    #   <p>A value that indicates whether you can use Babelfish for Aurora PostgreSQL with the target engine version.</p>
    #
    #   @return [Boolean]
    #
    UpgradeTarget = ::Struct.new(
      :engine,
      :engine_version,
      :description,
      :auto_upgrade,
      :is_major_version_upgrade,
      :supported_engine_modes,
      :supports_parallel_query,
      :supports_global_databases,
      :supports_babelfish,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.auto_upgrade ||= false
        self.is_major_version_upgrade ||= false
      end
    end

    # <p>Specifies the details of authentication used by a proxy to log in as a specific database user.</p>
    #
    # @!attribute description
    #   <p>A user-specified description about the authentication used by a proxy to log in as a specific database user.</p>
    #
    #   @return [String]
    #
    # @!attribute user_name
    #   <p>The name of the database user to which the proxy connects.</p>
    #
    #   @return [String]
    #
    # @!attribute auth_scheme
    #   <p>The type of authentication that the proxy uses for connections from the proxy to the underlying database.</p>
    #
    #   Enum, one of: ["SECRETS"]
    #
    #   @return [String]
    #
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) representing the secret that the proxy uses to authenticate
    #           to the RDS DB instance or Aurora DB cluster. These secrets are stored within Amazon Secrets Manager.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_auth
    #   <p>Whether to require or disallow Amazon Web Services Identity and Access Management (IAM) authentication for connections to the proxy.</p>
    #
    #   Enum, one of: ["DISABLED", "REQUIRED"]
    #
    #   @return [String]
    #
    UserAuthConfig = ::Struct.new(
      :description,
      :user_name,
      :auth_scheme,
      :secret_arn,
      :iam_auth,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns the details of authentication used by a proxy to log in as a specific database user.</p>
    #
    # @!attribute description
    #   <p>A user-specified description about the authentication used by a proxy to log in as a specific database user.</p>
    #
    #   @return [String]
    #
    # @!attribute user_name
    #   <p>The name of the database user to which the proxy connects.</p>
    #
    #   @return [String]
    #
    # @!attribute auth_scheme
    #   <p>The type of authentication that the proxy uses for connections from the proxy to the underlying database.</p>
    #
    #   Enum, one of: ["SECRETS"]
    #
    #   @return [String]
    #
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) representing the secret that the proxy uses to authenticate
    #           to the RDS DB instance or Aurora DB cluster. These secrets are stored within Amazon Secrets Manager.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_auth
    #   <p>Whether to require or disallow Amazon Web Services Identity and Access Management (IAM) authentication for connections to the proxy.</p>
    #
    #   Enum, one of: ["DISABLED", "REQUIRED"]
    #
    #   @return [String]
    #
    UserAuthConfigInfo = ::Struct.new(
      :description,
      :user_name,
      :auth_scheme,
      :secret_arn,
      :iam_auth,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about valid modifications that you can make to your DB instance.
    #             Contains the result of a successful call to the
    #             <code>DescribeValidDBInstanceModifications</code> action.
    #             You can use this information when you call
    #             <code>ModifyDBInstance</code>.</p>
    #
    # @!attribute storage
    #   <p>Valid storage options for your DB instance.</p>
    #
    #   @return [Array<ValidStorageOptions>]
    #
    # @!attribute valid_processor_features
    #   <p>Valid processor features for your DB instance.</p>
    #
    #   @return [Array<AvailableProcessorFeature>]
    #
    ValidDBInstanceModificationsMessage = ::Struct.new(
      :storage,
      :valid_processor_features,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about valid modifications that you can make to your DB instance.
    #             Contains the result of a successful call to the
    #             <code>DescribeValidDBInstanceModifications</code> action.</p>
    #
    # @!attribute storage_type
    #   <p>The valid storage types for your DB instance.
    #               For example, gp2, io1.</p>
    #
    #   @return [String]
    #
    # @!attribute storage_size
    #   <p>The valid range of storage in gibibytes (GiB).
    #               For example, 100 to 16384.</p>
    #
    #   @return [Array<Range>]
    #
    # @!attribute provisioned_iops
    #   <p>The valid range of provisioned IOPS.
    #               For example, 1000-20000.</p>
    #
    #   @return [Array<Range>]
    #
    # @!attribute iops_to_storage_ratio
    #   <p>The valid range of Provisioned IOPS to gibibytes of storage multiplier.
    #               For example, 3-10,
    #               which means that provisioned IOPS can be between 3 and 10 times storage.</p>
    #
    #   @return [Array<DoubleRange>]
    #
    # @!attribute supports_storage_autoscaling
    #   <p>Whether or not Amazon RDS can automatically scale storage for DB instances that use the new instance class.</p>
    #
    #   @return [Boolean]
    #
    ValidStorageOptions = ::Struct.new(
      :storage_type,
      :storage_size,
      :provisioned_iops,
      :iops_to_storage_ratio,
      :supports_storage_autoscaling,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.supports_storage_autoscaling ||= false
      end
    end

    # <p>This data type is used as a response element for queries on VPC security group membership.</p>
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

    # Includes enum constants for WriteForwardingStatus
    #
    module WriteForwardingStatus
      # No documentation available.
      #
      ENABLED = "enabled"

      # No documentation available.
      #
      DISABLED = "disabled"

      # No documentation available.
      #
      ENABLING = "enabling"

      # No documentation available.
      #
      DISABLING = "disabling"

      # No documentation available.
      #
      UNKNOWN = "unknown"
    end

  end
end
