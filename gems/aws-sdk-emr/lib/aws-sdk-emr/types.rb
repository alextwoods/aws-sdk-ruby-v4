# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::EMR
  module Types

    # Includes enum constants for ActionOnFailure
    #
    module ActionOnFailure
      # No documentation available.
      #
      TERMINATE_JOB_FLOW = "TERMINATE_JOB_FLOW"

      # No documentation available.
      #
      TERMINATE_CLUSTER = "TERMINATE_CLUSTER"

      # No documentation available.
      #
      CANCEL_AND_WAIT = "CANCEL_AND_WAIT"

      # No documentation available.
      #
      CONTINUE = "CONTINUE"
    end

    # @!attribute cluster_id
    #   <p>The unique identifier of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_fleet
    #   <p>Specifies the configuration of the instance fleet.</p>
    #
    #   @return [InstanceFleetConfig]
    #
    AddInstanceFleetInput = ::Struct.new(
      :cluster_id,
      :instance_fleet,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_id
    #   <p>The unique identifier of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_fleet_id
    #   <p>The unique identifier of the instance fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name of the cluster.</p>
    #
    #   @return [String]
    #
    AddInstanceFleetOutput = ::Struct.new(
      :cluster_id,
      :instance_fleet_id,
      :cluster_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input to an AddInstanceGroups call.</p>
    #
    # @!attribute instance_groups
    #   <p>Instance groups to add.</p>
    #
    #   @return [Array<InstanceGroupConfig>]
    #
    # @!attribute job_flow_id
    #   <p>Job flow in which to add the instance groups.</p>
    #
    #   @return [String]
    #
    AddInstanceGroupsInput = ::Struct.new(
      :instance_groups,
      :job_flow_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Output from an AddInstanceGroups call.</p>
    #
    # @!attribute job_flow_id
    #   <p>The job flow ID in which the instance groups are added.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_group_ids
    #   <p>Instance group IDs of the newly created instance groups.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name of the cluster.</p>
    #
    #   @return [String]
    #
    AddInstanceGroupsOutput = ::Struct.new(
      :job_flow_id,
      :instance_group_ids,
      :cluster_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The input argument to the <a>AddJobFlowSteps</a> operation. </p>
    #
    # @!attribute job_flow_id
    #   <p>A string that uniquely identifies the job flow. This identifier is returned by <a>RunJobFlow</a> and can also be obtained from <a>ListClusters</a>.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute steps
    #   <p> A list of <a>StepConfig</a> to be executed by the job flow. </p>
    #
    #   @return [Array<StepConfig>]
    #
    AddJobFlowStepsInput = ::Struct.new(
      :job_flow_id,
      :steps,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The output for the <a>AddJobFlowSteps</a> operation. </p>
    #
    # @!attribute step_ids
    #   <p>The identifiers of the list of steps added to the job flow.</p>
    #
    #   @return [Array<String>]
    #
    AddJobFlowStepsOutput = ::Struct.new(
      :step_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This input identifies an Amazon EMR resource and a list of tags to
    #          attach.</p>
    #
    # @!attribute resource_id
    #   <p>The Amazon EMR resource identifier to which tags will be added. For example, a
    #            cluster identifier or an Amazon EMR Studio ID.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags to associate with a resource. Tags are user-defined key-value pairs that
    #            consist of a required key string with a maximum of 128 characters, and an optional value
    #            string with a maximum of 256 characters.</p>
    #
    #   @return [Array<Tag>]
    #
    AddTagsInput = ::Struct.new(
      :resource_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This output indicates the result of adding tags to a resource.</p>
    #
    AddTagsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AdjustmentType
    #
    module AdjustmentType
      # No documentation available.
      #
      CHANGE_IN_CAPACITY = "CHANGE_IN_CAPACITY"

      # No documentation available.
      #
      PERCENT_CHANGE_IN_CAPACITY = "PERCENT_CHANGE_IN_CAPACITY"

      # No documentation available.
      #
      EXACT_CAPACITY = "EXACT_CAPACITY"
    end

    # <p>With Amazon EMR release version 4.0 and later, the only accepted parameter is
    #          the application name. To pass arguments to applications, you use configuration
    #          classifications specified using configuration JSON objects. For more information, see
    #             <a href="https://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-configure-apps.html">Configuring Applications</a>.</p>
    #          <p>With earlier Amazon EMR releases, the application is any Amazon or third-party
    #          software that you can add to the cluster. This structure contains a list of strings that
    #          indicates the software to use with the cluster and accepts a user argument list. Amazon EMR accepts and forwards the argument list to the corresponding installation
    #          script as bootstrap action argument.</p>
    #
    # @!attribute name
    #   <p>The name of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute args
    #   <p>Arguments for Amazon EMR to pass to the application.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute additional_info
    #   <p>This option is for advanced users only. This is meta information about third-party
    #            applications that third-party vendors use for testing purposes.</p>
    #
    #   @return [Hash<String, String>]
    #
    Application = ::Struct.new(
      :name,
      :version,
      :args,
      :additional_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AuthMode
    #
    module AuthMode
      # No documentation available.
      #
      SSO = "SSO"

      # No documentation available.
      #
      IAM = "IAM"
    end

    # <p>An automatic scaling policy for a core instance group or task instance group in an
    #             Amazon EMR cluster. An automatic scaling policy defines how an instance group
    #          dynamically adds and terminates EC2 instances in response to the value of a CloudWatch
    #          metric. See <a>PutAutoScalingPolicy</a>.</p>
    #
    # @!attribute constraints
    #   <p>The upper and lower EC2 instance limits for an automatic scaling policy. Automatic
    #            scaling activity will not cause an instance group to grow above or below these
    #            limits.</p>
    #
    #   @return [ScalingConstraints]
    #
    # @!attribute rules
    #   <p>The scale-in and scale-out rules that comprise the automatic scaling policy.</p>
    #
    #   @return [Array<ScalingRule>]
    #
    AutoScalingPolicy = ::Struct.new(
      :constraints,
      :rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An automatic scaling policy for a core instance group or task instance group in an
    #             Amazon EMR cluster. The automatic scaling policy defines how an instance group
    #          dynamically adds and terminates EC2 instances in response to the value of a CloudWatch
    #          metric. See <a>PutAutoScalingPolicy</a>.</p>
    #
    # @!attribute status
    #   <p>The status of an automatic scaling policy. </p>
    #
    #   @return [AutoScalingPolicyStatus]
    #
    # @!attribute constraints
    #   <p>The upper and lower EC2 instance limits for an automatic scaling policy. Automatic
    #            scaling activity will not cause an instance group to grow above or below these
    #            limits.</p>
    #
    #   @return [ScalingConstraints]
    #
    # @!attribute rules
    #   <p>The scale-in and scale-out rules that comprise the automatic scaling policy.</p>
    #
    #   @return [Array<ScalingRule>]
    #
    AutoScalingPolicyDescription = ::Struct.new(
      :status,
      :constraints,
      :rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AutoScalingPolicyState
    #
    module AutoScalingPolicyState
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      ATTACHING = "ATTACHING"

      # No documentation available.
      #
      ATTACHED = "ATTACHED"

      # No documentation available.
      #
      DETACHING = "DETACHING"

      # No documentation available.
      #
      DETACHED = "DETACHED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>The reason for an <a>AutoScalingPolicyStatus</a> change.</p>
    #
    # @!attribute code
    #   <p>The code indicating the reason for the change in status.<code>USER_REQUEST</code>
    #            indicates that the scaling policy status was changed by a user.
    #               <code>PROVISION_FAILURE</code> indicates that the status change was because the policy
    #            failed to provision. <code>CLEANUP_FAILURE</code> indicates an error.</p>
    #
    #   Enum, one of: ["USER_REQUEST", "PROVISION_FAILURE", "CLEANUP_FAILURE"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A friendly, more verbose message that accompanies an automatic scaling policy state
    #            change.</p>
    #
    #   @return [String]
    #
    AutoScalingPolicyStateChangeReason = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AutoScalingPolicyStateChangeReasonCode
    #
    module AutoScalingPolicyStateChangeReasonCode
      # No documentation available.
      #
      USER_REQUEST = "USER_REQUEST"

      # No documentation available.
      #
      PROVISION_FAILURE = "PROVISION_FAILURE"

      # No documentation available.
      #
      CLEANUP_FAILURE = "CLEANUP_FAILURE"
    end

    # <p>The status of an automatic scaling policy.
    #          </p>
    #
    # @!attribute state
    #   <p>Indicates the status of the automatic scaling policy.</p>
    #
    #   Enum, one of: ["PENDING", "ATTACHING", "ATTACHED", "DETACHING", "DETACHED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute state_change_reason
    #   <p>The reason for a change in status.</p>
    #
    #   @return [AutoScalingPolicyStateChangeReason]
    #
    AutoScalingPolicyStatus = ::Struct.new(
      :state,
      :state_change_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An auto-termination policy for an Amazon EMR cluster. An auto-termination policy
    #          defines the amount of idle time in seconds after which a cluster automatically terminates.
    #          For alternative cluster termination options, see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-termination.html">Control cluster
    #             termination</a>.</p>
    #
    # @!attribute idle_timeout
    #   <p>Specifies the amount of idle time in seconds after which the cluster automatically
    #            terminates. You can specify a minimum of 60 seconds and a maximum of 604800 seconds (seven
    #            days).</p>
    #
    #   @return [Integer]
    #
    AutoTerminationPolicy = ::Struct.new(
      :idle_timeout,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.idle_timeout ||= 0
      end

    end

    # <p>A configuration for Amazon EMR block public access. When
    #             <code>BlockPublicSecurityGroupRules</code> is set to <code>true</code>, Amazon EMR prevents cluster creation if one of the cluster's security groups has a rule that allows
    #          inbound traffic from 0.0.0.0/0 or ::/0 on a port, unless the port is specified as an
    #          exception using <code>PermittedPublicSecurityGroupRuleRanges</code>.</p>
    #
    # @!attribute block_public_security_group_rules
    #   <p>Indicates whether Amazon EMR block public access is enabled (<code>true</code>)
    #            or disabled (<code>false</code>). By default, the value is <code>false</code> for accounts
    #            that have created EMR clusters before July 2019. For accounts created after this, the
    #            default is <code>true</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute permitted_public_security_group_rule_ranges
    #   <p>Specifies ports and port ranges that are permitted to have security group rules that
    #            allow inbound traffic from all public sources. For example, if Port 23 (Telnet) is
    #            specified for <code>PermittedPublicSecurityGroupRuleRanges</code>, Amazon EMR
    #            allows cluster creation if a security group associated with the cluster has a rule that
    #            allows inbound traffic on Port 23 from IPv4 0.0.0.0/0 or IPv6 port ::/0 as the
    #            source.</p>
    #            <p>By default, Port 22, which is used for SSH access to the cluster EC2 instances, is in
    #            the list of <code>PermittedPublicSecurityGroupRuleRanges</code>.</p>
    #
    #   @return [Array<PortRange>]
    #
    # @!attribute classification
    #   <p>The classification within a configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute configurations
    #   <p>A list of additional configurations to apply within a configuration object.</p>
    #
    #   @return [Array<Configuration>]
    #
    # @!attribute properties
    #   <p>A set of properties specified within a configuration classification.</p>
    #
    #   @return [Hash<String, String>]
    #
    BlockPublicAccessConfiguration = ::Struct.new(
      :block_public_security_group_rules,
      :permitted_public_security_group_rule_ranges,
      :classification,
      :configurations,
      :properties,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.block_public_security_group_rules ||= false
      end

    end

    # <p>Properties that describe the Amazon Web Services principal that created the
    #             <code>BlockPublicAccessConfiguration</code> using the
    #             <code>PutBlockPublicAccessConfiguration</code> action as well as the date and time that
    #          the configuration was created. Each time a configuration for block public access is
    #          updated, Amazon EMR updates this metadata.</p>
    #
    # @!attribute creation_date_time
    #   <p>The date and time that the configuration was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_by_arn
    #   <p>The Amazon Resource Name that created or last modified the configuration.</p>
    #
    #   @return [String]
    #
    BlockPublicAccessConfigurationMetadata = ::Struct.new(
      :creation_date_time,
      :created_by_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration of a bootstrap action.</p>
    #
    # @!attribute name
    #   <p>The name of the bootstrap action.</p>
    #
    #   @return [String]
    #
    # @!attribute script_bootstrap_action
    #   <p>The script run by the bootstrap action.</p>
    #
    #   @return [ScriptBootstrapActionConfig]
    #
    BootstrapActionConfig = ::Struct.new(
      :name,
      :script_bootstrap_action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Reports the configuration of a bootstrap action in a cluster (job flow).</p>
    #
    # @!attribute bootstrap_action_config
    #   <p>A description of the bootstrap action.</p>
    #
    #   @return [BootstrapActionConfig]
    #
    BootstrapActionDetail = ::Struct.new(
      :bootstrap_action_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specification of the status of a CancelSteps request. Available only in Amazon EMR version 4.8.0 and later, excluding version 5.0.0.</p>
    #
    # @!attribute step_id
    #   <p>The encrypted StepId of a step.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of a CancelSteps Request. The value may be SUBMITTED or FAILED.</p>
    #
    #   Enum, one of: ["SUBMITTED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason for the failure if the CancelSteps request fails.</p>
    #
    #   @return [String]
    #
    CancelStepsInfo = ::Struct.new(
      :step_id,
      :status,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input argument to the <a>CancelSteps</a> operation.</p>
    #
    # @!attribute cluster_id
    #   <p>The <code>ClusterID</code> for the specified steps that will be canceled. Use <a>RunJobFlow</a> and <a>ListClusters</a> to get ClusterIDs. </p>
    #
    #   @return [String]
    #
    # @!attribute step_ids
    #   <p>The list of <code>StepIDs</code> to cancel. Use <a>ListSteps</a> to get steps
    #            and their states for the specified cluster.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute step_cancellation_option
    #   <p>The option to choose to cancel <code>RUNNING</code> steps. By default, the value is
    #               <code>SEND_INTERRUPT</code>.</p>
    #
    #   Enum, one of: ["SEND_INTERRUPT", "TERMINATE_PROCESS"]
    #
    #   @return [String]
    #
    CancelStepsInput = ::Struct.new(
      :cluster_id,
      :step_ids,
      :step_cancellation_option,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The output for the <a>CancelSteps</a> operation. </p>
    #
    # @!attribute cancel_steps_info_list
    #   <p>A list of <a>CancelStepsInfo</a>, which shows the status of specified cancel
    #            requests for each <code>StepID</code> specified.</p>
    #
    #   @return [Array<CancelStepsInfo>]
    #
    CancelStepsOutput = ::Struct.new(
      :cancel_steps_info_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CancelStepsRequestStatus
    #
    module CancelStepsRequestStatus
      # No documentation available.
      #
      SUBMITTED = "SUBMITTED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>The definition of a CloudWatch metric alarm, which determines when an automatic scaling
    #          activity is triggered. When the defined alarm conditions are satisfied, scaling activity
    #          begins.</p>
    #
    # @!attribute comparison_operator
    #   <p>Determines how the metric specified by <code>MetricName</code> is compared to the value
    #            specified by <code>Threshold</code>.</p>
    #
    #   Enum, one of: ["GREATER_THAN_OR_EQUAL", "GREATER_THAN", "LESS_THAN", "LESS_THAN_OR_EQUAL"]
    #
    #   @return [String]
    #
    # @!attribute evaluation_periods
    #   <p>The number of periods, in five-minute increments, during which the alarm condition must
    #            exist before the alarm triggers automatic scaling activity. The default value is
    #               <code>1</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute metric_name
    #   <p>The name of the CloudWatch metric that is watched to determine an alarm
    #            condition.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The namespace for the CloudWatch metric. The default is
    #               <code>AWS/ElasticMapReduce</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute period
    #   <p>The period, in seconds, over which the statistic is applied. EMR CloudWatch metrics are
    #            emitted every five minutes (300 seconds), so if an EMR CloudWatch metric is specified,
    #            specify <code>300</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute statistic
    #   <p>The statistic to apply to the metric associated with the alarm. The default is
    #               <code>AVERAGE</code>.</p>
    #
    #   Enum, one of: ["SAMPLE_COUNT", "AVERAGE", "SUM", "MINIMUM", "MAXIMUM"]
    #
    #   @return [String]
    #
    # @!attribute threshold
    #   <p>The value against which the specified statistic is compared.</p>
    #
    #   @return [Float]
    #
    # @!attribute unit
    #   <p>The unit of measure associated with the CloudWatch metric being watched. The value
    #            specified for <code>Unit</code> must correspond to the units specified in the CloudWatch
    #            metric.</p>
    #
    #   Enum, one of: ["NONE", "SECONDS", "MICRO_SECONDS", "MILLI_SECONDS", "BYTES", "KILO_BYTES", "MEGA_BYTES", "GIGA_BYTES", "TERA_BYTES", "BITS", "KILO_BITS", "MEGA_BITS", "GIGA_BITS", "TERA_BITS", "PERCENT", "COUNT", "BYTES_PER_SECOND", "KILO_BYTES_PER_SECOND", "MEGA_BYTES_PER_SECOND", "GIGA_BYTES_PER_SECOND", "TERA_BYTES_PER_SECOND", "BITS_PER_SECOND", "KILO_BITS_PER_SECOND", "MEGA_BITS_PER_SECOND", "GIGA_BITS_PER_SECOND", "TERA_BITS_PER_SECOND", "COUNT_PER_SECOND"]
    #
    #   @return [String]
    #
    # @!attribute dimensions
    #   <p>A CloudWatch metric dimension.</p>
    #
    #   @return [Array<MetricDimension>]
    #
    CloudWatchAlarmDefinition = ::Struct.new(
      :comparison_operator,
      :evaluation_periods,
      :metric_name,
      :namespace,
      :period,
      :statistic,
      :threshold,
      :unit,
      :dimensions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The detailed description of the cluster.</p>
    #
    # @!attribute id
    #   <p>The unique identifier for the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status details about the cluster.</p>
    #
    #   @return [ClusterStatus]
    #
    # @!attribute ec2_instance_attributes
    #   <p>Provides information about the EC2 instances in a cluster grouped by category. For
    #            example, key name, subnet ID, IAM instance profile, and so on.</p>
    #
    #   @return [Ec2InstanceAttributes]
    #
    # @!attribute instance_collection_type
    #   <note>
    #               <p>The instance fleet configuration is available only in Amazon EMR versions
    #               4.8.0 and later, excluding 5.0.x versions.</p>
    #            </note>
    #            <p>The instance group configuration of the cluster. A value of <code>INSTANCE_GROUP</code>
    #            indicates a uniform instance group configuration. A value of <code>INSTANCE_FLEET</code>
    #            indicates an instance fleets configuration.</p>
    #
    #   Enum, one of: ["INSTANCE_FLEET", "INSTANCE_GROUP"]
    #
    #   @return [String]
    #
    # @!attribute log_uri
    #   <p>The path to the Amazon S3 location where logs for this cluster are
    #            stored.</p>
    #
    #   @return [String]
    #
    # @!attribute log_encryption_kms_key_id
    #   <p> The KMS key used for encrypting log files. This attribute is only
    #            available with EMR version 5.30.0 and later, excluding EMR 6.0.0. </p>
    #
    #   @return [String]
    #
    # @!attribute requested_ami_version
    #   <p>The AMI version requested for this cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute running_ami_version
    #   <p>The AMI version running on this cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute release_label
    #   <p>The Amazon EMR release label, which determines the version of open-source
    #            application packages installed on the cluster. Release labels are in the form
    #               <code>emr-x.x.x</code>, where x.x.x is an Amazon EMR release version such as
    #               <code>emr-5.14.0</code>. For more information about Amazon EMR release versions
    #            and included application versions and features, see <a href="https://docs.aws.amazon.com/emr/latest/ReleaseGuide/">https://docs.aws.amazon.com/emr/latest/ReleaseGuide/</a>. The release label applies only to Amazon EMR
    #            releases version 4.0 and later. Earlier versions use <code>AmiVersion</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_terminate
    #   <p>Specifies whether the cluster should terminate after completing all steps.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute termination_protected
    #   <p>Indicates whether Amazon EMR will lock the cluster to prevent the EC2 instances
    #            from being terminated by an API call or user intervention, or in the event of a cluster
    #            error.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute visible_to_all_users
    #   <p>Indicates whether the cluster is visible to IAM principals in the Amazon Web Services account associated with the cluster. When <code>true</code>, IAM principals
    #            in the Amazon Web Services account can perform EMR cluster actions on the cluster that their
    #            IAM policies allow. When <code>false</code>, only the IAM principal that created the
    #            cluster and the Amazon Web Services account root user can perform EMR actions, regardless of
    #            IAM permissions policies attached to other IAM principals.</p>
    #            <p>The default value is <code>true</code> if a value is not provided when creating a
    #            cluster using the EMR API <a>RunJobFlow</a> command, the CLI
    #            <a href="https://docs.aws.amazon.com/cli/latest/reference/emr/create-cluster.html">create-cluster</a> command, or the Amazon Web Services Management Console.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute applications
    #   <p>The applications installed on this cluster.</p>
    #
    #   @return [Array<Application>]
    #
    # @!attribute tags
    #   <p>A list of tags associated with a cluster.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute service_role
    #   <p>The IAM role that Amazon EMR assumes in order to access Amazon Web Services
    #            resources on your behalf.</p>
    #
    #   @return [String]
    #
    # @!attribute normalized_instance_hours
    #   <p>An approximation of the cost of the cluster, represented in m1.small/hours. This value
    #            is incremented one time for every hour an m1.small instance runs. Larger instances are
    #            weighted more, so an EC2 instance that is roughly four times more expensive would result in
    #            the normalized instance hours being incremented by four. This result is only an
    #            approximation and does not reflect the actual billing rate.</p>
    #
    #   @return [Integer]
    #
    # @!attribute master_public_dns_name
    #   <p>The DNS name of the master node. If the cluster is on a private subnet, this is the
    #            private DNS name. On a public subnet, this is the public DNS name.</p>
    #
    #   @return [String]
    #
    # @!attribute configurations
    #   <p>Applies only to Amazon EMR releases 4.x and later. The list of Configurations
    #            supplied to the EMR cluster.</p>
    #
    #   @return [Array<Configuration>]
    #
    # @!attribute security_configuration
    #   <p>The name of the security configuration applied to the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_scaling_role
    #   <p>An IAM role for automatic scaling policies. The default role is
    #               <code>EMR_AutoScaling_DefaultRole</code>. The IAM role provides permissions that the
    #            automatic scaling feature requires to launch and terminate EC2 instances in an instance
    #            group.</p>
    #
    #   @return [String]
    #
    # @!attribute scale_down_behavior
    #   <p>The way that individual Amazon EC2 instances terminate when an automatic
    #            scale-in activity occurs or an instance group is resized.
    #               <code>TERMINATE_AT_INSTANCE_HOUR</code> indicates that Amazon EMR terminates
    #            nodes at the instance-hour boundary, regardless of when the request to terminate the
    #            instance was submitted. This option is only available with Amazon EMR 5.1.0 and
    #            later and is the default for clusters created using that version.
    #               <code>TERMINATE_AT_TASK_COMPLETION</code> indicates that Amazon EMR adds nodes
    #            to a deny list and drains tasks from nodes before terminating the Amazon EC2
    #            instances, regardless of the instance-hour boundary. With either behavior, Amazon EMR removes the least active nodes first and blocks instance termination if it could lead to
    #            HDFS corruption. <code>TERMINATE_AT_TASK_COMPLETION</code> is available only in Amazon EMR version 4.1.0 and later, and is the default for versions of Amazon EMR earlier than 5.1.0.</p>
    #
    #   Enum, one of: ["TERMINATE_AT_INSTANCE_HOUR", "TERMINATE_AT_TASK_COMPLETION"]
    #
    #   @return [String]
    #
    # @!attribute custom_ami_id
    #   <p>Available only in Amazon EMR version 5.7.0 and later. The ID of a custom Amazon
    #            EBS-backed Linux AMI if the cluster uses a custom AMI.</p>
    #
    #   @return [String]
    #
    # @!attribute ebs_root_volume_size
    #   <p>The size, in GiB, of the Amazon EBS root device volume of the Linux AMI that is
    #            used for each EC2 instance. Available in Amazon EMR version 4.x and later.</p>
    #
    #   @return [Integer]
    #
    # @!attribute repo_upgrade_on_boot
    #   <p>Applies only when <code>CustomAmiID</code> is used. Specifies the type of updates that
    #            are applied from the Amazon Linux AMI package repositories when an instance boots using the
    #            AMI.</p>
    #
    #   Enum, one of: ["SECURITY", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute kerberos_attributes
    #   <p>Attributes for Kerberos configuration when Kerberos authentication is enabled using a
    #            security configuration. For more information see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-kerberos.html">Use Kerberos Authentication</a>
    #            in the <i>Amazon EMR Management Guide</i>.</p>
    #
    #   @return [KerberosAttributes]
    #
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute outpost_arn
    #   <p> The Amazon Resource Name (ARN) of the Outpost where the cluster is launched. </p>
    #
    #   @return [String]
    #
    # @!attribute step_concurrency_level
    #   <p>Specifies the number of steps that can be executed concurrently.</p>
    #
    #   @return [Integer]
    #
    # @!attribute placement_groups
    #   <p>Placement group configured for an Amazon EMR cluster.</p>
    #
    #   @return [Array<PlacementGroupConfig>]
    #
    # @!attribute os_release_label
    #   <p>The Amazon Linux release specified in a cluster launch RunJobFlow request. If no Amazon Linux release was specified, the default Amazon Linux release is shown in the response.</p>
    #
    #   @return [String]
    #
    Cluster = ::Struct.new(
      :id,
      :name,
      :status,
      :ec2_instance_attributes,
      :instance_collection_type,
      :log_uri,
      :log_encryption_kms_key_id,
      :requested_ami_version,
      :running_ami_version,
      :release_label,
      :auto_terminate,
      :termination_protected,
      :visible_to_all_users,
      :applications,
      :tags,
      :service_role,
      :normalized_instance_hours,
      :master_public_dns_name,
      :configurations,
      :security_configuration,
      :auto_scaling_role,
      :scale_down_behavior,
      :custom_ami_id,
      :ebs_root_volume_size,
      :repo_upgrade_on_boot,
      :kerberos_attributes,
      :cluster_arn,
      :outpost_arn,
      :step_concurrency_level,
      :placement_groups,
      :os_release_label,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.auto_terminate ||= false
        self.termination_protected ||= false
        self.visible_to_all_users ||= false
      end

    end

    # Includes enum constants for ClusterState
    #
    module ClusterState
      # No documentation available.
      #
      STARTING = "STARTING"

      # No documentation available.
      #
      BOOTSTRAPPING = "BOOTSTRAPPING"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      WAITING = "WAITING"

      # No documentation available.
      #
      TERMINATING = "TERMINATING"

      # No documentation available.
      #
      TERMINATED = "TERMINATED"

      # No documentation available.
      #
      TERMINATED_WITH_ERRORS = "TERMINATED_WITH_ERRORS"
    end

    # <p>The reason that the cluster changed to its current state.</p>
    #
    # @!attribute code
    #   <p>The programmatic code for the state change reason.</p>
    #
    #   Enum, one of: ["INTERNAL_ERROR", "VALIDATION_ERROR", "INSTANCE_FAILURE", "INSTANCE_FLEET_TIMEOUT", "BOOTSTRAP_FAILURE", "USER_REQUEST", "STEP_FAILURE", "ALL_STEPS_COMPLETED"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The descriptive message for the state change reason.</p>
    #
    #   @return [String]
    #
    ClusterStateChangeReason = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ClusterStateChangeReasonCode
    #
    module ClusterStateChangeReasonCode
      # No documentation available.
      #
      INTERNAL_ERROR = "INTERNAL_ERROR"

      # No documentation available.
      #
      VALIDATION_ERROR = "VALIDATION_ERROR"

      # No documentation available.
      #
      INSTANCE_FAILURE = "INSTANCE_FAILURE"

      # No documentation available.
      #
      INSTANCE_FLEET_TIMEOUT = "INSTANCE_FLEET_TIMEOUT"

      # No documentation available.
      #
      BOOTSTRAP_FAILURE = "BOOTSTRAP_FAILURE"

      # No documentation available.
      #
      USER_REQUEST = "USER_REQUEST"

      # No documentation available.
      #
      STEP_FAILURE = "STEP_FAILURE"

      # No documentation available.
      #
      ALL_STEPS_COMPLETED = "ALL_STEPS_COMPLETED"
    end

    # <p>The detailed status of the cluster.</p>
    #
    # @!attribute state
    #   <p>The current state of the cluster.</p>
    #
    #   Enum, one of: ["STARTING", "BOOTSTRAPPING", "RUNNING", "WAITING", "TERMINATING", "TERMINATED", "TERMINATED_WITH_ERRORS"]
    #
    #   @return [String]
    #
    # @!attribute state_change_reason
    #   <p>The reason for the cluster status change.</p>
    #
    #   @return [ClusterStateChangeReason]
    #
    # @!attribute timeline
    #   <p>A timeline that represents the status of a cluster over the lifetime of the
    #            cluster.</p>
    #
    #   @return [ClusterTimeline]
    #
    ClusterStatus = ::Struct.new(
      :state,
      :state_change_reason,
      :timeline,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The summary description of the cluster.</p>
    #
    # @!attribute id
    #   <p>The unique identifier for the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The details about the current status of the cluster.</p>
    #
    #   @return [ClusterStatus]
    #
    # @!attribute normalized_instance_hours
    #   <p>An approximation of the cost of the cluster, represented in m1.small/hours. This value
    #            is incremented one time for every hour an m1.small instance runs. Larger instances are
    #            weighted more, so an EC2 instance that is roughly four times more expensive would result in
    #            the normalized instance hours being incremented by four. This result is only an
    #            approximation and does not reflect the actual billing rate.</p>
    #
    #   @return [Integer]
    #
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute outpost_arn
    #   <p> The Amazon Resource Name (ARN) of the Outpost where the cluster is launched. </p>
    #
    #   @return [String]
    #
    ClusterSummary = ::Struct.new(
      :id,
      :name,
      :status,
      :normalized_instance_hours,
      :cluster_arn,
      :outpost_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the timeline of the cluster's lifecycle.</p>
    #
    # @!attribute creation_date_time
    #   <p>The creation date and time of the cluster.</p>
    #
    #   @return [Time]
    #
    # @!attribute ready_date_time
    #   <p>The date and time when the cluster was ready to run steps.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_date_time
    #   <p>The date and time when the cluster was terminated.</p>
    #
    #   @return [Time]
    #
    ClusterTimeline = ::Struct.new(
      :creation_date_time,
      :ready_date_time,
      :end_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An entity describing an executable that runs on a cluster.</p>
    #
    # @!attribute name
    #   <p>The name of the command.</p>
    #
    #   @return [String]
    #
    # @!attribute script_path
    #   <p>The Amazon S3 location of the command script.</p>
    #
    #   @return [String]
    #
    # @!attribute args
    #   <p>Arguments for Amazon EMR to pass to the command for execution.</p>
    #
    #   @return [Array<String>]
    #
    Command = ::Struct.new(
      :name,
      :script_path,
      :args,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ComparisonOperator
    #
    module ComparisonOperator
      # No documentation available.
      #
      GREATER_THAN_OR_EQUAL = "GREATER_THAN_OR_EQUAL"

      # No documentation available.
      #
      GREATER_THAN = "GREATER_THAN"

      # No documentation available.
      #
      LESS_THAN = "LESS_THAN"

      # No documentation available.
      #
      LESS_THAN_OR_EQUAL = "LESS_THAN_OR_EQUAL"
    end

    # <p> The EC2 unit limits for a managed scaling policy. The managed scaling activity of a
    #          cluster can not be above or below these limits. The limit only applies to the core and task
    #          nodes. The master node cannot be scaled after initial configuration. </p>
    #
    # @!attribute unit_type
    #   <p> The unit type used for specifying a managed scaling policy. </p>
    #
    #   Enum, one of: ["InstanceFleetUnits", "Instances", "VCPU"]
    #
    #   @return [String]
    #
    # @!attribute minimum_capacity_units
    #   <p> The lower boundary of EC2 units. It is measured through vCPU cores or instances for
    #            instance groups and measured through units for instance fleets. Managed scaling activities
    #            are not allowed beyond this boundary. The limit only applies to the core and task nodes.
    #            The master node cannot be scaled after initial configuration. </p>
    #
    #   @return [Integer]
    #
    # @!attribute maximum_capacity_units
    #   <p> The upper boundary of EC2 units. It is measured through vCPU cores or instances for
    #            instance groups and measured through units for instance fleets. Managed scaling activities
    #            are not allowed beyond this boundary. The limit only applies to the core and task nodes.
    #            The master node cannot be scaled after initial configuration. </p>
    #
    #   @return [Integer]
    #
    # @!attribute maximum_on_demand_capacity_units
    #   <p> The upper boundary of On-Demand EC2 units. It is measured through vCPU cores or
    #            instances for instance groups and measured through units for instance fleets. The On-Demand
    #            units are not allowed to scale beyond this boundary. The parameter is used to split
    #            capacity allocation between On-Demand and Spot Instances. </p>
    #
    #   @return [Integer]
    #
    # @!attribute maximum_core_capacity_units
    #   <p> The upper boundary of EC2 units for core node type in a cluster. It is measured through
    #            vCPU cores or instances for instance groups and measured through units for instance fleets.
    #            The core units are not allowed to scale beyond this boundary. The parameter is used to
    #            split capacity allocation between core and task nodes. </p>
    #
    #   @return [Integer]
    #
    ComputeLimits = ::Struct.new(
      :unit_type,
      :minimum_capacity_units,
      :maximum_capacity_units,
      :maximum_on_demand_capacity_units,
      :maximum_core_capacity_units,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ComputeLimitsUnitType
    #
    module ComputeLimitsUnitType
      # No documentation available.
      #
      InstanceFleetUnits = "InstanceFleetUnits"

      # No documentation available.
      #
      Instances = "Instances"

      # No documentation available.
      #
      VCPU = "VCPU"
    end

    # <note>
    #             <p>Amazon EMR releases 4.x or later.</p>
    #          </note>
    #          <p>An optional configuration specification to be used when provisioning cluster instances,
    #          which can include configurations for applications and software bundled with Amazon EMR. A configuration consists of a classification, properties, and optional
    #          nested configurations. A classification refers to an application-specific configuration
    #          file. Properties are the settings you want to change in that file. For more information,
    #          see <a href="https://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-configure-apps.html">Configuring Applications</a>.</p>
    #
    # @!attribute classification
    #   <p>The classification within a configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute configurations
    #   <p>A list of additional configurations to apply within a configuration object.</p>
    #
    #   @return [Array<Configuration>]
    #
    # @!attribute properties
    #   <p>A set of properties specified within a configuration classification.</p>
    #
    #   @return [Hash<String, String>]
    #
    Configuration = ::Struct.new(
      :classification,
      :configurations,
      :properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the security configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute security_configuration
    #   <p>The security configuration details in JSON format. For JSON parameters and examples, see
    #               <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-security-configurations.html">Use Security
    #               Configurations to Set Up Cluster Security</a> in the <i>Amazon EMR
    #               Management Guide</i>.</p>
    #
    #   @return [String]
    #
    CreateSecurityConfigurationInput = ::Struct.new(
      :name,
      :security_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the security configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>The date and time the security configuration was created.</p>
    #
    #   @return [Time]
    #
    CreateSecurityConfigurationOutput = ::Struct.new(
      :name,
      :creation_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>A descriptive name for the Amazon EMR Studio.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A detailed description of the Amazon EMR Studio.</p>
    #
    #   @return [String]
    #
    # @!attribute auth_mode
    #   <p>Specifies whether the Studio authenticates users using IAM or Amazon Web Services SSO.</p>
    #
    #   Enum, one of: ["SSO", "IAM"]
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The ID of the Amazon Virtual Private Cloud (Amazon VPC) to associate with the
    #            Studio.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_ids
    #   <p>A list of subnet IDs to associate with the Amazon EMR Studio. A Studio can have
    #            a maximum of 5 subnets. The subnets must belong to the VPC specified by <code>VpcId</code>.
    #            Studio users can create a Workspace in any of the specified subnets.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute service_role
    #   <p>The IAM role that the Amazon EMR Studio assumes. The service role provides a way
    #            for Amazon EMR Studio to interoperate with other Amazon Web Services
    #            services.</p>
    #
    #   @return [String]
    #
    # @!attribute user_role
    #   <p>The IAM user role that users and groups assume when logged in to an Amazon EMR
    #            Studio. Only specify a <code>UserRole</code> when you use Amazon Web Services SSO
    #            authentication. The permissions attached to the <code>UserRole</code> can be scoped down
    #            for each user or group using session policies.</p>
    #
    #   @return [String]
    #
    # @!attribute workspace_security_group_id
    #   <p>The ID of the Amazon EMR Studio Workspace security group. The Workspace security
    #            group allows outbound network traffic to resources in the Engine security group, and it
    #            must be in the same VPC specified by <code>VpcId</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_security_group_id
    #   <p>The ID of the Amazon EMR Studio Engine security group. The Engine security group
    #            allows inbound network traffic from the Workspace security group, and it must be in the
    #            same VPC specified by <code>VpcId</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute default_s3_location
    #   <p>The Amazon S3 location to back up Amazon EMR Studio Workspaces and
    #            notebook files.</p>
    #
    #   @return [String]
    #
    # @!attribute idp_auth_url
    #   <p>The authentication endpoint of your identity provider (IdP). Specify this value when you
    #            use IAM authentication and want to let federated users log in to a Studio
    #            with the Studio URL and credentials from your IdP. Amazon EMR Studio redirects
    #            users to this endpoint to enter credentials.</p>
    #
    #   @return [String]
    #
    # @!attribute idp_relay_state_parameter_name
    #   <p>The name that your identity provider (IdP) uses for its <code>RelayState</code>
    #            parameter. For example, <code>RelayState</code> or <code>TargetSource</code>. Specify this
    #            value when you use IAM authentication and want to let federated users log in
    #            to a Studio using the Studio URL. The <code>RelayState</code> parameter differs by
    #            IdP.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags to associate with the Amazon EMR Studio. Tags are user-defined
    #            key-value pairs that consist of a required key string with a maximum of 128 characters, and
    #            an optional value string with a maximum of 256 characters.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateStudioInput = ::Struct.new(
      :name,
      :description,
      :auth_mode,
      :vpc_id,
      :subnet_ids,
      :service_role,
      :user_role,
      :workspace_security_group_id,
      :engine_security_group_id,
      :default_s3_location,
      :idp_auth_url,
      :idp_relay_state_parameter_name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute studio_id
    #   <p>The ID of the Amazon EMR Studio.</p>
    #
    #   @return [String]
    #
    # @!attribute url
    #   <p>The unique Studio access URL.</p>
    #
    #   @return [String]
    #
    CreateStudioOutput = ::Struct.new(
      :studio_id,
      :url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute studio_id
    #   <p>The ID of the Amazon EMR Studio to which the user or group will be
    #            mapped.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_id
    #   <p>The globally unique identifier (GUID) of the user or group from the Amazon Web Services SSO
    #            Identity Store. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html singlesignon-Type-User-UserId">UserId</a> and <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html singlesignon-Type-Group-GroupId">GroupId</a> in the <i>Amazon Web Services SSO Identity Store API
    #               Reference</i>. Either <code>IdentityName</code> or <code>IdentityId</code> must
    #            be specified, but not both.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_name
    #   <p>The name of the user or group. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html singlesignon-Type-User-UserName">UserName</a> and <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html singlesignon-Type-Group-DisplayName">DisplayName</a> in the <i>Amazon Web Services SSO Identity Store API
    #               Reference</i>. Either <code>IdentityName</code> or <code>IdentityId</code> must
    #            be specified, but not both.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_type
    #   <p>Specifies whether the identity to map to the Amazon EMR Studio is a user or a
    #            group.</p>
    #
    #   Enum, one of: ["USER", "GROUP"]
    #
    #   @return [String]
    #
    # @!attribute session_policy_arn
    #   <p>The Amazon Resource Name (ARN) for the session policy that will be applied to the user
    #            or group. You should specify the ARN for the session policy that you want to apply, not the
    #            ARN of your user role. For more information, see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-studio-user-role.html">Create an EMR Studio User
    #               Role with Session Policies</a>.</p>
    #
    #   @return [String]
    #
    CreateStudioSessionMappingInput = ::Struct.new(
      :studio_id,
      :identity_id,
      :identity_name,
      :identity_type,
      :session_policy_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateStudioSessionMappingOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the security configuration.</p>
    #
    #   @return [String]
    #
    DeleteSecurityConfigurationInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteSecurityConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute studio_id
    #   <p>The ID of the Amazon EMR Studio.</p>
    #
    #   @return [String]
    #
    DeleteStudioInput = ::Struct.new(
      :studio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteStudioOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute studio_id
    #   <p>The ID of the Amazon EMR Studio.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_id
    #   <p>The globally unique identifier (GUID) of the user or group to remove from the Amazon EMR Studio. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html singlesignon-Type-User-UserId">UserId</a> and <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html singlesignon-Type-Group-GroupId">GroupId</a> in the <i>Amazon Web Services SSO Identity Store API
    #               Reference</i>. Either <code>IdentityName</code> or <code>IdentityId</code> must
    #            be specified.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_name
    #   <p>The name of the user name or group to remove from the Amazon EMR Studio. For
    #            more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html singlesignon-Type-User-UserName">UserName</a> and <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html singlesignon-Type-Group-DisplayName">DisplayName</a> in the <i>Amazon Web Services SSO Store API Reference</i>.
    #            Either <code>IdentityName</code> or <code>IdentityId</code> must be specified.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_type
    #   <p>Specifies whether the identity to delete from the Amazon EMR Studio is a user or
    #            a group.</p>
    #
    #   Enum, one of: ["USER", "GROUP"]
    #
    #   @return [String]
    #
    DeleteStudioSessionMappingInput = ::Struct.new(
      :studio_id,
      :identity_id,
      :identity_name,
      :identity_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteStudioSessionMappingOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This input determines which cluster to describe.</p>
    #
    # @!attribute cluster_id
    #   <p>The identifier of the cluster to describe.</p>
    #
    #   @return [String]
    #
    DescribeClusterInput = ::Struct.new(
      :cluster_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This output contains the description of the cluster.</p>
    #
    # @!attribute cluster
    #   <p>This output contains the details for the requested cluster.</p>
    #
    #   @return [Cluster]
    #
    DescribeClusterOutput = ::Struct.new(
      :cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The input for the <a>DescribeJobFlows</a> operation. </p>
    #
    # @!attribute created_after
    #   <p>Return only job flows created after this date and time.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_before
    #   <p>Return only job flows created before this date and time.</p>
    #
    #   @return [Time]
    #
    # @!attribute job_flow_ids
    #   <p>Return only job flows whose job flow ID is contained in this list.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute job_flow_states
    #   <p>Return only job flows whose state is contained in this list.</p>
    #
    #   @return [Array<String>]
    #
    DescribeJobFlowsInput = ::Struct.new(
      :created_after,
      :created_before,
      :job_flow_ids,
      :job_flow_states,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The output for the <a>DescribeJobFlows</a> operation. </p>
    #
    # @!attribute job_flows
    #   <p>A list of job flows matching the parameters supplied.</p>
    #
    #   @return [Array<JobFlowDetail>]
    #
    DescribeJobFlowsOutput = ::Struct.new(
      :job_flows,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute notebook_execution_id
    #   <p>The unique identifier of the notebook execution.</p>
    #
    #   @return [String]
    #
    DescribeNotebookExecutionInput = ::Struct.new(
      :notebook_execution_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute notebook_execution
    #   <p>Properties of the notebook execution.</p>
    #
    #   @return [NotebookExecution]
    #
    DescribeNotebookExecutionOutput = ::Struct.new(
      :notebook_execution,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute release_label
    #   <p>The target release label to be described.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token. Reserved for future use. Currently set to null.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Reserved for future use. Currently set to null.</p>
    #
    #   @return [Integer]
    #
    DescribeReleaseLabelInput = ::Struct.new(
      :release_label,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute release_label
    #   <p>The target release label described in the response.</p>
    #
    #   @return [String]
    #
    # @!attribute applications
    #   <p>The list of applications available for the target release label. <code>Name</code> is
    #            the name of the application. <code>Version</code> is the concise version of the
    #            application.</p>
    #
    #   @return [Array<SimplifiedApplication>]
    #
    # @!attribute next_token
    #   <p>The pagination token. Reserved for future use. Currently set to null.</p>
    #
    #   @return [String]
    #
    # @!attribute available_os_releases
    #   <p>The list of available Amazon Linux release versions for an Amazon EMR release.
    #            Contains a Label field that is formatted as shown in <a href="https://docs.aws.amazon.com/AL2/latest/relnotes/relnotes-al2.html">
    #                  <i>Amazon Linux 2 Release Notes</i>
    #               </a>. For example, <a href="https://docs.aws.amazon.com/AL2/latest/relnotes/relnotes-20220218.html">2.0.20220218.1</a>.</p>
    #
    #   @return [Array<OSRelease>]
    #
    DescribeReleaseLabelOutput = ::Struct.new(
      :release_label,
      :applications,
      :next_token,
      :available_os_releases,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the security configuration.</p>
    #
    #   @return [String]
    #
    DescribeSecurityConfigurationInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the security configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute security_configuration
    #   <p>The security configuration details in JSON format.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>The date and time the security configuration was created</p>
    #
    #   @return [Time]
    #
    DescribeSecurityConfigurationOutput = ::Struct.new(
      :name,
      :security_configuration,
      :creation_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This input determines which step to describe.</p>
    #
    # @!attribute cluster_id
    #   <p>The identifier of the cluster with steps to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute step_id
    #   <p>The identifier of the step to describe.</p>
    #
    #   @return [String]
    #
    DescribeStepInput = ::Struct.new(
      :cluster_id,
      :step_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This output contains the description of the cluster step.</p>
    #
    # @!attribute step
    #   <p>The step details for the requested step identifier.</p>
    #
    #   @return [Step]
    #
    DescribeStepOutput = ::Struct.new(
      :step,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute studio_id
    #   <p>The Amazon EMR Studio ID.</p>
    #
    #   @return [String]
    #
    DescribeStudioInput = ::Struct.new(
      :studio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute studio
    #   <p>The Amazon EMR Studio details.</p>
    #
    #   @return [Studio]
    #
    DescribeStudioOutput = ::Struct.new(
      :studio,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration of requested EBS block device associated with the instance group.</p>
    #
    # @!attribute volume_specification
    #   <p>EBS volume specifications such as volume type, IOPS, and size (GiB) that will be
    #            requested for the EBS volume attached to an EC2 instance in the cluster.</p>
    #
    #   @return [VolumeSpecification]
    #
    # @!attribute device
    #   <p>The device name that is exposed to the instance, such as /dev/sdh.</p>
    #
    #   @return [String]
    #
    EbsBlockDevice = ::Struct.new(
      :volume_specification,
      :device,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration of requested EBS block device associated with the instance group with
    #          count of volumes that will be associated to every instance.</p>
    #
    # @!attribute volume_specification
    #   <p>EBS volume specifications such as volume type, IOPS, and size (GiB) that will be
    #            requested for the EBS volume attached to an EC2 instance in the cluster.</p>
    #
    #   @return [VolumeSpecification]
    #
    # @!attribute volumes_per_instance
    #   <p>Number of EBS volumes with a specific volume configuration that will be associated with
    #            every instance in the instance group</p>
    #
    #   @return [Integer]
    #
    EbsBlockDeviceConfig = ::Struct.new(
      :volume_specification,
      :volumes_per_instance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon EBS configuration of a cluster instance.</p>
    #
    # @!attribute ebs_block_device_configs
    #   <p>An array of Amazon EBS volume specifications attached to a cluster
    #            instance.</p>
    #
    #   @return [Array<EbsBlockDeviceConfig>]
    #
    # @!attribute ebs_optimized
    #   <p>Indicates whether an Amazon EBS volume is EBS-optimized.</p>
    #
    #   @return [Boolean]
    #
    EbsConfiguration = ::Struct.new(
      :ebs_block_device_configs,
      :ebs_optimized,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>EBS block device that's attached to an EC2 instance.</p>
    #
    # @!attribute device
    #   <p>The device name that is exposed to the instance, such as /dev/sdh.</p>
    #
    #   @return [String]
    #
    # @!attribute volume_id
    #   <p>The volume identifier of the EBS volume.</p>
    #
    #   @return [String]
    #
    EbsVolume = ::Struct.new(
      :device,
      :volume_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the EC2 instances in a cluster grouped by category. For
    #          example, key name, subnet ID, IAM instance profile, and so on.</p>
    #
    # @!attribute ec2_key_name
    #   <p>The name of the Amazon EC2 key pair to use when connecting with SSH into the
    #            master node as a user named "hadoop".</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_subnet_id
    #   <p>Set this parameter to the identifier of the Amazon VPC subnet where you want the
    #            cluster to launch. If you do not specify this value, and your account supports EC2-Classic,
    #            the cluster launches in EC2-Classic.</p>
    #
    #   @return [String]
    #
    # @!attribute requested_ec2_subnet_ids
    #   <p>Applies to clusters configured with the instance fleets option. Specifies the unique
    #            identifier of one or more Amazon EC2 subnets in which to launch EC2 cluster
    #            instances. Subnets must exist within the same VPC. Amazon EMR chooses the EC2
    #            subnet with the best fit from among the list of <code>RequestedEc2SubnetIds</code>, and
    #            then launches all cluster instances within that Subnet. If this value is not specified, and
    #            the account and Region support EC2-Classic networks, the cluster launches instances in the
    #            EC2-Classic network and uses <code>RequestedEc2AvailabilityZones</code> instead of this
    #            setting. If EC2-Classic is not supported, and no Subnet is specified, Amazon EMR
    #            chooses the subnet for you. <code>RequestedEc2SubnetIDs</code> and
    #               <code>RequestedEc2AvailabilityZones</code> cannot be specified together.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute ec2_availability_zone
    #   <p>The Availability Zone in which the cluster will run. </p>
    #
    #   @return [String]
    #
    # @!attribute requested_ec2_availability_zones
    #   <p>Applies to clusters configured with the instance fleets option. Specifies one or more
    #            Availability Zones in which to launch EC2 cluster instances when the EC2-Classic network
    #            configuration is supported. Amazon EMR chooses the Availability Zone with the best
    #            fit from among the list of <code>RequestedEc2AvailabilityZones</code>, and then launches
    #            all cluster instances within that Availability Zone. If you do not specify this value,
    #               Amazon EMR chooses the Availability Zone for you.
    #               <code>RequestedEc2SubnetIDs</code> and <code>RequestedEc2AvailabilityZones</code> cannot
    #            be specified together.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute iam_instance_profile
    #   <p>The IAM role that was specified when the cluster was launched. The EC2 instances of the
    #            cluster assume this role.</p>
    #
    #   @return [String]
    #
    # @!attribute emr_managed_master_security_group
    #   <p>The identifier of the Amazon EC2 security group for the master node.</p>
    #
    #   @return [String]
    #
    # @!attribute emr_managed_slave_security_group
    #   <p>The identifier of the Amazon EC2 security group for the core and task
    #            nodes.</p>
    #
    #   @return [String]
    #
    # @!attribute service_access_security_group
    #   <p>The identifier of the Amazon EC2 security group for the Amazon EMR
    #            service to access clusters in VPC private subnets.</p>
    #
    #   @return [String]
    #
    # @!attribute additional_master_security_groups
    #   <p>A list of additional Amazon EC2 security group IDs for the master node.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute additional_slave_security_groups
    #   <p>A list of additional Amazon EC2 security group IDs for the core and task
    #            nodes.</p>
    #
    #   @return [Array<String>]
    #
    Ec2InstanceAttributes = ::Struct.new(
      :ec2_key_name,
      :ec2_subnet_id,
      :requested_ec2_subnet_ids,
      :ec2_availability_zone,
      :requested_ec2_availability_zones,
      :iam_instance_profile,
      :emr_managed_master_security_group,
      :emr_managed_slave_security_group,
      :service_access_security_group,
      :additional_master_security_groups,
      :additional_slave_security_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the execution engine (cluster) to run the notebook and perform the notebook
    #          execution, for example, an EMR cluster.</p>
    #
    # @!attribute id
    #   <p>The unique identifier of the execution engine. For an EMR cluster, this is the cluster
    #            ID.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of execution engine. A value of <code>EMR</code> specifies an EMR
    #            cluster.</p>
    #
    #   Enum, one of: ["EMR"]
    #
    #   @return [String]
    #
    # @!attribute master_instance_security_group_id
    #   <p>An optional unique ID of an EC2 security group to associate with the master instance of
    #            the EMR cluster for this notebook execution. For more information see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-managed-notebooks-security-groups.html">Specifying
    #               EC2 Security Groups for EMR Notebooks</a> in the <i>EMR Management
    #               Guide</i>.</p>
    #
    #   @return [String]
    #
    ExecutionEngineConfig = ::Struct.new(
      :id,
      :type,
      :master_instance_security_group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ExecutionEngineType
    #
    module ExecutionEngineType
      # No documentation available.
      #
      EMR = "EMR"
    end

    # <p>The details of the step failure. The service attempts to detect the root cause for many
    #          common failures.</p>
    #
    # @!attribute reason
    #   <p>The reason for the step failure. In the case where the service cannot successfully
    #            determine the root cause of the failure, it returns "Unknown Error" as a reason.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The descriptive message including the error the Amazon EMR service has
    #            identified as the cause of step failure. This is text from an error log that describes the
    #            root cause of the failure.</p>
    #
    #   @return [String]
    #
    # @!attribute log_file
    #   <p>The path to the log file where the step failure root cause was originally
    #            recorded.</p>
    #
    #   @return [String]
    #
    FailureDetails = ::Struct.new(
      :reason,
      :message,
      :log_file,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_id
    #   <p>Specifies the ID of the Amazon EMR cluster for which the auto-termination policy
    #            will be fetched.</p>
    #
    #   @return [String]
    #
    GetAutoTerminationPolicyInput = ::Struct.new(
      :cluster_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_termination_policy
    #   <p>Specifies the auto-termination policy that is attached to an Amazon EMR cluster.
    #         </p>
    #
    #   @return [AutoTerminationPolicy]
    #
    GetAutoTerminationPolicyOutput = ::Struct.new(
      :auto_termination_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetBlockPublicAccessConfigurationInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute block_public_access_configuration
    #   <p>A configuration for Amazon EMR block public access. The configuration applies to
    #            all clusters created in your account for the current Region. The configuration specifies
    #            whether block public access is enabled. If block public access is enabled, security groups
    #            associated with the cluster cannot have rules that allow inbound traffic from 0.0.0.0/0 or
    #            ::/0 on a port, unless the port is specified as an exception using
    #               <code>PermittedPublicSecurityGroupRuleRanges</code> in the
    #               <code>BlockPublicAccessConfiguration</code>. By default, Port 22 (SSH) is an exception,
    #            and public access is allowed on this port. You can change this by updating the block public
    #            access configuration to remove the exception.</p>
    #            <note>
    #               <p>For accounts that created clusters in a Region before November 25, 2019, block public
    #               access is disabled by default in that Region. To use this feature, you must manually
    #               enable and configure it. For accounts that did not create an EMR cluster in a Region
    #               before this date, block public access is enabled by default in that Region.</p>
    #            </note>
    #
    #   @return [BlockPublicAccessConfiguration]
    #
    # @!attribute block_public_access_configuration_metadata
    #   <p>Properties that describe the Amazon Web Services principal that created the
    #               <code>BlockPublicAccessConfiguration</code> using the
    #               <code>PutBlockPublicAccessConfiguration</code> action as well as the date and time that
    #            the configuration was created. Each time a configuration for block public access is
    #            updated, Amazon EMR updates this metadata.</p>
    #
    #   @return [BlockPublicAccessConfigurationMetadata]
    #
    GetBlockPublicAccessConfigurationOutput = ::Struct.new(
      :block_public_access_configuration,
      :block_public_access_configuration_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_id
    #   <p>Specifies the ID of the cluster for which the managed scaling policy will be fetched.
    #         </p>
    #
    #   @return [String]
    #
    GetManagedScalingPolicyInput = ::Struct.new(
      :cluster_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute managed_scaling_policy
    #   <p>Specifies the managed scaling policy that is attached to an Amazon EMR cluster.
    #         </p>
    #
    #   @return [ManagedScalingPolicy]
    #
    GetManagedScalingPolicyOutput = ::Struct.new(
      :managed_scaling_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute studio_id
    #   <p>The ID of the Amazon EMR Studio.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_id
    #   <p>The globally unique identifier (GUID) of the user or group. For more information, see
    #               <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html singlesignon-Type-User-UserId">UserId</a> and <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html singlesignon-Type-Group-GroupId">GroupId</a> in the <i>Amazon Web Services SSO Identity Store API
    #               Reference</i>. Either <code>IdentityName</code> or <code>IdentityId</code> must
    #            be specified.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_name
    #   <p>The name of the user or group to fetch. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html singlesignon-Type-User-UserName">UserName</a> and <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html singlesignon-Type-Group-DisplayName">DisplayName</a> in the <i>Amazon Web Services SSO Identity Store API
    #               Reference</i>. Either <code>IdentityName</code> or <code>IdentityId</code> must
    #            be specified.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_type
    #   <p>Specifies whether the identity to fetch is a user or a group.</p>
    #
    #   Enum, one of: ["USER", "GROUP"]
    #
    #   @return [String]
    #
    GetStudioSessionMappingInput = ::Struct.new(
      :studio_id,
      :identity_id,
      :identity_name,
      :identity_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute session_mapping
    #   <p>The session mapping details for the specified Amazon EMR Studio and identity,
    #            including session policy ARN and creation time.</p>
    #
    #   @return [SessionMappingDetail]
    #
    GetStudioSessionMappingOutput = ::Struct.new(
      :session_mapping,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A job flow step consisting of a JAR file whose main function will be executed. The main
    #          function submits a job for Hadoop to execute and waits for the job to finish or
    #          fail.</p>
    #
    # @!attribute properties
    #   <p>A list of Java properties that are set when the step runs. You can use these properties
    #            to pass key-value pairs to your main function.</p>
    #
    #   @return [Array<KeyValue>]
    #
    # @!attribute jar
    #   <p>A path to a JAR file run during the step.</p>
    #
    #   @return [String]
    #
    # @!attribute main_class
    #   <p>The name of the main class in the specified Java file. If not specified, the JAR file
    #            should specify a Main-Class in its manifest file.</p>
    #
    #   @return [String]
    #
    # @!attribute args
    #   <p>A list of command line arguments passed to the JAR file's main function when
    #            executed.</p>
    #
    #   @return [Array<String>]
    #
    HadoopJarStepConfig = ::Struct.new(
      :properties,
      :jar,
      :main_class,
      :args,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A cluster step consisting of a JAR file whose main function will be executed. The main
    #          function submits a job for Hadoop to execute and waits for the job to finish or
    #          fail.</p>
    #
    # @!attribute jar
    #   <p>The path to the JAR file that runs during the step.</p>
    #
    #   @return [String]
    #
    # @!attribute properties
    #   <p>The list of Java properties that are set when the step runs. You can use these
    #            properties to pass key-value pairs to your main function.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute main_class
    #   <p>The name of the main class in the specified Java file. If not specified, the JAR file
    #            should specify a main class in its manifest file.</p>
    #
    #   @return [String]
    #
    # @!attribute args
    #   <p>The list of command line arguments to pass to the JAR file's main function for
    #            execution.</p>
    #
    #   @return [Array<String>]
    #
    HadoopStepConfig = ::Struct.new(
      :jar,
      :properties,
      :main_class,
      :args,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for IdentityType
    #
    module IdentityType
      # No documentation available.
      #
      USER = "USER"

      # No documentation available.
      #
      GROUP = "GROUP"
    end

    # <p>Represents an EC2 instance provisioned as part of cluster.</p>
    #
    # @!attribute id
    #   <p>The unique identifier for the instance in Amazon EMR.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_instance_id
    #   <p>The unique identifier of the instance in Amazon EC2.</p>
    #
    #   @return [String]
    #
    # @!attribute public_dns_name
    #   <p>The public DNS name of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute public_ip_address
    #   <p>The public IP address of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute private_dns_name
    #   <p>The private DNS name of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute private_ip_address
    #   <p>The private IP address of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the instance.</p>
    #
    #   @return [InstanceStatus]
    #
    # @!attribute instance_group_id
    #   <p>The identifier of the instance group to which this instance belongs.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_fleet_id
    #   <p>The unique identifier of the instance fleet to which an EC2 instance belongs.</p>
    #
    #   @return [String]
    #
    # @!attribute market
    #   <p>The instance purchasing option. Valid values are <code>ON_DEMAND</code> or
    #               <code>SPOT</code>. </p>
    #
    #   Enum, one of: ["ON_DEMAND", "SPOT"]
    #
    #   @return [String]
    #
    # @!attribute instance_type
    #   <p>The EC2 instance type, for example <code>m3.xlarge</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute ebs_volumes
    #   <p>The list of Amazon EBS volumes that are attached to this instance.</p>
    #
    #   @return [Array<EbsVolume>]
    #
    Instance = ::Struct.new(
      :id,
      :ec2_instance_id,
      :public_dns_name,
      :public_ip_address,
      :private_dns_name,
      :private_ip_address,
      :status,
      :instance_group_id,
      :instance_fleet_id,
      :market,
      :instance_type,
      :ebs_volumes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InstanceCollectionType
    #
    module InstanceCollectionType
      # No documentation available.
      #
      INSTANCE_FLEET = "INSTANCE_FLEET"

      # No documentation available.
      #
      INSTANCE_GROUP = "INSTANCE_GROUP"
    end

    # <p>Describes an instance fleet, which is a group of EC2 instances that host a particular
    #          node type (master, core, or task) in an Amazon EMR cluster. Instance fleets can
    #          consist of a mix of instance types and On-Demand and Spot Instances, which are provisioned
    #          to meet a defined target capacity. </p>
    #          <note>
    #             <p>The instance fleet configuration is available only in Amazon EMR versions
    #             4.8.0 and later, excluding 5.0.x versions.</p>
    #          </note>
    #
    # @!attribute id
    #   <p>The unique identifier of the instance fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A friendly name for the instance fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the instance fleet. </p>
    #
    #   @return [InstanceFleetStatus]
    #
    # @!attribute instance_fleet_type
    #   <p>The node type that the instance fleet hosts. Valid values are MASTER, CORE, or TASK.
    #         </p>
    #
    #   Enum, one of: ["MASTER", "CORE", "TASK"]
    #
    #   @return [String]
    #
    # @!attribute target_on_demand_capacity
    #   <p>The target capacity of On-Demand units for the instance fleet, which determines how many
    #            On-Demand Instances to provision. When the instance fleet launches, Amazon EMR
    #            tries to provision On-Demand Instances as specified by <a>InstanceTypeConfig</a>. Each instance configuration has a specified <code>WeightedCapacity</code>. When an
    #            On-Demand Instance is provisioned, the <code>WeightedCapacity</code> units count toward the
    #            target capacity. Amazon EMR provisions instances until the target capacity is
    #            totally fulfilled, even if this results in an overage. For example, if there are 2 units
    #            remaining to fulfill capacity, and Amazon EMR can only provision an instance with a
    #               <code>WeightedCapacity</code> of 5 units, the instance is provisioned, and the target
    #            capacity is exceeded by 3 units. You can use <a>InstanceFleet$ProvisionedOnDemandCapacity</a> to determine the Spot capacity
    #            units that have been provisioned for the instance fleet.</p>
    #            <note>
    #               <p>If not specified or set to 0, only Spot Instances are provisioned for the instance
    #               fleet using <code>TargetSpotCapacity</code>. At least one of
    #                  <code>TargetSpotCapacity</code> and <code>TargetOnDemandCapacity</code> should be
    #               greater than 0. For a master instance fleet, only one of <code>TargetSpotCapacity</code>
    #               and <code>TargetOnDemandCapacity</code> can be specified, and its value must be
    #               1.</p>
    #            </note>
    #
    #   @return [Integer]
    #
    # @!attribute target_spot_capacity
    #   <p>The target capacity of Spot units for the instance fleet, which determines how many Spot
    #            Instances to provision. When the instance fleet launches, Amazon EMR tries to
    #            provision Spot Instances as specified by <a>InstanceTypeConfig</a>. Each
    #            instance configuration has a specified <code>WeightedCapacity</code>. When a Spot instance
    #            is provisioned, the <code>WeightedCapacity</code> units count toward the target capacity.
    #               Amazon EMR provisions instances until the target capacity is totally fulfilled,
    #            even if this results in an overage. For example, if there are 2 units remaining to fulfill
    #            capacity, and Amazon EMR can only provision an instance with a
    #               <code>WeightedCapacity</code> of 5 units, the instance is provisioned, and the target
    #            capacity is exceeded by 3 units. You can use <a>InstanceFleet$ProvisionedSpotCapacity</a> to determine the Spot capacity units
    #            that have been provisioned for the instance fleet.</p>
    #            <note>
    #               <p>If not specified or set to 0, only On-Demand Instances are provisioned for the
    #               instance fleet. At least one of <code>TargetSpotCapacity</code> and
    #                  <code>TargetOnDemandCapacity</code> should be greater than 0. For a master instance
    #               fleet, only one of <code>TargetSpotCapacity</code> and
    #                  <code>TargetOnDemandCapacity</code> can be specified, and its value must be 1.</p>
    #            </note>
    #
    #   @return [Integer]
    #
    # @!attribute provisioned_on_demand_capacity
    #   <p>The number of On-Demand units that have been provisioned for the instance fleet to
    #            fulfill <code>TargetOnDemandCapacity</code>. This provisioned capacity might be less than
    #            or greater than <code>TargetOnDemandCapacity</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute provisioned_spot_capacity
    #   <p>The number of Spot units that have been provisioned for this instance fleet to fulfill
    #               <code>TargetSpotCapacity</code>. This provisioned capacity might be less than or greater
    #            than <code>TargetSpotCapacity</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute instance_type_specifications
    #   <p>An array of specifications for the instance types that comprise an instance
    #            fleet.</p>
    #
    #   @return [Array<InstanceTypeSpecification>]
    #
    # @!attribute launch_specifications
    #   <p>Describes the launch specification for an instance fleet. </p>
    #
    #   @return [InstanceFleetProvisioningSpecifications]
    #
    InstanceFleet = ::Struct.new(
      :id,
      :name,
      :status,
      :instance_fleet_type,
      :target_on_demand_capacity,
      :target_spot_capacity,
      :provisioned_on_demand_capacity,
      :provisioned_spot_capacity,
      :instance_type_specifications,
      :launch_specifications,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration that defines an instance fleet.</p>
    #          <note>
    #             <p>The instance fleet configuration is available only in Amazon EMR versions
    #             4.8.0 and later, excluding 5.0.x versions.</p>
    #          </note>
    #
    # @!attribute name
    #   <p>The friendly name of the instance fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_fleet_type
    #   <p>The node type that the instance fleet hosts. Valid values are MASTER, CORE, and
    #            TASK.</p>
    #
    #   Enum, one of: ["MASTER", "CORE", "TASK"]
    #
    #   @return [String]
    #
    # @!attribute target_on_demand_capacity
    #   <p>The target capacity of On-Demand units for the instance fleet, which determines how many
    #            On-Demand Instances to provision. When the instance fleet launches, Amazon EMR
    #            tries to provision On-Demand Instances as specified by <a>InstanceTypeConfig</a>. Each instance configuration has a specified <code>WeightedCapacity</code>. When an
    #            On-Demand Instance is provisioned, the <code>WeightedCapacity</code> units count toward the
    #            target capacity. Amazon EMR provisions instances until the target capacity is
    #            totally fulfilled, even if this results in an overage. For example, if there are 2 units
    #            remaining to fulfill capacity, and Amazon EMR can only provision an instance with a
    #               <code>WeightedCapacity</code> of 5 units, the instance is provisioned, and the target
    #            capacity is exceeded by 3 units.</p>
    #            <note>
    #               <p>If not specified or set to 0, only Spot Instances are provisioned for the instance
    #               fleet using <code>TargetSpotCapacity</code>. At least one of
    #                  <code>TargetSpotCapacity</code> and <code>TargetOnDemandCapacity</code> should be
    #               greater than 0. For a master instance fleet, only one of <code>TargetSpotCapacity</code>
    #               and <code>TargetOnDemandCapacity</code> can be specified, and its value must be
    #               1.</p>
    #            </note>
    #
    #   @return [Integer]
    #
    # @!attribute target_spot_capacity
    #   <p>The target capacity of Spot units for the instance fleet, which determines how many Spot
    #            Instances to provision. When the instance fleet launches, Amazon EMR tries to
    #            provision Spot Instances as specified by <a>InstanceTypeConfig</a>. Each
    #            instance configuration has a specified <code>WeightedCapacity</code>. When a Spot Instance
    #            is provisioned, the <code>WeightedCapacity</code> units count toward the target capacity.
    #               Amazon EMR provisions instances until the target capacity is totally fulfilled,
    #            even if this results in an overage. For example, if there are 2 units remaining to fulfill
    #            capacity, and Amazon EMR can only provision an instance with a
    #               <code>WeightedCapacity</code> of 5 units, the instance is provisioned, and the target
    #            capacity is exceeded by 3 units.</p>
    #            <note>
    #               <p>If not specified or set to 0, only On-Demand Instances are provisioned for the
    #               instance fleet. At least one of <code>TargetSpotCapacity</code> and
    #                  <code>TargetOnDemandCapacity</code> should be greater than 0. For a master instance
    #               fleet, only one of <code>TargetSpotCapacity</code> and
    #                  <code>TargetOnDemandCapacity</code> can be specified, and its value must be 1.</p>
    #            </note>
    #
    #   @return [Integer]
    #
    # @!attribute instance_type_configs
    #   <p>The instance type configurations that define the EC2 instances in the instance
    #            fleet.</p>
    #
    #   @return [Array<InstanceTypeConfig>]
    #
    # @!attribute launch_specifications
    #   <p>The launch specification for the instance fleet.</p>
    #
    #   @return [InstanceFleetProvisioningSpecifications]
    #
    InstanceFleetConfig = ::Struct.new(
      :name,
      :instance_fleet_type,
      :target_on_demand_capacity,
      :target_spot_capacity,
      :instance_type_configs,
      :launch_specifications,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration parameters for an instance fleet modification request.</p>
    #          <note>
    #             <p>The instance fleet configuration is available only in Amazon EMR versions
    #             4.8.0 and later, excluding 5.0.x versions.</p>
    #          </note>
    #
    # @!attribute instance_fleet_id
    #   <p>A unique identifier for the instance fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute target_on_demand_capacity
    #   <p>The target capacity of On-Demand units for the instance fleet. For more information see
    #               <a>InstanceFleetConfig$TargetOnDemandCapacity</a>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute target_spot_capacity
    #   <p>The target capacity of Spot units for the instance fleet. For more information, see
    #               <a>InstanceFleetConfig$TargetSpotCapacity</a>.</p>
    #
    #   @return [Integer]
    #
    InstanceFleetModifyConfig = ::Struct.new(
      :instance_fleet_id,
      :target_on_demand_capacity,
      :target_spot_capacity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The launch specification for Spot Instances in the fleet, which determines the defined
    #          duration, provisioning timeout behavior, and allocation strategy.</p>
    #          <note>
    #             <p>The instance fleet configuration is available only in Amazon EMR versions
    #             4.8.0 and later, excluding 5.0.x versions. On-Demand and Spot Instance allocation
    #             strategies are available in Amazon EMR version 5.12.1 and later.</p>
    #          </note>
    #
    # @!attribute spot_specification
    #   <p>The launch specification for Spot Instances in the fleet, which determines the defined
    #            duration, provisioning timeout behavior, and allocation strategy.</p>
    #
    #   @return [SpotProvisioningSpecification]
    #
    # @!attribute on_demand_specification
    #   <p> The launch specification for On-Demand Instances in the instance fleet, which
    #            determines the allocation strategy. </p>
    #            <note>
    #               <p>The instance fleet configuration is available only in Amazon EMR versions
    #               4.8.0 and later, excluding 5.0.x versions. On-Demand Instances allocation strategy is
    #               available in Amazon EMR version 5.12.1 and later.</p>
    #            </note>
    #
    #   @return [OnDemandProvisioningSpecification]
    #
    InstanceFleetProvisioningSpecifications = ::Struct.new(
      :spot_specification,
      :on_demand_specification,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InstanceFleetState
    #
    module InstanceFleetState
      # No documentation available.
      #
      PROVISIONING = "PROVISIONING"

      # No documentation available.
      #
      BOOTSTRAPPING = "BOOTSTRAPPING"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      RESIZING = "RESIZING"

      # No documentation available.
      #
      SUSPENDED = "SUSPENDED"

      # No documentation available.
      #
      TERMINATING = "TERMINATING"

      # No documentation available.
      #
      TERMINATED = "TERMINATED"
    end

    # <p>Provides status change reason details for the instance fleet.</p>
    #          <note>
    #             <p>The instance fleet configuration is available only in Amazon EMR versions
    #             4.8.0 and later, excluding 5.0.x versions.</p>
    #          </note>
    #
    # @!attribute code
    #   <p>A code corresponding to the reason the state change occurred.</p>
    #
    #   Enum, one of: ["INTERNAL_ERROR", "VALIDATION_ERROR", "INSTANCE_FAILURE", "CLUSTER_TERMINATED"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>An explanatory message.</p>
    #
    #   @return [String]
    #
    InstanceFleetStateChangeReason = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InstanceFleetStateChangeReasonCode
    #
    module InstanceFleetStateChangeReasonCode
      # No documentation available.
      #
      INTERNAL_ERROR = "INTERNAL_ERROR"

      # No documentation available.
      #
      VALIDATION_ERROR = "VALIDATION_ERROR"

      # No documentation available.
      #
      INSTANCE_FAILURE = "INSTANCE_FAILURE"

      # No documentation available.
      #
      CLUSTER_TERMINATED = "CLUSTER_TERMINATED"
    end

    # <p>The status of the instance fleet.</p>
    #          <note>
    #             <p>The instance fleet configuration is available only in Amazon EMR versions
    #             4.8.0 and later, excluding 5.0.x versions.</p>
    #          </note>
    #
    # @!attribute state
    #   <p>A code representing the instance fleet status.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PROVISIONING</code>—The instance fleet is provisioning EC2 resources and is
    #                  not yet ready to run jobs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BOOTSTRAPPING</code>—EC2 instances and other resources have been provisioned
    #                  and the bootstrap actions specified for the instances are underway.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RUNNING</code>—EC2 instances and other resources are running. They are
    #                  either executing jobs or waiting to execute jobs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RESIZING</code>—A resize operation is underway. EC2 instances are either
    #                  being added or removed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUSPENDED</code>—A resize operation could not complete. Existing EC2
    #                  instances are running, but instances can't be added or removed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TERMINATING</code>—The instance fleet is terminating EC2 instances.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TERMINATED</code>—The instance fleet is no longer active, and all EC2
    #                  instances have been terminated.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PROVISIONING", "BOOTSTRAPPING", "RUNNING", "RESIZING", "SUSPENDED", "TERMINATING", "TERMINATED"]
    #
    #   @return [String]
    #
    # @!attribute state_change_reason
    #   <p>Provides status change reason details for the instance fleet.</p>
    #
    #   @return [InstanceFleetStateChangeReason]
    #
    # @!attribute timeline
    #   <p>Provides historical timestamps for the instance fleet, including the time of creation,
    #            the time it became ready to run jobs, and the time of termination.</p>
    #
    #   @return [InstanceFleetTimeline]
    #
    InstanceFleetStatus = ::Struct.new(
      :state,
      :state_change_reason,
      :timeline,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides historical timestamps for the instance fleet, including the time of creation,
    #          the time it became ready to run jobs, and the time of termination.</p>
    #          <note>
    #             <p>The instance fleet configuration is available only in Amazon EMR versions
    #             4.8.0 and later, excluding 5.0.x versions.</p>
    #          </note>
    #
    # @!attribute creation_date_time
    #   <p>The time and date the instance fleet was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute ready_date_time
    #   <p>The time and date the instance fleet was ready to run jobs.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_date_time
    #   <p>The time and date the instance fleet terminated.</p>
    #
    #   @return [Time]
    #
    InstanceFleetTimeline = ::Struct.new(
      :creation_date_time,
      :ready_date_time,
      :end_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InstanceFleetType
    #
    module InstanceFleetType
      # No documentation available.
      #
      MASTER = "MASTER"

      # No documentation available.
      #
      CORE = "CORE"

      # No documentation available.
      #
      TASK = "TASK"
    end

    # <p>This entity represents an instance group, which is a group of instances that have common
    #          purpose. For example, CORE instance group is used for HDFS.</p>
    #
    # @!attribute id
    #   <p>The identifier of the instance group.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the instance group.</p>
    #
    #   @return [String]
    #
    # @!attribute market
    #   <p>The marketplace to provision instances for this group. Valid values are ON_DEMAND or
    #            SPOT.</p>
    #
    #   Enum, one of: ["ON_DEMAND", "SPOT"]
    #
    #   @return [String]
    #
    # @!attribute instance_group_type
    #   <p>The type of the instance group. Valid values are MASTER, CORE or TASK.</p>
    #
    #   Enum, one of: ["MASTER", "CORE", "TASK"]
    #
    #   @return [String]
    #
    # @!attribute bid_price
    #   <p>If specified, indicates that the instance group uses Spot Instances. This is the maximum
    #            price you are willing to pay for Spot Instances. Specify <code>OnDemandPrice</code> to set
    #            the amount equal to the On-Demand price, or specify an amount in USD.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_type
    #   <p>The EC2 instance type for all instances in the instance group.</p>
    #
    #   @return [String]
    #
    # @!attribute requested_instance_count
    #   <p>The target number of instances for the instance group.</p>
    #
    #   @return [Integer]
    #
    # @!attribute running_instance_count
    #   <p>The number of instances currently running in this instance group.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>The current status of the instance group.</p>
    #
    #   @return [InstanceGroupStatus]
    #
    # @!attribute configurations
    #   <note>
    #               <p>Amazon EMR releases 4.x or later.</p>
    #            </note>
    #            <p>The list of configurations supplied for an Amazon EMR cluster instance group.
    #            You can specify a separate configuration for each instance group (master, core, and
    #            task).</p>
    #
    #   @return [Array<Configuration>]
    #
    # @!attribute configurations_version
    #   <p>The version number of the requested configuration specification for this instance
    #            group.</p>
    #
    #   @return [Integer]
    #
    # @!attribute last_successfully_applied_configurations
    #   <p>A list of configurations that were successfully applied for an instance group last
    #            time.</p>
    #
    #   @return [Array<Configuration>]
    #
    # @!attribute last_successfully_applied_configurations_version
    #   <p>The version number of a configuration specification that was successfully applied for an
    #            instance group last time. </p>
    #
    #   @return [Integer]
    #
    # @!attribute ebs_block_devices
    #   <p>The EBS block devices that are mapped to this instance group.</p>
    #
    #   @return [Array<EbsBlockDevice>]
    #
    # @!attribute ebs_optimized
    #   <p>If the instance group is EBS-optimized. An Amazon EBS-optimized instance uses an
    #            optimized configuration stack and provides additional, dedicated capacity for Amazon EBS I/O.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute shrink_policy
    #   <p>Policy for customizing shrink operations.</p>
    #
    #   @return [ShrinkPolicy]
    #
    # @!attribute auto_scaling_policy
    #   <p>An automatic scaling policy for a core instance group or task instance group in an
    #               Amazon EMR cluster. The automatic scaling policy defines how an instance group
    #            dynamically adds and terminates EC2 instances in response to the value of a CloudWatch
    #            metric. See PutAutoScalingPolicy.</p>
    #
    #   @return [AutoScalingPolicyDescription]
    #
    # @!attribute custom_ami_id
    #   <p>The custom AMI ID to use for the provisioned instance group.</p>
    #
    #   @return [String]
    #
    InstanceGroup = ::Struct.new(
      :id,
      :name,
      :market,
      :instance_group_type,
      :bid_price,
      :instance_type,
      :requested_instance_count,
      :running_instance_count,
      :status,
      :configurations,
      :configurations_version,
      :last_successfully_applied_configurations,
      :last_successfully_applied_configurations_version,
      :ebs_block_devices,
      :ebs_optimized,
      :shrink_policy,
      :auto_scaling_policy,
      :custom_ami_id,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.configurations_version ||= 0
        self.last_successfully_applied_configurations_version ||= 0
      end

    end

    # <p>Configuration defining a new instance group.</p>
    #
    # @!attribute name
    #   <p>Friendly name given to the instance group.</p>
    #
    #   @return [String]
    #
    # @!attribute market
    #   <p>Market type of the EC2 instances used to create a cluster node.</p>
    #
    #   Enum, one of: ["ON_DEMAND", "SPOT"]
    #
    #   @return [String]
    #
    # @!attribute instance_role
    #   <p>The role of the instance group in the cluster.</p>
    #
    #   Enum, one of: ["MASTER", "CORE", "TASK"]
    #
    #   @return [String]
    #
    # @!attribute bid_price
    #   <p>If specified, indicates that the instance group uses Spot Instances. This is the maximum
    #            price you are willing to pay for Spot Instances. Specify <code>OnDemandPrice</code> to set
    #            the amount equal to the On-Demand price, or specify an amount in USD.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_type
    #   <p>The EC2 instance type for all instances in the instance group.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_count
    #   <p>Target number of instances for the instance group.</p>
    #
    #   @return [Integer]
    #
    # @!attribute configurations
    #   <note>
    #               <p>Amazon EMR releases 4.x or later.</p>
    #            </note>
    #            <p>The list of configurations supplied for an EMR cluster instance group. You can specify a
    #            separate configuration for each instance group (master, core, and task).</p>
    #
    #   @return [Array<Configuration>]
    #
    # @!attribute ebs_configuration
    #   <p>EBS configurations that will be attached to each EC2 instance in the instance
    #            group.</p>
    #
    #   @return [EbsConfiguration]
    #
    # @!attribute auto_scaling_policy
    #   <p>An automatic scaling policy for a core instance group or task instance group in an
    #               Amazon EMR cluster. The automatic scaling policy defines how an instance group
    #            dynamically adds and terminates EC2 instances in response to the value of a CloudWatch
    #            metric. See <a>PutAutoScalingPolicy</a>.</p>
    #
    #   @return [AutoScalingPolicy]
    #
    # @!attribute custom_ami_id
    #   <p>The custom AMI ID to use for the provisioned instance group.</p>
    #
    #   @return [String]
    #
    InstanceGroupConfig = ::Struct.new(
      :name,
      :market,
      :instance_role,
      :bid_price,
      :instance_type,
      :instance_count,
      :configurations,
      :ebs_configuration,
      :auto_scaling_policy,
      :custom_ami_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Detailed information about an instance group.</p>
    #
    # @!attribute instance_group_id
    #   <p>Unique identifier for the instance group.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Friendly name for the instance group.</p>
    #
    #   @return [String]
    #
    # @!attribute market
    #   <p>Market type of the EC2 instances used to create a cluster node.</p>
    #
    #   Enum, one of: ["ON_DEMAND", "SPOT"]
    #
    #   @return [String]
    #
    # @!attribute instance_role
    #   <p>Instance group role in the cluster</p>
    #
    #   Enum, one of: ["MASTER", "CORE", "TASK"]
    #
    #   @return [String]
    #
    # @!attribute bid_price
    #   <p>If specified, indicates that the instance group uses Spot Instances. This is the maximum
    #            price you are willing to pay for Spot Instances. Specify <code>OnDemandPrice</code> to set
    #            the amount equal to the On-Demand price, or specify an amount in USD.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_type
    #   <p>EC2 instance type.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_request_count
    #   <p>Target number of instances to run in the instance group.</p>
    #
    #   @return [Integer]
    #
    # @!attribute instance_running_count
    #   <p>Actual count of running instances.</p>
    #
    #   @return [Integer]
    #
    # @!attribute state
    #   <p>State of instance group. The following values are no longer supported: STARTING,
    #            TERMINATED, and FAILED.</p>
    #
    #   Enum, one of: ["PROVISIONING", "BOOTSTRAPPING", "RUNNING", "RECONFIGURING", "RESIZING", "SUSPENDED", "TERMINATING", "TERMINATED", "ARRESTED", "SHUTTING_DOWN", "ENDED"]
    #
    #   @return [String]
    #
    # @!attribute last_state_change_reason
    #   <p>Details regarding the state of the instance group.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>The date/time the instance group was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute start_date_time
    #   <p>The date/time the instance group was started.</p>
    #
    #   @return [Time]
    #
    # @!attribute ready_date_time
    #   <p>The date/time the instance group was available to the cluster.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_date_time
    #   <p>The date/time the instance group was terminated.</p>
    #
    #   @return [Time]
    #
    # @!attribute custom_ami_id
    #   <p>The custom AMI ID to use for the provisioned instance group.</p>
    #
    #   @return [String]
    #
    InstanceGroupDetail = ::Struct.new(
      :instance_group_id,
      :name,
      :market,
      :instance_role,
      :bid_price,
      :instance_type,
      :instance_request_count,
      :instance_running_count,
      :state,
      :last_state_change_reason,
      :creation_date_time,
      :start_date_time,
      :ready_date_time,
      :end_date_time,
      :custom_ami_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Modify the size or configurations of an instance group.</p>
    #
    # @!attribute instance_group_id
    #   <p>Unique ID of the instance group to modify.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_count
    #   <p>Target size for the instance group.</p>
    #
    #   @return [Integer]
    #
    # @!attribute ec2_instance_ids_to_terminate
    #   <p>The EC2 InstanceIds to terminate. After you terminate the instances, the instance group
    #            will not return to its original requested size.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute shrink_policy
    #   <p>Policy for customizing shrink operations.</p>
    #
    #   @return [ShrinkPolicy]
    #
    # @!attribute reconfiguration_type
    #   <p>Type of reconfiguration requested. Valid values are MERGE and OVERWRITE.</p>
    #
    #   Enum, one of: ["OVERWRITE", "MERGE"]
    #
    #   @return [String]
    #
    # @!attribute configurations
    #   <p>A list of new or modified configurations to apply for an instance group.</p>
    #
    #   @return [Array<Configuration>]
    #
    InstanceGroupModifyConfig = ::Struct.new(
      :instance_group_id,
      :instance_count,
      :ec2_instance_ids_to_terminate,
      :shrink_policy,
      :reconfiguration_type,
      :configurations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InstanceGroupState
    #
    module InstanceGroupState
      # No documentation available.
      #
      PROVISIONING = "PROVISIONING"

      # No documentation available.
      #
      BOOTSTRAPPING = "BOOTSTRAPPING"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      RECONFIGURING = "RECONFIGURING"

      # No documentation available.
      #
      RESIZING = "RESIZING"

      # No documentation available.
      #
      SUSPENDED = "SUSPENDED"

      # No documentation available.
      #
      TERMINATING = "TERMINATING"

      # No documentation available.
      #
      TERMINATED = "TERMINATED"

      # No documentation available.
      #
      ARRESTED = "ARRESTED"

      # No documentation available.
      #
      SHUTTING_DOWN = "SHUTTING_DOWN"

      # No documentation available.
      #
      ENDED = "ENDED"
    end

    # <p>The status change reason details for the instance group.</p>
    #
    # @!attribute code
    #   <p>The programmable code for the state change reason.</p>
    #
    #   Enum, one of: ["INTERNAL_ERROR", "VALIDATION_ERROR", "INSTANCE_FAILURE", "CLUSTER_TERMINATED"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The status change reason description.</p>
    #
    #   @return [String]
    #
    InstanceGroupStateChangeReason = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InstanceGroupStateChangeReasonCode
    #
    module InstanceGroupStateChangeReasonCode
      # No documentation available.
      #
      INTERNAL_ERROR = "INTERNAL_ERROR"

      # No documentation available.
      #
      VALIDATION_ERROR = "VALIDATION_ERROR"

      # No documentation available.
      #
      INSTANCE_FAILURE = "INSTANCE_FAILURE"

      # No documentation available.
      #
      CLUSTER_TERMINATED = "CLUSTER_TERMINATED"
    end

    # <p>The details of the instance group status.</p>
    #
    # @!attribute state
    #   <p>The current state of the instance group.</p>
    #
    #   Enum, one of: ["PROVISIONING", "BOOTSTRAPPING", "RUNNING", "RECONFIGURING", "RESIZING", "SUSPENDED", "TERMINATING", "TERMINATED", "ARRESTED", "SHUTTING_DOWN", "ENDED"]
    #
    #   @return [String]
    #
    # @!attribute state_change_reason
    #   <p>The status change reason details for the instance group.</p>
    #
    #   @return [InstanceGroupStateChangeReason]
    #
    # @!attribute timeline
    #   <p>The timeline of the instance group status over time.</p>
    #
    #   @return [InstanceGroupTimeline]
    #
    InstanceGroupStatus = ::Struct.new(
      :state,
      :state_change_reason,
      :timeline,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The timeline of the instance group lifecycle.</p>
    #
    # @!attribute creation_date_time
    #   <p>The creation date and time of the instance group.</p>
    #
    #   @return [Time]
    #
    # @!attribute ready_date_time
    #   <p>The date and time when the instance group became ready to perform tasks.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_date_time
    #   <p>The date and time when the instance group terminated.</p>
    #
    #   @return [Time]
    #
    InstanceGroupTimeline = ::Struct.new(
      :creation_date_time,
      :ready_date_time,
      :end_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InstanceGroupType
    #
    module InstanceGroupType
      # No documentation available.
      #
      MASTER = "MASTER"

      # No documentation available.
      #
      CORE = "CORE"

      # No documentation available.
      #
      TASK = "TASK"
    end

    # <p>Custom policy for requesting termination protection or termination of specific instances
    #          when shrinking an instance group.</p>
    #
    # @!attribute instances_to_terminate
    #   <p>Specific list of instances to be terminated when shrinking an instance group.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute instances_to_protect
    #   <p>Specific list of instances to be protected when shrinking an instance group.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute instance_termination_timeout
    #   <p>Decommissioning timeout override for the specific list of instances to be
    #            terminated.</p>
    #
    #   @return [Integer]
    #
    InstanceResizePolicy = ::Struct.new(
      :instances_to_terminate,
      :instances_to_protect,
      :instance_termination_timeout,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InstanceRoleType
    #
    module InstanceRoleType
      # No documentation available.
      #
      MASTER = "MASTER"

      # No documentation available.
      #
      CORE = "CORE"

      # No documentation available.
      #
      TASK = "TASK"
    end

    # Includes enum constants for InstanceState
    #
    module InstanceState
      # No documentation available.
      #
      AWAITING_FULFILLMENT = "AWAITING_FULFILLMENT"

      # No documentation available.
      #
      PROVISIONING = "PROVISIONING"

      # No documentation available.
      #
      BOOTSTRAPPING = "BOOTSTRAPPING"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      TERMINATED = "TERMINATED"
    end

    # <p>The details of the status change reason for the instance.</p>
    #
    # @!attribute code
    #   <p>The programmable code for the state change reason.</p>
    #
    #   Enum, one of: ["INTERNAL_ERROR", "VALIDATION_ERROR", "INSTANCE_FAILURE", "BOOTSTRAP_FAILURE", "CLUSTER_TERMINATED"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The status change reason description.</p>
    #
    #   @return [String]
    #
    InstanceStateChangeReason = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InstanceStateChangeReasonCode
    #
    module InstanceStateChangeReasonCode
      # No documentation available.
      #
      INTERNAL_ERROR = "INTERNAL_ERROR"

      # No documentation available.
      #
      VALIDATION_ERROR = "VALIDATION_ERROR"

      # No documentation available.
      #
      INSTANCE_FAILURE = "INSTANCE_FAILURE"

      # No documentation available.
      #
      BOOTSTRAP_FAILURE = "BOOTSTRAP_FAILURE"

      # No documentation available.
      #
      CLUSTER_TERMINATED = "CLUSTER_TERMINATED"
    end

    # <p>The instance status details.</p>
    #
    # @!attribute state
    #   <p>The current state of the instance.</p>
    #
    #   Enum, one of: ["AWAITING_FULFILLMENT", "PROVISIONING", "BOOTSTRAPPING", "RUNNING", "TERMINATED"]
    #
    #   @return [String]
    #
    # @!attribute state_change_reason
    #   <p>The details of the status change reason for the instance.</p>
    #
    #   @return [InstanceStateChangeReason]
    #
    # @!attribute timeline
    #   <p>The timeline of the instance status over time.</p>
    #
    #   @return [InstanceTimeline]
    #
    InstanceStatus = ::Struct.new(
      :state,
      :state_change_reason,
      :timeline,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The timeline of the instance lifecycle.</p>
    #
    # @!attribute creation_date_time
    #   <p>The creation date and time of the instance.</p>
    #
    #   @return [Time]
    #
    # @!attribute ready_date_time
    #   <p>The date and time when the instance was ready to perform tasks.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_date_time
    #   <p>The date and time when the instance was terminated.</p>
    #
    #   @return [Time]
    #
    InstanceTimeline = ::Struct.new(
      :creation_date_time,
      :ready_date_time,
      :end_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An instance type configuration for each instance type in an instance fleet, which
    #          determines the EC2 instances Amazon EMR attempts to provision to fulfill On-Demand
    #          and Spot target capacities. When you use an allocation strategy, you can include a maximum
    #          of 30 instance type configurations for a fleet. For more information about how to use an
    #          allocation strategy, see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-instance-fleet.html">Configure Instance
    #             Fleets</a>. Without an allocation strategy, you may specify a maximum of five
    #          instance type configurations for a fleet.</p>
    #          <note>
    #             <p>The instance fleet configuration is available only in Amazon EMR versions
    #             4.8.0 and later, excluding 5.0.x versions.</p>
    #          </note>
    #
    # @!attribute instance_type
    #   <p>An EC2 instance type, such as <code>m3.xlarge</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute weighted_capacity
    #   <p>The number of units that a provisioned instance of this type provides toward fulfilling
    #            the target capacities defined in <a>InstanceFleetConfig</a>. This value is 1 for
    #            a master instance fleet, and must be 1 or greater for core and task instance fleets.
    #            Defaults to 1 if not specified. </p>
    #
    #   @return [Integer]
    #
    # @!attribute bid_price
    #   <p>The bid price for each EC2 Spot Instance type as defined by <code>InstanceType</code>.
    #            Expressed in USD. If neither <code>BidPrice</code> nor
    #               <code>BidPriceAsPercentageOfOnDemandPrice</code> is provided,
    #               <code>BidPriceAsPercentageOfOnDemandPrice</code> defaults to 100%. </p>
    #
    #   @return [String]
    #
    # @!attribute bid_price_as_percentage_of_on_demand_price
    #   <p>The bid price, as a percentage of On-Demand price, for each EC2 Spot Instance as defined
    #            by <code>InstanceType</code>. Expressed as a number (for example, 20 specifies 20%). If
    #            neither <code>BidPrice</code> nor <code>BidPriceAsPercentageOfOnDemandPrice</code> is
    #            provided, <code>BidPriceAsPercentageOfOnDemandPrice</code> defaults to 100%.</p>
    #
    #   @return [Float]
    #
    # @!attribute ebs_configuration
    #   <p>The configuration of Amazon Elastic Block Store (Amazon EBS) attached to each
    #            instance as defined by <code>InstanceType</code>. </p>
    #
    #   @return [EbsConfiguration]
    #
    # @!attribute configurations
    #   <p>A configuration classification that applies when provisioning cluster instances, which
    #            can include configurations for applications and software that run on the cluster.</p>
    #
    #   @return [Array<Configuration>]
    #
    # @!attribute custom_ami_id
    #   <p>The custom AMI ID to use for the instance type.</p>
    #
    #   @return [String]
    #
    InstanceTypeConfig = ::Struct.new(
      :instance_type,
      :weighted_capacity,
      :bid_price,
      :bid_price_as_percentage_of_on_demand_price,
      :ebs_configuration,
      :configurations,
      :custom_ami_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration specification for each instance type in an instance fleet.</p>
    #          <note>
    #             <p>The instance fleet configuration is available only in Amazon EMR versions
    #             4.8.0 and later, excluding 5.0.x versions.</p>
    #          </note>
    #
    # @!attribute instance_type
    #   <p>The EC2 instance type, for example <code>m3.xlarge</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute weighted_capacity
    #   <p>The number of units that a provisioned instance of this type provides toward fulfilling
    #            the target capacities defined in <a>InstanceFleetConfig</a>. Capacity values
    #            represent performance characteristics such as vCPUs, memory, or I/O. If not specified, the
    #            default value is 1.</p>
    #
    #   @return [Integer]
    #
    # @!attribute bid_price
    #   <p>The bid price for each EC2 Spot Instance type as defined by <code>InstanceType</code>.
    #            Expressed in USD.</p>
    #
    #   @return [String]
    #
    # @!attribute bid_price_as_percentage_of_on_demand_price
    #   <p>The bid price, as a percentage of On-Demand price, for each EC2 Spot Instance as defined
    #            by <code>InstanceType</code>. Expressed as a number (for example, 20 specifies 20%).</p>
    #
    #   @return [Float]
    #
    # @!attribute configurations
    #   <p>A configuration classification that applies when provisioning cluster instances, which
    #            can include configurations for applications and software bundled with Amazon EMR.</p>
    #
    #   @return [Array<Configuration>]
    #
    # @!attribute ebs_block_devices
    #   <p>The configuration of Amazon Elastic Block Store (Amazon EBS) attached to each
    #            instance as defined by <code>InstanceType</code>.</p>
    #
    #   @return [Array<EbsBlockDevice>]
    #
    # @!attribute ebs_optimized
    #   <p>Evaluates to <code>TRUE</code> when the specified <code>InstanceType</code> is
    #            EBS-optimized.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute custom_ami_id
    #   <p>The custom AMI ID to use for the instance type.</p>
    #
    #   @return [String]
    #
    InstanceTypeSpecification = ::Struct.new(
      :instance_type,
      :weighted_capacity,
      :bid_price,
      :bid_price_as_percentage_of_on_demand_price,
      :configurations,
      :ebs_block_devices,
      :ebs_optimized,
      :custom_ami_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that an error occurred while processing the request and that the request was
    #          not completed.</p>
    #
    InternalServerError = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception occurs when there is an internal failure in the Amazon EMR
    #          service.</p>
    #
    # @!attribute message
    #   <p>The message associated with the exception.</p>
    #
    #   @return [String]
    #
    InternalServerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This exception occurs when there is something wrong with user input.</p>
    #
    # @!attribute error_code
    #   <p>The error code associated with the exception.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidRequestException = ::Struct.new(
      :error_code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A description of a cluster (job flow).</p>
    #
    # @!attribute job_flow_id
    #   <p>The job flow identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the job flow.</p>
    #
    #   @return [String]
    #
    # @!attribute log_uri
    #   <p>The location in Amazon S3 where log files for the job are stored.</p>
    #
    #   @return [String]
    #
    # @!attribute log_encryption_kms_key_id
    #   <p>The KMS key used for encrypting log files. This attribute is only
    #            available with EMR version 5.30.0 and later, excluding EMR 6.0.0.</p>
    #
    #   @return [String]
    #
    # @!attribute ami_version
    #   <p>Applies only to Amazon EMR AMI versions 3.x and 2.x. For Amazon EMR
    #            releases 4.0 and later, <code>ReleaseLabel</code> is used. To specify a custom AMI, use
    #               <code>CustomAmiID</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_status_detail
    #   <p>Describes the execution status of the job flow.</p>
    #
    #   @return [JobFlowExecutionStatusDetail]
    #
    # @!attribute instances
    #   <p>Describes the Amazon EC2 instances of the job flow.</p>
    #
    #   @return [JobFlowInstancesDetail]
    #
    # @!attribute steps
    #   <p>A list of steps run by the job flow.</p>
    #
    #   @return [Array<StepDetail>]
    #
    # @!attribute bootstrap_actions
    #   <p>A list of the bootstrap actions run by the job flow.</p>
    #
    #   @return [Array<BootstrapActionDetail>]
    #
    # @!attribute supported_products
    #   <p>A list of strings set by third-party software when the job flow is launched. If you are
    #            not using third-party software to manage the job flow, this value is empty.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute visible_to_all_users
    #   <p>Indicates whether the cluster is visible to IAM principals in the Amazon Web Services account associated with the cluster. When <code>true</code>, IAM principals
    #            in the Amazon Web Services account can perform EMR cluster actions that their IAM policies
    #            allow. When <code>false</code>, only the IAM principal that created the cluster and the
    #               Amazon Web Services account root user can perform EMR actions, regardless of IAM
    #            permissions policies attached to other IAM principals.</p>
    #            <p>The default value is <code>true</code> if a value is not provided when creating a
    #            cluster using the EMR API <a>RunJobFlow</a> command, the CLI
    #            <a href="https://docs.aws.amazon.com/cli/latest/reference/emr/create-cluster.html">create-cluster</a> command, or the Amazon Web Services Management Console.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute job_flow_role
    #   <p>The IAM role that was specified when the job flow was launched. The EC2 instances of the
    #            job flow assume this role.</p>
    #
    #   @return [String]
    #
    # @!attribute service_role
    #   <p>The IAM role that is assumed by the Amazon EMR service to access Amazon Web Services resources on your behalf.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_scaling_role
    #   <p>An IAM role for automatic scaling policies. The default role is
    #               <code>EMR_AutoScaling_DefaultRole</code>. The IAM role provides a way for the automatic
    #            scaling feature to get the required permissions it needs to launch and terminate EC2
    #            instances in an instance group.</p>
    #
    #   @return [String]
    #
    # @!attribute scale_down_behavior
    #   <p>The way that individual Amazon EC2 instances terminate when an automatic
    #            scale-in activity occurs or an instance group is resized.
    #               <code>TERMINATE_AT_INSTANCE_HOUR</code> indicates that Amazon EMR terminates
    #            nodes at the instance-hour boundary, regardless of when the request to terminate the
    #            instance was submitted. This option is only available with Amazon EMR 5.1.0 and
    #            later and is the default for clusters created using that version.
    #               <code>TERMINATE_AT_TASK_COMPLETION</code> indicates that Amazon EMR adds nodes
    #            to a deny list and drains tasks from nodes before terminating the Amazon EC2
    #            instances, regardless of the instance-hour boundary. With either behavior, Amazon EMR removes the least active nodes first and blocks instance termination if it could lead to
    #            HDFS corruption. <code>TERMINATE_AT_TASK_COMPLETION</code> available only in Amazon EMR version 4.1.0 and later, and is the default for versions of Amazon EMR earlier than 5.1.0.</p>
    #
    #   Enum, one of: ["TERMINATE_AT_INSTANCE_HOUR", "TERMINATE_AT_TASK_COMPLETION"]
    #
    #   @return [String]
    #
    JobFlowDetail = ::Struct.new(
      :job_flow_id,
      :name,
      :log_uri,
      :log_encryption_kms_key_id,
      :ami_version,
      :execution_status_detail,
      :instances,
      :steps,
      :bootstrap_actions,
      :supported_products,
      :visible_to_all_users,
      :job_flow_role,
      :service_role,
      :auto_scaling_role,
      :scale_down_behavior,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.visible_to_all_users ||= false
      end

    end

    # Includes enum constants for JobFlowExecutionState
    #
    module JobFlowExecutionState
      # No documentation available.
      #
      STARTING = "STARTING"

      # No documentation available.
      #
      BOOTSTRAPPING = "BOOTSTRAPPING"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      WAITING = "WAITING"

      # No documentation available.
      #
      SHUTTING_DOWN = "SHUTTING_DOWN"

      # No documentation available.
      #
      TERMINATED = "TERMINATED"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>Describes the status of the cluster (job flow).</p>
    #
    # @!attribute state
    #   <p>The state of the job flow.</p>
    #
    #   Enum, one of: ["STARTING", "BOOTSTRAPPING", "RUNNING", "WAITING", "SHUTTING_DOWN", "TERMINATED", "COMPLETED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>The creation date and time of the job flow.</p>
    #
    #   @return [Time]
    #
    # @!attribute start_date_time
    #   <p>The start date and time of the job flow.</p>
    #
    #   @return [Time]
    #
    # @!attribute ready_date_time
    #   <p>The date and time when the job flow was ready to start running bootstrap actions.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_date_time
    #   <p>The completion date and time of the job flow.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_state_change_reason
    #   <p>Description of the job flow last changed state.</p>
    #
    #   @return [String]
    #
    JobFlowExecutionStatusDetail = ::Struct.new(
      :state,
      :creation_date_time,
      :start_date_time,
      :ready_date_time,
      :end_date_time,
      :last_state_change_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A description of the Amazon EC2 instance on which the cluster (job flow) runs. A
    #          valid JobFlowInstancesConfig must contain either InstanceGroups or InstanceFleets. They
    #          cannot be used together. You may also have MasterInstanceType, SlaveInstanceType, and
    #          InstanceCount (all three must be present), but we don't recommend this
    #          configuration.</p>
    #
    # @!attribute master_instance_type
    #   <p>The EC2 instance type of the master node.</p>
    #
    #   @return [String]
    #
    # @!attribute slave_instance_type
    #   <p>The EC2 instance type of the core and task nodes.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_count
    #   <p>The number of EC2 instances in the cluster.</p>
    #
    #   @return [Integer]
    #
    # @!attribute instance_groups
    #   <p>Configuration for the instance groups in a cluster.</p>
    #
    #   @return [Array<InstanceGroupConfig>]
    #
    # @!attribute instance_fleets
    #   <note>
    #               <p>The instance fleet configuration is available only in Amazon EMR versions
    #               4.8.0 and later, excluding 5.0.x versions.</p>
    #            </note>
    #            <p>Describes the EC2 instances and instance configurations for clusters that use the
    #            instance fleet configuration.</p>
    #
    #   @return [Array<InstanceFleetConfig>]
    #
    # @!attribute ec2_key_name
    #   <p>The name of the EC2 key pair that can be used to connect to the master node using SSH as
    #            the user called "hadoop."</p>
    #
    #   @return [String]
    #
    # @!attribute placement
    #   <p>The Availability Zone in which the cluster runs.</p>
    #
    #   @return [PlacementType]
    #
    # @!attribute keep_job_flow_alive_when_no_steps
    #   <p>Specifies whether the cluster should remain available after completing all steps.
    #            Defaults to <code>true</code>. For more information about configuring cluster termination,
    #            see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-termination.html">Control Cluster Termination</a> in the <i>EMR Management
    #            Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute termination_protected
    #   <p>Specifies whether to lock the cluster to prevent the Amazon EC2 instances from
    #            being terminated by API call, user intervention, or in the event of a job-flow
    #            error.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute hadoop_version
    #   <p>Applies only to Amazon EMR release versions earlier than 4.0. The Hadoop version
    #            for the cluster. Valid inputs are "0.18" (no longer maintained), "0.20" (no longer
    #            maintained), "0.20.205" (no longer maintained), "1.0.3", "2.2.0", or "2.4.0". If you do not
    #            set this value, the default of 0.18 is used, unless the <code>AmiVersion</code> parameter
    #            is set in the RunJobFlow call, in which case the default version of Hadoop for that AMI
    #            version is used.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_subnet_id
    #   <p>Applies to clusters that use the uniform instance group configuration. To launch the
    #            cluster in Amazon Virtual Private Cloud (Amazon VPC), set this parameter to the
    #            identifier of the Amazon VPC subnet where you want the cluster to launch. If you do
    #            not specify this value and your account supports EC2-Classic, the cluster launches in
    #            EC2-Classic.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_subnet_ids
    #   <p>Applies to clusters that use the instance fleet configuration. When multiple EC2 subnet
    #            IDs are specified, Amazon EMR evaluates them and launches instances in the optimal
    #            subnet.</p>
    #            <note>
    #               <p>The instance fleet configuration is available only in Amazon EMR versions
    #               4.8.0 and later, excluding 5.0.x versions.</p>
    #            </note>
    #
    #   @return [Array<String>]
    #
    # @!attribute emr_managed_master_security_group
    #   <p>The identifier of the Amazon EC2 security group for the master node. If you
    #            specify <code>EmrManagedMasterSecurityGroup</code>, you must also specify
    #               <code>EmrManagedSlaveSecurityGroup</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute emr_managed_slave_security_group
    #   <p>The identifier of the Amazon EC2 security group for the core and task nodes. If
    #            you specify <code>EmrManagedSlaveSecurityGroup</code>, you must also specify
    #               <code>EmrManagedMasterSecurityGroup</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute service_access_security_group
    #   <p>The identifier of the Amazon EC2 security group for the Amazon EMR
    #            service to access clusters in VPC private subnets.</p>
    #
    #   @return [String]
    #
    # @!attribute additional_master_security_groups
    #   <p>A list of additional Amazon EC2 security group IDs for the master node.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute additional_slave_security_groups
    #   <p>A list of additional Amazon EC2 security group IDs for the core and task
    #            nodes.</p>
    #
    #   @return [Array<String>]
    #
    JobFlowInstancesConfig = ::Struct.new(
      :master_instance_type,
      :slave_instance_type,
      :instance_count,
      :instance_groups,
      :instance_fleets,
      :ec2_key_name,
      :placement,
      :keep_job_flow_alive_when_no_steps,
      :termination_protected,
      :hadoop_version,
      :ec2_subnet_id,
      :ec2_subnet_ids,
      :emr_managed_master_security_group,
      :emr_managed_slave_security_group,
      :service_access_security_group,
      :additional_master_security_groups,
      :additional_slave_security_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.keep_job_flow_alive_when_no_steps ||= false
        self.termination_protected ||= false
      end

    end

    # <p>Specify the type of Amazon EC2 instances that the cluster (job flow) runs
    #          on.</p>
    #
    # @!attribute master_instance_type
    #   <p>The Amazon EC2 master node instance type.</p>
    #
    #   @return [String]
    #
    # @!attribute master_public_dns_name
    #   <p>The DNS name of the master node. If the cluster is on a private subnet, this is the
    #            private DNS name. On a public subnet, this is the public DNS name.</p>
    #
    #   @return [String]
    #
    # @!attribute master_instance_id
    #   <p>The Amazon EC2 instance identifier of the master node.</p>
    #
    #   @return [String]
    #
    # @!attribute slave_instance_type
    #   <p>The Amazon EC2 core and task node instance type.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_count
    #   <p>The number of Amazon EC2 instances in the cluster. If the value is 1, the same
    #            instance serves as both the master and core and task node. If the value is greater than 1,
    #            one instance is the master node and all others are core and task nodes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute instance_groups
    #   <p>Details about the instance groups in a cluster.</p>
    #
    #   @return [Array<InstanceGroupDetail>]
    #
    # @!attribute normalized_instance_hours
    #   <p>An approximation of the cost of the cluster, represented in m1.small/hours. This value
    #            is increased one time for every hour that an m1.small instance runs. Larger instances are
    #            weighted more heavily, so an Amazon EC2 instance that is roughly four times more
    #            expensive would result in the normalized instance hours being increased incrementally four
    #            times. This result is only an approximation and does not reflect the actual billing
    #            rate.</p>
    #
    #   @return [Integer]
    #
    # @!attribute ec2_key_name
    #   <p>The name of an Amazon EC2 key pair that can be used to connect to the master
    #            node using SSH.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_subnet_id
    #   <p>For clusters launched within Amazon Virtual Private Cloud, this is the identifier of the
    #            subnet where the cluster was launched.</p>
    #
    #   @return [String]
    #
    # @!attribute placement
    #   <p>The Amazon EC2 Availability Zone for the cluster.</p>
    #
    #   @return [PlacementType]
    #
    # @!attribute keep_job_flow_alive_when_no_steps
    #   <p>Specifies whether the cluster should remain available after completing all steps.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute termination_protected
    #   <p>Specifies whether the Amazon EC2 instances in the cluster are protected from
    #            termination by API calls, user intervention, or in the event of a job-flow error.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute hadoop_version
    #   <p>The Hadoop version for the cluster.</p>
    #
    #   @return [String]
    #
    JobFlowInstancesDetail = ::Struct.new(
      :master_instance_type,
      :master_public_dns_name,
      :master_instance_id,
      :slave_instance_type,
      :instance_count,
      :instance_groups,
      :normalized_instance_hours,
      :ec2_key_name,
      :ec2_subnet_id,
      :placement,
      :keep_job_flow_alive_when_no_steps,
      :termination_protected,
      :hadoop_version,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.keep_job_flow_alive_when_no_steps ||= false
        self.termination_protected ||= false
      end

    end

    # <p>Attributes for Kerberos configuration when Kerberos authentication is enabled using a
    #          security configuration. For more information see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-kerberos.html">Use Kerberos Authentication</a>
    #          in the <i>Amazon EMR Management Guide</i>.</p>
    #
    # @!attribute realm
    #   <p>The name of the Kerberos realm to which all nodes in a cluster belong. For example,
    #               <code>EC2.INTERNAL</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute kdc_admin_password
    #   <p>The password used within the cluster for the kadmin service on the cluster-dedicated
    #            KDC, which maintains Kerberos principals, password policies, and keytabs for the
    #            cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute cross_realm_trust_principal_password
    #   <p>Required only when establishing a cross-realm trust with a KDC in a different realm. The
    #            cross-realm principal password, which must be identical across realms.</p>
    #
    #   @return [String]
    #
    # @!attribute ad_domain_join_user
    #   <p>Required only when establishing a cross-realm trust with an Active Directory domain. A
    #            user with sufficient privileges to join resources to the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute ad_domain_join_password
    #   <p>The Active Directory password for <code>ADDomainJoinUser</code>.</p>
    #
    #   @return [String]
    #
    KerberosAttributes = ::Struct.new(
      :realm,
      :kdc_admin_password,
      :cross_realm_trust_principal_password,
      :ad_domain_join_user,
      :ad_domain_join_password,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A key-value pair.</p>
    #
    # @!attribute key
    #   <p>The unique identifier of a key-value pair.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value part of the identified key.</p>
    #
    #   @return [String]
    #
    KeyValue = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This input determines which bootstrap actions to retrieve.</p>
    #
    # @!attribute cluster_id
    #   <p>The cluster identifier for the bootstrap actions to list.</p>
    #
    #   @return [String]
    #
    # @!attribute marker
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #
    #   @return [String]
    #
    ListBootstrapActionsInput = ::Struct.new(
      :cluster_id,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This output contains the bootstrap actions detail.</p>
    #
    # @!attribute bootstrap_actions
    #   <p>The bootstrap actions associated with the cluster.</p>
    #
    #   @return [Array<Command>]
    #
    # @!attribute marker
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #
    #   @return [String]
    #
    ListBootstrapActionsOutput = ::Struct.new(
      :bootstrap_actions,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This input determines how the ListClusters action filters the list of clusters that it
    #          returns.</p>
    #
    # @!attribute created_after
    #   <p>The creation date and time beginning value filter for listing clusters.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_before
    #   <p>The creation date and time end value filter for listing clusters.</p>
    #
    #   @return [Time]
    #
    # @!attribute cluster_states
    #   <p>The cluster state filters to apply when listing clusters. Clusters that change state
    #            while this action runs may be not be returned as expected in the list of clusters.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute marker
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #
    #   @return [String]
    #
    ListClustersInput = ::Struct.new(
      :created_after,
      :created_before,
      :cluster_states,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This contains a ClusterSummaryList with the cluster details; for example, the cluster
    #          IDs, names, and status.</p>
    #
    # @!attribute clusters
    #   <p>The list of clusters for the account based on the given filters.</p>
    #
    #   @return [Array<ClusterSummary>]
    #
    # @!attribute marker
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #
    #   @return [String]
    #
    ListClustersOutput = ::Struct.new(
      :clusters,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_id
    #   <p>The unique identifier of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute marker
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #
    #   @return [String]
    #
    ListInstanceFleetsInput = ::Struct.new(
      :cluster_id,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_fleets
    #   <p>The list of instance fleets for the cluster and given filters.</p>
    #
    #   @return [Array<InstanceFleet>]
    #
    # @!attribute marker
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #
    #   @return [String]
    #
    ListInstanceFleetsOutput = ::Struct.new(
      :instance_fleets,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This input determines which instance groups to retrieve.</p>
    #
    # @!attribute cluster_id
    #   <p>The identifier of the cluster for which to list the instance groups.</p>
    #
    #   @return [String]
    #
    # @!attribute marker
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #
    #   @return [String]
    #
    ListInstanceGroupsInput = ::Struct.new(
      :cluster_id,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This input determines which instance groups to retrieve.</p>
    #
    # @!attribute instance_groups
    #   <p>The list of instance groups for the cluster and given filters.</p>
    #
    #   @return [Array<InstanceGroup>]
    #
    # @!attribute marker
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #
    #   @return [String]
    #
    ListInstanceGroupsOutput = ::Struct.new(
      :instance_groups,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This input determines which instances to list.</p>
    #
    # @!attribute cluster_id
    #   <p>The identifier of the cluster for which to list the instances.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_group_id
    #   <p>The identifier of the instance group for which to list the instances.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_group_types
    #   <p>The type of instance group for which to list the instances.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute instance_fleet_id
    #   <p>The unique identifier of the instance fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_fleet_type
    #   <p>The node type of the instance fleet. For example MASTER, CORE, or TASK.</p>
    #
    #   Enum, one of: ["MASTER", "CORE", "TASK"]
    #
    #   @return [String]
    #
    # @!attribute instance_states
    #   <p>A list of instance states that will filter the instances returned with this
    #            request.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute marker
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #
    #   @return [String]
    #
    ListInstancesInput = ::Struct.new(
      :cluster_id,
      :instance_group_id,
      :instance_group_types,
      :instance_fleet_id,
      :instance_fleet_type,
      :instance_states,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This output contains the list of instances.</p>
    #
    # @!attribute instances
    #   <p>The list of instances for the cluster and given filters.</p>
    #
    #   @return [Array<Instance>]
    #
    # @!attribute marker
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #
    #   @return [String]
    #
    ListInstancesOutput = ::Struct.new(
      :instances,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute editor_id
    #   <p>The unique ID of the editor associated with the notebook execution.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status filter for listing notebook executions.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>START_PENDING</code> indicates that the cluster has received the execution
    #                  request but execution has not begun.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STARTING</code> indicates that the execution is starting on the
    #                  cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RUNNING</code> indicates that the execution is being processed by the
    #                  cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FINISHING</code> indicates that execution processing is in the final
    #                  stages.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FINISHED</code> indicates that the execution has completed without
    #                  error.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILING</code> indicates that the execution is failing and will not finish
    #                  successfully.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> indicates that the execution failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOP_PENDING</code> indicates that the cluster has received a
    #                     <code>StopNotebookExecution</code> request and the stop is pending.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOPPING</code> indicates that the cluster is in the process of stopping the
    #                  execution as a result of a <code>StopNotebookExecution</code> request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOPPED</code> indicates that the execution stopped because of a
    #                     <code>StopNotebookExecution</code> request.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["START_PENDING", "STARTING", "RUNNING", "FINISHING", "FINISHED", "FAILING", "FAILED", "STOP_PENDING", "STOPPING", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute from
    #   <p>The beginning of time range filter for listing notebook executions. The default is the
    #            timestamp of 30 days ago.</p>
    #
    #   @return [Time]
    #
    # @!attribute to
    #   <p>The end of time range filter for listing notebook executions. The default is the current
    #            timestamp.</p>
    #
    #   @return [Time]
    #
    # @!attribute marker
    #   <p>The pagination token, returned by a previous <code>ListNotebookExecutions</code> call,
    #            that indicates the start of the list for this <code>ListNotebookExecutions</code>
    #            call.</p>
    #
    #   @return [String]
    #
    ListNotebookExecutionsInput = ::Struct.new(
      :editor_id,
      :status,
      :from,
      :to,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute notebook_executions
    #   <p>A list of notebook executions.</p>
    #
    #   @return [Array<NotebookExecutionSummary>]
    #
    # @!attribute marker
    #   <p>A pagination token that a subsequent <code>ListNotebookExecutions</code> can use to
    #            determine the next set of results to retrieve.</p>
    #
    #   @return [String]
    #
    ListNotebookExecutionsOutput = ::Struct.new(
      :notebook_executions,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p>Filters the results of the request. <code>Prefix</code> specifies the prefix of release
    #            labels to return. <code>Application</code> specifies the application (with/without version)
    #            of release labels to return.</p>
    #
    #   @return [ReleaseLabelFilter]
    #
    # @!attribute next_token
    #   <p>Specifies the next page of results. If <code>NextToken</code> is not specified, which is
    #            usually the case for the first request of ListReleaseLabels, the first page of results are
    #            determined by other filtering parameters or by the latest version. The
    #               <code>ListReleaseLabels</code> request fails if the identity (Amazon Web Services account
    #            ID) and all filtering parameters are different from the original request, or if the
    #               <code>NextToken</code> is expired or tampered with.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Defines the maximum number of release labels to return in a single response. The default
    #            is <code>100</code>.</p>
    #
    #   @return [Integer]
    #
    ListReleaseLabelsInput = ::Struct.new(
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute release_labels
    #   <p>The returned release labels.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>Used to paginate the next page of results if specified in the next
    #               <code>ListReleaseLabels</code> request.</p>
    #
    #   @return [String]
    #
    ListReleaseLabelsOutput = ::Struct.new(
      :release_labels,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute marker
    #   <p>The pagination token that indicates the set of results to retrieve.</p>
    #
    #   @return [String]
    #
    ListSecurityConfigurationsInput = ::Struct.new(
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute security_configurations
    #   <p>The creation date and time, and name, of each security configuration.</p>
    #
    #   @return [Array<SecurityConfigurationSummary>]
    #
    # @!attribute marker
    #   <p>A pagination token that indicates the next set of results to retrieve. Include the
    #            marker in the next ListSecurityConfiguration call to retrieve the next page of results, if
    #            required.</p>
    #
    #   @return [String]
    #
    ListSecurityConfigurationsOutput = ::Struct.new(
      :security_configurations,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This input determines which steps to list.</p>
    #
    # @!attribute cluster_id
    #   <p>The identifier of the cluster for which to list the steps.</p>
    #
    #   @return [String]
    #
    # @!attribute step_states
    #   <p>The filter to limit the step list based on certain states.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute step_ids
    #   <p>The filter to limit the step list based on the identifier of the steps. You can specify
    #            a maximum of ten Step IDs. The character constraint applies to the overall length of the
    #            array.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute marker
    #   <p>The maximum number of steps that a single <code>ListSteps</code> action returns is 50.
    #            To return a longer list of steps, use multiple <code>ListSteps</code> actions along with
    #            the <code>Marker</code> parameter, which is a pagination token that indicates the next set
    #            of results to retrieve.</p>
    #
    #   @return [String]
    #
    ListStepsInput = ::Struct.new(
      :cluster_id,
      :step_states,
      :step_ids,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This output contains the list of steps returned in reverse order. This means that the
    #          last step is the first element in the list.</p>
    #
    # @!attribute steps
    #   <p>The filtered list of steps for the cluster.</p>
    #
    #   @return [Array<StepSummary>]
    #
    # @!attribute marker
    #   <p>The maximum number of steps that a single <code>ListSteps</code> action returns is 50.
    #            To return a longer list of steps, use multiple <code>ListSteps</code> actions along with
    #            the <code>Marker</code> parameter, which is a pagination token that indicates the next set
    #            of results to retrieve.</p>
    #
    #   @return [String]
    #
    ListStepsOutput = ::Struct.new(
      :steps,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute studio_id
    #   <p>The ID of the Amazon EMR Studio.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_type
    #   <p>Specifies whether to return session mappings for users or groups. If not specified, the
    #            results include session mapping details for both users and groups.</p>
    #
    #   Enum, one of: ["USER", "GROUP"]
    #
    #   @return [String]
    #
    # @!attribute marker
    #   <p>The pagination token that indicates the set of results to retrieve.</p>
    #
    #   @return [String]
    #
    ListStudioSessionMappingsInput = ::Struct.new(
      :studio_id,
      :identity_type,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute session_mappings
    #   <p>A list of session mapping summary objects. Each object includes session mapping details
    #            such as creation time, identity type (user or group), and Amazon EMR Studio
    #            ID.</p>
    #
    #   @return [Array<SessionMappingSummary>]
    #
    # @!attribute marker
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #
    #   @return [String]
    #
    ListStudioSessionMappingsOutput = ::Struct.new(
      :session_mappings,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute marker
    #   <p>The pagination token that indicates the set of results to retrieve.</p>
    #
    #   @return [String]
    #
    ListStudiosInput = ::Struct.new(
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute studios
    #   <p>The list of Studio summary objects.</p>
    #
    #   @return [Array<StudioSummary>]
    #
    # @!attribute marker
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    #
    #   @return [String]
    #
    ListStudiosOutput = ::Struct.new(
      :studios,
      :marker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Managed scaling policy for an Amazon EMR cluster. The policy specifies the
    #          limits for resources that can be added or terminated from a cluster. The policy only
    #          applies to the core and task nodes. The master node cannot be scaled after initial
    #          configuration. </p>
    #
    # @!attribute compute_limits
    #   <p>The EC2 unit limits for a managed scaling policy. The managed scaling activity of a
    #            cluster is not allowed to go above or below these limits. The limit only applies to the
    #            core and task nodes. The master node cannot be scaled after initial configuration.</p>
    #
    #   @return [ComputeLimits]
    #
    ManagedScalingPolicy = ::Struct.new(
      :compute_limits,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MarketType
    #
    module MarketType
      # No documentation available.
      #
      ON_DEMAND = "ON_DEMAND"

      # No documentation available.
      #
      SPOT = "SPOT"
    end

    # <p>A CloudWatch dimension, which is specified using a <code>Key</code> (known as a
    #             <code>Name</code> in CloudWatch), <code>Value</code> pair. By default, Amazon EMR uses one dimension whose <code>Key</code> is <code>JobFlowID</code> and
    #             <code>Value</code> is a variable representing the cluster ID, which is
    #             <code>${emr.clusterId}</code>. This enables the rule to bootstrap when the cluster ID
    #          becomes available.</p>
    #
    # @!attribute key
    #   <p>The dimension name.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The dimension value.</p>
    #
    #   @return [String]
    #
    MetricDimension = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_id
    #   <p>The unique identifier of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute step_concurrency_level
    #   <p>The number of steps that can be executed concurrently. You can specify a minimum of 1
    #            step and a maximum of 256 steps. We recommend that you do not change this parameter while
    #            steps are running or the <code>ActionOnFailure</code> setting may not behave as expected.
    #            For more information see <a>Step$ActionOnFailure</a>.</p>
    #
    #   @return [Integer]
    #
    ModifyClusterInput = ::Struct.new(
      :cluster_id,
      :step_concurrency_level,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute step_concurrency_level
    #   <p>The number of steps that can be executed concurrently.</p>
    #
    #   @return [Integer]
    #
    ModifyClusterOutput = ::Struct.new(
      :step_concurrency_level,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_id
    #   <p>The unique identifier of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_fleet
    #   <p>The configuration parameters of the instance fleet.</p>
    #
    #   @return [InstanceFleetModifyConfig]
    #
    ModifyInstanceFleetInput = ::Struct.new(
      :cluster_id,
      :instance_fleet,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ModifyInstanceFleetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Change the size of some instance groups.</p>
    #
    # @!attribute cluster_id
    #   <p>The ID of the cluster to which the instance group belongs.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_groups
    #   <p>Instance groups to change.</p>
    #
    #   @return [Array<InstanceGroupModifyConfig>]
    #
    ModifyInstanceGroupsInput = ::Struct.new(
      :cluster_id,
      :instance_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ModifyInstanceGroupsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A notebook execution. An execution is a specific instance that an EMR Notebook is run
    #          using the <code>StartNotebookExecution</code> action.</p>
    #
    # @!attribute notebook_execution_id
    #   <p>The unique identifier of a notebook execution.</p>
    #
    #   @return [String]
    #
    # @!attribute editor_id
    #   <p>The unique identifier of the EMR Notebook that is used for the notebook
    #            execution.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_engine
    #   <p>The execution engine, such as an EMR cluster, used to run the EMR notebook and perform
    #            the notebook execution.</p>
    #
    #   @return [ExecutionEngineConfig]
    #
    # @!attribute notebook_execution_name
    #   <p>A name for the notebook execution.</p>
    #
    #   @return [String]
    #
    # @!attribute notebook_params
    #   <p>Input parameters in JSON format passed to the EMR Notebook at runtime for
    #            execution.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the notebook execution.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>START_PENDING</code> indicates that the cluster has received the execution
    #                  request but execution has not begun.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STARTING</code> indicates that the execution is starting on the
    #                  cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RUNNING</code> indicates that the execution is being processed by the
    #                  cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FINISHING</code> indicates that execution processing is in the final
    #                  stages.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FINISHED</code> indicates that the execution has completed without
    #                  error.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILING</code> indicates that the execution is failing and will not finish
    #                  successfully.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> indicates that the execution failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOP_PENDING</code> indicates that the cluster has received a
    #                     <code>StopNotebookExecution</code> request and the stop is pending.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOPPING</code> indicates that the cluster is in the process of stopping the
    #                  execution as a result of a <code>StopNotebookExecution</code> request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOPPED</code> indicates that the execution stopped because of a
    #                     <code>StopNotebookExecution</code> request.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["START_PENDING", "STARTING", "RUNNING", "FINISHING", "FINISHED", "FAILING", "FAILED", "STOP_PENDING", "STOPPING", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The timestamp when notebook execution started.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The timestamp when notebook execution ended.</p>
    #
    #   @return [Time]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the notebook execution.</p>
    #
    #   @return [String]
    #
    # @!attribute output_notebook_uri
    #   <p>The location of the notebook execution's output file in Amazon S3.</p>
    #
    #   @return [String]
    #
    # @!attribute last_state_change_reason
    #   <p>The reason for the latest status change of the notebook execution.</p>
    #
    #   @return [String]
    #
    # @!attribute notebook_instance_security_group_id
    #   <p>The unique identifier of the EC2 security group associated with the EMR Notebook
    #            instance. For more information see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-managed-notebooks-security-groups.html">Specifying
    #               EC2 Security Groups for EMR Notebooks</a> in the <i>EMR Management
    #               Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags associated with a notebook execution. Tags are user-defined key-value
    #            pairs that consist of a required key string with a maximum of 128 characters and an
    #            optional value string with a maximum of 256 characters.</p>
    #
    #   @return [Array<Tag>]
    #
    NotebookExecution = ::Struct.new(
      :notebook_execution_id,
      :editor_id,
      :execution_engine,
      :notebook_execution_name,
      :notebook_params,
      :status,
      :start_time,
      :end_time,
      :arn,
      :output_notebook_uri,
      :last_state_change_reason,
      :notebook_instance_security_group_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for NotebookExecutionStatus
    #
    module NotebookExecutionStatus
      # No documentation available.
      #
      START_PENDING = "START_PENDING"

      # No documentation available.
      #
      STARTING = "STARTING"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      FINISHING = "FINISHING"

      # No documentation available.
      #
      FINISHED = "FINISHED"

      # No documentation available.
      #
      FAILING = "FAILING"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      STOP_PENDING = "STOP_PENDING"

      # No documentation available.
      #
      STOPPING = "STOPPING"

      # No documentation available.
      #
      STOPPED = "STOPPED"
    end

    # <p>Details for a notebook execution. The details include information such as the unique ID
    #          and status of the notebook execution.</p>
    #
    # @!attribute notebook_execution_id
    #   <p>The unique identifier of the notebook execution.</p>
    #
    #   @return [String]
    #
    # @!attribute editor_id
    #   <p>The unique identifier of the editor associated with the notebook execution.</p>
    #
    #   @return [String]
    #
    # @!attribute notebook_execution_name
    #   <p>The name of the notebook execution.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the notebook execution.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>START_PENDING</code> indicates that the cluster has received the execution
    #                  request but execution has not begun.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STARTING</code> indicates that the execution is starting on the
    #                  cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RUNNING</code> indicates that the execution is being processed by the
    #                  cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FINISHING</code> indicates that execution processing is in the final
    #                  stages.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FINISHED</code> indicates that the execution has completed without
    #                  error.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILING</code> indicates that the execution is failing and will not finish
    #                  successfully.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> indicates that the execution failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOP_PENDING</code> indicates that the cluster has received a
    #                     <code>StopNotebookExecution</code> request and the stop is pending.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOPPING</code> indicates that the cluster is in the process of stopping the
    #                  execution as a result of a <code>StopNotebookExecution</code> request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOPPED</code> indicates that the execution stopped because of a
    #                     <code>StopNotebookExecution</code> request.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["START_PENDING", "STARTING", "RUNNING", "FINISHING", "FINISHED", "FAILING", "FAILED", "STOP_PENDING", "STOPPING", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The timestamp when notebook execution started.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The timestamp when notebook execution started.</p>
    #
    #   @return [Time]
    #
    NotebookExecutionSummary = ::Struct.new(
      :notebook_execution_id,
      :editor_id,
      :notebook_execution_name,
      :status,
      :start_time,
      :end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon Linux release specified for a cluster in the RunJobFlow request.</p>
    #
    # @!attribute label
    #   <p>The Amazon Linux release specified for a cluster in the RunJobFlow request. The format is as shown in <a href="https://docs.aws.amazon.com/AL2/latest/relnotes/relnotes-20220218.html">
    #                  <i>Amazon Linux 2 Release Notes</i>
    #               </a>. For example, 2.0.20220218.1.</p>
    #
    #   @return [String]
    #
    OSRelease = ::Struct.new(
      :label,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the strategy for using unused Capacity Reservations for fulfilling On-Demand
    #          capacity.</p>
    #
    # @!attribute usage_strategy
    #   <p>Indicates whether to use unused Capacity Reservations for fulfilling On-Demand
    #            capacity.</p>
    #            <p>If you specify <code>use-capacity-reservations-first</code>, the fleet uses unused
    #            Capacity Reservations to fulfill On-Demand capacity up to the target On-Demand capacity. If
    #            multiple instance pools have unused Capacity Reservations, the On-Demand allocation
    #            strategy (<code>lowest-price</code>) is applied. If the number of unused Capacity
    #            Reservations is less than the On-Demand target capacity, the remaining On-Demand target
    #            capacity is launched according to the On-Demand allocation strategy
    #               (<code>lowest-price</code>).</p>
    #            <p>If you do not specify a value, the fleet fulfills the On-Demand capacity according to
    #            the chosen On-Demand allocation strategy.</p>
    #
    #   Enum, one of: ["use-capacity-reservations-first"]
    #
    #   @return [String]
    #
    # @!attribute capacity_reservation_preference
    #   <p>Indicates the instance's Capacity Reservation preferences. Possible preferences
    #            include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>open</code> - The instance can run in any open Capacity Reservation that has
    #                  matching attributes (instance type, platform, Availability Zone).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>none</code> - The instance avoids running in a Capacity Reservation even if
    #                  one is available. The instance runs as an On-Demand Instance.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["open", "none"]
    #
    #   @return [String]
    #
    # @!attribute capacity_reservation_resource_group_arn
    #   <p>The ARN of the Capacity Reservation resource group in which to run the instance.</p>
    #
    #   @return [String]
    #
    OnDemandCapacityReservationOptions = ::Struct.new(
      :usage_strategy,
      :capacity_reservation_preference,
      :capacity_reservation_resource_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OnDemandCapacityReservationPreference
    #
    module OnDemandCapacityReservationPreference
      # No documentation available.
      #
      OPEN = "open"

      # No documentation available.
      #
      NONE = "none"
    end

    # Includes enum constants for OnDemandCapacityReservationUsageStrategy
    #
    module OnDemandCapacityReservationUsageStrategy
      # No documentation available.
      #
      USE_CAPACITY_RESERVATIONS_FIRST = "use-capacity-reservations-first"
    end

    # Includes enum constants for OnDemandProvisioningAllocationStrategy
    #
    module OnDemandProvisioningAllocationStrategy
      # No documentation available.
      #
      LOWEST_PRICE = "lowest-price"
    end

    # <p> The launch specification for On-Demand Instances in the instance fleet, which
    #          determines the allocation strategy. </p>
    #          <note>
    #             <p>The instance fleet configuration is available only in Amazon EMR versions
    #             4.8.0 and later, excluding 5.0.x versions. On-Demand Instances allocation strategy is
    #             available in Amazon EMR version 5.12.1 and later.</p>
    #          </note>
    #
    # @!attribute allocation_strategy
    #   <p>Specifies the strategy to use in launching On-Demand instance fleets. Currently, the
    #            only option is <code>lowest-price</code> (the default), which launches the lowest price
    #            first.</p>
    #
    #   Enum, one of: ["lowest-price"]
    #
    #   @return [String]
    #
    # @!attribute capacity_reservation_options
    #   <p>The launch specification for On-Demand instances in the instance fleet, which determines
    #            the allocation strategy.</p>
    #
    #   @return [OnDemandCapacityReservationOptions]
    #
    OnDemandProvisioningSpecification = ::Struct.new(
      :allocation_strategy,
      :capacity_reservation_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Placement group configuration for an Amazon EMR cluster. The configuration
    #          specifies the placement strategy that can be applied to instance roles during cluster
    #          creation.</p>
    #          <p>To use this configuration, consider attaching managed policy
    #          AmazonElasticMapReducePlacementGroupPolicy to the EMR role.</p>
    #
    # @!attribute instance_role
    #   <p>Role of the instance in the cluster.</p>
    #            <p>Starting with Amazon EMR version 5.23.0, the only supported instance role is
    #               <code>MASTER</code>.</p>
    #
    #   Enum, one of: ["MASTER", "CORE", "TASK"]
    #
    #   @return [String]
    #
    # @!attribute placement_strategy
    #   <p>EC2 Placement Group strategy associated with instance role.</p>
    #            <p>Starting with Amazon EMR version 5.23.0, the only supported placement strategy
    #            is <code>SPREAD</code> for the <code>MASTER</code> instance role.</p>
    #
    #   Enum, one of: ["SPREAD", "PARTITION", "CLUSTER", "NONE"]
    #
    #   @return [String]
    #
    PlacementGroupConfig = ::Struct.new(
      :instance_role,
      :placement_strategy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PlacementGroupStrategy
    #
    module PlacementGroupStrategy
      # No documentation available.
      #
      SPREAD = "SPREAD"

      # No documentation available.
      #
      PARTITION = "PARTITION"

      # No documentation available.
      #
      CLUSTER = "CLUSTER"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # <p>The Amazon EC2 Availability Zone configuration of the cluster (job flow).</p>
    #
    # @!attribute availability_zone
    #   <p>The Amazon EC2 Availability Zone for the cluster. <code>AvailabilityZone</code>
    #            is used for uniform instance groups, while <code>AvailabilityZones</code> (plural) is used
    #            for instance fleets.</p>
    #
    #   @return [String]
    #
    # @!attribute availability_zones
    #   <p>When multiple Availability Zones are specified, Amazon EMR evaluates them and
    #            launches instances in the optimal Availability Zone. <code>AvailabilityZones</code> is used
    #            for instance fleets, while <code>AvailabilityZone</code> (singular) is used for uniform
    #            instance groups.</p>
    #            <note>
    #               <p>The instance fleet configuration is available only in Amazon EMR versions
    #               4.8.0 and later, excluding 5.0.x versions.</p>
    #            </note>
    #
    #   @return [Array<String>]
    #
    PlacementType = ::Struct.new(
      :availability_zone,
      :availability_zones,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of port ranges that are permitted to allow inbound traffic from all public IP
    #          addresses. To specify a single port, use the same value for <code>MinRange</code> and
    #             <code>MaxRange</code>.</p>
    #
    # @!attribute min_range
    #   <p>The smallest port number in a specified range of port numbers.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_range
    #   <p>The smallest port number in a specified range of port numbers.</p>
    #
    #   @return [Integer]
    #
    PortRange = ::Struct.new(
      :min_range,
      :max_range,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_id
    #   <p>Specifies the ID of a cluster. The instance group to which the automatic scaling policy
    #            is applied is within this cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_group_id
    #   <p>Specifies the ID of the instance group to which the automatic scaling policy is
    #            applied.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_scaling_policy
    #   <p>Specifies the definition of the automatic scaling policy.</p>
    #
    #   @return [AutoScalingPolicy]
    #
    PutAutoScalingPolicyInput = ::Struct.new(
      :cluster_id,
      :instance_group_id,
      :auto_scaling_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_id
    #   <p>Specifies the ID of a cluster. The instance group to which the automatic scaling policy
    #            is applied is within this cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_group_id
    #   <p>Specifies the ID of the instance group to which the scaling policy is applied.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_scaling_policy
    #   <p>The automatic scaling policy definition.</p>
    #
    #   @return [AutoScalingPolicyDescription]
    #
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #
    #   @return [String]
    #
    PutAutoScalingPolicyOutput = ::Struct.new(
      :cluster_id,
      :instance_group_id,
      :auto_scaling_policy,
      :cluster_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_id
    #   <p>Specifies the ID of the Amazon EMR cluster to which the auto-termination policy
    #            will be attached.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_termination_policy
    #   <p>Specifies the auto-termination policy to attach to the cluster.</p>
    #
    #   @return [AutoTerminationPolicy]
    #
    PutAutoTerminationPolicyInput = ::Struct.new(
      :cluster_id,
      :auto_termination_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutAutoTerminationPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute block_public_access_configuration
    #   <p>A configuration for Amazon EMR block public access. The configuration applies to
    #            all clusters created in your account for the current Region. The configuration specifies
    #            whether block public access is enabled. If block public access is enabled, security groups
    #            associated with the cluster cannot have rules that allow inbound traffic from 0.0.0.0/0 or
    #            ::/0 on a port, unless the port is specified as an exception using
    #               <code>PermittedPublicSecurityGroupRuleRanges</code> in the
    #               <code>BlockPublicAccessConfiguration</code>. By default, Port 22 (SSH) is an exception,
    #            and public access is allowed on this port. You can change this by updating
    #               <code>BlockPublicSecurityGroupRules</code> to remove the exception.</p>
    #            <note>
    #               <p>For accounts that created clusters in a Region before November 25, 2019, block public
    #               access is disabled by default in that Region. To use this feature, you must manually
    #               enable and configure it. For accounts that did not create an EMR cluster in a Region
    #               before this date, block public access is enabled by default in that Region.</p>
    #            </note>
    #
    #   @return [BlockPublicAccessConfiguration]
    #
    PutBlockPublicAccessConfigurationInput = ::Struct.new(
      :block_public_access_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutBlockPublicAccessConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_id
    #   <p>Specifies the ID of an EMR cluster where the managed scaling policy is attached. </p>
    #
    #   @return [String]
    #
    # @!attribute managed_scaling_policy
    #   <p>Specifies the constraints for the managed scaling policy. </p>
    #
    #   @return [ManagedScalingPolicy]
    #
    PutManagedScalingPolicyInput = ::Struct.new(
      :cluster_id,
      :managed_scaling_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutManagedScalingPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ReconfigurationType
    #
    module ReconfigurationType
      # No documentation available.
      #
      OVERWRITE = "OVERWRITE"

      # No documentation available.
      #
      MERGE = "MERGE"
    end

    # <p>The release label filters by application or version prefix.</p>
    #
    # @!attribute prefix
    #   <p>Optional release label version prefix filter. For example, <code>emr-5</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute application
    #   <p>Optional release label application filter. For example, <code>spark@2.1.0</code>.</p>
    #
    #   @return [String]
    #
    ReleaseLabelFilter = ::Struct.new(
      :prefix,
      :application,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_id
    #   <p>Specifies the ID of a cluster. The instance group to which the automatic scaling policy
    #            is applied is within this cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_group_id
    #   <p>Specifies the ID of the instance group to which the scaling policy is applied.</p>
    #
    #   @return [String]
    #
    RemoveAutoScalingPolicyInput = ::Struct.new(
      :cluster_id,
      :instance_group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RemoveAutoScalingPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_id
    #   <p>Specifies the ID of the Amazon EMR cluster from which the auto-termination
    #            policy will be removed.</p>
    #
    #   @return [String]
    #
    RemoveAutoTerminationPolicyInput = ::Struct.new(
      :cluster_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RemoveAutoTerminationPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_id
    #   <p> Specifies the ID of the cluster from which the managed scaling policy will be removed.
    #         </p>
    #
    #   @return [String]
    #
    RemoveManagedScalingPolicyInput = ::Struct.new(
      :cluster_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RemoveManagedScalingPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This input identifies an Amazon EMR resource and a list of tags to
    #          remove.</p>
    #
    # @!attribute resource_id
    #   <p>The Amazon EMR resource identifier from which tags will be removed. For example,
    #            a cluster identifier or an Amazon EMR Studio ID.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A list of tag keys to remove from the resource.</p>
    #
    #   @return [Array<String>]
    #
    RemoveTagsInput = ::Struct.new(
      :resource_id,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This output indicates the result of removing tags from the resource.</p>
    #
    RemoveTagsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RepoUpgradeOnBoot
    #
    module RepoUpgradeOnBoot
      # No documentation available.
      #
      SECURITY = "SECURITY"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # <p> Input to the <a>RunJobFlow</a> operation. </p>
    #
    # @!attribute name
    #   <p>The name of the job flow.</p>
    #
    #   @return [String]
    #
    # @!attribute log_uri
    #   <p>The location in Amazon S3 to write the log files of the job flow. If a value is
    #            not provided, logs are not created.</p>
    #
    #   @return [String]
    #
    # @!attribute log_encryption_kms_key_id
    #   <p>The KMS key used for encrypting log files. If a value is not
    #            provided, the logs remain encrypted by AES-256. This attribute is only available with
    #               Amazon EMR version 5.30.0 and later, excluding Amazon EMR 6.0.0.</p>
    #
    #   @return [String]
    #
    # @!attribute additional_info
    #   <p>A JSON string for selecting additional features.</p>
    #
    #   @return [String]
    #
    # @!attribute ami_version
    #   <p>Applies only to Amazon EMR AMI versions 3.x and 2.x. For Amazon EMR
    #            releases 4.0 and later, <code>ReleaseLabel</code> is used. To specify a custom AMI, use
    #               <code>CustomAmiID</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute release_label
    #   <p>The Amazon EMR release label, which determines the version of open-source
    #            application packages installed on the cluster. Release labels are in the form
    #               <code>emr-x.x.x</code>, where x.x.x is an Amazon EMR release version such as
    #               <code>emr-5.14.0</code>. For more information about Amazon EMR release versions
    #            and included application versions and features, see <a href="https://docs.aws.amazon.com/emr/latest/ReleaseGuide/">https://docs.aws.amazon.com/emr/latest/ReleaseGuide/</a>. The release label applies only to Amazon EMR
    #            releases version 4.0 and later. Earlier versions use <code>AmiVersion</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute instances
    #   <p>A specification of the number and type of Amazon EC2 instances.</p>
    #
    #   @return [JobFlowInstancesConfig]
    #
    # @!attribute steps
    #   <p>A list of steps to run.</p>
    #
    #   @return [Array<StepConfig>]
    #
    # @!attribute bootstrap_actions
    #   <p>A list of bootstrap actions to run before Hadoop starts on the cluster nodes.</p>
    #
    #   @return [Array<BootstrapActionConfig>]
    #
    # @!attribute supported_products
    #   <note>
    #               <p>For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and
    #               later, use Applications.</p>
    #            </note>
    #            <p>A list of strings that indicates third-party software to use. For more information, see
    #            the <a href="https://docs.aws.amazon.com/emr/latest/DeveloperGuide/emr-dg.pdf">Amazon EMR Developer Guide</a>. Currently supported values are:</p>
    #            <ul>
    #               <li>
    #                  <p>"mapr-m3" - launch the job flow using MapR M3 Edition.</p>
    #               </li>
    #               <li>
    #                  <p>"mapr-m5" - launch the job flow using MapR M5 Edition.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute new_supported_products
    #   <note>
    #               <p>For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and
    #               later, use Applications.</p>
    #            </note>
    #            <p>A list of strings that indicates third-party software to use with the job flow that
    #            accepts a user argument list. EMR accepts and forwards the argument list to the
    #            corresponding installation script as bootstrap action arguments. For more information, see
    #            "Launch a Job Flow on the MapR Distribution for Hadoop" in the <a href="https://docs.aws.amazon.com/emr/latest/DeveloperGuide/emr-dg.pdf">Amazon EMR Developer Guide</a>.
    #            Supported values are:</p>
    #            <ul>
    #               <li>
    #                  <p>"mapr-m3" - launch the cluster using MapR M3 Edition.</p>
    #               </li>
    #               <li>
    #                  <p>"mapr-m5" - launch the cluster using MapR M5 Edition.</p>
    #               </li>
    #               <li>
    #                  <p>"mapr" with the user arguments specifying "--edition,m3" or "--edition,m5" -
    #                  launch the job flow using MapR M3 or M5 Edition respectively.</p>
    #               </li>
    #               <li>
    #                  <p>"mapr-m7" - launch the cluster using MapR M7 Edition.</p>
    #               </li>
    #               <li>
    #                  <p>"hunk" - launch the cluster with the Hunk Big Data Analytics Platform.</p>
    #               </li>
    #               <li>
    #                  <p>"hue"- launch the cluster with Hue installed.</p>
    #               </li>
    #               <li>
    #                  <p>"spark" - launch the cluster with Apache Spark installed.</p>
    #               </li>
    #               <li>
    #                  <p>"ganglia" - launch the cluster with the Ganglia Monitoring System
    #                  installed.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<SupportedProductConfig>]
    #
    # @!attribute applications
    #   <p>Applies to Amazon EMR releases 4.0 and later. A case-insensitive list of
    #            applications for Amazon EMR to install and configure when launching the cluster.
    #            For a list of applications available for each Amazon EMR release version, see the
    #               <a href="https://docs.aws.amazon.com/emr/latest/ReleaseGuide/">Amazon EMRRelease
    #               Guide</a>.</p>
    #
    #   @return [Array<Application>]
    #
    # @!attribute configurations
    #   <p>For Amazon EMR releases 4.0 and later. The list of configurations supplied for
    #            the EMR cluster you are creating.</p>
    #
    #   @return [Array<Configuration>]
    #
    # @!attribute visible_to_all_users
    #   <important>
    #               <p>The VisibleToAllUsers parameter is no longer supported. By default, the value is set
    #               to <code>true</code>. Setting it to <code>false</code> now has no effect.</p>
    #            </important>
    #            <p>Set this value to <code>true</code> so that IAM principals in the Amazon Web Services account associated with the cluster can perform EMR actions on the cluster
    #            that their IAM policies allow. This value defaults to <code>true</code> for clusters
    #            created using the EMR API or the CLI
    #            <a href="https://docs.aws.amazon.com/cli/latest/reference/emr/create-cluster.html">create-cluster</a> command.</p>
    #            <p>When set to <code>false</code>, only the IAM principal that created the cluster and the
    #               Amazon Web Services account root user can perform EMR actions for the cluster, regardless
    #            of the IAM permissions policies attached to other IAM principals. For more information, see
    #               <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/security_iam_emr-with-iam.html security_set_visible_to_all_users">Understanding the EMR Cluster VisibleToAllUsers Setting</a> in the
    #                  <i>Amazon EMRManagement Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute job_flow_role
    #   <p>Also called instance profile and EC2 role. An IAM role for an EMR cluster. The EC2
    #            instances of the cluster assume this role. The default role is
    #               <code>EMR_EC2_DefaultRole</code>. In order to use the default role, you must have
    #            already created it using the CLI or console.</p>
    #
    #   @return [String]
    #
    # @!attribute service_role
    #   <p>The IAM role that Amazon EMR assumes in order to access Amazon Web Services
    #            resources on your behalf.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags to associate with a cluster and propagate to Amazon EC2
    #            instances.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute security_configuration
    #   <p>The name of a security configuration to apply to the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_scaling_role
    #   <p>An IAM role for automatic scaling policies. The default role is
    #               <code>EMR_AutoScaling_DefaultRole</code>. The IAM role provides permissions that the
    #            automatic scaling feature requires to launch and terminate EC2 instances in an instance
    #            group.</p>
    #
    #   @return [String]
    #
    # @!attribute scale_down_behavior
    #   <p>Specifies the way that individual Amazon EC2 instances terminate when an
    #            automatic scale-in activity occurs or an instance group is resized.
    #               <code>TERMINATE_AT_INSTANCE_HOUR</code> indicates that Amazon EMR terminates
    #            nodes at the instance-hour boundary, regardless of when the request to terminate the
    #            instance was submitted. This option is only available with Amazon EMR 5.1.0 and
    #            later and is the default for clusters created using that version.
    #               <code>TERMINATE_AT_TASK_COMPLETION</code> indicates that Amazon EMR adds nodes
    #            to a deny list and drains tasks from nodes before terminating the Amazon EC2
    #            instances, regardless of the instance-hour boundary. With either behavior, Amazon EMR removes the least active nodes first and blocks instance termination if it could lead to
    #            HDFS corruption. <code>TERMINATE_AT_TASK_COMPLETION</code> available only in Amazon EMR version 4.1.0 and later, and is the default for versions of Amazon EMR earlier than 5.1.0.</p>
    #
    #   Enum, one of: ["TERMINATE_AT_INSTANCE_HOUR", "TERMINATE_AT_TASK_COMPLETION"]
    #
    #   @return [String]
    #
    # @!attribute custom_ami_id
    #   <p>Available only in Amazon EMR version 5.7.0 and later. The ID of a custom Amazon
    #            EBS-backed Linux AMI. If specified, Amazon EMR uses this AMI when it launches
    #            cluster EC2 instances. For more information about custom AMIs in Amazon EMR, see
    #               <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-custom-ami.html">Using a
    #               Custom AMI</a> in the <i>Amazon EMR Management Guide</i>. If
    #            omitted, the cluster uses the base Linux AMI for the <code>ReleaseLabel</code> specified.
    #            For Amazon EMR versions 2.x and 3.x, use <code>AmiVersion</code> instead.</p>
    #            <p>For information about creating a custom AMI, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html">Creating an Amazon EBS-Backed Linux AMI</a> in the <i>Amazon Elastic Compute Cloud User Guide for Linux
    #               Instances</i>. For information about finding an AMI ID, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html">Finding a Linux
    #               AMI</a>. </p>
    #
    #   @return [String]
    #
    # @!attribute ebs_root_volume_size
    #   <p>The size, in GiB, of the Amazon EBS root device volume of the Linux AMI that is
    #            used for each EC2 instance. Available in Amazon EMR version 4.x and later.</p>
    #
    #   @return [Integer]
    #
    # @!attribute repo_upgrade_on_boot
    #   <p>Applies only when <code>CustomAmiID</code> is used. Specifies which updates from the
    #            Amazon Linux AMI package repositories to apply automatically when the instance boots using
    #            the AMI. If omitted, the default is <code>SECURITY</code>, which indicates that only
    #            security updates are applied. If <code>NONE</code> is specified, no updates are applied,
    #            and all updates must be applied manually.</p>
    #
    #   Enum, one of: ["SECURITY", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute kerberos_attributes
    #   <p>Attributes for Kerberos configuration when Kerberos authentication is enabled using a
    #            security configuration. For more information see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-kerberos.html">Use Kerberos Authentication</a>
    #            in the <i>Amazon EMR Management Guide</i>.</p>
    #
    #   @return [KerberosAttributes]
    #
    # @!attribute step_concurrency_level
    #   <p>Specifies the number of steps that can be executed concurrently. The default value is
    #               <code>1</code>. The maximum value is <code>256</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute managed_scaling_policy
    #   <p> The specified managed scaling policy for an Amazon EMR cluster. </p>
    #
    #   @return [ManagedScalingPolicy]
    #
    # @!attribute placement_group_configs
    #   <p>The specified placement group configuration for an Amazon EMR cluster.</p>
    #
    #   @return [Array<PlacementGroupConfig>]
    #
    # @!attribute auto_termination_policy
    #   <p>An auto-termination policy for an Amazon EMR cluster. An auto-termination policy
    #            defines the amount of idle time in seconds after which a cluster automatically terminates.
    #            For alternative cluster termination options, see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-termination.html">Control cluster
    #               termination</a>.</p>
    #
    #   @return [AutoTerminationPolicy]
    #
    # @!attribute os_release_label
    #   <p>Specifies a particular Amazon Linux release for all nodes in a cluster launch RunJobFlow request. If a release is not specified, Amazon EMR uses the latest validated Amazon Linux release for cluster launch.</p>
    #
    #   @return [String]
    #
    RunJobFlowInput = ::Struct.new(
      :name,
      :log_uri,
      :log_encryption_kms_key_id,
      :additional_info,
      :ami_version,
      :release_label,
      :instances,
      :steps,
      :bootstrap_actions,
      :supported_products,
      :new_supported_products,
      :applications,
      :configurations,
      :visible_to_all_users,
      :job_flow_role,
      :service_role,
      :tags,
      :security_configuration,
      :auto_scaling_role,
      :scale_down_behavior,
      :custom_ami_id,
      :ebs_root_volume_size,
      :repo_upgrade_on_boot,
      :kerberos_attributes,
      :step_concurrency_level,
      :managed_scaling_policy,
      :placement_group_configs,
      :auto_termination_policy,
      :os_release_label,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.visible_to_all_users ||= false
      end

    end

    # <p> The result of the <a>RunJobFlow</a> operation. </p>
    #
    # @!attribute job_flow_id
    #   <p>A unique identifier for the job flow.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #
    #   @return [String]
    #
    RunJobFlowOutput = ::Struct.new(
      :job_flow_id,
      :cluster_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ScaleDownBehavior
    #
    module ScaleDownBehavior
      # No documentation available.
      #
      TERMINATE_AT_INSTANCE_HOUR = "TERMINATE_AT_INSTANCE_HOUR"

      # No documentation available.
      #
      TERMINATE_AT_TASK_COMPLETION = "TERMINATE_AT_TASK_COMPLETION"
    end

    # <p>The type of adjustment the automatic scaling activity makes when triggered, and the
    #          periodicity of the adjustment.</p>
    #
    # @!attribute market
    #   <p>Not available for instance groups. Instance groups use the market type specified for the
    #            group.</p>
    #
    #   Enum, one of: ["ON_DEMAND", "SPOT"]
    #
    #   @return [String]
    #
    # @!attribute simple_scaling_policy_configuration
    #   <p>The type of adjustment the automatic scaling activity makes when triggered, and the
    #            periodicity of the adjustment.</p>
    #
    #   @return [SimpleScalingPolicyConfiguration]
    #
    ScalingAction = ::Struct.new(
      :market,
      :simple_scaling_policy_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The upper and lower EC2 instance limits for an automatic scaling policy. Automatic
    #          scaling activities triggered by automatic scaling rules will not cause an instance group to
    #          grow above or below these limits.</p>
    #
    # @!attribute min_capacity
    #   <p>The lower boundary of EC2 instances in an instance group below which scaling activities
    #            are not allowed to shrink. Scale-in activities will not terminate instances below this
    #            boundary.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_capacity
    #   <p>The upper boundary of EC2 instances in an instance group beyond which scaling activities
    #            are not allowed to grow. Scale-out activities will not add instances beyond this
    #            boundary.</p>
    #
    #   @return [Integer]
    #
    ScalingConstraints = ::Struct.new(
      :min_capacity,
      :max_capacity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A scale-in or scale-out rule that defines scaling activity, including the CloudWatch
    #          metric alarm that triggers activity, how EC2 instances are added or removed, and the
    #          periodicity of adjustments. The automatic scaling policy for an instance group can comprise
    #          one or more automatic scaling rules.</p>
    #
    # @!attribute name
    #   <p>The name used to identify an automatic scaling rule. Rule names must be unique within a
    #            scaling policy.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A friendly, more verbose description of the automatic scaling rule.</p>
    #
    #   @return [String]
    #
    # @!attribute action
    #   <p>The conditions that trigger an automatic scaling activity.</p>
    #
    #   @return [ScalingAction]
    #
    # @!attribute trigger
    #   <p>The CloudWatch alarm definition that determines when automatic scaling activity is
    #            triggered.</p>
    #
    #   @return [ScalingTrigger]
    #
    ScalingRule = ::Struct.new(
      :name,
      :description,
      :action,
      :trigger,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The conditions that trigger an automatic scaling activity.</p>
    #
    # @!attribute cloud_watch_alarm_definition
    #   <p>The definition of a CloudWatch metric alarm. When the defined alarm conditions are met
    #            along with other trigger parameters, scaling activity begins.</p>
    #
    #   @return [CloudWatchAlarmDefinition]
    #
    ScalingTrigger = ::Struct.new(
      :cloud_watch_alarm_definition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration of the script to run during a bootstrap action.</p>
    #
    # @!attribute path
    #   <p>Location in Amazon S3 of the script to run during a bootstrap action.</p>
    #
    #   @return [String]
    #
    # @!attribute args
    #   <p>A list of command line arguments to pass to the bootstrap action script.</p>
    #
    #   @return [Array<String>]
    #
    ScriptBootstrapActionConfig = ::Struct.new(
      :path,
      :args,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The creation date and time, and name, of a security configuration.</p>
    #
    # @!attribute name
    #   <p>The name of the security configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>The date and time the security configuration was created.</p>
    #
    #   @return [Time]
    #
    SecurityConfigurationSummary = ::Struct.new(
      :name,
      :creation_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details for an Amazon EMR Studio session mapping including creation time, user
    #          or group ID, Studio ID, and so on.</p>
    #
    # @!attribute studio_id
    #   <p>The ID of the Amazon EMR Studio.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_id
    #   <p>The globally unique identifier (GUID) of the user or group.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_name
    #   <p>The name of the user or group. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html singlesignon-Type-User-UserName">UserName</a> and <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html singlesignon-Type-Group-DisplayName">DisplayName</a> in the <i>Amazon Web Services SSO Identity Store API
    #               Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_type
    #   <p>Specifies whether the identity mapped to the Amazon EMR Studio is a user or a
    #            group.</p>
    #
    #   Enum, one of: ["USER", "GROUP"]
    #
    #   @return [String]
    #
    # @!attribute session_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the session policy associated with the user or
    #            group.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The time the session mapping was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_time
    #   <p>The time the session mapping was last modified.</p>
    #
    #   @return [Time]
    #
    SessionMappingDetail = ::Struct.new(
      :studio_id,
      :identity_id,
      :identity_name,
      :identity_type,
      :session_policy_arn,
      :creation_time,
      :last_modified_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details for an Amazon EMR Studio session mapping. The details do not include the
    #          time the session mapping was last modified.</p>
    #
    # @!attribute studio_id
    #   <p>The ID of the Amazon EMR Studio.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_id
    #   <p>The globally unique identifier (GUID) of the user or group from the Amazon Web Services SSO
    #            Identity Store.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_name
    #   <p>The name of the user or group. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html singlesignon-Type-User-UserName">UserName</a> and <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html singlesignon-Type-Group-DisplayName">DisplayName</a> in the <i>Amazon Web Services SSO Identity Store API
    #               Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_type
    #   <p>Specifies whether the identity mapped to the Amazon EMR Studio is a user or a
    #            group.</p>
    #
    #   Enum, one of: ["USER", "GROUP"]
    #
    #   @return [String]
    #
    # @!attribute session_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the session policy associated with the user or
    #            group.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The time the session mapping was created.</p>
    #
    #   @return [Time]
    #
    SessionMappingSummary = ::Struct.new(
      :studio_id,
      :identity_id,
      :identity_name,
      :identity_type,
      :session_policy_arn,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The input argument to the <a>TerminationProtection</a> operation. </p>
    #
    # @!attribute job_flow_ids
    #   <p> A list of strings that uniquely identify the clusters to protect. This identifier is
    #            returned by <a>RunJobFlow</a> and can also be obtained from <a>DescribeJobFlows</a> . </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute termination_protected
    #   <p>A Boolean that indicates whether to protect the cluster and prevent the Amazon EC2 instances in the cluster from shutting down due to API calls, user intervention, or
    #            job-flow error.</p>
    #
    #   @return [Boolean]
    #
    SetTerminationProtectionInput = ::Struct.new(
      :job_flow_ids,
      :termination_protected,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.termination_protected ||= false
      end

    end

    SetTerminationProtectionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input to the SetVisibleToAllUsers action.</p>
    #
    # @!attribute job_flow_ids
    #   <p>The unique identifier of the job flow (cluster).</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute visible_to_all_users
    #   <p>A value of <code>true</code> indicates that an IAM principal in the Amazon Web Services account can perform EMR actions on the cluster that the IAM policies attached
    #            to the principal allow. A value of <code>false</code> indicates that only the IAM principal
    #            that created the cluster and the Amazon Web Services root user can perform EMR actions on
    #            the cluster.</p>
    #
    #   @return [Boolean]
    #
    SetVisibleToAllUsersInput = ::Struct.new(
      :job_flow_ids,
      :visible_to_all_users,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.visible_to_all_users ||= false
      end

    end

    SetVisibleToAllUsersOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Policy for customizing shrink operations. Allows configuration of decommissioning
    #          timeout and targeted instance shrinking.</p>
    #
    # @!attribute decommission_timeout
    #   <p>The desired timeout for decommissioning an instance. Overrides the default YARN
    #            decommissioning timeout.</p>
    #
    #   @return [Integer]
    #
    # @!attribute instance_resize_policy
    #   <p>Custom policy for requesting termination protection or termination of specific instances
    #            when shrinking an instance group.</p>
    #
    #   @return [InstanceResizePolicy]
    #
    ShrinkPolicy = ::Struct.new(
      :decommission_timeout,
      :instance_resize_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An automatic scaling configuration, which describes how the policy adds or removes
    #          instances, the cooldown period, and the number of EC2 instances that will be added each
    #          time the CloudWatch metric alarm condition is satisfied.</p>
    #
    # @!attribute adjustment_type
    #   <p>The way in which EC2 instances are added (if <code>ScalingAdjustment</code> is a
    #            positive number) or terminated (if <code>ScalingAdjustment</code> is a negative number)
    #            each time the scaling activity is triggered. <code>CHANGE_IN_CAPACITY</code> is the
    #            default. <code>CHANGE_IN_CAPACITY</code> indicates that the EC2 instance count increments
    #            or decrements by <code>ScalingAdjustment</code>, which should be expressed as an integer.
    #               <code>PERCENT_CHANGE_IN_CAPACITY</code> indicates the instance count increments or
    #            decrements by the percentage specified by <code>ScalingAdjustment</code>, which should be
    #            expressed as an integer. For example, 20 indicates an increase in 20% increments of cluster
    #            capacity. <code>EXACT_CAPACITY</code> indicates the scaling activity results in an instance
    #            group with the number of EC2 instances specified by <code>ScalingAdjustment</code>, which
    #            should be expressed as a positive integer.</p>
    #
    #   Enum, one of: ["CHANGE_IN_CAPACITY", "PERCENT_CHANGE_IN_CAPACITY", "EXACT_CAPACITY"]
    #
    #   @return [String]
    #
    # @!attribute scaling_adjustment
    #   <p>The amount by which to scale in or scale out, based on the specified
    #               <code>AdjustmentType</code>. A positive value adds to the instance group's EC2 instance
    #            count while a negative number removes instances. If <code>AdjustmentType</code> is set to
    #               <code>EXACT_CAPACITY</code>, the number should only be a positive integer. If
    #               <code>AdjustmentType</code> is set to <code>PERCENT_CHANGE_IN_CAPACITY</code>, the value
    #            should express the percentage as an integer. For example, -20 indicates a decrease in 20%
    #            increments of cluster capacity.</p>
    #
    #   @return [Integer]
    #
    # @!attribute cool_down
    #   <p>The amount of time, in seconds, after a scaling activity completes before any further
    #            trigger-related scaling activities can start. The default value is 0.</p>
    #
    #   @return [Integer]
    #
    SimpleScalingPolicyConfiguration = ::Struct.new(
      :adjustment_type,
      :scaling_adjustment,
      :cool_down,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The returned release label application names or versions.</p>
    #
    # @!attribute name
    #   <p>The returned release label application name. For example, <code>hadoop</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The returned release label application version. For example, <code>3.2.1</code>.</p>
    #
    #   @return [String]
    #
    SimplifiedApplication = ::Struct.new(
      :name,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SpotProvisioningAllocationStrategy
    #
    module SpotProvisioningAllocationStrategy
      # No documentation available.
      #
      CAPACITY_OPTIMIZED = "capacity-optimized"
    end

    # <p>The launch specification for Spot Instances in the instance fleet, which determines the
    #          defined duration, provisioning timeout behavior, and allocation strategy.</p>
    #          <note>
    #             <p>The instance fleet configuration is available only in Amazon EMR versions
    #             4.8.0 and later, excluding 5.0.x versions. Spot Instance allocation strategy is
    #             available in Amazon EMR version 5.12.1 and later.</p>
    #          </note>
    #          <note>
    #             <p>Spot Instances with a defined duration (also known as Spot blocks) are no longer
    #             available to new customers from July 1, 2021. For customers who have previously used the
    #             feature, we will continue to support Spot Instances with a defined duration until
    #             December 31, 2022. </p>
    #          </note>
    #
    # @!attribute timeout_duration_minutes
    #   <p>The spot provisioning timeout period in minutes. If Spot Instances are not provisioned
    #            within this time period, the <code>TimeOutAction</code> is taken. Minimum value is 5 and
    #            maximum value is 1440. The timeout applies only during initial provisioning, when the
    #            cluster is first created.</p>
    #
    #   @return [Integer]
    #
    # @!attribute timeout_action
    #   <p>The action to take when <code>TargetSpotCapacity</code> has not been fulfilled when the
    #               <code>TimeoutDurationMinutes</code> has expired; that is, when all Spot Instances could
    #            not be provisioned within the Spot provisioning timeout. Valid values are
    #               <code>TERMINATE_CLUSTER</code> and <code>SWITCH_TO_ON_DEMAND</code>. SWITCH_TO_ON_DEMAND
    #            specifies that if no Spot Instances are available, On-Demand Instances should be
    #            provisioned to fulfill any remaining Spot capacity.</p>
    #
    #   Enum, one of: ["SWITCH_TO_ON_DEMAND", "TERMINATE_CLUSTER"]
    #
    #   @return [String]
    #
    # @!attribute block_duration_minutes
    #   <p>The defined duration for Spot Instances (also known as Spot blocks) in minutes. When
    #            specified, the Spot Instance does not terminate before the defined duration expires, and
    #            defined duration pricing for Spot Instances applies. Valid values are 60, 120, 180, 240,
    #            300, or 360. The duration period starts as soon as a Spot Instance receives its instance
    #            ID. At the end of the duration, Amazon EC2 marks the Spot Instance for termination
    #            and provides a Spot Instance termination notice, which gives the instance a two-minute
    #            warning before it terminates. </p>
    #            <note>
    #               <p>Spot Instances with a defined duration (also known as Spot blocks) are no longer
    #               available to new customers from July 1, 2021. For customers who have previously used the
    #               feature, we will continue to support Spot Instances with a defined duration until
    #               December 31, 2022. </p>
    #            </note>
    #
    #   @return [Integer]
    #
    # @!attribute allocation_strategy
    #   <p> Specifies the strategy to use in launching Spot Instance fleets. Currently, the only
    #            option is capacity-optimized (the default), which launches instances from Spot Instance
    #            pools with optimal capacity for the number of instances that are launching. </p>
    #
    #   Enum, one of: ["capacity-optimized"]
    #
    #   @return [String]
    #
    SpotProvisioningSpecification = ::Struct.new(
      :timeout_duration_minutes,
      :timeout_action,
      :block_duration_minutes,
      :allocation_strategy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SpotProvisioningTimeoutAction
    #
    module SpotProvisioningTimeoutAction
      # No documentation available.
      #
      SWITCH_TO_ON_DEMAND = "SWITCH_TO_ON_DEMAND"

      # No documentation available.
      #
      TERMINATE_CLUSTER = "TERMINATE_CLUSTER"
    end

    # @!attribute editor_id
    #   <p>The unique identifier of the EMR Notebook to use for notebook execution.</p>
    #
    #   @return [String]
    #
    # @!attribute relative_path
    #   <p>The path and file name of the notebook file for this execution, relative to the path
    #            specified for the EMR Notebook. For example, if you specify a path of
    #               <code>s3://MyBucket/MyNotebooks</code> when you create an EMR Notebook for a notebook
    #            with an ID of <code>e-ABCDEFGHIJK1234567890ABCD</code> (the <code>EditorID</code> of this
    #            request), and you specify a <code>RelativePath</code> of
    #               <code>my_notebook_executions/notebook_execution.ipynb</code>, the location of the file
    #            for the notebook execution is
    #               <code>s3://MyBucket/MyNotebooks/e-ABCDEFGHIJK1234567890ABCD/my_notebook_executions/notebook_execution.ipynb</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute notebook_execution_name
    #   <p>An optional name for the notebook execution.</p>
    #
    #   @return [String]
    #
    # @!attribute notebook_params
    #   <p>Input parameters in JSON format passed to the EMR Notebook at runtime for
    #            execution.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_engine
    #   <p>Specifies the execution engine (cluster) that runs the notebook execution.</p>
    #
    #   @return [ExecutionEngineConfig]
    #
    # @!attribute service_role
    #   <p>The name or ARN of the IAM role that is used as the service role for Amazon EMR
    #            (the EMR role) for the notebook execution.</p>
    #
    #   @return [String]
    #
    # @!attribute notebook_instance_security_group_id
    #   <p>The unique identifier of the Amazon EC2 security group to associate with the EMR
    #            Notebook for this notebook execution.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags associated with a notebook execution. Tags are user-defined key-value
    #            pairs that consist of a required key string with a maximum of 128 characters and an
    #            optional value string with a maximum of 256 characters.</p>
    #
    #   @return [Array<Tag>]
    #
    StartNotebookExecutionInput = ::Struct.new(
      :editor_id,
      :relative_path,
      :notebook_execution_name,
      :notebook_params,
      :execution_engine,
      :service_role,
      :notebook_instance_security_group_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute notebook_execution_id
    #   <p>The unique identifier of the notebook execution.</p>
    #
    #   @return [String]
    #
    StartNotebookExecutionOutput = ::Struct.new(
      :notebook_execution_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Statistic
    #
    module Statistic
      # No documentation available.
      #
      SAMPLE_COUNT = "SAMPLE_COUNT"

      # No documentation available.
      #
      AVERAGE = "AVERAGE"

      # No documentation available.
      #
      SUM = "SUM"

      # No documentation available.
      #
      MINIMUM = "MINIMUM"

      # No documentation available.
      #
      MAXIMUM = "MAXIMUM"
    end

    # <p>This represents a step in a cluster.</p>
    #
    # @!attribute id
    #   <p>The identifier of the cluster step.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the cluster step.</p>
    #
    #   @return [String]
    #
    # @!attribute config
    #   <p>The Hadoop job configuration of the cluster step.</p>
    #
    #   @return [HadoopStepConfig]
    #
    # @!attribute action_on_failure
    #   <p>The action to take when the cluster step fails. Possible values are
    #               <code>TERMINATE_CLUSTER</code>, <code>CANCEL_AND_WAIT</code>, and <code>CONTINUE</code>.
    #               <code>TERMINATE_JOB_FLOW</code> is provided for backward compatibility. We recommend
    #            using <code>TERMINATE_CLUSTER</code> instead.</p>
    #            <p>If a cluster's <code>StepConcurrencyLevel</code> is greater than <code>1</code>, do not
    #            use <code>AddJobFlowSteps</code> to submit a step with this parameter set to
    #               <code>CANCEL_AND_WAIT</code> or <code>TERMINATE_CLUSTER</code>. The step is not
    #            submitted and the action fails with a message that the <code>ActionOnFailure</code> setting
    #            is not valid.</p>
    #            <p>If you change a cluster's <code>StepConcurrencyLevel</code> to be greater than 1 while a
    #            step is running, the <code>ActionOnFailure</code> parameter may not behave as you expect.
    #            In this case, for a step that fails with this parameter set to
    #            <code>CANCEL_AND_WAIT</code>, pending steps and the running step are not canceled; for a
    #            step that fails with this parameter set to <code>TERMINATE_CLUSTER</code>, the cluster does
    #            not terminate.</p>
    #
    #   Enum, one of: ["TERMINATE_JOB_FLOW", "TERMINATE_CLUSTER", "CANCEL_AND_WAIT", "CONTINUE"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current execution status details of the cluster step.</p>
    #
    #   @return [StepStatus]
    #
    Step = ::Struct.new(
      :id,
      :name,
      :config,
      :action_on_failure,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StepCancellationOption
    #
    module StepCancellationOption
      # No documentation available.
      #
      SEND_INTERRUPT = "SEND_INTERRUPT"

      # No documentation available.
      #
      TERMINATE_PROCESS = "TERMINATE_PROCESS"
    end

    # <p>Specification for a cluster (job flow) step.</p>
    #
    # @!attribute name
    #   <p>The name of the step.</p>
    #
    #   @return [String]
    #
    # @!attribute action_on_failure
    #   <p>The action to take when the step fails. Use one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TERMINATE_CLUSTER</code> - Shuts down the cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CANCEL_AND_WAIT</code> - Cancels any pending steps and returns the cluster
    #                  to the <code>WAITING</code> state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CONTINUE</code> - Continues to the next step in the queue.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TERMINATE_JOB_FLOW</code> - Shuts down the cluster.
    #                     <code>TERMINATE_JOB_FLOW</code> is provided for backward compatibility. We
    #                  recommend using <code>TERMINATE_CLUSTER</code> instead.</p>
    #               </li>
    #            </ul>
    #            <p>If a cluster's <code>StepConcurrencyLevel</code> is greater than <code>1</code>, do not
    #            use <code>AddJobFlowSteps</code> to submit a step with this parameter set to
    #               <code>CANCEL_AND_WAIT</code> or <code>TERMINATE_CLUSTER</code>. The step is not
    #            submitted and the action fails with a message that the <code>ActionOnFailure</code> setting
    #            is not valid.</p>
    #            <p>If you change a cluster's <code>StepConcurrencyLevel</code> to be greater than 1 while a
    #            step is running, the <code>ActionOnFailure</code> parameter may not behave as you expect.
    #            In this case, for a step that fails with this parameter set to
    #            <code>CANCEL_AND_WAIT</code>, pending steps and the running step are not canceled; for a
    #            step that fails with this parameter set to <code>TERMINATE_CLUSTER</code>, the cluster does
    #            not terminate.</p>
    #
    #   Enum, one of: ["TERMINATE_JOB_FLOW", "TERMINATE_CLUSTER", "CANCEL_AND_WAIT", "CONTINUE"]
    #
    #   @return [String]
    #
    # @!attribute hadoop_jar_step
    #   <p>The JAR file used for the step.</p>
    #
    #   @return [HadoopJarStepConfig]
    #
    StepConfig = ::Struct.new(
      :name,
      :action_on_failure,
      :hadoop_jar_step,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Combines the execution state and configuration of a step.</p>
    #
    # @!attribute step_config
    #   <p>The step configuration.</p>
    #
    #   @return [StepConfig]
    #
    # @!attribute execution_status_detail
    #   <p>The description of the step status.</p>
    #
    #   @return [StepExecutionStatusDetail]
    #
    StepDetail = ::Struct.new(
      :step_config,
      :execution_status_detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StepExecutionState
    #
    module StepExecutionState
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      CONTINUE = "CONTINUE"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      CANCELLED = "CANCELLED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      INTERRUPTED = "INTERRUPTED"
    end

    # <p>The execution state of a step.</p>
    #
    # @!attribute state
    #   <p>The state of the step.</p>
    #
    #   Enum, one of: ["PENDING", "RUNNING", "CONTINUE", "COMPLETED", "CANCELLED", "FAILED", "INTERRUPTED"]
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>The creation date and time of the step.</p>
    #
    #   @return [Time]
    #
    # @!attribute start_date_time
    #   <p>The start date and time of the step.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_date_time
    #   <p>The completion date and time of the step.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_state_change_reason
    #   <p>A description of the step's current state.</p>
    #
    #   @return [String]
    #
    StepExecutionStatusDetail = ::Struct.new(
      :state,
      :creation_date_time,
      :start_date_time,
      :end_date_time,
      :last_state_change_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StepState
    #
    module StepState
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      CANCEL_PENDING = "CANCEL_PENDING"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      CANCELLED = "CANCELLED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      INTERRUPTED = "INTERRUPTED"
    end

    # <p>The details of the step state change reason.</p>
    #
    # @!attribute code
    #   <p>The programmable code for the state change reason. Note: Currently, the service provides
    #            no code for the state change.</p>
    #
    #   Enum, one of: ["NONE"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The descriptive message for the state change reason.</p>
    #
    #   @return [String]
    #
    StepStateChangeReason = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StepStateChangeReasonCode
    #
    module StepStateChangeReasonCode
      # No documentation available.
      #
      NONE = "NONE"
    end

    # <p>The execution status details of the cluster step.</p>
    #
    # @!attribute state
    #   <p>The execution state of the cluster step.</p>
    #
    #   Enum, one of: ["PENDING", "CANCEL_PENDING", "RUNNING", "COMPLETED", "CANCELLED", "FAILED", "INTERRUPTED"]
    #
    #   @return [String]
    #
    # @!attribute state_change_reason
    #   <p>The reason for the step execution status change.</p>
    #
    #   @return [StepStateChangeReason]
    #
    # @!attribute failure_details
    #   <p>The details for the step failure including reason, message, and log file path where the
    #            root cause was identified.</p>
    #
    #   @return [FailureDetails]
    #
    # @!attribute timeline
    #   <p>The timeline of the cluster step status over time.</p>
    #
    #   @return [StepTimeline]
    #
    StepStatus = ::Struct.new(
      :state,
      :state_change_reason,
      :failure_details,
      :timeline,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The summary of the cluster step.</p>
    #
    # @!attribute id
    #   <p>The identifier of the cluster step.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the cluster step.</p>
    #
    #   @return [String]
    #
    # @!attribute config
    #   <p>The Hadoop job configuration of the cluster step.</p>
    #
    #   @return [HadoopStepConfig]
    #
    # @!attribute action_on_failure
    #   <p>The action to take when the cluster step fails. Possible values are TERMINATE_CLUSTER,
    #            CANCEL_AND_WAIT, and CONTINUE. TERMINATE_JOB_FLOW is available for backward
    #            compatibility.</p>
    #
    #   Enum, one of: ["TERMINATE_JOB_FLOW", "TERMINATE_CLUSTER", "CANCEL_AND_WAIT", "CONTINUE"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current execution status details of the cluster step.</p>
    #
    #   @return [StepStatus]
    #
    StepSummary = ::Struct.new(
      :id,
      :name,
      :config,
      :action_on_failure,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The timeline of the cluster step lifecycle.</p>
    #
    # @!attribute creation_date_time
    #   <p>The date and time when the cluster step was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute start_date_time
    #   <p>The date and time when the cluster step execution started.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_date_time
    #   <p>The date and time when the cluster step execution completed or failed.</p>
    #
    #   @return [Time]
    #
    StepTimeline = ::Struct.new(
      :creation_date_time,
      :start_date_time,
      :end_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute notebook_execution_id
    #   <p>The unique identifier of the notebook execution.</p>
    #
    #   @return [String]
    #
    StopNotebookExecutionInput = ::Struct.new(
      :notebook_execution_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StopNotebookExecutionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details for an Amazon EMR Studio including ID, creation time, name, and so
    #          on.</p>
    #
    # @!attribute studio_id
    #   <p>The ID of the Amazon EMR Studio.</p>
    #
    #   @return [String]
    #
    # @!attribute studio_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon EMR Studio.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the Amazon EMR Studio.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The detailed description of the Amazon EMR Studio.</p>
    #
    #   @return [String]
    #
    # @!attribute auth_mode
    #   <p>Specifies whether the Amazon EMR Studio authenticates users using IAM or Amazon Web Services SSO.</p>
    #
    #   Enum, one of: ["SSO", "IAM"]
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The ID of the VPC associated with the Amazon EMR Studio.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_ids
    #   <p>The list of IDs of the subnets associated with the Amazon EMR Studio.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute service_role
    #   <p>The name of the IAM role assumed by the Amazon EMR Studio.</p>
    #
    #   @return [String]
    #
    # @!attribute user_role
    #   <p>The name of the IAM role assumed by users logged in to the Amazon EMR Studio. A
    #            Studio only requires a <code>UserRole</code> when you use IAM
    #            authentication.</p>
    #
    #   @return [String]
    #
    # @!attribute workspace_security_group_id
    #   <p>The ID of the Workspace security group associated with the Amazon EMR Studio.
    #            The Workspace security group allows outbound network traffic to resources in the Engine
    #            security group and to the internet.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_security_group_id
    #   <p>The ID of the Engine security group associated with the Amazon EMR Studio. The
    #            Engine security group allows inbound network traffic from resources in the Workspace
    #            security group.</p>
    #
    #   @return [String]
    #
    # @!attribute url
    #   <p>The unique access URL of the Amazon EMR Studio.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The time the Amazon EMR Studio was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute default_s3_location
    #   <p>The Amazon S3 location to back up Amazon EMR Studio Workspaces and
    #            notebook files.</p>
    #
    #   @return [String]
    #
    # @!attribute idp_auth_url
    #   <p>Your identity provider's authentication endpoint. Amazon EMR Studio redirects
    #            federated users to this endpoint for authentication when logging in to a Studio with the
    #            Studio URL.</p>
    #
    #   @return [String]
    #
    # @!attribute idp_relay_state_parameter_name
    #   <p>The name of your identity provider's <code>RelayState</code> parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags associated with the Amazon EMR Studio.</p>
    #
    #   @return [Array<Tag>]
    #
    Studio = ::Struct.new(
      :studio_id,
      :studio_arn,
      :name,
      :description,
      :auth_mode,
      :vpc_id,
      :subnet_ids,
      :service_role,
      :user_role,
      :workspace_security_group_id,
      :engine_security_group_id,
      :url,
      :creation_time,
      :default_s3_location,
      :idp_auth_url,
      :idp_relay_state_parameter_name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details for an Amazon EMR Studio, including ID, Name, VPC, and Description. The
    #          details do not include subnets, IAM roles, security groups, or tags associated with the
    #          Studio.</p>
    #
    # @!attribute studio_id
    #   <p>The ID of the Amazon EMR Studio.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the Amazon EMR Studio.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The ID of the Virtual Private Cloud (Amazon VPC) associated with the Amazon EMR Studio.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The detailed description of the Amazon EMR Studio.</p>
    #
    #   @return [String]
    #
    # @!attribute url
    #   <p>The unique access URL of the Amazon EMR Studio.</p>
    #
    #   @return [String]
    #
    # @!attribute auth_mode
    #   <p>Specifies whether the Studio authenticates users using IAM or Amazon Web Services SSO.</p>
    #
    #   Enum, one of: ["SSO", "IAM"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The time when the Amazon EMR Studio was created.</p>
    #
    #   @return [Time]
    #
    StudioSummary = ::Struct.new(
      :studio_id,
      :name,
      :vpc_id,
      :description,
      :url,
      :auth_mode,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The list of supported product configurations that allow user-supplied arguments. EMR
    #          accepts these arguments and forwards them to the corresponding installation script as
    #          bootstrap action arguments.</p>
    #
    # @!attribute name
    #   <p>The name of the product configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute args
    #   <p>The list of user-supplied arguments.</p>
    #
    #   @return [Array<String>]
    #
    SupportedProductConfig = ::Struct.new(
      :name,
      :args,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A key-value pair containing user-defined metadata that you can associate with an Amazon EMR resource. Tags make it easier to associate clusters in various ways, such as
    #          grouping clusters to track your Amazon EMR resource allocation costs. For more
    #          information, see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html">Tag Clusters</a>. </p>
    #
    # @!attribute key
    #   <p>A user-defined key, which is the minimum required information for a valid tag. For more
    #            information, see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html">Tag</a>. </p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>A user-defined value, which is optional in a tag. For more information, see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html">Tag
    #               Clusters</a>. </p>
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

    # <p> Input to the <a>TerminateJobFlows</a> operation. </p>
    #
    # @!attribute job_flow_ids
    #   <p>A list of job flows to be shut down.</p>
    #
    #   @return [Array<String>]
    #
    TerminateJobFlowsInput = ::Struct.new(
      :job_flow_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TerminateJobFlowsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Unit
    #
    module Unit
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      SECONDS = "SECONDS"

      # No documentation available.
      #
      MICRO_SECONDS = "MICRO_SECONDS"

      # No documentation available.
      #
      MILLI_SECONDS = "MILLI_SECONDS"

      # No documentation available.
      #
      BYTES = "BYTES"

      # No documentation available.
      #
      KILO_BYTES = "KILO_BYTES"

      # No documentation available.
      #
      MEGA_BYTES = "MEGA_BYTES"

      # No documentation available.
      #
      GIGA_BYTES = "GIGA_BYTES"

      # No documentation available.
      #
      TERA_BYTES = "TERA_BYTES"

      # No documentation available.
      #
      BITS = "BITS"

      # No documentation available.
      #
      KILO_BITS = "KILO_BITS"

      # No documentation available.
      #
      MEGA_BITS = "MEGA_BITS"

      # No documentation available.
      #
      GIGA_BITS = "GIGA_BITS"

      # No documentation available.
      #
      TERA_BITS = "TERA_BITS"

      # No documentation available.
      #
      PERCENT = "PERCENT"

      # No documentation available.
      #
      COUNT = "COUNT"

      # No documentation available.
      #
      BYTES_PER_SECOND = "BYTES_PER_SECOND"

      # No documentation available.
      #
      KILO_BYTES_PER_SECOND = "KILO_BYTES_PER_SECOND"

      # No documentation available.
      #
      MEGA_BYTES_PER_SECOND = "MEGA_BYTES_PER_SECOND"

      # No documentation available.
      #
      GIGA_BYTES_PER_SECOND = "GIGA_BYTES_PER_SECOND"

      # No documentation available.
      #
      TERA_BYTES_PER_SECOND = "TERA_BYTES_PER_SECOND"

      # No documentation available.
      #
      BITS_PER_SECOND = "BITS_PER_SECOND"

      # No documentation available.
      #
      KILO_BITS_PER_SECOND = "KILO_BITS_PER_SECOND"

      # No documentation available.
      #
      MEGA_BITS_PER_SECOND = "MEGA_BITS_PER_SECOND"

      # No documentation available.
      #
      GIGA_BITS_PER_SECOND = "GIGA_BITS_PER_SECOND"

      # No documentation available.
      #
      TERA_BITS_PER_SECOND = "TERA_BITS_PER_SECOND"

      # No documentation available.
      #
      COUNT_PER_SECOND = "COUNT_PER_SECOND"
    end

    # @!attribute studio_id
    #   <p>The ID of the Amazon EMR Studio to update.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A descriptive name for the Amazon EMR Studio.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A detailed description to assign to the Amazon EMR Studio.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_ids
    #   <p>A list of subnet IDs to associate with the Amazon EMR Studio. The list can
    #            include new subnet IDs, but must also include all of the subnet IDs previously associated
    #            with the Studio. The list order does not matter. A Studio can have a maximum of 5 subnets.
    #            The subnets must belong to the same VPC as the Studio. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute default_s3_location
    #   <p>The Amazon S3 location to back up Workspaces and notebook files for the Amazon EMR Studio.</p>
    #
    #   @return [String]
    #
    UpdateStudioInput = ::Struct.new(
      :studio_id,
      :name,
      :description,
      :subnet_ids,
      :default_s3_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateStudioOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute studio_id
    #   <p>The ID of the Amazon EMR Studio.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_id
    #   <p>The globally unique identifier (GUID) of the user or group. For more information, see
    #               <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html singlesignon-Type-User-UserId">UserId</a> and <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html singlesignon-Type-Group-GroupId">GroupId</a> in the <i>Amazon Web Services SSO Identity Store API
    #               Reference</i>. Either <code>IdentityName</code> or <code>IdentityId</code> must
    #            be specified.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_name
    #   <p>The name of the user or group to update. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html singlesignon-Type-User-UserName">UserName</a> and <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html singlesignon-Type-Group-DisplayName">DisplayName</a> in the <i>Amazon Web Services SSO Identity Store API
    #               Reference</i>. Either <code>IdentityName</code> or <code>IdentityId</code> must
    #            be specified.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_type
    #   <p>Specifies whether the identity to update is a user or a group.</p>
    #
    #   Enum, one of: ["USER", "GROUP"]
    #
    #   @return [String]
    #
    # @!attribute session_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the session policy to associate with the specified
    #            user or group.</p>
    #
    #   @return [String]
    #
    UpdateStudioSessionMappingInput = ::Struct.new(
      :studio_id,
      :identity_id,
      :identity_name,
      :identity_type,
      :session_policy_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateStudioSessionMappingOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>EBS volume specifications such as volume type, IOPS, and size (GiB) that will be
    #          requested for the EBS volume attached to an EC2 instance in the cluster.</p>
    #
    # @!attribute volume_type
    #   <p>The volume type. Volume types supported are gp2, io1, and standard.</p>
    #
    #   @return [String]
    #
    # @!attribute iops
    #   <p>The number of I/O operations per second (IOPS) that the volume supports.</p>
    #
    #   @return [Integer]
    #
    # @!attribute size_in_gb
    #   <p>The volume size, in gibibytes (GiB). This can be a number from 1 - 1024. If the volume
    #            type is EBS-optimized, the minimum value is 10.</p>
    #
    #   @return [Integer]
    #
    VolumeSpecification = ::Struct.new(
      :volume_type,
      :iops,
      :size_in_gb,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
