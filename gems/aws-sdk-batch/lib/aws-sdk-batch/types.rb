# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Batch
  module Types

    # Includes enum constants for ArrayJobDependency
    #
    module ArrayJobDependency
      # No documentation available.
      #
      N_TO_N = "N_TO_N"

      # No documentation available.
      #
      SEQUENTIAL = "SEQUENTIAL"
    end

    # <p>An object representing an Batch array job.</p>
    #
    # @!attribute size
    #   <p>The size of the array job.</p>
    #
    #   @return [Integer]
    #
    ArrayProperties = ::Struct.new(
      :size,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing the array properties of a job.</p>
    #
    # @!attribute status_summary
    #   <p>A summary of the number of array job children in each available job status. This parameter is returned for
    #      parent array jobs.</p>
    #
    #   @return [Hash<String, Integer>]
    #
    # @!attribute size
    #   <p>The size of the array job. This parameter is returned for parent array jobs.</p>
    #
    #   @return [Integer]
    #
    # @!attribute index
    #   <p>The job index within the array that's associated with this job. This parameter is returned for array job
    #      children.</p>
    #
    #   @return [Integer]
    #
    ArrayPropertiesDetail = ::Struct.new(
      :status_summary,
      :size,
      :index,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing the array properties of a job.</p>
    #
    # @!attribute size
    #   <p>The size of the array job. This parameter is returned for parent array jobs.</p>
    #
    #   @return [Integer]
    #
    # @!attribute index
    #   <p>The job index within the array that's associated with this job. This parameter is returned for children of array
    #      jobs.</p>
    #
    #   @return [Integer]
    #
    ArrayPropertiesSummary = ::Struct.new(
      :size,
      :index,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AssignPublicIp
    #
    module AssignPublicIp
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # <p>An object representing the details of a container that's part of a job attempt.</p>
    #
    # @!attribute container_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon ECS container instance that hosts the job attempt.</p>
    #
    #   @return [String]
    #
    # @!attribute task_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon ECS task that's associated with the job attempt. Each container attempt receives a task
    #      ARN when they reach the <code>STARTING</code> status.</p>
    #
    #   @return [String]
    #
    # @!attribute exit_code
    #   <p>The exit code for the job attempt. A non-zero exit code is considered a failure.</p>
    #
    #   @return [Integer]
    #
    # @!attribute reason
    #   <p>A short (255 max characters) human-readable string to provide additional details about a running or stopped
    #      container.</p>
    #
    #   @return [String]
    #
    # @!attribute log_stream_name
    #   <p>The name of the CloudWatch Logs log stream associated with the container. The log group for Batch jobs is
    #       <code>/aws/batch/job</code>. Each container attempt receives a log stream name when they reach the
    #       <code>RUNNING</code> status.</p>
    #
    #   @return [String]
    #
    # @!attribute network_interfaces
    #   <p>The network interfaces associated with the job attempt.</p>
    #
    #   @return [Array<NetworkInterface>]
    #
    AttemptContainerDetail = ::Struct.new(
      :container_instance_arn,
      :task_arn,
      :exit_code,
      :reason,
      :log_stream_name,
      :network_interfaces,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing a job attempt.</p>
    #
    # @!attribute container
    #   <p>Details about the container in this job attempt.</p>
    #
    #   @return [AttemptContainerDetail]
    #
    # @!attribute started_at
    #   <p>The Unix timestamp (in milliseconds) for when the attempt was started (when the attempt transitioned from the
    #       <code>STARTING</code> state to the <code>RUNNING</code> state).</p>
    #
    #   @return [Integer]
    #
    # @!attribute stopped_at
    #   <p>The Unix timestamp (in milliseconds) for when the attempt was stopped (when the attempt transitioned from the
    #       <code>RUNNING</code> state to a terminal state, such as <code>SUCCEEDED</code> or <code>FAILED</code>).</p>
    #
    #   @return [Integer]
    #
    # @!attribute status_reason
    #   <p>A short, human-readable string to provide additional details about the current status of the job attempt.</p>
    #
    #   @return [String]
    #
    AttemptDetail = ::Struct.new(
      :container,
      :started_at,
      :stopped_at,
      :status_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CEState
    #
    module CEState
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Includes enum constants for CEStatus
    #
    module CEStatus
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      DELETED = "DELETED"

      # No documentation available.
      #
      VALID = "VALID"

      # No documentation available.
      #
      INVALID = "INVALID"
    end

    # Includes enum constants for CEType
    #
    module CEType
      # No documentation available.
      #
      MANAGED = "MANAGED"

      # No documentation available.
      #
      UNMANAGED = "UNMANAGED"
    end

    # Includes enum constants for CRAllocationStrategy
    #
    module CRAllocationStrategy
      # No documentation available.
      #
      BEST_FIT = "BEST_FIT"

      # No documentation available.
      #
      BEST_FIT_PROGRESSIVE = "BEST_FIT_PROGRESSIVE"

      # No documentation available.
      #
      SPOT_CAPACITY_OPTIMIZED = "SPOT_CAPACITY_OPTIMIZED"
    end

    # Includes enum constants for CRType
    #
    module CRType
      # No documentation available.
      #
      EC2 = "EC2"

      # No documentation available.
      #
      SPOT = "SPOT"

      # No documentation available.
      #
      FARGATE = "FARGATE"

      # No documentation available.
      #
      FARGATE_SPOT = "FARGATE_SPOT"
    end

    # Includes enum constants for CRUpdateAllocationStrategy
    #
    module CRUpdateAllocationStrategy
      # No documentation available.
      #
      BEST_FIT_PROGRESSIVE = "BEST_FIT_PROGRESSIVE"

      # No documentation available.
      #
      SPOT_CAPACITY_OPTIMIZED = "SPOT_CAPACITY_OPTIMIZED"
    end

    # <p>Contains the parameters for <code>CancelJob</code>.</p>
    #
    # @!attribute job_id
    #   <p>The Batch job ID of the job to cancel.</p>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>A message to attach to the job that explains the reason for canceling it. This message is returned by future
    #       <a>DescribeJobs</a> operations on the job. This message is also recorded in the Batch activity
    #      logs.</p>
    #
    #   @return [String]
    #
    CancelJobInput = ::Struct.new(
      :job_id,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CancelJobOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>These errors are usually caused by a client action, such as using an action or resource on behalf of a user that
    #    doesn't have permissions to use the action or resource, or specifying an identifier that's not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ClientException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing an Batch compute environment.</p>
    #
    # @!attribute compute_environment_name
    #   <p>The name of the compute environment. It can be up to 128 letters long. It can contain uppercase and
    #    lowercase letters, numbers, hyphens (-), and underscores (_).</p>
    #
    #   @return [String]
    #
    # @!attribute compute_environment_arn
    #   <p>The Amazon Resource Name (ARN) of the compute environment.</p>
    #
    #   @return [String]
    #
    # @!attribute unmanagedv_cpus
    #   <p>The maximum number of VCPUs expected to be used for an unmanaged compute environment.</p>
    #
    #   @return [Integer]
    #
    # @!attribute ecs_cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the underlying Amazon ECS cluster used by the compute environment.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags applied to the compute environment.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute type
    #   <p>The type of the compute environment: <code>MANAGED</code> or <code>UNMANAGED</code>. For more information, see
    #       <a href="https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html">Compute environments</a> in the
    #       <i>Batch User Guide</i>.</p>
    #
    #   Enum, one of: ["MANAGED", "UNMANAGED"]
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the compute environment. The valid values are <code>ENABLED</code> or <code>DISABLED</code>.</p>
    #            <p>If the state is <code>ENABLED</code>, then the Batch scheduler can attempt to place jobs from an associated
    #      job queue on the compute resources within the environment. If the compute environment is managed, then it can scale
    #      its instances out or in automatically, based on the job queue demand.</p>
    #            <p>If the state is <code>DISABLED</code>, then the Batch scheduler doesn't attempt to place jobs within the
    #      environment. Jobs in a <code>STARTING</code> or <code>RUNNING</code> state continue to progress normally. Managed
    #      compute environments in the <code>DISABLED</code> state don't scale out. However, they scale in to
    #       <code>minvCpus</code> value after instances become idle.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the compute environment (for example, <code>CREATING</code> or <code>VALID</code>).</p>
    #
    #   Enum, one of: ["CREATING", "UPDATING", "DELETING", "DELETED", "VALID", "INVALID"]
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p>A short, human-readable string to provide additional details about the current status of the compute
    #      environment.</p>
    #
    #   @return [String]
    #
    # @!attribute compute_resources
    #   <p>The compute resources defined for the compute environment. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html">Compute environments</a> in the
    #      <i>Batch User Guide</i>.</p>
    #
    #   @return [ComputeResource]
    #
    # @!attribute service_role
    #   <p>The service role associated with the compute environment that allows Batch to make calls to Amazon Web Services API
    #      operations on your behalf. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/service_IAM_role.html">Batch service IAM role</a> in the
    #      <i>Batch User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute update_policy
    #   <p>Specifies the infrastructure update policy for the compute environment. For more information about
    #      infrastructure updates, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html">Updating compute
    #       environments</a> in the <i>Batch User Guide</i>.</p>
    #
    #   @return [UpdatePolicy]
    #
    ComputeEnvironmentDetail = ::Struct.new(
      :compute_environment_name,
      :compute_environment_arn,
      :unmanagedv_cpus,
      :ecs_cluster_arn,
      :tags,
      :type,
      :state,
      :status,
      :status_reason,
      :compute_resources,
      :service_role,
      :update_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The order in which compute environments are tried for job placement within a queue. Compute environments are
    #    tried in ascending order. For example, if two compute environments are associated with a job queue, the compute
    #    environment with a lower order integer value is tried for job placement first. Compute environments must be in the
    #     <code>VALID</code> state before you can associate them with a job queue. All of the compute environments must be
    #    either EC2 (<code>EC2</code> or <code>SPOT</code>) or Fargate (<code>FARGATE</code> or <code>FARGATE_SPOT</code>);
    #    EC2 and Fargate compute environments can't be mixed.</p>
    #          <note>
    #             <p>All compute environments that are associated with a job queue must share the same architecture. Batch doesn't
    #     support mixing compute environment architecture types in a single job queue.</p>
    #          </note>
    #
    # @!attribute order
    #   <p>The order of the compute environment. Compute environments are tried in ascending order. For example, if two
    #      compute environments are associated with a job queue, the compute environment with a lower <code>order</code> integer
    #      value is tried for job placement first.</p>
    #
    #   @return [Integer]
    #
    # @!attribute compute_environment
    #   <p>The Amazon Resource Name (ARN) of the compute environment.</p>
    #
    #   @return [String]
    #
    ComputeEnvironmentOrder = ::Struct.new(
      :order,
      :compute_environment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing an Batch compute resource. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html">Compute environments</a> in the
    #    <i>Batch User Guide</i>.</p>
    #
    # @!attribute type
    #   <p>The type of compute environment: <code>EC2</code>, <code>SPOT</code>, <code>FARGATE</code>, or
    #       <code>FARGATE_SPOT</code>. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html">Compute environments</a> in the
    #      <i>Batch User Guide</i>.</p>
    #            <p> If you choose <code>SPOT</code>, you must also specify an Amazon EC2 Spot Fleet role with the
    #       <code>spotIamFleetRole</code> parameter. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/spot_fleet_IAM_role.html">Amazon EC2 spot fleet role</a> in the
    #      <i>Batch User Guide</i>.</p>
    #
    #   Enum, one of: ["EC2", "SPOT", "FARGATE", "FARGATE_SPOT"]
    #
    #   @return [String]
    #
    # @!attribute allocation_strategy
    #   <p>The allocation strategy to use for the compute resource if not enough instances of the best fitting instance
    #      type can be allocated. This might be because of availability of the instance type in the Region or <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-resource-limits.html">Amazon EC2 service limits</a>. For more
    #      information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/allocation-strategies.html">Allocation strategies</a>
    #      in the <i>Batch User Guide</i>.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources, and shouldn't be
    #      specified.</p>
    #            </note>
    #            <dl>
    #               <dt>BEST_FIT (default)</dt>
    #               <dd>
    #                  <p>Batch selects an instance type that best fits the needs of the jobs with a preference for the lowest-cost
    #         instance type. If additional instances of the selected instance type aren't available, Batch waits for the
    #         additional instances to be available. If there aren't enough instances available, or if the user is reaching
    #          <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-resource-limits.html">Amazon EC2 service limits</a>
    #         then additional jobs aren't run until the currently running jobs have completed. This allocation strategy keeps
    #         costs lower but can limit scaling. If you are using Spot Fleets with <code>BEST_FIT</code> then the Spot Fleet IAM
    #         Role must be specified. Compute resources that use a <code>BEST_FIT</code> allocation strategy don't support
    #         infrastructure updates and can't update some parameters. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html">Updating compute environments</a> in the
    #          <i>Batch User Guide</i>.</p>
    #               </dd>
    #               <dt>BEST_FIT_PROGRESSIVE</dt>
    #               <dd>
    #                  <p>Batch will select additional instance types that are large enough to meet the requirements of the jobs in
    #         the queue, with a preference for instance types with a lower cost per unit vCPU. If additional instances of the
    #         previously selected instance types aren't available, Batch will select new instance types.</p>
    #               </dd>
    #               <dt>SPOT_CAPACITY_OPTIMIZED</dt>
    #               <dd>
    #                  <p>Batch will select one or more instance types that are large enough to meet the requirements of the jobs in
    #         the queue, with a preference for instance types that are less likely to be interrupted. This allocation strategy
    #         is only available for Spot Instance compute resources.</p>
    #               </dd>
    #            </dl>
    #            <p>With both <code>BEST_FIT_PROGRESSIVE</code> and <code>SPOT_CAPACITY_OPTIMIZED</code> strategies, Batch might
    #      need to go above <code>maxvCpus</code> to meet your capacity requirements. In this event, Batch never exceeds
    #       <code>maxvCpus</code> by more than a single instance.</p>
    #
    #   Enum, one of: ["BEST_FIT", "BEST_FIT_PROGRESSIVE", "SPOT_CAPACITY_OPTIMIZED"]
    #
    #   @return [String]
    #
    # @!attribute minv_cpus
    #   <p>The minimum number of Amazon EC2 vCPUs that an environment should maintain (even if the compute environment is
    #       <code>DISABLED</code>).</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources, and shouldn't be
    #      specified.</p>
    #            </note>
    #
    #   @return [Integer]
    #
    # @!attribute maxv_cpus
    #   <p>The maximum number of Amazon EC2 vCPUs that a compute environment can reach.</p>
    #            <note>
    #               <p>With both <code>BEST_FIT_PROGRESSIVE</code> and <code>SPOT_CAPACITY_OPTIMIZED</code> allocation strategies,
    #       Batch might need to exceed <code>maxvCpus</code> to meet your capacity requirements. In this event, Batch never
    #       exceeds <code>maxvCpus</code> by more than a single instance. For example, no more than a single instance from among
    #       those specified in your compute environment is allocated.</p>
    #            </note>
    #
    #   @return [Integer]
    #
    # @!attribute desiredv_cpus
    #   <p>The desired number of Amazon EC2 vCPUS in the compute environment. Batch modifies this value between the minimum
    #      and maximum values, based on job queue demand.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources, and shouldn't be
    #      specified.</p>
    #            </note>
    #
    #   @return [Integer]
    #
    # @!attribute instance_types
    #   <p>The instances types that can be launched. You can specify instance families to launch any instance type within
    #      those families (for example, <code>c5</code> or <code>p3</code>), or you can specify specific sizes within a family
    #      (such as <code>c5.8xlarge</code>). You can also choose <code>optimal</code> to select instance types (from the C4,
    #      M4, and R4 instance families) that match the demand of your job queues.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources, and shouldn't be
    #      specified.</p>
    #            </note>
    #            <note>
    #               <p>When you create a compute environment, the instance types that you select for the compute environment must
    #       share the same architecture. For example, you can't mix x86 and ARM instances in the same compute
    #       environment.</p>
    #            </note>
    #            <note>
    #               <p>Currently, <code>optimal</code> uses instance types from the C4, M4, and R4 instance families. In Regions that
    #       don't have instance types from those instance families, instance types from the C5, M5. and R5 instance families are
    #       used.</p>
    #            </note>
    #
    #   @return [Array<String>]
    #
    # @!attribute image_id
    #   <p>The Amazon Machine Image (AMI) ID used for instances launched in the compute environment. This parameter is
    #      overridden by the <code>imageIdOverride</code> member of the <code>Ec2Configuration</code> structure.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources, and shouldn't be
    #      specified.</p>
    #            </note>
    #            <note>
    #               <p>The AMI that you choose for a compute environment must match the architecture of the instance types that
    #       you intend to use for that compute environment. For example, if your compute environment uses A1 instance types,
    #       the compute resource AMI that you choose must support ARM instances. Amazon ECS vends both x86 and ARM versions of the
    #       Amazon ECS-optimized Amazon Linux 2 AMI. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html ecs-optimized-ami-linux-variants.html">Amazon ECS-optimized
    #       Amazon Linux 2 AMI</a>
    #       in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #            </note>
    #
    #   @deprecated
    #     This field is deprecated, use ec2Configuration[].imageIdOverride instead.
    #
    #   @return [String]
    #
    # @!attribute subnets
    #   <p>The VPC subnets where the compute resources are launched. These subnets must be within the same VPC. Fargate
    #      compute resources can contain up to 16 subnets. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html">VPCs and subnets</a> in the <i>Amazon VPC User
    #       Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_group_ids
    #   <p>The Amazon EC2 security groups associated with instances launched in the compute environment. One or more security
    #      groups must be specified, either in <code>securityGroupIds</code> or using a launch template referenced in
    #       <code>launchTemplate</code>. This parameter is required for jobs that are running on Fargate resources and must
    #      contain at least one security group. Fargate doesn't support launch templates. If security groups are specified
    #      using both <code>securityGroupIds</code> and <code>launchTemplate</code>, the values in <code>securityGroupIds</code>
    #      are used.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute ec2_key_pair
    #   <p>The Amazon EC2 key pair that's used for instances launched in the compute environment. You can use this key pair to
    #      log in to your instances with SSH.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources, and shouldn't be
    #      specified.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute instance_role
    #   <p>The Amazon ECS instance profile applied to Amazon EC2 instances in a compute environment. You can specify the short name
    #      or full Amazon Resource Name (ARN) of an instance profile. For example,
    #       <code>
    #                  <i>ecsInstanceRole</i>
    #               </code> or
    #        <code>arn:aws:iam::<i><aws_account_id></i>:instance-profile/<i>ecsInstanceRole</i>
    #               </code>.
    #      For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/instance_IAM_role.html">Amazon ECS instance
    #       role</a> in the <i>Batch User Guide</i>.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources, and shouldn't be
    #      specified.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Key-value pair tags to be applied to EC2 resources that are launched in the compute environment. For Batch,
    #      these take the form of "String1": "String2", where String1 is the tag key and String2 is the tag value−for
    #      example, <code>{ "Name": "Batch Instance - C4OnDemand" }</code>. This is helpful for recognizing your Batch
    #      instances in the Amazon EC2 console. Updating these tags requires an infrastructure update to the compute environment. For
    #      more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html">Updating compute
    #       environments</a> in the <i>Batch User Guide</i>. These tags aren't seen when using the Batch
    #       <code>ListTagsForResource</code> API operation.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources, and shouldn't be
    #      specified.</p>
    #            </note>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute placement_group
    #   <p>The Amazon EC2 placement group to associate with your compute resources. If you intend to submit multi-node parallel
    #      jobs to your compute environment, you should consider creating a cluster placement group and associate it with your
    #      compute resources. This keeps your multi-node parallel job on a logical grouping of instances within a single
    #      Availability Zone with high network flow potential. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html">Placement groups</a> in the <i>Amazon EC2 User Guide for
    #       Linux Instances</i>.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources, and shouldn't be
    #      specified.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute bid_percentage
    #   <p>The maximum percentage that a Spot Instance price can be when compared with the On-Demand price for that
    #      instance type before instances are launched. For example, if your maximum percentage is 20%, then the Spot price must
    #      be less than 20% of the current On-Demand price for that Amazon EC2 instance. You always pay the lowest (market) price and
    #      never more than your maximum percentage. If you leave this field empty, the default value is 100% of the On-Demand
    #      price.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources, and shouldn't be
    #      specified.</p>
    #            </note>
    #
    #   @return [Integer]
    #
    # @!attribute spot_iam_fleet_role
    #   <p>The Amazon Resource Name (ARN) of the Amazon EC2 Spot Fleet IAM role applied to a <code>SPOT</code> compute environment. This role is
    #      required if the allocation strategy set to <code>BEST_FIT</code> or if the allocation strategy isn't specified. For
    #      more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/spot_fleet_IAM_role.html">Amazon EC2 spot fleet
    #       role</a> in the <i>Batch User Guide</i>.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources, and shouldn't be
    #      specified.</p>
    #            </note>
    #            <important>
    #               <p>To tag your Spot Instances on creation, the Spot Fleet IAM role specified here must use the newer <b>AmazonEC2SpotFleetTaggingRole</b> managed policy. The previously recommended <b>AmazonEC2SpotFleetRole</b> managed policy doesn't have the required permissions to tag Spot
    #       Instances. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/troubleshooting.html spot-instance-no-tag">Spot instances not tagged on creation</a> in the
    #        <i>Batch User Guide</i>.</p>
    #            </important>
    #
    #   @return [String]
    #
    # @!attribute launch_template
    #   <p>The launch template to use for your compute resources. Any other compute resource parameters that you specify in
    #      a <a>CreateComputeEnvironment</a> API operation override the same parameters in the launch template. You
    #      must specify either the launch template ID or launch template name in the request, but not both. For more
    #      information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/launch-templates.html">Launch template support</a> in
    #      the <i>Batch User Guide</i>.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources, and shouldn't be
    #      specified.</p>
    #            </note>
    #
    #   @return [LaunchTemplateSpecification]
    #
    # @!attribute ec2_configuration
    #   <p>Provides information used to select Amazon Machine Images (AMIs) for EC2 instances in the compute environment.
    #      If <code>Ec2Configuration</code> isn't specified, the default is <code>ECS_AL2</code>.</p>
    #            <p>One or two values can be provided.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources, and shouldn't be
    #      specified.</p>
    #            </note>
    #
    #   @return [Array<Ec2Configuration>]
    #
    ComputeResource = ::Struct.new(
      :type,
      :allocation_strategy,
      :minv_cpus,
      :maxv_cpus,
      :desiredv_cpus,
      :instance_types,
      :image_id,
      :subnets,
      :security_group_ids,
      :ec2_key_pair,
      :instance_role,
      :tags,
      :placement_group,
      :bid_percentage,
      :spot_iam_fleet_role,
      :launch_template,
      :ec2_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing the attributes of a compute environment that can be updated. For more information, see
    #     <a href="https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html">Updating compute environments</a>
    #    in the <i>Batch User Guide</i>.</p>
    #
    # @!attribute minv_cpus
    #   <p>The minimum number of Amazon EC2 vCPUs that an environment should maintain (even if the compute environment is
    #       <code>DISABLED</code>).</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources, and shouldn't be
    #      specified.</p>
    #            </note>
    #
    #   @return [Integer]
    #
    # @!attribute maxv_cpus
    #   <p>The maximum number of Amazon EC2 vCPUs that an environment can reach.</p>
    #            <note>
    #               <p>With both <code>BEST_FIT_PROGRESSIVE</code> and <code>SPOT_CAPACITY_OPTIMIZED</code> allocation strategies,
    #       Batch might need to exceed <code>maxvCpus</code> to meet your capacity requirements. In this event, Batch never
    #       exceeds <code>maxvCpus</code> by more than a single instance. That is, no more than a single instance from among
    #       those specified in your compute environment.</p>
    #            </note>
    #
    #   @return [Integer]
    #
    # @!attribute desiredv_cpus
    #   <p>The desired number of Amazon EC2 vCPUS in the compute environment. Batch modifies this value between the minimum
    #      and maximum values based on job queue demand.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources, and shouldn't be
    #      specified.</p>
    #            </note>
    #
    #   @return [Integer]
    #
    # @!attribute subnets
    #   <p>The VPC subnets where the compute resources are launched. Fargate compute resources can contain up to 16
    #      subnets. For Fargate compute resources, providing an empty list will be handled as if this parameter wasn't
    #      specified and no change is made. For EC2 compute resources, providing an empty list removes the VPC subnets from the
    #      compute resource. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html">VPCs and subnets</a> in the <i>Amazon VPC User Guide</i>.</p>
    #            <p>When updating a compute environment, changing the VPC subnets requires an infrastructure update of the compute
    #      environment. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html">Updating compute environments</a> in the <i>Batch User Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_group_ids
    #   <p>The Amazon EC2 security groups associated with instances launched in the compute environment. This parameter is
    #      required for Fargate compute resources, where it can contain up to 5 security groups. For Fargate compute
    #      resources, providing an empty list is handled as if this parameter wasn't specified and no change is made. For EC2
    #      compute resources, providing an empty list removes the security groups from the compute resource.</p>
    #            <p>When updating a compute environment, changing the EC2 security groups requires an infrastructure update of the
    #      compute environment. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html">Updating compute environments</a> in the
    #       <i>Batch User Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute allocation_strategy
    #   <p>The allocation strategy to use for the compute resource if not enough instances of the best fitting instance
    #      type can be allocated. This might be because of availability of the instance type in the Region or <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-resource-limits.html">Amazon EC2 service limits</a>. For more
    #      information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/allocation-strategies.html">Allocation strategies</a>
    #      in the <i>Batch User Guide</i>.</p>
    #            <p>When updating a compute environment, changing the allocation strategy requires an infrastructure update of the
    #      compute environment. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html">Updating compute environments</a> in the
    #       <i>Batch User Guide</i>. <code>BEST_FIT</code> isn't supported when updating a compute
    #      environment.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources, and shouldn't be
    #      specified.</p>
    #            </note>
    #            <dl>
    #               <dt>BEST_FIT_PROGRESSIVE</dt>
    #               <dd>
    #                  <p>Batch will select additional instance types that are large enough to meet the requirements of the jobs in
    #         the queue, with a preference for instance types with a lower cost per unit vCPU. If additional instances of the
    #         previously selected instance types aren't available, Batch will select new instance types.</p>
    #               </dd>
    #               <dt>SPOT_CAPACITY_OPTIMIZED</dt>
    #               <dd>
    #                  <p>Batch will select one or more instance types that are large enough to meet the requirements of the jobs in
    #         the queue, with a preference for instance types that are less likely to be interrupted. This allocation strategy
    #         is only available for Spot Instance compute resources.</p>
    #               </dd>
    #            </dl>
    #            <p>With both <code>BEST_FIT_PROGRESSIVE</code> and <code>SPOT_CAPACITY_OPTIMIZED</code> strategies, Batch might
    #      need to go above <code>maxvCpus</code> to meet your capacity requirements. In this event, Batch never exceeds
    #       <code>maxvCpus</code> by more than a single instance.</p>
    #
    #   Enum, one of: ["BEST_FIT_PROGRESSIVE", "SPOT_CAPACITY_OPTIMIZED"]
    #
    #   @return [String]
    #
    # @!attribute instance_types
    #   <p>The instances types that can be launched. You can specify instance families to launch any instance type within
    #      those families (for example, <code>c5</code> or <code>p3</code>), or you can specify specific sizes within a family
    #      (such as <code>c5.8xlarge</code>). You can also choose <code>optimal</code> to select instance types (from the C4,
    #      M4, and R4 instance families) that match the demand of your job queues.</p>
    #            <p>When updating a compute environment, changing this setting requires an infrastructure update of the compute
    #      environment. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html">Updating compute environments</a> in the <i>Batch User Guide</i>.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources, and shouldn't be
    #      specified.</p>
    #            </note>
    #            <note>
    #               <p>When you create a compute environment, the instance types that you select for the compute environment must
    #       share the same architecture. For example, you can't mix x86 and ARM instances in the same compute
    #       environment.</p>
    #            </note>
    #            <note>
    #               <p>Currently, <code>optimal</code> uses instance types from the C4, M4, and R4 instance families. In Regions that
    #       don't have instance types from those instance families, instance types from the C5, M5. and R5 instance families are
    #       used.</p>
    #            </note>
    #
    #   @return [Array<String>]
    #
    # @!attribute ec2_key_pair
    #   <p>The Amazon EC2 key pair that's used for instances launched in the compute environment. You can use this key pair to
    #      log in to your instances with SSH. To remove the Amazon EC2 key pair, set this value to an empty string.</p>
    #            <p>When updating a compute environment, changing the EC2 key pair requires an infrastructure update of the compute
    #      environment. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html">Updating compute environments</a> in the <i>Batch User Guide</i>.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources, and shouldn't be
    #      specified.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute instance_role
    #   <p>The Amazon ECS instance profile applied to Amazon EC2 instances in a compute environment. You can specify the short name
    #      or full Amazon Resource Name (ARN) of an instance profile. For example,
    #       <code>
    #                  <i>ecsInstanceRole</i>
    #               </code> or
    #        <code>arn:aws:iam::<i><aws_account_id></i>:instance-profile/<i>ecsInstanceRole</i>
    #               </code>.
    #      For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/instance_IAM_role.html">Amazon ECS instance
    #       role</a> in the <i>Batch User Guide</i>.</p>
    #            <p>When updating a compute environment, changing this setting requires an infrastructure update of the compute
    #      environment. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html">Updating compute environments</a> in the <i>Batch User Guide</i>.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources, and shouldn't be
    #      specified.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Key-value pair tags to be applied to EC2 resources that are launched in the compute environment. For Batch,
    #      these take the form of "String1": "String2", where String1 is the tag key and String2 is the tag value−for
    #      example, <code>{ "Name": "Batch Instance - C4OnDemand" }</code>. This is helpful for recognizing your Batch
    #      instances in the Amazon EC2 console. These tags aren't seen when using the Batch <code>ListTagsForResource</code> API
    #      operation.</p>
    #            <p>When updating a compute environment, changing this setting requires an infrastructure update of the compute
    #      environment. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html">Updating compute environments</a> in the <i>Batch User Guide</i>.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources, and shouldn't be
    #      specified.</p>
    #            </note>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute placement_group
    #   <p>The Amazon EC2 placement group to associate with your compute resources. If you intend to submit multi-node parallel
    #      jobs to your compute environment, you should consider creating a cluster placement group and associate it with your
    #      compute resources. This keeps your multi-node parallel job on a logical grouping of instances within a single
    #      Availability Zone with high network flow potential. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html">Placement groups</a> in the <i>Amazon EC2 User Guide for
    #       Linux Instances</i>.</p>
    #            <p>When updating a compute environment, changing the placement group requires an infrastructure update of the
    #      compute environment. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html">Updating compute environments</a> in the
    #       <i>Batch User Guide</i>.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources, and shouldn't be
    #      specified.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute bid_percentage
    #   <p>The maximum percentage that a Spot Instance price can be when compared with the On-Demand price for that
    #      instance type before instances are launched. For example, if your maximum percentage is 20%, then the Spot price must
    #      be less than 20% of the current On-Demand price for that Amazon EC2 instance. You always pay the lowest (market) price and
    #      never more than your maximum percentage.</p>
    #            <p>When updating a compute environment, changing the bid percentage requires an infrastructure update of the
    #      compute environment. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html">Updating compute environments</a> in the
    #       <i>Batch User Guide</i>.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources, and shouldn't be
    #      specified.</p>
    #            </note>
    #
    #   @return [Integer]
    #
    # @!attribute launch_template
    #   <p>The updated launch template to use for your compute resources. You must specify either the launch template ID or
    #      launch template name in the request, but not both. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/launch-templates.html">Launch template support</a> in the <i>Batch User Guide</i>.
    #      To remove the custom launch template and use the default launch template, set <code>launchTemplateId</code> or
    #       <code>launchTemplateName</code> member of the launch template specification to an empty string. Removing the launch
    #      template from a compute environment will not remove the AMI specified in the launch template. In order to update the
    #      AMI specified in a launch template, the <code>updateToLatestImageVersion</code> parameter must be set to
    #       <code>true</code>.</p>
    #            <p>When updating a compute environment, changing the launch template requires an infrastructure update of the
    #      compute environment. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html">Updating compute environments</a> in the
    #       <i>Batch User Guide</i>.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources, and shouldn't be
    #      specified.</p>
    #            </note>
    #
    #   @return [LaunchTemplateSpecification]
    #
    # @!attribute ec2_configuration
    #   <p>Provides information used to select Amazon Machine Images (AMIs) for EC2 instances in the compute environment.
    #      If <code>Ec2Configuration</code> isn't specified, the default is <code>ECS_AL2</code>.</p>
    #            <p>When updating a compute environment, changing this setting requires an infrastructure update of the compute
    #      environment. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html">Updating compute environments</a> in the <i>Batch User Guide</i>. To remove the EC2 configuration
    #      and any custom AMI ID specified in <code>imageIdOverride</code>, set this value to an empty string.</p>
    #            <p>One or two values can be provided.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources, and shouldn't be
    #      specified.</p>
    #            </note>
    #
    #   @return [Array<Ec2Configuration>]
    #
    # @!attribute update_to_latest_image_version
    #   <p>Specifies whether the AMI ID is updated to the latest one that's supported by Batch when the compute
    #      environment has an infrastructure update. The default value is <code>false</code>.</p>
    #
    #            <note>
    #               <p>If an AMI ID is specified in the <code>imageId</code> or <code>imageIdOverride</code> parameters or by the
    #       launch template specified in the <code>launchTemplate</code> parameter, this parameter is ignored. For more
    #       information on updating AMI IDs during an infrastructure update, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html updating-compute-environments-ami">Updating the AMI ID</a> in
    #       the <i>Batch User Guide</i>.</p>
    #            </note>
    #
    #            <p>When updating a compute environment, changing this setting requires an infrastructure update of the compute
    #      environment. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html">Updating compute environments</a> in the <i>Batch User Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute type
    #   <p>The type of compute environment: <code>EC2</code>, <code>SPOT</code>, <code>FARGATE</code>, or
    #       <code>FARGATE_SPOT</code>. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html">Compute environments</a> in the
    #      <i>Batch User Guide</i>.</p>
    #            <p> If you choose <code>SPOT</code>, you must also specify an Amazon EC2 Spot Fleet role with the
    #       <code>spotIamFleetRole</code> parameter. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/spot_fleet_IAM_role.html">Amazon EC2 spot fleet role</a> in the
    #      <i>Batch User Guide</i>.</p>
    #            <p>When updating a compute environment, changing the type of a compute environment requires an infrastructure
    #      update of the compute environment. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html">Updating compute environments</a> in the
    #       <i>Batch User Guide</i>.</p>
    #
    #   Enum, one of: ["EC2", "SPOT", "FARGATE", "FARGATE_SPOT"]
    #
    #   @return [String]
    #
    # @!attribute image_id
    #   <p>The Amazon Machine Image (AMI) ID used for instances launched in the compute environment. This parameter is
    #      overridden by the <code>imageIdOverride</code> member of the <code>Ec2Configuration</code> structure. To remove the
    #      custom AMI ID and use the default AMI ID, set this value to an empty string.</p>
    #            <p>When updating a compute environment, changing the AMI ID requires an infrastructure update of the compute
    #      environment. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html">Updating compute environments</a> in the <i>Batch User Guide</i>.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources, and shouldn't be
    #      specified.</p>
    #            </note>
    #            <note>
    #               <p>The AMI that you choose for a compute environment must match the architecture of the instance types that
    #       you intend to use for that compute environment. For example, if your compute environment uses A1 instance types,
    #       the compute resource AMI that you choose must support ARM instances. Amazon ECS vends both x86 and ARM versions of the
    #       Amazon ECS-optimized Amazon Linux 2 AMI. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html ecs-optimized-ami-linux-variants.html">Amazon ECS-optimized
    #       Amazon Linux 2 AMI</a>
    #       in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #            </note>
    #
    #   @return [String]
    #
    ComputeResourceUpdate = ::Struct.new(
      :minv_cpus,
      :maxv_cpus,
      :desiredv_cpus,
      :subnets,
      :security_group_ids,
      :allocation_strategy,
      :instance_types,
      :ec2_key_pair,
      :instance_role,
      :tags,
      :placement_group,
      :bid_percentage,
      :launch_template,
      :ec2_configuration,
      :update_to_latest_image_version,
      :type,
      :image_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing the details of a container that's part of a job.</p>
    #
    # @!attribute image
    #   <p>The image used to start the container.</p>
    #
    #   @return [String]
    #
    # @!attribute vcpus
    #   <p>The number of vCPUs reserved for the container. For jobs that run on EC2 resources, you can specify the vCPU
    #      requirement for the job using <code>resourceRequirements</code>, but you can't specify the vCPU requirements in both
    #      the <code>vcpus</code> and <code>resourceRequirements</code> object. This parameter maps to <code>CpuShares</code> in
    #      the <a href="https://docs.docker.com/engine/api/v1.23/ create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/api/v1.23/">Docker Remote API</a> and the <code>--cpu-shares</code> option to
    #       <a href="https://docs.docker.com/engine/reference/run/">docker run</a>. Each vCPU is equivalent to 1,024 CPU shares. You must
    #      specify at least one vCPU. This is required but can be specified in several places. It must be specified for each
    #      node at least once.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that run on Fargate resources. For jobs that run on Fargate
    #       resources, you must specify the vCPU requirement for the job using <code>resourceRequirements</code>.</p>
    #            </note>
    #
    #   @return [Integer]
    #
    # @!attribute memory
    #   <p>For jobs running on EC2 resources that didn't specify memory requirements using
    #       <code>resourceRequirements</code>, the number of MiB of memory reserved for the job. For other jobs, including all
    #      run on Fargate resources, see <code>resourceRequirements</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute command
    #   <p>The command that's passed to the container.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute job_role_arn
    #   <p>The Amazon Resource Name (ARN) associated with the job upon execution.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the execution role that Batch can assume. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/execution-IAM-role.html">Batch execution IAM role</a> in the
    #       <i>Batch User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute volumes
    #   <p>A list of volumes associated with the job.</p>
    #
    #   @return [Array<Volume>]
    #
    # @!attribute environment
    #   <p>The environment variables to pass to a container.</p>
    #            <note>
    #               <p>Environment variables must not start with <code>AWS_BATCH</code>; this naming
    #    convention is reserved for variables that are set by the Batch service.</p>
    #            </note>
    #
    #   @return [Array<KeyValuePair>]
    #
    # @!attribute mount_points
    #   <p>The mount points for data volumes in your container.</p>
    #
    #   @return [Array<MountPoint>]
    #
    # @!attribute readonly_root_filesystem
    #   <p>When this parameter is true, the container is given read-only access to its root file system. This parameter
    #      maps to <code>ReadonlyRootfs</code> in the <a href="https://docs.docker.com/engine/api/v1.23/ create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/api/v1.23/">Docker Remote API</a> and
    #      the <code>--read-only</code> option to <a href="https://docs.docker.com/engine/reference/commandline/run/">
    #                  <code>docker run</code>
    #               </a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute ulimits
    #   <p>A list of <code>ulimit</code> values to set in the container. This parameter maps to <code>Ulimits</code> in the
    #      <a href="https://docs.docker.com/engine/api/v1.23/ create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/api/v1.23/">Docker Remote API</a> and the <code>--ulimit</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources.</p>
    #            </note>
    #
    #   @return [Array<Ulimit>]
    #
    # @!attribute privileged
    #   <p>When this parameter is true, the container is given elevated permissions on the host container instance (similar
    #      to the <code>root</code> user). The default value is false.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources and shouldn't be provided, or
    #       specified as false.</p>
    #            </note>
    #
    #   @return [Boolean]
    #
    # @!attribute user
    #   <p>The user name to use inside the container. This parameter maps to <code>User</code> in the
    #      <a href="https://docs.docker.com/engine/api/v1.23/ create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/api/v1.23/">Docker Remote API</a> and the <code>--user</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute exit_code
    #   <p>The exit code to return upon completion.</p>
    #
    #   @return [Integer]
    #
    # @!attribute reason
    #   <p>A short (255 max characters) human-readable string to provide additional details about a running or stopped
    #      container.</p>
    #
    #   @return [String]
    #
    # @!attribute container_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the container instance that the container is running on.</p>
    #
    #   @return [String]
    #
    # @!attribute task_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon ECS task that's associated with the container job. Each container attempt receives a task
    #      ARN when they reach the <code>STARTING</code> status.</p>
    #
    #   @return [String]
    #
    # @!attribute log_stream_name
    #   <p>The name of the CloudWatch Logs log stream associated with the container. The log group for Batch jobs is
    #       <code>/aws/batch/job</code>. Each container attempt receives a log stream name when they reach the
    #       <code>RUNNING</code> status.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_type
    #   <p>The instance type of the underlying host infrastructure of a multi-node parallel job.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute network_interfaces
    #   <p>The network interfaces associated with the job.</p>
    #
    #   @return [Array<NetworkInterface>]
    #
    # @!attribute resource_requirements
    #   <p>The type and amount of resources to assign to a container. The supported resources include <code>GPU</code>,
    #       <code>MEMORY</code>, and <code>VCPU</code>.</p>
    #
    #   @return [Array<ResourceRequirement>]
    #
    # @!attribute linux_parameters
    #   <p>Linux-specific modifications that are applied to the container, such as details for device mappings.</p>
    #
    #   @return [LinuxParameters]
    #
    # @!attribute log_configuration
    #   <p>The log configuration specification for the container.</p>
    #            <p>This parameter maps to <code>LogConfig</code> in the <a href="https://docs.docker.com/engine/api/v1.23/ create-a-container">Create a container</a> section of the
    #      <a href="https://docs.docker.com/engine/api/v1.23/">Docker Remote API</a> and the <code>--log-driver</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.
    #      By default, containers use the same logging driver that the Docker daemon uses. However, the container might use a
    #      different logging driver than the Docker daemon by specifying a log driver with this parameter in the container
    #      definition. To use a different logging driver for a container, the log system must be configured properly on the
    #      container instance. Or, alternatively, it must be configured on a different log server for remote logging options.
    #      For more information on the options for different supported log drivers, see <a href="https://docs.docker.com/engine/admin/logging/overview/">Configure logging drivers</a> in the Docker
    #      documentation.</p>
    #            <note>
    #               <p>Batch currently supports a subset of the logging drivers available to the Docker daemon (shown in the <a>LogConfiguration</a> data type). Additional log drivers might be available in future releases of the Amazon ECS
    #       container agent.</p>
    #            </note>
    #            <p>This parameter requires version 1.18 of the Docker Remote API or greater on your
    #    container instance. To check the Docker Remote API version on your container instance, log into your
    #    container instance and run the following command: <code>sudo docker version | grep "Server API version"</code>
    #            </p>
    #            <note>
    #               <p>The Amazon ECS container agent running on a container instance must register the logging drivers available on that
    #       instance with the <code>ECS_AVAILABLE_LOGGING_DRIVERS</code> environment variable before containers placed on that
    #       instance can use these log configuration options. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html">Amazon ECS container agent configuration</a> in the
    #        <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #            </note>
    #
    #   @return [LogConfiguration]
    #
    # @!attribute secrets
    #   <p>The secrets to pass to the container. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/specifying-sensitive-data.html">Specifying sensitive data</a> in the
    #       <i>Batch User Guide</i>.</p>
    #
    #   @return [Array<Secret>]
    #
    # @!attribute network_configuration
    #   <p>The network configuration for jobs that are running on Fargate resources. Jobs that are running on EC2
    #      resources must not specify this parameter.</p>
    #
    #   @return [NetworkConfiguration]
    #
    # @!attribute fargate_platform_configuration
    #   <p>The platform configuration for jobs that are running on Fargate resources. Jobs that are running on EC2
    #      resources must not specify this parameter.</p>
    #
    #   @return [FargatePlatformConfiguration]
    #
    ContainerDetail = ::Struct.new(
      :image,
      :vcpus,
      :memory,
      :command,
      :job_role_arn,
      :execution_role_arn,
      :volumes,
      :environment,
      :mount_points,
      :readonly_root_filesystem,
      :ulimits,
      :privileged,
      :user,
      :exit_code,
      :reason,
      :container_instance_arn,
      :task_arn,
      :log_stream_name,
      :instance_type,
      :network_interfaces,
      :resource_requirements,
      :linux_parameters,
      :log_configuration,
      :secrets,
      :network_configuration,
      :fargate_platform_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The overrides that should be sent to a container.</p>
    #
    # @!attribute vcpus
    #   <p>This parameter is deprecated, use <code>resourceRequirements</code> to override the <code>vcpus</code> parameter
    #      that's set in the job definition. It's not supported for jobs running on Fargate resources. For jobs running on EC2
    #      resources, it overrides the <code>vcpus</code> parameter set in the job definition, but doesn't override any vCPU
    #      requirement specified in the <code>resourceRequirements</code> structure in the job definition. To override vCPU
    #      requirements that are specified in the <code>resourceRequirements</code> structure in the job definition,
    #       <code>resourceRequirements</code> must be specified in the <code>SubmitJob</code> request, with <code>type</code>
    #      set to <code>VCPU</code> and <code>value</code> set to the new value. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/troubleshooting.html override-resource-requirements">Can't override job
    #       definition resource requirements</a> in the <i>Batch User Guide</i>.</p>
    #
    #   @deprecated
    #     This field is deprecated, use resourceRequirements instead.
    #
    #   @return [Integer]
    #
    # @!attribute memory
    #   <p>This parameter is deprecated, use <code>resourceRequirements</code> to override the memory requirements
    #      specified in the job definition. It's not supported for jobs running on Fargate resources. For jobs running on EC2
    #      resources, it overrides the <code>memory</code> parameter set in the job definition, but doesn't override any memory
    #      requirement specified in the <code>resourceRequirements</code> structure in the job definition. To override memory
    #      requirements that are specified in the <code>resourceRequirements</code> structure in the job definition,
    #       <code>resourceRequirements</code> must be specified in the <code>SubmitJob</code> request, with <code>type</code>
    #      set to <code>MEMORY</code> and <code>value</code> set to the new value. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/troubleshooting.html override-resource-requirements">Can't override job
    #       definition resource requirements</a> in the <i>Batch User Guide</i>.</p>
    #
    #   @deprecated
    #     This field is deprecated, use resourceRequirements instead.
    #
    #   @return [Integer]
    #
    # @!attribute command
    #   <p>The command to send to the container that overrides the default command from the Docker image or the job
    #      definition.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute instance_type
    #   <p>The instance type to use for a multi-node parallel job.</p>
    #            <note>
    #               <p>This parameter isn't applicable to single-node container jobs or jobs that run on Fargate resources, and
    #       shouldn't be provided.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute environment
    #   <p>The environment variables to send to the container. You can add new environment variables, which are added to
    #      the container at launch, or you can override the existing environment variables from the Docker image or the job
    #      definition.</p>
    #            <note>
    #               <p>Environment variables must not start with <code>AWS_BATCH</code>; this naming
    #    convention is reserved for variables that are set by the Batch service.</p>
    #            </note>
    #
    #   @return [Array<KeyValuePair>]
    #
    # @!attribute resource_requirements
    #   <p>The type and amount of resources to assign to a container. This overrides the settings in the job definition.
    #      The supported resources include <code>GPU</code>, <code>MEMORY</code>, and <code>VCPU</code>.</p>
    #
    #   @return [Array<ResourceRequirement>]
    #
    ContainerOverrides = ::Struct.new(
      :vcpus,
      :memory,
      :command,
      :instance_type,
      :environment,
      :resource_requirements,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Container properties are used in job definitions to describe the container that's launched as part of a
    #    job.</p>
    #
    # @!attribute image
    #   <p>The image used to start a container. This string is passed directly to the Docker daemon. Images in the Docker
    #      Hub registry are available by default. Other repositories are specified with
    #        <code>
    #                  <i>repository-url</i>/<i>image</i>:<i>tag</i>
    #               </code>.
    #      Up to 255 letters (uppercase and lowercase), numbers, hyphens, underscores, colons,
    #    periods, forward slashes, and number signs are allowed. This parameter maps to <code>Image</code> in the <a href="https://docs.docker.com/engine/api/v1.23/ create-a-container">Create a container</a> section of
    #      the <a href="https://docs.docker.com/engine/api/v1.23/">Docker Remote API</a> and the <code>IMAGE</code> parameter of <a href="https://docs.docker.com/engine/reference/run/">docker
    #      run</a>.</p>
    #            <note>
    #               <p>Docker image architecture must match the processor architecture of the compute resources that they're scheduled
    #       on. For example, ARM-based Docker images can only run on ARM-based compute resources.</p>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>Images in Amazon ECR Public repositories use the full <code>registry/repository[:tag]</code> or
    #         <code>registry/repository[@digest]</code> naming conventions. For example,
    #          <code>public.ecr.aws/<i>registry_alias</i>/<i>my-web-app</i>:<i>latest</i>
    #                     </code>.</p>
    #               </li>
    #               <li>
    #                  <p>Images in Amazon ECR repositories use the full registry and repository URI (for example,
    #         <code>012345678910.dkr.ecr.<region-name>.amazonaws.com/<repository-name></code>).</p>
    #               </li>
    #               <li>
    #                  <p>Images in official repositories on Docker Hub use a single name (for example, <code>ubuntu</code> or
    #         <code>mongo</code>).</p>
    #               </li>
    #               <li>
    #                  <p>Images in other repositories on Docker Hub are qualified with an organization name (for example,
    #         <code>amazon/amazon-ecs-agent</code>).</p>
    #               </li>
    #               <li>
    #                  <p>Images in other online repositories are qualified further by a domain name (for example,
    #         <code>quay.io/assemblyline/ubuntu</code>).</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute vcpus
    #   <p>This parameter is deprecated, use <code>resourceRequirements</code> to specify the vCPU requirements for the job
    #      definition. It's not supported for jobs running on Fargate resources. For jobs running on EC2 resources, it specifies
    #      the number of vCPUs reserved for the job.</p>
    #            <p>Each vCPU is equivalent to 1,024 CPU shares. This parameter maps to <code>CpuShares</code> in the
    #      <a href="https://docs.docker.com/engine/api/v1.23/ create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/api/v1.23/">Docker Remote API</a> and the <code>--cpu-shares</code> option to
    #       <a href="https://docs.docker.com/engine/reference/run/">docker run</a>. The number of vCPUs must be specified but can be specified
    #      in several places. You must specify it at least once for each node.</p>
    #
    #   @deprecated
    #     This field is deprecated, use resourceRequirements instead.
    #
    #   @return [Integer]
    #
    # @!attribute memory
    #   <p>This parameter is deprecated, use <code>resourceRequirements</code> to specify the memory requirements for the
    #      job definition. It's not supported for jobs running on Fargate resources. For jobs running on EC2 resources, it
    #      specifies the memory hard limit (in MiB) for a container. If your container attempts to exceed the specified number,
    #      it's terminated. You must specify at least 4 MiB of memory for a job using this parameter. The memory hard limit can
    #      be specified in several places. It must be specified for each node at least once.</p>
    #
    #   @deprecated
    #     This field is deprecated, use resourceRequirements instead.
    #
    #   @return [Integer]
    #
    # @!attribute command
    #   <p>The command that's passed to the container. This parameter maps to <code>Cmd</code> in the
    #      <a href="https://docs.docker.com/engine/api/v1.23/ create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/api/v1.23/">Docker Remote API</a> and the <code>COMMAND</code> parameter to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>. For more information, see <a href="https://docs.docker.com/engine/reference/builder/ cmd">https://docs.docker.com/engine/reference/builder/ cmd</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute job_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that the container can assume for Amazon Web Services permissions. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html">IAM roles for tasks</a>
    #      in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the execution role that Batch can assume. For jobs that run on Fargate resources, you must
    #      provide an execution role. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/execution-IAM-role.html">Batch execution IAM role</a> in the
    #       <i>Batch User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute volumes
    #   <p>A list of data volumes used in a job.</p>
    #
    #   @return [Array<Volume>]
    #
    # @!attribute environment
    #   <p>The environment variables to pass to a container. This parameter maps to <code>Env</code> in the
    #      <a href="https://docs.docker.com/engine/api/v1.23/ create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/api/v1.23/">Docker Remote API</a> and the <code>--env</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
    #            <important>
    #               <p>We don't recommend using plaintext environment variables for sensitive information, such as credential
    #       data.</p>
    #            </important>
    #            <note>
    #               <p>Environment variables must not start with <code>AWS_BATCH</code>; this naming
    #    convention is reserved for variables that are set by the Batch service.</p>
    #            </note>
    #
    #   @return [Array<KeyValuePair>]
    #
    # @!attribute mount_points
    #   <p>The mount points for data volumes in your container. This parameter maps to <code>Volumes</code> in the
    #      <a href="https://docs.docker.com/engine/api/v1.23/ create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/api/v1.23/">Docker Remote API</a> and the <code>--volume</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
    #
    #   @return [Array<MountPoint>]
    #
    # @!attribute readonly_root_filesystem
    #   <p>When this parameter is true, the container is given read-only access to its root file system. This parameter
    #      maps to <code>ReadonlyRootfs</code> in the <a href="https://docs.docker.com/engine/api/v1.23/ create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/api/v1.23/">Docker Remote API</a> and
    #      the <code>--read-only</code> option to <code>docker run</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute privileged
    #   <p>When this parameter is true, the container is given elevated permissions on the host container instance (similar
    #      to the <code>root</code> user). This parameter maps to <code>Privileged</code> in the
    #      <a href="https://docs.docker.com/engine/api/v1.23/ create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/api/v1.23/">Docker Remote API</a> and the <code>--privileged</code> option to
    #       <a href="https://docs.docker.com/engine/reference/run/">docker run</a>. The default value is false.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources and shouldn't be provided, or
    #       specified as false.</p>
    #            </note>
    #
    #   @return [Boolean]
    #
    # @!attribute ulimits
    #   <p>A list of <code>ulimits</code> to set in the container. This parameter maps to <code>Ulimits</code> in the
    #      <a href="https://docs.docker.com/engine/api/v1.23/ create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/api/v1.23/">Docker Remote API</a> and the <code>--ulimit</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources and shouldn't be
    #       provided.</p>
    #            </note>
    #
    #   @return [Array<Ulimit>]
    #
    # @!attribute user
    #   <p>The user name to use inside the container. This parameter maps to <code>User</code> in the
    #      <a href="https://docs.docker.com/engine/api/v1.23/ create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/api/v1.23/">Docker Remote API</a> and the <code>--user</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_type
    #   <p>The instance type to use for a multi-node parallel job. All node groups in a multi-node parallel job must use
    #      the same instance type.</p>
    #            <note>
    #               <p>This parameter isn't applicable to single-node container jobs or jobs that run on Fargate resources, and
    #       shouldn't be provided.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute resource_requirements
    #   <p>The type and amount of resources to assign to a container. The supported resources include <code>GPU</code>,
    #       <code>MEMORY</code>, and <code>VCPU</code>.</p>
    #
    #   @return [Array<ResourceRequirement>]
    #
    # @!attribute linux_parameters
    #   <p>Linux-specific modifications that are applied to the container, such as details for device mappings.</p>
    #
    #   @return [LinuxParameters]
    #
    # @!attribute log_configuration
    #   <p>The log configuration specification for the container.</p>
    #            <p>This parameter maps to <code>LogConfig</code> in the <a href="https://docs.docker.com/engine/api/v1.23/ create-a-container">Create a container</a> section of the
    #      <a href="https://docs.docker.com/engine/api/v1.23/">Docker Remote API</a> and the <code>--log-driver</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.
    #      By default, containers use the same logging driver that the Docker daemon uses. However the container might use a
    #      different logging driver than the Docker daemon by specifying a log driver with this parameter in the container
    #      definition. To use a different logging driver for a container, the log system must be configured properly on the
    #      container instance (or on a different log server for remote logging options). For more information on the options for
    #      different supported log drivers, see <a href="https://docs.docker.com/engine/admin/logging/overview/">Configure
    #       logging drivers</a> in the Docker documentation.</p>
    #            <note>
    #               <p>Batch currently supports a subset of the logging drivers available to the Docker daemon (shown in the <a>LogConfiguration</a> data type).</p>
    #            </note>
    #            <p>This parameter requires version 1.18 of the Docker Remote API or greater on your
    #    container instance. To check the Docker Remote API version on your container instance, log into your
    #    container instance and run the following command: <code>sudo docker version | grep "Server API version"</code>
    #            </p>
    #            <note>
    #               <p>The Amazon ECS container agent running on a container instance must register the logging drivers available on that
    #       instance with the <code>ECS_AVAILABLE_LOGGING_DRIVERS</code> environment variable before containers placed on that
    #       instance can use these log configuration options. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html">Amazon ECS container agent configuration</a> in the
    #        <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #            </note>
    #
    #   @return [LogConfiguration]
    #
    # @!attribute secrets
    #   <p>The secrets for the container. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/specifying-sensitive-data.html">Specifying sensitive data</a> in the
    #       <i>Batch User Guide</i>.</p>
    #
    #   @return [Array<Secret>]
    #
    # @!attribute network_configuration
    #   <p>The network configuration for jobs that are running on Fargate resources. Jobs that are running on EC2
    #      resources must not specify this parameter.</p>
    #
    #   @return [NetworkConfiguration]
    #
    # @!attribute fargate_platform_configuration
    #   <p>The platform configuration for jobs that are running on Fargate resources. Jobs that are running on EC2
    #      resources must not specify this parameter.</p>
    #
    #   @return [FargatePlatformConfiguration]
    #
    ContainerProperties = ::Struct.new(
      :image,
      :vcpus,
      :memory,
      :command,
      :job_role_arn,
      :execution_role_arn,
      :volumes,
      :environment,
      :mount_points,
      :readonly_root_filesystem,
      :privileged,
      :ulimits,
      :user,
      :instance_type,
      :resource_requirements,
      :linux_parameters,
      :log_configuration,
      :secrets,
      :network_configuration,
      :fargate_platform_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing summary details of a container within a job.</p>
    #
    # @!attribute exit_code
    #   <p>The exit code to return upon completion.</p>
    #
    #   @return [Integer]
    #
    # @!attribute reason
    #   <p>A short (255 max characters) human-readable string to provide additional details about a running or stopped
    #      container.</p>
    #
    #   @return [String]
    #
    ContainerSummary = ::Struct.new(
      :exit_code,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the parameters for <code>CreateComputeEnvironment</code>.</p>
    #
    # @!attribute compute_environment_name
    #   <p>The name for your compute environment. It can be up to 128 letters long. It can contain uppercase and
    #    lowercase letters, numbers, hyphens (-), and underscores (_).</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the compute environment: <code>MANAGED</code> or <code>UNMANAGED</code>. For more information, see
    #       <a href="https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html">Compute Environments</a> in the
    #       <i>Batch User Guide</i>.</p>
    #
    #   Enum, one of: ["MANAGED", "UNMANAGED"]
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the compute environment. If the state is <code>ENABLED</code>, then the compute environment accepts
    #      jobs from a queue and can scale out automatically based on queues.</p>
    #            <p>If the state is <code>ENABLED</code>, then the Batch scheduler can attempt to place jobs from an associated
    #      job queue on the compute resources within the environment. If the compute environment is managed, then it can scale
    #      its instances out or in automatically, based on the job queue demand.</p>
    #            <p>If the state is <code>DISABLED</code>, then the Batch scheduler doesn't attempt to place jobs within the
    #      environment. Jobs in a <code>STARTING</code> or <code>RUNNING</code> state continue to progress normally. Managed
    #      compute environments in the <code>DISABLED</code> state don't scale out. However, they scale in to
    #       <code>minvCpus</code> value after instances become idle.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute unmanagedv_cpus
    #   <p>The maximum number of vCPUs for an unmanaged compute environment. This parameter is only used for fair share
    #      scheduling to reserve vCPU capacity for new share identifiers. If this parameter isn't provided for a fair share job
    #      queue, no vCPU capacity is reserved.</p>
    #            <note>
    #               <p>This parameter is only supported when the <code>type</code> parameter is set to <code>UNMANAGED</code>.</p>
    #            </note>
    #
    #   @return [Integer]
    #
    # @!attribute compute_resources
    #   <p>Details about the compute resources managed by the compute environment. This parameter is required for managed
    #      compute environments. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html">Compute Environments</a> in the <i>Batch User Guide</i>.</p>
    #
    #   @return [ComputeResource]
    #
    # @!attribute service_role
    #   <p>The full Amazon Resource Name (ARN) of the IAM role that allows Batch to make calls to other Amazon Web Services services on your behalf. For
    #      more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/service_IAM_role.html">Batch service IAM
    #       role</a> in the <i>Batch User Guide</i>.</p>
    #            <important>
    #               <p>If your account already created the Batch service-linked role, that role is used by default for your compute
    #       environment unless you specify a different role here. If the Batch service-linked role doesn't exist in your
    #       account, and no role is specified here, the service attempts to create the Batch service-linked role in your
    #       account.</p>
    #            </important>
    #            <p>If your specified role has a path other than <code>/</code>, then you must specify either the full role ARN
    #      (recommended) or prefix the role name with the path. For example, if a role with the name <code>bar</code> has a path
    #      of <code>/foo/</code> then you would specify <code>/foo/bar</code> as the role name. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html identifiers-friendly-names">Friendly names
    #       and paths</a> in the <i>IAM User Guide</i>.</p>
    #            <note>
    #               <p>Depending on how you created your Batch service role, its ARN might contain the <code>service-role</code>
    #       path prefix. When you only specify the name of the service role, Batch assumes that your ARN doesn't use the
    #        <code>service-role</code> path prefix. Because of this, we recommend that you specify the full ARN of your service
    #       role when you create compute environments.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags that you apply to the compute environment to help you categorize and organize your resources. Each tag
    #      consists of a key and an optional value. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services Resources</a> in <i>Amazon Web Services General
    #       Reference</i>.</p>
    #            <p>These tags can be updated or removed using the <a href="https://docs.aws.amazon.com/batch/latest/APIReference/API_TagResource.html">TagResource</a> and <a href="https://docs.aws.amazon.com/batch/latest/APIReference/API_UntagResource.html">UntagResource</a> API operations. These tags don't
    #      propagate to the underlying compute resources.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateComputeEnvironmentInput = ::Struct.new(
      :compute_environment_name,
      :type,
      :state,
      :unmanagedv_cpus,
      :compute_resources,
      :service_role,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute compute_environment_name
    #   <p>The name of the compute environment. It can be up to 128 letters long. It can contain uppercase and
    #    lowercase letters, numbers, hyphens (-), and underscores (_).</p>
    #
    #   @return [String]
    #
    # @!attribute compute_environment_arn
    #   <p>The Amazon Resource Name (ARN) of the compute environment.</p>
    #
    #   @return [String]
    #
    CreateComputeEnvironmentOutput = ::Struct.new(
      :compute_environment_name,
      :compute_environment_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the parameters for <code>CreateJobQueue</code>.</p>
    #
    # @!attribute job_queue_name
    #   <p>The name of the job queue. It can be up to 128 letters long. It can contain uppercase and lowercase letters,
    #      numbers, hyphens (-), and underscores (_).</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the job queue. If the job queue state is <code>ENABLED</code>, it is able to accept jobs. If the
    #      job queue state is <code>DISABLED</code>, new jobs can't be added to the queue, but jobs already in the queue can
    #      finish.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute scheduling_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the fair share scheduling policy. If this parameter is specified, the job queue uses a fair
    #      share scheduling policy. If this parameter isn't specified, the job queue uses a first in, first out (FIFO)
    #      scheduling policy. After a job queue is created, you can replace but can't remove the fair share scheduling policy.
    #      The format is
    #        <code>aws:<i>Partition</i>:batch:<i>Region</i>:<i>Account</i>:scheduling-policy/<i>Name</i>
    #               </code>.
    #      An example is
    #      <code>aws:aws:batch:us-west-2:012345678910:scheduling-policy/MySchedulingPolicy</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute priority
    #   <p>The priority of the job queue. Job queues with a higher priority (or a higher integer value for the
    #       <code>priority</code> parameter) are evaluated first when associated with the same compute environment. Priority is
    #      determined in descending order. For example, a job queue with a priority value of <code>10</code> is given scheduling
    #      preference over a job queue with a priority value of <code>1</code>. All of the compute environments must be either
    #      EC2 (<code>EC2</code> or <code>SPOT</code>) or Fargate (<code>FARGATE</code> or <code>FARGATE_SPOT</code>); EC2 and
    #      Fargate compute environments can't be mixed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute compute_environment_order
    #   <p>The set of compute environments mapped to a job queue and their order relative to each other. The job scheduler
    #      uses this parameter to determine which compute environment runs a specific job. Compute environments must be in
    #      the <code>VALID</code> state before you can associate them with a job queue. You can associate up to three compute
    #      environments with a job queue. All of the compute environments must be either EC2 (<code>EC2</code> or
    #       <code>SPOT</code>) or Fargate (<code>FARGATE</code> or <code>FARGATE_SPOT</code>); EC2 and Fargate compute
    #      environments can't be mixed.</p>
    #            <note>
    #               <p>All compute environments that are associated with a job queue must share the same architecture. Batch doesn't
    #       support mixing compute environment architecture types in a single job queue.</p>
    #            </note>
    #
    #   @return [Array<ComputeEnvironmentOrder>]
    #
    # @!attribute tags
    #   <p>The tags that you apply to the job queue to help you categorize and organize your resources. Each tag consists
    #      of a key and an optional value. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/using-tags.html">Tagging your Batch resources</a> in <i>Batch User Guide</i>.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateJobQueueInput = ::Struct.new(
      :job_queue_name,
      :state,
      :scheduling_policy_arn,
      :priority,
      :compute_environment_order,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_queue_name
    #   <p>The name of the job queue.</p>
    #
    #   @return [String]
    #
    # @!attribute job_queue_arn
    #   <p>The Amazon Resource Name (ARN) of the job queue.</p>
    #
    #   @return [String]
    #
    CreateJobQueueOutput = ::Struct.new(
      :job_queue_name,
      :job_queue_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the parameters for <code>CreateSchedulingPolicy</code>.</p>
    #
    # @!attribute name
    #   <p>The name of the scheduling policy. It can be up to 128 letters long. It can contain uppercase and lowercase
    #      letters, numbers, hyphens (-), and underscores (_).</p>
    #
    #   @return [String]
    #
    # @!attribute fairshare_policy
    #   <p>The fair share policy of the scheduling policy.</p>
    #
    #   @return [FairsharePolicy]
    #
    # @!attribute tags
    #   <p>The tags that you apply to the scheduling policy to help you categorize and organize your resources. Each tag
    #      consists of a key and an optional value. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services Resources</a> in <i>Amazon Web Services General
    #       Reference</i>.</p>
    #            <p>These tags can be updated or removed using the <a href="https://docs.aws.amazon.com/batch/latest/APIReference/API_TagResource.html">TagResource</a> and <a href="https://docs.aws.amazon.com/batch/latest/APIReference/API_UntagResource.html">UntagResource</a> API operations.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateSchedulingPolicyInput = ::Struct.new(
      :name,
      :fairshare_policy,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the scheduling policy.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the scheduling policy. The format is
    #        <code>aws:<i>Partition</i>:batch:<i>Region</i>:<i>Account</i>:scheduling-policy/<i>Name</i>
    #               </code>.
    #      For example,
    #      <code>aws:aws:batch:us-west-2:012345678910:scheduling-policy/MySchedulingPolicy</code>.</p>
    #
    #   @return [String]
    #
    CreateSchedulingPolicyOutput = ::Struct.new(
      :name,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the parameters for <code>DeleteComputeEnvironment</code>.</p>
    #
    # @!attribute compute_environment
    #   <p>The name or Amazon Resource Name (ARN) of the compute environment to delete.</p>
    #
    #   @return [String]
    #
    DeleteComputeEnvironmentInput = ::Struct.new(
      :compute_environment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteComputeEnvironmentOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the parameters for <code>DeleteJobQueue</code>.</p>
    #
    # @!attribute job_queue
    #   <p>The short name or full Amazon Resource Name (ARN) of the queue to delete.</p>
    #
    #   @return [String]
    #
    DeleteJobQueueInput = ::Struct.new(
      :job_queue,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteJobQueueOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the parameters for <code>DeleteSchedulingPolicy</code>.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the scheduling policy to delete.</p>
    #
    #   @return [String]
    #
    DeleteSchedulingPolicyInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteSchedulingPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_definition
    #   <p>The name and revision (<code>name:revision</code>) or full Amazon Resource Name (ARN) of the job definition to deregister.</p>
    #
    #   @return [String]
    #
    DeregisterJobDefinitionInput = ::Struct.new(
      :job_definition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeregisterJobDefinitionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the parameters for <code>DescribeComputeEnvironments</code>.</p>
    #
    # @!attribute compute_environments
    #   <p>A list of up to 100 compute environment names or full Amazon Resource Name (ARN) entries.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_results
    #   <p>The maximum number of cluster results returned by <code>DescribeComputeEnvironments</code> in paginated output.
    #      When this parameter is used, <code>DescribeComputeEnvironments</code> only returns <code>maxResults</code> results in
    #      a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can
    #      be seen by sending another <code>DescribeComputeEnvironments</code> request with the returned <code>nextToken</code>
    #      value. This value can be between 1 and 100. If this parameter isn't used, then
    #       <code>DescribeComputeEnvironments</code> returns up to 100 results and a <code>nextToken</code>
    #      value if applicable.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated <code>DescribeComputeEnvironments</code>
    #      request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination
    #      continues from the end of the previous results that returned the <code>nextToken</code> value. This value is
    #       <code>null</code> when there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that's only used to
    #    retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #
    #   @return [String]
    #
    DescribeComputeEnvironmentsInput = ::Struct.new(
      :compute_environments,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute compute_environments
    #   <p>The list of compute environments.</p>
    #
    #   @return [Array<ComputeEnvironmentDetail>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>DescribeComputeEnvironments</code> request. When
    #      the results of a <code>DescribeComputeEnvironments</code> request exceed <code>maxResults</code>, this value can be
    #      used to retrieve the next page of results. This value is <code>null</code> when there are no more results to
    #      return.</p>
    #
    #   @return [String]
    #
    DescribeComputeEnvironmentsOutput = ::Struct.new(
      :compute_environments,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the parameters for <code>DescribeJobDefinitions</code>.</p>
    #
    # @!attribute job_definitions
    #   <p>A list of up to 100 job definitions. Each entry in the list can either be an ARN in the format
    #       <code>arn:aws:batch:${Region}:${Account}:job-definition/${JobDefinitionName}:${Revision}</code> or a short version
    #      using the form <code>${JobDefinitionName}:${Revision}</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_results
    #   <p>The maximum number of results returned by <code>DescribeJobDefinitions</code> in paginated output. When this
    #      parameter is used, <code>DescribeJobDefinitions</code> only returns <code>maxResults</code> results in a single page
    #      and a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending
    #      another <code>DescribeJobDefinitions</code> request with the returned <code>nextToken</code> value. This value can be
    #      between 1 and 100. If this parameter isn't used, then
    #       <code>DescribeJobDefinitions</code> returns up to 100 results and a <code>nextToken</code> value
    #      if applicable.</p>
    #
    #   @return [Integer]
    #
    # @!attribute job_definition_name
    #   <p>The name of the job definition to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status used to filter job definitions.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated <code>DescribeJobDefinitions</code> request
    #      where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues
    #      from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code>
    #      when there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that's only used to
    #    retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #
    #   @return [String]
    #
    DescribeJobDefinitionsInput = ::Struct.new(
      :job_definitions,
      :max_results,
      :job_definition_name,
      :status,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_definitions
    #   <p>The list of job definitions.</p>
    #
    #   @return [Array<JobDefinition>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>DescribeJobDefinitions</code> request. When the
    #      results of a <code>DescribeJobDefinitions</code> request exceed <code>maxResults</code>, this value can be used to
    #      retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
    #
    #   @return [String]
    #
    DescribeJobDefinitionsOutput = ::Struct.new(
      :job_definitions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the parameters for <code>DescribeJobQueues</code>.</p>
    #
    # @!attribute job_queues
    #   <p>A list of up to 100 queue names or full queue Amazon Resource Name (ARN) entries.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_results
    #   <p>The maximum number of results returned by <code>DescribeJobQueues</code> in paginated output. When this
    #      parameter is used, <code>DescribeJobQueues</code> only returns <code>maxResults</code> results in a single page and a
    #       <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another
    #       <code>DescribeJobQueues</code> request with the returned <code>nextToken</code> value. This value can be between
    #      1 and 100. If this parameter isn't used, then <code>DescribeJobQueues</code> returns up
    #      to 100 results and a <code>nextToken</code> value if applicable.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated <code>DescribeJobQueues</code> request where
    #       <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the
    #      end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when
    #      there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that's only used to
    #    retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #
    #   @return [String]
    #
    DescribeJobQueuesInput = ::Struct.new(
      :job_queues,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_queues
    #   <p>The list of job queues.</p>
    #
    #   @return [Array<JobQueueDetail>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>DescribeJobQueues</code> request. When the results
    #      of a <code>DescribeJobQueues</code> request exceed <code>maxResults</code>, this value can be used to retrieve the
    #      next page of results. This value is <code>null</code> when there are no more results to return.</p>
    #
    #   @return [String]
    #
    DescribeJobQueuesOutput = ::Struct.new(
      :job_queues,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the parameters for <code>DescribeJobs</code>.</p>
    #
    # @!attribute jobs
    #   <p>A list of up to 100 job IDs.</p>
    #
    #   @return [Array<String>]
    #
    DescribeJobsInput = ::Struct.new(
      :jobs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute jobs
    #   <p>The list of jobs.</p>
    #
    #   @return [Array<JobDetail>]
    #
    DescribeJobsOutput = ::Struct.new(
      :jobs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the parameters for <code>DescribeSchedulingPolicies</code>.</p>
    #
    # @!attribute arns
    #   <p>A list of up to 100 scheduling policy Amazon Resource Name (ARN) entries.</p>
    #
    #   @return [Array<String>]
    #
    DescribeSchedulingPoliciesInput = ::Struct.new(
      :arns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scheduling_policies
    #   <p>The list of scheduling policies.</p>
    #
    #   @return [Array<SchedulingPolicyDetail>]
    #
    DescribeSchedulingPoliciesOutput = ::Struct.new(
      :scheduling_policies,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing a container instance host device.</p>
    #          <note>
    #             <p>This object isn't applicable to jobs that are running on Fargate resources and shouldn't be provided.</p>
    #          </note>
    #
    # @!attribute host_path
    #   <p>The path for the device on the host container instance.</p>
    #
    #   @return [String]
    #
    # @!attribute container_path
    #   <p>The path inside the container that's used to expose the host device. By default, the <code>hostPath</code> value
    #      is used.</p>
    #
    #   @return [String]
    #
    # @!attribute permissions
    #   <p>The explicit permissions to provide to the container for the device. By default, the container has permissions
    #      for <code>read</code>, <code>write</code>, and <code>mknod</code> for the device.</p>
    #
    #   @return [Array<String>]
    #
    Device = ::Struct.new(
      :host_path,
      :container_path,
      :permissions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeviceCgroupPermission
    #
    module DeviceCgroupPermission
      # No documentation available.
      #
      READ = "READ"

      # No documentation available.
      #
      WRITE = "WRITE"

      # No documentation available.
      #
      MKNOD = "MKNOD"
    end

    # <p>The authorization configuration details for the Amazon EFS file system.</p>
    #
    # @!attribute access_point_id
    #   <p>The Amazon EFS access point ID to use. If an access point is specified, the root directory value specified in the
    #       <code>EFSVolumeConfiguration</code> must either be omitted or set to <code>/</code> which will enforce the path set
    #      on the EFS access point. If an access point is used, transit encryption must be enabled in the
    #       <code>EFSVolumeConfiguration</code>. For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/efs-access-points.html">Working with Amazon EFS access points</a> in the
    #       <i>Amazon Elastic File System User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute iam
    #   <p>Whether or not to use the Batch job IAM role defined in a job definition when mounting the Amazon EFS file system.
    #      If enabled, transit encryption must be enabled in the <code>EFSVolumeConfiguration</code>. If this parameter is
    #      omitted, the default value of <code>DISABLED</code> is used. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/efs-volumes.html efs-volume-accesspoints">Using Amazon EFS access points</a> in the
    #       <i>Batch User Guide</i>. EFS IAM authorization requires that <code>TransitEncryption</code> be
    #       <code>ENABLED</code> and that a <code>JobRoleArn</code> is specified.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    EFSAuthorizationConfig = ::Struct.new(
      :access_point_id,
      :iam,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EFSAuthorizationConfigIAM
    #
    module EFSAuthorizationConfigIAM
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Includes enum constants for EFSTransitEncryption
    #
    module EFSTransitEncryption
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # <p>This is used when you're using an Amazon Elastic File System file system for job storage. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/efs-volumes.html">Amazon EFS Volumes</a> in the
    #     <i>Batch User Guide</i>.</p>
    #
    # @!attribute file_system_id
    #   <p>The Amazon EFS file system ID to use.</p>
    #
    #   @return [String]
    #
    # @!attribute root_directory
    #   <p>The directory within the Amazon EFS file system to mount as the root directory inside the host. If this parameter is
    #      omitted, the root of the Amazon EFS volume is used instead. Specifying <code>/</code> has the same effect as omitting this
    #      parameter. The maximum length is 4,096 characters.</p>
    #            <important>
    #               <p>If an EFS access point is specified in the <code>authorizationConfig</code>, the root directory parameter must
    #       either be omitted or set to <code>/</code>, which enforces the path set on the Amazon EFS access point.</p>
    #            </important>
    #
    #   @return [String]
    #
    # @!attribute transit_encryption
    #   <p>Determines whether to enable encryption for Amazon EFS data in transit between the Amazon ECS host and the Amazon EFS server.
    #      Transit encryption must be enabled if Amazon EFS IAM authorization is used. If this parameter is omitted, the default
    #      value of <code>DISABLED</code> is used. For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/encryption-in-transit.html">Encrypting data in transit</a> in the
    #       <i>Amazon Elastic File System User Guide</i>.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute transit_encryption_port
    #   <p>The port to use when sending encrypted data between the Amazon ECS host and the Amazon EFS server. If you don't specify a
    #      transit encryption port, it uses the port selection strategy that the Amazon EFS mount helper uses. The value must be
    #      between 0 and 65,535. For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/efs-mount-helper.html">EFS mount helper</a> in the <i>Amazon Elastic File System User Guide</i>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute authorization_config
    #   <p>The authorization configuration details for the Amazon EFS file system.</p>
    #
    #   @return [EFSAuthorizationConfig]
    #
    EFSVolumeConfiguration = ::Struct.new(
      :file_system_id,
      :root_directory,
      :transit_encryption,
      :transit_encryption_port,
      :authorization_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information used to select Amazon Machine Images (AMIs) for instances in the compute environment. If
    #     <code>Ec2Configuration</code> isn't specified, the default is <code>ECS_AL2</code> (<a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html#al2ami">Amazon Linux 2</a>).</p>
    #          <note>
    #             <p>This object isn't applicable to jobs that are running on Fargate resources.</p>
    #          </note>
    #
    # @!attribute image_type
    #   <p>The image type to match with the instance type to select an AMI. If the <code>imageIdOverride</code> parameter
    #      isn't specified, then a recent <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html al2ami">Amazon ECS-optimized Amazon Linux 2 AMI</a>
    #       (<code>ECS_AL2</code>) is used. If a new image type is specified in an update, but neither an <code>imageId</code> nor a <code>imageIdOverride</code> parameter is specified, then the latest Amazon ECS optimized AMI for that image type
    #      that's supported by Batch is used.</p>
    #            <dl>
    #               <dt>ECS_AL2</dt>
    #               <dd>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html al2ami">Amazon Linux
    #          2</a>− Default for all non-GPU instance families.</p>
    #               </dd>
    #               <dt>ECS_AL2_NVIDIA</dt>
    #               <dd>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html gpuami">Amazon Linux
    #          2 (GPU)</a>−Default for all GPU instance families (for example <code>P4</code> and <code>G4</code>) and
    #         can be used for all non Amazon Web Services Graviton-based instance types.</p>
    #               </dd>
    #               <dt>ECS_AL1</dt>
    #               <dd>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html alami">Amazon Linux</a>.
    #         Amazon Linux is reaching the end-of-life of standard support. For more information, see <a href="http://aws.amazon.com/amazon-linux-ami/">Amazon Linux AMI</a>.</p>
    #               </dd>
    #            </dl>
    #
    #   @return [String]
    #
    # @!attribute image_id_override
    #   <p>The AMI ID used for instances launched in the compute environment that match the image type. This setting
    #      overrides the <code>imageId</code> set in the <code>computeResource</code> object.</p>
    #            <note>
    #               <p>The AMI that you choose for a compute environment must match the architecture of the instance types that
    #       you intend to use for that compute environment. For example, if your compute environment uses A1 instance types,
    #       the compute resource AMI that you choose must support ARM instances. Amazon ECS vends both x86 and ARM versions of the
    #       Amazon ECS-optimized Amazon Linux 2 AMI. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html ecs-optimized-ami-linux-variants.html">Amazon ECS-optimized
    #       Amazon Linux 2 AMI</a>
    #       in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #            </note>
    #
    #   @return [String]
    #
    Ec2Configuration = ::Struct.new(
      :image_type,
      :image_id_override,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a set of conditions to be met, and an action to take (<code>RETRY</code> or <code>EXIT</code>) if all
    #    conditions are met.</p>
    #
    # @!attribute on_status_reason
    #   <p>Contains a glob pattern to match against the <code>StatusReason</code> returned for a job. The pattern can be up
    #      to 512 characters in length. It can contain letters, numbers, periods (.), colons (:), and white space (including
    #      spaces or tabs).
    #      It can optionally end with an
    #      asterisk (*) so that only the start of the string needs to be an exact match.</p>
    #            <p>The string can be between 1 and 512 characters in length.</p>
    #
    #   @return [String]
    #
    # @!attribute on_reason
    #   <p>Contains a glob pattern to match against the <code>Reason</code> returned for a job. The pattern can be up to
    #      512 characters in length. It can contain letters, numbers, periods (.), colons (:), and white space (including spaces
    #      and tabs). It can optionally end with an asterisk (*) so that only the start of the string needs to be an exact
    #      match.</p>
    #            <p>The string can be between 1 and 512 characters in length.</p>
    #
    #   @return [String]
    #
    # @!attribute on_exit_code
    #   <p>Contains a glob pattern to match against the decimal representation of the <code>ExitCode</code> returned for a
    #      job. The pattern can be up to 512 characters in length. It can contain only numbers, and can optionally end with an
    #      asterisk (*) so that only the start of the string needs to be an exact match.</p>
    #            <p>The string can be between 1 and 512 characters in length.</p>
    #
    #   @return [String]
    #
    # @!attribute action
    #   <p>Specifies the action to take if all of the specified conditions (<code>onStatusReason</code>,
    #       <code>onReason</code>, and <code>onExitCode</code>) are met. The values aren't case sensitive.</p>
    #
    #   Enum, one of: ["RETRY", "EXIT"]
    #
    #   @return [String]
    #
    EvaluateOnExit = ::Struct.new(
      :on_status_reason,
      :on_reason,
      :on_exit_code,
      :action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The fair share policy for a scheduling policy.</p>
    #
    # @!attribute share_decay_seconds
    #   <p>The time period to use to calculate a fair share percentage for each fair share identifier in use, in seconds. A
    #      value of zero (0) indicates that only current usage should be measured. The decay allows for more recently run jobs
    #      to have more weight than jobs that ran earlier. The maximum supported value is 604800 (1 week).</p>
    #
    #   @return [Integer]
    #
    # @!attribute compute_reservation
    #   <p>A value used to reserve some of the available maximum vCPU for fair share identifiers that have not yet been
    #      used.</p>
    #            <p>The reserved ratio is
    #       <code>(<i>computeReservation</i>/100)^<i>ActiveFairShares</i>
    #               </code> where
    #        <code>
    #                  <i>ActiveFairShares</i>
    #               </code> is the number of active fair share identifiers.</p>
    #            <p>For example, a <code>computeReservation</code> value of 50 indicates that Batch should reserve 50% of the
    #      maximum available vCPU if there is only one fair share identifier, 25% if there are two fair share identifiers, and
    #      12.5% if there are three fair share identifiers. A <code>computeReservation</code> value of 25 indicates that Batch
    #      should reserve 25% of the maximum available vCPU if there is only one fair share identifier, 6.25% if there are two
    #      fair share identifiers, and 1.56% if there are three fair share identifiers.</p>
    #            <p>The minimum value is 0 and the maximum value is 99.</p>
    #
    #   @return [Integer]
    #
    # @!attribute share_distribution
    #   <p>An array of <code>SharedIdentifier</code> objects that contain the weights for the fair share identifiers for
    #      the fair share policy. Fair share identifiers that aren't included have a default weight of <code>1.0</code>.</p>
    #
    #   @return [Array<ShareAttributes>]
    #
    FairsharePolicy = ::Struct.new(
      :share_decay_seconds,
      :compute_reservation,
      :share_distribution,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The platform configuration for jobs that are running on Fargate resources. Jobs that run on EC2 resources must
    #    not specify this parameter.</p>
    #
    # @!attribute platform_version
    #   <p>The Fargate platform version where the jobs are running. A platform version is specified only for jobs
    #      that are running on Fargate resources. If one isn't specified, the <code>LATEST</code> platform version is used by
    #      default. This uses a recent, approved version of the Fargate platform for compute resources. For more
    #      information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html">Fargate platform versions</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    FargatePlatformConfiguration = ::Struct.new(
      :platform_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Determine whether your data volume persists on the host container instance and where it is stored. If this
    #    parameter is empty, then the Docker daemon assigns a host path for your data volume, but the data isn't guaranteed to
    #    persist after the containers associated with it stop running.</p>
    #
    # @!attribute source_path
    #   <p>The path on the host container instance that's presented to the container. If this parameter is empty, then the
    #      Docker daemon has assigned a host path for you. If this parameter contains a file location, then the data volume
    #      persists at the specified location on the host container instance until you delete it manually. If the source path
    #      location doesn't exist on the host container instance, the Docker daemon creates it. If the location does exist, the
    #      contents of the source path folder are exported.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that run on Fargate resources and shouldn't be provided.</p>
    #            </note>
    #
    #   @return [String]
    #
    Host = ::Struct.new(
      :source_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for JQState
    #
    module JQState
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Includes enum constants for JQStatus
    #
    module JQStatus
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      DELETED = "DELETED"

      # No documentation available.
      #
      VALID = "VALID"

      # No documentation available.
      #
      INVALID = "INVALID"
    end

    # <p>An object representing an Batch job definition.</p>
    #
    # @!attribute job_definition_name
    #   <p>The name of the job definition.</p>
    #
    #   @return [String]
    #
    # @!attribute job_definition_arn
    #   <p>The Amazon Resource Name (ARN) for the job definition.</p>
    #
    #   @return [String]
    #
    # @!attribute revision
    #   <p>The revision of the job definition.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>The status of the job definition.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of job definition, either <code>container</code> or <code>multinode</code>. If the job is run on
    #      Fargate resources, then <code>multinode</code> isn't supported. For more information about multi-node parallel
    #      jobs, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/multi-node-job-def.html">Creating a multi-node parallel job
    #       definition</a> in the <i>Batch User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute scheduling_priority
    #   <p>The scheduling priority of the job definition. This only affects jobs in job queues with a fair share policy.
    #      Jobs with a higher scheduling priority are scheduled before jobs with a lower scheduling priority.</p>
    #
    #   @return [Integer]
    #
    # @!attribute parameters
    #   <p>Default parameters or parameter substitution placeholders that are set in the job definition. Parameters are
    #      specified as a key-value pair mapping. Parameters in a <code>SubmitJob</code> request override any corresponding
    #      parameter defaults from the job definition. For more information about specifying parameters, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/job_definition_parameters.html">Job definition parameters</a> in the
    #       <i>Batch User Guide</i>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute retry_strategy
    #   <p>The retry strategy to use for failed jobs that are submitted with this job definition.</p>
    #
    #   @return [RetryStrategy]
    #
    # @!attribute container_properties
    #   <p>An object with various properties specific to container-based jobs.</p>
    #
    #   @return [ContainerProperties]
    #
    # @!attribute timeout
    #   <p>The timeout configuration for jobs that are submitted with this job definition. You can specify a timeout
    #      duration after which Batch terminates your jobs if they haven't finished.</p>
    #
    #   @return [JobTimeout]
    #
    # @!attribute node_properties
    #   <p>An object with various properties specific to multi-node parallel jobs.</p>
    #            <note>
    #               <p>If the job runs on Fargate resources, then you must not specify <code>nodeProperties</code>; use
    #        <code>containerProperties</code> instead.</p>
    #            </note>
    #
    #   @return [NodeProperties]
    #
    # @!attribute tags
    #   <p>The tags applied to the job definition.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute propagate_tags
    #   <p>Specifies whether to propagate the tags from the job or job definition to the corresponding Amazon ECS task. If no
    #      value is specified, the tags aren't propagated. Tags can only be propagated to the tasks during task creation. For
    #      tags with the same name, job tags are given priority over job definitions tags. If the total number of combined tags
    #      from the job and job definition is over 50, the job is moved to the <code>FAILED</code> state.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute platform_capabilities
    #   <p>The platform capabilities required by the job definition. If no value is specified, it defaults to
    #       <code>EC2</code>. Jobs run on Fargate resources specify <code>FARGATE</code>.</p>
    #
    #   @return [Array<String>]
    #
    JobDefinition = ::Struct.new(
      :job_definition_name,
      :job_definition_arn,
      :revision,
      :status,
      :type,
      :scheduling_priority,
      :parameters,
      :retry_strategy,
      :container_properties,
      :timeout,
      :node_properties,
      :tags,
      :propagate_tags,
      :platform_capabilities,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for JobDefinitionType
    #
    module JobDefinitionType
      # No documentation available.
      #
      Container = "container"

      # No documentation available.
      #
      Multinode = "multinode"
    end

    # <p>An object representing an Batch job dependency.</p>
    #
    # @!attribute job_id
    #   <p>The job ID of the Batch job associated with this dependency.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the job dependency.</p>
    #
    #   Enum, one of: ["N_TO_N", "SEQUENTIAL"]
    #
    #   @return [String]
    #
    JobDependency = ::Struct.new(
      :job_id,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing an Batch job.</p>
    #
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_name
    #   <p>The name of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_queue
    #   <p>The Amazon Resource Name (ARN) of the job queue that the job is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status for the job.</p>
    #            <note>
    #               <p>If your jobs don't progress to <code>STARTING</code>, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/troubleshooting.html job_stuck_in_runnable">Jobs stuck in RUNNABLE status</a> in the
    #       troubleshooting section of the <i>Batch User Guide</i>.</p>
    #            </note>
    #
    #   Enum, one of: ["SUBMITTED", "PENDING", "RUNNABLE", "STARTING", "RUNNING", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute share_identifier
    #   <p>The share identifier for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute scheduling_priority
    #   <p>The scheduling policy of the job definition. This only affects jobs in job queues with a fair share policy. Jobs
    #      with a higher scheduling priority are scheduled before jobs with a lower scheduling priority.</p>
    #
    #   @return [Integer]
    #
    # @!attribute attempts
    #   <p>A list of job attempts associated with this job.</p>
    #
    #   @return [Array<AttemptDetail>]
    #
    # @!attribute status_reason
    #   <p>A short, human-readable string to provide additional details about the current status of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The Unix timestamp (in milliseconds) for when the job was created. For non-array jobs and parent array jobs,
    #      this is when the job entered the <code>SUBMITTED</code> state (at the time <a>SubmitJob</a> was called).
    #      For array child jobs, this is when the child job was spawned by its parent and entered the <code>PENDING</code>
    #      state.</p>
    #
    #   @return [Integer]
    #
    # @!attribute retry_strategy
    #   <p>The retry strategy to use for this job if an attempt fails.</p>
    #
    #   @return [RetryStrategy]
    #
    # @!attribute started_at
    #   <p>The Unix timestamp (in milliseconds) for when the job was started (when the job transitioned from the
    #       <code>STARTING</code> state to the <code>RUNNING</code> state). This parameter isn't provided for child jobs of
    #      array jobs or multi-node parallel jobs.</p>
    #
    #   @return [Integer]
    #
    # @!attribute stopped_at
    #   <p>The Unix timestamp (in milliseconds) for when the job was stopped (when the job transitioned from the
    #       <code>RUNNING</code> state to a terminal state, such as <code>SUCCEEDED</code> or <code>FAILED</code>).</p>
    #
    #   @return [Integer]
    #
    # @!attribute depends_on
    #   <p>A list of job IDs that this job depends on.</p>
    #
    #   @return [Array<JobDependency>]
    #
    # @!attribute job_definition
    #   <p>The Amazon Resource Name (ARN) of the job definition that's used by this job.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>Additional parameters passed to the job that replace parameter substitution placeholders or override any
    #      corresponding parameter defaults from the job definition.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute container
    #   <p>An object representing the details of the container that's associated with the job.</p>
    #
    #   @return [ContainerDetail]
    #
    # @!attribute node_details
    #   <p>An object representing the details of a node that's associated with a multi-node parallel job.</p>
    #
    #   @return [NodeDetails]
    #
    # @!attribute node_properties
    #   <p>An object representing the node properties of a multi-node parallel job.</p>
    #            <note>
    #               <p>This isn't applicable to jobs that are running on Fargate resources.</p>
    #            </note>
    #
    #   @return [NodeProperties]
    #
    # @!attribute array_properties
    #   <p>The array properties of the job, if it is an array job.</p>
    #
    #   @return [ArrayPropertiesDetail]
    #
    # @!attribute timeout
    #   <p>The timeout configuration for the job.</p>
    #
    #   @return [JobTimeout]
    #
    # @!attribute tags
    #   <p>The tags applied to the job.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute propagate_tags
    #   <p>Specifies whether to propagate the tags from the job or job definition to the corresponding Amazon ECS task. If no
    #      value is specified, the tags aren't propagated. Tags can only be propagated to the tasks during task creation. For
    #      tags with the same name, job tags are given priority over job definitions tags. If the total number of combined tags
    #      from the job and job definition is over 50, the job is moved to the <code>FAILED</code> state.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute platform_capabilities
    #   <p>The platform capabilities required by the job definition. If no value is specified, it defaults to
    #       <code>EC2</code>. Jobs run on Fargate resources specify <code>FARGATE</code>.</p>
    #
    #   @return [Array<String>]
    #
    JobDetail = ::Struct.new(
      :job_arn,
      :job_name,
      :job_id,
      :job_queue,
      :status,
      :share_identifier,
      :scheduling_priority,
      :attempts,
      :status_reason,
      :created_at,
      :retry_strategy,
      :started_at,
      :stopped_at,
      :depends_on,
      :job_definition,
      :parameters,
      :container,
      :node_details,
      :node_properties,
      :array_properties,
      :timeout,
      :tags,
      :propagate_tags,
      :platform_capabilities,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing the details of an Batch job queue.</p>
    #
    # @!attribute job_queue_name
    #   <p>The name of the job queue.</p>
    #
    #   @return [String]
    #
    # @!attribute job_queue_arn
    #   <p>The Amazon Resource Name (ARN) of the job queue.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>Describes the ability of the queue to accept new jobs. If the job queue state is <code>ENABLED</code>, it's able
    #      to accept jobs. If the job queue state is <code>DISABLED</code>, new jobs can't be added to the queue, but jobs
    #      already in the queue can finish.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute scheduling_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the scheduling policy. The format is
    #        <code>aws:<i>Partition</i>:batch:<i>Region</i>:<i>Account</i>:scheduling-policy/<i>Name</i>
    #               </code>.
    #      For example,
    #      <code>aws:aws:batch:us-west-2:012345678910:scheduling-policy/MySchedulingPolicy</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the job queue (for example, <code>CREATING</code> or <code>VALID</code>).</p>
    #
    #   Enum, one of: ["CREATING", "UPDATING", "DELETING", "DELETED", "VALID", "INVALID"]
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p>A short, human-readable string to provide additional details about the current status of the job queue.</p>
    #
    #   @return [String]
    #
    # @!attribute priority
    #   <p>The priority of the job queue. Job queues with a higher priority (or a higher integer value for the
    #       <code>priority</code> parameter) are evaluated first when associated with the same compute environment. Priority is
    #      determined in descending order, for example, a job queue with a priority value of <code>10</code> is given scheduling
    #      preference over a job queue with a priority value of <code>1</code>. All of the compute environments must be either
    #      EC2 (<code>EC2</code> or <code>SPOT</code>) or Fargate (<code>FARGATE</code> or <code>FARGATE_SPOT</code>); EC2 and
    #      Fargate compute environments can't be mixed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute compute_environment_order
    #   <p>The compute environments that are attached to the job queue and the order that job placement is preferred.
    #      Compute environments are selected for job placement in ascending order.</p>
    #
    #   @return [Array<ComputeEnvironmentOrder>]
    #
    # @!attribute tags
    #   <p>The tags applied to the job queue. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/using-tags.html">Tagging your Batch resources</a> in
    #      <i>Batch User Guide</i>.</p>
    #
    #   @return [Hash<String, String>]
    #
    JobQueueDetail = ::Struct.new(
      :job_queue_name,
      :job_queue_arn,
      :state,
      :scheduling_policy_arn,
      :status,
      :status_reason,
      :priority,
      :compute_environment_order,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for JobStatus
    #
    module JobStatus
      # No documentation available.
      #
      SUBMITTED = "SUBMITTED"

      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      RUNNABLE = "RUNNABLE"

      # No documentation available.
      #
      STARTING = "STARTING"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>An object representing summary details of a job.</p>
    #
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The ID of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_name
    #   <p>The name of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The Unix timestamp (in milliseconds) for when the job was created. For non-array jobs and parent array jobs,
    #      this is when the job entered the <code>SUBMITTED</code> state (at the time <a>SubmitJob</a> was called).
    #      For array child jobs, this is when the child job was spawned by its parent and entered the <code>PENDING</code>
    #      state.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>The current status for the job.</p>
    #
    #   Enum, one of: ["SUBMITTED", "PENDING", "RUNNABLE", "STARTING", "RUNNING", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p>A short, human-readable string to provide additional details about the current status of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute started_at
    #   <p>The Unix timestamp for when the job was started (when the job transitioned from the <code>STARTING</code> state
    #      to the <code>RUNNING</code> state).</p>
    #
    #   @return [Integer]
    #
    # @!attribute stopped_at
    #   <p>The Unix timestamp for when the job was stopped (when the job transitioned from the <code>RUNNING</code> state
    #      to a terminal state, such as <code>SUCCEEDED</code> or <code>FAILED</code>).</p>
    #
    #   @return [Integer]
    #
    # @!attribute container
    #   <p>An object representing the details of the container that's associated with the job.</p>
    #
    #   @return [ContainerSummary]
    #
    # @!attribute array_properties
    #   <p>The array properties of the job, if it is an array job.</p>
    #
    #   @return [ArrayPropertiesSummary]
    #
    # @!attribute node_properties
    #   <p>The node properties for a single node in a job summary list.</p>
    #            <note>
    #               <p>This isn't applicable to jobs that are running on Fargate resources.</p>
    #            </note>
    #
    #   @return [NodePropertiesSummary]
    #
    # @!attribute job_definition
    #   <p>The Amazon Resource Name (ARN) of the job definition.</p>
    #
    #   @return [String]
    #
    JobSummary = ::Struct.new(
      :job_arn,
      :job_id,
      :job_name,
      :created_at,
      :status,
      :status_reason,
      :started_at,
      :stopped_at,
      :container,
      :array_properties,
      :node_properties,
      :job_definition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing a job timeout configuration.</p>
    #
    # @!attribute attempt_duration_seconds
    #   <p>The time duration in seconds (measured from the job attempt's <code>startedAt</code> timestamp) after which
    #      Batch terminates your jobs if they have not finished. The minimum value for the timeout is 60 seconds.</p>
    #
    #   @return [Integer]
    #
    JobTimeout = ::Struct.new(
      :attempt_duration_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A key-value pair object.</p>
    #
    # @!attribute name
    #   <p>The name of the key-value pair. For environment variables, this is the name of the environment variable.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the key-value pair. For environment variables, this is the value of the environment
    #      variable.</p>
    #
    #   @return [String]
    #
    KeyValuePair = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A filter name and value pair that's used to return a more specific list of results from a <code>ListJobs</code>
    #    API operation.</p>
    #
    # @!attribute name
    #   <p>The name of the filter. Filter names are case sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The filter values.</p>
    #
    #   @return [Array<String>]
    #
    KeyValuesPair = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing a launch template associated with a compute resource. You must specify either the launch
    #    template ID or launch template name in the request, but not both.</p>
    #          <p>If security groups are specified using both the <code>securityGroupIds</code> parameter of
    #     <code>CreateComputeEnvironment</code> and the launch template, the values in the <code>securityGroupIds</code>
    #    parameter of <code>CreateComputeEnvironment</code> will be used.</p>
    #          <note>
    #             <p>This object isn't applicable to jobs that are running on Fargate resources.</p>
    #          </note>
    #
    # @!attribute launch_template_id
    #   <p>The ID of the launch template.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_template_name
    #   <p>The name of the launch template.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version number of the launch template, <code>$Latest</code>, or <code>$Default</code>.</p>
    #            <p>If the value is <code>$Latest</code>, the latest version of the launch template is used. If the value is
    #       <code>$Default</code>, the default version of the launch template is used.</p>
    #            <important>
    #               <p>If the AMI ID that's used in a compute environment is from the launch template, the AMI isn't changed when the
    #       compute environment is updated. It's only changed if the <code>updateToLatestImageVersion</code> parameter for the compute
    #       environment is set to <code>true</code>. During an infrastructure update, if either <code>$Latest</code> or
    #        <code>$Default</code> is specified, Batch re-evaluates the launch template version, and it might use a different
    #       version of the launch template. This is the case even if the launch template isn't specified in the update. When
    #       updating a compute environment, changing the launch template requires an infrastructure update of the compute
    #       environment. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html">Updating compute environments</a> in the
    #        <i>Batch User Guide</i>.</p>
    #            </important>
    #            <p>Default: <code>$Default</code>.</p>
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

    # <p>Linux-specific modifications that are applied to the container, such as details for device mappings.</p>
    #
    # @!attribute devices
    #   <p>Any host devices to expose to the container. This parameter maps to <code>Devices</code> in the
    #      <a href="https://docs.docker.com/engine/api/v1.23/ create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/api/v1.23/">Docker Remote API</a> and the <code>--device</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources and shouldn't be
    #       provided.</p>
    #            </note>
    #
    #   @return [Array<Device>]
    #
    # @!attribute init_process_enabled
    #   <p>If true, run an <code>init</code> process inside the container that forwards signals and reaps processes. This
    #      parameter maps to the <code>--init</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.
    #      This parameter requires version 1.25 of the Docker Remote API or greater on your
    #    container instance. To check the Docker Remote API version on your container instance, log into your
    #    container instance and run the following command: <code>sudo docker version | grep "Server API version"</code>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute shared_memory_size
    #   <p>The value for the size (in MiB) of the <code>/dev/shm</code> volume. This parameter maps to the
    #       <code>--shm-size</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources and shouldn't be
    #       provided.</p>
    #            </note>
    #
    #   @return [Integer]
    #
    # @!attribute tmpfs
    #   <p>The container path, mount options, and size (in MiB) of the tmpfs mount. This parameter maps to the
    #       <code>--tmpfs</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources and shouldn't be
    #       provided.</p>
    #            </note>
    #
    #   @return [Array<Tmpfs>]
    #
    # @!attribute max_swap
    #   <p>The total amount of swap memory (in MiB) a container can use. This parameter is translated to the
    #       <code>--memory-swap</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a> where the value is the
    #      sum of the container memory plus the <code>maxSwap</code> value. For more information, see <a href="https://docs.docker.com/config/containers/resource_constraints/ --memory-swap-details">
    #                  <code>--memory-swap</code> details</a> in the Docker documentation.</p>
    #            <p>If a <code>maxSwap</code> value of <code>0</code> is specified, the container doesn't use swap. Accepted values
    #      are <code>0</code> or any positive integer. If the <code>maxSwap</code> parameter is omitted, the container doesn't
    #      use the swap configuration for the container instance it is running on. A <code>maxSwap</code> value must be set for
    #      the <code>swappiness</code> parameter to be used.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources and shouldn't be
    #       provided.</p>
    #            </note>
    #
    #   @return [Integer]
    #
    # @!attribute swappiness
    #   <p>This allows you to tune a container's memory swappiness behavior. A <code>swappiness</code> value of
    #       <code>0</code> causes swapping not to happen unless absolutely necessary. A <code>swappiness</code> value of
    #       <code>100</code> causes pages to be swapped very aggressively. Accepted values are whole numbers between
    #       <code>0</code> and <code>100</code>. If the <code>swappiness</code> parameter isn't specified, a default value of
    #       <code>60</code> is used. If a value isn't specified for <code>maxSwap</code>, then this parameter is ignored. If
    #       <code>maxSwap</code> is set to 0, the container doesn't use swap. This parameter maps to the
    #       <code>--memory-swappiness</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
    #            <p>Consider the following when you use a per-container swap configuration.</p>
    #            <ul>
    #               <li>
    #                  <p>Swap space must be enabled and allocated on the container instance for the containers to use.</p>
    #                  <note>
    #                     <p>The Amazon ECS optimized AMIs don't have swap enabled by default. You must enable swap on the instance to use this
    #         feature. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-store-swap-volumes.html">Instance store swap volumes</a> in the
    #          <i>Amazon EC2 User Guide for Linux Instances</i> or <a href="http://aws.amazon.com/premiumsupport/knowledge-center/ec2-memory-swap-file/">How do I allocate memory to work as swap space in an
    #          Amazon EC2 instance by using a swap file?</a>
    #                     </p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>The swap space parameters are only supported for job definitions using EC2 resources.</p>
    #               </li>
    #               <li>
    #                  <p>If the <code>maxSwap</code> and <code>swappiness</code> parameters are omitted from a job definition, each
    #        container will have a default <code>swappiness</code> value of 60, and the total swap usage will be limited to two
    #        times the memory reservation of the container.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources and shouldn't be
    #       provided.</p>
    #            </note>
    #
    #   @return [Integer]
    #
    LinuxParameters = ::Struct.new(
      :devices,
      :init_process_enabled,
      :shared_memory_size,
      :tmpfs,
      :max_swap,
      :swappiness,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the parameters for <code>ListJobs</code>.</p>
    #
    # @!attribute job_queue
    #   <p>The name or full Amazon Resource Name (ARN) of the job queue used to list jobs.</p>
    #
    #   @return [String]
    #
    # @!attribute array_job_id
    #   <p>The job ID for an array job. Specifying an array job ID with this parameter lists all child jobs from within the
    #      specified array.</p>
    #
    #   @return [String]
    #
    # @!attribute multi_node_job_id
    #   <p>The job ID for a multi-node parallel job. Specifying a multi-node parallel job ID with this parameter lists all
    #      nodes that are associated with the specified job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_status
    #   <p>The job status used to filter jobs in the specified queue. If the <code>filters</code> parameter is specified,
    #      the <code>jobStatus</code> parameter is ignored and jobs with any status are returned. If you don't specify a status,
    #      only <code>RUNNING</code> jobs are returned.</p>
    #
    #   Enum, one of: ["SUBMITTED", "PENDING", "RUNNABLE", "STARTING", "RUNNING", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results returned by <code>ListJobs</code> in paginated output. When this parameter is
    #      used, <code>ListJobs</code> only returns <code>maxResults</code> results in a single page and a
    #       <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another
    #       <code>ListJobs</code> request with the returned <code>nextToken</code> value. This value can be between
    #      1 and 100. If this parameter isn't used, then <code>ListJobs</code> returns up to
    #      100 results and a <code>nextToken</code> value if applicable.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated <code>ListJobs</code> request where
    #       <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the
    #      end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when
    #      there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that's only used to
    #    retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>The filter to apply to the query. Only one filter can be used at a time. When the filter is used,
    #       <code>jobStatus</code> is ignored. The filter doesn't apply to child jobs in an array or multi-node parallel (MNP)
    #      jobs. The results are sorted by the <code>createdAt</code> field, with the most recent jobs being first.</p>
    #            <dl>
    #               <dt>JOB_NAME</dt>
    #               <dd>
    #                  <p>The value of the filter is a case-insensitive match for the job name. If the value ends with an asterisk (*),
    #         the filter will match any job name that begins with the string before the '*'. This corresponds to the
    #          <code>jobName</code> value. For example, <code>test1</code> matches both <code>Test1</code> and
    #          <code>test1</code>, and <code>test1*</code> matches both <code>test1</code> and <code>Test10</code>. When the
    #          <code>JOB_NAME</code> filter is used, the results are grouped by the job name and version.</p>
    #               </dd>
    #               <dt>JOB_DEFINITION</dt>
    #               <dd>
    #                  <p>The value for the filter is the name or Amazon Resource Name (ARN) of the job definition. This corresponds to the
    #          <code>jobDefinition</code> value. The value is case sensitive. When the value for the filter is the job
    #         definition name, the results include all the jobs that used any revision of that job definition name. If the value
    #         ends with an asterisk (*), the filter will match any job definition name that begins with the string before the
    #         '*'. For example, <code>jd1</code> matches only <code>jd1</code>, and <code>jd1*</code> matches both
    #          <code>jd1</code> and <code>jd1A</code>. The version of the job definition that's used doesn't affect the sort
    #         order. When the <code>JOB_DEFINITION</code> filter is used and the ARN is used (which is in the form
    #          <code>arn:${Partition}:batch:${Region}:${Account}:job-definition/${JobDefinitionName}:${Revision}</code>), the
    #         results include jobs that used the specified revision of the job definition. Asterisk (*) is not supported when
    #         the ARN is used.</p>
    #               </dd>
    #               <dt>BEFORE_CREATED_AT</dt>
    #               <dd>
    #                  <p>The value for the filter is the time that's before the job was created. This corresponds to the
    #          <code>createdAt</code> value. The value is a string representation of the number of milliseconds since 00:00:00
    #         UTC (midnight) on January 1, 1970.</p>
    #               </dd>
    #               <dt>AFTER_CREATED_AT</dt>
    #               <dd>
    #                  <p>The value for the filter is the time that's after the job was created. This corresponds to the
    #          <code>createdAt</code> value. The value is a string representation of the number of milliseconds since 00:00:00
    #         UTC (midnight) on January 1, 1970.</p>
    #               </dd>
    #            </dl>
    #
    #   @return [Array<KeyValuesPair>]
    #
    ListJobsInput = ::Struct.new(
      :job_queue,
      :array_job_id,
      :multi_node_job_id,
      :job_status,
      :max_results,
      :next_token,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_summary_list
    #   <p>A list of job summaries that match the request.</p>
    #
    #   @return [Array<JobSummary>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>ListJobs</code> request. When the results of a
    #       <code>ListJobs</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of
    #      results. This value is <code>null</code> when there are no more results to return.</p>
    #
    #   @return [String]
    #
    ListJobsOutput = ::Struct.new(
      :job_summary_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the parameters for <code>ListSchedulingPolicies</code>.</p>
    #
    # @!attribute max_results
    #   <p>The maximum number of results that's returned by <code>ListSchedulingPolicies</code> in paginated output. When
    #      this parameter is used, <code>ListSchedulingPolicies</code> only returns <code>maxResults</code> results in a single
    #      page and a <code>nextToken</code> response element. You can see the remaining results of the initial request by
    #      sending another <code>ListSchedulingPolicies</code> request with the returned <code>nextToken</code> value. This
    #      value can be between 1 and 100. If this parameter isn't used,
    #       <code>ListSchedulingPolicies</code> returns up to 100 results and a <code>nextToken</code> value
    #      if applicable.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value that's returned from a previous paginated <code>ListSchedulingPolicies</code>
    #      request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination
    #      continues from the end of the previous results that returned the <code>nextToken</code> value. This value is
    #       <code>null</code> when there are no more results to
    #      return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that's only used to
    #    retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #
    #   @return [String]
    #
    ListSchedulingPoliciesInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scheduling_policies
    #   <p>A list of scheduling policies that match the request.</p>
    #
    #   @return [Array<SchedulingPolicyListingDetail>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>ListSchedulingPolicies</code> request. When the
    #      results of a <code>ListSchedulingPolicies</code> request exceed <code>maxResults</code>, this value can be used to
    #      retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
    #
    #   @return [String]
    #
    ListSchedulingPoliciesOutput = ::Struct.new(
      :scheduling_policies,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the parameters for <code>ListTagsForResource</code>.</p>
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource that tags are listed for. Batch resources that support tags are compute environments, jobs, job definitions, job queues,
    #    and scheduling policies. ARNs for child jobs of array and multi-node parallel (MNP) jobs are not supported.</p>
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
    #   <p>The tags for the resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Log configuration options to send to a custom log driver for the container.</p>
    #
    # @!attribute log_driver
    #   <p>The log driver to use for the container. The valid values listed for this parameter are log drivers that the
    #      Amazon ECS container agent can communicate with by default.</p>
    #            <p>The supported log drivers are <code>awslogs</code>, <code>fluentd</code>, <code>gelf</code>,
    #       <code>json-file</code>, <code>journald</code>, <code>logentries</code>, <code>syslog</code>, and
    #      <code>splunk</code>.</p>
    #            <note>
    #               <p>Jobs that are running on Fargate resources are restricted to the <code>awslogs</code> and <code>splunk</code>
    #       log drivers.</p>
    #            </note>
    #            <dl>
    #               <dt>awslogs</dt>
    #               <dd>
    #                  <p>Specifies the Amazon CloudWatch Logs logging driver. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/using_awslogs.html">Using the awslogs log driver</a> in the
    #          <i>Batch User Guide</i> and <a href="https://docs.docker.com/config/containers/logging/awslogs/">Amazon CloudWatch Logs logging driver</a> in the Docker documentation.</p>
    #               </dd>
    #               <dt>fluentd</dt>
    #               <dd>
    #                  <p>Specifies the Fluentd logging driver. For more information, including usage and options, see <a href="https://docs.docker.com/config/containers/logging/fluentd/">Fluentd logging driver</a> in the Docker
    #         documentation.</p>
    #               </dd>
    #               <dt>gelf</dt>
    #               <dd>
    #                  <p>Specifies the Graylog Extended Format (GELF) logging driver. For more information, including usage and
    #         options, see <a href="https://docs.docker.com/config/containers/logging/gelf/">Graylog Extended Format logging
    #          driver</a> in the Docker documentation.</p>
    #               </dd>
    #               <dt>journald</dt>
    #               <dd>
    #                  <p>Specifies the journald logging driver. For more information, including usage and options, see <a href="https://docs.docker.com/config/containers/logging/journald/">Journald logging driver</a> in the Docker
    #         documentation.</p>
    #               </dd>
    #               <dt>json-file</dt>
    #               <dd>
    #                  <p>Specifies the JSON file logging driver. For more information, including usage and options, see <a href="https://docs.docker.com/config/containers/logging/json-file/">JSON File logging driver</a> in the Docker
    #         documentation.</p>
    #               </dd>
    #               <dt>splunk</dt>
    #               <dd>
    #                  <p>Specifies the Splunk logging driver. For more information, including usage and options, see <a href="https://docs.docker.com/config/containers/logging/splunk/">Splunk logging driver</a> in the Docker
    #         documentation.</p>
    #               </dd>
    #               <dt>syslog</dt>
    #               <dd>
    #                  <p>Specifies the syslog logging driver. For more information, including usage and options, see <a href="https://docs.docker.com/config/containers/logging/syslog/">Syslog logging driver</a> in the Docker
    #         documentation.</p>
    #               </dd>
    #            </dl>
    #            <note>
    #               <p>If you have a custom driver that's not listed earlier that you want to work with the Amazon ECS container agent, you
    #       can fork the Amazon ECS container agent project that's <a href="https://github.com/aws/amazon-ecs-agent">available on
    #        GitHub</a> and customize it to work with that driver. We encourage you to submit pull requests for changes that
    #       you want to have included. However, Amazon Web Services doesn't currently support running modified copies of this
    #       software.</p>
    #            </note>
    #            <p>This parameter requires version 1.18 of the Docker Remote API or greater on your
    #    container instance. To check the Docker Remote API version on your container instance, log into your
    #    container instance and run the following command: <code>sudo docker version | grep "Server API version"</code>
    #            </p>
    #
    #   Enum, one of: ["json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk"]
    #
    #   @return [String]
    #
    # @!attribute options
    #   <p>The configuration options to send to the log driver. This parameter requires version 1.19 of the Docker Remote API or greater on your
    #    container instance. To check the Docker Remote API version on your container instance, log into your
    #    container instance and run the following command: <code>sudo docker version | grep "Server API version"</code>
    #            </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute secret_options
    #   <p>The secrets to pass to the log configuration. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/specifying-sensitive-data.html">Specifying sensitive data</a> in the
    #       <i>Batch User Guide</i>.</p>
    #
    #   @return [Array<Secret>]
    #
    LogConfiguration = ::Struct.new(
      :log_driver,
      :options,
      :secret_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LogDriver
    #
    module LogDriver
      # No documentation available.
      #
      JSON_FILE = "json-file"

      # No documentation available.
      #
      SYSLOG = "syslog"

      # No documentation available.
      #
      JOURNALD = "journald"

      # No documentation available.
      #
      GELF = "gelf"

      # No documentation available.
      #
      FLUENTD = "fluentd"

      # No documentation available.
      #
      AWSLOGS = "awslogs"

      # No documentation available.
      #
      SPLUNK = "splunk"
    end

    # <p>Details on a Docker volume mount point that's used in a job's container properties. This parameter maps to
    #     <code>Volumes</code> in the <a href="https://docs.docker.com/engine/reference/api/docker_remote_api_v1.19/#create-a-container">Create a
    #     container</a> section of the Docker Remote API and the <code>--volume</code> option to docker run.</p>
    #
    # @!attribute container_path
    #   <p>The path on the container where the host volume is mounted.</p>
    #
    #   @return [String]
    #
    # @!attribute read_only
    #   <p>If this value is <code>true</code>, the container has read-only access to the volume. Otherwise, the container
    #      can write to the volume. The default value is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute source_volume
    #   <p>The name of the volume to mount.</p>
    #
    #   @return [String]
    #
    MountPoint = ::Struct.new(
      :container_path,
      :read_only,
      :source_volume,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The network configuration for jobs that are running on Fargate resources. Jobs that are running on EC2
    #    resources must not specify this parameter.</p>
    #
    # @!attribute assign_public_ip
    #   <p>Indicates whether the job should have a public IP address. For a job that is running on Fargate resources in a
    #      private subnet to send outbound traffic to the internet (for example, to pull container images), the private subnet
    #      requires a NAT gateway be attached to route requests to the internet. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html">Amazon ECS task networking</a>. The
    #      default value is "DISABLED".</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    NetworkConfiguration = ::Struct.new(
      :assign_public_ip,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing the elastic network interface for a multi-node parallel job node.</p>
    #
    # @!attribute attachment_id
    #   <p>The attachment ID for the network interface.</p>
    #
    #   @return [String]
    #
    # @!attribute ipv6_address
    #   <p>The private IPv6 address for the network interface.</p>
    #
    #   @return [String]
    #
    # @!attribute private_ipv4_address
    #   <p>The private IPv4 address for the network interface.</p>
    #
    #   @return [String]
    #
    NetworkInterface = ::Struct.new(
      :attachment_id,
      :ipv6_address,
      :private_ipv4_address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing the details of a multi-node parallel job node.</p>
    #
    # @!attribute node_index
    #   <p>The node index for the node. Node index numbering begins at zero. This index is also available on the node with
    #      the <code>AWS_BATCH_JOB_NODE_INDEX</code> environment variable.</p>
    #
    #   @return [Integer]
    #
    # @!attribute is_main_node
    #   <p>Specifies whether the current node is the main node for a multi-node parallel job.</p>
    #
    #   @return [Boolean]
    #
    NodeDetails = ::Struct.new(
      :node_index,
      :is_main_node,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Object representing any node overrides to a job definition that's used in a <a>SubmitJob</a> API
    #    operation.</p>
    #          <note>
    #             <p>This isn't applicable to jobs that are running on Fargate resources and shouldn't be provided; use
    #      <code>containerOverrides</code> instead.</p>
    #          </note>
    #
    # @!attribute num_nodes
    #   <p>The number of nodes to use with a multi-node parallel job. This value overrides the number of nodes that are
    #      specified in the job definition. To use this override:</p>
    #            <ul>
    #               <li>
    #                  <p>There must be at least one node range in your job definition that has an open upper boundary (such as
    #         <code>:</code> or <code>n:</code>).</p>
    #               </li>
    #               <li>
    #                  <p>The lower boundary of the node range specified in the job definition must be fewer than the number of nodes
    #        specified in the override.</p>
    #               </li>
    #               <li>
    #                  <p>The main node index specified in the job definition must be fewer than the number of nodes specified in the
    #        override.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Integer]
    #
    # @!attribute node_property_overrides
    #   <p>The node property overrides for the job.</p>
    #
    #   @return [Array<NodePropertyOverride>]
    #
    NodeOverrides = ::Struct.new(
      :num_nodes,
      :node_property_overrides,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing the node properties of a multi-node parallel job.</p>
    #
    # @!attribute num_nodes
    #   <p>The number of nodes associated with a multi-node parallel job.</p>
    #
    #   @return [Integer]
    #
    # @!attribute main_node
    #   <p>Specifies the node index for the main node of a multi-node parallel job. This node index value must be fewer
    #      than the number of nodes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute node_range_properties
    #   <p>A list of node ranges and their properties associated with a multi-node parallel job.</p>
    #
    #   @return [Array<NodeRangeProperty>]
    #
    NodeProperties = ::Struct.new(
      :num_nodes,
      :main_node,
      :node_range_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing the properties of a node that's associated with a multi-node parallel job.</p>
    #
    # @!attribute is_main_node
    #   <p>Specifies whether the current node is the main node for a multi-node parallel job.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute num_nodes
    #   <p>The number of nodes associated with a multi-node parallel job.</p>
    #
    #   @return [Integer]
    #
    # @!attribute node_index
    #   <p>The node index for the node. Node index numbering begins at zero. This index is also available on the node with
    #      the <code>AWS_BATCH_JOB_NODE_INDEX</code> environment variable.</p>
    #
    #   @return [Integer]
    #
    NodePropertiesSummary = ::Struct.new(
      :is_main_node,
      :num_nodes,
      :node_index,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Object representing any node overrides to a job definition that's used in a <a>SubmitJob</a> API
    #    operation.</p>
    #
    # @!attribute target_nodes
    #   <p>The range of nodes, using node index values, that's used to override. A range of <code>0:3</code> indicates
    #      nodes with index values of <code>0</code> through <code>3</code>. If the starting range value is omitted
    #       (<code>:n</code>), then <code>0</code> is used to start the range. If the ending range value is omitted
    #       (<code>n:</code>), then the highest possible node index is used to end the range.</p>
    #
    #   @return [String]
    #
    # @!attribute container_overrides
    #   <p>The overrides that should be sent to a node range.</p>
    #
    #   @return [ContainerOverrides]
    #
    NodePropertyOverride = ::Struct.new(
      :target_nodes,
      :container_overrides,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing the properties of the node range for a multi-node parallel job.</p>
    #
    # @!attribute target_nodes
    #   <p>The range of nodes, using node index values. A range of <code>0:3</code> indicates nodes with index values of
    #       <code>0</code> through <code>3</code>. If the starting range value is omitted (<code>:n</code>), then <code>0</code>
    #      is used to start the range. If the ending range value is omitted (<code>n:</code>), then the highest possible node
    #      index is used to end the range. Your accumulative node ranges must account for all nodes (<code>0:n</code>). You can
    #      nest node ranges, for example <code>0:10</code> and <code>4:5</code>, in which case the <code>4:5</code> range
    #      properties override the <code>0:10</code> properties.</p>
    #
    #   @return [String]
    #
    # @!attribute container
    #   <p>The container details for the node range.</p>
    #
    #   @return [ContainerProperties]
    #
    NodeRangeProperty = ::Struct.new(
      :target_nodes,
      :container,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PlatformCapability
    #
    module PlatformCapability
      # No documentation available.
      #
      EC2 = "EC2"

      # No documentation available.
      #
      FARGATE = "FARGATE"
    end

    # <p>Contains the parameters for <code>RegisterJobDefinition</code>.</p>
    #
    # @!attribute job_definition_name
    #   <p>The name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and
    #      lowercase letters, numbers, hyphens (-), and underscores (_).</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of job definition. For more information about multi-node parallel jobs, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/multi-node-job-def.html">Creating a multi-node parallel job definition</a> in the
    #       <i>Batch User Guide</i>.</p>
    #            <note>
    #               <p>If the job is run on Fargate resources, then <code>multinode</code> isn't supported.</p>
    #            </note>
    #
    #   Enum, one of: ["container", "multinode"]
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>Default parameter substitution placeholders to set in the job definition. Parameters are specified as a
    #      key-value pair mapping. Parameters in a <code>SubmitJob</code> request override any corresponding parameter defaults
    #      from the job definition.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute scheduling_priority
    #   <p>The scheduling priority for jobs that are submitted with this job definition. This will only affect jobs in job
    #      queues with a fair share policy. Jobs with a higher scheduling priority will be scheduled before jobs with a lower
    #      scheduling priority.</p>
    #            <p>The minimum supported value is 0 and the maximum supported value is 9999.</p>
    #
    #   @return [Integer]
    #
    # @!attribute container_properties
    #   <p>An object with various properties specific to single-node container-based jobs. If the job definition's
    #       <code>type</code> parameter is <code>container</code>, then you must specify either <code>containerProperties</code>
    #      or <code>nodeProperties</code>.</p>
    #            <note>
    #               <p>If the job runs on Fargate resources, then you must not specify <code>nodeProperties</code>; use only
    #        <code>containerProperties</code>.</p>
    #            </note>
    #
    #   @return [ContainerProperties]
    #
    # @!attribute node_properties
    #   <p>An object with various properties specific to multi-node parallel jobs. If you specify node properties for a
    #      job, it becomes a multi-node parallel job. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/multi-node-parallel-jobs.html">Multi-node Parallel Jobs</a> in the
    #       <i>Batch User Guide</i>. If the job definition's <code>type</code> parameter is
    #      <code>container</code>, then you must specify either <code>containerProperties</code> or
    #      <code>nodeProperties</code>.</p>
    #            <note>
    #               <p>If the job runs on Fargate resources, then you must not specify <code>nodeProperties</code>; use
    #        <code>containerProperties</code> instead.</p>
    #            </note>
    #
    #   @return [NodeProperties]
    #
    # @!attribute retry_strategy
    #   <p>The retry strategy to use for failed jobs that are submitted with this job definition. Any retry strategy that's
    #      specified during a <a>SubmitJob</a> operation overrides the retry strategy defined here. If a job is
    #      terminated due to a timeout, it isn't retried.</p>
    #
    #   @return [RetryStrategy]
    #
    # @!attribute propagate_tags
    #   <p>Specifies whether to propagate the tags from the job or job definition to the corresponding Amazon ECS task. If no
    #      value is specified, the tags are not propagated. Tags can only be propagated to the tasks during task creation. For
    #      tags with the same name, job tags are given priority over job definitions tags. If the total number of combined tags
    #      from the job and job definition is over 50, the job is moved to the <code>FAILED</code> state.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute timeout
    #   <p>The timeout configuration for jobs that are submitted with this job definition, after which Batch terminates
    #      your jobs if they have not finished. If a job is terminated due to a timeout, it isn't retried. The minimum value for
    #      the timeout is 60 seconds. Any timeout configuration that's specified during a <a>SubmitJob</a> operation
    #      overrides the timeout configuration defined here. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/job_timeouts.html">Job Timeouts</a> in the <i>Batch User Guide</i>.</p>
    #
    #   @return [JobTimeout]
    #
    # @!attribute tags
    #   <p>The tags that you apply to the job definition to help you categorize and organize your resources. Each tag
    #      consists of a key and an optional value. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/using-tags.html">Tagging Amazon Web Services Resources</a> in <i>Batch User Guide</i>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute platform_capabilities
    #   <p>The platform capabilities required by the job definition. If no value is specified, it defaults to
    #       <code>EC2</code>. To run the job on Fargate resources, specify <code>FARGATE</code>.</p>
    #
    #   @return [Array<String>]
    #
    RegisterJobDefinitionInput = ::Struct.new(
      :job_definition_name,
      :type,
      :parameters,
      :scheduling_priority,
      :container_properties,
      :node_properties,
      :retry_strategy,
      :propagate_tags,
      :timeout,
      :tags,
      :platform_capabilities,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_definition_name
    #   <p>The name of the job definition.</p>
    #
    #   @return [String]
    #
    # @!attribute job_definition_arn
    #   <p>The Amazon Resource Name (ARN) of the job definition.</p>
    #
    #   @return [String]
    #
    # @!attribute revision
    #   <p>The revision of the job definition.</p>
    #
    #   @return [Integer]
    #
    RegisterJobDefinitionOutput = ::Struct.new(
      :job_definition_name,
      :job_definition_arn,
      :revision,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The type and amount of a resource to assign to a container. The supported resources include <code>GPU</code>,
    #     <code>MEMORY</code>, and <code>VCPU</code>.</p>
    #
    # @!attribute value
    #   <p>The quantity of the specified resource to reserve for the container. The values vary based on the
    #       <code>type</code> specified.</p>
    #            <dl>
    #               <dt>type="GPU"</dt>
    #               <dd>
    #                  <p>The number of physical GPUs to reserve for the container. The number of GPUs reserved for all containers in a
    #         job shouldn't exceed the number of available GPUs on the compute resource that the job is launched on.</p>
    #                  <note>
    #                     <p>GPUs are not available for jobs that are running on Fargate resources.</p>
    #                  </note>
    #               </dd>
    #               <dt>type="MEMORY"</dt>
    #               <dd>
    #                  <p>The memory hard limit (in MiB) present to the container. This parameter is supported for jobs that are
    #         running on EC2 resources. If your container attempts to exceed the memory specified, the container is terminated.
    #         This parameter maps to <code>Memory</code> in the <a href="https://docs.docker.com/engine/api/v1.23/ create-a-container">Create a container</a> section of the
    #         <a href="https://docs.docker.com/engine/api/v1.23/">Docker Remote API</a> and the <code>--memory</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.
    #         You must specify at least 4 MiB of memory for a job. This is required but can be specified in several places for
    #         multi-node parallel (MNP) jobs. It must be specified for each node at least once. This parameter maps to
    #          <code>Memory</code> in the <a href="https://docs.docker.com/engine/api/v1.23/ create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/api/v1.23/">Docker Remote API</a> and the
    #          <code>--memory</code> option to <a href="https://docs.docker.com/engine/reference/run/">docker run</a>.</p>
    #                  <note>
    #                     <p>If you're trying to maximize your resource utilization by providing your jobs as much memory as possible for
    #          a particular instance type, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/memory-management.html">Memory
    #           management</a> in the <i>Batch User Guide</i>.</p>
    #                  </note>
    #                  <p>For jobs that are running on Fargate resources, then <code>value</code> is the hard limit (in MiB), and
    #         must match one of the supported values and the <code>VCPU</code> values must be one of the values supported for
    #         that memory value.</p>
    #                  <dl>
    #                     <dt>value = 512</dt>
    #                     <dd>
    #                        <p>
    #                           <code>VCPU</code> = 0.25</p>
    #                     </dd>
    #                     <dt>value = 1024</dt>
    #                     <dd>
    #                        <p>
    #                           <code>VCPU</code> = 0.25 or 0.5</p>
    #                     </dd>
    #                     <dt>value = 2048</dt>
    #                     <dd>
    #                        <p>
    #                           <code>VCPU</code> = 0.25, 0.5, or 1</p>
    #                     </dd>
    #                     <dt>value = 3072</dt>
    #                     <dd>
    #                        <p>
    #                           <code>VCPU</code> = 0.5, or 1</p>
    #                     </dd>
    #                     <dt>value = 4096</dt>
    #                     <dd>
    #                        <p>
    #                           <code>VCPU</code> = 0.5, 1, or 2</p>
    #                     </dd>
    #                     <dt>value = 5120, 6144, or 7168</dt>
    #                     <dd>
    #                        <p>
    #                           <code>VCPU</code> = 1 or 2</p>
    #                     </dd>
    #                     <dt>value = 8192</dt>
    #                     <dd>
    #                        <p>
    #                           <code>VCPU</code> = 1, 2, or 4</p>
    #                     </dd>
    #                     <dt>value = 9216, 10240, 11264, 12288, 13312, 14336, 15360, or 16384</dt>
    #                     <dd>
    #                        <p>
    #                           <code>VCPU</code> = 2 or 4</p>
    #                     </dd>
    #                     <dt>value = 17408, 18432, 19456, 20480, 21504, 22528, 23552, 24576, 25600, 26624, 27648, 28672, 29696, or 30720</dt>
    #                     <dd>
    #                        <p>
    #                           <code>VCPU</code> = 4</p>
    #                     </dd>
    #                  </dl>
    #               </dd>
    #               <dt>type="VCPU"</dt>
    #               <dd>
    #                  <p>The number of vCPUs reserved for the container. This parameter maps to <code>CpuShares</code> in the
    #         <a href="https://docs.docker.com/engine/api/v1.23/ create-a-container">Create a container</a> section of the <a href="https://docs.docker.com/engine/api/v1.23/">Docker Remote API</a> and the <code>--cpu-shares</code> option to
    #          <a href="https://docs.docker.com/engine/reference/run/">docker run</a>. Each vCPU is equivalent to 1,024 CPU shares. For EC2
    #         resources, you must specify at least one vCPU. This is required but can be specified in several places; it must be
    #         specified for each node at least once.</p>
    #                  <p>For jobs that are running on Fargate resources, then <code>value</code> must match one of the supported
    #         values and the <code>MEMORY</code> values must be one of the values supported for that <code>VCPU</code> value.
    #         The supported values are 0.25, 0.5, 1, 2, and 4</p>
    #                  <dl>
    #                     <dt>value = 0.25</dt>
    #                     <dd>
    #                        <p>
    #                           <code>MEMORY</code> = 512, 1024, or 2048</p>
    #                     </dd>
    #                     <dt>value = 0.5</dt>
    #                     <dd>
    #                        <p>
    #                           <code>MEMORY</code> = 1024, 2048, 3072, or 4096</p>
    #                     </dd>
    #                     <dt>value = 1</dt>
    #                     <dd>
    #                        <p>
    #                           <code>MEMORY</code> = 2048, 3072, 4096, 5120, 6144, 7168, or 8192</p>
    #                     </dd>
    #                     <dt>value = 2</dt>
    #                     <dd>
    #                        <p>
    #                           <code>MEMORY</code> = 4096, 5120, 6144, 7168, 8192, 9216, 10240, 11264, 12288, 13312, 14336, 15360, or 16384</p>
    #                     </dd>
    #                     <dt>value = 4</dt>
    #                     <dd>
    #                        <p>
    #                           <code>MEMORY</code> = 8192, 9216, 10240, 11264, 12288, 13312, 14336, 15360, 16384, 17408, 18432, 19456,
    #        20480, 21504, 22528, 23552, 24576, 25600, 26624, 27648, 28672, 29696, or 30720</p>
    #                     </dd>
    #                  </dl>
    #               </dd>
    #            </dl>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of resource to assign to a container. The supported resources include <code>GPU</code>,
    #       <code>MEMORY</code>, and <code>VCPU</code>.</p>
    #
    #   Enum, one of: ["GPU", "VCPU", "MEMORY"]
    #
    #   @return [String]
    #
    ResourceRequirement = ::Struct.new(
      :value,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceType
    #
    module ResourceType
      # No documentation available.
      #
      GPU = "GPU"

      # No documentation available.
      #
      VCPU = "VCPU"

      # No documentation available.
      #
      MEMORY = "MEMORY"
    end

    # Includes enum constants for RetryAction
    #
    module RetryAction
      # No documentation available.
      #
      RETRY = "RETRY"

      # No documentation available.
      #
      EXIT = "EXIT"
    end

    # <p>The retry strategy associated with a job. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/job_retries.html">Automated job retries</a> in the <i>Batch User Guide</i>.</p>
    #
    # @!attribute attempts
    #   <p>The number of times to move a job to the <code>RUNNABLE</code> status. You can specify between 1 and 10
    #      attempts. If the value of <code>attempts</code> is greater than one, the job is retried on failure the same number of
    #      attempts as the value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute evaluate_on_exit
    #   <p>Array of up to 5 objects that specify conditions under which the job should be retried or failed. If this
    #      parameter is specified, then the <code>attempts</code> parameter must also be specified.</p>
    #
    #   @return [Array<EvaluateOnExit>]
    #
    RetryStrategy = ::Struct.new(
      :attempts,
      :evaluate_on_exit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a scheduling policy.</p>
    #
    # @!attribute name
    #   <p>The name of the scheduling policy.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the scheduling policy. An example is
    #        <code>arn:<i>aws</i>:batch:<i>us-east-1</i>:<i>123456789012</i>:scheduling-policy/<i>HighPriority</i>
    #               </code>.</p>
    #
    #   @return [String]
    #
    # @!attribute fairshare_policy
    #   <p>The fair share policy for the scheduling policy.</p>
    #
    #   @return [FairsharePolicy]
    #
    # @!attribute tags
    #   <p>The tags that you apply to the scheduling policy to categorize and organize your resources. Each tag consists of
    #      a key and an optional value. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a> in <i>Amazon Web Services General
    #       Reference</i>.</p>
    #
    #   @return [Hash<String, String>]
    #
    SchedulingPolicyDetail = ::Struct.new(
      :name,
      :arn,
      :fairshare_policy,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains the details of a scheduling policy that's returned in a
    #     <code>ListSchedulingPolicy</code> action.</p>
    #
    # @!attribute arn
    #   <p>Amazon Resource Name (ARN) of the scheduling policy.</p>
    #
    #   @return [String]
    #
    SchedulingPolicyListingDetail = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing the secret to expose to your container. Secrets can be exposed to a container in the
    #    following ways:</p>
    #          <ul>
    #             <li>
    #                <p>To inject sensitive data into your containers as environment variables, use the <code>secrets</code> container
    #      definition parameter.</p>
    #             </li>
    #             <li>
    #                <p>To reference sensitive information in the log configuration of a container, use the <code>secretOptions</code>
    #      container definition parameter.</p>
    #             </li>
    #          </ul>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/specifying-sensitive-data.html">Specifying
    #     sensitive data</a> in the <i>Batch User Guide</i>.</p>
    #
    # @!attribute name
    #   <p>The name of the secret.</p>
    #
    #   @return [String]
    #
    # @!attribute value_from
    #   <p>The secret to expose to the container. The supported values are either the full ARN of the Secrets Manager secret or the
    #      full ARN of the parameter in the Amazon Web Services Systems Manager Parameter Store.</p>
    #            <note>
    #               <p>If the Amazon Web Services Systems Manager Parameter Store parameter exists in the same Region as the job you're launching, then you can use
    #       either the full ARN or name of the parameter. If the parameter exists in a different Region, then the full ARN must
    #       be specified.</p>
    #            </note>
    #
    #   @return [String]
    #
    Secret = ::Struct.new(
      :name,
      :value_from,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>These errors are usually caused by a server issue.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the weights for the fair share identifiers for the fair share policy. Fair share identifiers that
    #    aren't included have a default weight of <code>1.0</code>.</p>
    #
    # @!attribute share_identifier
    #   <p>A fair share identifier or fair share identifier prefix. If the string ends with an asterisk (*), this entry
    #      specifies the weight factor to use for fair share identifiers that start with that prefix. The list of fair share
    #      identifiers in a fair share policy cannot overlap. For example, you can't have one that specifies a
    #       <code>shareIdentifier</code> of <code>UserA*</code> and another that specifies a <code>shareIdentifier</code> of
    #       <code>UserA-1</code>.</p>
    #            <p>There can be no more than 500 fair share identifiers active in a job queue.</p>
    #            <p>The string is limited to 255 alphanumeric characters, optionally followed by an asterisk (*).</p>
    #
    #   @return [String]
    #
    # @!attribute weight_factor
    #   <p>The weight factor for the fair share identifier. The default value is 1.0. A lower value has a higher priority
    #      for compute resources. For example, jobs that use a share identifier with a weight factor of 0.125 (1/8) get 8 times
    #      the compute resources of jobs that use a share identifier with a weight factor of 1.</p>
    #            <p>The smallest supported value is 0.0001, and the largest supported value is 999.9999.</p>
    #
    #   @return [Float]
    #
    ShareAttributes = ::Struct.new(
      :share_identifier,
      :weight_factor,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the parameters for <code>SubmitJob</code>.</p>
    #
    # @!attribute job_name
    #   <p>The name of the job. It can be up to 128 letters long. The first character must be alphanumeric, can contain
    #      uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).</p>
    #
    #   @return [String]
    #
    # @!attribute job_queue
    #   <p>The job queue where the job is submitted. You can specify either the name or the Amazon Resource Name (ARN) of the queue.</p>
    #
    #   @return [String]
    #
    # @!attribute share_identifier
    #   <p>The share identifier for the job. If the job queue does not have a scheduling policy, then this parameter must
    #      not be specified. If the job queue has a scheduling policy, then this parameter must be specified.</p>
    #
    #   @return [String]
    #
    # @!attribute scheduling_priority_override
    #   <p>The scheduling priority for the job. This will only affect jobs in job queues with a fair share policy. Jobs
    #      with a higher scheduling priority will be scheduled before jobs with a lower scheduling priority. This will override
    #      any scheduling priority in the job definition.</p>
    #            <p>The minimum supported value is 0 and the maximum supported value is 9999.</p>
    #
    #   @return [Integer]
    #
    # @!attribute array_properties
    #   <p>The array properties for the submitted job, such as the size of the array. The array size can be between 2 and
    #      10,000. If you specify array properties for a job, it becomes an array job. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/array_jobs.html">Array Jobs</a> in the
    #      <i>Batch User Guide</i>.</p>
    #
    #   @return [ArrayProperties]
    #
    # @!attribute depends_on
    #   <p>A list of dependencies for the job. A job can depend upon a maximum of 20 jobs. You can specify a
    #       <code>SEQUENTIAL</code> type dependency without specifying a job ID for array jobs so that each child array job
    #      completes sequentially, starting at index 0. You can also specify an <code>N_TO_N</code> type dependency with a job
    #      ID for array jobs. In that case, each index child of this job must wait for the corresponding index child of each
    #      dependency to complete before it can begin.</p>
    #
    #   @return [Array<JobDependency>]
    #
    # @!attribute job_definition
    #   <p>The job definition used by this job. This value can be one of <code>name</code>, <code>name:revision</code>, or
    #      the Amazon Resource Name (ARN) for the job definition. If <code>name</code> is specified without a revision then the latest active
    #      revision is used.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>Additional parameters passed to the job that replace parameter substitution placeholders that are set in the job
    #      definition. Parameters are specified as a key and value pair mapping. Parameters in a <code>SubmitJob</code> request
    #      override any corresponding parameter defaults from the job definition.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute container_overrides
    #   <p>A list of container overrides in the JSON format that specify the name of a container in the specified job
    #      definition and the overrides it receives. You can override the default command for a container, which is specified in
    #      the job definition or the Docker image, with a <code>command</code> override. You can also override
    #      existing environment variables on a container or add new environment variables to it with an <code>environment</code>
    #      override.</p>
    #
    #   @return [ContainerOverrides]
    #
    # @!attribute node_overrides
    #   <p>A list of node overrides in JSON format that specify the node range to target and the container overrides for
    #      that node range.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources; use
    #        <code>containerOverrides</code> instead.</p>
    #            </note>
    #
    #   @return [NodeOverrides]
    #
    # @!attribute retry_strategy
    #   <p>The retry strategy to use for failed jobs from this <a>SubmitJob</a> operation. When a retry strategy
    #      is specified here, it overrides the retry strategy defined in the job definition.</p>
    #
    #   @return [RetryStrategy]
    #
    # @!attribute propagate_tags
    #   <p>Specifies whether to propagate the tags from the job or job definition to the corresponding Amazon ECS task. If no
    #      value is specified, the tags aren't propagated. Tags can only be propagated to the tasks during task creation. For
    #      tags with the same name, job tags are given priority over job definitions tags. If the total number of combined tags
    #      from the job and job definition is over 50, the job is moved to the <code>FAILED</code> state. When specified, this
    #      overrides the tag propagation setting in the job definition.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute timeout
    #   <p>The timeout configuration for this <a>SubmitJob</a> operation. You can specify a timeout duration
    #      after which Batch terminates your jobs if they haven't finished. If a job is terminated due to a timeout, it isn't
    #      retried. The minimum value for the timeout is 60 seconds. This configuration overrides any timeout configuration
    #      specified in the job definition. For array jobs, child jobs have the same timeout configuration as the parent job.
    #      For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/job_timeouts.html">Job
    #       Timeouts</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [JobTimeout]
    #
    # @!attribute tags
    #   <p>The tags that you apply to the job request to help you categorize and organize your resources. Each tag consists
    #      of a key and an optional value. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services Resources</a> in <i>Amazon Web Services General
    #       Reference</i>.</p>
    #
    #   @return [Hash<String, String>]
    #
    SubmitJobInput = ::Struct.new(
      :job_name,
      :job_queue,
      :share_identifier,
      :scheduling_priority_override,
      :array_properties,
      :depends_on,
      :job_definition,
      :parameters,
      :container_overrides,
      :node_overrides,
      :retry_strategy,
      :propagate_tags,
      :timeout,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_name
    #   <p>The name of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The unique identifier for the job.</p>
    #
    #   @return [String]
    #
    SubmitJobOutput = ::Struct.new(
      :job_arn,
      :job_name,
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the parameters for <code>TagResource</code>.</p>
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that tags are added to. Batch resources that support tags are compute environments, jobs, job definitions, job queues,
    #    and scheduling policies. ARNs for child jobs of array and multi-node parallel (MNP) jobs are not supported.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags that you apply to the resource to help you categorize and organize your resources. Each tag consists of
    #      a key and an optional value. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services Resources</a> in <i>Amazon Web Services General
    #       Reference</i>.</p>
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

    # <p>Contains the parameters for <code>TerminateJob</code>.</p>
    #
    # @!attribute job_id
    #   <p>The Batch job ID of the job to terminate.</p>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>A message to attach to the job that explains the reason for canceling it. This message is returned by future
    #       <a>DescribeJobs</a> operations on the job. This message is also recorded in the Batch activity
    #      logs.</p>
    #
    #   @return [String]
    #
    TerminateJobInput = ::Struct.new(
      :job_id,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TerminateJobOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The container path, mount options, and size of the tmpfs mount.</p>
    #          <note>
    #             <p>This object isn't applicable to jobs that are running on Fargate resources.</p>
    #          </note>
    #
    # @!attribute container_path
    #   <p>The absolute file path in the container where the tmpfs volume is mounted.</p>
    #
    #   @return [String]
    #
    # @!attribute size
    #   <p>The size (in MiB) of the tmpfs volume.</p>
    #
    #   @return [Integer]
    #
    # @!attribute mount_options
    #   <p>The list of tmpfs volume mount options.</p>
    #            <p>Valid values: "<code>defaults</code>" | "<code>ro</code>" | "<code>rw</code>" | "<code>suid</code>" |
    #       "<code>nosuid</code>" | "<code>dev</code>" | "<code>nodev</code>" | "<code>exec</code>" | "<code>noexec</code>" |
    #       "<code>sync</code>" | "<code>async</code>" | "<code>dirsync</code>" | "<code>remount</code>" | "<code>mand</code>" |
    #       "<code>nomand</code>" | "<code>atime</code>" | "<code>noatime</code>" | "<code>diratime</code>" |
    #       "<code>nodiratime</code>" | "<code>bind</code>" | "<code>rbind" | "unbindable" | "runbindable" | "private" |
    #       "rprivate" | "shared" | "rshared" | "slave" | "rslave" | "relatime</code>" | "<code>norelatime</code>" |
    #       "<code>strictatime</code>" | "<code>nostrictatime</code>" | "<code>mode</code>" | "<code>uid</code>" |
    #       "<code>gid</code>" | "<code>nr_inodes</code>" | "<code>nr_blocks</code>" | "<code>mpol</code>"</p>
    #
    #   @return [Array<String>]
    #
    Tmpfs = ::Struct.new(
      :container_path,
      :size,
      :mount_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The <code>ulimit</code> settings to pass to the container.</p>
    #          <note>
    #             <p>This object isn't applicable to jobs that are running on Fargate resources.</p>
    #          </note>
    #
    # @!attribute hard_limit
    #   <p>The hard limit for the <code>ulimit</code> type.</p>
    #
    #   @return [Integer]
    #
    # @!attribute name
    #   <p>The <code>type</code> of the <code>ulimit</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute soft_limit
    #   <p>The soft limit for the <code>ulimit</code> type.</p>
    #
    #   @return [Integer]
    #
    Ulimit = ::Struct.new(
      :hard_limit,
      :name,
      :soft_limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the parameters for <code>UntagResource</code>.</p>
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource from which to delete tags. Batch resources that support tags are compute environments, jobs, job definitions, job queues,
    #    and scheduling policies. ARNs for child jobs of array and multi-node parallel (MNP) jobs are not supported.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The keys of the tags to be removed.</p>
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

    # <p>Contains the parameters for <code>UpdateComputeEnvironment</code>.</p>
    #
    # @!attribute compute_environment
    #   <p>The name or full Amazon Resource Name (ARN) of the compute environment to update.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the compute environment. Compute environments in the <code>ENABLED</code> state can accept jobs
    #      from a queue and scale in or out automatically based on the workload demand of its associated queues.</p>
    #            <p>If the state is <code>ENABLED</code>, then the Batch scheduler can attempt to place jobs from an associated
    #      job queue on the compute resources within the environment. If the compute environment is managed, then it can scale
    #      its instances out or in automatically, based on the job queue demand.</p>
    #            <p>If the state is <code>DISABLED</code>, then the Batch scheduler doesn't attempt to place jobs within the
    #      environment. Jobs in a <code>STARTING</code> or <code>RUNNING</code> state continue to progress normally. Managed
    #      compute environments in the <code>DISABLED</code> state don't scale out. However, they scale in to
    #       <code>minvCpus</code> value after instances become idle.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute unmanagedv_cpus
    #   <p>The maximum number of vCPUs expected to be used for an unmanaged compute environment. Do not specify this
    #      parameter for a managed compute environment. This parameter is only used for fair share scheduling to reserve vCPU
    #      capacity for new share identifiers. If this parameter is not provided for a fair share job queue, no vCPU capacity
    #      will be reserved.</p>
    #
    #   @return [Integer]
    #
    # @!attribute compute_resources
    #   <p>Details of the compute resources managed by the compute environment. Required for a managed compute environment.
    #      For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html">Compute
    #       Environments</a> in the <i>Batch User Guide</i>.</p>
    #
    #   @return [ComputeResourceUpdate]
    #
    # @!attribute service_role
    #   <p>The full Amazon Resource Name (ARN) of the IAM role that allows Batch to make calls to other Amazon Web Services services on your behalf.
    #      For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/service_IAM_role.html">Batch service IAM
    #       role</a> in the <i>Batch User Guide</i>.</p>
    #            <important>
    #               <p>If the compute environment has a service-linked role, it can't be changed to use a regular IAM role.
    #       Likewise, if the compute environment has a regular IAM role, it can't be changed to use a service-linked role. To
    #       update the parameters for the compute environment that require an infrastructure update to change, the <b>AWSServiceRoleForBatch</b> service-linked role must be used. For more information, see
    #        <a href="https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html">Updating compute
    #        environments</a> in the <i>Batch User Guide</i>.</p>
    #            </important>
    #            <p>If your specified role has a path other than <code>/</code>, then you must either specify the full role ARN
    #      (recommended) or prefix the role name with the path.</p>
    #            <note>
    #               <p>Depending on how you created your Batch service role, its ARN might contain the <code>service-role</code>
    #       path prefix. When you only specify the name of the service role, Batch assumes that your ARN doesn't use the
    #        <code>service-role</code> path prefix. Because of this, we recommend that you specify the full ARN of your service
    #       role when you create compute environments.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute update_policy
    #   <p>Specifies the updated infrastructure update policy for the compute environment. For more information about
    #      infrastructure updates, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html">Updating
    #       compute environments</a> in the <i>Batch User Guide</i>.</p>
    #
    #   @return [UpdatePolicy]
    #
    UpdateComputeEnvironmentInput = ::Struct.new(
      :compute_environment,
      :state,
      :unmanagedv_cpus,
      :compute_resources,
      :service_role,
      :update_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute compute_environment_name
    #   <p>The name of the compute environment. It can be up to 128 letters long. It can contain uppercase and
    #    lowercase letters, numbers, hyphens (-), and underscores (_).</p>
    #
    #   @return [String]
    #
    # @!attribute compute_environment_arn
    #   <p>The Amazon Resource Name (ARN) of the compute environment.</p>
    #
    #   @return [String]
    #
    UpdateComputeEnvironmentOutput = ::Struct.new(
      :compute_environment_name,
      :compute_environment_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the parameters for <code>UpdateJobQueue</code>.</p>
    #
    # @!attribute job_queue
    #   <p>The name or the Amazon Resource Name (ARN) of the job queue.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>Describes the queue's ability to accept new jobs. If the job queue state is <code>ENABLED</code>, it can accept
    #      jobs. If the job queue state is <code>DISABLED</code>, new jobs can't be added to the queue, but jobs already in the
    #      queue can finish.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute scheduling_policy_arn
    #   <p>Amazon Resource Name (ARN) of the fair share scheduling policy. Once a job queue is created, the fair share scheduling policy can
    #      be replaced but not removed. The format is
    #        <code>aws:<i>Partition</i>:batch:<i>Region</i>:<i>Account</i>:scheduling-policy/<i>Name</i>
    #               </code>.
    #      For example,
    #      <code>aws:aws:batch:us-west-2:012345678910:scheduling-policy/MySchedulingPolicy</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute priority
    #   <p>The priority of the job queue. Job queues with a higher priority (or a higher integer value for the
    #       <code>priority</code> parameter) are evaluated first when associated with the same compute environment. Priority is
    #      determined in descending order. For example, a job queue with a priority value of <code>10</code> is given scheduling
    #      preference over a job queue with a priority value of <code>1</code>. All of the compute environments must be either
    #      EC2 (<code>EC2</code> or <code>SPOT</code>) or Fargate (<code>FARGATE</code> or <code>FARGATE_SPOT</code>). EC2 and
    #      Fargate compute environments can't be mixed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute compute_environment_order
    #   <p>Details the set of compute environments mapped to a job queue and their order relative to each other. This is
    #      one of the parameters used by the job scheduler to determine which compute environment runs a given job. Compute
    #      environments must be in the <code>VALID</code> state before you can associate them with a job queue. All of
    #      the compute environments must be either EC2 (<code>EC2</code> or <code>SPOT</code>) or Fargate
    #       (<code>FARGATE</code> or <code>FARGATE_SPOT</code>). EC2 and Fargate compute environments can't be mixed.</p>
    #            <note>
    #               <p>All compute environments that are associated with a job queue must share the same architecture. Batch doesn't
    #       support mixing compute environment architecture types in a single job queue.</p>
    #            </note>
    #
    #   @return [Array<ComputeEnvironmentOrder>]
    #
    UpdateJobQueueInput = ::Struct.new(
      :job_queue,
      :state,
      :scheduling_policy_arn,
      :priority,
      :compute_environment_order,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_queue_name
    #   <p>The name of the job queue.</p>
    #
    #   @return [String]
    #
    # @!attribute job_queue_arn
    #   <p>The Amazon Resource Name (ARN) of the job queue.</p>
    #
    #   @return [String]
    #
    UpdateJobQueueOutput = ::Struct.new(
      :job_queue_name,
      :job_queue_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the infrastructure update policy for the compute environment. For more information about
    #    infrastructure updates, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/infrastructure-updates.html">Infrastructure updates</a>
    #    in the <i>Batch User Guide</i>.</p>
    #
    # @!attribute terminate_jobs_on_update
    #   <p>Specifies whether jobs are automatically terminated when the computer environment infrastructure is updated. The
    #      default value is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute job_execution_timeout_minutes
    #   <p>Specifies the job timeout, in minutes, when the compute environment infrastructure is updated. The default value
    #      is 30.</p>
    #
    #   @return [Integer]
    #
    UpdatePolicy = ::Struct.new(
      :terminate_jobs_on_update,
      :job_execution_timeout_minutes,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.job_execution_timeout_minutes ||= 0
      end

    end

    # <p>Contains the parameters for <code>UpdateSchedulingPolicy</code>.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the scheduling policy to update.</p>
    #
    #   @return [String]
    #
    # @!attribute fairshare_policy
    #   <p>The fair share policy.</p>
    #
    #   @return [FairsharePolicy]
    #
    UpdateSchedulingPolicyInput = ::Struct.new(
      :arn,
      :fairshare_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateSchedulingPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A data volume used in a job's container properties.</p>
    #
    # @!attribute host
    #   <p>The contents of the <code>host</code> parameter determine whether your data volume persists on the host
    #      container instance and where it is stored. If the host parameter is empty, then the Docker daemon assigns a host path
    #      for your data volume. However, the data isn't guaranteed to persist after the containers associated with it stop
    #      running.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources and shouldn't be
    #       provided.</p>
    #            </note>
    #
    #   @return [Host]
    #
    # @!attribute name
    #   <p>The name of the volume. It can be up to 255 letters long. It can contain uppercase and lowercase letters,
    #    numbers, hyphens (-), and underscores (_). This name is referenced in the <code>sourceVolume</code>
    #      parameter of container definition <code>mountPoints</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute efs_volume_configuration
    #   <p>This parameter is specified when you are using an Amazon Elastic File System file system for job storage. Jobs that are running
    #      on Fargate resources must specify a <code>platformVersion</code> of at least <code>1.4.0</code>.</p>
    #
    #   @return [EFSVolumeConfiguration]
    #
    Volume = ::Struct.new(
      :host,
      :name,
      :efs_volume_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
