# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SnowDeviceManagement
  module Types

    # <p>You don't have sufficient access to perform this action.</p>
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

    # Includes enum constants for AttachmentStatus
    #
    module AttachmentStatus
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
    end

    # @!attribute task_id
    #   <p>The ID of the task that you are attempting to cancel. You can retrieve a task ID by using
    #         the <code>ListTasks</code> operation.</p>
    #
    #   @return [String]
    #
    CancelTaskInput = ::Struct.new(
      :task_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_id
    #   <p>The ID of the task that you are attempting to cancel.</p>
    #
    #   @return [String]
    #
    CancelTaskOutput = ::Struct.new(
      :task_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The physical capacity of the Amazon Web Services Snow Family device. </p>
    #
    # @!attribute name
    #   <p>The name of the type of capacity, such as memory.</p>
    #
    #   @return [String]
    #
    # @!attribute unit
    #   <p>The unit of measure for the type of capacity.</p>
    #
    #   @return [String]
    #
    # @!attribute total
    #   <p>The total capacity on the device.</p>
    #
    #   @return [Integer]
    #
    # @!attribute used
    #   <p>The amount of capacity used on the device.</p>
    #
    #   @return [Integer]
    #
    # @!attribute available
    #   <p>The amount of capacity available for use on the device.</p>
    #
    #   @return [Integer]
    #
    Capacity = ::Struct.new(
      :name,
      :unit,
      :total,
      :used,
      :available,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The command given to the device to execute.</p>
    #
    class Command < Hearth::Union
      # <p>Unlocks the device.</p>
      #
      class Unlock < Command
        def to_h
          { unlock: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::SnowDeviceManagement::Types::Unlock #{__getobj__ || 'nil'}>"
        end
      end

      # <p>Reboots the device.</p>
      #
      class Reboot < Command
        def to_h
          { reboot: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::SnowDeviceManagement::Types::Reboot #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < Command
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::SnowDeviceManagement::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>The options for how a device's CPU is configured.</p>
    #
    # @!attribute core_count
    #   <p>The number of cores that the CPU can use.</p>
    #
    #   @return [Integer]
    #
    # @!attribute threads_per_core
    #   <p>The number of threads per core in the CPU.</p>
    #
    #   @return [Integer]
    #
    CpuOptions = ::Struct.new(
      :core_count,
      :threads_per_core,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute targets
    #   <p>A list of managed device IDs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute command
    #   <p>The task to be performed. Only one task is executed on a device at a time.</p>
    #
    #   @return [Command]
    #
    # @!attribute description
    #   <p>A description of the task and its targets.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Optional metadata that you assign to a resource. You can use tags to categorize a resource
    #         in different ways, such as by purpose, owner, or environment. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute client_token
    #   <p>A token ensuring that the action is called only once with the specified details.</p>
    #
    #   @return [String]
    #
    CreateTaskInput = ::Struct.new(
      :targets,
      :command,
      :description,
      :tags,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_id
    #   <p>The ID of the task that you created.</p>
    #
    #   @return [String]
    #
    # @!attribute task_arn
    #   <p>The Amazon Resource Name (ARN) of the task that you created.</p>
    #
    #   @return [String]
    #
    CreateTaskOutput = ::Struct.new(
      :task_id,
      :task_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute managed_device_id
    #   <p>The ID of the managed device.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_ids
    #   <p>A list of instance IDs associated with the managed device.</p>
    #
    #   @return [Array<String>]
    #
    DescribeDeviceEc2InstancesInput = ::Struct.new(
      :managed_device_id,
      :instance_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instances
    #   <p>A list of structures containing information about each instance. </p>
    #
    #   @return [Array<InstanceSummary>]
    #
    DescribeDeviceEc2InstancesOutput = ::Struct.new(
      :instances,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute managed_device_id
    #   <p>The ID of the device that you are checking the information of.</p>
    #
    #   @return [String]
    #
    DescribeDeviceInput = ::Struct.new(
      :managed_device_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute last_reached_out_at
    #   <p>When the device last contacted the Amazon Web Services Cloud. Indicates that the device is
    #         online.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>When the device last pushed an update to the Amazon Web Services Cloud. Indicates when the device cache
    #         was refreshed.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>Optional metadata that you assign to a resource. You can use tags to categorize a resource
    #         in different ways, such as by purpose, owner, or environment. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute managed_device_id
    #   <p>The ID of the device that you checked the information for.</p>
    #
    #   @return [String]
    #
    # @!attribute managed_device_arn
    #   <p>The Amazon Resource Name (ARN) of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute device_type
    #   <p>The type of Amazon Web Services Snow Family device.</p>
    #
    #   @return [String]
    #
    # @!attribute associated_with_job
    #   <p>The ID of the job used when ordering the device.</p>
    #
    #   @return [String]
    #
    # @!attribute device_state
    #   <p>The current state of the device.</p>
    #
    #   Enum, one of: ["UNLOCKED", "LOCKED", "UNLOCKING"]
    #
    #   @return [String]
    #
    # @!attribute physical_network_interfaces
    #   <p>The network interfaces available on the device.</p>
    #
    #   @return [Array<PhysicalNetworkInterface>]
    #
    # @!attribute device_capacities
    #   <p>The hardware specifications of the device. </p>
    #
    #   @return [Array<Capacity>]
    #
    # @!attribute software
    #   <p>The software installed on the device.</p>
    #
    #   @return [SoftwareInformation]
    #
    DescribeDeviceOutput = ::Struct.new(
      :last_reached_out_at,
      :last_updated_at,
      :tags,
      :managed_device_id,
      :managed_device_arn,
      :device_type,
      :associated_with_job,
      :device_state,
      :physical_network_interfaces,
      :device_capacities,
      :software,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_id
    #   <p>The ID of the task that the action is describing.</p>
    #
    #   @return [String]
    #
    # @!attribute managed_device_id
    #   <p>The ID of the managed device.</p>
    #
    #   @return [String]
    #
    DescribeExecutionInput = ::Struct.new(
      :task_id,
      :managed_device_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_id
    #   <p>The ID of the task being executed on the device.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_id
    #   <p>The ID of the execution.</p>
    #
    #   @return [String]
    #
    # @!attribute managed_device_id
    #   <p>The ID of the managed device that the task is being executed on.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current state of the execution.</p>
    #
    #   Enum, one of: ["QUEUED", "IN_PROGRESS", "CANCELED", "FAILED", "SUCCEEDED", "REJECTED", "TIMED_OUT"]
    #
    #   @return [String]
    #
    # @!attribute started_at
    #   <p>When the execution began.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>When the status of the execution was last updated.</p>
    #
    #   @return [Time]
    #
    DescribeExecutionOutput = ::Struct.new(
      :task_id,
      :execution_id,
      :managed_device_id,
      :state,
      :started_at,
      :last_updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_id
    #   <p>The ID of the task to be described.</p>
    #
    #   @return [String]
    #
    DescribeTaskInput = ::Struct.new(
      :task_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_id
    #   <p>The ID of the task.</p>
    #
    #   @return [String]
    #
    # @!attribute task_arn
    #   <p>The Amazon Resource Name (ARN) of the task.</p>
    #
    #   @return [String]
    #
    # @!attribute targets
    #   <p>The managed devices that the task was sent to.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute state
    #   <p>The current state of the task.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "CANCELED", "COMPLETED"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>When the <code>CreateTask</code> operation was called.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>When the state of the task was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute completed_at
    #   <p>When the task was completed.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>The description provided of the task and managed devices.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Optional metadata that you assign to a resource. You can use tags to categorize a resource
    #         in different ways, such as by purpose, owner, or environment.</p>
    #
    #   @return [Hash<String, String>]
    #
    DescribeTaskOutput = ::Struct.new(
      :task_id,
      :task_arn,
      :targets,
      :state,
      :created_at,
      :last_updated_at,
      :completed_at,
      :description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Identifying information about the device.</p>
    #
    # @!attribute managed_device_id
    #   <p>The ID of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute managed_device_arn
    #   <p>The Amazon Resource Name (ARN) of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute associated_with_job
    #   <p>The ID of the job used to order the device.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Optional metadata that you assign to a resource. You can use tags to categorize a resource
    #         in different ways, such as by purpose, owner, or environment.</p>
    #
    #   @return [Hash<String, String>]
    #
    DeviceSummary = ::Struct.new(
      :managed_device_id,
      :managed_device_arn,
      :associated_with_job,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a parameter used to set up an Amazon Elastic Block Store (Amazon EBS) volume
    #       in a block device mapping.</p>
    #
    # @!attribute attach_time
    #   <p>When the attachment was initiated.</p>
    #
    #   @return [Time]
    #
    # @!attribute delete_on_termination
    #   <p>A value that indicates whether the volume is deleted on instance termination.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute status
    #   <p>The attachment state.</p>
    #
    #   Enum, one of: ["ATTACHING", "ATTACHED", "DETACHING", "DETACHED"]
    #
    #   @return [String]
    #
    # @!attribute volume_id
    #   <p>The ID of the Amazon EBS volume.</p>
    #
    #   @return [String]
    #
    EbsInstanceBlockDevice = ::Struct.new(
      :attach_time,
      :delete_on_termination,
      :status,
      :volume_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ExecutionState
    #
    module ExecutionState
      # No documentation available.
      #
      QUEUED = "QUEUED"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      CANCELED = "CANCELED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      REJECTED = "REJECTED"

      # No documentation available.
      #
      TIMED_OUT = "TIMED_OUT"
    end

    # <p>The summary of a task execution on a specified device.</p>
    #
    # @!attribute task_id
    #   <p>The ID of the task.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_id
    #   <p>The ID of the execution.</p>
    #
    #   @return [String]
    #
    # @!attribute managed_device_id
    #   <p>The ID of the managed device that the task is being executed on.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the execution.</p>
    #
    #   Enum, one of: ["QUEUED", "IN_PROGRESS", "CANCELED", "FAILED", "SUCCEEDED", "REJECTED", "TIMED_OUT"]
    #
    #   @return [String]
    #
    ExecutionSummary = ::Struct.new(
      :task_id,
      :execution_id,
      :managed_device_id,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The description of an
    #       instance.
    #       Currently, Amazon EC2 instances are the only supported instance type.</p>
    #
    # @!attribute image_id
    #   <p>The ID of the AMI used to launch the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute ami_launch_index
    #   <p>The Amazon Machine Image (AMI) launch index, which you can use to find this instance in
    #         the launch group. </p>
    #
    #   @return [Integer]
    #
    # @!attribute instance_id
    #   <p>The ID of the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The description of the current state of an instance.</p>
    #
    #   @return [InstanceState]
    #
    # @!attribute instance_type
    #   <p>The instance type.</p>
    #
    #   @return [String]
    #
    # @!attribute private_ip_address
    #   <p>The private IPv4 address assigned to the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute public_ip_address
    #   <p>The public IPv4 address assigned to the instance.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>When the instance was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_at
    #   <p>When the instance was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute block_device_mappings
    #   <p>Any block device mapping entries for the instance.</p>
    #
    #   @return [Array<InstanceBlockDeviceMapping>]
    #
    # @!attribute security_groups
    #   <p>The security groups for the instance.</p>
    #
    #   @return [Array<SecurityGroupIdentifier>]
    #
    # @!attribute cpu_options
    #   <p>The CPU options for the instance.</p>
    #
    #   @return [CpuOptions]
    #
    # @!attribute root_device_name
    #   <p>The device name of the root device volume (for example, <code>/dev/sda1</code>). </p>
    #
    #   @return [String]
    #
    Instance = ::Struct.new(
      :image_id,
      :ami_launch_index,
      :instance_id,
      :state,
      :instance_type,
      :private_ip_address,
      :public_ip_address,
      :created_at,
      :updated_at,
      :block_device_mappings,
      :security_groups,
      :cpu_options,
      :root_device_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The description of a block device mapping.</p>
    #
    # @!attribute device_name
    #   <p>The block device name.</p>
    #
    #   @return [String]
    #
    # @!attribute ebs
    #   <p>The parameters used to automatically set up Amazon Elastic Block Store (Amazon EBS)
    #         volumes when the instance is launched. </p>
    #
    #   @return [EbsInstanceBlockDevice]
    #
    InstanceBlockDeviceMapping = ::Struct.new(
      :device_name,
      :ebs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The description of the current state of an instance.</p>
    #
    # @!attribute code
    #   <p>The state of the instance as a 16-bit unsigned integer. </p>
    #            <p>The high byte is all of the bits between 2^8 and (2^16)-1, which equals decimal values
    #         between 256 and 65,535. These numerical values are used for internal purposes and should be
    #         ignored. </p>
    #            <p>The low byte is all of the bits between 2^0 and (2^8)-1, which equals decimal values
    #         between 0 and 255. </p>
    #            <p>The valid values for the instance state code are all in the range of the low byte. These
    #         values are: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>0</code> : <code>pending</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>16</code> : <code>running</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>32</code> : <code>shutting-down</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>48</code> : <code>terminated</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>64</code> : <code>stopping</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>80</code> : <code>stopped</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>You can ignore the high byte value by zeroing out all of the bits above 2^8 or 256 in
    #         decimal. </p>
    #
    #   @return [Integer]
    #
    # @!attribute name
    #   <p>The current
    #         state
    #         of the instance.</p>
    #
    #   Enum, one of: ["PENDING", "RUNNING", "SHUTTING_DOWN", "TERMINATED", "STOPPING", "STOPPED"]
    #
    #   @return [String]
    #
    InstanceState = ::Struct.new(
      :code,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InstanceStateName
    #
    module InstanceStateName
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      SHUTTING_DOWN = "SHUTTING_DOWN"

      # No documentation available.
      #
      TERMINATED = "TERMINATED"

      # No documentation available.
      #
      STOPPING = "STOPPING"

      # No documentation available.
      #
      STOPPED = "STOPPED"
    end

    # <p>The details about the instance.</p>
    #
    # @!attribute instance
    #   <p>A structure containing details about the instance.</p>
    #
    #   @return [Instance]
    #
    # @!attribute last_updated_at
    #   <p>When the instance summary was last updated.</p>
    #
    #   @return [Time]
    #
    InstanceSummary = ::Struct.new(
      :instance,
      :last_updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An unexpected error occurred while processing the request.</p>
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

    # Includes enum constants for IpAddressAssignment
    #
    module IpAddressAssignment
      # No documentation available.
      #
      DHCP = "DHCP"

      # No documentation available.
      #
      STATIC = "STATIC"
    end

    # @!attribute managed_device_id
    #   <p>The ID of the managed device that you are listing the resources of.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>A structure used to filter the results by type of resource.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of resources per page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A pagination token to continue to the next page of results.</p>
    #
    #   @return [String]
    #
    ListDeviceResourcesInput = ::Struct.new(
      :managed_device_id,
      :type,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resources
    #   <p>A structure defining the resource's type, Amazon Resource Name (ARN), and ID.</p>
    #
    #   @return [Array<ResourceSummary>]
    #
    # @!attribute next_token
    #   <p>A pagination token to continue to the next page of results.</p>
    #
    #   @return [String]
    #
    ListDeviceResourcesOutput = ::Struct.new(
      :resources,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The ID of the job used to order the device.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of devices to list per page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A pagination token to continue to the next page of results.</p>
    #
    #   @return [String]
    #
    ListDevicesInput = ::Struct.new(
      :job_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute devices
    #   <p>A list of device structures that contain information about the device.</p>
    #
    #   @return [Array<DeviceSummary>]
    #
    # @!attribute next_token
    #   <p>A pagination token to continue to the next page of devices.</p>
    #
    #   @return [String]
    #
    ListDevicesOutput = ::Struct.new(
      :devices,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_id
    #   <p>The ID of the task.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>A structure used to filter the tasks by their current state.</p>
    #
    #   Enum, one of: ["QUEUED", "IN_PROGRESS", "CANCELED", "FAILED", "SUCCEEDED", "REJECTED", "TIMED_OUT"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of tasks to list per page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A pagination token to continue to the next page of tasks.</p>
    #
    #   @return [String]
    #
    ListExecutionsInput = ::Struct.new(
      :task_id,
      :state,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute executions
    #   <p>A list of executions. Each execution contains the task ID, the device that the task is
    #         executing on, the execution ID, and the status of the execution.</p>
    #
    #   @return [Array<ExecutionSummary>]
    #
    # @!attribute next_token
    #   <p>A pagination token to continue to the next page of executions.</p>
    #
    #   @return [String]
    #
    ListExecutionsOutput = ::Struct.new(
      :executions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the device or task.</p>
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
    #   <p>The list of tags for the device or task.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute state
    #   <p>A structure used to filter the list of tasks.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "CANCELED", "COMPLETED"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of tasks per page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A pagination token to continue to the next page of tasks.</p>
    #
    #   @return [String]
    #
    ListTasksInput = ::Struct.new(
      :state,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tasks
    #   <p>A list of task structures containing details about each task.</p>
    #
    #   @return [Array<TaskSummary>]
    #
    # @!attribute next_token
    #   <p>A pagination token to continue to the next page of tasks.</p>
    #
    #   @return [String]
    #
    ListTasksOutput = ::Struct.new(
      :tasks,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PhysicalConnectorType
    #
    module PhysicalConnectorType
      # No documentation available.
      #
      RJ45 = "RJ45"

      # No documentation available.
      #
      SFP_PLUS = "SFP_PLUS"

      # No documentation available.
      #
      QSFP = "QSFP"

      # No documentation available.
      #
      RJ45_2 = "RJ45_2"

      # No documentation available.
      #
      WIFI = "WIFI"
    end

    # <p>The details about the physical network interface for the device.</p>
    #
    # @!attribute physical_network_interface_id
    #   <p>The physical network interface ID.</p>
    #
    #   @return [String]
    #
    # @!attribute physical_connector_type
    #   <p>The
    #         physical
    #         connector type.</p>
    #
    #   Enum, one of: ["RJ45", "SFP_PLUS", "QSFP", "RJ45_2", "WIFI"]
    #
    #   @return [String]
    #
    # @!attribute ip_address_assignment
    #   <p>A value that describes whether the IP address is dynamic or persistent.</p>
    #
    #   Enum, one of: ["DHCP", "STATIC"]
    #
    #   @return [String]
    #
    # @!attribute ip_address
    #   <p>The IP address of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute netmask
    #   <p>The netmask used to divide the IP address into subnets.</p>
    #
    #   @return [String]
    #
    # @!attribute default_gateway
    #   <p>The default gateway of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute mac_address
    #   <p>The MAC address of the device.</p>
    #
    #   @return [String]
    #
    PhysicalNetworkInterface = ::Struct.new(
      :physical_network_interface_id,
      :physical_connector_type,
      :ip_address_assignment,
      :ip_address,
      :netmask,
      :default_gateway,
      :mac_address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure used to reboot the device.</p>
    #
    Reboot = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request references a resource that doesn't exist.</p>
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

    # <p>A summary of a resource available on the device.</p>
    #
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID of the resource.</p>
    #
    #   @return [String]
    #
    ResourceSummary = ::Struct.new(
      :resource_type,
      :arn,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the device's security group.</p>
    #
    # @!attribute group_id
    #   <p>The security group ID.</p>
    #
    #   @return [String]
    #
    # @!attribute group_name
    #   <p>The security group name.</p>
    #
    #   @return [String]
    #
    SecurityGroupIdentifier = ::Struct.new(
      :group_id,
      :group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request would cause a service quota to be exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the software on the device.</p>
    #
    # @!attribute installed_version
    #   <p>The version of the software currently installed on the device.</p>
    #
    #   @return [String]
    #
    # @!attribute installing_version
    #   <p>The version of the software being installed on the device.</p>
    #
    #   @return [String]
    #
    # @!attribute install_state
    #   <p>The state of the software that is installed or that is being installed on the
    #         device.</p>
    #
    #   @return [String]
    #
    SoftwareInformation = ::Struct.new(
      :installed_version,
      :installing_version,
      :install_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the device or task.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Optional metadata that you assign to a resource. You can use tags to categorize a resource
    #         in different ways, such as by purpose, owner, or environment.</p>
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

    # Includes enum constants for TaskState
    #
    module TaskState
      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      CANCELED = "CANCELED"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"
    end

    # <p>Information about the task assigned to one or many devices.</p>
    #
    # @!attribute task_id
    #   <p>The task ID.</p>
    #
    #   @return [String]
    #
    # @!attribute task_arn
    #   <p>The Amazon Resource Name (ARN) of the task.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the task assigned to one or many devices.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "CANCELED", "COMPLETED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Optional metadata that you assign to a resource. You can use tags to categorize a resource
    #         in different ways, such as by purpose, owner, or environment.</p>
    #
    #   @return [Hash<String, String>]
    #
    TaskSummary = ::Struct.new(
      :task_id,
      :task_arn,
      :state,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure used to unlock a device.</p>
    #
    Unlock = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UnlockState
    #
    module UnlockState
      # No documentation available.
      #
      UNLOCKED = "UNLOCKED"

      # No documentation available.
      #
      LOCKED = "LOCKED"

      # No documentation available.
      #
      UNLOCKING = "UNLOCKING"
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the device or task.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>Optional metadata that you assign to a resource. You can use tags to categorize a resource
    #         in different ways, such as by purpose, owner, or environment.</p>
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

    # <p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>
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
