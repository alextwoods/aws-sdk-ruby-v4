# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DLM
  module Types

    # <p>Specifies an action for an event-based policy.</p>
    #
    # @!attribute name
    #   <p>A descriptive name for the action.</p>
    #
    #   @return [String]
    #
    # @!attribute cross_region_copy
    #   <p>The rule for copying shared snapshots across Regions.</p>
    #
    #   @return [Array<CrossRegionCopyAction>]
    #
    Action = ::Struct.new(
      :name,
      :cross_region_copy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used to run the operations specified by
    #   			the lifecycle policy.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the lifecycle policy. The characters ^[0-9A-Za-z _-]+$ are
    #   			supported.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The desired activation state of the lifecycle policy after creation.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute policy_details
    #   <p>The configuration details of the lifecycle policy.</p>
    #
    #   @return [PolicyDetails]
    #
    # @!attribute tags
    #   <p>The tags to apply to the lifecycle policy during creation.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateLifecyclePolicyInput = ::Struct.new(
      :execution_role_arn,
      :description,
      :state,
      :policy_details,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_id
    #   <p>The identifier of the lifecycle policy.</p>
    #
    #   @return [String]
    #
    CreateLifecyclePolicyOutput = ::Struct.new(
      :policy_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies when to create snapshots of EBS volumes.</p>
    # 		       <p>You must specify either a Cron expression or an interval, interval unit, and start
    # 			time. You cannot specify both.</p>
    #
    # @!attribute location
    #   <p>Specifies the destination for snapshots created by the policy. To create snapshots in the same
    #   			Region as the source resource, specify <code>CLOUD</code>. To create snapshots on the same
    #   			Outpost as the source resource, specify <code>OUTPOST_LOCAL</code>. If you omit this
    #   			parameter, <code>CLOUD</code> is used by default.</p>
    #   		       <p>If the policy targets resources in an Amazon Web Services Region, then you must create snapshots in the same
    #   			Region as the source resource.</p>
    #   		       <p>If the policy targets resources on an Outpost, then you can create snapshots on the same Outpost
    #   			as the source resource, or in the Region of that Outpost.</p>
    #
    #   Enum, one of: ["CLOUD", "OUTPOST_LOCAL"]
    #
    #   @return [String]
    #
    # @!attribute interval
    #   <p>The interval between snapshots. The supported values are 1, 2, 3, 4, 6, 8, 12, and
    #   			24.</p>
    #
    #   @return [Integer]
    #
    # @!attribute interval_unit
    #   <p>The interval unit.</p>
    #
    #   Enum, one of: ["HOURS"]
    #
    #   @return [String]
    #
    # @!attribute times
    #   <p>The time, in UTC, to start the operation. The supported format is hh:mm.</p>
    #   		       <p>The operation occurs within a one-hour window following the specified time. If you do
    #   			not specify a time, Amazon DLM selects a time within the next 24 hours.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute cron_expression
    #   <p>The schedule, as a Cron expression. The schedule interval must be between 1 hour and 1
    #   			year. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html CronExpressions">Cron
    #   				expressions</a> in the <i>Amazon CloudWatch User Guide</i>.</p>
    #
    #   @return [String]
    #
    CreateRule = ::Struct.new(
      :location,
      :interval,
      :interval_unit,
      :times,
      :cron_expression,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.interval ||= 0
      end
    end

    # <p>Specifies a rule for copying shared snapshots across Regions.</p>
    #
    # @!attribute target
    #   <p>The target Region.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_configuration
    #   <p>The encryption settings for the copied snapshot.</p>
    #
    #   @return [EncryptionConfiguration]
    #
    # @!attribute retain_rule
    #   <p>Specifies the retention rule for cross-Region snapshot copies.</p>
    #
    #   @return [CrossRegionCopyRetainRule]
    #
    CrossRegionCopyAction = ::Struct.new(
      :target,
      :encryption_configuration,
      :retain_rule,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies an AMI deprecation rule for cross-Region AMI copies created by a cross-Region copy rule.</p>
    #
    # @!attribute interval
    #   <p>The period after which to deprecate the cross-Region AMI copies. The period must be less than or
    #   			equal to the cross-Region AMI copy retention period, and it can't be greater than 10 years. This is
    #   			equivalent to 120 months, 520 weeks, or 3650 days.</p>
    #
    #   @return [Integer]
    #
    # @!attribute interval_unit
    #   <p>The unit of time in which to measure the <b>Interval</b>.</p>
    #
    #   Enum, one of: ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #
    #   @return [String]
    #
    CrossRegionCopyDeprecateRule = ::Struct.new(
      :interval,
      :interval_unit,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.interval ||= 0
      end
    end

    # <p>Specifies the retention rule for cross-Region snapshot copies.</p>
    #
    # @!attribute interval
    #   <p>The amount of time to retain each snapshot. The maximum is 100 years. This is
    #   			equivalent to 1200 months, 5200 weeks, or 36500 days.</p>
    #
    #   @return [Integer]
    #
    # @!attribute interval_unit
    #   <p>The unit of time for time-based retention.</p>
    #
    #   Enum, one of: ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #
    #   @return [String]
    #
    CrossRegionCopyRetainRule = ::Struct.new(
      :interval,
      :interval_unit,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.interval ||= 0
      end
    end

    # <p>Specifies a rule for cross-Region snapshot copies.</p>
    #
    # @!attribute target_region
    #   <p>Avoid using this parameter when creating new policies. Instead, use <b>Target</b>
    #   			to specify a target Region or a target Outpost for snapshot copies.</p>
    #   		       <p>For policies created before the <b>Target</b> parameter
    #   			was introduced, this parameter indicates the target Region for snapshot copies.</p>
    #
    #   @return [String]
    #
    # @!attribute target
    #   <p>The target Region or the Amazon Resource Name (ARN) of the target Outpost for the
    #   			snapshot copies.</p>
    #   		       <p>Use this parameter instead of <b>TargetRegion</b>. Do not
    #   			specify both.</p>
    #
    #   @return [String]
    #
    # @!attribute encrypted
    #   <p>To encrypt a copy of an unencrypted snapshot if encryption by default is not enabled,
    #   			enable encryption using this parameter. Copies of encrypted snapshots are encrypted,
    #   			even if this parameter is false or if encryption by default is not enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute cmk_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key to use for EBS encryption. If this
    #   			parameter is not specified, the default KMS key for the account is used.</p>
    #
    #   @return [String]
    #
    # @!attribute copy_tags
    #   <p>Indicates whether to copy all user-defined tags from the source snapshot to the cross-Region
    #   			snapshot copy.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute retain_rule
    #   <p>The retention rule that indicates how long snapshot copies are to be retained in the
    #   			destination Region.</p>
    #
    #   @return [CrossRegionCopyRetainRule]
    #
    # @!attribute deprecate_rule
    #   <p>The AMI deprecation rule for cross-Region AMI copies created by the rule.</p>
    #
    #   @return [CrossRegionCopyDeprecateRule]
    #
    CrossRegionCopyRule = ::Struct.new(
      :target_region,
      :target,
      :encrypted,
      :cmk_arn,
      :copy_tags,
      :retain_rule,
      :deprecate_rule,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_id
    #   <p>The identifier of the lifecycle policy.</p>
    #
    #   @return [String]
    #
    DeleteLifecyclePolicyInput = ::Struct.new(
      :policy_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteLifecyclePolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies an AMI deprecation rule for a schedule.</p>
    #
    # @!attribute count
    #   <p>If the schedule has a count-based retention rule, this parameter specifies the number of oldest
    #   			AMIs to deprecate. The count must be less than or equal to the schedule's retention count, and it
    #   			can't be greater than 1000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute interval
    #   <p>If the schedule has an age-based retention rule, this parameter specifies the period after which
    #   			to deprecate AMIs created by the schedule. The period must be less than or equal to the schedule's
    #   			retention period, and it can't be greater than 10 years. This is equivalent to 120 months, 520
    #   			weeks, or 3650 days.</p>
    #
    #   @return [Integer]
    #
    # @!attribute interval_unit
    #   <p>The unit of time in which to measure the <b>Interval</b>.</p>
    #
    #   Enum, one of: ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #
    #   @return [String]
    #
    DeprecateRule = ::Struct.new(
      :count,
      :interval,
      :interval_unit,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.count ||= 0
        self.interval ||= 0
      end
    end

    # <p>Specifies the encryption settings for shared snapshots that are copied across Regions.</p>
    #
    # @!attribute encrypted
    #   <p>To encrypt a copy of an unencrypted snapshot when encryption by default is not enabled, enable
    #   			encryption using this parameter. Copies of encrypted snapshots are encrypted, even if this
    #   			parameter is false or when encryption by default is not enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute cmk_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key to use for EBS encryption. If
    #   			this parameter is not specified, the default KMS key for the account is used.</p>
    #
    #   @return [String]
    #
    EncryptionConfiguration = ::Struct.new(
      :encrypted,
      :cmk_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies an event that triggers an event-based policy.</p>
    #
    # @!attribute event_type
    #   <p>The type of event. Currently, only snapshot sharing events are supported.</p>
    #
    #   Enum, one of: ["shareSnapshot"]
    #
    #   @return [String]
    #
    # @!attribute snapshot_owner
    #   <p>The IDs of the Amazon Web Services accounts that can trigger policy by sharing snapshots with your account.
    #   			The policy only runs if one of the specified Amazon Web Services accounts shares a snapshot with your account.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute description_regex
    #   <p>The snapshot description that can trigger the policy. The description pattern is specified using
    #   			a regular expression. The policy runs only if a snapshot with a description that matches the
    #   			specified pattern is shared with your account.</p>
    #   		       <p>For example, specifying <code>^.*Created for policy: policy-1234567890abcdef0.*$</code>
    #   			configures the policy to run only if snapshots created by policy <code>policy-1234567890abcdef0</code>
    #   			are shared with your account.</p>
    #
    #   @return [String]
    #
    EventParameters = ::Struct.new(
      :event_type,
      :snapshot_owner,
      :description_regex,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies an event that triggers an event-based policy.</p>
    #
    # @!attribute type
    #   <p>The source of the event. Currently only managed CloudWatch Events rules are supported.</p>
    #
    #   Enum, one of: ["MANAGED_CWE"]
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>Information about the event.</p>
    #
    #   @return [EventParameters]
    #
    EventSource = ::Struct.new(
      :type,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EventSourceValues
    #
    module EventSourceValues
      # No documentation available.
      #
      MANAGED_CWE = "MANAGED_CWE"
    end

    # Includes enum constants for EventTypeValues
    #
    module EventTypeValues
      # No documentation available.
      #
      SHARE_SNAPSHOT = "shareSnapshot"
    end

    # <p>Specifies a rule for enabling fast snapshot restore. You can enable fast snapshot
    # 			restore based on either a count or a time interval.</p>
    #
    # @!attribute count
    #   <p>The number of snapshots to be enabled with fast snapshot restore.</p>
    #
    #   @return [Integer]
    #
    # @!attribute interval
    #   <p>The amount of time to enable fast snapshot restore. The maximum is 100 years. This is
    #   			equivalent to 1200 months, 5200 weeks, or 36500 days.</p>
    #
    #   @return [Integer]
    #
    # @!attribute interval_unit
    #   <p>The unit of time for enabling fast snapshot restore.</p>
    #
    #   Enum, one of: ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #
    #   @return [String]
    #
    # @!attribute availability_zones
    #   <p>The Availability Zones in which to enable fast snapshot restore.</p>
    #
    #   @return [Array<String>]
    #
    FastRestoreRule = ::Struct.new(
      :count,
      :interval,
      :interval_unit,
      :availability_zones,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.count ||= 0
        self.interval ||= 0
      end
    end

    # @!attribute policy_ids
    #   <p>The identifiers of the data lifecycle policies.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute state
    #   <p>The activation state.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute resource_types
    #   <p>The resource type.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute target_tags
    #   <p>The target tag for a policy.</p>
    #   		       <p>Tags are strings in the format <code>key=value</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags_to_add
    #   <p>The tags to add to objects created by the policy.</p>
    #   		       <p>Tags are strings in the format <code>key=value</code>.</p>
    #   		       <p>These user-defined tags are added in addition to the Amazon Web Services-added lifecycle tags.</p>
    #
    #   @return [Array<String>]
    #
    GetLifecyclePoliciesInput = ::Struct.new(
      :policy_ids,
      :state,
      :resource_types,
      :target_tags,
      :tags_to_add,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policies
    #   <p>Summary information about the lifecycle policies.</p>
    #
    #   @return [Array<LifecyclePolicySummary>]
    #
    GetLifecyclePoliciesOutput = ::Struct.new(
      :policies,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_id
    #   <p>The identifier of the lifecycle policy.</p>
    #
    #   @return [String]
    #
    GetLifecyclePolicyInput = ::Struct.new(
      :policy_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy
    #   <p>Detailed information about the lifecycle policy.</p>
    #
    #   @return [LifecyclePolicy]
    #
    GetLifecyclePolicyOutput = ::Struct.new(
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for GettablePolicyStateValues
    #
    module GettablePolicyStateValues
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      ERROR = "ERROR"
    end

    # <p>The service failed in an unexpected way.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    InternalServerException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for IntervalUnitValues
    #
    module IntervalUnitValues
      # No documentation available.
      #
      HOURS = "HOURS"
    end

    # <p>Bad request. The request is missing required parameters or has invalid
    # 			parameters.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute required_parameters
    #   <p>The request omitted one or more required parameters.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute mutually_exclusive_parameters
    #   <p>The request included parameters that cannot be provided together.</p>
    #
    #   @return [Array<String>]
    #
    InvalidRequestException = ::Struct.new(
      :message,
      :code,
      :required_parameters,
      :mutually_exclusive_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Detailed information about a lifecycle policy.</p>
    #
    # @!attribute policy_id
    #   <p>The identifier of the lifecycle policy.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the lifecycle policy.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The activation state of the lifecycle policy.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>The description of the status.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used to run the operations specified by
    #   			the lifecycle policy.</p>
    #
    #   @return [String]
    #
    # @!attribute date_created
    #   <p>The local date and time when the lifecycle policy was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute date_modified
    #   <p>The local date and time when the lifecycle policy was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute policy_details
    #   <p>The configuration of the lifecycle policy</p>
    #
    #   @return [PolicyDetails]
    #
    # @!attribute tags
    #   <p>The tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the policy.</p>
    #
    #   @return [String]
    #
    LifecyclePolicy = ::Struct.new(
      :policy_id,
      :description,
      :state,
      :status_message,
      :execution_role_arn,
      :date_created,
      :date_modified,
      :policy_details,
      :tags,
      :policy_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary information about a lifecycle policy.</p>
    #
    # @!attribute policy_id
    #   <p>The identifier of the lifecycle policy.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the lifecycle policy.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The activation state of the lifecycle policy.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute policy_type
    #   <p>The type of policy. <code>EBS_SNAPSHOT_MANAGEMENT</code> indicates that the policy
    #   			manages the lifecycle of Amazon EBS snapshots. <code>IMAGE_MANAGEMENT</code>
    #   			indicates that the policy manages the lifecycle of EBS-backed AMIs.</p>
    #
    #   Enum, one of: ["EBS_SNAPSHOT_MANAGEMENT", "IMAGE_MANAGEMENT", "EVENT_BASED_POLICY"]
    #
    #   @return [String]
    #
    LifecyclePolicySummary = ::Struct.new(
      :policy_id,
      :description,
      :state,
      :tags,
      :policy_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request failed because a limit was exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>Value is the type of resource for which a limit was exceeded.</p>
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :message,
      :code,
      :resource_type,
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

    # Includes enum constants for LocationValues
    #
    module LocationValues
      # No documentation available.
      #
      CLOUD = "CLOUD"

      # No documentation available.
      #
      OUTPOST_LOCAL = "OUTPOST_LOCAL"
    end

    # <p>Specifies optional parameters to add to a policy. The set of valid parameters depends
    # 			on the combination of policy type and resource type.</p>
    #
    # @!attribute exclude_boot_volume
    #   <p>[EBS Snapshot Management – Instance policies only] Indicates whether to exclude the
    #   			root volume from snapshots created using <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateSnapshots.html">CreateSnapshots</a>.
    #   			The default is false.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute no_reboot
    #   <p>Applies to AMI lifecycle policies only. Indicates whether targeted instances are rebooted when the lifecycle
    #   			policy runs. <code>true</code> indicates that targeted instances are not rebooted when the policy
    #   			runs. <code>false</code> indicates that target instances are rebooted when the policy runs. The
    #   			default is <code>true</code> (instances are not rebooted).</p>
    #
    #   @return [Boolean]
    #
    Parameters = ::Struct.new(
      :exclude_boot_volume,
      :no_reboot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the configuration of a lifecycle policy.</p>
    #
    # @!attribute policy_type
    #   <p>The valid target resource types and actions a policy can manage. Specify <code>EBS_SNAPSHOT_MANAGEMENT</code>
    #   			to create a lifecycle policy that manages the lifecycle of Amazon EBS snapshots. Specify <code>IMAGE_MANAGEMENT</code>
    #   			to create a lifecycle policy that manages the lifecycle of EBS-backed AMIs. Specify <code>EVENT_BASED_POLICY </code>
    #   			to create an event-based policy that performs specific actions when a defined event occurs in your Amazon Web Services account.</p>
    #   		       <p>The default is <code>EBS_SNAPSHOT_MANAGEMENT</code>.</p>
    #
    #   Enum, one of: ["EBS_SNAPSHOT_MANAGEMENT", "IMAGE_MANAGEMENT", "EVENT_BASED_POLICY"]
    #
    #   @return [String]
    #
    # @!attribute resource_types
    #   <p>The target resource type for snapshot and AMI lifecycle policies. Use <code>VOLUME </code>to
    #   			create snapshots of individual volumes or use <code>INSTANCE</code> to create multi-volume
    #   			snapshots from the volumes for an instance.</p>
    #   		       <p>This parameter is required for snapshot and AMI policies only. If you are creating an event-based policy, omit this parameter.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute resource_locations
    #   <p>The location of the resources to backup. If the source resources are located in an Amazon Web Services Region,
    #   			specify <code>CLOUD</code>. If the source resources are located on an Outpost
    #   			in your account, specify <code>OUTPOST</code>. </p>
    #   			      <p>If you specify <code>OUTPOST</code>, Amazon Data Lifecycle Manager backs up all resources
    #   				of the specified type with matching target tags across all of the Outposts in your account.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute target_tags
    #   <p>The single tag that identifies targeted resources for this policy.</p>
    #   		       <p>This parameter is required for snapshot and AMI policies only. If you are creating an event-based policy, omit this parameter.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute schedules
    #   <p>The schedules of policy-defined actions for snapshot and AMI lifecycle policies. A policy
    #   			can have up to four schedules—one mandatory schedule and up to three optional schedules.</p>
    #   		       <p>This parameter is required for snapshot and AMI policies only. If you are creating an event-based policy, omit this parameter.</p>
    #
    #   @return [Array<Schedule>]
    #
    # @!attribute parameters
    #   <p>A set of optional parameters for snapshot and AMI lifecycle policies. </p>
    #   		       <p>This parameter is required for snapshot and AMI policies only. If you are creating an event-based policy, omit this parameter.</p>
    #
    #   @return [Parameters]
    #
    # @!attribute event_source
    #   <p>The event that triggers the event-based policy. </p>
    #   		       <p>This parameter is required for event-based policies only. If you are creating a snapshot or AMI policy, omit this parameter.</p>
    #
    #   @return [EventSource]
    #
    # @!attribute actions
    #   <p>The actions to be performed when the event-based policy is triggered. You can specify
    #   		only one action per policy.</p>
    #   		       <p>This parameter is required for event-based policies only. If you are creating a snapshot or AMI policy, omit this parameter.</p>
    #
    #   @return [Array<Action>]
    #
    PolicyDetails = ::Struct.new(
      :policy_type,
      :resource_types,
      :resource_locations,
      :target_tags,
      :schedules,
      :parameters,
      :event_source,
      :actions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PolicyTypeValues
    #
    module PolicyTypeValues
      # No documentation available.
      #
      EBS_SNAPSHOT_MANAGEMENT = "EBS_SNAPSHOT_MANAGEMENT"

      # No documentation available.
      #
      IMAGE_MANAGEMENT = "IMAGE_MANAGEMENT"

      # No documentation available.
      #
      EVENT_BASED_POLICY = "EVENT_BASED_POLICY"
    end

    # Includes enum constants for ResourceLocationValues
    #
    module ResourceLocationValues
      # No documentation available.
      #
      CLOUD = "CLOUD"

      # No documentation available.
      #
      OUTPOST = "OUTPOST"
    end

    # <p>A requested resource was not found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>Value is the type of resource that was not found.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_ids
    #   <p>Value is a list of resource IDs that were not found.</p>
    #
    #   @return [Array<String>]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :code,
      :resource_type,
      :resource_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceTypeValues
    #
    module ResourceTypeValues
      # No documentation available.
      #
      VOLUME = "VOLUME"

      # No documentation available.
      #
      INSTANCE = "INSTANCE"
    end

    # <p>Specifies the retention rule for a lifecycle policy. You can retain snapshots based on
    # 			either a count or a time interval.</p>
    #
    # @!attribute count
    #   <p>The number of snapshots to retain for each volume, up to a maximum of 1000.</p>
    #
    #   @return [Integer]
    #
    # @!attribute interval
    #   <p>The amount of time to retain each snapshot. The maximum is 100 years. This is
    #   			equivalent to 1200 months, 5200 weeks, or 36500 days.</p>
    #
    #   @return [Integer]
    #
    # @!attribute interval_unit
    #   <p>The unit of time for time-based retention.</p>
    #
    #   Enum, one of: ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #
    #   @return [String]
    #
    RetainRule = ::Struct.new(
      :count,
      :interval,
      :interval_unit,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.count ||= 0
        self.interval ||= 0
      end
    end

    # Includes enum constants for RetentionIntervalUnitValues
    #
    module RetentionIntervalUnitValues
      # No documentation available.
      #
      DAYS = "DAYS"

      # No documentation available.
      #
      WEEKS = "WEEKS"

      # No documentation available.
      #
      MONTHS = "MONTHS"

      # No documentation available.
      #
      YEARS = "YEARS"
    end

    # <p>Specifies a backup schedule for a snapshot or AMI lifecycle policy.</p>
    #
    # @!attribute name
    #   <p>The name of the schedule.</p>
    #
    #   @return [String]
    #
    # @!attribute copy_tags
    #   <p>Copy all user-defined tags on a source volume to snapshots of the volume created by
    #   			this policy.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags_to_add
    #   <p>The tags to apply to policy-created resources. These user-defined tags are in addition
    #   			to the Amazon Web Services-added lifecycle tags.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute variable_tags
    #   <p>A collection of key/value pairs with values determined dynamically when the policy is
    #   			executed. Keys may be any valid Amazon EC2 tag key. Values must be in one of the two
    #   			following formats: <code>$(instance-id)</code> or <code>$(timestamp)</code>. Variable
    #   			tags are only valid for EBS Snapshot Management – Instance policies.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute create_rule
    #   <p>The creation rule.</p>
    #
    #   @return [CreateRule]
    #
    # @!attribute retain_rule
    #   <p>The retention rule.</p>
    #
    #   @return [RetainRule]
    #
    # @!attribute fast_restore_rule
    #   <p>The rule for enabling fast snapshot restore.</p>
    #
    #   @return [FastRestoreRule]
    #
    # @!attribute cross_region_copy_rules
    #   <p>The rule for cross-Region snapshot copies.</p>
    #   		       <p>You can only specify cross-Region copy rules for policies that create snapshots in a Region.
    #   			If the policy creates snapshots on an Outpost, then you cannot copy the snapshots to a Region or
    #   			to an Outpost. If the policy creates snapshots in a Region, then snapshots can be copied to up to three
    #   			Regions or Outposts.</p>
    #
    #   @return [Array<CrossRegionCopyRule>]
    #
    # @!attribute share_rules
    #   <p>The rule for sharing snapshots with other Amazon Web Services accounts.</p>
    #
    #   @return [Array<ShareRule>]
    #
    # @!attribute deprecate_rule
    #   <p>The AMI deprecation rule for the schedule.</p>
    #
    #   @return [DeprecateRule]
    #
    Schedule = ::Struct.new(
      :name,
      :copy_tags,
      :tags_to_add,
      :variable_tags,
      :create_rule,
      :retain_rule,
      :fast_restore_rule,
      :cross_region_copy_rules,
      :share_rules,
      :deprecate_rule,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.copy_tags ||= false
      end
    end

    # Includes enum constants for SettablePolicyStateValues
    #
    module SettablePolicyStateValues
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # <p>Specifies a rule for sharing snapshots across Amazon Web Services accounts.</p>
    #
    # @!attribute target_accounts
    #   <p>The IDs of the Amazon Web Services accounts with which to share the snapshots.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute unshare_interval
    #   <p>The period after which snapshots that are shared with other Amazon Web Services accounts are automatically unshared.</p>
    #
    #   @return [Integer]
    #
    # @!attribute unshare_interval_unit
    #   <p>The unit of time for the automatic unsharing interval.</p>
    #
    #   Enum, one of: ["DAYS", "WEEKS", "MONTHS", "YEARS"]
    #
    #   @return [String]
    #
    ShareRule = ::Struct.new(
      :target_accounts,
      :unshare_interval,
      :unshare_interval_unit,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.unshare_interval ||= 0
      end
    end

    # <p>Specifies a tag for a resource.</p>
    #
    # @!attribute key
    #   <p>The tag key.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The tag value.</p>
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
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>One or more tags.</p>
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

    # @!attribute policy_id
    #   <p>The identifier of the lifecycle policy.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used to run the operations specified by
    #   			the lifecycle policy.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The desired activation state of the lifecycle policy after creation.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the lifecycle policy.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_details
    #   <p>The configuration of the lifecycle policy. You cannot update the policy type or the
    #   			resource type.</p>
    #
    #   @return [PolicyDetails]
    #
    UpdateLifecyclePolicyInput = ::Struct.new(
      :policy_id,
      :execution_role_arn,
      :state,
      :description,
      :policy_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateLifecyclePolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
