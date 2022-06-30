# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AutoScaling
  module Types

    # <p>Specifies the minimum and maximum for the <code>AcceleratorCount</code> object when
    #             you specify <a>InstanceRequirements</a> for an Auto Scaling group.</p>
    #
    # @!attribute min
    #   <p>The minimum value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max
    #   <p>The maximum value.</p>
    #
    #   @return [Integer]
    #
    AcceleratorCountRequest = ::Struct.new(
      :min,
      :max,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AcceleratorManufacturer
    #
    module AcceleratorManufacturer
      # No documentation available.
      #
      NVIDIA = "nvidia"

      # No documentation available.
      #
      AMD = "amd"

      # No documentation available.
      #
      AMAZON_WEB_SERVICES = "amazon-web-services"

      # No documentation available.
      #
      XILINX = "xilinx"
    end

    # Includes enum constants for AcceleratorName
    #
    module AcceleratorName
      # No documentation available.
      #
      A100 = "a100"

      # No documentation available.
      #
      V100 = "v100"

      # No documentation available.
      #
      K80 = "k80"

      # No documentation available.
      #
      T4 = "t4"

      # No documentation available.
      #
      M60 = "m60"

      # No documentation available.
      #
      RADEON_PRO_V520 = "radeon-pro-v520"

      # No documentation available.
      #
      VU9P = "vu9p"
    end

    # <p>Specifies the minimum and maximum for the <code>AcceleratorTotalMemoryMiB</code>
    #             object when you specify <a>InstanceRequirements</a> for an Auto Scaling group.</p>
    #
    # @!attribute min
    #   <p>The memory minimum in MiB.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max
    #   <p>The memory maximum in MiB.</p>
    #
    #   @return [Integer]
    #
    AcceleratorTotalMemoryMiBRequest = ::Struct.new(
      :min,
      :max,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AcceleratorType
    #
    module AcceleratorType
      # No documentation available.
      #
      GPU = "gpu"

      # No documentation available.
      #
      FPGA = "fpga"

      # No documentation available.
      #
      INFERENCE = "inference"
    end

    # <p>The request failed because an active instance refresh for the specified Auto Scaling group was
    #             not found. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ActiveInstanceRefreshNotFoundFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes scaling activity, which is a long-running process that represents a change
    #             to your Auto Scaling group, such as changing its size or replacing an instance.</p>
    #
    # @!attribute activity_id
    #   <p>The ID of the activity.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A friendly, more verbose description of the activity.</p>
    #
    #   @return [String]
    #
    # @!attribute cause
    #   <p>The reason the activity began.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The start time of the activity.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The end time of the activity.</p>
    #
    #   @return [Time]
    #
    # @!attribute status_code
    #   <p>The current status of the activity.</p>
    #
    #   Enum, one of: ["PendingSpotBidPlacement", "WaitingForSpotInstanceRequestId", "WaitingForSpotInstanceId", "WaitingForInstanceId", "PreInService", "InProgress", "WaitingForELBConnectionDraining", "MidLifecycleAction", "WaitingForInstanceWarmup", "Successful", "Failed", "Cancelled"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>A friendly, more verbose description of the activity status.</p>
    #
    #   @return [String]
    #
    # @!attribute progress
    #   <p>A value between 0 and 100 that indicates the progress of the activity.</p>
    #
    #   @return [Integer]
    #
    # @!attribute details
    #   <p>The details about the activity.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_scaling_group_state
    #   <p>The state of the Auto Scaling group, which is either <code>InService</code> or
    #                   <code>Deleted</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_scaling_group_arn
    #   <p>The Amazon Resource Name (ARN) of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    Activity = ::Struct.new(
      :activity_id,
      :auto_scaling_group_name,
      :description,
      :cause,
      :start_time,
      :end_time,
      :status_code,
      :status_message,
      :progress,
      :details,
      :auto_scaling_group_state,
      :auto_scaling_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.progress ||= 0
      end

    end

    # <p>Describes a policy adjustment type.</p>
    #
    # @!attribute adjustment_type
    #   <p>The policy adjustment type. The valid values are <code>ChangeInCapacity</code>,
    #                   <code>ExactCapacity</code>, and <code>PercentChangeInCapacity</code>.</p>
    #
    #   @return [String]
    #
    AdjustmentType = ::Struct.new(
      :adjustment_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an alarm.</p>
    #
    # @!attribute alarm_name
    #   <p>The name of the alarm.</p>
    #
    #   @return [String]
    #
    # @!attribute alarm_arn
    #   <p>The Amazon Resource Name (ARN) of the alarm.</p>
    #
    #   @return [String]
    #
    Alarm = ::Struct.new(
      :alarm_name,
      :alarm_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You already have an Auto Scaling group or launch configuration with this name.</p>
    #
    # @!attribute message
    #   <p></p>
    #
    #   @return [String]
    #
    AlreadyExistsFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_ids
    #   <p>The IDs of the instances. You can specify up to 20 instances.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    AttachInstancesInput = ::Struct.new(
      :instance_ids,
      :auto_scaling_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AttachInstancesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute target_group_ar_ns
    #   <p>The Amazon Resource Names (ARN) of the target groups. You can specify up to 10 target
    #               groups. To get the ARN of a target group, use the Elastic Load Balancing <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html">DescribeTargetGroups</a> API operation.</p>
    #
    #   @return [Array<String>]
    #
    AttachLoadBalancerTargetGroupsInput = ::Struct.new(
      :auto_scaling_group_name,
      :target_group_ar_ns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AttachLoadBalancerTargetGroupsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute load_balancer_names
    #   <p>The names of the load balancers. You can specify up to 10 load balancers.</p>
    #
    #   @return [Array<String>]
    #
    AttachLoadBalancersInput = ::Struct.new(
      :auto_scaling_group_name,
      :load_balancer_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AttachLoadBalancersOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an Auto Scaling group.</p>
    #
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_scaling_group_arn
    #   <p>The Amazon Resource Name (ARN) of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_configuration_name
    #   <p>The name of the associated launch configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_template
    #   <p>The launch template for the group.</p>
    #
    #   @return [LaunchTemplateSpecification]
    #
    # @!attribute mixed_instances_policy
    #   <p>The mixed instances policy for the group.</p>
    #
    #   @return [MixedInstancesPolicy]
    #
    # @!attribute min_size
    #   <p>The minimum size of the group.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_size
    #   <p>The maximum size of the group.</p>
    #
    #   @return [Integer]
    #
    # @!attribute desired_capacity
    #   <p>The desired size of the group.</p>
    #
    #   @return [Integer]
    #
    # @!attribute predicted_capacity
    #   <p>The predicted capacity of the group when it has a predictive scaling policy.</p>
    #
    #   @return [Integer]
    #
    # @!attribute default_cooldown
    #   <p>The duration of the default cooldown period, in seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute availability_zones
    #   <p>One or more Availability Zones for the group.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute load_balancer_names
    #   <p>One or more load balancers associated with the group.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute target_group_ar_ns
    #   <p>The Amazon Resource Names (ARN) of the target groups for your load balancer.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute health_check_type
    #   <p>The service to use for the health checks. The valid values are <code>EC2</code> and
    #                   <code>ELB</code>. If you configure an Auto Scaling group to use <code>ELB</code> health
    #               checks, it considers the instance unhealthy if it fails either the EC2 status checks or
    #               the load balancer health checks.</p>
    #
    #   @return [String]
    #
    # @!attribute health_check_grace_period
    #   <p>The duration of the health check grace period, in seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute instances
    #   <p>The EC2 instances associated with the group.</p>
    #
    #   @return [Array<Instance>]
    #
    # @!attribute created_time
    #   <p>The date and time the group was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute suspended_processes
    #   <p>The suspended processes associated with the group.</p>
    #
    #   @return [Array<SuspendedProcess>]
    #
    # @!attribute placement_group
    #   <p>The name of the placement group into which to launch your instances, if any.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_zone_identifier
    #   <p>One or more subnet IDs, if applicable, separated by commas.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled_metrics
    #   <p>The metrics enabled for the group.</p>
    #
    #   @return [Array<EnabledMetric>]
    #
    # @!attribute status
    #   <p>The current state of the group when the <a>DeleteAutoScalingGroup</a>
    #               operation is in progress.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags for the group.</p>
    #
    #   @return [Array<TagDescription>]
    #
    # @!attribute termination_policies
    #   <p>The termination policies for the group.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute new_instances_protected_from_scale_in
    #   <p>Indicates whether newly launched instances are protected from termination by Amazon EC2 Auto Scaling
    #               when scaling in.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute service_linked_role_arn
    #   <p>The Amazon Resource Name (ARN) of the service-linked role that the Auto Scaling group uses to
    #               call other Amazon Web Services on your behalf.</p>
    #
    #   @return [String]
    #
    # @!attribute max_instance_lifetime
    #   <p>The maximum amount of time, in seconds, that an instance can be in service.</p>
    #           <p>Valid Range: Minimum value of 0.</p>
    #
    #   @return [Integer]
    #
    # @!attribute capacity_rebalance
    #   <p>Indicates whether Capacity Rebalancing is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute warm_pool_configuration
    #   <p>The warm pool for the group.</p>
    #
    #   @return [WarmPoolConfiguration]
    #
    # @!attribute warm_pool_size
    #   <p>The current size of the warm pool.</p>
    #
    #   @return [Integer]
    #
    # @!attribute context
    #   <p>Reserved.</p>
    #
    #   @return [String]
    #
    # @!attribute desired_capacity_type
    #   <p>The unit of measurement for the value specified for desired capacity. Amazon EC2 Auto Scaling
    #               supports <code>DesiredCapacityType</code> for attribute-based instance type selection
    #               only.</p>
    #
    #   @return [String]
    #
    # @!attribute default_instance_warmup
    #   <p>The duration of the default instance warmup, in seconds.</p>
    #
    #   @return [Integer]
    #
    AutoScalingGroup = ::Struct.new(
      :auto_scaling_group_name,
      :auto_scaling_group_arn,
      :launch_configuration_name,
      :launch_template,
      :mixed_instances_policy,
      :min_size,
      :max_size,
      :desired_capacity,
      :predicted_capacity,
      :default_cooldown,
      :availability_zones,
      :load_balancer_names,
      :target_group_ar_ns,
      :health_check_type,
      :health_check_grace_period,
      :instances,
      :created_time,
      :suspended_processes,
      :placement_group,
      :vpc_zone_identifier,
      :enabled_metrics,
      :status,
      :tags,
      :termination_policies,
      :new_instances_protected_from_scale_in,
      :service_linked_role_arn,
      :max_instance_lifetime,
      :capacity_rebalance,
      :warm_pool_configuration,
      :warm_pool_size,
      :context,
      :desired_capacity_type,
      :default_instance_warmup,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an EC2 instance associated with an Auto Scaling group.</p>
    #
    # @!attribute instance_id
    #   <p>The ID of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_type
    #   <p>The instance type of the EC2 instance.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group for the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute availability_zone
    #   <p>The Availability Zone for the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute lifecycle_state
    #   <p>The lifecycle state for the instance. The <code>Quarantined</code> state is not used.
    #               For information about lifecycle states, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/AutoScalingGroupLifecycle.html">Instance
    #                   lifecycle</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>. </p>
    #           <p>Valid Values: <code>Pending</code> | <code>Pending:Wait</code> |
    #                   <code>Pending:Proceed</code> | <code>Quarantined</code> | <code>InService</code> |
    #                   <code>Terminating</code> | <code>Terminating:Wait</code> |
    #                   <code>Terminating:Proceed</code> | <code>Terminated</code> | <code>Detaching</code>
    #               | <code>Detached</code> | <code>EnteringStandby</code> | <code>Standby</code> |
    #                   <code>Warmed:Pending</code> | <code>Warmed:Pending:Wait</code> |
    #                   <code>Warmed:Pending:Proceed</code> | <code>Warmed:Terminating</code> |
    #                   <code>Warmed:Terminating:Wait</code> | <code>Warmed:Terminating:Proceed</code> |
    #                   <code>Warmed:Terminated</code> | <code>Warmed:Stopped</code> |
    #                   <code>Warmed:Running</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute health_status
    #   <p>The last reported health status of this instance. "Healthy" means that the instance is
    #               healthy and should remain in service. "Unhealthy" means that the instance is unhealthy
    #               and Amazon EC2 Auto Scaling should terminate and replace it.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_configuration_name
    #   <p>The launch configuration used to launch the instance. This value is not available if
    #               you attached the instance to the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_template
    #   <p>The launch template for the instance.</p>
    #
    #   @return [LaunchTemplateSpecification]
    #
    # @!attribute protected_from_scale_in
    #   <p>Indicates whether the instance is protected from termination by Amazon EC2 Auto Scaling when scaling
    #               in.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute weighted_capacity
    #   <p>The number of capacity units contributed by the instance based on its instance
    #               type.</p>
    #           <p>Valid Range: Minimum value of 1. Maximum value of 999.</p>
    #
    #   @return [String]
    #
    AutoScalingInstanceDetails = ::Struct.new(
      :instance_id,
      :instance_type,
      :auto_scaling_group_name,
      :availability_zone,
      :lifecycle_state,
      :health_status,
      :launch_configuration_name,
      :launch_template,
      :protected_from_scale_in,
      :weighted_capacity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BareMetal
    #
    module BareMetal
      # No documentation available.
      #
      INCLUDED = "included"

      # No documentation available.
      #
      EXCLUDED = "excluded"

      # No documentation available.
      #
      REQUIRED = "required"
    end

    # <p>Specifies the minimum and maximum for the <code>BaselineEbsBandwidthMbps</code> object
    #             when you specify <a>InstanceRequirements</a> for an Auto Scaling group.</p>
    #
    # @!attribute min
    #   <p>The minimum value in Mbps.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max
    #   <p>The maximum value in Mbps.</p>
    #
    #   @return [Integer]
    #
    BaselineEbsBandwidthMbpsRequest = ::Struct.new(
      :min,
      :max,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute scheduled_action_names
    #   <p>The names of the scheduled actions to delete. The maximum number allowed is 50.
    #           </p>
    #
    #   @return [Array<String>]
    #
    BatchDeleteScheduledActionInput = ::Struct.new(
      :auto_scaling_group_name,
      :scheduled_action_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute failed_scheduled_actions
    #   <p>The names of the scheduled actions that could not be deleted, including an error
    #               message.</p>
    #
    #   @return [Array<FailedScheduledUpdateGroupActionRequest>]
    #
    BatchDeleteScheduledActionOutput = ::Struct.new(
      :failed_scheduled_actions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute scheduled_update_group_actions
    #   <p>One or more scheduled actions. The maximum number allowed is 50.</p>
    #
    #   @return [Array<ScheduledUpdateGroupActionRequest>]
    #
    BatchPutScheduledUpdateGroupActionInput = ::Struct.new(
      :auto_scaling_group_name,
      :scheduled_update_group_actions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute failed_scheduled_update_group_actions
    #   <p>The names of the scheduled actions that could not be created or updated, including an
    #               error message.</p>
    #
    #   @return [Array<FailedScheduledUpdateGroupActionRequest>]
    #
    BatchPutScheduledUpdateGroupActionOutput = ::Struct.new(
      :failed_scheduled_update_group_actions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a block device mapping.</p>
    #
    # @!attribute virtual_name
    #   <p>The name of the virtual device (for example, <code>ephemeral0</code>).</p>
    #           <p>You can specify either <code>VirtualName</code> or <code>Ebs</code>, but not
    #               both.</p>
    #
    #   @return [String]
    #
    # @!attribute device_name
    #   <p>The device name exposed to the EC2 instance (for example, <code>/dev/sdh</code> or
    #                   <code>xvdh</code>). For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/device_naming.html">Device Naming on Linux
    #                   Instances</a> in the <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute ebs
    #   <p>Parameters used to automatically set up EBS volumes when an instance is
    #               launched.</p>
    #           <p>You can specify either <code>VirtualName</code> or <code>Ebs</code>, but not
    #               both.</p>
    #
    #   @return [Ebs]
    #
    # @!attribute no_device
    #   <p>Setting this value to <code>true</code> suppresses the specified device included in
    #               the block device mapping of the AMI.</p>
    #           <p>If <code>NoDevice</code> is <code>true</code> for the root device, instances might
    #               fail the EC2 health check. In that case, Amazon EC2 Auto Scaling launches replacement instances.</p>
    #           <p>If you specify <code>NoDevice</code>, you cannot specify <code>Ebs</code>.</p>
    #
    #   @return [Boolean]
    #
    BlockDeviceMapping = ::Struct.new(
      :virtual_name,
      :device_name,
      :ebs,
      :no_device,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BurstablePerformance
    #
    module BurstablePerformance
      # No documentation available.
      #
      INCLUDED = "included"

      # No documentation available.
      #
      EXCLUDED = "excluded"

      # No documentation available.
      #
      REQUIRED = "required"
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    CancelInstanceRefreshInput = ::Struct.new(
      :auto_scaling_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_refresh_id
    #   <p>The instance refresh ID.</p>
    #
    #   @return [String]
    #
    CancelInstanceRefreshOutput = ::Struct.new(
      :instance_refresh_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A <code>GetPredictiveScalingForecast</code> call returns the capacity forecast for a
    #             predictive scaling policy. This structure includes the data points for that capacity
    #             forecast, along with the timestamps of those data points. </p>
    #
    # @!attribute timestamps
    #   <p>The timestamps for the data points, in UTC format.</p>
    #
    #   @return [Array<Time>]
    #
    # @!attribute values
    #   <p>The values of the data points.</p>
    #
    #   @return [Array<Float>]
    #
    CapacityForecast = ::Struct.new(
      :timestamps,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute lifecycle_hook_name
    #   <p>The name of the lifecycle hook.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute lifecycle_action_token
    #   <p>A universally unique identifier (UUID) that identifies a specific lifecycle action
    #               associated with an instance. Amazon EC2 Auto Scaling sends this token to the notification target you
    #               specified when you created the lifecycle hook.</p>
    #
    #   @return [String]
    #
    # @!attribute lifecycle_action_result
    #   <p>The action for the group to take. This parameter can be either <code>CONTINUE</code>
    #               or <code>ABANDON</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The ID of the instance.</p>
    #
    #   @return [String]
    #
    CompleteLifecycleActionInput = ::Struct.new(
      :lifecycle_hook_name,
      :auto_scaling_group_name,
      :lifecycle_action_token,
      :lifecycle_action_result,
      :instance_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CompleteLifecycleActionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CpuManufacturer
    #
    module CpuManufacturer
      # No documentation available.
      #
      INTEL = "intel"

      # No documentation available.
      #
      AMD = "amd"

      # No documentation available.
      #
      AMAZON_WEB_SERVICES = "amazon-web-services"
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group. This name must be unique per Region per account.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_configuration_name
    #   <p>The name of the launch configuration to use to launch instances. </p>
    #           <p>Conditional: You must specify either a launch template (<code>LaunchTemplate</code> or
    #                   <code>MixedInstancesPolicy</code>) or a launch configuration
    #                   (<code>LaunchConfigurationName</code> or <code>InstanceId</code>).</p>
    #
    #   @return [String]
    #
    # @!attribute launch_template
    #   <p>Parameters used to specify the launch template and version to use to launch instances. </p>
    #           <p>Conditional: You must specify either a launch template (<code>LaunchTemplate</code> or
    #                   <code>MixedInstancesPolicy</code>) or a launch configuration
    #                   (<code>LaunchConfigurationName</code> or <code>InstanceId</code>).</p>
    #           <note>
    #               <p>The launch template that is specified must be configured for use with an Auto Scaling
    #                   group. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-template.html">Creating a launch
    #                       template for an Auto Scaling group</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #           </note>
    #
    #   @return [LaunchTemplateSpecification]
    #
    # @!attribute mixed_instances_policy
    #   <p>An embedded object that specifies a mixed instances policy.</p>
    #
    #
    #
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups.html">Auto Scaling
    #                   groups with multiple instance types and purchase options</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    #   @return [MixedInstancesPolicy]
    #
    # @!attribute instance_id
    #   <p>The ID of the instance used to base the launch configuration on. If specified, Amazon
    #               EC2 Auto Scaling uses the configuration values from the specified instance to create a
    #               new launch configuration. To get the instance ID, use the Amazon EC2 <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html">DescribeInstances</a> API operation. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-from-instance.html">Creating an Auto Scaling group using an EC2 instance</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute min_size
    #   <p>The minimum size of the group.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_size
    #   <p>The maximum size of the group.</p>
    #           <note>
    #               <p>With a mixed instances policy that uses instance weighting, Amazon EC2 Auto Scaling may need to
    #                   go above <code>MaxSize</code> to meet your capacity requirements. In this event,
    #                   Amazon EC2 Auto Scaling will never go above <code>MaxSize</code> by more than your largest instance
    #                   weight (weights that define how many units each instance contributes to the desired
    #                   capacity of the group).</p>
    #           </note>
    #
    #   @return [Integer]
    #
    # @!attribute desired_capacity
    #   <p>The desired capacity is the initial capacity of the Auto Scaling group at the time of its
    #               creation and the capacity it attempts to maintain. It can scale beyond this capacity if
    #               you configure auto scaling. This number must be greater than or equal to the minimum
    #               size of the group and less than or equal to the maximum size of the group. If you do not
    #               specify a desired capacity, the default is the minimum size of the group.</p>
    #
    #   @return [Integer]
    #
    # @!attribute default_cooldown
    #   <p>
    #               <i>Only needed if you use simple scaling policies.</i>
    #            </p>
    #           <p>The amount of time, in seconds, between one scaling activity ending and another one
    #               starting due to simple scaling policies. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html">Scaling cooldowns
    #                   for Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #           <p>Default: <code>300</code> seconds</p>
    #
    #   @return [Integer]
    #
    # @!attribute availability_zones
    #   <p>A list of Availability Zones where instances in the Auto Scaling group can be created. This
    #               parameter is optional if you specify one or more subnets for
    #                   <code>VPCZoneIdentifier</code>.</p>
    #           <p>Conditional: If your account supports EC2-Classic and VPC, this parameter is required
    #               to launch instances into EC2-Classic.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute load_balancer_names
    #   <p>A list of Classic Load Balancers associated with this Auto Scaling group. For
    #               Application Load Balancers, Network Load Balancers, and Gateway Load Balancers, specify
    #               the <code>TargetGroupARNs</code> property instead.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute target_group_ar_ns
    #   <p>The Amazon Resource Names (ARN) of the target groups to associate with the Auto Scaling group.
    #               Instances are registered as targets in a target group, and traffic is routed to the
    #               target group. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html">Elastic Load Balancing and
    #                   Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute health_check_type
    #   <p>The service to use for the health checks. The valid values are <code>EC2</code>
    #               (default) and <code>ELB</code>. If you configure an Auto Scaling group to use load balancer
    #               (ELB) health checks, it considers the instance unhealthy if it fails either the EC2
    #               status checks or the load balancer health checks. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html">Health checks
    #                   for Auto Scaling instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute health_check_grace_period
    #   <p>
    #               <i></i>
    #            </p>
    #           <p>The amount of time, in seconds, that Amazon EC2 Auto Scaling waits before checking the health status
    #               of an EC2 instance that has come into service and marking it unhealthy due to a failed
    #               Elastic Load Balancing or custom health check. This is useful if your instances do not immediately pass
    #               these health checks after they enter the <code>InService</code> state. For more
    #               information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html health-check-grace-period">Health
    #                   check grace period</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #           <p>Default: <code>0</code> seconds</p>
    #
    #   @return [Integer]
    #
    # @!attribute placement_group
    #   <p>The name of an existing placement group into which to launch your instances. For more
    #               information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html">Placement groups</a> in the
    #                   <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
    #           <note>
    #               <p>A <i>cluster</i> placement group is a logical grouping of instances
    #                   within a single Availability Zone. You cannot specify multiple Availability Zones
    #                   and a cluster placement group. </p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute vpc_zone_identifier
    #   <p>A comma-separated list of subnet IDs for a virtual private cloud (VPC) where instances
    #               in the Auto Scaling group can be created. If you specify <code>VPCZoneIdentifier</code> with
    #                   <code>AvailabilityZones</code>, the subnets that you specify for this parameter must
    #               reside in those Availability Zones.</p>
    #           <p>Conditional: If your account supports EC2-Classic and VPC, this parameter is required
    #               to launch instances into a VPC.</p>
    #
    #   @return [String]
    #
    # @!attribute termination_policies
    #   <p>A policy or a list of policies that are used to select the instance to terminate.
    #               These policies are executed in the order that you list them. For more information, see
    #                   <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html">Controlling which Auto Scaling
    #                   instances terminate during scale in</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute new_instances_protected_from_scale_in
    #   <p>Indicates whether newly launched instances are protected from termination by Amazon EC2 Auto Scaling
    #               when scaling in. For more information about preventing instances from terminating on
    #               scale in, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-protection.html">Using
    #                   instance scale-in protection</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute capacity_rebalance
    #   <p>Indicates whether Capacity Rebalancing is enabled. Otherwise, Capacity Rebalancing is
    #               disabled. When you turn on Capacity Rebalancing, Amazon EC2 Auto Scaling attempts to launch a Spot
    #               Instance whenever Amazon EC2 notifies that a Spot Instance is at an elevated risk of
    #               interruption. After launching a new instance, it then terminates an old instance. For
    #               more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-capacity-rebalancing.html">Amazon EC2 Auto Scaling
    #                   Capacity Rebalancing</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute lifecycle_hook_specification_list
    #   <p>One or more lifecycle hooks for the group, which specify actions to perform when
    #               Amazon EC2 Auto Scaling launches or terminates instances.</p>
    #
    #   @return [Array<LifecycleHookSpecification>]
    #
    # @!attribute tags
    #   <p>One or more tags. You can tag your Auto Scaling group and propagate the tags to the Amazon EC2
    #               instances it launches. Tags are not propagated to Amazon EBS volumes. To add tags to Amazon EBS
    #               volumes, specify the tags in a launch template but use caution. If the launch template
    #               specifies an instance tag with a key that is also specified for the Auto Scaling group, Amazon EC2 Auto Scaling
    #               overrides the value of that instance tag with the value specified by the Auto Scaling group. For
    #               more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-tagging.html">Tagging Auto Scaling groups and
    #                   instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute service_linked_role_arn
    #   <p>The Amazon Resource Name (ARN) of the service-linked role that the Auto Scaling group uses to
    #               call other Amazon Web Services on your behalf. By default, Amazon EC2 Auto Scaling uses a service-linked role
    #               named <code>AWSServiceRoleForAutoScaling</code>, which it creates if it does not exist.
    #               For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-service-linked-role.html">Service-linked
    #                   roles</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_instance_lifetime
    #   <p>The maximum amount of time, in seconds, that an instance can be in service. The
    #               default is null. If specified, the value must be either 0 or a number equal to or
    #               greater than 86,400 seconds (1 day). For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-max-instance-lifetime.html">Replacing Auto Scaling instances based on maximum instance lifetime</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute context
    #   <p>Reserved.</p>
    #
    #   @return [String]
    #
    # @!attribute desired_capacity_type
    #   <p>The unit of measurement for the value specified for desired capacity. Amazon EC2 Auto Scaling
    #               supports <code>DesiredCapacityType</code> for attribute-based instance type selection
    #               only. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-instance-type-requirements.html">Creating
    #                   an Auto Scaling group using attribute-based instance type selection</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #           <p>By default, Amazon EC2 Auto Scaling specifies <code>units</code>, which translates into number of
    #               instances.</p>
    #
    #           <p>Valid values: <code>units</code> | <code>vcpu</code> | <code>memory-mib</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute default_instance_warmup
    #   <p>The amount of time, in seconds, until a newly launched instance can contribute to the
    #               Amazon CloudWatch metrics. This delay lets an instance finish initializing before Amazon EC2 Auto Scaling
    #               aggregates instance metrics, resulting in more reliable usage data. Set this value equal
    #               to the amount of time that it takes for resource consumption to become stable after an
    #               instance reaches the <code>InService</code> state. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-default-instance-warmup.html">Set
    #                   the default instance warmup for an Auto Scaling group</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #           <important>
    #               <p>To manage your warm-up settings at the group level, we recommend that you set the
    #                   default instance warmup, <i>even if its value is set to 0 seconds</i>.
    #                   This also optimizes the performance of scaling policies that scale continuously,
    #                   such as target tracking and step scaling policies. </p>
    #               <p>If you need to remove a value that you previously set, include the property but
    #                   specify <code>-1</code> for the value. However, we strongly recommend keeping the
    #                   default instance warmup enabled by specifying a minimum value of
    #                   <code>0</code>.</p>
    #           </important>
    #           <p>Default: None </p>
    #
    #   @return [Integer]
    #
    CreateAutoScalingGroupInput = ::Struct.new(
      :auto_scaling_group_name,
      :launch_configuration_name,
      :launch_template,
      :mixed_instances_policy,
      :instance_id,
      :min_size,
      :max_size,
      :desired_capacity,
      :default_cooldown,
      :availability_zones,
      :load_balancer_names,
      :target_group_ar_ns,
      :health_check_type,
      :health_check_grace_period,
      :placement_group,
      :vpc_zone_identifier,
      :termination_policies,
      :new_instances_protected_from_scale_in,
      :capacity_rebalance,
      :lifecycle_hook_specification_list,
      :tags,
      :service_linked_role_arn,
      :max_instance_lifetime,
      :context,
      :desired_capacity_type,
      :default_instance_warmup,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateAutoScalingGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute launch_configuration_name
    #   <p>The name of the launch configuration. This name must be unique per Region per
    #               account.</p>
    #
    #   @return [String]
    #
    # @!attribute image_id
    #   <p>The ID of the Amazon Machine Image (AMI) that was assigned during registration. For
    #               more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html">Finding an AMI</a> in the
    #                   <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
    #           <p>If you do not specify <code>InstanceId</code>, you must specify
    #               <code>ImageId</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute key_name
    #   <p>The name of the key pair. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html">Amazon EC2 Key Pairs</a> in the
    #                   <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute security_groups
    #   <p>A list that contains the security groups to assign to the instances in the Auto Scaling
    #               group.</p>
    #           <p>[EC2-VPC] Specify the security group IDs. For more information, see <a href="https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html">Security Groups for Your VPC</a> in the <i>Amazon Virtual Private Cloud
    #                   User Guide</i>.</p>
    #           <p>[EC2-Classic] Specify either the security group names or the security group IDs. For
    #               more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html">Amazon EC2 Security
    #                   Groups</a> in the <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute classic_link_vpc_id
    #   <p>
    #               <i>EC2-Classic retires on August 15, 2022. This parameter is not supported after
    #                   that date.</i>
    #           </p>
    #           <p>The ID of a ClassicLink-enabled VPC to link your EC2-Classic instances to. For more
    #               information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html">ClassicLink</a> in the
    #                   <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute classic_link_vpc_security_groups
    #   <p>
    #               <i>EC2-Classic retires on August 15, 2022. This parameter is not supported after
    #                   that date.</i>
    #           </p>
    #           <p>The IDs of one or more security groups for the specified ClassicLink-enabled VPC. For
    #               more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html">ClassicLink</a> in the
    #                   <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
    #           <p>If you specify the <code>ClassicLinkVPCId</code> parameter, you must specify this
    #               parameter.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute user_data
    #   <p>The user data to make available to the launched EC2 instances. For more information,
    #               see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html">Instance metadata and user data</a> (Linux) and <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-metadata.html">Instance metadata and
    #                   user data</a> (Windows). If you are using a command line tool, base64-encoding
    #               is performed for you, and you can load the text from a file. Otherwise, you must provide
    #               base64-encoded text. User data is limited to 16 KB.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The ID of the instance to use to create the launch configuration. The new launch
    #               configuration derives attributes from the instance, except for the block device
    #               mapping.</p>
    #           <p>To create a launch configuration with a block device mapping or override any other
    #               instance attributes, specify them as part of the same request.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-lc-with-instanceID.html">Creating a launch
    #                   configuration using an EC2 instance</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #           <p>If you do not specify <code>InstanceId</code>, you must specify both
    #                   <code>ImageId</code> and <code>InstanceType</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_type
    #   <p>Specifies the instance type of the EC2 instance.</p>
    #           <p>For information about available instance types, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html AvailableInstanceTypes">Available
    #                   Instance Types</a> in the <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
    #           <p>If you do not specify <code>InstanceId</code>, you must specify
    #                   <code>InstanceType</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute kernel_id
    #   <p>The ID of the kernel associated with the AMI.</p>
    #
    #   @return [String]
    #
    # @!attribute ramdisk_id
    #   <p>The ID of the RAM disk to select.</p>
    #
    #   @return [String]
    #
    # @!attribute block_device_mappings
    #   <p>A block device mapping, which specifies the block devices for the instance. You can
    #               specify virtual devices and EBS volumes. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html">Block Device
    #                   Mapping</a> in the <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
    #
    #   @return [Array<BlockDeviceMapping>]
    #
    # @!attribute instance_monitoring
    #   <p>Controls whether instances in this group are launched with detailed
    #               (<code>true</code>) or basic (<code>false</code>) monitoring.</p>
    #           <p>The default value is <code>true</code> (enabled).</p>
    #           <important>
    #               <p>When detailed monitoring is enabled, Amazon CloudWatch generates metrics every minute and
    #                   your account is charged a fee. When you disable detailed monitoring, CloudWatch generates
    #                   metrics every 5 minutes. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/latest/userguide/enable-as-instance-metrics.html">Configure
    #                       Monitoring for Auto Scaling Instances</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #           </important>
    #
    #   @return [InstanceMonitoring]
    #
    # @!attribute spot_price
    #   <p>The maximum hourly price to be paid for any Spot Instance launched to fulfill the
    #               request. Spot Instances are launched when the price you specify exceeds the current Spot
    #               price. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-launch-spot-instances.html">Requesting Spot
    #                   Instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #           <note>
    #               <p>When you change your maximum price by creating a new launch configuration, running
    #                   instances will continue to run as long as the maximum price for those running
    #                   instances is higher than the current Spot price.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute iam_instance_profile
    #   <p>The name or the Amazon Resource Name (ARN) of the instance profile associated with the
    #               IAM role for the instance. The instance profile contains the IAM role.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/us-iam-role.html">IAM role for applications that run
    #                   on Amazon EC2 instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute ebs_optimized
    #   <p>Specifies whether the launch configuration is optimized for EBS I/O
    #               (<code>true</code>) or not (<code>false</code>). The optimization provides dedicated
    #               throughput to Amazon EBS and an optimized configuration stack to provide optimal I/O
    #               performance. This optimization is not available with all instance types. Additional fees
    #               are incurred when you enable EBS optimization for an instance type that is not
    #               EBS-optimized by default. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html">Amazon EBS-optimized instances</a> in
    #               the <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
    #           <p>The default value is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute associate_public_ip_address
    #   <p>For Auto Scaling groups that are running in a virtual private cloud (VPC), specifies whether
    #               to assign a public IP address to the group's instances. If you specify
    #               <code>true</code>, each instance in the Auto Scaling group receives a unique public IP address.
    #               For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html">Launching Auto Scaling instances in a
    #                   VPC</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #           <p>If you specify this parameter, you must specify at least one subnet for
    #                   <code>VPCZoneIdentifier</code> when you create your group.</p>
    #           <note>
    #               <p>If the instance is launched into a default subnet, the default is to assign a
    #                   public IP address, unless you disabled the option to assign a public IP address on
    #                   the subnet. If the instance is launched into a nondefault subnet, the default is not
    #                   to assign a public IP address, unless you enabled the option to assign a public IP
    #                   address on the subnet.</p>
    #           </note>
    #
    #   @return [Boolean]
    #
    # @!attribute placement_tenancy
    #   <p>The tenancy of the instance. An instance with <code>dedicated</code> tenancy runs on
    #               isolated, single-tenant hardware and can only be launched into a VPC.</p>
    #           <p>To launch dedicated instances into a shared tenancy VPC (a VPC with the instance
    #               placement tenancy attribute set to <code>default</code>), you must set the value of this
    #               parameter to <code>dedicated</code>.</p>
    #           <p>If you specify <code>PlacementTenancy</code>, you must specify at least one subnet for
    #                   <code>VPCZoneIdentifier</code> when you create your group.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/auto-scaling-dedicated-instances.html">Configuring
    #                   instance tenancy with Amazon EC2 Auto Scaling</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #           <p>Valid Values: <code>default</code> | <code>dedicated</code>
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute metadata_options
    #   <p>The metadata options for the instances. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-config.html launch-configurations-imds">Configuring the Instance Metadata Options</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    #   @return [InstanceMetadataOptions]
    #
    CreateLaunchConfigurationInput = ::Struct.new(
      :launch_configuration_name,
      :image_id,
      :key_name,
      :security_groups,
      :classic_link_vpc_id,
      :classic_link_vpc_security_groups,
      :user_data,
      :instance_id,
      :instance_type,
      :kernel_id,
      :ramdisk_id,
      :block_device_mappings,
      :instance_monitoring,
      :spot_price,
      :iam_instance_profile,
      :ebs_optimized,
      :associate_public_ip_address,
      :placement_tenancy,
      :metadata_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateLaunchConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>One or more tags.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateOrUpdateTagsInput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateOrUpdateTagsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a CloudWatch metric of your choosing for a target tracking scaling policy to use
    #             with Amazon EC2 Auto Scaling.</p>
    #         <p>To create your customized metric specification:</p>
    #         <ul>
    #             <li>
    #                 <p>Add values for each required parameter from CloudWatch. You can use an existing
    #                     metric, or a new metric that you create. To use your own metric, you must first
    #                     publish the metric to CloudWatch. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html">Publish
    #                         custom metrics</a> in the <i>Amazon CloudWatch User
    #                     Guide</i>.</p>
    #             </li>
    #             <li>
    #                 <p>Choose a metric that changes proportionally with capacity. The value of the
    #                     metric should increase or decrease in inverse proportion to the number of
    #                     capacity units. That is, the value of the metric should decrease when capacity
    #                     increases.</p>
    #             </li>
    #          </ul>
    #         <p>For more information about the CloudWatch terminology below, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html">Amazon CloudWatch
    #                 concepts</a>.</p>
    #         <note>
    #             <p>Each individual service provides information about the metrics, namespace, and
    #                 dimensions they use. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/aws-services-cloudwatch-metrics.html">Amazon Web Services services that publish CloudWatch metrics</a> in the <i>Amazon CloudWatch User
    #                     Guide</i>.</p>
    #         </note>
    #
    # @!attribute metric_name
    #   <p>The name of the metric. To get the exact metric name, namespace, and dimensions,
    #               inspect the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_Metric.html">Metric</a> object
    #               that is returned by a call to <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_ListMetrics.html">ListMetrics</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The namespace of the metric.</p>
    #
    #   @return [String]
    #
    # @!attribute dimensions
    #   <p>The dimensions of the metric.</p>
    #           <p>Conditional: If you published your metric with dimensions, you must specify the same
    #               dimensions in your scaling policy.</p>
    #
    #   @return [Array<MetricDimension>]
    #
    # @!attribute statistic
    #   <p>The statistic of the metric.</p>
    #
    #   Enum, one of: ["Average", "Minimum", "Maximum", "SampleCount", "Sum"]
    #
    #   @return [String]
    #
    # @!attribute unit
    #   <p>The unit of the metric. For a complete list of the units that CloudWatch supports, see the
    #                   <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDatum.html">MetricDatum</a>
    #               data type in the <i>Amazon CloudWatch API Reference</i>.</p>
    #
    #   @return [String]
    #
    CustomizedMetricSpecification = ::Struct.new(
      :metric_name,
      :namespace,
      :dimensions,
      :statistic,
      :unit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute force_delete
    #   <p>Specifies that the group is to be deleted along with all instances associated with the
    #               group, without waiting for all instances to be terminated. This parameter also deletes
    #               any outstanding lifecycle actions associated with the group.</p>
    #
    #   @return [Boolean]
    #
    DeleteAutoScalingGroupInput = ::Struct.new(
      :auto_scaling_group_name,
      :force_delete,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAutoScalingGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute launch_configuration_name
    #   <p>The name of the launch configuration.</p>
    #
    #   @return [String]
    #
    DeleteLaunchConfigurationInput = ::Struct.new(
      :launch_configuration_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteLaunchConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute lifecycle_hook_name
    #   <p>The name of the lifecycle hook.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    DeleteLifecycleHookInput = ::Struct.new(
      :lifecycle_hook_name,
      :auto_scaling_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteLifecycleHookOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic.</p>
    #
    #   @return [String]
    #
    DeleteNotificationConfigurationInput = ::Struct.new(
      :auto_scaling_group_name,
      :topic_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteNotificationConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_name
    #   <p>The name or Amazon Resource Name (ARN) of the policy.</p>
    #
    #   @return [String]
    #
    DeletePolicyInput = ::Struct.new(
      :auto_scaling_group_name,
      :policy_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeletePolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute scheduled_action_name
    #   <p>The name of the action to delete.</p>
    #
    #   @return [String]
    #
    DeleteScheduledActionInput = ::Struct.new(
      :auto_scaling_group_name,
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

    # @!attribute tags
    #   <p>One or more tags.</p>
    #
    #   @return [Array<Tag>]
    #
    DeleteTagsInput = ::Struct.new(
      :tags,
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

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute force_delete
    #   <p>Specifies that the warm pool is to be deleted along with all of its associated
    #               instances, without waiting for all instances to be terminated. This parameter also
    #               deletes any outstanding lifecycle actions associated with the warm pool
    #               instances.</p>
    #
    #   @return [Boolean]
    #
    DeleteWarmPoolInput = ::Struct.new(
      :auto_scaling_group_name,
      :force_delete,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteWarmPoolOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DescribeAccountLimitsInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_number_of_auto_scaling_groups
    #   <p>The maximum number of groups allowed for your account. The default is 200 groups per
    #               Region.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_number_of_launch_configurations
    #   <p>The maximum number of launch configurations allowed for your account. The default is
    #               200 launch configurations per Region.</p>
    #
    #   @return [Integer]
    #
    # @!attribute number_of_auto_scaling_groups
    #   <p>The current number of groups for your account.</p>
    #
    #   @return [Integer]
    #
    # @!attribute number_of_launch_configurations
    #   <p>The current number of launch configurations for your account.</p>
    #
    #   @return [Integer]
    #
    DescribeAccountLimitsOutput = ::Struct.new(
      :max_number_of_auto_scaling_groups,
      :max_number_of_launch_configurations,
      :number_of_auto_scaling_groups,
      :number_of_launch_configurations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DescribeAdjustmentTypesInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute adjustment_types
    #   <p>The policy adjustment types.</p>
    #
    #   @return [Array<AdjustmentType>]
    #
    DescribeAdjustmentTypesOutput = ::Struct.new(
      :adjustment_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_scaling_group_names
    #   <p>The names of the Auto Scaling groups. By default, you can only specify up to 50 names. You can
    #               optionally increase this limit using the <code>MaxRecords</code> parameter.</p>
    #           <p>If you omit this parameter, all Auto Scaling groups are described.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>50</code> and the maximum value is <code>100</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute filters
    #   <p>One or more filters to limit the results based on specific tags.
    #               </p>
    #
    #   @return [Array<Filter>]
    #
    DescribeAutoScalingGroupsInput = ::Struct.new(
      :auto_scaling_group_names,
      :next_token,
      :max_records,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_scaling_groups
    #   <p>The groups.</p>
    #
    #   @return [Array<AutoScalingGroup>]
    #
    # @!attribute next_token
    #   <p>A string that indicates that the response contains more items than can be returned in
    #               a single response. To receive additional items, specify this string for the
    #                   <code>NextToken</code> value when requesting the next set of items. This value is
    #               null when there are no more items to return.</p>
    #
    #   @return [String]
    #
    DescribeAutoScalingGroupsOutput = ::Struct.new(
      :auto_scaling_groups,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_ids
    #   <p>The IDs of the instances. If you omit this parameter, all Auto Scaling instances are
    #               described. If you specify an ID that does not exist, it is ignored with no error.</p>
    #           <p>Array Members: Maximum number of 50 items.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>50</code> and the maximum value is <code>50</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    #
    #   @return [String]
    #
    DescribeAutoScalingInstancesInput = ::Struct.new(
      :instance_ids,
      :max_records,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_scaling_instances
    #   <p>The instances.</p>
    #
    #   @return [Array<AutoScalingInstanceDetails>]
    #
    # @!attribute next_token
    #   <p>A string that indicates that the response contains more items than can be returned in
    #               a single response. To receive additional items, specify this string for the
    #                   <code>NextToken</code> value when requesting the next set of items. This value is
    #               null when there are no more items to return.</p>
    #
    #   @return [String]
    #
    DescribeAutoScalingInstancesOutput = ::Struct.new(
      :auto_scaling_instances,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DescribeAutoScalingNotificationTypesInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_scaling_notification_types
    #   <p>The notification types.</p>
    #
    #   @return [Array<String>]
    #
    DescribeAutoScalingNotificationTypesOutput = ::Struct.new(
      :auto_scaling_notification_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_refresh_ids
    #   <p>One or more instance refresh IDs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>50</code> and the maximum value is <code>100</code>.</p>
    #
    #   @return [Integer]
    #
    DescribeInstanceRefreshesInput = ::Struct.new(
      :auto_scaling_group_name,
      :instance_refresh_ids,
      :next_token,
      :max_records,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_refreshes
    #   <p>The instance refreshes for the specified group.</p>
    #
    #   @return [Array<InstanceRefresh>]
    #
    # @!attribute next_token
    #   <p>A string that indicates that the response contains more items than can be returned in
    #               a single response. To receive additional items, specify this string for the
    #                   <code>NextToken</code> value when requesting the next set of items. This value is
    #               null when there are no more items to return.</p>
    #
    #   @return [String]
    #
    DescribeInstanceRefreshesOutput = ::Struct.new(
      :instance_refreshes,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute launch_configuration_names
    #   <p>The launch configuration names. If you omit this parameter, all launch configurations
    #               are described.</p>
    #           <p>Array Members: Maximum number of 50 items.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>50</code> and the maximum value is <code>100</code>.</p>
    #
    #   @return [Integer]
    #
    DescribeLaunchConfigurationsInput = ::Struct.new(
      :launch_configuration_names,
      :next_token,
      :max_records,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute launch_configurations
    #   <p>The launch configurations.</p>
    #
    #   @return [Array<LaunchConfiguration>]
    #
    # @!attribute next_token
    #   <p>A string that indicates that the response contains more items than can be returned in
    #               a single response. To receive additional items, specify this string for the
    #                   <code>NextToken</code> value when requesting the next set of items. This value is
    #               null when there are no more items to return.</p>
    #
    #   @return [String]
    #
    DescribeLaunchConfigurationsOutput = ::Struct.new(
      :launch_configurations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DescribeLifecycleHookTypesInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute lifecycle_hook_types
    #   <p>The lifecycle hook types.</p>
    #
    #   @return [Array<String>]
    #
    DescribeLifecycleHookTypesOutput = ::Struct.new(
      :lifecycle_hook_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute lifecycle_hook_names
    #   <p>The names of one or more lifecycle hooks. If you omit this parameter, all lifecycle
    #               hooks are described.</p>
    #
    #   @return [Array<String>]
    #
    DescribeLifecycleHooksInput = ::Struct.new(
      :auto_scaling_group_name,
      :lifecycle_hook_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute lifecycle_hooks
    #   <p>The lifecycle hooks for the specified group.</p>
    #
    #   @return [Array<LifecycleHook>]
    #
    DescribeLifecycleHooksOutput = ::Struct.new(
      :lifecycle_hooks,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>100</code> and the maximum value is <code>100</code>.</p>
    #
    #   @return [Integer]
    #
    DescribeLoadBalancerTargetGroupsInput = ::Struct.new(
      :auto_scaling_group_name,
      :next_token,
      :max_records,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute load_balancer_target_groups
    #   <p>Information about the target groups.</p>
    #
    #   @return [Array<LoadBalancerTargetGroupState>]
    #
    # @!attribute next_token
    #   <p>A string that indicates that the response contains more items than can be returned in
    #               a single response. To receive additional items, specify this string for the
    #                   <code>NextToken</code> value when requesting the next set of items. This value is
    #               null when there are no more items to return.</p>
    #
    #   @return [String]
    #
    DescribeLoadBalancerTargetGroupsOutput = ::Struct.new(
      :load_balancer_target_groups,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>100</code> and the maximum value is <code>100</code>.</p>
    #
    #   @return [Integer]
    #
    DescribeLoadBalancersInput = ::Struct.new(
      :auto_scaling_group_name,
      :next_token,
      :max_records,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute load_balancers
    #   <p>The load balancers.</p>
    #
    #   @return [Array<LoadBalancerState>]
    #
    # @!attribute next_token
    #   <p>A string that indicates that the response contains more items than can be returned in
    #               a single response. To receive additional items, specify this string for the
    #                   <code>NextToken</code> value when requesting the next set of items. This value is
    #               null when there are no more items to return.</p>
    #
    #   @return [String]
    #
    DescribeLoadBalancersOutput = ::Struct.new(
      :load_balancers,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DescribeMetricCollectionTypesInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute metrics
    #   <p>One or more metrics.</p>
    #
    #   @return [Array<MetricCollectionType>]
    #
    # @!attribute granularities
    #   <p>The granularities for the metrics.</p>
    #
    #   @return [Array<MetricGranularityType>]
    #
    DescribeMetricCollectionTypesOutput = ::Struct.new(
      :metrics,
      :granularities,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_scaling_group_names
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>50</code> and the maximum value is <code>100</code>.</p>
    #
    #   @return [Integer]
    #
    DescribeNotificationConfigurationsInput = ::Struct.new(
      :auto_scaling_group_names,
      :next_token,
      :max_records,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute notification_configurations
    #   <p>The notification configurations.</p>
    #
    #   @return [Array<NotificationConfiguration>]
    #
    # @!attribute next_token
    #   <p>A string that indicates that the response contains more items than can be returned in
    #               a single response. To receive additional items, specify this string for the
    #                   <code>NextToken</code> value when requesting the next set of items. This value is
    #               null when there are no more items to return.</p>
    #
    #   @return [String]
    #
    DescribeNotificationConfigurationsOutput = ::Struct.new(
      :notification_configurations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_names
    #   <p>The names of one or more policies. If you omit this parameter, all policies are
    #               described. If a group name is provided, the results are limited to that group. If you
    #               specify an unknown policy name, it is ignored with no error.</p>
    #           <p>Array Members: Maximum number of 50 items.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute policy_types
    #   <p>One or more policy types. The valid values are <code>SimpleScaling</code>,
    #                   <code>StepScaling</code>, <code>TargetTrackingScaling</code>, and
    #                   <code>PredictiveScaling</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of items to be returned with each call. The default value is
    #                   <code>50</code> and the maximum value is <code>100</code>.</p>
    #
    #   @return [Integer]
    #
    DescribePoliciesInput = ::Struct.new(
      :auto_scaling_group_name,
      :policy_names,
      :policy_types,
      :next_token,
      :max_records,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scaling_policies
    #   <p>The scaling policies.</p>
    #
    #   @return [Array<ScalingPolicy>]
    #
    # @!attribute next_token
    #   <p>A string that indicates that the response contains more items than can be returned in
    #               a single response. To receive additional items, specify this string for the
    #                   <code>NextToken</code> value when requesting the next set of items. This value is
    #               null when there are no more items to return.</p>
    #
    #   @return [String]
    #
    DescribePoliciesOutput = ::Struct.new(
      :scaling_policies,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute activity_ids
    #   <p>The activity IDs of the desired scaling activities. If you omit this parameter, all
    #               activities for the past six weeks are described. If unknown activities are requested,
    #               they are ignored with no error. If you specify an Auto Scaling group, the results are limited to
    #               that group.</p>
    #           <p>Array Members: Maximum number of 50 IDs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute include_deleted_groups
    #   <p>Indicates whether to include scaling activity from deleted Auto Scaling groups.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>100</code> and the maximum value is <code>100</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    #
    #   @return [String]
    #
    DescribeScalingActivitiesInput = ::Struct.new(
      :activity_ids,
      :auto_scaling_group_name,
      :include_deleted_groups,
      :max_records,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute activities
    #   <p>The scaling activities. Activities are sorted by start time. Activities still in
    #               progress are described first.</p>
    #
    #   @return [Array<Activity>]
    #
    # @!attribute next_token
    #   <p>A string that indicates that the response contains more items than can be returned in
    #               a single response. To receive additional items, specify this string for the
    #                   <code>NextToken</code> value when requesting the next set of items. This value is
    #               null when there are no more items to return.</p>
    #
    #   @return [String]
    #
    DescribeScalingActivitiesOutput = ::Struct.new(
      :activities,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DescribeScalingProcessTypesInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute processes
    #   <p>The names of the process types.</p>
    #
    #   @return [Array<ProcessType>]
    #
    DescribeScalingProcessTypesOutput = ::Struct.new(
      :processes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute scheduled_action_names
    #   <p>The names of one or more scheduled actions. If you omit this parameter, all scheduled
    #               actions are described. If you specify an unknown scheduled action, it is ignored with no
    #               error.</p>
    #           <p>Array Members: Maximum number of 50 actions.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute start_time
    #   <p>The earliest scheduled start time to return. If scheduled action names are provided,
    #               this parameter is ignored.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The latest scheduled start time to return. If scheduled action names are provided,
    #               this parameter is ignored.</p>
    #
    #   @return [Time]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>50</code> and the maximum value is <code>100</code>.</p>
    #
    #   @return [Integer]
    #
    DescribeScheduledActionsInput = ::Struct.new(
      :auto_scaling_group_name,
      :scheduled_action_names,
      :start_time,
      :end_time,
      :next_token,
      :max_records,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scheduled_update_group_actions
    #   <p>The scheduled actions.</p>
    #
    #   @return [Array<ScheduledUpdateGroupAction>]
    #
    # @!attribute next_token
    #   <p>A string that indicates that the response contains more items than can be returned in
    #               a single response. To receive additional items, specify this string for the
    #                   <code>NextToken</code> value when requesting the next set of items. This value is
    #               null when there are no more items to return.</p>
    #
    #   @return [String]
    #
    DescribeScheduledActionsOutput = ::Struct.new(
      :scheduled_update_group_actions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p>One or more filters to scope the tags to return. The maximum number of filters per
    #               filter type (for example, <code>auto-scaling-group</code>) is 1000.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>50</code> and the maximum value is <code>100</code>.</p>
    #
    #   @return [Integer]
    #
    DescribeTagsInput = ::Struct.new(
      :filters,
      :next_token,
      :max_records,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>One or more tags.</p>
    #
    #   @return [Array<TagDescription>]
    #
    # @!attribute next_token
    #   <p>A string that indicates that the response contains more items than can be returned in
    #               a single response. To receive additional items, specify this string for the
    #                   <code>NextToken</code> value when requesting the next set of items. This value is
    #               null when there are no more items to return.</p>
    #
    #   @return [String]
    #
    DescribeTagsOutput = ::Struct.new(
      :tags,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DescribeTerminationPolicyTypesInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute termination_policy_types
    #   <p>The termination policies supported by Amazon EC2 Auto Scaling: <code>OldestInstance</code>,
    #                   <code>OldestLaunchConfiguration</code>, <code>NewestInstance</code>,
    #                   <code>ClosestToNextInstanceHour</code>, <code>Default</code>,
    #                   <code>OldestLaunchTemplate</code>, and <code>AllocationStrategy</code>.</p>
    #
    #   @return [Array<String>]
    #
    DescribeTerminationPolicyTypesOutput = ::Struct.new(
      :termination_policy_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute max_records
    #   <p>The maximum number of instances to return with this call. The maximum value is
    #                   <code>50</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of instances to return. (You received this token from a
    #               previous call.)</p>
    #
    #   @return [String]
    #
    DescribeWarmPoolInput = ::Struct.new(
      :auto_scaling_group_name,
      :max_records,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute warm_pool_configuration
    #   <p>The warm pool configuration details. </p>
    #
    #   @return [WarmPoolConfiguration]
    #
    # @!attribute instances
    #   <p>The instances that are currently in the warm pool.</p>
    #
    #   @return [Array<Instance>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    #
    #   @return [String]
    #
    DescribeWarmPoolOutput = ::Struct.new(
      :warm_pool_configuration,
      :instances,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the desired configuration for an instance refresh. </p>
    #         <p>If you specify a desired configuration, you must specify either a
    #                 <code>LaunchTemplate</code> or a <code>MixedInstancesPolicy</code>. </p>
    #
    # @!attribute launch_template
    #   <p>Describes the launch template and the version of the launch template that Amazon EC2 Auto Scaling
    #               uses to launch Amazon EC2 instances. For more information about launch templates, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/LaunchTemplates.html">Launch
    #                   templates</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    #   @return [LaunchTemplateSpecification]
    #
    # @!attribute mixed_instances_policy
    #   <p>Describes a mixed instances policy. A mixed instances policy contains the instance
    #               types that Amazon EC2 Auto Scaling can launch and other information that Amazon EC2 Auto Scaling can use to launch
    #               instances and help optimize your costs. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups.html">Auto Scaling
    #                   groups with multiple instance types and purchase options</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    #   @return [MixedInstancesPolicy]
    #
    DesiredConfiguration = ::Struct.new(
      :launch_template,
      :mixed_instances_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_ids
    #   <p>The IDs of the instances. You can specify up to 20 instances.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute should_decrement_desired_capacity
    #   <p>Indicates whether the Auto Scaling group decrements the desired capacity value by the number
    #               of instances detached.</p>
    #
    #   @return [Boolean]
    #
    DetachInstancesInput = ::Struct.new(
      :instance_ids,
      :auto_scaling_group_name,
      :should_decrement_desired_capacity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute activities
    #   <p>The activities related to detaching the instances from the Auto Scaling group.</p>
    #
    #   @return [Array<Activity>]
    #
    DetachInstancesOutput = ::Struct.new(
      :activities,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute target_group_ar_ns
    #   <p>The Amazon Resource Names (ARN) of the target groups. You can specify up to 10 target
    #               groups.</p>
    #
    #   @return [Array<String>]
    #
    DetachLoadBalancerTargetGroupsInput = ::Struct.new(
      :auto_scaling_group_name,
      :target_group_ar_ns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DetachLoadBalancerTargetGroupsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute load_balancer_names
    #   <p>The names of the load balancers. You can specify up to 10 load balancers.</p>
    #
    #   @return [Array<String>]
    #
    DetachLoadBalancersInput = ::Struct.new(
      :auto_scaling_group_name,
      :load_balancer_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DetachLoadBalancersOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute metrics
    #   <p>Specifies one or more of the following metrics:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>GroupMinSize</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupMaxSize</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupDesiredCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupInServiceInstances</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupPendingInstances</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupStandbyInstances</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupTerminatingInstances</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupTotalInstances</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupInServiceCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupPendingCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupStandbyCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupTerminatingCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupTotalCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>WarmPoolDesiredCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>WarmPoolWarmedCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>WarmPoolPendingCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>WarmPoolTerminatingCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>WarmPoolTotalCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupAndWarmPoolDesiredCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupAndWarmPoolTotalCapacity</code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <p>If you omit this parameter, all metrics are disabled. </p>
    #
    #   @return [Array<String>]
    #
    DisableMetricsCollectionInput = ::Struct.new(
      :auto_scaling_group_name,
      :metrics,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisableMetricsCollectionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes information used to set up an Amazon EBS volume specified in a block device
    #             mapping.</p>
    #
    # @!attribute snapshot_id
    #   <p>The snapshot ID of the volume to use.</p>
    #           <p>You must specify either a <code>VolumeSize</code> or a <code>SnapshotId</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute volume_size
    #   <p>The volume size, in GiBs. The following are the supported volumes sizes for each
    #               volume type: </p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>gp2</code> and <code>gp3</code>: 1-16,384</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>io1</code>: 4-16,384</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>st1</code> and <code>sc1</code>: 125-16,384</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>standard</code>: 1-1,024</p>
    #               </li>
    #            </ul>
    #           <p>You must specify either a <code>SnapshotId</code> or a <code>VolumeSize</code>. If you
    #               specify both <code>SnapshotId</code> and <code>VolumeSize</code>, the volume size must
    #               be equal or greater than the size of the snapshot.</p>
    #
    #   @return [Integer]
    #
    # @!attribute volume_type
    #   <p>The volume type. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html">Amazon EBS volume types</a> in the
    #                   <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
    #           <p>Valid Values: <code>standard</code> | <code>io1</code> | <code>gp2</code> |
    #                   <code>st1</code> | <code>sc1</code> | <code>gp3</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute delete_on_termination
    #   <p>Indicates whether the volume is deleted on instance termination. For Amazon EC2 Auto Scaling, the
    #               default value is <code>true</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute iops
    #   <p>The number of input/output (I/O) operations per second (IOPS) to provision for the
    #               volume. For <code>gp3</code> and <code>io1</code> volumes, this represents the number of
    #               IOPS that are provisioned for the volume. For <code>gp2</code> volumes, this represents
    #               the baseline performance of the volume and the rate at which the volume accumulates I/O
    #               credits for bursting. </p>
    #           <p>The following are the supported values for each volume type: </p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>gp3</code>: 3,000-16,000 IOPS</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>io1</code>: 100-64,000 IOPS</p>
    #               </li>
    #            </ul>
    #
    #           <p>For <code>io1</code> volumes, we guarantee 64,000 IOPS only for <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html ec2-nitro-instances">Instances
    #                   built on the Nitro System</a>. Other instance families guarantee performance up
    #               to 32,000 IOPS. </p>
    #           <p>
    #               <code>Iops</code> is supported when the volume type is <code>gp3</code> or
    #                   <code>io1</code> and required only when the volume type is <code>io1</code>. (Not
    #               used with <code>standard</code>, <code>gp2</code>, <code>st1</code>, or <code>sc1</code>
    #               volumes.) </p>
    #
    #   @return [Integer]
    #
    # @!attribute encrypted
    #   <p>Specifies whether the volume should be encrypted. Encrypted EBS volumes can only be
    #               attached to instances that support Amazon EBS encryption. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html EBSEncryption_supported_instances">Supported instance types</a>. If your AMI uses encrypted volumes, you can also
    #               only launch it on supported instance types.</p>
    #           <note>
    #               <p>If you are creating a volume from a snapshot, you cannot create an unencrypted
    #                   volume from an encrypted snapshot. Also, you cannot specify a KMS key ID when using
    #                   a launch configuration.</p>
    #               <p>If you enable encryption by default, the EBS volumes that you create are always
    #                   encrypted, either using the Amazon Web Services managed KMS key or a customer-managed KMS key,
    #                   regardless of whether the snapshot was encrypted. </p>
    #               <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-data-protection.html encryption">Using Amazon Web Services KMS keys to encrypt Amazon EBS volumes</a> in the
    #                       <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #           </note>
    #
    #   @return [Boolean]
    #
    # @!attribute throughput
    #   <p>The throughput (MiBps) to provision for a <code>gp3</code> volume.</p>
    #
    #   @return [Integer]
    #
    Ebs = ::Struct.new(
      :snapshot_id,
      :volume_size,
      :volume_type,
      :delete_on_termination,
      :iops,
      :encrypted,
      :throughput,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute metrics
    #   <p>Specifies which group-level metrics to start collecting. You can specify one or more
    #               of the following metrics:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>GroupMinSize</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupMaxSize</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupDesiredCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupInServiceInstances</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupPendingInstances</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupStandbyInstances</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupTerminatingInstances</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupTotalInstances</code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <p>The instance weighting feature supports the following additional metrics: </p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>GroupInServiceCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupPendingCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupStandbyCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupTerminatingCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupTotalCapacity</code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <p>The warm pools feature supports the following additional metrics: </p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>WarmPoolDesiredCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>WarmPoolWarmedCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>WarmPoolPendingCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>WarmPoolTerminatingCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>WarmPoolTotalCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupAndWarmPoolDesiredCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupAndWarmPoolTotalCapacity</code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <p>If you omit this parameter, all metrics are enabled. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute granularity
    #   <p>The granularity to associate with the metrics to collect. The only valid value is
    #                   <code>1Minute</code>.</p>
    #
    #   @return [String]
    #
    EnableMetricsCollectionInput = ::Struct.new(
      :auto_scaling_group_name,
      :metrics,
      :granularity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    EnableMetricsCollectionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an enabled metric.</p>
    #
    # @!attribute metric
    #   <p>One of the following metrics:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>GroupMinSize</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupMaxSize</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupDesiredCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupInServiceInstances</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupPendingInstances</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupStandbyInstances</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupTerminatingInstances</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupTotalInstances</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupInServiceCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupPendingCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupStandbyCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupTerminatingCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupTotalCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>WarmPoolDesiredCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>WarmPoolWarmedCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>WarmPoolPendingCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>WarmPoolTerminatingCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>WarmPoolTotalCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupAndWarmPoolDesiredCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupAndWarmPoolTotalCapacity</code>
    #                   </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute granularity
    #   <p>The granularity of the metric. The only valid value is <code>1Minute</code>.</p>
    #
    #   @return [String]
    #
    EnabledMetric = ::Struct.new(
      :metric,
      :granularity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_ids
    #   <p>The IDs of the instances. You can specify up to 20 instances.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute should_decrement_desired_capacity
    #   <p>Indicates whether to decrement the desired capacity of the Auto Scaling group by the number of
    #               instances moved to <code>Standby</code> mode.</p>
    #
    #   @return [Boolean]
    #
    EnterStandbyInput = ::Struct.new(
      :instance_ids,
      :auto_scaling_group_name,
      :should_decrement_desired_capacity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute activities
    #   <p>The activities related to moving instances into <code>Standby</code> mode.</p>
    #
    #   @return [Array<Activity>]
    #
    EnterStandbyOutput = ::Struct.new(
      :activities,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_name
    #   <p>The name or ARN of the policy.</p>
    #
    #   @return [String]
    #
    # @!attribute honor_cooldown
    #   <p>Indicates whether Amazon EC2 Auto Scaling waits for the cooldown period to complete before executing
    #               the policy.</p>
    #           <p>Valid only if the policy type is <code>SimpleScaling</code>. For more information, see
    #                   <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html">Scaling
    #                   cooldowns for Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute metric_value
    #   <p>The metric value to compare to <code>BreachThreshold</code>. This enables you to
    #               execute a policy of type <code>StepScaling</code> and determine which step adjustment to
    #               use. For example, if the breach threshold is 50 and you want to use a step adjustment
    #               with a lower bound of 0 and an upper bound of 10, you can set the metric value to
    #               59.</p>
    #           <p>If you specify a metric value that doesn't correspond to a step adjustment for the
    #               policy, the call returns an error.</p>
    #           <p>Required if the policy type is <code>StepScaling</code> and not supported
    #               otherwise.</p>
    #
    #   @return [Float]
    #
    # @!attribute breach_threshold
    #   <p>The breach threshold for the alarm.</p>
    #           <p>Required if the policy type is <code>StepScaling</code> and not supported
    #               otherwise.</p>
    #
    #   @return [Float]
    #
    ExecutePolicyInput = ::Struct.new(
      :auto_scaling_group_name,
      :policy_name,
      :honor_cooldown,
      :metric_value,
      :breach_threshold,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ExecutePolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_ids
    #   <p>The IDs of the instances. You can specify up to 20 instances.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    ExitStandbyInput = ::Struct.new(
      :instance_ids,
      :auto_scaling_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute activities
    #   <p>The activities related to moving instances out of <code>Standby</code> mode.</p>
    #
    #   @return [Array<Activity>]
    #
    ExitStandbyOutput = ::Struct.new(
      :activities,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a scheduled action that could not be created, updated, or deleted.</p>
    #
    # @!attribute scheduled_action_name
    #   <p>The name of the scheduled action.</p>
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>The error code.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The error message accompanying the error code.</p>
    #
    #   @return [String]
    #
    FailedScheduledUpdateGroupActionRequest = ::Struct.new(
      :scheduled_action_name,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a filter that is used to return a more specific list of results from a
    #             describe operation.</p>
    #         <p>If you specify multiple filters, the filters are automatically logically joined with
    #             an <code>AND</code>, and the request returns only the results that match all of the
    #             specified filters. </p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-tagging.html">Tagging Auto Scaling groups and
    #                 instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @!attribute name
    #   <p>The name of the filter.</p>
    #           <p>The valid values for <code>Name</code> depend on which API operation you're using with
    #               the filter (<a>DescribeAutoScalingGroups</a> or <a>DescribeTags</a>).</p>
    #           <p>
    #               <b>DescribeAutoScalingGroups</b>
    #           </p>
    #           <p>Valid values for <code>Name</code> include the following: </p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>tag-key</code> - Accepts tag keys. The results only include information
    #                       about the Auto Scaling groups associated with these tag keys. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>tag-value</code> - Accepts tag values. The results only include
    #                       information about the Auto Scaling groups associated with these tag values. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>tag:<key></code> - Accepts the key/value combination of the tag.
    #                       Use the tag key in the filter name and the tag value as the filter value. The
    #                       results only include information about the Auto Scaling groups associated with the
    #                       specified key/value combination. </p>
    #               </li>
    #            </ul>
    #           <p>
    #               <b>DescribeTags</b>
    #           </p>
    #           <p>Valid values for <code>Name</code> include the following: </p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>auto-scaling-group</code> - Accepts the names of Auto Scaling groups. The
    #                       results only include information about the tags associated with these Auto Scaling
    #                       groups. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>key</code> - Accepts tag keys. The results only include information
    #                       about the tags associated with these tag keys. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>value</code> - Accepts tag values. The results only include information
    #                       about the tags associated with these tag values. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>propagate-at-launch</code> - Accepts a Boolean value, which specifies
    #                       whether tags propagate to instances at launch. The results only include
    #                       information about the tags associated with the specified Boolean value. </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>One or more filter values. Filter values are case-sensitive. </p>
    #           <p>If you specify multiple values for a filter, the values are automatically logically
    #               joined with an <code>OR</code>, and the request returns all results that match any of
    #               the specified values. For example, specify "tag:environment" for the filter name and
    #               "production,development" for the filter values to find Auto Scaling groups with the tag
    #               "environment=production" or "environment=development".</p>
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

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_name
    #   <p>The name of the policy.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The inclusive start time of the time range for the forecast data to get. At most, the
    #               date and time can be one year before the current date and time.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The exclusive end time of the time range for the forecast data to get. The maximum
    #               time duration between the start and end time is 30 days. </p>
    #           <p>Although this parameter can accept a date and time that is more than two days in the
    #               future, the availability of forecast data has limits. Amazon EC2 Auto Scaling only issues forecasts for
    #               periods of two days in advance.</p>
    #
    #   @return [Time]
    #
    GetPredictiveScalingForecastInput = ::Struct.new(
      :auto_scaling_group_name,
      :policy_name,
      :start_time,
      :end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute load_forecast
    #   <p>The load forecast.</p>
    #
    #   @return [Array<LoadForecast>]
    #
    # @!attribute capacity_forecast
    #   <p>The capacity forecast.</p>
    #
    #   @return [CapacityForecast]
    #
    # @!attribute update_time
    #   <p>The time the forecast was made.</p>
    #
    #   @return [Time]
    #
    GetPredictiveScalingForecastOutput = ::Struct.new(
      :load_forecast,
      :capacity_forecast,
      :update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an EC2 instance.</p>
    #
    # @!attribute instance_id
    #   <p>The ID of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_type
    #   <p>The instance type of the EC2 instance.</p>
    #
    #   @return [String]
    #
    # @!attribute availability_zone
    #   <p>The Availability Zone in which the instance is running.</p>
    #
    #   @return [String]
    #
    # @!attribute lifecycle_state
    #   <p>A description of the current lifecycle state. The <code>Quarantined</code> state is
    #               not used. For information about lifecycle states, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/AutoScalingGroupLifecycle.html">Instance
    #                   lifecycle</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>. </p>
    #
    #   Enum, one of: ["Pending", "Pending:Wait", "Pending:Proceed", "Quarantined", "InService", "Terminating", "Terminating:Wait", "Terminating:Proceed", "Terminated", "Detaching", "Detached", "EnteringStandby", "Standby", "Warmed:Pending", "Warmed:Pending:Wait", "Warmed:Pending:Proceed", "Warmed:Terminating", "Warmed:Terminating:Wait", "Warmed:Terminating:Proceed", "Warmed:Terminated", "Warmed:Stopped", "Warmed:Running", "Warmed:Hibernated"]
    #
    #   @return [String]
    #
    # @!attribute health_status
    #   <p>The last reported health status of the instance. "Healthy" means that the instance is
    #               healthy and should remain in service. "Unhealthy" means that the instance is unhealthy
    #               and that Amazon EC2 Auto Scaling should terminate and replace it.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_configuration_name
    #   <p>The launch configuration associated with the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_template
    #   <p>The launch template for the instance.</p>
    #
    #   @return [LaunchTemplateSpecification]
    #
    # @!attribute protected_from_scale_in
    #   <p>Indicates whether the instance is protected from termination by Amazon EC2 Auto Scaling when scaling
    #               in.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute weighted_capacity
    #   <p>The number of capacity units contributed by the instance based on its instance
    #               type.</p>
    #           <p>Valid Range: Minimum value of 1. Maximum value of 999.</p>
    #
    #   @return [String]
    #
    Instance = ::Struct.new(
      :instance_id,
      :instance_type,
      :availability_zone,
      :lifecycle_state,
      :health_status,
      :launch_configuration_name,
      :launch_template,
      :protected_from_scale_in,
      :weighted_capacity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InstanceGeneration
    #
    module InstanceGeneration
      # No documentation available.
      #
      CURRENT = "current"

      # No documentation available.
      #
      PREVIOUS = "previous"
    end

    # Includes enum constants for InstanceMetadataEndpointState
    #
    module InstanceMetadataEndpointState
      # No documentation available.
      #
      Disabled = "disabled"

      # No documentation available.
      #
      Enabled = "enabled"
    end

    # Includes enum constants for InstanceMetadataHttpTokensState
    #
    module InstanceMetadataHttpTokensState
      # No documentation available.
      #
      Optional = "optional"

      # No documentation available.
      #
      Required = "required"
    end

    # <p>The metadata options for the instances. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-config.html#launch-configurations-imds">Configuring the Instance Metadata Options</a> in the
    #                 <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @!attribute http_tokens
    #   <p>The state of token usage for your instance metadata requests. If the parameter is not
    #               specified in the request, the default state is <code>optional</code>.</p>
    #           <p>If the state is <code>optional</code>, you can choose to retrieve instance metadata
    #               with or without a signed token header on your request. If you retrieve the IAM role
    #               credentials without a token, the version 1.0 role credentials are returned. If you
    #               retrieve the IAM role credentials using a valid signed token, the version 2.0 role
    #               credentials are returned.</p>
    #           <p>If the state is <code>required</code>, you must send a signed token header with any
    #               instance metadata retrieval requests. In this state, retrieving the IAM role credentials
    #               always returns the version 2.0 credentials; the version 1.0 credentials are not
    #               available.</p>
    #
    #   Enum, one of: ["optional", "required"]
    #
    #   @return [String]
    #
    # @!attribute http_put_response_hop_limit
    #   <p>The desired HTTP PUT response hop limit for instance metadata requests. The larger the
    #               number, the further instance metadata requests can travel.</p>
    #           <p>Default: 1</p>
    #
    #   @return [Integer]
    #
    # @!attribute http_endpoint
    #   <p>This parameter enables or disables the HTTP metadata endpoint on your instances. If
    #               the parameter is not specified, the default state is <code>enabled</code>.</p>
    #           <note>
    #               <p>If you specify a value of <code>disabled</code>, you will not be able to access
    #                   your instance metadata. </p>
    #           </note>
    #
    #   Enum, one of: ["disabled", "enabled"]
    #
    #   @return [String]
    #
    InstanceMetadataOptions = ::Struct.new(
      :http_tokens,
      :http_put_response_hop_limit,
      :http_endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes whether detailed monitoring is enabled for the Auto Scaling instances.</p>
    #
    # @!attribute enabled
    #   <p>If <code>true</code>, detailed monitoring is enabled. Otherwise, basic monitoring is
    #               enabled.</p>
    #
    #   @return [Boolean]
    #
    InstanceMonitoring = ::Struct.new(
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an instance refresh for an Auto Scaling group. </p>
    #
    # @!attribute instance_refresh_id
    #   <p>The instance refresh ID.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status for the instance refresh operation:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Pending</code> - The request was created, but the operation has not
    #                       started.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>InProgress</code> - The operation is in progress.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Successful</code> - The operation completed successfully.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Failed</code> - The operation failed to complete. You can troubleshoot
    #                       using the status reason and the scaling activities. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Cancelling</code> - An ongoing operation is being cancelled.
    #                       Cancellation does not roll back any replacements that have already been
    #                       completed, but it prevents new replacements from being started. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Cancelled</code> - The operation is cancelled. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["Pending", "InProgress", "Successful", "Failed", "Cancelling", "Cancelled"]
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p>Provides more details about the current status of the instance refresh. </p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The date and time at which the instance refresh began.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The date and time at which the instance refresh ended.</p>
    #
    #   @return [Time]
    #
    # @!attribute percentage_complete
    #   <p>The percentage of the instance refresh that is complete. For each instance
    #               replacement, Amazon EC2 Auto Scaling tracks the instance's health status and warm-up time. When the
    #               instance's health status changes to healthy and the specified warm-up time passes, the
    #               instance is considered updated and is added to the percentage complete.</p>
    #
    #   @return [Integer]
    #
    # @!attribute instances_to_update
    #   <p>The number of instances remaining to update before the instance refresh is
    #               complete.</p>
    #
    #   @return [Integer]
    #
    # @!attribute progress_details
    #   <p>Additional progress details for an Auto Scaling group that has a warm pool.</p>
    #
    #   @return [InstanceRefreshProgressDetails]
    #
    # @!attribute preferences
    #   <p>Describes the preferences for an instance refresh.</p>
    #
    #   @return [RefreshPreferences]
    #
    # @!attribute desired_configuration
    #   <p>Describes the specific update you want to deploy.</p>
    #
    #   @return [DesiredConfiguration]
    #
    InstanceRefresh = ::Struct.new(
      :instance_refresh_id,
      :auto_scaling_group_name,
      :status,
      :status_reason,
      :start_time,
      :end_time,
      :percentage_complete,
      :instances_to_update,
      :progress_details,
      :preferences,
      :desired_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request failed because an active instance refresh operation already exists for the
    #             specified Auto Scaling group.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InstanceRefreshInProgressFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Reports the progress of an instance refresh on instances that are in the Auto Scaling
    #             group.</p>
    #
    # @!attribute percentage_complete
    #   <p>The percentage of instances in the Auto Scaling group that have been replaced. For each
    #               instance replacement, Amazon EC2 Auto Scaling tracks the instance's health status and warm-up time.
    #               When the instance's health status changes to healthy and the specified warm-up time
    #               passes, the instance is considered updated and is added to the percentage
    #               complete.</p>
    #
    #   @return [Integer]
    #
    # @!attribute instances_to_update
    #   <p>The number of instances remaining to update.</p>
    #
    #   @return [Integer]
    #
    InstanceRefreshLivePoolProgress = ::Struct.new(
      :percentage_complete,
      :instances_to_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Reports the progress of an instance refresh on an Auto Scaling group that has a warm pool.
    #             This includes separate details for instances in the warm pool and instances in the Auto Scaling
    #             group (the live pool).</p>
    #
    # @!attribute live_pool_progress
    #   <p>Indicates the progress of an instance refresh on instances that are in the Auto Scaling
    #               group.</p>
    #
    #   @return [InstanceRefreshLivePoolProgress]
    #
    # @!attribute warm_pool_progress
    #   <p>Indicates the progress of an instance refresh on instances that are in the warm
    #               pool.</p>
    #
    #   @return [InstanceRefreshWarmPoolProgress]
    #
    InstanceRefreshProgressDetails = ::Struct.new(
      :live_pool_progress,
      :warm_pool_progress,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InstanceRefreshStatus
    #
    module InstanceRefreshStatus
      # No documentation available.
      #
      Pending = "Pending"

      # No documentation available.
      #
      InProgress = "InProgress"

      # No documentation available.
      #
      Successful = "Successful"

      # No documentation available.
      #
      Failed = "Failed"

      # No documentation available.
      #
      Cancelling = "Cancelling"

      # No documentation available.
      #
      Cancelled = "Cancelled"
    end

    # <p>Reports the progress of an instance refresh on instances that are in the warm
    #             pool.</p>
    #
    # @!attribute percentage_complete
    #   <p>The percentage of instances in the warm pool that have been replaced. For each
    #               instance replacement, Amazon EC2 Auto Scaling tracks the instance's health status and warm-up time.
    #               When the instance's health status changes to healthy and the specified warm-up time
    #               passes, the instance is considered updated and is added to the percentage
    #               complete.</p>
    #
    #   @return [Integer]
    #
    # @!attribute instances_to_update
    #   <p>The number of instances remaining to update.</p>
    #
    #   @return [Integer]
    #
    InstanceRefreshWarmPoolProgress = ::Struct.new(
      :percentage_complete,
      :instances_to_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>When you specify multiple parameters, you get instance types that satisfy all of the
    #             specified parameters. If you specify multiple values for a parameter, you get instance
    #             types that satisfy any of the specified values.</p>
    #
    #
    #         <p>Represents requirements for the types of instances that can be launched. You
    #             must specify <code>VCpuCount</code> and <code>MemoryMiB</code>, but all other parameters
    #             are optional. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-instance-type-requirements.html">Creating
    #                 an Auto Scaling group using attribute-based instance type selection</a> in the
    #                 <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @!attribute v_cpu_count
    #   <p>The minimum and maximum number of vCPUs for an instance type.</p>
    #
    #   @return [VCpuCountRequest]
    #
    # @!attribute memory_mi_b
    #   <p>The minimum and maximum instance memory size for an instance type, in MiB.</p>
    #
    #   @return [MemoryMiBRequest]
    #
    # @!attribute cpu_manufacturers
    #   <p>Lists which specific CPU manufacturers to include.</p>
    #           <ul>
    #               <li>
    #                   <p>For instance types with Intel CPUs, specify <code>intel</code>.</p>
    #               </li>
    #               <li>
    #                   <p>For instance types with AMD CPUs, specify <code>amd</code>.</p>
    #               </li>
    #               <li>
    #                   <p>For instance types with Amazon Web Services CPUs, specify
    #                       <code>amazon-web-services</code>.</p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>Don't confuse the CPU hardware manufacturer with the CPU hardware architecture.
    #                   Instances will be launched with a compatible CPU architecture based on the Amazon
    #                   Machine Image (AMI) that you specify in your launch template. </p>
    #           </note>
    #           <p>Default: Any manufacturer</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute memory_gi_b_per_v_cpu
    #   <p>The minimum and maximum amount of memory per vCPU for an instance type, in GiB.</p>
    #           <p>Default: No minimum or maximum</p>
    #
    #   @return [MemoryGiBPerVCpuRequest]
    #
    # @!attribute excluded_instance_types
    #   <p>Lists which instance types to exclude. You can use strings with one or more wild
    #               cards, represented by an asterisk (<code>*</code>). The following are examples:
    #                   <code>c5*</code>, <code>m5a.*</code>, <code>r*</code>, <code>*3*</code>. </p>
    #           <p>For example, if you specify <code>c5*</code>, you are excluding the entire C5 instance
    #               family, which includes all C5a and C5n instance types. If you specify
    #               <code>m5a.*</code>, you are excluding all the M5a instance types, but not the M5n
    #               instance types.</p>
    #           <p>Default: No excluded instance types</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute instance_generations
    #   <p>Indicates whether current or previous generation instance types are included.</p>
    #           <ul>
    #               <li>
    #                   <p>For current generation instance types, specify <code>current</code>. The
    #                       current generation includes EC2 instance types currently recommended for use.
    #                       This typically includes the latest two to three generations in each instance
    #                       family. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance types</a> in
    #                       the <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
    #               </li>
    #               <li>
    #                   <p>For previous generation instance types, specify <code>previous</code>.</p>
    #               </li>
    #            </ul>
    #           <p>Default: Any current or previous generation</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute spot_max_price_percentage_over_lowest_price
    #   <p>The price protection threshold for Spot Instances. This is the maximum you’ll pay for
    #               a Spot Instance, expressed as a percentage higher than the cheapest M, C, or R instance
    #               type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your
    #               attributes, we will exclude instance types whose price is higher than your threshold.
    #               The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off
    #               price protection, specify a high value, such as <code>999999</code>. </p>
    #           <p>If you set <code>DesiredCapacityType</code> to <code>vcpu</code> or
    #                   <code>memory-mib</code>, the price protection threshold is applied based on the per
    #               vCPU or per memory price instead of the per instance price. </p>
    #           <p>Default: <code>100</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute on_demand_max_price_percentage_over_lowest_price
    #   <p>The price protection threshold for On-Demand Instances. This is the maximum you’ll pay
    #               for an On-Demand Instance, expressed as a percentage higher than the cheapest M, C, or R
    #               instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with
    #               your attributes, we will exclude instance types whose price is higher than your
    #               threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage.
    #               To turn off price protection, specify a high value, such as <code>999999</code>. </p>
    #           <p>If you set <code>DesiredCapacityType</code> to <code>vcpu</code> or
    #                   <code>memory-mib</code>, the price protection threshold is applied based on the per
    #               vCPU or per memory price instead of the per instance price. </p>
    #           <p>Default: <code>20</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute bare_metal
    #   <p>Indicates whether bare metal instance types are included, excluded, or
    #               required.</p>
    #           <p>Default: <code>excluded</code>
    #            </p>
    #
    #   Enum, one of: ["included", "excluded", "required"]
    #
    #   @return [String]
    #
    # @!attribute burstable_performance
    #   <p>Indicates whether burstable performance instance types are included, excluded, or
    #               required. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html">Burstable
    #                   performance instances</a> in the <i>Amazon EC2 User Guide for Linux
    #                   Instances</i>.</p>
    #           <p>Default: <code>excluded</code>
    #            </p>
    #
    #   Enum, one of: ["included", "excluded", "required"]
    #
    #   @return [String]
    #
    # @!attribute require_hibernate_support
    #   <p>Indicates whether instance types must provide On-Demand Instance hibernation
    #               support.</p>
    #           <p>Default: <code>false</code>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute network_interface_count
    #   <p>The minimum and maximum number of network interfaces for an instance type.</p>
    #           <p>Default: No minimum or maximum</p>
    #
    #   @return [NetworkInterfaceCountRequest]
    #
    # @!attribute local_storage
    #   <p>Indicates whether instance types with instance store volumes are included, excluded,
    #               or required. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html">Amazon EC2 instance store</a> in
    #               the <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
    #           <p>Default: <code>included</code>
    #            </p>
    #
    #   Enum, one of: ["included", "excluded", "required"]
    #
    #   @return [String]
    #
    # @!attribute local_storage_types
    #   <p>Indicates the type of local storage that is required.</p>
    #           <ul>
    #               <li>
    #                   <p>For instance types with hard disk drive (HDD) storage, specify
    #                           <code>hdd</code>.</p>
    #               </li>
    #               <li>
    #                   <p>For instance types with solid state drive (SSD) storage, specify
    #                           <code>sdd</code>.</p>
    #               </li>
    #            </ul>
    #           <p>Default: Any local storage type</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute total_local_storage_gb
    #   <p>The minimum and maximum total local storage size for an instance type, in GB.</p>
    #           <p>Default: No minimum or maximum</p>
    #
    #   @return [TotalLocalStorageGBRequest]
    #
    # @!attribute baseline_ebs_bandwidth_mbps
    #   <p>The minimum and maximum baseline bandwidth performance for an instance type, in Mbps.
    #               For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-optimized.html">Amazon EBS–optimized instances</a>
    #               in the <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
    #           <p>Default: No minimum or maximum</p>
    #
    #   @return [BaselineEbsBandwidthMbpsRequest]
    #
    # @!attribute accelerator_types
    #   <p>Lists the accelerator types that must be on an instance type.</p>
    #           <ul>
    #               <li>
    #                   <p>For instance types with GPU accelerators, specify <code>gpu</code>.</p>
    #               </li>
    #               <li>
    #                   <p>For instance types with FPGA accelerators, specify <code>fpga</code>.</p>
    #               </li>
    #               <li>
    #                   <p>For instance types with inference accelerators, specify
    #                       <code>inference</code>.</p>
    #               </li>
    #            </ul>
    #           <p>Default: Any accelerator type</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute accelerator_count
    #   <p>The minimum and maximum number of accelerators (GPUs, FPGAs, or Amazon Web Services Inferentia
    #               chips) for an instance type.</p>
    #           <p>To exclude accelerator-enabled instance types, set <code>Max</code> to
    #               <code>0</code>.</p>
    #           <p>Default: No minimum or maximum</p>
    #
    #   @return [AcceleratorCountRequest]
    #
    # @!attribute accelerator_manufacturers
    #   <p>Indicates whether instance types must have accelerators by specific
    #               manufacturers.</p>
    #           <ul>
    #               <li>
    #                   <p>For instance types with NVIDIA devices, specify <code>nvidia</code>.</p>
    #               </li>
    #               <li>
    #                   <p>For instance types with AMD devices, specify <code>amd</code>.</p>
    #               </li>
    #               <li>
    #                   <p>For instance types with Amazon Web Services devices, specify
    #                           <code>amazon-web-services</code>.</p>
    #               </li>
    #               <li>
    #                   <p>For instance types with Xilinx devices, specify <code>xilinx</code>.</p>
    #               </li>
    #            </ul>
    #           <p>Default: Any manufacturer</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute accelerator_names
    #   <p>Lists the accelerators that must be on an instance type.</p>
    #           <ul>
    #               <li>
    #                   <p>For instance types with NVIDIA A100 GPUs, specify <code>a100</code>.</p>
    #               </li>
    #               <li>
    #                   <p>For instance types with NVIDIA V100 GPUs, specify <code>v100</code>.</p>
    #               </li>
    #               <li>
    #                   <p>For instance types with NVIDIA K80 GPUs, specify <code>k80</code>.</p>
    #               </li>
    #               <li>
    #                   <p>For instance types with NVIDIA T4 GPUs, specify <code>t4</code>.</p>
    #               </li>
    #               <li>
    #                   <p>For instance types with NVIDIA M60 GPUs, specify <code>m60</code>.</p>
    #               </li>
    #               <li>
    #                   <p>For instance types with AMD Radeon Pro V520 GPUs, specify
    #                           <code>radeon-pro-v520</code>.</p>
    #               </li>
    #               <li>
    #                   <p>For instance types with Xilinx VU9P FPGAs, specify <code>vu9p</code>.</p>
    #               </li>
    #            </ul>
    #           <p>Default: Any accelerator</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute accelerator_total_memory_mi_b
    #   <p>The minimum and maximum total memory size for the accelerators on an instance type, in
    #               MiB.</p>
    #           <p>Default: No minimum or maximum</p>
    #
    #   @return [AcceleratorTotalMemoryMiBRequest]
    #
    InstanceRequirements = ::Struct.new(
      :v_cpu_count,
      :memory_mi_b,
      :cpu_manufacturers,
      :memory_gi_b_per_v_cpu,
      :excluded_instance_types,
      :instance_generations,
      :spot_max_price_percentage_over_lowest_price,
      :on_demand_max_price_percentage_over_lowest_price,
      :bare_metal,
      :burstable_performance,
      :require_hibernate_support,
      :network_interface_count,
      :local_storage,
      :local_storage_types,
      :total_local_storage_gb,
      :baseline_ebs_bandwidth_mbps,
      :accelerator_types,
      :accelerator_count,
      :accelerator_manufacturers,
      :accelerator_names,
      :accelerator_total_memory_mi_b,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an instance reuse policy for a warm pool. </p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-warm-pools.html">Warm pools for
    #                 Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @!attribute reuse_on_scale_in
    #   <p>Specifies whether instances in the Auto Scaling group can be returned to the warm pool on
    #               scale in. </p>
    #
    #   @return [Boolean]
    #
    InstanceReusePolicy = ::Struct.new(
      :reuse_on_scale_in,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an instances distribution for an Auto Scaling group.</p>
    #
    # @!attribute on_demand_allocation_strategy
    #   <p>The order of the launch template overrides to use in fulfilling On-Demand capacity. </p>
    #           <p>If you specify <code>lowest-price</code>, Amazon EC2 Auto Scaling uses price to determine the order,
    #               launching the lowest price first. </p>
    #           <p>If you specify <code>prioritized</code>, Amazon EC2 Auto Scaling uses the priority that you assigned
    #               to each launch template override, launching the highest priority first. If all your
    #               On-Demand capacity cannot be fulfilled using your highest priority instance, then
    #               Amazon EC2 Auto Scaling launches the remaining capacity using the second priority instance type, and so
    #               on.</p>
    #           <p>Default: <code>lowest-price</code> for Auto Scaling groups that specify <a>InstanceRequirements</a> in the overrides and <code>prioritized</code> for
    #               Auto Scaling groups that don't.</p>
    #
    #   @return [String]
    #
    # @!attribute on_demand_base_capacity
    #   <p>The minimum amount of the Auto Scaling group's capacity that must be fulfilled by On-Demand
    #               Instances. This base portion is launched first as your group scales.</p>
    #           <p>If you specify weights for the instance types in the overrides, the base capacity is
    #               measured in the same unit of measurement as the instance types. If you specify <a>InstanceRequirements</a> in the overrides, the base capacity is measured in
    #               the same unit of measurement as your group's desired capacity.</p>
    #           <p>Default: <code>0</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute on_demand_percentage_above_base_capacity
    #   <p>Controls the percentages of On-Demand Instances and Spot Instances for your additional
    #               capacity beyond <code>OnDemandBaseCapacity</code>. Expressed as a number (for example,
    #               20 specifies 20% On-Demand Instances, 80% Spot Instances). If set to 100, only On-Demand
    #               Instances are used.</p>
    #           <p>Default: <code>100</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute spot_allocation_strategy
    #   <p>Indicates how to allocate instances across Spot Instance pools. </p>
    #           <p>If the allocation strategy is <code>lowest-price</code>, the Auto Scaling group launches
    #               instances using the Spot pools with the lowest price, and evenly allocates your
    #               instances across the number of Spot pools that you specify. </p>
    #           <p>If the allocation strategy is <code>capacity-optimized</code> (recommended), the Auto Scaling
    #               group launches instances using Spot pools that are optimally chosen based on the
    #               available Spot capacity. Alternatively, you can use
    #                   <code>capacity-optimized-prioritized</code> and set the order of instance types in
    #               the list of launch template overrides from highest to lowest priority (from first to
    #               last in the list). Amazon EC2 Auto Scaling honors the instance type priorities on a best-effort basis
    #               but optimizes for capacity first. </p>
    #           <p>Default: <code>lowest-price</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute spot_instance_pools
    #   <p>The number of Spot Instance pools across which to allocate your Spot Instances. The
    #               Spot pools are determined from the different instance types in the overrides. Valid only
    #               when the Spot allocation strategy is <code>lowest-price</code>. Value must be in the
    #               range of 1–20.</p>
    #           <p>Default: <code>2</code>
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute spot_max_price
    #   <p>The maximum price per unit hour that you are willing to pay for a Spot Instance. If
    #               you keep the value at its default (unspecified), Amazon EC2 Auto Scaling uses the On-Demand price as
    #               the maximum Spot price. To remove a value that you previously set, include the property
    #               but specify an empty string ("") for the value.</p>
    #
    #   @return [String]
    #
    InstancesDistribution = ::Struct.new(
      :on_demand_allocation_strategy,
      :on_demand_base_capacity,
      :on_demand_percentage_above_base_capacity,
      :spot_allocation_strategy,
      :spot_instance_pools,
      :spot_max_price,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The <code>NextToken</code> value is not valid.</p>
    #
    # @!attribute message
    #   <p></p>
    #
    #   @return [String]
    #
    InvalidNextToken = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a launch configuration.</p>
    #
    # @!attribute launch_configuration_name
    #   <p>The name of the launch configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the launch configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute image_id
    #   <p>The ID of the Amazon Machine Image (AMI) to use to launch your EC2 instances. For more
    #               information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html">Finding an AMI</a> in the
    #                   <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute key_name
    #   <p>The name of the key pair.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html">Amazon EC2 Key Pairs</a> in the
    #                   <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute security_groups
    #   <p>A list that contains the security groups to assign to the instances in the Auto Scaling group.
    #               For more information, see <a href="https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html">Security Groups for Your
    #                   VPC</a> in the <i>Amazon Virtual Private Cloud User
    #               Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute classic_link_vpc_id
    #   <p>
    #               <i>EC2-Classic retires on August 15, 2022. This parameter is not supported after
    #                   that date.</i>
    #           </p>
    #           <p>The ID of a ClassicLink-enabled VPC to link your EC2-Classic instances to.</p>
    #
    #   @return [String]
    #
    # @!attribute classic_link_vpc_security_groups
    #   <p>
    #               <i>EC2-Classic retires on August 15, 2022. This parameter is not supported after
    #                   that date.</i>
    #           </p>
    #           <p>The IDs of one or more security groups for the VPC specified in
    #                   <code>ClassicLinkVPCId</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute user_data
    #   <p>The user data to make available to the launched EC2 instances. For more information,
    #               see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html">Instance metadata and user data</a> (Linux) and <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-metadata.html">Instance metadata and
    #                   user data</a> (Windows). If you are using a command line tool, base64-encoding
    #               is performed for you, and you can load the text from a file. Otherwise, you must provide
    #               base64-encoded text. User data is limited to 16 KB.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_type
    #   <p>The instance type for the instances.</p>
    #           <p>For information about available instance types, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html AvailableInstanceTypes">Available
    #                   Instance Types</a> in the <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute kernel_id
    #   <p>The ID of the kernel associated with the AMI.</p>
    #
    #   @return [String]
    #
    # @!attribute ramdisk_id
    #   <p>The ID of the RAM disk associated with the AMI.</p>
    #
    #   @return [String]
    #
    # @!attribute block_device_mappings
    #   <p>A block device mapping, which specifies the block devices for the instance. For more
    #               information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html">Block Device
    #                   Mapping</a> in the <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
    #
    #   @return [Array<BlockDeviceMapping>]
    #
    # @!attribute instance_monitoring
    #   <p>Controls whether instances in this group are launched with detailed
    #               (<code>true</code>) or basic (<code>false</code>) monitoring.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/latest/userguide/enable-as-instance-metrics.html">Configure
    #                   Monitoring for Auto Scaling Instances</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    #   @return [InstanceMonitoring]
    #
    # @!attribute spot_price
    #   <p>The maximum hourly price to be paid for any Spot Instance launched to fulfill the
    #               request. Spot Instances are launched when the price you specify exceeds the current Spot
    #               price. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-launch-spot-instances.html">Requesting Spot
    #                   Instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_instance_profile
    #   <p>The name or the Amazon Resource Name (ARN) of the instance profile associated with the
    #               IAM role for the instance. The instance profile contains the IAM role. For more
    #               information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/us-iam-role.html">IAM role for applications that run
    #                   on Amazon EC2 instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The creation date and time for the launch configuration.</p>
    #
    #   @return [Time]
    #
    # @!attribute ebs_optimized
    #   <p>Specifies whether the launch configuration is optimized for EBS I/O
    #               (<code>true</code>) or not (<code>false</code>). For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html">Amazon
    #                   EBS-Optimized Instances</a> in the <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute associate_public_ip_address
    #   <p>For Auto Scaling groups that are running in a VPC, specifies whether to assign a public IP
    #               address to the group's instances. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html">Launching Auto Scaling instances in a
    #                   VPC</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute placement_tenancy
    #   <p>The tenancy of the instance, either <code>default</code> or <code>dedicated</code>. An
    #               instance with <code>dedicated</code> tenancy runs on isolated, single-tenant hardware
    #               and can only be launched into a VPC.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/auto-scaling-dedicated-instances.html">Configuring
    #                   instance tenancy with Amazon EC2 Auto Scaling</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata_options
    #   <p>The metadata options for the instances. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-config.html launch-configurations-imds">Configuring the Instance Metadata Options</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    #   @return [InstanceMetadataOptions]
    #
    LaunchConfiguration = ::Struct.new(
      :launch_configuration_name,
      :launch_configuration_arn,
      :image_id,
      :key_name,
      :security_groups,
      :classic_link_vpc_id,
      :classic_link_vpc_security_groups,
      :user_data,
      :instance_type,
      :kernel_id,
      :ramdisk_id,
      :block_device_mappings,
      :instance_monitoring,
      :spot_price,
      :iam_instance_profile,
      :created_time,
      :ebs_optimized,
      :associate_public_ip_address,
      :placement_tenancy,
      :metadata_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a launch template and overrides. You specify these properties as part of a
    #             mixed instances policy. </p>
    #
    # @!attribute launch_template_specification
    #   <p>The launch template to use.</p>
    #
    #   @return [LaunchTemplateSpecification]
    #
    # @!attribute overrides
    #   <p>Any properties that you specify override the same properties in the launch template.
    #               If not provided, Amazon EC2 Auto Scaling uses the instance type or instance type requirements specified
    #               in the launch template when it launches an instance.</p>
    #           <p>The overrides can include either one or more instance types or a set of instance
    #               requirements, but not both.</p>
    #
    #   @return [Array<LaunchTemplateOverrides>]
    #
    LaunchTemplate = ::Struct.new(
      :launch_template_specification,
      :overrides,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an override for a launch template. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-configuring-overrides.html">Configuring overrides</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>. </p>
    #
    # @!attribute instance_type
    #   <p>The instance type, such as <code>m3.xlarge</code>. You must use an instance type that
    #               is supported in your requested Region and Availability Zones. For more information, see
    #                   <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance types</a> in the <i>Amazon Elastic Compute Cloud User
    #                   Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute weighted_capacity
    #   <p>The number of capacity units provided by the instance type specified in
    #                   <code>InstanceType</code> in terms of virtual CPUs, memory, storage, throughput, or
    #               other relative performance characteristic. When a Spot or On-Demand Instance is
    #               launched, the capacity units count toward the desired capacity. Amazon EC2 Auto Scaling launches
    #               instances until the desired capacity is totally fulfilled, even if this results in an
    #               overage. For example, if there are two units remaining to fulfill capacity, and Amazon EC2 Auto Scaling
    #               can only launch an instance with a <code>WeightedCapacity</code> of five units, the
    #               instance is launched, and the desired capacity is exceeded by three units. For more
    #               information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups-instance-weighting.html">Configuring instance weighting for Amazon EC2 Auto Scaling</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>. Value must be in the range of 1–999.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_template_specification
    #   <p>Provides a launch template for the specified instance type or instance requirements.
    #               For example, some instance types might require a launch template with a different AMI.
    #               If not provided, Amazon EC2 Auto Scaling uses the launch template that's defined for your mixed
    #               instances policy. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups-launch-template-overrides.html">Specifying a different launch template for an instance type</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>. </p>
    #
    #   @return [LaunchTemplateSpecification]
    #
    # @!attribute instance_requirements
    #   <p>The instance requirements. When you specify instance requirements, Amazon EC2 Auto Scaling finds
    #               instance types that satisfy your requirements, and then uses your On-Demand and Spot
    #               allocation strategies to launch instances from these instance types, in the same way as
    #               when you specify a list of specific instance types. </p>
    #
    #   @return [InstanceRequirements]
    #
    LaunchTemplateOverrides = ::Struct.new(
      :instance_type,
      :weighted_capacity,
      :launch_template_specification,
      :instance_requirements,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the launch template and the version of the launch template that Amazon EC2 Auto Scaling
    #             uses to launch Amazon EC2 instances. For more information about launch templates, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/LaunchTemplates.html">Launch
    #                 templates</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @!attribute launch_template_id
    #   <p>The ID of the launch template. To get the template ID, use the Amazon EC2 <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeLaunchTemplates.html">DescribeLaunchTemplates</a> API operation. New launch templates can be created
    #               using the Amazon EC2 <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateLaunchTemplate.html">CreateLaunchTemplate</a> API. </p>
    #           <p>Conditional: You must specify either a <code>LaunchTemplateId</code> or a
    #                   <code>LaunchTemplateName</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_template_name
    #   <p>The name of the launch template. To get the template name, use the Amazon EC2 <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeLaunchTemplates.html">DescribeLaunchTemplates</a> API operation. New launch templates can be created
    #               using the Amazon EC2 <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateLaunchTemplate.html">CreateLaunchTemplate</a> API. </p>
    #           <p>Conditional: You must specify either a <code>LaunchTemplateId</code> or a
    #                   <code>LaunchTemplateName</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version number, <code>$Latest</code>, or <code>$Default</code>. To get the version
    #               number, use the Amazon EC2 <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeLaunchTemplateVersions.html">DescribeLaunchTemplateVersions</a> API operation. New launch template versions
    #               can be created using the Amazon EC2 <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateLaunchTemplateVersion.html">CreateLaunchTemplateVersion</a> API. If the value is <code>$Latest</code>,
    #               Amazon EC2 Auto Scaling selects the latest version of the launch template when launching instances. If
    #               the value is <code>$Default</code>, Amazon EC2 Auto Scaling selects the default version of the launch
    #               template when launching instances. The default value is <code>$Default</code>.</p>
    #
    #   @return [String]
    #
    LaunchTemplateSpecification = ::Struct.new(
      :launch_template_id,
      :launch_template_name,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a lifecycle hook. A lifecycle hook lets you create solutions that are aware
    #             of events in the Auto Scaling instance lifecycle, and then perform a custom action on instances
    #             when the corresponding lifecycle event
    #             occurs.</p>
    #
    # @!attribute lifecycle_hook_name
    #   <p>The name of the lifecycle hook.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group for the lifecycle hook.</p>
    #
    #   @return [String]
    #
    # @!attribute lifecycle_transition
    #   <p>The state of the EC2 instance to which to attach the lifecycle hook. The following are
    #               possible values:</p>
    #           <ul>
    #               <li>
    #                   <p>autoscaling:EC2_INSTANCE_LAUNCHING</p>
    #               </li>
    #               <li>
    #                   <p>autoscaling:EC2_INSTANCE_TERMINATING</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute notification_target_arn
    #   <p>The ARN of the target that Amazon EC2 Auto Scaling sends notifications to when an instance is in the
    #               transition state for the lifecycle hook. The notification target can be either an SQS
    #               queue or an SNS topic.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that allows the Auto Scaling group to publish to the specified
    #               notification target (an Amazon SNS topic or an Amazon SQS queue).</p>
    #
    #   @return [String]
    #
    # @!attribute notification_metadata
    #   <p>Additional information that is included any time Amazon EC2 Auto Scaling sends a message to the
    #               notification target.</p>
    #
    #   @return [String]
    #
    # @!attribute heartbeat_timeout
    #   <p>The maximum time, in seconds, that can elapse before the lifecycle hook times out. If
    #               the lifecycle hook times out, Amazon EC2 Auto Scaling performs the action that you specified in the
    #                   <code>DefaultResult</code> parameter.</p>
    #
    #   @return [Integer]
    #
    # @!attribute global_timeout
    #   <p>The maximum time, in seconds, that an instance can remain in a wait state. The maximum
    #               is 172800 seconds (48 hours) or 100 times <code>HeartbeatTimeout</code>, whichever is
    #               smaller.</p>
    #
    #   @return [Integer]
    #
    # @!attribute default_result
    #   <p>Defines the action the Auto Scaling group should take when the lifecycle hook timeout elapses
    #               or if an unexpected failure occurs. The possible values are <code>CONTINUE</code> and
    #                   <code>ABANDON</code>.</p>
    #
    #   @return [String]
    #
    LifecycleHook = ::Struct.new(
      :lifecycle_hook_name,
      :auto_scaling_group_name,
      :lifecycle_transition,
      :notification_target_arn,
      :role_arn,
      :notification_metadata,
      :heartbeat_timeout,
      :global_timeout,
      :default_result,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes information used to specify a lifecycle hook for an Auto Scaling
    #             group.</p>
    #
    #
    #
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html">Amazon EC2 Auto Scaling lifecycle
    #                 hooks</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @!attribute lifecycle_hook_name
    #   <p>The name of the lifecycle hook.</p>
    #
    #   @return [String]
    #
    # @!attribute lifecycle_transition
    #   <p>The state of the EC2 instance to which you want to attach the lifecycle hook. The
    #               valid values are:</p>
    #           <ul>
    #               <li>
    #                   <p>autoscaling:EC2_INSTANCE_LAUNCHING</p>
    #               </li>
    #               <li>
    #                   <p>autoscaling:EC2_INSTANCE_TERMINATING</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute notification_metadata
    #   <p>Additional information that you want to include any time Amazon EC2 Auto Scaling sends a message to
    #               the notification target.</p>
    #
    #   @return [String]
    #
    # @!attribute heartbeat_timeout
    #   <p>The maximum time, in seconds, that can elapse before the lifecycle hook times
    #               out.</p>
    #           <p>If the lifecycle hook times out, Amazon EC2 Auto Scaling performs the action that you specified in
    #               the <code>DefaultResult</code> parameter. You can prevent the lifecycle hook from timing
    #               out by calling <a>RecordLifecycleActionHeartbeat</a>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute default_result
    #   <p>Defines the action the Auto Scaling group should take when the lifecycle hook timeout elapses
    #               or if an unexpected failure occurs. The valid values are <code>CONTINUE</code> and
    #                   <code>ABANDON</code>. The default value is <code>ABANDON</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute notification_target_arn
    #   <p>The ARN of the target that Amazon EC2 Auto Scaling sends notifications to when an instance is in the
    #               transition state for the lifecycle hook. The notification target can be either an SQS
    #               queue or an SNS topic.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that allows the Auto Scaling group to publish to the specified
    #               notification target.</p>
    #           <p>Valid only if the notification target is an Amazon SNS topic or an Amazon SQS queue. Required
    #               for new lifecycle hooks, but optional when updating existing hooks.</p>
    #
    #   @return [String]
    #
    LifecycleHookSpecification = ::Struct.new(
      :lifecycle_hook_name,
      :lifecycle_transition,
      :notification_metadata,
      :heartbeat_timeout,
      :default_result,
      :notification_target_arn,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LifecycleState
    #
    module LifecycleState
      # No documentation available.
      #
      PENDING = "Pending"

      # No documentation available.
      #
      PENDING_WAIT = "Pending:Wait"

      # No documentation available.
      #
      PENDING_PROCEED = "Pending:Proceed"

      # No documentation available.
      #
      QUARANTINED = "Quarantined"

      # No documentation available.
      #
      IN_SERVICE = "InService"

      # No documentation available.
      #
      TERMINATING = "Terminating"

      # No documentation available.
      #
      TERMINATING_WAIT = "Terminating:Wait"

      # No documentation available.
      #
      TERMINATING_PROCEED = "Terminating:Proceed"

      # No documentation available.
      #
      TERMINATED = "Terminated"

      # No documentation available.
      #
      DETACHING = "Detaching"

      # No documentation available.
      #
      DETACHED = "Detached"

      # No documentation available.
      #
      ENTERING_STANDBY = "EnteringStandby"

      # No documentation available.
      #
      STANDBY = "Standby"

      # No documentation available.
      #
      WARMED_PENDING = "Warmed:Pending"

      # No documentation available.
      #
      WARMED_PENDING_WAIT = "Warmed:Pending:Wait"

      # No documentation available.
      #
      WARMED_PENDING_PROCEED = "Warmed:Pending:Proceed"

      # No documentation available.
      #
      WARMED_TERMINATING = "Warmed:Terminating"

      # No documentation available.
      #
      WARMED_TERMINATING_WAIT = "Warmed:Terminating:Wait"

      # No documentation available.
      #
      WARMED_TERMINATING_PROCEED = "Warmed:Terminating:Proceed"

      # No documentation available.
      #
      WARMED_TERMINATED = "Warmed:Terminated"

      # No documentation available.
      #
      WARMED_STOPPED = "Warmed:Stopped"

      # No documentation available.
      #
      WARMED_RUNNING = "Warmed:Running"

      # No documentation available.
      #
      WARMED_HIBERNATED = "Warmed:Hibernated"
    end

    # <p>You have already reached a limit for your Amazon EC2 Auto Scaling
    #             resources (for example, Auto Scaling groups, launch configurations, or lifecycle hooks). For
    #             more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DescribeAccountLimits.html">DescribeAccountLimits</a> in the <i>Amazon EC2 Auto Scaling API
    #             Reference</i>.</p>
    #
    # @!attribute message
    #   <p></p>
    #
    #   @return [String]
    #
    LimitExceededFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the state of a Classic Load Balancer.</p>
    #
    # @!attribute load_balancer_name
    #   <p>The name of the load balancer.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>One of the following load balancer states:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Adding</code> - The Auto Scaling instances are being registered with the load
    #                       balancer.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>Added</code> - All Auto Scaling instances are registered with the load
    #                       balancer.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>InService</code> - At least one Auto Scaling instance passed an <code>ELB</code>
    #                       health check.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Removing</code> - The Auto Scaling instances are being deregistered from the
    #                       load balancer. If connection draining is enabled, Elastic Load Balancing waits for in-flight
    #                       requests to complete before deregistering the instances.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Removed</code> - All Auto Scaling instances are deregistered from the load
    #                       balancer.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    LoadBalancerState = ::Struct.new(
      :load_balancer_name,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the state of a target group.</p>
    #
    # @!attribute load_balancer_target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the target group.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Adding</code> - The Auto Scaling instances are being registered with the target
    #                       group.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Added</code> - All Auto Scaling instances are registered with the target
    #                       group.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>InService</code> - At least one Auto Scaling instance passed an <code>ELB</code>
    #                       health check.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Removing</code> - The Auto Scaling instances are being deregistered from the
    #                       target group. If connection draining is enabled, Elastic Load Balancing waits for in-flight
    #                       requests to complete before deregistering the instances.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Removed</code> - All Auto Scaling instances are deregistered from the target
    #                       group.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    LoadBalancerTargetGroupState = ::Struct.new(
      :load_balancer_target_group_arn,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A <code>GetPredictiveScalingForecast</code> call returns the load forecast for a
    #             predictive scaling policy. This structure includes the data points for that load
    #             forecast, along with the timestamps of those data points and the metric specification.
    #         </p>
    #
    # @!attribute timestamps
    #   <p>The timestamps for the data points, in UTC format.</p>
    #
    #   @return [Array<Time>]
    #
    # @!attribute values
    #   <p>The values of the data points.</p>
    #
    #   @return [Array<Float>]
    #
    # @!attribute metric_specification
    #   <p>The metric specification for the load forecast.</p>
    #
    #   @return [PredictiveScalingMetricSpecification]
    #
    LoadForecast = ::Struct.new(
      :timestamps,
      :values,
      :metric_specification,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LocalStorage
    #
    module LocalStorage
      # No documentation available.
      #
      INCLUDED = "included"

      # No documentation available.
      #
      EXCLUDED = "excluded"

      # No documentation available.
      #
      REQUIRED = "required"
    end

    # Includes enum constants for LocalStorageType
    #
    module LocalStorageType
      # No documentation available.
      #
      HDD = "hdd"

      # No documentation available.
      #
      SSD = "ssd"
    end

    # <p>Specifies the minimum and maximum for the <code>MemoryGiBPerVCpu</code> object when
    #             you specify <a>InstanceRequirements</a> for an Auto Scaling group.</p>
    #
    # @!attribute min
    #   <p>The memory minimum in GiB.</p>
    #
    #   @return [Float]
    #
    # @!attribute max
    #   <p>The memory maximum in GiB.</p>
    #
    #   @return [Float]
    #
    MemoryGiBPerVCpuRequest = ::Struct.new(
      :min,
      :max,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the minimum and maximum for the <code>MemoryMiB</code> object when you
    #             specify <a>InstanceRequirements</a> for an Auto Scaling group.</p>
    #
    # @!attribute min
    #   <p>The memory minimum in MiB.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max
    #   <p>The memory maximum in MiB.</p>
    #
    #   @return [Integer]
    #
    MemoryMiBRequest = ::Struct.new(
      :min,
      :max,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a specific metric. </p>
    #
    # @!attribute namespace
    #   <p>The namespace of the metric. For more information, see the table in <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/aws-services-cloudwatch-metrics.html">Amazon Web Services
    #                   services that publish CloudWatch metrics </a> in the <i>Amazon CloudWatch User
    #                   Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_name
    #   <p>The name of the metric.</p>
    #
    #   @return [String]
    #
    # @!attribute dimensions
    #   <p>The dimensions for the metric. For the list of available dimensions, see the Amazon Web Services
    #               documentation available from the table in <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/aws-services-cloudwatch-metrics.html">Amazon Web Services
    #                   services that publish CloudWatch metrics </a> in the <i>Amazon CloudWatch User
    #                   Guide</i>. </p>
    #           <p>Conditional: If you published your metric with dimensions, you must specify the same
    #               dimensions in your scaling policy.</p>
    #
    #   @return [Array<MetricDimension>]
    #
    Metric = ::Struct.new(
      :namespace,
      :metric_name,
      :dimensions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a metric.</p>
    #
    # @!attribute metric
    #   <p>One of the following metrics:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>GroupMinSize</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupMaxSize</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupDesiredCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupInServiceInstances</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupPendingInstances</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupStandbyInstances</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupTerminatingInstances</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupTotalInstances</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupInServiceCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupPendingCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupStandbyCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupTerminatingCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupTotalCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>WarmPoolDesiredCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>WarmPoolWarmedCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>WarmPoolPendingCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>WarmPoolTerminatingCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>WarmPoolTotalCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupAndWarmPoolDesiredCapacity</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>GroupAndWarmPoolTotalCapacity</code>
    #                   </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    MetricCollectionType = ::Struct.new(
      :metric,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The metric data to return. Also defines whether this call is returning data for one
    #             metric only, or whether it is performing a math expression on the values of returned
    #             metric statistics to create a new time series. A time series is a series of data points,
    #             each of which is associated with a timestamp.</p>
    #
    #
    #         <p>For more information and examples, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/predictive-scaling-customized-metric-specification.html">Advanced predictive scaling policy configurations using custom metrics</a> in
    #             the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @!attribute id
    #   <p>A short name that identifies the object's results in the response. This name must be
    #               unique among all <code>MetricDataQuery</code> objects specified for a single scaling
    #               policy. If you are performing math expressions on this set of data, this name represents
    #               that data and can serve as a variable in the mathematical expression. The valid
    #               characters are letters, numbers, and underscores. The first character must be a
    #               lowercase letter. </p>
    #
    #   @return [String]
    #
    # @!attribute expression
    #   <p>The math expression to perform on the returned data, if this object is performing a
    #               math expression. This expression can use the <code>Id</code> of the other metrics to
    #               refer to those metrics, and can also use the <code>Id</code> of other expressions to use
    #               the result of those expressions. </p>
    #           <p>Conditional: Within each <code>MetricDataQuery</code> object, you must specify either
    #                   <code>Expression</code> or <code>MetricStat</code>, but not both.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_stat
    #   <p>Information about the metric data to return.</p>
    #           <p>Conditional: Within each <code>MetricDataQuery</code> object, you must specify either
    #                   <code>Expression</code> or <code>MetricStat</code>, but not both.</p>
    #
    #   @return [MetricStat]
    #
    # @!attribute label
    #   <p>A human-readable label for this metric or expression. This is especially useful if
    #               this is a math expression, so that you know what the value represents.</p>
    #
    #   @return [String]
    #
    # @!attribute return_data
    #   <p>Indicates whether to return the timestamps and raw data values of this metric. </p>
    #           <p>If you use any math expressions, specify <code>true</code> for this value for only the
    #               final math expression that the metric specification is based on. You must specify
    #                   <code>false</code> for <code>ReturnData</code> for all the other metrics and
    #               expressions used in the metric specification.</p>
    #           <p>If you are only retrieving metrics and not performing any math expressions, do not
    #               specify anything for <code>ReturnData</code>. This sets it to its default
    #                   (<code>true</code>).</p>
    #
    #   @return [Boolean]
    #
    MetricDataQuery = ::Struct.new(
      :id,
      :expression,
      :metric_stat,
      :label,
      :return_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the dimension of a metric.</p>
    #
    # @!attribute name
    #   <p>The name of the dimension.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the dimension.</p>
    #
    #   @return [String]
    #
    MetricDimension = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a granularity of a metric.</p>
    #
    # @!attribute granularity
    #   <p>The granularity. The only valid value is <code>1Minute</code>.</p>
    #
    #   @return [String]
    #
    MetricGranularityType = ::Struct.new(
      :granularity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This structure defines the CloudWatch metric to return, along with the statistic, period,
    #             and unit.</p>
    #
    #         <p>For more information about the CloudWatch terminology below, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html">Amazon CloudWatch
    #                 concepts</a> in the <i>Amazon CloudWatch User Guide</i>.</p>
    #
    # @!attribute metric
    #   <p>The CloudWatch metric to return, including the metric name, namespace, and dimensions. To
    #               get the exact metric name, namespace, and dimensions, inspect the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_Metric.html">Metric</a> object that is returned by a call to <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_ListMetrics.html">ListMetrics</a>.</p>
    #
    #   @return [Metric]
    #
    # @!attribute stat
    #   <p>The statistic to return. It can include any CloudWatch statistic or extended statistic. For
    #               a list of valid values, see the table in <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html Statistic">Statistics</a> in the <i>Amazon CloudWatch User Guide</i>.</p>
    #           <p>The most commonly used metrics for predictive scaling are <code>Average</code> and
    #                   <code>Sum</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute unit
    #   <p>The unit to use for the returned data points. For a complete list of the units that
    #               CloudWatch supports, see the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDatum.html">MetricDatum</a>
    #               data type in the <i>Amazon CloudWatch API Reference</i>.</p>
    #
    #   @return [String]
    #
    MetricStat = ::Struct.new(
      :metric,
      :stat,
      :unit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MetricStatistic
    #
    module MetricStatistic
      # No documentation available.
      #
      Average = "Average"

      # No documentation available.
      #
      Minimum = "Minimum"

      # No documentation available.
      #
      Maximum = "Maximum"

      # No documentation available.
      #
      SampleCount = "SampleCount"

      # No documentation available.
      #
      Sum = "Sum"
    end

    # Includes enum constants for MetricType
    #
    module MetricType
      # No documentation available.
      #
      ASGAverageCPUUtilization = "ASGAverageCPUUtilization"

      # No documentation available.
      #
      ASGAverageNetworkIn = "ASGAverageNetworkIn"

      # No documentation available.
      #
      ASGAverageNetworkOut = "ASGAverageNetworkOut"

      # No documentation available.
      #
      ALBRequestCountPerTarget = "ALBRequestCountPerTarget"
    end

    # <p>Describes a mixed instances policy. A mixed instances policy contains the instance
    #             types that Amazon EC2 Auto Scaling can launch and other information that Amazon EC2 Auto Scaling can use to launch
    #             instances and help optimize your costs. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups.html">Auto Scaling
    #                 groups with multiple instance types and purchase options</a> in the
    #                 <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @!attribute launch_template
    #   <p>Specifies the launch template to use and the instance types (overrides) that are used
    #               to launch EC2 instances to fulfill On-Demand and Spot capacities. Required when creating
    #               a mixed instances policy.</p>
    #
    #   @return [LaunchTemplate]
    #
    # @!attribute instances_distribution
    #   <p>Specifies the instances distribution.</p>
    #
    #   @return [InstancesDistribution]
    #
    MixedInstancesPolicy = ::Struct.new(
      :launch_template,
      :instances_distribution,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the minimum and maximum for the <code>NetworkInterfaceCount</code> object
    #             when you specify <a>InstanceRequirements</a> for an Auto Scaling group.</p>
    #
    # @!attribute min
    #   <p>The minimum number of network interfaces.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max
    #   <p>The maximum number of network interfaces.</p>
    #
    #   @return [Integer]
    #
    NetworkInterfaceCountRequest = ::Struct.new(
      :min,
      :max,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a notification.</p>
    #
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic.</p>
    #
    #   @return [String]
    #
    # @!attribute notification_type
    #   <p>One of the following event notification types:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>autoscaling:EC2_INSTANCE_LAUNCH</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>autoscaling:EC2_INSTANCE_LAUNCH_ERROR</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>autoscaling:EC2_INSTANCE_TERMINATE</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>autoscaling:EC2_INSTANCE_TERMINATE_ERROR</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>autoscaling:TEST_NOTIFICATION</code>
    #                   </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    NotificationConfiguration = ::Struct.new(
      :auto_scaling_group_name,
      :topic_arn,
      :notification_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PredefinedLoadMetricType
    #
    module PredefinedLoadMetricType
      # No documentation available.
      #
      ASGTotalCPUUtilization = "ASGTotalCPUUtilization"

      # No documentation available.
      #
      ASGTotalNetworkIn = "ASGTotalNetworkIn"

      # No documentation available.
      #
      ASGTotalNetworkOut = "ASGTotalNetworkOut"

      # No documentation available.
      #
      ALBTargetGroupRequestCount = "ALBTargetGroupRequestCount"
    end

    # Includes enum constants for PredefinedMetricPairType
    #
    module PredefinedMetricPairType
      # No documentation available.
      #
      ASGCPUUtilization = "ASGCPUUtilization"

      # No documentation available.
      #
      ASGNetworkIn = "ASGNetworkIn"

      # No documentation available.
      #
      ASGNetworkOut = "ASGNetworkOut"

      # No documentation available.
      #
      ALBRequestCount = "ALBRequestCount"
    end

    # <p>Represents a predefined metric for a target tracking scaling policy to use with
    #             Amazon EC2 Auto Scaling.</p>
    #
    # @!attribute predefined_metric_type
    #   <p>The metric type. The following predefined metrics are available:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>ASGAverageCPUUtilization</code> - Average CPU utilization of the Auto Scaling
    #                       group.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ASGAverageNetworkIn</code> - Average number of bytes received on all
    #                       network interfaces by the Auto Scaling group.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ASGAverageNetworkOut</code> - Average number of bytes sent out on all
    #                       network interfaces by the Auto Scaling group.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ALBRequestCountPerTarget</code> - Average Application Load Balancer request count per target
    #                       for your Auto Scaling group.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ASGAverageCPUUtilization", "ASGAverageNetworkIn", "ASGAverageNetworkOut", "ALBRequestCountPerTarget"]
    #
    #   @return [String]
    #
    # @!attribute resource_label
    #   <p>A label that uniquely identifies a specific Application Load Balancer target group
    #               from which to determine the average request count served by your Auto Scaling group. You can't
    #               specify a resource label unless the target group is attached to the Auto Scaling group.</p>
    #           <p>You create the resource label by appending the final portion of the load balancer ARN
    #               and the final portion of the target group ARN into a single value, separated by a forward
    #               slash (/). The format of the resource label is:</p>
    #           <p>
    #               <code>app/my-alb/778d41231b141a0f/targetgroup/my-alb-target-group/943f017f100becff</code>.</p>
    #           <p>Where:</p>
    #           <ul>
    #               <li>
    #                   <p>app/<load-balancer-name>/<load-balancer-id> is the final portion of
    #                       the load balancer ARN</p>
    #               </li>
    #               <li>
    #                   <p>targetgroup/<target-group-name>/<target-group-id> is the final portion
    #                       of the target group ARN.</p>
    #               </li>
    #            </ul>
    #           <p>To find the ARN for an Application Load Balancer, use the <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html">DescribeLoadBalancers</a> API operation. To find the ARN for the target group, use
    #               the <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html">DescribeTargetGroups</a> API operation.</p>
    #
    #   @return [String]
    #
    PredefinedMetricSpecification = ::Struct.new(
      :predefined_metric_type,
      :resource_label,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PredefinedScalingMetricType
    #
    module PredefinedScalingMetricType
      # No documentation available.
      #
      ASGAverageCPUUtilization = "ASGAverageCPUUtilization"

      # No documentation available.
      #
      ASGAverageNetworkIn = "ASGAverageNetworkIn"

      # No documentation available.
      #
      ASGAverageNetworkOut = "ASGAverageNetworkOut"

      # No documentation available.
      #
      ALBRequestCountPerTarget = "ALBRequestCountPerTarget"
    end

    # <p>Represents a predictive scaling policy configuration to use with Amazon EC2 Auto Scaling.</p>
    #
    # @!attribute metric_specifications
    #   <p>This structure includes the metrics and target utilization to use for predictive
    #               scaling. </p>
    #           <p>This is an array, but we currently only support a single metric specification. That
    #               is, you can specify a target value and a single metric pair, or a target value and one
    #               scaling metric and one load metric.</p>
    #
    #   @return [Array<PredictiveScalingMetricSpecification>]
    #
    # @!attribute mode
    #   <p>The predictive scaling mode. Defaults to <code>ForecastOnly</code> if not
    #               specified.</p>
    #
    #   Enum, one of: ["ForecastAndScale", "ForecastOnly"]
    #
    #   @return [String]
    #
    # @!attribute scheduling_buffer_time
    #   <p>The amount of time, in seconds, by which the instance launch time can be advanced. For
    #               example, the forecast says to add capacity at 10:00 AM, and you choose to pre-launch
    #               instances by 5 minutes. In that case, the instances will be launched at 9:55 AM. The
    #               intention is to give resources time to be provisioned. It can take a few minutes to
    #               launch an EC2 instance. The actual amount of time required depends on several factors,
    #               such as the size of the instance and whether there are startup scripts to complete. </p>
    #           <p>The value must be less than the forecast interval duration of 3600 seconds (60
    #               minutes). Defaults to 300 seconds if not specified. </p>
    #
    #   @return [Integer]
    #
    # @!attribute max_capacity_breach_behavior
    #   <p>Defines the behavior that should be applied if the forecast capacity approaches or
    #               exceeds the maximum capacity of the Auto Scaling group. Defaults to
    #                   <code>HonorMaxCapacity</code> if not specified.</p>
    #           <p>The following are possible values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>HonorMaxCapacity</code> - Amazon EC2 Auto Scaling cannot scale out capacity higher than
    #                       the maximum capacity. The maximum capacity is enforced as a hard limit. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>IncreaseMaxCapacity</code> - Amazon EC2 Auto Scaling can scale out capacity higher than
    #                       the maximum capacity when the forecast capacity is close to or exceeds the
    #                       maximum capacity. The upper limit is determined by the forecasted capacity and
    #                       the value for <code>MaxCapacityBuffer</code>.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["HonorMaxCapacity", "IncreaseMaxCapacity"]
    #
    #   @return [String]
    #
    # @!attribute max_capacity_buffer
    #   <p>The size of the capacity buffer to use when the forecast capacity is close to or
    #               exceeds the maximum capacity. The value is specified as a percentage relative to the
    #               forecast capacity. For example, if the buffer is 10, this means a 10 percent buffer,
    #               such that if the forecast capacity is 50, and the maximum capacity is 40, then the
    #               effective maximum capacity is 55.</p>
    #           <p>If set to 0, Amazon EC2 Auto Scaling may scale capacity higher than the maximum capacity to equal but
    #               not exceed forecast capacity. </p>
    #           <p>Required if the <code>MaxCapacityBreachBehavior</code> property is set to
    #                   <code>IncreaseMaxCapacity</code>, and cannot be used otherwise.</p>
    #
    #   @return [Integer]
    #
    PredictiveScalingConfiguration = ::Struct.new(
      :metric_specifications,
      :mode,
      :scheduling_buffer_time,
      :max_capacity_breach_behavior,
      :max_capacity_buffer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a customized capacity metric for a predictive scaling policy.</p>
    #
    # @!attribute metric_data_queries
    #   <p>One or more metric data queries to provide the data points for a capacity metric. Use
    #               multiple metric data queries only if you are performing a math expression on returned
    #               data. </p>
    #
    #   @return [Array<MetricDataQuery>]
    #
    PredictiveScalingCustomizedCapacityMetric = ::Struct.new(
      :metric_data_queries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a custom load metric for a predictive scaling policy.</p>
    #
    # @!attribute metric_data_queries
    #   <p>One or more metric data queries to provide the data points for a load metric. Use
    #               multiple metric data queries only if you are performing a math expression on returned
    #               data. </p>
    #
    #   @return [Array<MetricDataQuery>]
    #
    PredictiveScalingCustomizedLoadMetric = ::Struct.new(
      :metric_data_queries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a custom scaling metric for a predictive scaling policy.</p>
    #
    # @!attribute metric_data_queries
    #   <p>One or more metric data queries to provide the data points for a scaling metric. Use
    #               multiple metric data queries only if you are performing a math expression on returned
    #               data. </p>
    #
    #   @return [Array<MetricDataQuery>]
    #
    PredictiveScalingCustomizedScalingMetric = ::Struct.new(
      :metric_data_queries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PredictiveScalingMaxCapacityBreachBehavior
    #
    module PredictiveScalingMaxCapacityBreachBehavior
      # No documentation available.
      #
      HonorMaxCapacity = "HonorMaxCapacity"

      # No documentation available.
      #
      IncreaseMaxCapacity = "IncreaseMaxCapacity"
    end

    # <p>This structure specifies the metrics and target utilization settings for a predictive
    #             scaling policy. </p>
    #         <p>You must specify either a metric pair, or a load metric and a scaling metric
    #             individually. Specifying a metric pair instead of individual metrics provides a simpler
    #             way to configure metrics for a scaling policy. You choose the metric pair, and the
    #             policy automatically knows the correct sum and average statistics to use for the load
    #             metric and the scaling metric.</p>
    #         <p>Example</p>
    #         <ul>
    #             <li>
    #                 <p>You create a predictive scaling policy and specify
    #                         <code>ALBRequestCount</code> as the value for the metric pair and
    #                         <code>1000.0</code> as the target value. For this type of metric, you must
    #                     provide the metric dimension for the corresponding target group, so you also
    #                     provide a resource label for the Application Load Balancer target group that is
    #                     attached to your Auto Scaling group.</p>
    #             </li>
    #             <li>
    #                 <p>The number of requests the target group receives per minute provides the load
    #                     metric, and the request count averaged between the members of the target group
    #                     provides the scaling metric. In CloudWatch, this refers to the
    #                         <code>RequestCount</code> and <code>RequestCountPerTarget</code> metrics,
    #                     respectively.</p>
    #             </li>
    #             <li>
    #                 <p>For optimal use of predictive scaling, you adhere to the best practice of
    #                     using a dynamic scaling policy to automatically scale between the minimum
    #                     capacity and maximum capacity in response to real-time changes in resource
    #                     utilization.</p>
    #             </li>
    #             <li>
    #                 <p>Amazon EC2 Auto Scaling consumes data points for the load metric over the last 14 days and
    #                     creates an hourly load forecast for predictive scaling. (A minimum of 24 hours
    #                     of data is required.)</p>
    #             </li>
    #             <li>
    #                 <p>After creating the load forecast, Amazon EC2 Auto Scaling determines when to reduce or
    #                     increase the capacity of your Auto Scaling group in each hour of the forecast period so
    #                     that the average number of requests received by each instance is as close to
    #                     1000 requests per minute as possible at all times.</p>
    #             </li>
    #          </ul>
    #         <p>For information about using custom metrics with predictive scaling, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/predictive-scaling-customized-metric-specification.html">Advanced predictive scaling policy configurations using custom metrics</a> in
    #             the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @!attribute target_value
    #   <p>Specifies the target utilization.</p>
    #           <note>
    #               <p>Some metrics are based on a count instead of a percentage, such as the request
    #                   count for an Application Load Balancer or the number of messages in an SQS queue. If the scaling policy
    #                   specifies one of these metrics, specify the target utilization as the optimal
    #                   average request or message count per instance during any one-minute interval.
    #               </p>
    #           </note>
    #
    #   @return [Float]
    #
    # @!attribute predefined_metric_pair_specification
    #   <p>The predefined metric pair specification from which Amazon EC2 Auto Scaling determines the
    #               appropriate scaling metric and load metric to use.</p>
    #
    #   @return [PredictiveScalingPredefinedMetricPair]
    #
    # @!attribute predefined_scaling_metric_specification
    #   <p>The predefined scaling metric specification.</p>
    #
    #   @return [PredictiveScalingPredefinedScalingMetric]
    #
    # @!attribute predefined_load_metric_specification
    #   <p>The predefined load metric specification.</p>
    #
    #   @return [PredictiveScalingPredefinedLoadMetric]
    #
    # @!attribute customized_scaling_metric_specification
    #   <p>The customized scaling metric specification.</p>
    #
    #   @return [PredictiveScalingCustomizedScalingMetric]
    #
    # @!attribute customized_load_metric_specification
    #   <p>The customized load metric specification.</p>
    #
    #   @return [PredictiveScalingCustomizedLoadMetric]
    #
    # @!attribute customized_capacity_metric_specification
    #   <p>The customized capacity metric specification.</p>
    #
    #   @return [PredictiveScalingCustomizedCapacityMetric]
    #
    PredictiveScalingMetricSpecification = ::Struct.new(
      :target_value,
      :predefined_metric_pair_specification,
      :predefined_scaling_metric_specification,
      :predefined_load_metric_specification,
      :customized_scaling_metric_specification,
      :customized_load_metric_specification,
      :customized_capacity_metric_specification,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PredictiveScalingMode
    #
    module PredictiveScalingMode
      # No documentation available.
      #
      ForecastAndScale = "ForecastAndScale"

      # No documentation available.
      #
      ForecastOnly = "ForecastOnly"
    end

    # <p>Describes a load metric for a predictive scaling policy.</p>
    #         <p>When returned in the output of <code>DescribePolicies</code>, it indicates that a
    #             predictive scaling policy uses individually specified load and scaling metrics instead
    #             of a metric pair.</p>
    #
    # @!attribute predefined_metric_type
    #   <p>The metric type.</p>
    #
    #   Enum, one of: ["ASGTotalCPUUtilization", "ASGTotalNetworkIn", "ASGTotalNetworkOut", "ALBTargetGroupRequestCount"]
    #
    #   @return [String]
    #
    # @!attribute resource_label
    #   <p>A label that uniquely identifies a specific Application Load Balancer target group from which to determine
    #               the request count served by your Auto Scaling group. You can't specify a resource label unless
    #               the target group is attached to the Auto Scaling group.</p>
    #            <p>You create the resource label by appending the final portion of the load balancer ARN
    #               and the final portion of the target group ARN into a single value, separated by a forward
    #               slash (/). The format of the resource label is:</p>
    #           <p>
    #               <code>app/my-alb/778d41231b141a0f/targetgroup/my-alb-target-group/943f017f100becff</code>.</p>
    #           <p>Where:</p>
    #           <ul>
    #               <li>
    #                   <p>app/<load-balancer-name>/<load-balancer-id> is the final portion of
    #                       the load balancer ARN</p>
    #               </li>
    #               <li>
    #                   <p>targetgroup/<target-group-name>/<target-group-id> is the final portion
    #                       of the target group ARN.</p>
    #               </li>
    #            </ul>
    #           <p>To find the ARN for an Application Load Balancer, use the <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html">DescribeLoadBalancers</a> API operation. To find the ARN for the target group, use
    #               the <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html">DescribeTargetGroups</a> API operation.</p>
    #
    #   @return [String]
    #
    PredictiveScalingPredefinedLoadMetric = ::Struct.new(
      :predefined_metric_type,
      :resource_label,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a metric pair for a predictive scaling policy. </p>
    #
    # @!attribute predefined_metric_type
    #   <p>Indicates which metrics to use. There are two different types of metrics for each
    #               metric type: one is a load metric and one is a scaling metric. For example, if the
    #               metric type is <code>ASGCPUUtilization</code>, the Auto Scaling group's total CPU metric is used
    #               as the load metric, and the average CPU metric is used for the scaling metric.</p>
    #
    #   Enum, one of: ["ASGCPUUtilization", "ASGNetworkIn", "ASGNetworkOut", "ALBRequestCount"]
    #
    #   @return [String]
    #
    # @!attribute resource_label
    #   <p>A label that uniquely identifies a specific Application Load Balancer target group from which to determine
    #               the total and average request count served by your Auto Scaling group. You can't specify a
    #               resource label unless the target group is attached to the Auto Scaling group.</p>
    #           <p>You create the resource label by appending the final portion of the load balancer ARN
    #               and the final portion of the target group ARN into a single value, separated by a forward
    #               slash (/). The format of the resource label is:</p>
    #           <p>
    #               <code>app/my-alb/778d41231b141a0f/targetgroup/my-alb-target-group/943f017f100becff</code>.</p>
    #           <p>Where:</p>
    #           <ul>
    #               <li>
    #                   <p>app/<load-balancer-name>/<load-balancer-id> is the final portion of
    #                       the load balancer ARN</p>
    #               </li>
    #               <li>
    #                   <p>targetgroup/<target-group-name>/<target-group-id> is the final portion
    #                       of the target group ARN.</p>
    #               </li>
    #            </ul>
    #           <p>To find the ARN for an Application Load Balancer, use the <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html">DescribeLoadBalancers</a> API operation. To find the ARN for the target group, use
    #               the <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html">DescribeTargetGroups</a> API operation.</p>
    #
    #   @return [String]
    #
    PredictiveScalingPredefinedMetricPair = ::Struct.new(
      :predefined_metric_type,
      :resource_label,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a scaling metric for a predictive scaling policy.</p>
    #         <p>When returned in the output of <code>DescribePolicies</code>, it indicates that a
    #             predictive scaling policy uses individually specified load and scaling metrics instead
    #             of a metric pair.</p>
    #
    # @!attribute predefined_metric_type
    #   <p>The metric type.</p>
    #
    #   Enum, one of: ["ASGAverageCPUUtilization", "ASGAverageNetworkIn", "ASGAverageNetworkOut", "ALBRequestCountPerTarget"]
    #
    #   @return [String]
    #
    # @!attribute resource_label
    #   <p>A label that uniquely identifies a specific Application Load Balancer target group from which to determine
    #               the average request count served by your Auto Scaling group. You can't specify a resource label
    #               unless the target group is attached to the Auto Scaling group.</p>
    #            <p>You create the resource label by appending the final portion of the load balancer ARN
    #               and the final portion of the target group ARN into a single value, separated by a forward
    #               slash (/). The format of the resource label is:</p>
    #           <p>
    #               <code>app/my-alb/778d41231b141a0f/targetgroup/my-alb-target-group/943f017f100becff</code>.</p>
    #           <p>Where:</p>
    #           <ul>
    #               <li>
    #                   <p>app/<load-balancer-name>/<load-balancer-id> is the final portion of
    #                       the load balancer ARN</p>
    #               </li>
    #               <li>
    #                   <p>targetgroup/<target-group-name>/<target-group-id> is the final portion
    #                       of the target group ARN.</p>
    #               </li>
    #            </ul>
    #           <p>To find the ARN for an Application Load Balancer, use the <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html">DescribeLoadBalancers</a> API operation. To find the ARN for the target group, use
    #               the <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html">DescribeTargetGroups</a> API operation.</p>
    #
    #   @return [String]
    #
    PredictiveScalingPredefinedScalingMetric = ::Struct.new(
      :predefined_metric_type,
      :resource_label,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a process type.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html#process-types">Scaling processes</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @!attribute process_name
    #   <p>One of the following processes:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>Launch</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>Terminate</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>AddToLoadBalancer</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>AlarmNotification</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>AZRebalance</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>HealthCheck</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>InstanceRefresh</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ReplaceUnhealthy</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ScheduledActions</code>
    #                   </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    ProcessType = ::Struct.new(
      :process_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute lifecycle_hook_name
    #   <p>The name of the lifecycle hook.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute lifecycle_transition
    #   <p>The instance state to which you want to attach the lifecycle hook. The valid values
    #               are:</p>
    #           <ul>
    #               <li>
    #                   <p>autoscaling:EC2_INSTANCE_LAUNCHING</p>
    #               </li>
    #               <li>
    #                   <p>autoscaling:EC2_INSTANCE_TERMINATING</p>
    #               </li>
    #            </ul>
    #           <p>Required for new lifecycle hooks, but optional when updating existing hooks.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that allows the Auto Scaling group to publish to the specified
    #               notification target.</p>
    #           <p>Valid only if the notification target is an Amazon SNS topic or an Amazon SQS queue. Required
    #               for new lifecycle hooks, but optional when updating existing hooks.</p>
    #
    #   @return [String]
    #
    # @!attribute notification_target_arn
    #   <p>The ARN of the notification target that Amazon EC2 Auto Scaling uses to notify you when an instance
    #               is in the transition state for the lifecycle hook. This target can be either an SQS
    #               queue or an SNS topic.</p>
    #           <p>If you specify an empty string, this overrides the current ARN.</p>
    #           <p>This operation uses the JSON format when sending notifications to an Amazon SQS queue, and
    #               an email key-value pair format when sending notifications to an Amazon SNS topic.</p>
    #           <p>When you specify a notification target, Amazon EC2 Auto Scaling sends it a test message. Test
    #               messages contain the following additional key-value pair: <code>"Event":
    #                   "autoscaling:TEST_NOTIFICATION"</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute notification_metadata
    #   <p>Additional information that you want to include any time Amazon EC2 Auto Scaling sends a message to
    #               the notification target.</p>
    #
    #   @return [String]
    #
    # @!attribute heartbeat_timeout
    #   <p>The maximum time, in seconds, that can elapse before the lifecycle hook times out. The
    #               range is from <code>30</code> to <code>7200</code> seconds. The default value is
    #                   <code>3600</code> seconds (1 hour).</p>
    #           <p>If the lifecycle hook times out, Amazon EC2 Auto Scaling performs the action that you specified in
    #               the <code>DefaultResult</code> parameter. You can prevent the lifecycle hook from timing
    #               out by calling the <a>RecordLifecycleActionHeartbeat</a> API.</p>
    #
    #   @return [Integer]
    #
    # @!attribute default_result
    #   <p>Defines the action the Auto Scaling group should take when the lifecycle hook timeout elapses
    #               or if an unexpected failure occurs. This parameter can be either <code>CONTINUE</code>
    #               or <code>ABANDON</code>. The default value is <code>ABANDON</code>.</p>
    #
    #   @return [String]
    #
    PutLifecycleHookInput = ::Struct.new(
      :lifecycle_hook_name,
      :auto_scaling_group_name,
      :lifecycle_transition,
      :role_arn,
      :notification_target_arn,
      :notification_metadata,
      :heartbeat_timeout,
      :default_result,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutLifecycleHookOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic.</p>
    #
    #   @return [String]
    #
    # @!attribute notification_types
    #   <p>The type of event that causes the notification to be sent. To query the notification
    #               types supported by Amazon EC2 Auto Scaling, call the <a>DescribeAutoScalingNotificationTypes</a> API.</p>
    #
    #   @return [Array<String>]
    #
    PutNotificationConfigurationInput = ::Struct.new(
      :auto_scaling_group_name,
      :topic_arn,
      :notification_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutNotificationConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_name
    #   <p>The name of the policy.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_type
    #   <p>One of the following policy types: </p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>TargetTrackingScaling</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>StepScaling</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SimpleScaling</code> (default)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>PredictiveScaling</code>
    #                   </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute adjustment_type
    #   <p>Specifies how the scaling adjustment is interpreted (for example, an absolute number
    #               or a percentage). The valid values are <code>ChangeInCapacity</code>,
    #                   <code>ExactCapacity</code>, and <code>PercentChangeInCapacity</code>.</p>
    #           <p>Required if the policy type is <code>StepScaling</code> or <code>SimpleScaling</code>.
    #               For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html as-scaling-adjustment">Scaling adjustment types</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute min_adjustment_step
    #   <p>Available for backward compatibility. Use <code>MinAdjustmentMagnitude</code>
    #               instead.</p>
    #
    #   @deprecated
    #
    #   @return [Integer]
    #
    # @!attribute min_adjustment_magnitude
    #   <p>The minimum value to scale by when the adjustment type is
    #                   <code>PercentChangeInCapacity</code>. For example, suppose that you create a step
    #               scaling policy to scale out an Auto Scaling group by 25 percent and you specify a
    #                   <code>MinAdjustmentMagnitude</code> of 2. If the group has 4 instances and the
    #               scaling policy is performed, 25 percent of 4 is 1. However, because you specified a
    #                   <code>MinAdjustmentMagnitude</code> of 2, Amazon EC2 Auto Scaling scales out the group by 2
    #               instances.</p>
    #           <p>Valid only if the policy type is <code>StepScaling</code> or
    #                   <code>SimpleScaling</code>. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html as-scaling-adjustment">Scaling adjustment types</a> in the <i>Amazon EC2 Auto Scaling User
    #               Guide</i>.</p>
    #           <note>
    #               <p>Some Auto Scaling groups use instance weights. In this case, set the
    #                       <code>MinAdjustmentMagnitude</code> to a value that is at least as large as your
    #                   largest instance weight.</p>
    #           </note>
    #
    #   @return [Integer]
    #
    # @!attribute scaling_adjustment
    #   <p>The amount by which to scale, based on the specified adjustment type. A positive value
    #               adds to the current capacity while a negative number removes from the current capacity.
    #               For exact capacity, you must specify a positive value.</p>
    #           <p>Required if the policy type is <code>SimpleScaling</code>. (Not used with any other
    #               policy type.) </p>
    #
    #   @return [Integer]
    #
    # @!attribute cooldown
    #   <p>A cooldown period, in seconds, that applies to a specific simple scaling policy. When
    #               a cooldown period is specified here, it overrides the default cooldown.</p>
    #           <p>Valid only if the policy type is <code>SimpleScaling</code>. For more information, see
    #                   <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html">Scaling
    #                   cooldowns for Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #           <p>Default: None</p>
    #
    #   @return [Integer]
    #
    # @!attribute metric_aggregation_type
    #   <p>The aggregation type for the CloudWatch metrics. The valid values are <code>Minimum</code>,
    #                   <code>Maximum</code>, and <code>Average</code>. If the aggregation type is null, the
    #               value is treated as <code>Average</code>.</p>
    #           <p>Valid only if the policy type is <code>StepScaling</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute step_adjustments
    #   <p>A set of adjustments that enable you to scale based on the size of the alarm
    #               breach.</p>
    #           <p>Required if the policy type is <code>StepScaling</code>. (Not used with any other
    #               policy type.) </p>
    #
    #   @return [Array<StepAdjustment>]
    #
    # @!attribute estimated_instance_warmup
    #   <p>
    #               <i>Not needed if the default instance warmup is defined for the
    #                   group.</i>
    #            </p>
    #           <p>The estimated time, in seconds, until a newly launched instance can contribute to the
    #               CloudWatch metrics. This warm-up period applies to instances launched due to a specific target
    #               tracking or step scaling policy. When a warm-up period is specified here, it overrides
    #               the default instance warmup.</p>
    #           <p>Valid only if the policy type is <code>TargetTrackingScaling</code> or
    #                   <code>StepScaling</code>.</p>
    #           <note>
    #               <p>The default is to use the value for the default instance warmup defined for the
    #                   group. If default instance warmup is null, then <code>EstimatedInstanceWarmup</code>
    #                   falls back to the value of default cooldown.</p>
    #           </note>
    #
    #   @return [Integer]
    #
    # @!attribute target_tracking_configuration
    #   <p>A target tracking scaling policy. Provides support for predefined or custom
    #               metrics.</p>
    #           <p>The following predefined metrics are available:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>ASGAverageCPUUtilization</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ASGAverageNetworkIn</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ASGAverageNetworkOut</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ALBRequestCountPerTarget</code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <p>If you specify <code>ALBRequestCountPerTarget</code> for the metric, you must specify
    #               the <code>ResourceLabel</code> parameter with the
    #                   <code>PredefinedMetricSpecification</code>.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_TargetTrackingConfiguration.html">TargetTrackingConfiguration</a> in the <i>Amazon EC2 Auto Scaling API
    #                   Reference</i>.</p>
    #           <p>Required if the policy type is <code>TargetTrackingScaling</code>.</p>
    #
    #   @return [TargetTrackingConfiguration]
    #
    # @!attribute enabled
    #   <p>Indicates whether the scaling policy is enabled or disabled. The default is enabled.
    #               For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-enable-disable-scaling-policy.html">Disabling a
    #                   scaling policy for an Auto Scaling group</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute predictive_scaling_configuration
    #   <p>A predictive scaling policy. Provides support for predefined and custom
    #               metrics.</p>
    #           <p>Predefined metrics include CPU utilization, network in/out, and the Application Load
    #               Balancer request count.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_PredictiveScalingConfiguration.html">PredictiveScalingConfiguration</a> in the <i>Amazon EC2 Auto Scaling API
    #                   Reference</i>.</p>
    #           <p>Required if the policy type is <code>PredictiveScaling</code>.</p>
    #
    #   @return [PredictiveScalingConfiguration]
    #
    PutScalingPolicyInput = ::Struct.new(
      :auto_scaling_group_name,
      :policy_name,
      :policy_type,
      :adjustment_type,
      :min_adjustment_step,
      :min_adjustment_magnitude,
      :scaling_adjustment,
      :cooldown,
      :metric_aggregation_type,
      :step_adjustments,
      :estimated_instance_warmup,
      :target_tracking_configuration,
      :enabled,
      :predictive_scaling_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the output of PutScalingPolicy.</p>
    #
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the policy.</p>
    #
    #   @return [String]
    #
    # @!attribute alarms
    #   <p>The CloudWatch alarms created for the target tracking scaling policy.</p>
    #
    #   @return [Array<Alarm>]
    #
    PutScalingPolicyOutput = ::Struct.new(
      :policy_arn,
      :alarms,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute scheduled_action_name
    #   <p>The name of this scaling action.</p>
    #
    #   @return [String]
    #
    # @!attribute time
    #   <p>This parameter is no longer used.</p>
    #
    #   @return [Time]
    #
    # @!attribute start_time
    #   <p>The date and time for this action to start, in YYYY-MM-DDThh:mm:ssZ format in UTC/GMT
    #               only and in quotes (for example, <code>"2019-06-01T00:00:00Z"</code>).</p>
    #           <p>If you specify <code>Recurrence</code> and <code>StartTime</code>, Amazon EC2 Auto Scaling performs
    #               the action at this time, and then performs the action based on the specified
    #               recurrence.</p>
    #           <p>If you try to schedule your action in the past, Amazon EC2 Auto Scaling returns an error
    #               message.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The date and time for the recurring schedule to end, in UTC.</p>
    #
    #   @return [Time]
    #
    # @!attribute recurrence
    #   <p>The recurring schedule for this action. This format consists of five fields separated
    #               by white spaces: [Minute] [Hour] [Day_of_Month] [Month_of_Year] [Day_of_Week]. The value
    #               must be in quotes (for example, <code>"30 0 1 1,6,12 *"</code>). For more information
    #               about this format, see <a href="http://crontab.org">Crontab</a>.</p>
    #           <p>When <code>StartTime</code> and <code>EndTime</code> are specified with
    #                   <code>Recurrence</code>, they form the boundaries of when the recurring action
    #               starts and stops.</p>
    #           <p>Cron expressions use Universal Coordinated Time (UTC) by default.</p>
    #
    #   @return [String]
    #
    # @!attribute min_size
    #   <p>The minimum size of the Auto Scaling group.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_size
    #   <p>The maximum size of the Auto Scaling group.</p>
    #
    #   @return [Integer]
    #
    # @!attribute desired_capacity
    #   <p>The desired capacity is the initial capacity of the Auto Scaling group after the scheduled
    #               action runs and the capacity it attempts to maintain. It can scale beyond this capacity
    #               if you add more scaling conditions. </p>
    #
    #   @return [Integer]
    #
    # @!attribute time_zone
    #   <p>Specifies the time zone for a cron expression. If a time zone is not provided, UTC is
    #               used by default. </p>
    #           <p>Valid values are the canonical names of the IANA time zones, derived from the IANA
    #               Time Zone Database (such as <code>Etc/GMT+9</code> or <code>Pacific/Tahiti</code>). For
    #               more information, see <a href="https://en.wikipedia.org/wiki/List_of_tz_database_time_zones">https://en.wikipedia.org/wiki/List_of_tz_database_time_zones</a>.</p>
    #
    #   @return [String]
    #
    PutScheduledUpdateGroupActionInput = ::Struct.new(
      :auto_scaling_group_name,
      :scheduled_action_name,
      :time,
      :start_time,
      :end_time,
      :recurrence,
      :min_size,
      :max_size,
      :desired_capacity,
      :time_zone,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutScheduledUpdateGroupActionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute max_group_prepared_capacity
    #   <p>Specifies the maximum number of instances that are allowed to be in the warm pool or
    #               in any state except <code>Terminated</code> for the Auto Scaling group. This is an optional
    #               property. Specify it only if you do not want the warm pool size to be determined by the
    #               difference between the group's maximum capacity and its desired capacity. </p>
    #           <important>
    #               <p>If a value for <code>MaxGroupPreparedCapacity</code> is not specified, Amazon EC2 Auto Scaling
    #                   launches and maintains the difference between the group's maximum capacity and its
    #                   desired capacity. If you specify a value for <code>MaxGroupPreparedCapacity</code>,
    #                   Amazon EC2 Auto Scaling uses the difference between the <code>MaxGroupPreparedCapacity</code> and
    #                   the desired capacity instead. </p>
    #               <p>The size of the warm pool is dynamic. Only when
    #                       <code>MaxGroupPreparedCapacity</code> and <code>MinSize</code> are set to the
    #                   same value does the warm pool have an absolute size.</p>
    #           </important>
    #           <p>If the desired capacity of the Auto Scaling group is higher than the
    #                   <code>MaxGroupPreparedCapacity</code>, the capacity of the warm pool is 0, unless
    #               you specify a value for <code>MinSize</code>. To remove a value that you previously set,
    #               include the property but specify -1 for the value. </p>
    #
    #   @return [Integer]
    #
    # @!attribute min_size
    #   <p>Specifies the minimum number of instances to maintain in the warm pool. This helps you
    #               to ensure that there is always a certain number of warmed instances available to handle
    #               traffic spikes. Defaults to 0 if not specified.</p>
    #
    #   @return [Integer]
    #
    # @!attribute pool_state
    #   <p>Sets the instance state to transition to after the lifecycle actions are complete.
    #               Default is <code>Stopped</code>.</p>
    #
    #   Enum, one of: ["Stopped", "Running", "Hibernated"]
    #
    #   @return [String]
    #
    # @!attribute instance_reuse_policy
    #   <p>Indicates whether instances in the Auto Scaling group can be returned to the warm pool on
    #               scale in. The default is to terminate instances in the Auto Scaling group when the group scales
    #               in.</p>
    #
    #   @return [InstanceReusePolicy]
    #
    PutWarmPoolInput = ::Struct.new(
      :auto_scaling_group_name,
      :max_group_prepared_capacity,
      :min_size,
      :pool_state,
      :instance_reuse_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutWarmPoolOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute lifecycle_hook_name
    #   <p>The name of the lifecycle hook.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute lifecycle_action_token
    #   <p>A token that uniquely identifies a specific lifecycle action associated with an
    #               instance. Amazon EC2 Auto Scaling sends this token to the notification target that you specified when
    #               you created the lifecycle hook.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_id
    #   <p>The ID of the instance.</p>
    #
    #   @return [String]
    #
    RecordLifecycleActionHeartbeatInput = ::Struct.new(
      :lifecycle_hook_name,
      :auto_scaling_group_name,
      :lifecycle_action_token,
      :instance_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RecordLifecycleActionHeartbeatOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the preferences for an instance refresh.</p>
    #
    # @!attribute min_healthy_percentage
    #   <p>The amount of capacity in the Auto Scaling group that must pass your group's health checks to
    #               allow the operation to continue. The value is expressed as a percentage of the desired
    #               capacity of the Auto Scaling group (rounded up to the nearest integer). The default is
    #                   <code>90</code>.</p>
    #           <p>Setting the minimum healthy percentage to 100 percent limits the rate of replacement
    #               to one instance at a time. In contrast, setting it to 0 percent has the effect of
    #               replacing all instances at the same time. </p>
    #
    #   @return [Integer]
    #
    # @!attribute instance_warmup
    #   <p>
    #               <i>Not needed if the default instance warmup is defined for the
    #                   group.</i>
    #            </p>
    #           <p>The duration of the instance warmup, in seconds.</p>
    #           <note>
    #               <p>The default is to use the value for the default instance warmup defined for the
    #                   group. If default instance warmup is null, then <code>InstanceWarmup</code> falls
    #                   back to the value of the health check grace period.</p>
    #           </note>
    #
    #   @return [Integer]
    #
    # @!attribute checkpoint_percentages
    #   <p>Threshold values for each checkpoint in ascending order. Each number must be unique.
    #               To replace all instances in the Auto Scaling group, the last number in the array must be
    #                   <code>100</code>.</p>
    #           <p>For usage examples, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-adding-checkpoints-instance-refresh.html">Adding
    #                   checkpoints to an instance refresh</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    #   @return [Array<Integer>]
    #
    # @!attribute checkpoint_delay
    #   <p>The amount of time, in seconds, to wait after a checkpoint before continuing. This
    #               property is optional, but if you specify a value for it, you must also specify a value
    #               for <code>CheckpointPercentages</code>. If you specify a value for
    #                   <code>CheckpointPercentages</code> and not for <code>CheckpointDelay</code>, the
    #                   <code>CheckpointDelay</code> defaults to <code>3600</code> (1 hour). </p>
    #
    #   @return [Integer]
    #
    # @!attribute skip_matching
    #   <p>A boolean value that indicates whether skip matching is enabled. If true, then
    #               Amazon EC2 Auto Scaling skips replacing instances that match the desired configuration. If no desired
    #               configuration is specified, then it skips replacing instances that have the same
    #               configuration that is already set on the group. The default is
    #               <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    RefreshPreferences = ::Struct.new(
      :min_healthy_percentage,
      :instance_warmup,
      :checkpoint_percentages,
      :checkpoint_delay,
      :skip_matching,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RefreshStrategy
    #
    module RefreshStrategy
      # No documentation available.
      #
      Rolling = "Rolling"
    end

    # <p>You already have a pending update to an Amazon EC2 Auto Scaling resource (for example, an Auto Scaling group,
    #             instance, or load balancer).</p>
    #
    # @!attribute message
    #   <p></p>
    #
    #   @return [String]
    #
    ResourceContentionFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation can't be performed because the resource is in use.</p>
    #
    # @!attribute message
    #   <p></p>
    #
    #   @return [String]
    #
    ResourceInUseFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute scaling_processes
    #   <p>One or more of the following processes:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>Launch</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>Terminate</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>AddToLoadBalancer</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>AlarmNotification</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>AZRebalance</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>HealthCheck</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>InstanceRefresh</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ReplaceUnhealthy</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ScheduledActions</code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <p>If you omit this parameter, all processes are specified.</p>
    #
    #   @return [Array<String>]
    #
    ResumeProcessesInput = ::Struct.new(
      :auto_scaling_group_name,
      :scaling_processes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ResumeProcessesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation can't be performed because there are scaling activities in
    #             progress.</p>
    #
    # @!attribute message
    #   <p></p>
    #
    #   @return [String]
    #
    ScalingActivityInProgressFault = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ScalingActivityStatusCode
    #
    module ScalingActivityStatusCode
      # No documentation available.
      #
      PendingSpotBidPlacement = "PendingSpotBidPlacement"

      # No documentation available.
      #
      WaitingForSpotInstanceRequestId = "WaitingForSpotInstanceRequestId"

      # No documentation available.
      #
      WaitingForSpotInstanceId = "WaitingForSpotInstanceId"

      # No documentation available.
      #
      WaitingForInstanceId = "WaitingForInstanceId"

      # No documentation available.
      #
      PreInService = "PreInService"

      # No documentation available.
      #
      InProgress = "InProgress"

      # No documentation available.
      #
      WaitingForELBConnectionDraining = "WaitingForELBConnectionDraining"

      # No documentation available.
      #
      MidLifecycleAction = "MidLifecycleAction"

      # No documentation available.
      #
      WaitingForInstanceWarmup = "WaitingForInstanceWarmup"

      # No documentation available.
      #
      Successful = "Successful"

      # No documentation available.
      #
      Failed = "Failed"

      # No documentation available.
      #
      Cancelled = "Cancelled"
    end

    # <p>Describes a scaling policy.</p>
    #
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_name
    #   <p>The name of the scaling policy.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the policy.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_type
    #   <p>One of the following policy types: </p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>TargetTrackingScaling</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>StepScaling</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SimpleScaling</code> (default)</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>PredictiveScaling</code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-target-tracking.html">Target tracking
    #                   scaling policies</a> and <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html">Step and simple scaling
    #                   policies</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute adjustment_type
    #   <p>Specifies how the scaling adjustment is interpreted (for example, an absolute number
    #               or a percentage). The valid values are <code>ChangeInCapacity</code>,
    #                   <code>ExactCapacity</code>, and <code>PercentChangeInCapacity</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute min_adjustment_step
    #   <p>Available for backward compatibility. Use <code>MinAdjustmentMagnitude</code>
    #               instead.</p>
    #
    #   @deprecated
    #
    #   @return [Integer]
    #
    # @!attribute min_adjustment_magnitude
    #   <p>The minimum value to scale by when the adjustment type is
    #                   <code>PercentChangeInCapacity</code>. </p>
    #
    #   @return [Integer]
    #
    # @!attribute scaling_adjustment
    #   <p>The amount by which to scale, based on the specified adjustment type. A positive value
    #               adds to the current capacity while a negative number removes from the current
    #               capacity.</p>
    #
    #   @return [Integer]
    #
    # @!attribute cooldown
    #   <p>The duration of the policy's cooldown period, in seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute step_adjustments
    #   <p>A set of adjustments that enable you to scale based on the size of the alarm
    #               breach.</p>
    #
    #   @return [Array<StepAdjustment>]
    #
    # @!attribute metric_aggregation_type
    #   <p>The aggregation type for the CloudWatch metrics. The valid values are <code>Minimum</code>,
    #                   <code>Maximum</code>, and <code>Average</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute estimated_instance_warmup
    #   <p>The estimated time, in seconds, until a newly launched instance can contribute to the
    #               CloudWatch metrics.</p>
    #
    #   @return [Integer]
    #
    # @!attribute alarms
    #   <p>The CloudWatch alarms related to the policy.</p>
    #
    #   @return [Array<Alarm>]
    #
    # @!attribute target_tracking_configuration
    #   <p>A target tracking scaling policy.</p>
    #
    #   @return [TargetTrackingConfiguration]
    #
    # @!attribute enabled
    #   <p>Indicates whether the policy is enabled (<code>true</code>) or disabled
    #                   (<code>false</code>).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute predictive_scaling_configuration
    #   <p>A predictive scaling policy.</p>
    #
    #   @return [PredictiveScalingConfiguration]
    #
    ScalingPolicy = ::Struct.new(
      :auto_scaling_group_name,
      :policy_name,
      :policy_arn,
      :policy_type,
      :adjustment_type,
      :min_adjustment_step,
      :min_adjustment_magnitude,
      :scaling_adjustment,
      :cooldown,
      :step_adjustments,
      :metric_aggregation_type,
      :estimated_instance_warmup,
      :alarms,
      :target_tracking_configuration,
      :enabled,
      :predictive_scaling_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a scheduled scaling
    #             action.</p>
    #
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute scheduled_action_name
    #   <p>The name of the scheduled action.</p>
    #
    #   @return [String]
    #
    # @!attribute scheduled_action_arn
    #   <p>The Amazon Resource Name (ARN) of the scheduled action.</p>
    #
    #   @return [String]
    #
    # @!attribute time
    #   <p>This parameter is no longer used.</p>
    #
    #   @return [Time]
    #
    # @!attribute start_time
    #   <p>The date and time in UTC for this action to start. For example,
    #                   <code>"2019-06-01T00:00:00Z"</code>. </p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The date and time in UTC for the recurring schedule to end. For example,
    #                   <code>"2019-06-01T00:00:00Z"</code>. </p>
    #
    #   @return [Time]
    #
    # @!attribute recurrence
    #   <p>The recurring schedule for the action, in Unix cron syntax format.</p>
    #           <p>When <code>StartTime</code> and <code>EndTime</code> are specified with
    #                   <code>Recurrence</code>, they form the boundaries of when the recurring action
    #               starts and stops.</p>
    #
    #   @return [String]
    #
    # @!attribute min_size
    #   <p>The minimum size of the Auto Scaling group.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_size
    #   <p>The maximum size of the Auto Scaling group.</p>
    #
    #   @return [Integer]
    #
    # @!attribute desired_capacity
    #   <p>The desired capacity is the initial capacity of the Auto Scaling group after the scheduled
    #               action runs and the capacity it attempts to maintain.</p>
    #
    #   @return [Integer]
    #
    # @!attribute time_zone
    #   <p>The time zone for the cron expression.</p>
    #
    #   @return [String]
    #
    ScheduledUpdateGroupAction = ::Struct.new(
      :auto_scaling_group_name,
      :scheduled_action_name,
      :scheduled_action_arn,
      :time,
      :start_time,
      :end_time,
      :recurrence,
      :min_size,
      :max_size,
      :desired_capacity,
      :time_zone,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes information used for one or more scheduled scaling action updates in a <a>BatchPutScheduledUpdateGroupAction</a> operation.</p>
    #
    # @!attribute scheduled_action_name
    #   <p>The name of the scaling action.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The date and time for the action to start, in YYYY-MM-DDThh:mm:ssZ format in UTC/GMT
    #               only and in quotes (for example, <code>"2019-06-01T00:00:00Z"</code>).</p>
    #           <p>If you specify <code>Recurrence</code> and <code>StartTime</code>, Amazon EC2 Auto Scaling performs
    #               the action at this time, and then performs the action based on the specified
    #               recurrence.</p>
    #           <p>If you try to schedule the action in the past, Amazon EC2 Auto Scaling returns an error
    #               message.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The date and time for the recurring schedule to end, in UTC.</p>
    #
    #   @return [Time]
    #
    # @!attribute recurrence
    #   <p>The recurring schedule for the action, in Unix cron syntax format. This format
    #               consists of five fields separated by white spaces: [Minute] [Hour] [Day_of_Month]
    #               [Month_of_Year] [Day_of_Week]. The value must be in quotes (for example, <code>"30 0 1
    #                   1,6,12 *"</code>). For more information about this format, see <a href="http://crontab.org">Crontab</a>.</p>
    #           <p>When <code>StartTime</code> and <code>EndTime</code> are specified with
    #                   <code>Recurrence</code>, they form the boundaries of when the recurring action
    #               starts and stops.</p>
    #           <p>Cron expressions use Universal Coordinated Time (UTC) by default.</p>
    #
    #   @return [String]
    #
    # @!attribute min_size
    #   <p>The minimum size of the Auto Scaling group.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_size
    #   <p>The maximum size of the Auto Scaling group.</p>
    #
    #   @return [Integer]
    #
    # @!attribute desired_capacity
    #   <p>The desired capacity is the initial capacity of the Auto Scaling group after the scheduled
    #               action runs and the capacity it attempts to maintain.</p>
    #
    #   @return [Integer]
    #
    # @!attribute time_zone
    #   <p>Specifies the time zone for a cron expression. If a time zone is not provided, UTC is
    #               used by default. </p>
    #           <p>Valid values are the canonical names of the IANA time zones, derived from the IANA
    #               Time Zone Database (such as <code>Etc/GMT+9</code> or <code>Pacific/Tahiti</code>). For
    #               more information, see <a href="https://en.wikipedia.org/wiki/List_of_tz_database_time_zones">https://en.wikipedia.org/wiki/List_of_tz_database_time_zones</a>.</p>
    #
    #   @return [String]
    #
    ScheduledUpdateGroupActionRequest = ::Struct.new(
      :scheduled_action_name,
      :start_time,
      :end_time,
      :recurrence,
      :min_size,
      :max_size,
      :desired_capacity,
      :time_zone,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The service-linked role is not yet ready for use.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceLinkedRoleFailure = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute desired_capacity
    #   <p>The desired capacity is the initial capacity of the Auto Scaling group after this operation
    #               completes and the capacity it attempts to maintain.</p>
    #
    #   @return [Integer]
    #
    # @!attribute honor_cooldown
    #   <p>Indicates whether Amazon EC2 Auto Scaling waits for the cooldown period to complete before initiating
    #               a scaling activity to set your Auto Scaling group to its new capacity. By default, Amazon EC2 Auto Scaling does
    #               not honor the cooldown period during manual scaling activities.</p>
    #
    #   @return [Boolean]
    #
    SetDesiredCapacityInput = ::Struct.new(
      :auto_scaling_group_name,
      :desired_capacity,
      :honor_cooldown,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    SetDesiredCapacityOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The ID of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute health_status
    #   <p>The health status of the instance. Set to <code>Healthy</code> to have the instance
    #               remain in service. Set to <code>Unhealthy</code> to have the instance be out of service.
    #               Amazon EC2 Auto Scaling terminates and replaces the unhealthy instance.</p>
    #
    #   @return [String]
    #
    # @!attribute should_respect_grace_period
    #   <p>If the Auto Scaling group of the specified instance has a <code>HealthCheckGracePeriod</code>
    #               specified for the group, by default, this call respects the grace period. Set this to
    #                   <code>False</code>, to have the call not respect the grace period associated with
    #               the group.</p>
    #
    #           <p>For more information about the health check grace
    #               period, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_CreateAutoScalingGroup.html">CreateAutoScalingGroup</a> in the <i>Amazon EC2 Auto Scaling API
    #               Reference</i>.</p>
    #
    #   @return [Boolean]
    #
    SetInstanceHealthInput = ::Struct.new(
      :instance_id,
      :health_status,
      :should_respect_grace_period,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    SetInstanceHealthOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_ids
    #   <p>One or more instance IDs. You can specify up to 50 instances.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute protected_from_scale_in
    #   <p>Indicates whether the instance is protected from termination by Amazon EC2 Auto Scaling when scaling
    #               in.</p>
    #
    #   @return [Boolean]
    #
    SetInstanceProtectionInput = ::Struct.new(
      :instance_ids,
      :auto_scaling_group_name,
      :protected_from_scale_in,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    SetInstanceProtectionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute strategy
    #   <p>The strategy to use for the instance refresh. The only valid value is
    #                   <code>Rolling</code>.</p>
    #           <p>A rolling update helps you update your instances gradually. A rolling update can fail
    #               due to failed health checks or if instances are on standby or are protected from scale
    #               in. If the rolling update process fails, any instances that are replaced are not rolled
    #               back to their previous configuration. </p>
    #
    #   Enum, one of: ["Rolling"]
    #
    #   @return [String]
    #
    # @!attribute desired_configuration
    #   <p>The desired configuration. For example, the desired configuration can specify a new
    #               launch template or a new version of the current launch template.</p>
    #           <p>Once the instance refresh succeeds, Amazon EC2 Auto Scaling updates the settings of the Auto Scaling group to
    #               reflect the new desired configuration. </p>
    #           <note>
    #               <p>When you specify a new launch template or a new version of the current launch
    #                   template for your desired configuration, consider enabling the
    #                       <code>SkipMatching</code> property in preferences. If it's enabled, Amazon EC2 Auto Scaling
    #                   skips replacing instances that already use the specified launch template and
    #                   version. This can help you reduce the number of replacements that are required to
    #                   apply updates. </p>
    #           </note>
    #
    #   @return [DesiredConfiguration]
    #
    # @!attribute preferences
    #   <p>Set of preferences associated with the instance refresh request. If not provided, the
    #               default values are used.</p>
    #
    #   @return [RefreshPreferences]
    #
    StartInstanceRefreshInput = ::Struct.new(
      :auto_scaling_group_name,
      :strategy,
      :desired_configuration,
      :preferences,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_refresh_id
    #   <p>A unique ID for tracking the progress of the request.</p>
    #
    #   @return [String]
    #
    StartInstanceRefreshOutput = ::Struct.new(
      :instance_refresh_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes information used to create a step adjustment for a step scaling
    #             policy.</p>
    #         <p>For the following examples, suppose that you have an alarm with a breach threshold of
    #             50:</p>
    #         <ul>
    #             <li>
    #                 <p>To trigger the adjustment when the metric is greater than or equal to 50 and
    #                     less than 60, specify a lower bound of 0 and an upper bound of 10.</p>
    #             </li>
    #             <li>
    #                 <p>To trigger the adjustment when the metric is greater than 40 and less than or
    #                     equal to 50, specify a lower bound of -10 and an upper bound of 0.</p>
    #             </li>
    #          </ul>
    #         <p>There are a few rules for the step adjustments for your step policy:</p>
    #         <ul>
    #             <li>
    #                 <p>The ranges of your step adjustments can't overlap or have a gap.</p>
    #             </li>
    #             <li>
    #                 <p>At most, one step adjustment can have a null lower bound. If one step
    #                     adjustment has a negative lower bound, then there must be a step adjustment with
    #                     a null lower bound.</p>
    #             </li>
    #             <li>
    #                 <p>At most, one step adjustment can have a null upper bound. If one step
    #                     adjustment has a positive upper bound, then there must be a step adjustment with
    #                     a null upper bound.</p>
    #             </li>
    #             <li>
    #                 <p>The upper and lower bound can't be null in the same step adjustment.</p>
    #             </li>
    #          </ul>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html#as-scaling-steps">Step
    #                 adjustments</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @!attribute metric_interval_lower_bound
    #   <p>The lower bound for the difference between the alarm threshold and the CloudWatch metric. If
    #               the metric value is above the breach threshold, the lower bound is inclusive (the metric
    #               must be greater than or equal to the threshold plus the lower bound). Otherwise, it is
    #               exclusive (the metric must be greater than the threshold plus the lower bound). A null
    #               value indicates negative infinity.</p>
    #
    #   @return [Float]
    #
    # @!attribute metric_interval_upper_bound
    #   <p>The upper bound for the difference between the alarm threshold and the CloudWatch metric. If
    #               the metric value is above the breach threshold, the upper bound is exclusive (the metric
    #               must be less than the threshold plus the upper bound). Otherwise, it is inclusive (the
    #               metric must be less than or equal to the threshold plus the upper bound). A null value
    #               indicates positive infinity.</p>
    #           <p>The upper bound must be greater than the lower bound.</p>
    #
    #   @return [Float]
    #
    # @!attribute scaling_adjustment
    #   <p>The amount by which to scale, based on the specified adjustment type. A positive value
    #               adds to the current capacity while a negative number removes from the current
    #               capacity.</p>
    #
    #   @return [Integer]
    #
    StepAdjustment = ::Struct.new(
      :metric_interval_lower_bound,
      :metric_interval_upper_bound,
      :scaling_adjustment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute scaling_processes
    #   <p>One or more of the following processes:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>Launch</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>Terminate</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>AddToLoadBalancer</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>AlarmNotification</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>AZRebalance</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>HealthCheck</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>InstanceRefresh</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ReplaceUnhealthy</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ScheduledActions</code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <p>If you omit this parameter, all processes are specified.</p>
    #
    #   @return [Array<String>]
    #
    SuspendProcessesInput = ::Struct.new(
      :auto_scaling_group_name,
      :scaling_processes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    SuspendProcessesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an auto scaling process that has been suspended.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html#process-types">Scaling processes</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @!attribute process_name
    #   <p>The name of the suspended process.</p>
    #
    #   @return [String]
    #
    # @!attribute suspension_reason
    #   <p>The reason that the process was suspended.</p>
    #
    #   @return [String]
    #
    SuspendedProcess = ::Struct.new(
      :process_name,
      :suspension_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a tag for an Auto Scaling group.</p>
    #
    # @!attribute resource_id
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of resource. The only supported value is
    #               <code>auto-scaling-group</code>.</p>
    #
    #   @return [String]
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
    # @!attribute propagate_at_launch
    #   <p>Determines whether the tag is added to new instances as they are launched in the
    #               group.</p>
    #
    #   @return [Boolean]
    #
    Tag = ::Struct.new(
      :resource_id,
      :resource_type,
      :key,
      :value,
      :propagate_at_launch,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a tag for an Auto Scaling group.</p>
    #
    # @!attribute resource_id
    #   <p>The name of the group.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of resource. The only supported value is
    #               <code>auto-scaling-group</code>.</p>
    #
    #   @return [String]
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
    # @!attribute propagate_at_launch
    #   <p>Determines whether the tag is added to new instances as they are launched in the
    #               group.</p>
    #
    #   @return [Boolean]
    #
    TagDescription = ::Struct.new(
      :resource_id,
      :resource_type,
      :key,
      :value,
      :propagate_at_launch,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a target tracking scaling policy configuration to use with Amazon EC2 Auto Scaling.</p>
    #
    # @!attribute predefined_metric_specification
    #   <p>A predefined metric. You must specify either a predefined metric or a customized
    #               metric.</p>
    #
    #   @return [PredefinedMetricSpecification]
    #
    # @!attribute customized_metric_specification
    #   <p>A customized metric. You must specify either a predefined metric or a customized
    #               metric.</p>
    #
    #   @return [CustomizedMetricSpecification]
    #
    # @!attribute target_value
    #   <p>The target value for the metric.</p>
    #           <note>
    #               <p>Some metrics are based on a count instead of a percentage, such as the request
    #                   count for an Application Load Balancer or the number of messages in an SQS queue. If the scaling policy
    #                   specifies one of these metrics, specify the target utilization as the optimal
    #                   average request or message count per instance during any one-minute interval.
    #               </p>
    #           </note>
    #
    #   @return [Float]
    #
    # @!attribute disable_scale_in
    #   <p>Indicates whether scaling in by the target tracking scaling policy is disabled. If
    #               scaling in is disabled, the target tracking scaling policy doesn't remove instances from
    #               the Auto Scaling group. Otherwise, the target tracking scaling policy can remove instances from
    #               the Auto Scaling group. The default is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    TargetTrackingConfiguration = ::Struct.new(
      :predefined_metric_specification,
      :customized_metric_specification,
      :target_value,
      :disable_scale_in,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The ID of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute should_decrement_desired_capacity
    #   <p>Indicates whether terminating the instance also decrements the size of the Auto Scaling
    #               group.</p>
    #
    #   @return [Boolean]
    #
    TerminateInstanceInAutoScalingGroupInput = ::Struct.new(
      :instance_id,
      :should_decrement_desired_capacity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute activity
    #   <p>A scaling activity.</p>
    #
    #   @return [Activity]
    #
    TerminateInstanceInAutoScalingGroupOutput = ::Struct.new(
      :activity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the minimum and maximum for the <code>TotalLocalStorageGB</code> object when
    #             you specify <a>InstanceRequirements</a> for an Auto Scaling group.</p>
    #
    # @!attribute min
    #   <p>The storage minimum in GB.</p>
    #
    #   @return [Float]
    #
    # @!attribute max
    #   <p>The storage maximum in GB.</p>
    #
    #   @return [Float]
    #
    TotalLocalStorageGBRequest = ::Struct.new(
      :min,
      :max,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_configuration_name
    #   <p>The name of the launch configuration. If you specify
    #                   <code>LaunchConfigurationName</code> in your update request, you can't specify
    #                   <code>LaunchTemplate</code> or <code>MixedInstancesPolicy</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_template
    #   <p>The launch template and version to use to specify the updates. If you specify
    #                   <code>LaunchTemplate</code> in your update request, you can't specify
    #                   <code>LaunchConfigurationName</code> or <code>MixedInstancesPolicy</code>.</p>
    #
    #   @return [LaunchTemplateSpecification]
    #
    # @!attribute mixed_instances_policy
    #   <p>An embedded object that specifies a mixed instances policy. For more information, see
    #                   <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups.html">Auto Scaling
    #                   groups with multiple instance types and purchase options</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    #   @return [MixedInstancesPolicy]
    #
    # @!attribute min_size
    #   <p>The minimum size of the Auto Scaling group.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_size
    #   <p>The maximum size of the Auto Scaling group.</p>
    #           <note>
    #               <p>With a mixed instances policy that uses instance weighting, Amazon EC2 Auto Scaling may need to
    #                   go above <code>MaxSize</code> to meet your capacity requirements. In this event,
    #                   Amazon EC2 Auto Scaling will never go above <code>MaxSize</code> by more than your largest instance
    #                   weight (weights that define how many units each instance contributes to the desired
    #                   capacity of the group).</p>
    #           </note>
    #
    #   @return [Integer]
    #
    # @!attribute desired_capacity
    #   <p>The desired capacity is the initial capacity of the Auto Scaling group after this operation
    #               completes and the capacity it attempts to maintain. This number must be greater than or
    #               equal to the minimum size of the group and less than or equal to the maximum size of the
    #               group.</p>
    #
    #   @return [Integer]
    #
    # @!attribute default_cooldown
    #   <p>
    #               <i>Only needed if you use simple scaling policies.</i>
    #            </p>
    #           <p>The amount of time, in seconds, between one scaling activity ending and another one
    #               starting due to simple scaling policies. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html">Scaling cooldowns
    #                   for Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute availability_zones
    #   <p>One or more Availability Zones for the group.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute health_check_type
    #   <p>The service to use for the health checks. The valid values are <code>EC2</code> and
    #                   <code>ELB</code>. If you configure an Auto Scaling group to use <code>ELB</code> health
    #               checks, it considers the instance unhealthy if it fails either the EC2 status checks or
    #               the load balancer health checks.</p>
    #
    #   @return [String]
    #
    # @!attribute health_check_grace_period
    #   <p>The amount of time, in seconds, that Amazon EC2 Auto Scaling waits before checking the health status
    #               of an EC2 instance that has come into service and marking it unhealthy due to a failed
    #               Elastic Load Balancing or custom health check. This is useful if your instances do not immediately pass
    #               these health checks after they enter the <code>InService</code> state. For more
    #               information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html health-check-grace-period">Health
    #                   check grace period</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute placement_group
    #   <p>The name of an existing placement group into which to launch your instances. For more
    #               information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html">Placement groups</a> in the
    #                   <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
    #           <note>
    #               <p>A <i>cluster</i> placement group is a logical grouping of instances
    #                   within a single Availability Zone. You cannot specify multiple Availability Zones
    #                   and a cluster placement group. </p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute vpc_zone_identifier
    #   <p>A comma-separated list of subnet IDs for a virtual private cloud (VPC). If you specify
    #                   <code>VPCZoneIdentifier</code> with <code>AvailabilityZones</code>, the subnets that
    #               you specify for this parameter must reside in those Availability Zones.</p>
    #
    #   @return [String]
    #
    # @!attribute termination_policies
    #   <p>A policy or a list of policies that are used to select the instances to terminate. The
    #               policies are executed in the order that you list them. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html">Controlling which Auto Scaling instances terminate during scale in</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute new_instances_protected_from_scale_in
    #   <p>Indicates whether newly launched instances are protected from termination by Amazon EC2 Auto Scaling
    #               when scaling in. For more information about preventing instances from terminating on
    #               scale in, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-protection.html">Using
    #                   instance scale-in protection</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute service_linked_role_arn
    #   <p>The Amazon Resource Name (ARN) of the service-linked role that the Auto Scaling group uses to
    #               call other Amazon Web Services on your behalf. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-service-linked-role.html">Service-linked
    #                   roles</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_instance_lifetime
    #   <p>The maximum amount of time, in seconds, that an instance can be in service. The
    #               default is null. If specified, the value must be either 0 or a number equal to or
    #               greater than 86,400 seconds (1 day). To clear a previously set value, specify a new
    #               value of 0. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-max-instance-lifetime.html">Replacing Auto Scaling
    #                   instances based on maximum instance lifetime</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute capacity_rebalance
    #   <p>Enables or disables Capacity Rebalancing. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-capacity-rebalancing.html">Amazon EC2 Auto Scaling
    #                   Capacity Rebalancing</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute context
    #   <p>Reserved.</p>
    #
    #   @return [String]
    #
    # @!attribute desired_capacity_type
    #   <p>The unit of measurement for the value specified for desired capacity. Amazon EC2 Auto Scaling
    #               supports <code>DesiredCapacityType</code> for attribute-based instance type selection
    #               only. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-instance-type-requirements.html">Creating
    #                   an Auto Scaling group using attribute-based instance type selection</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #           <p>By default, Amazon EC2 Auto Scaling specifies <code>units</code>, which translates into number of
    #               instances.</p>
    #           <p>Valid values: <code>units</code> | <code>vcpu</code> | <code>memory-mib</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute default_instance_warmup
    #   <p>The amount of time, in seconds, until a newly launched instance can contribute to the
    #               Amazon CloudWatch metrics. This delay lets an instance finish initializing before Amazon EC2 Auto Scaling
    #               aggregates instance metrics, resulting in more reliable usage data. Set this value equal
    #               to the amount of time that it takes for resource consumption to become stable after an
    #               instance reaches the <code>InService</code> state. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-default-instance-warmup.html">Set
    #                   the default instance warmup for an Auto Scaling group</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #           <important>
    #               <p>To manage your warm-up settings at the group level, we recommend that you set the
    #                   default instance warmup, <i>even if its value is set to 0 seconds</i>.
    #                   This also optimizes the performance of scaling policies that scale continuously,
    #                   such as target tracking and step scaling policies. </p>
    #               <p>If you need to remove a value that you previously set, include the property but
    #                   specify <code>-1</code> for the value. However, we strongly recommend keeping the
    #                   default instance warmup enabled by specifying a minimum value of
    #                   <code>0</code>.</p>
    #           </important>
    #
    #   @return [Integer]
    #
    UpdateAutoScalingGroupInput = ::Struct.new(
      :auto_scaling_group_name,
      :launch_configuration_name,
      :launch_template,
      :mixed_instances_policy,
      :min_size,
      :max_size,
      :desired_capacity,
      :default_cooldown,
      :availability_zones,
      :health_check_type,
      :health_check_grace_period,
      :placement_group,
      :vpc_zone_identifier,
      :termination_policies,
      :new_instances_protected_from_scale_in,
      :service_linked_role_arn,
      :max_instance_lifetime,
      :capacity_rebalance,
      :context,
      :desired_capacity_type,
      :default_instance_warmup,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateAutoScalingGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the minimum and maximum for the <code>VCpuCount</code> object when you
    #             specify <a>InstanceRequirements</a> for an Auto Scaling group.</p>
    #
    # @!attribute min
    #   <p>The minimum number of vCPUs.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max
    #   <p>The maximum number of vCPUs.</p>
    #
    #   @return [Integer]
    #
    VCpuCountRequest = ::Struct.new(
      :min,
      :max,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a warm pool configuration. </p>
    #
    # @!attribute max_group_prepared_capacity
    #   <p>The maximum number of instances that are allowed to be in the warm pool or in any
    #               state except <code>Terminated</code> for the Auto Scaling group.</p>
    #
    #   @return [Integer]
    #
    # @!attribute min_size
    #   <p>The minimum number of instances to maintain in the warm pool.</p>
    #
    #   @return [Integer]
    #
    # @!attribute pool_state
    #   <p>The instance state to transition to after the lifecycle actions are complete.</p>
    #
    #   Enum, one of: ["Stopped", "Running", "Hibernated"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of a warm pool that is marked for deletion.</p>
    #
    #   Enum, one of: ["PendingDelete"]
    #
    #   @return [String]
    #
    # @!attribute instance_reuse_policy
    #   <p>The instance reuse policy.</p>
    #
    #   @return [InstanceReusePolicy]
    #
    WarmPoolConfiguration = ::Struct.new(
      :max_group_prepared_capacity,
      :min_size,
      :pool_state,
      :status,
      :instance_reuse_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for WarmPoolState
    #
    module WarmPoolState
      # No documentation available.
      #
      Stopped = "Stopped"

      # No documentation available.
      #
      Running = "Running"

      # No documentation available.
      #
      Hibernated = "Hibernated"
    end

    # Includes enum constants for WarmPoolStatus
    #
    module WarmPoolStatus
      # No documentation available.
      #
      PendingDelete = "PendingDelete"
    end

  end
end
