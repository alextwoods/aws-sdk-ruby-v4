# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ECS
  module Types

    # <p>You don't have authorization to perform the requested action.</p>
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

    # Includes enum constants for AgentUpdateStatus
    #
    module AgentUpdateStatus
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      STAGING = "STAGING"

      # No documentation available.
      #
      STAGED = "STAGED"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      UPDATED = "UPDATED"

      # No documentation available.
      #
      FAILED = "FAILED"
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

    # <p>An object representing a container instance or task attachment.</p>
    #
    # @!attribute id
    #   <p>The unique identifier for the attachment.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the attachment, such as <code>ElasticNetworkInterface</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p> The status of the attachment. Valid values are <code>PRECREATED</code>,
    #   				<code>CREATED</code>, <code>ATTACHING</code>, <code>ATTACHED</code>,
    #   				<code>DETACHING</code>, <code>DETACHED</code>, <code>DELETED</code>, and
    #   				<code>FAILED</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute details
    #   <p>Details of the attachment. For elastic network interfaces, this includes the network
    #   			interface ID, the MAC address, the subnet ID, and the private IPv4 address.</p>
    #
    #   @return [Array<KeyValuePair>]
    #
    Attachment = ::Struct.new(
      :id,
      :type,
      :status,
      :details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing a change in state for a task attachment.</p>
    #
    # @!attribute attachment_arn
    #   <p>The Amazon Resource Name (ARN) of the attachment.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the attachment.</p>
    #
    #   @return [String]
    #
    AttachmentStateChange = ::Struct.new(
      :attachment_arn,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An attribute is a name-value pair that's associated with an Amazon ECS object. Use attributes
    # 			to extend the Amazon ECS data model by adding custom metadata to your resources.
    # 			For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html#attributes">Attributes</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @!attribute name
    #   <p>The name of the attribute. The <code>name</code> must contain between 1 and 128
    #   			characters. The name may contain letters (uppercase and lowercase), numbers, hyphens
    #   			(-), underscores (_), forward slashes (/), back slashes (\), or periods (.).</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the attribute. The <code>value</code> must contain between 1 and 128
    #   			characters. It can contain letters (uppercase and lowercase), numbers, hyphens (-),
    #   			underscores (_), periods (.), at signs (@), forward slashes (/), back slashes (\),
    #   			colons (:), or spaces. The value can't can't start or end with a space.</p>
    #
    #   @return [String]
    #
    # @!attribute target_type
    #   <p>The type of the target to attach the attribute with. This parameter is required if you
    #   			use the short form ID for a resource instead of the full ARN.</p>
    #
    #   Enum, one of: ["container-instance"]
    #
    #   @return [String]
    #
    # @!attribute target_id
    #   <p>The ID of the target. You can specify the short form ID for a resource or the full
    #   			Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    Attribute = ::Struct.new(
      :name,
      :value,
      :target_type,
      :target_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You can apply up to 10 custom attributes for each resource. You can view the
    # 			attributes of a resource with <a>ListAttributes</a>. You can remove existing
    # 			attributes on a resource with <a>DeleteAttributes</a>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AttributeLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of the Auto Scaling group for the capacity provider.</p>
    #
    # @!attribute auto_scaling_group_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the Auto Scaling group.</p>
    #
    #   @return [String]
    #
    # @!attribute managed_scaling
    #   <p>The managed scaling settings for the Auto Scaling group capacity provider.</p>
    #
    #   @return [ManagedScaling]
    #
    # @!attribute managed_termination_protection
    #   <p>The managed termination protection setting to use for the Auto Scaling group capacity
    #   			provider. This determines whether the Auto Scaling group has managed termination
    #   			protection. The default is disabled.</p>
    #   		       <important>
    #   			         <p>When using managed termination protection, managed scaling must also be used
    #   				otherwise managed termination protection doesn't work.</p>
    #   		       </important>
    #   		       <p>When managed termination protection is enabled, Amazon ECS prevents the Amazon EC2 instances in
    #   			an Auto Scaling group that contain tasks from being terminated during a scale-in action.
    #   			The Auto Scaling group and each instance in the Auto Scaling group must have instance
    #   			protection from scale-in actions enabled as well. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html instance-protection">Instance Protection</a> in the <i>Auto Scaling User Guide</i>.</p>
    #   		       <p>When managed termination protection is disabled, your Amazon EC2 instances aren't protected
    #   			from termination when the Auto Scaling group scales in.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    AutoScalingGroupProvider = ::Struct.new(
      :auto_scaling_group_arn,
      :managed_scaling,
      :managed_termination_protection,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of the Auto Scaling group capacity provider to update.</p>
    #
    # @!attribute managed_scaling
    #   <p>The managed scaling settings for the Auto Scaling group capacity provider.</p>
    #
    #   @return [ManagedScaling]
    #
    # @!attribute managed_termination_protection
    #   <p>The managed termination protection setting to use for the Auto Scaling group capacity
    #   			provider. This determines whether the Auto Scaling group has managed termination
    #   			protection.</p>
    #   		       <important>
    #   			         <p>When using managed termination protection, managed scaling must also be used
    #   				otherwise managed termination protection doesn't work.</p>
    #   		       </important>
    #   		       <p>When managed termination protection is enabled, Amazon ECS prevents the Amazon EC2 instances in
    #   			an Auto Scaling group that contain tasks from being terminated during a scale-in action.
    #   			The Auto Scaling group and each instance in the Auto Scaling group must have instance
    #   			protection from scale-in actions enabled. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html instance-protection">Instance Protection</a> in the <i>Auto Scaling User Guide</i>.</p>
    #   		       <p>When managed termination protection is disabled, your Amazon EC2 instances aren't protected
    #   			from termination when the Auto Scaling group scales in.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    AutoScalingGroupProviderUpdate = ::Struct.new(
      :managed_scaling,
      :managed_termination_protection,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing the networking details for a task or service.</p>
    #
    # @!attribute subnets
    #   <p>The IDs of the subnets associated with the task or service. There's a limit of 16
    #   			subnets that can be specified per <code>AwsVpcConfiguration</code>.</p>
    #   		
    #   		       <note>
    #   			         <p>All specified subnets must be from the same VPC.</p>
    #   		       </note>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_groups
    #   <p>The IDs of the security groups associated with the task or service. If you don't
    #   			specify a security group, the default security group for the VPC is used. There's a
    #   			limit of 5 security groups that can be specified per
    #   			<code>AwsVpcConfiguration</code>.</p>
    #   		
    #   		       <note>
    #   			         <p>All specified security groups must be from the same VPC.</p>
    #   		       </note>
    #
    #   @return [Array<String>]
    #
    # @!attribute assign_public_ip
    #   <p>Whether the task's elastic network interface receives a public IP address. The default
    #   			value is <code>DISABLED</code>.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    AwsVpcConfiguration = ::Struct.new(
      :subnets,
      :security_groups,
      :assign_public_ip,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Your Amazon Web Services account was blocked. For more information, contact <a href="http://aws.amazon.com/contact-us/">
    # 				Amazon Web Services Support</a>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    BlockedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CPUArchitecture
    #
    module CPUArchitecture
      # No documentation available.
      #
      X86_64 = "X86_64"

      # No documentation available.
      #
      ARM64 = "ARM64"
    end

    # <p>The details for a capacity provider.</p>
    #
    # @!attribute capacity_provider_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the capacity provider.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the capacity provider.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the capacity provider. Only capacity providers in an
    #   				<code>ACTIVE</code> state can be used in a cluster. When a capacity provider is
    #   			successfully deleted, it has an <code>INACTIVE</code> status.</p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute auto_scaling_group_provider
    #   <p>The Auto Scaling group settings for the capacity provider.</p>
    #
    #   @return [AutoScalingGroupProvider]
    #
    # @!attribute update_status
    #   <p>The update status of the capacity provider. The following are the possible states that
    #   			is returned.</p>
    #   		       <dl>
    #               <dt>DELETE_IN_PROGRESS</dt>
    #               <dd>
    #   					          <p>The capacity provider is in the process of being deleted.</p>
    #   				        </dd>
    #               <dt>DELETE_COMPLETE</dt>
    #               <dd>
    #   					          <p>The capacity provider was successfully deleted and has an
    #   							<code>INACTIVE</code> status.</p>
    #   				        </dd>
    #               <dt>DELETE_FAILED</dt>
    #               <dd>
    #   					          <p>The capacity provider can't be deleted. The update status reason provides
    #   						further details about why the delete failed.</p>
    #   				        </dd>
    #            </dl>
    #
    #   Enum, one of: ["DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute update_status_reason
    #   <p>The update status reason. This provides further details about the update status for
    #   			the capacity provider.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The metadata that you apply to the capacity provider to help you categorize and
    #   			organize it. Each tag consists of a key and an optional value. You define both.</p>
    #   		       <p>The following basic restrictions apply to tags:</p>
    #           <ul>
    #               <li>
    #                   <p>Maximum number of tags per resource - 50</p>
    #               </li>
    #               <li>
    #                   <p>For each resource, each tag key must be unique, and each tag key can have only
    #                       one value.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum key length - 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>Maximum value length - 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>If your tagging schema is used across multiple services and resources,
    #                       remember that other services may have restrictions on allowed characters.
    #                       Generally allowed characters are: letters, numbers, and spaces representable in
    #                       UTF-8, and the following characters: + - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                   <p>Tag keys and values are case-sensitive.</p>
    #               </li>
    #               <li>
    #                   <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase
    #                       combination of such as a prefix for either keys or values as it is reserved for
    #                       Amazon Web Services use. You cannot edit or delete tag keys or values with this prefix. Tags with
    #                       this prefix do not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Tag>]
    #
    CapacityProvider = ::Struct.new(
      :capacity_provider_arn,
      :name,
      :status,
      :auto_scaling_group_provider,
      :update_status,
      :update_status_reason,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CapacityProviderField
    #
    module CapacityProviderField
      # No documentation available.
      #
      TAGS = "TAGS"
    end

    # Includes enum constants for CapacityProviderStatus
    #
    module CapacityProviderStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      INACTIVE = "INACTIVE"
    end

    # <p>The details of a capacity provider strategy. A capacity provider strategy can be set
    # 			when using the <a>RunTask</a> or <a>CreateCluster</a> APIs or as
    # 			the default capacity provider strategy for a cluster with the <a>CreateCluster</a> API.</p>
    # 		       <p>Only capacity providers that are already associated with a cluster and have an
    # 				<code>ACTIVE</code> or <code>UPDATING</code> status can be used in a capacity
    # 			provider strategy. The <a>PutClusterCapacityProviders</a> API is used to
    # 			associate a capacity provider with a cluster.</p>
    # 		       <p>If specifying a capacity provider that uses an Auto Scaling group, the capacity
    # 			provider must already be created. New Auto Scaling group capacity providers can be
    # 			created with the <a>CreateCapacityProvider</a> API operation.</p>
    # 		       <p>To use a Fargate capacity provider, specify either the <code>FARGATE</code> or
    # 				<code>FARGATE_SPOT</code> capacity providers. The Fargate capacity providers are
    # 			available to all accounts and only need to be associated with a cluster to be used in a
    # 			capacity provider strategy.</p>
    # 		       <p>A capacity provider strategy may contain a maximum of 6 capacity providers.</p>
    #
    # @!attribute capacity_provider
    #   <p>The short name of the capacity provider.</p>
    #
    #   @return [String]
    #
    # @!attribute weight
    #   <p>The <i>weight</i> value designates the relative percentage of the total
    #   			number of tasks launched that should use the specified capacity provider. The
    #   				<code>weight</code> value is taken into consideration after the <code>base</code>
    #   			value, if defined, is satisfied.</p>
    #   		       <p>If no <code>weight</code> value is specified, the default value of <code>0</code> is
    #   			used. When multiple capacity providers are specified within a capacity provider
    #   			strategy, at least one of the capacity providers must have a weight value greater than
    #   			zero and any capacity providers with a weight of <code>0</code> can't be used to place
    #   			tasks. If you specify multiple capacity providers in a strategy that all have a weight
    #   			of <code>0</code>, any <code>RunTask</code> or <code>CreateService</code> actions using
    #   			the capacity provider strategy will fail.</p>
    #   		       <p>An example scenario for using weights is defining a strategy that contains two
    #   			capacity providers and both have a weight of <code>1</code>, then when the
    #   				<code>base</code> is satisfied, the tasks will be split evenly across the two
    #   			capacity providers. Using that same logic, if you specify a weight of <code>1</code> for
    #   				<i>capacityProviderA</i> and a weight of <code>4</code> for
    #   				<i>capacityProviderB</i>, then for every one task that's run using
    #   				<i>capacityProviderA</i>, four tasks would use
    #   				<i>capacityProviderB</i>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute base
    #   <p>The <i>base</i> value designates how many tasks, at a minimum, to run on
    #   			the specified capacity provider. Only one capacity provider in a capacity provider
    #   			strategy can have a <i>base</i> defined. If no value is specified, the
    #   			default value of <code>0</code> is used.</p>
    #
    #   @return [Integer]
    #
    CapacityProviderStrategyItem = ::Struct.new(
      :capacity_provider,
      :weight,
      :base,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.weight ||= 0
        self.base ||= 0
      end
    end

    # Includes enum constants for CapacityProviderUpdateStatus
    #
    module CapacityProviderUpdateStatus
      # No documentation available.
      #
      DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS"

      # No documentation available.
      #
      DELETE_COMPLETE = "DELETE_COMPLETE"

      # No documentation available.
      #
      DELETE_FAILED = "DELETE_FAILED"

      # No documentation available.
      #
      UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS"

      # No documentation available.
      #
      UPDATE_COMPLETE = "UPDATE_COMPLETE"

      # No documentation available.
      #
      UPDATE_FAILED = "UPDATE_FAILED"
    end

    # <p>These errors are usually caused by a client action. This client action might be using
    # 			an action or resource on behalf of a user that doesn't have permissions to use the
    # 			action or resource,. Or, it might be specifying an identifier that isn't valid.</p>
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

    # <p>A regional grouping of one or more container instances where you can run task
    # 			requests. Each account receives a default cluster the first time you use the Amazon ECS
    # 			service, but you may also create other clusters. Clusters may contain more than one
    # 			instance type simultaneously.</p>
    #
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the cluster. The ARN contains the <code>arn:aws:ecs</code> namespace, followed by the Region of the cluster, the Amazon Web Services account ID of the cluster owner, the <code>cluster</code> namespace, and then the cluster name. For example, <code>arn:aws:ecs:region:012345678910:cluster/test</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_name
    #   <p>A user-generated string that you use to identify your cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration
    #   <p>The execute command configuration for the cluster.</p>
    #
    #   @return [ClusterConfiguration]
    #
    # @!attribute status
    #   <p>The status of the cluster. The following are the possible states that are
    #   			returned.</p>
    #   		       <dl>
    #               <dt>ACTIVE</dt>
    #               <dd>
    #   					          <p>The cluster is ready to accept tasks and if applicable you can register
    #   						container instances with the cluster.</p>
    #   				        </dd>
    #               <dt>PROVISIONING</dt>
    #               <dd>
    #   					          <p>The cluster has capacity providers that are associated with it and the
    #   						resources needed for the capacity provider are being created.</p>
    #   				        </dd>
    #               <dt>DEPROVISIONING</dt>
    #               <dd>
    #   					          <p>The cluster has capacity providers that are associated with it and the
    #   						resources needed for the capacity provider are being deleted.</p>
    #   				        </dd>
    #               <dt>FAILED</dt>
    #               <dd>
    #   					          <p>The cluster has capacity providers that are associated with it and the
    #   						resources needed for the capacity provider have failed to create.</p>
    #   				        </dd>
    #               <dt>INACTIVE</dt>
    #               <dd>
    #   					          <p>The cluster has been deleted. Clusters with an <code>INACTIVE</code>
    #   						status may remain discoverable in your account for a period of time.
    #   						However, this behavior is subject to change in the future. We don't
    #   						recommend that you rely on <code>INACTIVE</code> clusters persisting.</p>
    #   				        </dd>
    #            </dl>
    #
    #   @return [String]
    #
    # @!attribute registered_container_instances_count
    #   <p>The number of container instances registered into the cluster. This includes container
    #   			instances in both <code>ACTIVE</code> and <code>DRAINING</code> status.</p>
    #
    #   @return [Integer]
    #
    # @!attribute running_tasks_count
    #   <p>The number of tasks in the cluster that are in the <code>RUNNING</code> state.</p>
    #
    #   @return [Integer]
    #
    # @!attribute pending_tasks_count
    #   <p>The number of tasks in the cluster that are in the <code>PENDING</code> state.</p>
    #
    #   @return [Integer]
    #
    # @!attribute active_services_count
    #   <p>The number of services that are running on the cluster in an <code>ACTIVE</code>
    #   			state. You can view these services with <a>ListServices</a>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute statistics
    #   <p>Additional information about your clusters that are separated by launch type. They
    #   			include the following:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>runningEC2TasksCount</p>
    #   			         </li>
    #               <li>
    #   				           <p>RunningFargateTasksCount</p>
    #   			         </li>
    #               <li>
    #   				           <p>pendingEC2TasksCount</p>
    #   			         </li>
    #               <li>
    #   				           <p>pendingFargateTasksCount</p>
    #   			         </li>
    #               <li>
    #   				           <p>activeEC2ServiceCount</p>
    #   			         </li>
    #               <li>
    #   				           <p>activeFargateServiceCount</p>
    #   			         </li>
    #               <li>
    #   				           <p>drainingEC2ServiceCount</p>
    #   			         </li>
    #               <li>
    #   				           <p>drainingFargateServiceCount</p>
    #   			         </li>
    #            </ul>
    #
    #   @return [Array<KeyValuePair>]
    #
    # @!attribute tags
    #   <p>The metadata that you apply to the cluster to help you categorize and organize them.
    #   			Each tag consists of a key and an optional value. You define both.</p>
    #   		       <p>The following basic restrictions apply to tags:</p>
    #           <ul>
    #               <li>
    #                   <p>Maximum number of tags per resource - 50</p>
    #               </li>
    #               <li>
    #                   <p>For each resource, each tag key must be unique, and each tag key can have only
    #                       one value.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum key length - 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>Maximum value length - 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>If your tagging schema is used across multiple services and resources,
    #                       remember that other services may have restrictions on allowed characters.
    #                       Generally allowed characters are: letters, numbers, and spaces representable in
    #                       UTF-8, and the following characters: + - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                   <p>Tag keys and values are case-sensitive.</p>
    #               </li>
    #               <li>
    #                   <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase
    #                       combination of such as a prefix for either keys or values as it is reserved for
    #                       Amazon Web Services use. You cannot edit or delete tag keys or values with this prefix. Tags with
    #                       this prefix do not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute settings
    #   <p>The settings for the cluster. This parameter indicates whether CloudWatch Container Insights
    #   			is enabled or disabled for a cluster.</p>
    #
    #   @return [Array<ClusterSetting>]
    #
    # @!attribute capacity_providers
    #   <p>The capacity providers associated with the cluster.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute default_capacity_provider_strategy
    #   <p>The default capacity provider strategy for the cluster. When services or tasks are run
    #   			in the cluster with no launch type or capacity provider strategy specified, the default
    #   			capacity provider strategy is used.</p>
    #
    #   @return [Array<CapacityProviderStrategyItem>]
    #
    # @!attribute attachments
    #   <p>The resources attached to a cluster. When using a capacity provider with a cluster,
    #   			the Auto Scaling plan that's created is returned as a cluster attachment.</p>
    #
    #   @return [Array<Attachment>]
    #
    # @!attribute attachments_status
    #   <p>The status of the capacity providers associated with the cluster. The following are
    #   			the states that are returned.</p>
    #   		       <dl>
    #               <dt>UPDATE_IN_PROGRESS</dt>
    #               <dd>
    #   					          <p>The available capacity providers for the cluster are updating. This occurs
    #   						when the Auto Scaling plan is provisioning or deprovisioning.</p>
    #   				        </dd>
    #               <dt>UPDATE_COMPLETE</dt>
    #               <dd>
    #   					          <p>The capacity providers have successfully updated.</p>
    #   				        </dd>
    #               <dt>UPDATE_FAILED</dt>
    #               <dd>
    #   					          <p>The capacity provider updates failed.</p>
    #   				        </dd>
    #            </dl>
    #
    #   @return [String]
    #
    Cluster = ::Struct.new(
      :cluster_arn,
      :cluster_name,
      :configuration,
      :status,
      :registered_container_instances_count,
      :running_tasks_count,
      :pending_tasks_count,
      :active_services_count,
      :statistics,
      :tags,
      :settings,
      :capacity_providers,
      :default_capacity_provider_strategy,
      :attachments,
      :attachments_status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.registered_container_instances_count ||= 0
        self.running_tasks_count ||= 0
        self.pending_tasks_count ||= 0
        self.active_services_count ||= 0
      end
    end

    # <p>The execute command configuration for the cluster.</p>
    #
    # @!attribute execute_command_configuration
    #   <p>The details of the execute command configuration.</p>
    #
    #   @return [ExecuteCommandConfiguration]
    #
    ClusterConfiguration = ::Struct.new(
      :execute_command_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You can't delete a cluster that has registered container instances. First, deregister
    # 			the container instances before you can delete the cluster. For more information, see
    # 				<a>DeregisterContainerInstance</a>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ClusterContainsContainerInstancesException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You can't delete a cluster that contains services. First, update the service to reduce
    # 			its desired task count to 0, and then delete the service. For more information, see
    # 				<a>UpdateService</a> and <a>DeleteService</a>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ClusterContainsServicesException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You can't delete a cluster that has active tasks.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ClusterContainsTasksException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ClusterField
    #
    module ClusterField
      # No documentation available.
      #
      ATTACHMENTS = "ATTACHMENTS"

      # No documentation available.
      #
      CONFIGURATIONS = "CONFIGURATIONS"

      # No documentation available.
      #
      SETTINGS = "SETTINGS"

      # No documentation available.
      #
      STATISTICS = "STATISTICS"

      # No documentation available.
      #
      TAGS = "TAGS"
    end

    # <p>The specified cluster wasn't found. You can view your available clusters with <a>ListClusters</a>. Amazon ECS clusters are Region specific.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ClusterNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The settings to use when creating a cluster. This parameter is used to turn on CloudWatch
    # 			Container Insights for a cluster.</p>
    #
    # @!attribute name
    #   <p>The name of the cluster setting. The only supported value is
    #   				<code>containerInsights</code>.</p>
    #
    #   Enum, one of: ["containerInsights"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value to set for the cluster setting. The supported values are
    #   				<code>enabled</code> and <code>disabled</code>. If <code>enabled</code> is
    #   			specified, CloudWatch Container Insights will be enabled for the cluster, otherwise it will be
    #   			disabled unless the <code>containerInsights</code> account setting is enabled. If a
    #   			cluster value is specified, it will override the <code>containerInsights</code> value
    #   			set with <a>PutAccountSetting</a> or <a>PutAccountSettingDefault</a>.</p>
    #
    #   @return [String]
    #
    ClusterSetting = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ClusterSettingName
    #
    module ClusterSettingName
      # No documentation available.
      #
      CONTAINER_INSIGHTS = "containerInsights"
    end

    # Includes enum constants for Compatibility
    #
    module Compatibility
      # No documentation available.
      #
      EC2 = "EC2"

      # No documentation available.
      #
      FARGATE = "FARGATE"

      # No documentation available.
      #
      EXTERNAL = "EXTERNAL"
    end

    # Includes enum constants for Connectivity
    #
    module Connectivity
      # No documentation available.
      #
      CONNECTED = "CONNECTED"

      # No documentation available.
      #
      DISCONNECTED = "DISCONNECTED"
    end

    # <p>A Docker container that's part of a task.</p>
    #
    # @!attribute container_arn
    #   <p>The Amazon Resource Name (ARN) of the container.</p>
    #
    #   @return [String]
    #
    # @!attribute task_arn
    #   <p>The ARN of the task.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the container.</p>
    #
    #   @return [String]
    #
    # @!attribute image
    #   <p>The image used for the container.</p>
    #
    #   @return [String]
    #
    # @!attribute image_digest
    #   <p>The container image manifest digest.</p>
    #   		       <note>
    #   			         <p>The <code>imageDigest</code> is only returned if the container is using an image
    #   				hosted in Amazon ECR, otherwise it is omitted.</p>
    #   		       </note>
    #
    #   @return [String]
    #
    # @!attribute runtime_id
    #   <p>The ID of the Docker container.</p>
    #
    #   @return [String]
    #
    # @!attribute last_status
    #   <p>The last known status of the container.</p>
    #
    #   @return [String]
    #
    # @!attribute exit_code
    #   <p>The exit code returned from the container.</p>
    #
    #   @return [Integer]
    #
    # @!attribute reason
    #   <p>A short (255 max characters) human-readable string to provide additional details about
    #   			a running or stopped container.</p>
    #
    #   @return [String]
    #
    # @!attribute network_bindings
    #   <p>The network bindings associated with the container.</p>
    #
    #   @return [Array<NetworkBinding>]
    #
    # @!attribute network_interfaces
    #   <p>The network interfaces associated with the container.</p>
    #
    #   @return [Array<NetworkInterface>]
    #
    # @!attribute health_status
    #   <p>The health status of the container. If health checks aren't configured for this
    #   			container in its task definition, then it reports the health status as
    #   				<code>UNKNOWN</code>.</p>
    #
    #   Enum, one of: ["HEALTHY", "UNHEALTHY", "UNKNOWN"]
    #
    #   @return [String]
    #
    # @!attribute managed_agents
    #   <p>The details of any Amazon ECS managed agents associated with the container.</p>
    #
    #   @return [Array<ManagedAgent>]
    #
    # @!attribute cpu
    #   <p>The number of CPU units set for the container. The value is <code>0</code> if no value
    #   			was specified in the container definition when the task definition was
    #   			registered.</p>
    #
    #   @return [String]
    #
    # @!attribute memory
    #   <p>The hard limit (in MiB) of memory set for the container.</p>
    #
    #   @return [String]
    #
    # @!attribute memory_reservation
    #   <p>The soft limit (in MiB) of memory set for the container.</p>
    #
    #   @return [String]
    #
    # @!attribute gpu_ids
    #   <p>The IDs of each GPU assigned to the container.</p>
    #
    #   @return [Array<String>]
    #
    Container = ::Struct.new(
      :container_arn,
      :task_arn,
      :name,
      :image,
      :image_digest,
      :runtime_id,
      :last_status,
      :exit_code,
      :reason,
      :network_bindings,
      :network_interfaces,
      :health_status,
      :managed_agents,
      :cpu,
      :memory,
      :memory_reservation,
      :gpu_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ContainerCondition
    #
    module ContainerCondition
      # No documentation available.
      #
      START = "START"

      # No documentation available.
      #
      COMPLETE = "COMPLETE"

      # No documentation available.
      #
      SUCCESS = "SUCCESS"

      # No documentation available.
      #
      HEALTHY = "HEALTHY"
    end

    # <p>Container definitions are used in task definitions to describe the different
    # 			containers that are launched as part of a task.</p>
    #
    # @!attribute name
    #   <p>The name of a container. If you're linking multiple containers together in a task
    #   			definition, the <code>name</code> of one container can be entered in the
    #   				<code>links</code> of another container to connect the containers.
    #   			Up to 255 letters (uppercase and lowercase), numbers, underscores, and hyphens are allowed. This parameter maps to <code>name</code> in the
    #   			<a href="https://docs.docker.com/engine/api/v1.35/ operation/ContainerCreate">Create a container</a> section of the <a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the
    #   				<code>--name</code> option to <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker
    #   			run</a>. </p>
    #
    #   @return [String]
    #
    # @!attribute image
    #   <p>The image used to start a container. This string is passed directly to the Docker
    #   			daemon. By default, images in the Docker Hub registry are available. Other repositories
    #   			are specified with either <code>
    #   				           <i>repository-url</i>/<i>image</i>:<i>tag</i>
    #   			         </code> or <code>
    #   				           <i>repository-url</i>/<i>image</i>@<i>digest</i>
    #   			         </code>. Up to 255 letters (uppercase and lowercase), numbers, hyphens, underscores, colons, periods, forward slashes, and number signs are allowed. This parameter maps to <code>Image</code> in the
    #   			<a href="https://docs.docker.com/engine/api/v1.35/ operation/ContainerCreate">Create a container</a> section of the <a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the
    #   				<code>IMAGE</code> parameter of <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker
    #   				run</a>.</p>
    #   		       <ul>
    #               <li>
    #   				           <p>When a new task starts, the Amazon ECS container agent pulls the latest version of
    #   					the specified image and tag for the container to use. However, subsequent
    #   					updates to a repository image aren't propagated to already running tasks.</p>
    #   			         </li>
    #               <li>
    #   				           <p>Images in Amazon ECR repositories can be specified by either using the full
    #   						<code>registry/repository:tag</code> or
    #   						<code>registry/repository@digest</code>. For example,
    #   						<code>012345678910.dkr.ecr.<region-name>.amazonaws.com/<repository-name>:latest</code>
    #   					or
    #   						<code>012345678910.dkr.ecr.<region-name>.amazonaws.com/<repository-name>@sha256:94afd1f2e64d908bc90dbca0035a5b567EXAMPLE</code>.
    #   				</p>
    #   			         </li>
    #               <li>
    #   				           <p>Images in official repositories on Docker Hub use a single name (for example,
    #   						<code>ubuntu</code> or <code>mongo</code>).</p>
    #   			         </li>
    #               <li>
    #   				           <p>Images in other repositories on Docker Hub are qualified with an organization
    #   					name (for example, <code>amazon/amazon-ecs-agent</code>).</p>
    #   			         </li>
    #               <li>
    #   				           <p>Images in other online repositories are qualified further by a domain name
    #   					(for example, <code>quay.io/assemblyline/ubuntu</code>).</p>
    #   			         </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute repository_credentials
    #   <p>The private repository authentication credentials to use.</p>
    #
    #   @return [RepositoryCredentials]
    #
    # @!attribute cpu
    #   <p>The number of <code>cpu</code> units reserved for the container. This parameter maps
    #   			to <code>CpuShares</code> in the <a href="https://docs.docker.com/engine/api/v1.35/ operation/ContainerCreate">Create a container</a> section of the
    #   			<a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the <code>--cpu-shares</code> option to <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker run</a>.</p>
    #   		       <p>This field is optional for tasks using the Fargate launch type, and the
    #   			only requirement is that the total amount of CPU reserved for all containers within a
    #   			task be lower than the task-level <code>cpu</code> value.</p>
    #   		       <note>
    #   			         <p>You can determine the number of CPU units that are available per EC2 instance type
    #   				by multiplying the vCPUs listed for that instance type on the <a href="http://aws.amazon.com/ec2/instance-types/">Amazon EC2 Instances</a> detail page
    #   				by 1,024.</p>
    #   		       </note>
    #   		       <p>Linux containers share unallocated CPU units with other containers on the container
    #   			instance with the same ratio as their allocated amount. For example, if you run a
    #   			single-container task on a single-core instance type with 512 CPU units specified for
    #   			that container, and that's the only task running on the container instance, that
    #   			container could use the full 1,024 CPU unit share at any given time. However, if you
    #   			launched another copy of the same task on that container instance, each task is
    #   			guaranteed a minimum of 512 CPU units when needed. Moreover, each container could float
    #   			to higher CPU usage if the other container was not using it. If both tasks were 100%
    #   			active all of the time, they would be limited to 512 CPU units.</p>
    #   		       <p>On Linux container instances, the Docker daemon on the container instance uses the CPU
    #   			value to calculate the relative CPU share ratios for running containers. For more
    #   			information, see <a href="https://docs.docker.com/engine/reference/run/ cpu-share-constraint">CPU share
    #   				constraint</a> in the Docker documentation. The minimum valid CPU share value
    #   			that the Linux kernel allows is 2. However, the CPU parameter isn't required, and you
    #   			can use CPU values below 2 in your container definitions. For CPU values below 2
    #   			(including null), the behavior varies based on your Amazon ECS container agent
    #   			version:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #   					             <b>Agent versions less than or equal to 1.1.0:</b>
    #   					Null and zero CPU values are passed to Docker as 0, which Docker then converts
    #   					to 1,024 CPU shares. CPU values of 1 are passed to Docker as 1, which the Linux
    #   					kernel converts to two CPU shares.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #   					             <b>Agent versions greater than or equal to 1.2.0:</b>
    #   					Null, zero, and CPU values of 1 are passed to Docker as 2.</p>
    #   			         </li>
    #            </ul>
    #   		       <p>On Windows container instances, the CPU limit is enforced as an absolute limit, or a
    #   			quota. Windows containers only have access to the specified amount of CPU that's
    #   			described in the task definition. A null or zero CPU value is passed to Docker as
    #   				<code>0</code>, which Windows interprets as 1% of one CPU.</p>
    #
    #   @return [Integer]
    #
    # @!attribute memory
    #   <p>The amount (in MiB) of memory to present to the container. If your container attempts
    #   			to exceed the memory specified here, the container is killed. The total amount of memory
    #   			reserved for all containers within a task must be lower than the task
    #   				<code>memory</code> value, if one is specified. This parameter maps to
    #   				<code>Memory</code> in the <a href="https://docs.docker.com/engine/api/v1.35/ operation/ContainerCreate">Create a container</a> section of the
    #   			<a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the <code>--memory</code> option to <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker run</a>.</p>
    #   		       <p>If using the Fargate launch type, this parameter is optional.</p>
    #   		       <p>If using the EC2 launch type, you must specify either a task-level
    #   			memory value or a container-level memory value. If you specify both a container-level
    #   				<code>memory</code> and <code>memoryReservation</code> value, <code>memory</code>
    #   			must be greater than <code>memoryReservation</code>. If you specify
    #   				<code>memoryReservation</code>, then that value is subtracted from the available
    #   			memory resources for the container instance where the container is placed. Otherwise,
    #   			the value of <code>memory</code> is used.</p>
    #   		       <p>The Docker 20.10.0 or later daemon reserves a minimum of 6 MiB of
    #   			memory for a container, so you should not specify fewer than 6 MiB of
    #   			memory for your containers.</p>
    #   		       <p>The Docker 19.03.13-ce or earlier daemon reserves a minimum of 4 MiB
    #   			of memory for a container, so you should not specify fewer than 4 MiB of
    #   			memory for your containers.</p>
    #
    #   @return [Integer]
    #
    # @!attribute memory_reservation
    #   <p>The soft limit (in MiB) of memory to reserve for the container. When system memory is
    #   			under heavy contention, Docker attempts to keep the container memory to this soft limit.
    #   			However, your container can consume more memory when it needs to, up to either the hard
    #   			limit specified with the <code>memory</code> parameter (if applicable), or all of the
    #   			available memory on the container instance, whichever comes first. This parameter maps
    #   			to <code>MemoryReservation</code> in the <a href="https://docs.docker.com/engine/api/v1.35/ operation/ContainerCreate">Create a container</a> section of
    #   			the <a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the <code>--memory-reservation</code> option to <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker run</a>.</p>
    #   		       <p>If a task-level memory value is not specified, you must specify a non-zero integer for
    #   			one or both of <code>memory</code> or <code>memoryReservation</code> in a container
    #   			definition. If you specify both, <code>memory</code> must be greater than
    #   				<code>memoryReservation</code>. If you specify <code>memoryReservation</code>, then
    #   			that value is subtracted from the available memory resources for the container instance
    #   			where the container is placed. Otherwise, the value of <code>memory</code> is
    #   			used.</p>
    #   		       <p>For example, if your container normally uses 128 MiB of memory, but occasionally
    #   			bursts to 256 MiB of memory for short periods of time, you can set a
    #   				<code>memoryReservation</code> of 128 MiB, and a <code>memory</code> hard limit of
    #   			300 MiB. This configuration would allow the container to only reserve 128 MiB of memory
    #   			from the remaining resources on the container instance, but also allow the container to
    #   			consume more memory resources when needed.</p>
    #   		       <p>The Docker daemon reserves a minimum of 4 MiB of memory for a container. Therefore, we
    #   			recommend that you specify fewer than 4 MiB of memory for your containers. </p>
    #
    #   @return [Integer]
    #
    # @!attribute links
    #   <p>The <code>links</code> parameter allows containers to communicate with each other
    #   			without the need for port mappings. This parameter is only supported if the network mode
    #   			of a task definition is <code>bridge</code>. The <code>name:internalName</code>
    #   			construct is analogous to <code>name:alias</code> in Docker links.
    #   			Up to 255 letters (uppercase and lowercase), numbers, underscores, and hyphens are allowed. For more information about linking Docker containers, go to
    #   				<a href="https://docs.docker.com/network/links/">Legacy container links</a>
    #   			in the Docker documentation. This parameter maps to <code>Links</code> in the
    #   			<a href="https://docs.docker.com/engine/api/v1.35/ operation/ContainerCreate">Create a container</a> section of the <a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the
    #   				<code>--link</code> option to <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker
    #   			run</a>.</p>
    #   		       <note>
    #                           <p>This parameter is not supported for Windows containers.</p>
    #                        </note>
    #   		       <important>
    #   			         <p>Containers that are collocated on a single container instance may be able to
    #   				communicate with each other without requiring links or host port mappings. Network
    #   				isolation is achieved on the container instance using security groups and VPC
    #   				settings.</p>
    #   		       </important>
    #
    #   @return [Array<String>]
    #
    # @!attribute port_mappings
    #   <p>The list of port mappings for the container. Port mappings allow containers to access
    #   			ports on the host container instance to send or receive traffic.</p>
    #   		       <p>For task definitions that use the <code>awsvpc</code> network mode, only specify the
    #   				<code>containerPort</code>. The <code>hostPort</code> can be left blank or it must
    #   			be the same value as the <code>containerPort</code>.</p>
    #   		       <p>Port mappings on Windows use the <code>NetNAT</code> gateway address rather than
    #   				<code>localhost</code>. There's no loopback for port mappings on Windows, so you
    #   			can't access a container's mapped port from the host itself. </p>
    #   		       <p>This parameter maps to <code>PortBindings</code> in the
    #   			<a href="https://docs.docker.com/engine/api/v1.35/ operation/ContainerCreate">Create a container</a> section of the <a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the
    #   				<code>--publish</code> option to <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker
    #   				run</a>. If the network mode of a task definition is set to <code>none</code>,
    #   			then you can't specify port mappings. If the network mode of a task definition is set to
    #   				<code>host</code>, then host ports must either be undefined or they must match the
    #   			container port in the port mapping.</p>
    #   		       <note>
    #   			         <p>After a task reaches the <code>RUNNING</code> status, manual and automatic host
    #   				and container port assignments are visible in the <b>Network
    #   					Bindings</b> section of a container description for a selected task in
    #   				the Amazon ECS console. The assignments are also visible in the
    #   					<code>networkBindings</code> section <a>DescribeTasks</a>
    #   				responses.</p>
    #   		       </note>
    #
    #   @return [Array<PortMapping>]
    #
    # @!attribute essential
    #   <p>If the <code>essential</code> parameter of a container is marked as <code>true</code>,
    #   			and that container fails or stops for any reason, all other containers that are part of
    #   			the task are stopped. If the <code>essential</code> parameter of a container is marked
    #   			as <code>false</code>, its failure doesn't affect the rest of the containers in a task.
    #   			If this parameter is omitted, a container is assumed to be essential.</p>
    #   		       <p>All tasks must have at least one essential container. If you have an application
    #   			that's composed of multiple containers, group containers that are used for a common
    #   			purpose into components, and separate the different components into multiple task
    #   			definitions. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/application_architecture.html">Application
    #   				Architecture</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute entry_point
    #   <important>
    #   			         <p>Early versions of the Amazon ECS container agent don't properly handle
    #   					<code>entryPoint</code> parameters. If you have problems using
    #   					<code>entryPoint</code>, update your container agent or enter your commands and
    #   				arguments as <code>command</code> array items instead.</p>
    #   		       </important>
    #   		       <p>The entry point that's passed to the container. This parameter maps to
    #   				<code>Entrypoint</code> in the <a href="https://docs.docker.com/engine/api/v1.35/ operation/ContainerCreate">Create a container</a> section of the
    #   			<a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the <code>--entrypoint</code> option to <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker run</a>. For more information, see <a href="https://docs.docker.com/engine/reference/builder/ entrypoint">https://docs.docker.com/engine/reference/builder/ entrypoint</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute command
    #   <p>The command that's passed to the container. This parameter maps to <code>Cmd</code> in
    #   			the <a href="https://docs.docker.com/engine/api/v1.35/ operation/ContainerCreate">Create a container</a> section of the <a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the
    #   				<code>COMMAND</code> parameter to <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker
    #   				run</a>. For more information, see <a href="https://docs.docker.com/engine/reference/builder/ cmd">https://docs.docker.com/engine/reference/builder/ cmd</a>. If there are multiple arguments, each
    #   			argument is a separated string in the array.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute environment
    #   <p>The environment variables to pass to a container. This parameter maps to
    #   				<code>Env</code> in the <a href="https://docs.docker.com/engine/api/v1.35/ operation/ContainerCreate">Create a container</a> section of the
    #   			<a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the <code>--env</code> option to <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker run</a>.</p>
    #   		       <important>
    #   			         <p>We don't recommend that you use plaintext environment variables for sensitive
    #   				information, such as credential data.</p>
    #   		       </important>
    #
    #   @return [Array<KeyValuePair>]
    #
    # @!attribute environment_files
    #   <p>A list of files containing the environment variables to pass to a container. This
    #   			parameter maps to the <code>--env-file</code> option to <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker run</a>.</p>
    #   		       <p>You can specify up to ten environment files. The file must have a <code>.env</code>
    #   			file extension. Each line in an environment file contains an environment variable in
    #   				<code>VARIABLE=VALUE</code> format. Lines beginning with <code> </code> are treated
    #   			as comments and are ignored. For more information about the environment variable file
    #   			syntax, see <a href="https://docs.docker.com/compose/env-file/">Declare default
    #   				environment variables in file</a>.</p>
    #   		       <p>If there are environment variables specified using the <code>environment</code>
    #   			parameter in a container definition, they take precedence over the variables contained
    #   			within an environment file. If multiple environment files are specified that contain the
    #   			same variable, they're processed from the top down. We recommend that you use unique
    #   			variable names. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/taskdef-envfiles.html">Specifying Environment
    #   				Variables</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [Array<EnvironmentFile>]
    #
    # @!attribute mount_points
    #   <p>The mount points for data volumes in your container.</p>
    #   		       <p>This parameter maps to <code>Volumes</code> in the <a href="https://docs.docker.com/engine/api/v1.35/ operation/ContainerCreate">Create a container</a>
    #   			section of the <a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the <code>--volume</code> option to <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker run</a>.</p>
    #   		       <p>Windows containers can mount whole directories on the same drive as
    #   				<code>$env:ProgramData</code>. Windows containers can't mount directories on a
    #   			different drive, and mount point can't be across drives.</p>
    #
    #   @return [Array<MountPoint>]
    #
    # @!attribute volumes_from
    #   <p>Data volumes to mount from another container. This parameter maps to
    #   				<code>VolumesFrom</code> in the <a href="https://docs.docker.com/engine/api/v1.35/ operation/ContainerCreate">Create a container</a> section of the
    #   			<a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the <code>--volumes-from</code> option to <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker run</a>.</p>
    #
    #   @return [Array<VolumeFrom>]
    #
    # @!attribute linux_parameters
    #   <p>Linux-specific modifications that are applied to the container, such as Linux kernel
    #   			capabilities. For more information see <a>KernelCapabilities</a>.</p>
    #   		       <note>
    #   			         <p>This parameter is not supported for Windows containers.</p>
    #   		       </note>
    #
    #   @return [LinuxParameters]
    #
    # @!attribute secrets
    #   <p>The secrets to pass to the container. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/specifying-sensitive-data.html">Specifying
    #   				Sensitive Data</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [Array<Secret>]
    #
    # @!attribute depends_on
    #   <p>The dependencies defined for container startup and shutdown. A container can contain
    #   			multiple dependencies. When a dependency is defined for container startup, for container
    #   			shutdown it is reversed.</p>
    #   		       <p>For tasks using the EC2 launch type, the container instances require at
    #   			least version 1.26.0 of the container agent to turn on container dependencies. However,
    #   			we recommend using the latest container agent version. For information about checking
    #   			your agent version and updating to the latest version, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html">Updating the Amazon ECS
    #   				Container Agent</a> in the <i>Amazon Elastic Container Service Developer Guide</i>. If you're using
    #   			an Amazon ECS-optimized Linux AMI, your instance needs at least version 1.26.0-1 of the
    #   				<code>ecs-init</code> package. If your container instances are launched from version
    #   				<code>20190301</code> or later, then they contain the required versions of the
    #   			container agent and <code>ecs-init</code>. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html">Amazon ECS-optimized Linux AMI</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #   		       <p>For tasks using the Fargate launch type, the task or service requires
    #   			the following platforms:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>Linux platform version <code>1.3.0</code> or later.</p>
    #   			         </li>
    #               <li>
    #   				           <p>Windows platform version <code>1.0.0</code> or later.</p>
    #   			         </li>
    #            </ul>
    #
    #   @return [Array<ContainerDependency>]
    #
    # @!attribute start_timeout
    #   <p>Time duration (in seconds) to wait before giving up on resolving dependencies for a
    #   			container. For example, you specify two containers in a task definition with containerA
    #   			having a dependency on containerB reaching a <code>COMPLETE</code>,
    #   			<code>SUCCESS</code>, or <code>HEALTHY</code> status. If a <code>startTimeout</code>
    #   			value is specified for containerB and it doesn't reach the desired status within that
    #   			time then containerA gives up and not start. This results in the task transitioning to a
    #   				<code>STOPPED</code> state.</p>
    #   		       <note>
    #   			         <p>When the <code>ECS_CONTAINER_START_TIMEOUT</code> container agent configuration
    #   				variable is used, it's enforced independently from this start timeout value.</p>
    #   		       </note>
    #   		       <p>For tasks using the Fargate launch type, the task or service requires
    #   			the following platforms:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>Linux platform version <code>1.3.0</code> or later.</p>
    #   			         </li>
    #               <li>
    #   				           <p>Windows platform version <code>1.0.0</code> or later.</p>
    #   			         </li>
    #            </ul>
    #   		       <p>For tasks using the EC2 launch type, your container instances require at
    #   			least version <code>1.26.0</code> of the container agent to use a container start
    #   			timeout value. However, we recommend using the latest container agent version. For
    #   			information about checking your agent version and updating to the latest version, see
    #   				<a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html">Updating the Amazon ECS
    #   				Container Agent</a> in the <i>Amazon Elastic Container Service Developer Guide</i>. If you're using
    #   			an Amazon ECS-optimized Linux AMI, your instance needs at least version <code>1.26.0-1</code> of the
    #   				<code>ecs-init</code> package. If your container instances are launched from version
    #   				<code>20190301</code> or later, then they contain the required versions of the
    #   			container agent and <code>ecs-init</code>. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html">Amazon ECS-optimized Linux AMI</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute stop_timeout
    #   <p>Time duration (in seconds) to wait before the container is forcefully killed if it
    #   			doesn't exit normally on its own.</p>
    #   		       <p>For tasks using the Fargate launch type, the task or service requires
    #   			the following platforms:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>Linux platform version <code>1.3.0</code> or later.</p>
    #   			         </li>
    #               <li>
    #   				           <p>Windows platform version <code>1.0.0</code> or later.</p>
    #   			         </li>
    #            </ul>
    #   		       <p>The max stop timeout value is 120 seconds and if the parameter is not specified, the
    #   			default value of 30 seconds is used.</p>
    #   		       <p>For tasks that use the EC2 launch type, if the <code>stopTimeout</code>
    #   			parameter isn't specified, the value set for the Amazon ECS container agent configuration
    #   			variable <code>ECS_CONTAINER_STOP_TIMEOUT</code> is used. If neither the
    #   				<code>stopTimeout</code> parameter or the <code>ECS_CONTAINER_STOP_TIMEOUT</code>
    #   			agent configuration variable are set, then the default values of 30 seconds for Linux
    #   			containers and 30 seconds on Windows containers are used. Your container instances
    #   			require at least version 1.26.0 of the container agent to use a container stop
    #   			timeout value. However, we recommend using the latest container agent version. For
    #   			information about checking your agent version and updating to the latest version, see
    #   				<a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html">Updating the Amazon ECS
    #   				Container Agent</a> in the <i>Amazon Elastic Container Service Developer Guide</i>. If you're using
    #   			an Amazon ECS-optimized Linux AMI, your instance needs at least version 1.26.0-1 of the
    #   				<code>ecs-init</code> package. If your container instances are launched from version
    #   				<code>20190301</code> or later, then they contain the required versions of the
    #   			container agent and <code>ecs-init</code>. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html">Amazon ECS-optimized Linux AMI</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute hostname
    #   <p>The hostname to use for your container. This parameter maps to <code>Hostname</code>
    #   			in the <a href="https://docs.docker.com/engine/api/v1.35/ operation/ContainerCreate">Create a container</a> section of the <a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the
    #   				<code>--hostname</code> option to <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker
    #   				run</a>.</p>
    #   		       <note>
    #   			         <p>The <code>hostname</code> parameter is not supported if you're using the
    #   					<code>awsvpc</code> network mode.</p>
    #   		       </note>
    #
    #   @return [String]
    #
    # @!attribute user
    #   <p>The user to use inside the container. This parameter maps to <code>User</code> in the
    #   			<a href="https://docs.docker.com/engine/api/v1.35/ operation/ContainerCreate">Create a container</a> section of the <a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the
    #   				<code>--user</code> option to <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker
    #   			run</a>.</p>
    #   		       <important>
    #   			         <p>When running tasks using the <code>host</code> network mode, don't run containers
    #   				using the root user (UID 0). We recommend using a non-root user for better
    #   				security.</p>
    #   		       </important>
    #   		       <p>You can specify the <code>user</code> using the following formats. If specifying a UID
    #   			or GID, you must specify it as a positive integer.</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <code>user</code>
    #                  </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>user:group</code>
    #                  </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>uid</code>
    #                  </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>uid:gid</code>
    #                  </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>user:gid</code>
    #                  </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>uid:group</code>
    #                  </p>
    #   			         </li>
    #            </ul>
    #   		       <note>
    #                           <p>This parameter is not supported for Windows containers.</p>
    #                        </note>
    #
    #   @return [String]
    #
    # @!attribute working_directory
    #   <p>The working directory to run commands inside the container in. This parameter maps to
    #   				<code>WorkingDir</code> in the <a href="https://docs.docker.com/engine/api/v1.35/ operation/ContainerCreate">Create a container</a> section of the
    #   			<a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the <code>--workdir</code> option to <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker run</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute disable_networking
    #   <p>When this parameter is true, networking is disabled within the container. This
    #   			parameter maps to <code>NetworkDisabled</code> in the <a href="https://docs.docker.com/engine/api/v1.35/ operation/ContainerCreate">Create a container</a>
    #   			section of the <a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a>.</p>
    #   		       <note>
    #                           <p>This parameter is not supported for Windows containers.</p>
    #                        </note>
    #
    #   @return [Boolean]
    #
    # @!attribute privileged
    #   <p>When this parameter is true, the container is given elevated privileges on the host
    #   			container instance (similar to the <code>root</code> user). This parameter maps to
    #   				<code>Privileged</code> in the <a href="https://docs.docker.com/engine/api/v1.35/ operation/ContainerCreate">Create a container</a> section of the
    #   			<a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the <code>--privileged</code> option to <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker run</a>.</p>
    #   		       <note>
    #                                   <p>This parameter is not supported for Windows containers or tasks run on Fargate.</p>
    #                                </note>
    #
    #   @return [Boolean]
    #
    # @!attribute readonly_root_filesystem
    #   <p>When this parameter is true, the container is given read-only access to its root file
    #   			system. This parameter maps to <code>ReadonlyRootfs</code> in the
    #   			<a href="https://docs.docker.com/engine/api/v1.35/ operation/ContainerCreate">Create a container</a> section of the <a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the
    #   				<code>--read-only</code> option to <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker
    #   				run</a>.</p>
    #   		       <note>
    #                           <p>This parameter is not supported for Windows containers.</p>
    #                        </note>
    #
    #   @return [Boolean]
    #
    # @!attribute dns_servers
    #   <p>A list of DNS servers that are presented to the container. This parameter maps to
    #   				<code>Dns</code> in the <a href="https://docs.docker.com/engine/api/v1.35/ operation/ContainerCreate">Create a container</a> section of the
    #   			<a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the <code>--dns</code> option to <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker run</a>.</p>
    #   		       <note>
    #                           <p>This parameter is not supported for Windows containers.</p>
    #                        </note>
    #
    #   @return [Array<String>]
    #
    # @!attribute dns_search_domains
    #   <p>A list of DNS search domains that are presented to the container. This parameter maps
    #   			to <code>DnsSearch</code> in the <a href="https://docs.docker.com/engine/api/v1.35/ operation/ContainerCreate">Create a container</a> section of the
    #   			<a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the <code>--dns-search</code> option to <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker run</a>.</p>
    #   		       <note>
    #                           <p>This parameter is not supported for Windows containers.</p>
    #                        </note>
    #
    #   @return [Array<String>]
    #
    # @!attribute extra_hosts
    #   <p>A list of hostnames and IP address mappings to append to the <code>/etc/hosts</code>
    #   			file on the container. This parameter maps to <code>ExtraHosts</code> in the
    #   			<a href="https://docs.docker.com/engine/api/v1.35/ operation/ContainerCreate">Create a container</a> section of the <a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the
    #   				<code>--add-host</code> option to <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker
    #   				run</a>.</p>
    #   		       <note>
    #   			         <p>This parameter isn't supported for Windows containers or tasks that use the
    #   					<code>awsvpc</code> network mode.</p>
    #   		       </note>
    #
    #   @return [Array<HostEntry>]
    #
    # @!attribute docker_security_options
    #   <p>A list of strings to provide custom labels for SELinux and AppArmor multi-level
    #   			security systems. This field isn't valid for containers in tasks using the
    #   			Fargate launch type.</p>
    #   		       <p>With Windows containers, this parameter can be used to reference a credential spec
    #   			file when configuring a container for Active Directory authentication. For more
    #   			information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/windows-gmsa.html">Using gMSAs for Windows
    #   				Containers</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #   		       <p>This parameter maps to <code>SecurityOpt</code> in the
    #   			<a href="https://docs.docker.com/engine/api/v1.35/ operation/ContainerCreate">Create a container</a> section of the <a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the
    #   				<code>--security-opt</code> option to <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker
    #   				run</a>.</p>
    #   		       <note>
    #   			         <p>The Amazon ECS container agent running on a container instance must register with the
    #   					<code>ECS_SELINUX_CAPABLE=true</code> or <code>ECS_APPARMOR_CAPABLE=true</code>
    #   				environment variables before containers placed on that instance can use these
    #   				security options. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html">Amazon ECS Container
    #   					Agent Configuration</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #   		       </note>
    #   		       <p>For more information about valid values, see <a href="https://docs.docker.com/engine/reference/run/ security-configuration">Docker
    #   				Run Security Configuration</a>. </p>
    #   		       <p>Valid values: "no-new-privileges" | "apparmor:PROFILE" | "label:value" |
    #   			"credentialspec:CredentialSpecFilePath"</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute interactive
    #   <p>When this parameter is <code>true</code>, you can deploy containerized applications
    #   			that require <code>stdin</code> or a <code>tty</code> to be allocated. This parameter
    #   			maps to <code>OpenStdin</code> in the <a href="https://docs.docker.com/engine/api/v1.35/ operation/ContainerCreate">Create a container</a> section of the
    #   			<a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the <code>--interactive</code> option to <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker run</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute pseudo_terminal
    #   <p>When this parameter is <code>true</code>, a TTY is allocated. This parameter maps to
    #   				<code>Tty</code> in the <a href="https://docs.docker.com/engine/api/v1.35/ operation/ContainerCreate">Create a container</a> section of the
    #   			<a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the <code>--tty</code> option to <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker run</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute docker_labels
    #   <p>A key/value map of labels to add to the container. This parameter maps to
    #   				<code>Labels</code> in the <a href="https://docs.docker.com/engine/api/v1.35/ operation/ContainerCreate">Create a container</a> section of the
    #   			<a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the <code>--label</code> option to <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker run</a>. This parameter requires version 1.18 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log in to your container instance and run the following command: <code>sudo docker version --format '{{.Server.APIVersion}}'</code>
    #            </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute ulimits
    #   <p>A list of <code>ulimits</code> to set in the container. If a ulimit value is specified
    #   			in a task definition, it overrides the default values set by Docker. This parameter maps
    #   			to <code>Ulimits</code> in the <a href="https://docs.docker.com/engine/api/v1.35/ operation/ContainerCreate">Create a container</a> section of the
    #   			<a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the <code>--ulimit</code> option to <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker run</a>. Valid naming values are displayed
    #   			in the <a>Ulimit</a> data type.</p>
    #   		       <p>Amazon ECS tasks hosted on Fargate use the default
    #   							resource limit values set by the operating system with the exception of
    #   							the <code>nofile</code> resource limit parameter which Fargate
    #   							overrides. The <code>nofile</code> resource limit sets a restriction on
    #   							the number of open files that a container can use. The default
    #   								<code>nofile</code> soft limit is <code>1024</code> and hard limit
    #   							is <code>4096</code>.</p>
    #   		       <p>This parameter requires version 1.18 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log in to your container instance and run the following command: <code>sudo docker version --format '{{.Server.APIVersion}}'</code>
    #            </p>
    #   		       <note>
    #                           <p>This parameter is not supported for Windows containers.</p>
    #                        </note>
    #
    #   @return [Array<Ulimit>]
    #
    # @!attribute log_configuration
    #   <p>The log configuration specification for the container.</p>
    #   		       <p>This parameter maps to <code>LogConfig</code> in the
    #   			<a href="https://docs.docker.com/engine/api/v1.35/ operation/ContainerCreate">Create a container</a> section of the <a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the
    #   				<code>--log-driver</code> option to <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker
    #   				run</a>. By default, containers use the same logging driver that the Docker
    #   			daemon uses. However the container can use a different logging driver than the Docker
    #   			daemon by specifying a log driver with this parameter in the container definition. To
    #   			use a different logging driver for a container, the log system must be configured
    #   			properly on the container instance (or on a different log server for remote logging
    #   			options). For more information about the options for different supported log drivers,
    #   			see <a href="https://docs.docker.com/engine/admin/logging/overview/">Configure
    #   				logging drivers</a> in the Docker documentation.</p>
    #   		       <note>
    #   			         <p>Amazon ECS currently supports a subset of the logging drivers available to the Docker
    #   				daemon (shown in the <a>LogConfiguration</a> data type). Additional log
    #   				drivers may be available in future releases of the Amazon ECS container agent.</p>
    #   		       </note>
    #   		       <p>This parameter requires version 1.18 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log in to your container instance and run the following command: <code>sudo docker version --format '{{.Server.APIVersion}}'</code>
    #            </p>
    #   		       <note>
    #   			         <p>The Amazon ECS container agent running on a container instance must register the
    #   				logging drivers available on that instance with the
    #   					<code>ECS_AVAILABLE_LOGGING_DRIVERS</code> environment variable before
    #   				containers placed on that instance can use these log configuration options. For more
    #   				information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html">Amazon ECS Container
    #   					Agent Configuration</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #   		       </note>
    #
    #   @return [LogConfiguration]
    #
    # @!attribute health_check
    #   <p>The container health check command and associated configuration parameters for the
    #   			container. This parameter maps to <code>HealthCheck</code> in the
    #   			<a href="https://docs.docker.com/engine/api/v1.35/ operation/ContainerCreate">Create a container</a> section of the <a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the
    #   				<code>HEALTHCHECK</code> parameter of <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker
    #   				run</a>.</p>
    #
    #   @return [HealthCheck]
    #
    # @!attribute system_controls
    #   <p>A list of namespaced kernel parameters to set in the container. This parameter maps to
    #   				<code>Sysctls</code> in the <a href="https://docs.docker.com/engine/api/v1.35/ operation/ContainerCreate">Create a container</a> section of the
    #   			<a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the <code>--sysctl</code> option to <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker run</a>.</p>
    #   		       <note>
    #   			         <p>We don't recommended that you specify network-related <code>systemControls</code>
    #   				parameters for multiple containers in a single task that also uses either the
    #   					<code>awsvpc</code> or <code>host</code> network modes. For tasks that use the
    #   					<code>awsvpc</code> network mode, the container that's started last determines
    #   				which <code>systemControls</code> parameters take effect. For tasks that use the
    #   					<code>host</code> network mode, it changes the container instance's namespaced
    #   				kernel parameters as well as the containers.</p>
    #   		       </note>
    #
    #   @return [Array<SystemControl>]
    #
    # @!attribute resource_requirements
    #   <p>The type and amount of a resource to assign to a container. The only supported
    #   			resource is a GPU.</p>
    #
    #   @return [Array<ResourceRequirement>]
    #
    # @!attribute firelens_configuration
    #   <p>The FireLens configuration for the container. This is used to specify and configure a
    #   			log router for container logs. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_firelens.html">Custom Log Routing</a>
    #   			in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [FirelensConfiguration]
    #
    ContainerDefinition = ::Struct.new(
      :name,
      :image,
      :repository_credentials,
      :cpu,
      :memory,
      :memory_reservation,
      :links,
      :port_mappings,
      :essential,
      :entry_point,
      :command,
      :environment,
      :environment_files,
      :mount_points,
      :volumes_from,
      :linux_parameters,
      :secrets,
      :depends_on,
      :start_timeout,
      :stop_timeout,
      :hostname,
      :user,
      :working_directory,
      :disable_networking,
      :privileged,
      :readonly_root_filesystem,
      :dns_servers,
      :dns_search_domains,
      :extra_hosts,
      :docker_security_options,
      :interactive,
      :pseudo_terminal,
      :docker_labels,
      :ulimits,
      :log_configuration,
      :health_check,
      :system_controls,
      :resource_requirements,
      :firelens_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.cpu ||= 0
      end
    end

    # <p>The dependencies defined for container startup and shutdown. A container can contain
    # 			multiple dependencies. When a dependency is defined for container startup, for container
    # 			shutdown it is reversed.</p>
    # 		       <p>Your Amazon ECS container instances require at least version 1.26.0 of the container agent
    # 			to use container dependencies. However, we recommend using the latest container agent
    # 			version. For information about checking your agent version and updating to the latest
    # 			version, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html">Updating the Amazon ECS
    # 				Container Agent</a> in the <i>Amazon Elastic Container Service Developer Guide</i>. If you're using
    # 			an Amazon ECS-optimized Linux AMI, your instance needs at least version 1.26.0-1 of the
    # 				<code>ecs-init</code> package. If your container instances are launched from version
    # 				<code>20190301</code> or later, then they contain the required versions of the
    # 			container agent and <code>ecs-init</code>. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html">Amazon ECS-optimized Linux AMI</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # 		       <note>
    # 			         <p>For tasks that use the Fargate launch type, the task or service
    # 				requires the following platforms:</p>
    # 			         <ul>
    #                <li>
    # 					             <p>Linux platform version <code>1.3.0</code> or later.</p>
    # 				           </li>
    #                <li>
    # 					             <p>Windows platform version <code>1.0.0</code> or later.</p>
    # 				           </li>
    #             </ul>
    # 		       </note>
    #
    # @!attribute container_name
    #   <p>The name of a container.</p>
    #
    #   @return [String]
    #
    # @!attribute condition
    #   <p>The dependency condition of the container. The following are the available conditions
    #   			and their behavior:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <code>START</code> - This condition emulates the behavior of links and
    #   					volumes today. It validates that a dependent container is started before
    #   					permitting other containers to start.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>COMPLETE</code> - This condition validates that a dependent
    #   					container runs to completion (exits) before permitting other containers to
    #   					start. This can be useful for nonessential containers that run a script and then
    #   					exit. This condition can't be set on an essential container.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>SUCCESS</code> - This condition is the same as
    #   						<code>COMPLETE</code>, but it also requires that the container exits with a
    #   						<code>zero</code> status. This condition can't be set on an essential
    #   					container.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>HEALTHY</code> - This condition validates that the dependent
    #   					container passes its Docker health check before permitting other containers to
    #   					start. This requires that the dependent container has health checks configured.
    #   					This condition is confirmed only at task startup.</p>
    #   			         </li>
    #            </ul>
    #
    #   Enum, one of: ["START", "COMPLETE", "SUCCESS", "HEALTHY"]
    #
    #   @return [String]
    #
    ContainerDependency = ::Struct.new(
      :container_name,
      :condition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An EC2 instance that's running the Amazon ECS agent and has been registered with a
    # 			cluster.</p>
    #
    # @!attribute container_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the container instance. The ARN contains the <code>arn:aws:ecs</code> namespace, followed by the Region of the container instance, the Amazon Web Services account ID of the container instance owner, the <code>container-instance</code> namespace, and then the container instance ID. For example, <code>arn:aws:ecs:region:aws_account_id:container-instance/container_instance_ID</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_instance_id
    #   <p>The ID of the container instance. For Amazon EC2 instances, this value is the Amazon EC2
    #   			instance ID. For external instances, this value is the Amazon Web Services Systems Manager managed instance ID.</p>
    #
    #   @return [String]
    #
    # @!attribute capacity_provider_name
    #   <p>The capacity provider that's associated with the container instance.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version counter for the container instance. Every time a container instance
    #   			experiences a change that triggers a CloudWatch event, the version counter is
    #   			incremented. If you're replicating your Amazon ECS container instance state with CloudWatch
    #   			Events, you can compare the version of a container instance reported by the Amazon ECS APIs
    #   			with the version reported in CloudWatch Events for the container instance (inside the
    #   				<code>detail</code> object) to verify that the version in your event stream is
    #   			current.</p>
    #
    #   @return [Integer]
    #
    # @!attribute version_info
    #   <p>The version information for the Amazon ECS container agent and Docker daemon running on the
    #   			container instance.</p>
    #
    #   @return [VersionInfo]
    #
    # @!attribute remaining_resources
    #   <p>For CPU and memory resource types, this parameter describes the remaining CPU and
    #   			memory that wasn't already allocated to tasks and is therefore available for new tasks.
    #   			For port resource types, this parameter describes the ports that were reserved by the
    #   			Amazon ECS container agent (at instance registration time) and any task containers that have
    #   			reserved port mappings on the host (with the <code>host</code> or <code>bridge</code>
    #   			network mode). Any port that's not specified here is available for new tasks.</p>
    #
    #   @return [Array<Resource>]
    #
    # @!attribute registered_resources
    #   <p>For CPU and memory resource types, this parameter describes the amount of each
    #   			resource that was available on the container instance when the container agent
    #   			registered it with Amazon ECS. This value represents the total amount of CPU and memory that
    #   			can be allocated on this container instance to tasks. For port resource types, this
    #   			parameter describes the ports that were reserved by the Amazon ECS container agent when it
    #   			registered the container instance with Amazon ECS.</p>
    #
    #   @return [Array<Resource>]
    #
    # @!attribute status
    #   <p>The status of the container instance. The valid values are <code>REGISTERING</code>,
    #   				<code>REGISTRATION_FAILED</code>, <code>ACTIVE</code>, <code>INACTIVE</code>,
    #   				<code>DEREGISTERING</code>, or <code>DRAINING</code>.</p>
    #   		       <p>If your account has opted in to the <code>awsvpcTrunking</code> account setting, then
    #   			any newly registered container instance will transition to a <code>REGISTERING</code>
    #   			status while the trunk elastic network interface is provisioned for the instance. If the
    #   			registration fails, the instance will transition to a <code>REGISTRATION_FAILED</code>
    #   			status. You can describe the container instance and see the reason for failure in the
    #   				<code>statusReason</code> parameter. Once the container instance is terminated, the
    #   			instance transitions to a <code>DEREGISTERING</code> status while the trunk elastic
    #   			network interface is deprovisioned. The instance then transitions to an
    #   				<code>INACTIVE</code> status.</p>
    #   		       <p>The <code>ACTIVE</code> status indicates that the container instance can accept tasks.
    #   			The <code>DRAINING</code> indicates that new tasks aren't placed on the container
    #   			instance and any service tasks running on the container instance are removed if
    #   			possible. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/container-instance-draining.html">Container Instance Draining</a> in the
    #   				<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p>The reason that the container instance reached its current status.</p>
    #
    #   @return [String]
    #
    # @!attribute agent_connected
    #   <p>This parameter returns <code>true</code> if the agent is connected to Amazon ECS.
    #   			Registered instances with an agent that may be unhealthy or stopped return
    #   				<code>false</code>. Only instances connected to an agent can accept placement
    #   			requests.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute running_tasks_count
    #   <p>The number of tasks on the container instance that are in the <code>RUNNING</code>
    #   			status.</p>
    #
    #   @return [Integer]
    #
    # @!attribute pending_tasks_count
    #   <p>The number of tasks on the container instance that are in the <code>PENDING</code>
    #   			status.</p>
    #
    #   @return [Integer]
    #
    # @!attribute agent_update_status
    #   <p>The status of the most recent agent update. If an update wasn't ever requested, this
    #   			value is <code>NULL</code>.</p>
    #
    #   Enum, one of: ["PENDING", "STAGING", "STAGED", "UPDATING", "UPDATED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>The attributes set for the container instance, either by the Amazon ECS container agent at
    #   			instance registration or manually with the <a>PutAttributes</a>
    #   			operation.</p>
    #
    #   @return [Array<Attribute>]
    #
    # @!attribute registered_at
    #   <p>The Unix timestamp for the time when the container instance was registered.</p>
    #
    #   @return [Time]
    #
    # @!attribute attachments
    #   <p>The resources attached to a container instance, such as elastic network
    #   			interfaces.</p>
    #
    #   @return [Array<Attachment>]
    #
    # @!attribute tags
    #   <p>The metadata that you apply to the container instance to help you categorize and
    #   			organize them. Each tag consists of a key and an optional value. You define both.</p>
    #   		       <p>The following basic restrictions apply to tags:</p>
    #           <ul>
    #               <li>
    #                   <p>Maximum number of tags per resource - 50</p>
    #               </li>
    #               <li>
    #                   <p>For each resource, each tag key must be unique, and each tag key can have only
    #                       one value.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum key length - 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>Maximum value length - 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>If your tagging schema is used across multiple services and resources,
    #                       remember that other services may have restrictions on allowed characters.
    #                       Generally allowed characters are: letters, numbers, and spaces representable in
    #                       UTF-8, and the following characters: + - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                   <p>Tag keys and values are case-sensitive.</p>
    #               </li>
    #               <li>
    #                   <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase
    #                       combination of such as a prefix for either keys or values as it is reserved for
    #                       Amazon Web Services use. You cannot edit or delete tag keys or values with this prefix. Tags with
    #                       this prefix do not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute health_status
    #   <p>An object representing the health status of the container instance.</p>
    #
    #   @return [ContainerInstanceHealthStatus]
    #
    ContainerInstance = ::Struct.new(
      :container_instance_arn,
      :ec2_instance_id,
      :capacity_provider_name,
      :version,
      :version_info,
      :remaining_resources,
      :registered_resources,
      :status,
      :status_reason,
      :agent_connected,
      :running_tasks_count,
      :pending_tasks_count,
      :agent_update_status,
      :attributes,
      :registered_at,
      :attachments,
      :tags,
      :health_status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.version ||= 0
        self.agent_connected ||= false
        self.running_tasks_count ||= 0
        self.pending_tasks_count ||= 0
      end
    end

    # Includes enum constants for ContainerInstanceField
    #
    module ContainerInstanceField
      # No documentation available.
      #
      TAGS = "TAGS"

      # No documentation available.
      #
      CONTAINER_INSTANCE_HEALTH = "CONTAINER_INSTANCE_HEALTH"
    end

    # <p>An object representing the health status of the container instance.</p>
    #
    # @!attribute overall_status
    #   <p>The overall health status of the container instance. This is an aggregate status of
    #   			all container instance health checks.</p>
    #
    #   Enum, one of: ["OK", "IMPAIRED", "INSUFFICIENT_DATA", "INITIALIZING"]
    #
    #   @return [String]
    #
    # @!attribute details
    #   <p>An array of objects representing the details of the container instance health
    #   			status.</p>
    #
    #   @return [Array<InstanceHealthCheckResult>]
    #
    ContainerInstanceHealthStatus = ::Struct.new(
      :overall_status,
      :details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ContainerInstanceStatus
    #
    module ContainerInstanceStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DRAINING = "DRAINING"

      # No documentation available.
      #
      REGISTERING = "REGISTERING"

      # No documentation available.
      #
      DEREGISTERING = "DEREGISTERING"

      # No documentation available.
      #
      REGISTRATION_FAILED = "REGISTRATION_FAILED"
    end

    # <p>The overrides that are sent to a container. An empty container override can be passed
    # 			in. An example of an empty container override is <code>{"containerOverrides": [ ]
    # 				}</code>. If a non-empty container override is specified, the <code>name</code>
    # 			parameter must be included.</p>
    #
    # @!attribute name
    #   <p>The name of the container that receives the override. This parameter is required if
    #   			any override is specified.</p>
    #
    #   @return [String]
    #
    # @!attribute command
    #   <p>The command to send to the container that overrides the default command from the
    #   			Docker image or the task definition. You must also specify a container name.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute environment
    #   <p>The environment variables to send to the container. You can add new environment
    #   			variables, which are added to the container at launch, or you can override the existing
    #   			environment variables from the Docker image or the task definition. You must also
    #   			specify a container name.</p>
    #
    #   @return [Array<KeyValuePair>]
    #
    # @!attribute environment_files
    #   <p>A list of files containing the environment variables to pass to a container, instead
    #   			of the value from the container definition.</p>
    #
    #   @return [Array<EnvironmentFile>]
    #
    # @!attribute cpu
    #   <p>The number of <code>cpu</code> units reserved for the container, instead of the
    #   			default value from the task definition. You must also specify a container name.</p>
    #
    #   @return [Integer]
    #
    # @!attribute memory
    #   <p>The hard limit (in MiB) of memory to present to the container, instead of the default
    #   			value from the task definition. If your container attempts to exceed the memory
    #   			specified here, the container is killed. You must also specify a container name.</p>
    #
    #   @return [Integer]
    #
    # @!attribute memory_reservation
    #   <p>The soft limit (in MiB) of memory to reserve for the container, instead of the default
    #   			value from the task definition. You must also specify a container name.</p>
    #
    #   @return [Integer]
    #
    # @!attribute resource_requirements
    #   <p>The type and amount of a resource to assign to a container, instead of the default
    #   			value from the task definition. The only supported resource is a GPU.</p>
    #
    #   @return [Array<ResourceRequirement>]
    #
    ContainerOverride = ::Struct.new(
      :name,
      :command,
      :environment,
      :environment_files,
      :cpu,
      :memory,
      :memory_reservation,
      :resource_requirements,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that represents a change in state for a container.</p>
    #
    # @!attribute container_name
    #   <p>The name of the container.</p>
    #
    #   @return [String]
    #
    # @!attribute image_digest
    #   <p>The container image SHA 256 digest.</p>
    #
    #   @return [String]
    #
    # @!attribute runtime_id
    #   <p>The ID of the Docker container.</p>
    #
    #   @return [String]
    #
    # @!attribute exit_code
    #   <p>The exit code for the container, if the state change is a result of the container
    #   			exiting.</p>
    #
    #   @return [Integer]
    #
    # @!attribute network_bindings
    #   <p>Any network bindings that are associated with the container.</p>
    #
    #   @return [Array<NetworkBinding>]
    #
    # @!attribute reason
    #   <p>The reason for the state change.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the container.</p>
    #
    #   @return [String]
    #
    ContainerStateChange = ::Struct.new(
      :container_name,
      :image_digest,
      :runtime_id,
      :exit_code,
      :network_bindings,
      :reason,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the capacity provider. Up to 255 characters are allowed. They include
    #   			letters (both upper and lowercase letters), numbers, underscores (_), and hyphens (-).
    #   			The name can't be prefixed with "<code>aws</code>", "<code>ecs</code>", or
    #   				"<code>fargate</code>".</p>
    #
    #   @return [String]
    #
    # @!attribute auto_scaling_group_provider
    #   <p>The details of the Auto Scaling group for the capacity provider.</p>
    #
    #   @return [AutoScalingGroupProvider]
    #
    # @!attribute tags
    #   <p>The metadata that you apply to the capacity provider to categorize and organize them
    #   			more conveniently. Each tag consists of a key and an optional value. You define both of
    #   			them.</p>
    #   		       <p>The following basic restrictions apply to tags:</p>
    #           <ul>
    #               <li>
    #                   <p>Maximum number of tags per resource - 50</p>
    #               </li>
    #               <li>
    #                   <p>For each resource, each tag key must be unique, and each tag key can have only
    #                       one value.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum key length - 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>Maximum value length - 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>If your tagging schema is used across multiple services and resources,
    #                       remember that other services may have restrictions on allowed characters.
    #                       Generally allowed characters are: letters, numbers, and spaces representable in
    #                       UTF-8, and the following characters: + - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                   <p>Tag keys and values are case-sensitive.</p>
    #               </li>
    #               <li>
    #                   <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase
    #                       combination of such as a prefix for either keys or values as it is reserved for
    #                       Amazon Web Services use. You cannot edit or delete tag keys or values with this prefix. Tags with
    #                       this prefix do not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Tag>]
    #
    CreateCapacityProviderInput = ::Struct.new(
      :name,
      :auto_scaling_group_provider,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute capacity_provider
    #   <p>The full description of the new capacity provider.</p>
    #
    #   @return [CapacityProvider]
    #
    CreateCapacityProviderOutput = ::Struct.new(
      :capacity_provider,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of your cluster. If you don't specify a name for your cluster, you create a
    #   			cluster that's named <code>default</code>. Up to 255 letters (uppercase and lowercase), numbers, underscores, and hyphens are allowed. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The metadata that you apply to the cluster to help you categorize and organize them.
    #   			Each tag consists of a key and an optional value. You define both.</p>
    #   		       <p>The following basic restrictions apply to tags:</p>
    #           <ul>
    #               <li>
    #                   <p>Maximum number of tags per resource - 50</p>
    #               </li>
    #               <li>
    #                   <p>For each resource, each tag key must be unique, and each tag key can have only
    #                       one value.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum key length - 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>Maximum value length - 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>If your tagging schema is used across multiple services and resources,
    #                       remember that other services may have restrictions on allowed characters.
    #                       Generally allowed characters are: letters, numbers, and spaces representable in
    #                       UTF-8, and the following characters: + - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                   <p>Tag keys and values are case-sensitive.</p>
    #               </li>
    #               <li>
    #                   <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase
    #                       combination of such as a prefix for either keys or values as it is reserved for
    #                       Amazon Web Services use. You cannot edit or delete tag keys or values with this prefix. Tags with
    #                       this prefix do not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute settings
    #   <p>The setting to use when creating a cluster. This parameter is used to turn on CloudWatch
    #   			Container Insights for a cluster. If this value is specified, it overrides the
    #   				<code>containerInsights</code> value set with <a>PutAccountSetting</a> or
    #   				<a>PutAccountSettingDefault</a>.</p>
    #
    #   @return [Array<ClusterSetting>]
    #
    # @!attribute configuration
    #   <p>The <code>execute</code> command configuration for the cluster.</p>
    #
    #   @return [ClusterConfiguration]
    #
    # @!attribute capacity_providers
    #   <p>The short name of one or more capacity providers to associate with the cluster. A
    #   			capacity provider must be associated with a cluster before it can be included as part of
    #   			the default capacity provider strategy of the cluster or used in a capacity provider
    #   			strategy when calling the <a>CreateService</a> or <a>RunTask</a>
    #   			actions.</p>
    #   		       <p>If specifying a capacity provider that uses an Auto Scaling group, the capacity
    #   			provider must be created but not associated with another cluster. New Auto Scaling group
    #   			capacity providers can be created with the <a>CreateCapacityProvider</a> API
    #   			operation.</p>
    #   		       <p>To use a Fargate capacity provider, specify either the <code>FARGATE</code> or
    #   				<code>FARGATE_SPOT</code> capacity providers. The Fargate capacity providers are
    #   			available to all accounts and only need to be associated with a cluster to be
    #   			used.</p>
    #   		       <p>The <a>PutClusterCapacityProviders</a> API operation is used to update the
    #   			list of available capacity providers for a cluster after the cluster is created.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute default_capacity_provider_strategy
    #   <p>The capacity provider strategy to set as the default for the cluster. After a default
    #   			capacity provider strategy is set for a cluster, when you call the <a>RunTask</a> or <a>CreateService</a> APIs with no capacity
    #   			provider strategy or launch type specified, the default capacity provider strategy for
    #   			the cluster is used.</p>
    #   		       <p>If a default capacity provider strategy isn't defined for a cluster when it was
    #   			created, it can be defined later with the <a>PutClusterCapacityProviders</a>
    #   			API operation.</p>
    #
    #   @return [Array<CapacityProviderStrategyItem>]
    #
    CreateClusterInput = ::Struct.new(
      :cluster_name,
      :tags,
      :settings,
      :configuration,
      :capacity_providers,
      :default_capacity_provider_strategy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The full description of your new cluster.</p>
    #
    #   @return [Cluster]
    #
    CreateClusterOutput = ::Struct.new(
      :cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that you run your service on.
    #   			If you do not specify a cluster, the default cluster is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute service_name
    #   <p>The name of your service. Up to 255 letters (uppercase and lowercase), numbers, underscores, and hyphens are allowed. Service names must be unique within
    #   			a cluster, but you can have similarly named services in multiple clusters within a
    #   			Region or across multiple Regions.</p>
    #
    #   @return [String]
    #
    # @!attribute task_definition
    #   <p>The <code>family</code> and <code>revision</code> (<code>family:revision</code>) or
    #   			full ARN of the task definition to run in your service. If a <code>revision</code>
    #   			isn't specified, the latest <code>ACTIVE</code> revision is used.</p>
    #   		       <p>A task definition must be specified if the service uses either the <code>ECS</code> or
    #   				<code>CODE_DEPLOY</code> deployment controllers.</p>
    #
    #   @return [String]
    #
    # @!attribute load_balancers
    #   <p>A load balancer object representing the load balancers to use with your service. For
    #   			more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-load-balancing.html">Service Load Balancing</a> in the
    #   				<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #   		       <p>If the service uses the rolling update (<code>ECS</code>) deployment controller and
    #   			using either an Application Load Balancer or Network Load Balancer, you must specify one or more target group ARNs to attach
    #   			to the service. The service-linked role is required for services that use multiple
    #   			target groups. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html">Using service-linked roles for Amazon ECS</a> in the
    #   				<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #   		       <p>If the service uses the <code>CODE_DEPLOY</code> deployment controller, the service is
    #   			required to use either an Application Load Balancer or Network Load Balancer. When creating an CodeDeploy deployment group, you
    #   			specify two target groups (referred to as a <code>targetGroupPair</code>). During a
    #   			deployment, CodeDeploy determines which task set in your service has the status
    #   				<code>PRIMARY</code>, and it associates one target group with it. Then, it also
    #   			associates the other target group with the replacement task set. The load balancer can
    #   			also have up to two listeners: a required listener for production traffic and an
    #   			optional listener that you can use to perform validation tests with Lambda functions
    #   			before routing production traffic to it.</p>
    #   		       <p>If you use the <code>CODE_DEPLOY</code> deployment controller, these values can be changed
    #   			when updating the service.</p>
    #   		       <p>For Application Load Balancers and Network Load Balancers, this object must contain the load balancer target group ARN,
    #   			the container name, and the container port to access from the load balancer. The
    #   			container name must be as it appears in a container definition. The load balancer name
    #   			parameter must be omitted. When a task from this service is placed on a container
    #   			instance, the container instance and port combination is registered as a target in the
    #   			target group that's specified here.</p>
    #   		       <p>For Classic Load Balancers, this object must contain the load balancer name, the container name , and
    #   			the container port to access from the load balancer. The container name must be as it
    #   			appears in a container definition. The target group ARN parameter must be omitted. When
    #   			a task from this service is placed on a container instance, the container instance is
    #   			registered with the load balancer that's specified here.</p>
    #   		       <p>Services with tasks that use the <code>awsvpc</code> network mode (for example, those
    #   			with the Fargate launch type) only support Application Load Balancers and Network Load Balancers. Classic Load Balancers
    #   			aren't supported. Also, when you create any target groups for these services, you must
    #   			choose <code>ip</code> as the target type, not <code>instance</code>. This is because
    #   			tasks that use the <code>awsvpc</code> network mode are associated with an elastic
    #   			network interface, not an Amazon EC2 instance.</p>
    #
    #   @return [Array<LoadBalancer>]
    #
    # @!attribute service_registries
    #   <p>The details of the service discovery registry to associate with this service. For more
    #   			information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html">Service
    #   				discovery</a>.</p>
    #   		       <note>
    #   			         <p>Each service may be associated with one service registry. Multiple service
    #   				registries for each service isn't supported.</p>
    #   		       </note>
    #
    #   @return [Array<ServiceRegistry>]
    #
    # @!attribute desired_count
    #   <p>The number of instantiations of the specified task definition to place and keep
    #   			running on your cluster.</p>
    #   		       <p>This is required if <code>schedulingStrategy</code> is <code>REPLICA</code> or isn't
    #   			specified. If <code>schedulingStrategy</code> is <code>DAEMON</code> then this isn't
    #   			required.</p>
    #
    #   @return [Integer]
    #
    # @!attribute client_token
    #   <p>An identifier that you provide to ensure the idempotency of the request. It must be
    #   			unique and is case sensitive. Up to 32 ASCII characters are allowed.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_type
    #   <p>The infrastructure that you run your service on. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html">Amazon ECS
    #   				launch types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #   		       <p>The <code>FARGATE</code> launch type runs your tasks on Fargate On-Demand
    #   			infrastructure.</p>
    #   		       <note>
    #   			         <p>Fargate Spot infrastructure is available for use but a capacity provider
    #   				strategy must be used. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/userguide/fargate-capacity-providers.html">Fargate capacity providers</a> in the
    #   					<i>Amazon ECS User Guide for Fargate</i>.</p>
    #   		       </note>
    #   		       <p>The <code>EC2</code> launch type runs your tasks on Amazon EC2 instances registered to your
    #   			cluster.</p>
    #   		       <p>The <code>EXTERNAL</code> launch type runs your tasks on your on-premises server or
    #   			virtual machine (VM) capacity registered to your cluster.</p>
    #   		       <p>A service can use either a launch type or a capacity provider strategy. If a
    #   				<code>launchType</code> is specified, the <code>capacityProviderStrategy</code>
    #   			parameter must be omitted.</p>
    #
    #   Enum, one of: ["EC2", "FARGATE", "EXTERNAL"]
    #
    #   @return [String]
    #
    # @!attribute capacity_provider_strategy
    #   <p>The capacity provider strategy to use for the service.</p>
    #   		       <p>If a <code>capacityProviderStrategy</code> is specified, the <code>launchType</code>
    #   			parameter must be omitted. If no <code>capacityProviderStrategy</code> or
    #   				<code>launchType</code> is specified, the
    #   				<code>defaultCapacityProviderStrategy</code> for the cluster is used.</p>
    #   		       <p>A capacity provider strategy may contain a maximum of 6 capacity providers.</p>
    #
    #   @return [Array<CapacityProviderStrategyItem>]
    #
    # @!attribute platform_version
    #   <p>The platform version that your tasks in the service are running on. A platform version
    #   			is specified only for tasks using the Fargate launch type. If one isn't
    #   			specified, the <code>LATEST</code> platform version is used. For more information, see
    #   				<a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html">Fargate platform
    #   				versions</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>The name or full Amazon Resource Name (ARN) of the IAM role that allows Amazon ECS to make calls to your
    #   			load balancer on your behalf. This parameter is only permitted if you are using a load
    #   			balancer with your service and your task definition doesn't use the <code>awsvpc</code>
    #   			network mode. If you specify the <code>role</code> parameter, you must also specify a
    #   			load balancer object with the <code>loadBalancers</code> parameter.</p>
    #   		       <important>
    #   			         <p>If your account has already created the Amazon ECS service-linked role, that role is
    #   				used for your service unless you specify a role here. The service-linked role is
    #   				required if your task definition uses the <code>awsvpc</code> network mode or if the
    #   				service is configured to use service discovery, an external deployment controller,
    #   				multiple target groups, or Elastic Inference accelerators in which case you don't
    #   				specify a role here. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html">Using
    #   					service-linked roles for Amazon ECS</a> in the
    #   					<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #   		       </important>
    #   		       <p>If your specified role has a path other than <code>/</code>, then you must either
    #   			specify the full role ARN (this is recommended) or prefix the role name with the path.
    #   			For example, if a role with the name <code>bar</code> has a path of <code>/foo/</code>
    #   			then you would specify <code>/foo/bar</code> as the role name. For more information, see
    #   				<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html identifiers-friendly-names">Friendly names and paths</a> in the <i>IAM User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_configuration
    #   <p>Optional deployment parameters that control how many tasks run during the deployment
    #   			and the ordering of stopping and starting tasks.</p>
    #
    #   @return [DeploymentConfiguration]
    #
    # @!attribute placement_constraints
    #   <p>An array of placement constraint objects to use for tasks in your service. You can
    #   			specify a maximum of 10 constraints for each task. This limit includes constraints in
    #   			the task definition and those specified at runtime.</p>
    #
    #   @return [Array<PlacementConstraint>]
    #
    # @!attribute placement_strategy
    #   <p>The placement strategy objects to use for tasks in your service. You can specify a
    #   			maximum of 5 strategy rules for each service.</p>
    #
    #   @return [Array<PlacementStrategy>]
    #
    # @!attribute network_configuration
    #   <p>The network configuration for the service. This parameter is required for task
    #   			definitions that use the <code>awsvpc</code> network mode to receive their own elastic
    #   			network interface, and it isn't supported for other network modes. For more information,
    #   			see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html">Task networking</a>
    #   			in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [NetworkConfiguration]
    #
    # @!attribute health_check_grace_period_seconds
    #   <p>The period of time, in seconds, that the Amazon ECS service scheduler ignores unhealthy
    #   			Elastic Load Balancing target health checks after a task has first started. This is only used when your
    #   			service is configured to use a load balancer. If your service has a load balancer
    #   			defined and you don't specify a health check grace period value, the default value of
    #   				<code>0</code> is used.</p>
    #   		       <p>If you do not use an Elastic Load Balancing, we recomend that you use the <code>startPeriod</code> in the task definition healtch check parameters. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_HealthCheck.html">Health check</a>.</p>
    #   		       <p>If your service's tasks take a while to start and respond to Elastic Load Balancing health checks, you
    #   			can specify a health check grace period of up to
    #   			2,147,483,647
    #   			seconds (about 69 years). During that time, the Amazon ECS service
    #   			scheduler ignores health check status. This grace period can prevent the service
    #   			scheduler from marking tasks as unhealthy and stopping them before they have time to
    #   			come up.</p>
    #
    #   @return [Integer]
    #
    # @!attribute scheduling_strategy
    #   <p>The scheduling strategy to use for the service. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html">Services</a>.</p>
    #   		       <p>There are two service scheduler strategies available:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <code>REPLICA</code>-The replica scheduling strategy places and
    #   					maintains the desired number of tasks across your cluster. By default, the
    #   					service scheduler spreads tasks across Availability Zones. You can use task
    #   					placement strategies and constraints to customize task placement decisions. This
    #   					scheduler strategy is required if the service uses the <code>CODE_DEPLOY</code>
    #   					or <code>EXTERNAL</code> deployment controller types.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>DAEMON</code>-The daemon scheduling strategy deploys exactly one
    #   					task on each active container instance that meets all of the task placement
    #   					constraints that you specify in your cluster. The service scheduler also
    #   					evaluates the task placement constraints for running tasks and will stop tasks
    #   					that don't meet the placement constraints. When you're using this strategy, you
    #   					don't need to specify a desired number of tasks, a task placement strategy, or
    #   					use Service Auto Scaling policies.</p>
    #   				           <note>
    #   					             <p>Tasks using the Fargate launch type or the
    #   							<code>CODE_DEPLOY</code> or <code>EXTERNAL</code> deployment controller
    #   						types don't support the <code>DAEMON</code> scheduling strategy.</p>
    #   				           </note>
    #   			         </li>
    #            </ul>
    #
    #   Enum, one of: ["REPLICA", "DAEMON"]
    #
    #   @return [String]
    #
    # @!attribute deployment_controller
    #   <p>The deployment controller to use for the service. If no deployment controller is
    #   			specified, the default value of <code>ECS</code> is used.</p>
    #
    #   @return [DeploymentController]
    #
    # @!attribute tags
    #   <p>The metadata that you apply to the service to help you categorize and organize them.
    #   			Each tag consists of a key and an optional value, both of which you define. When a
    #   			service is deleted, the tags are deleted as well.</p>
    #   		       <p>The following basic restrictions apply to tags:</p>
    #           <ul>
    #               <li>
    #                   <p>Maximum number of tags per resource - 50</p>
    #               </li>
    #               <li>
    #                   <p>For each resource, each tag key must be unique, and each tag key can have only
    #                       one value.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum key length - 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>Maximum value length - 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>If your tagging schema is used across multiple services and resources,
    #                       remember that other services may have restrictions on allowed characters.
    #                       Generally allowed characters are: letters, numbers, and spaces representable in
    #                       UTF-8, and the following characters: + - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                   <p>Tag keys and values are case-sensitive.</p>
    #               </li>
    #               <li>
    #                   <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase
    #                       combination of such as a prefix for either keys or values as it is reserved for
    #                       Amazon Web Services use. You cannot edit or delete tag keys or values with this prefix. Tags with
    #                       this prefix do not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute enable_ecs_managed_tags
    #   <p>Specifies whether to turn on Amazon ECS managed tags for the tasks within the service. For
    #   			more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html">Tagging Your Amazon ECS
    #   				Resources</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute propagate_tags
    #   <p>Specifies whether to propagate the tags from the task definition to the task. If no
    #   			value is specified, the tags aren't propagated. Tags can only be propagated to the task
    #   			during task creation. To add tags to a task after task creation, use the <a>TagResource</a> API action.</p>
    #
    #   Enum, one of: ["TASK_DEFINITION", "SERVICE", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute enable_execute_command
    #   <p>Determines whether the execute command functionality is enabled for the service. If
    #   				<code>true</code>, this enables execute command functionality on all containers in
    #   			the service tasks.</p>
    #
    #   @return [Boolean]
    #
    CreateServiceInput = ::Struct.new(
      :cluster,
      :service_name,
      :task_definition,
      :load_balancers,
      :service_registries,
      :desired_count,
      :client_token,
      :launch_type,
      :capacity_provider_strategy,
      :platform_version,
      :role,
      :deployment_configuration,
      :placement_constraints,
      :placement_strategy,
      :network_configuration,
      :health_check_grace_period_seconds,
      :scheduling_strategy,
      :deployment_controller,
      :tags,
      :enable_ecs_managed_tags,
      :propagate_tags,
      :enable_execute_command,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enable_ecs_managed_tags ||= false
        self.enable_execute_command ||= false
      end
    end

    # @!attribute service
    #   <p>The full description of your service following the create call.</p>
    #   		       <p>A service will return either a <code>capacityProviderStrategy</code> or
    #   				<code>launchType</code> parameter, but not both, depending where one was specified
    #   			when it was created.</p>
    #   		       <p>If a service is using the <code>ECS</code> deployment controller, the
    #   				<code>deploymentController</code> and <code>taskSets</code> parameters will not be
    #   			returned.</p>
    #   		       <p>if the service uses the <code>CODE_DEPLOY</code> deployment controller, the
    #   				<code>deploymentController</code>, <code>taskSets</code> and
    #   				<code>deployments</code> parameters will be returned, however the
    #   				<code>deployments</code> parameter will be an empty list.</p>
    #
    #   @return [Service]
    #
    CreateServiceOutput = ::Struct.new(
      :service,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service
    #   <p>The short name or full Amazon Resource Name (ARN) of the service to create the task set in.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service to create the
    #   			task set in.</p>
    #
    #   @return [String]
    #
    # @!attribute external_id
    #   <p>An optional non-unique tag that identifies this task set in external systems. If the
    #   			task set is associated with a service discovery registry, the tasks in this task set
    #   			will have the <code>ECS_TASK_SET_EXTERNAL_ID</code> Cloud Map attribute set to the provided
    #   			value.</p>
    #
    #   @return [String]
    #
    # @!attribute task_definition
    #   <p>The task definition for the tasks in the task set to use.</p>
    #
    #   @return [String]
    #
    # @!attribute network_configuration
    #   <p>An object representing the network configuration for a task set.</p>
    #
    #   @return [NetworkConfiguration]
    #
    # @!attribute load_balancers
    #   <p>A load balancer object representing the load balancer to use with the task set. The
    #   			supported load balancer types are either an Application Load Balancer or a Network Load Balancer.</p>
    #
    #   @return [Array<LoadBalancer>]
    #
    # @!attribute service_registries
    #   <p>The details of the service discovery registries to assign to this task set. For more
    #   			information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html">Service
    #   				Discovery</a>.</p>
    #
    #   @return [Array<ServiceRegistry>]
    #
    # @!attribute launch_type
    #   <p>The launch type that new tasks in the task set uses. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html">Amazon ECS
    #   				Launch Types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #   		       <p>If a <code>launchType</code> is specified, the <code>capacityProviderStrategy</code>
    #   			parameter must be omitted.</p>
    #
    #   Enum, one of: ["EC2", "FARGATE", "EXTERNAL"]
    #
    #   @return [String]
    #
    # @!attribute capacity_provider_strategy
    #   <p>The capacity provider strategy to use for the task set.</p>
    #   		       <p>A capacity provider strategy consists of one or more capacity providers along with the
    #   				<code>base</code> and <code>weight</code> to assign to them. A capacity provider
    #   			must be associated with the cluster to be used in a capacity provider strategy. The
    #   				<a>PutClusterCapacityProviders</a> API is used to associate a capacity
    #   			provider with a cluster. Only capacity providers with an <code>ACTIVE</code> or
    #   				<code>UPDATING</code> status can be used.</p>
    #   		       <p>If a <code>capacityProviderStrategy</code> is specified, the <code>launchType</code>
    #   			parameter must be omitted. If no <code>capacityProviderStrategy</code> or
    #   				<code>launchType</code> is specified, the
    #   				<code>defaultCapacityProviderStrategy</code> for the cluster is used.</p>
    #   		       <p>If specifying a capacity provider that uses an Auto Scaling group, the capacity
    #   			provider must already be created. New capacity providers can be created with the <a>CreateCapacityProvider</a> API operation.</p>
    #   		       <p>To use a Fargate capacity provider, specify either the <code>FARGATE</code> or
    #   				<code>FARGATE_SPOT</code> capacity providers. The Fargate capacity providers are
    #   			available to all accounts and only need to be associated with a cluster to be
    #   			used.</p>
    #   		       <p>The <a>PutClusterCapacityProviders</a> API operation is used to update the
    #   			list of available capacity providers for a cluster after the cluster is created.</p>
    #
    #   @return [Array<CapacityProviderStrategyItem>]
    #
    # @!attribute platform_version
    #   <p>The platform version that the tasks in the task set uses. A platform version is
    #   			specified only for tasks using the Fargate launch type. If one isn't
    #   			specified, the <code>LATEST</code> platform version is used.</p>
    #
    #   @return [String]
    #
    # @!attribute scale
    #   <p>A floating-point percentage of the desired number of tasks to place and keep running
    #   			in the task set.</p>
    #
    #   @return [Scale]
    #
    # @!attribute client_token
    #   <p>The identifier that you provide to ensure the idempotency of the request. It's case
    #   			sensitive and must be unique. It can be up to 32 ASCII characters are allowed.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The metadata that you apply to the task set to help you categorize and organize them.
    #   			Each tag consists of a key and an optional value. You define both. When a service is
    #   			deleted, the tags are deleted.</p>
    #   		       <p>The following basic restrictions apply to tags:</p>
    #           <ul>
    #               <li>
    #                   <p>Maximum number of tags per resource - 50</p>
    #               </li>
    #               <li>
    #                   <p>For each resource, each tag key must be unique, and each tag key can have only
    #                       one value.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum key length - 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>Maximum value length - 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>If your tagging schema is used across multiple services and resources,
    #                       remember that other services may have restrictions on allowed characters.
    #                       Generally allowed characters are: letters, numbers, and spaces representable in
    #                       UTF-8, and the following characters: + - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                   <p>Tag keys and values are case-sensitive.</p>
    #               </li>
    #               <li>
    #                   <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase
    #                       combination of such as a prefix for either keys or values as it is reserved for
    #                       Amazon Web Services use. You cannot edit or delete tag keys or values with this prefix. Tags with
    #                       this prefix do not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Tag>]
    #
    CreateTaskSetInput = ::Struct.new(
      :service,
      :cluster,
      :external_id,
      :task_definition,
      :network_configuration,
      :load_balancers,
      :service_registries,
      :launch_type,
      :capacity_provider_strategy,
      :platform_version,
      :scale,
      :client_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_set
    #   <p>Information about a set of Amazon ECS tasks in either an CodeDeploy or an
    #   				<code>EXTERNAL</code> deployment. A task set includes details such as the desired
    #   			number of tasks, how many tasks are running, and whether the task set serves production
    #   			traffic.</p>
    #
    #   @return [TaskSet]
    #
    CreateTaskSetOutput = ::Struct.new(
      :task_set,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The resource name to disable the account setting for. If
    #   				<code>serviceLongArnFormat</code> is specified, the ARN for your Amazon ECS services is
    #   			affected. If <code>taskLongArnFormat</code> is specified, the ARN and resource ID for
    #   			your Amazon ECS tasks is affected. If <code>containerInstanceLongArnFormat</code> is
    #   			specified, the ARN and resource ID for your Amazon ECS container instances is affected. If
    #   				<code>awsvpcTrunking</code> is specified, the ENI limit for your Amazon ECS container
    #   			instances is affected.</p>
    #
    #   Enum, one of: ["serviceLongArnFormat", "taskLongArnFormat", "containerInstanceLongArnFormat", "awsvpcTrunking", "containerInsights"]
    #
    #   @return [String]
    #
    # @!attribute principal_arn
    #   <p>The Amazon Resource Name (ARN) of the principal. It can be an IAM user, IAM role, or
    #   			the root user. If you specify the root user, it disables the account setting for all IAM
    #   			users, IAM roles, and the root user of the account unless an IAM user or role explicitly
    #   			overrides these settings. If this field is omitted, the setting is changed only for the
    #   			authenticated user.</p>
    #
    #   @return [String]
    #
    DeleteAccountSettingInput = ::Struct.new(
      :name,
      :principal_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute setting
    #   <p>The account setting for the specified principal ARN.</p>
    #
    #   @return [Setting]
    #
    DeleteAccountSettingOutput = ::Struct.new(
      :setting,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that contains the resource to delete
    #   			attributes. If you do not specify a cluster, the default cluster is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>The attributes to delete from your resource. You can specify up to 10 attributes for
    #   			each request. For custom attributes, specify the attribute name and target ID, but don't
    #   			specify the value. If you specify the target ID using the short form, you must also
    #   			specify the target type.</p>
    #
    #   @return [Array<Attribute>]
    #
    DeleteAttributesInput = ::Struct.new(
      :cluster,
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attributes
    #   <p>A list of attribute objects that were successfully deleted from your resource.</p>
    #
    #   @return [Array<Attribute>]
    #
    DeleteAttributesOutput = ::Struct.new(
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute capacity_provider
    #   <p>The short name or full Amazon Resource Name (ARN) of the capacity provider to delete.</p>
    #
    #   @return [String]
    #
    DeleteCapacityProviderInput = ::Struct.new(
      :capacity_provider,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute capacity_provider
    #   <p>The details of the capacity provider.</p>
    #
    #   @return [CapacityProvider]
    #
    DeleteCapacityProviderOutput = ::Struct.new(
      :capacity_provider,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster to delete.</p>
    #
    #   @return [String]
    #
    DeleteClusterInput = ::Struct.new(
      :cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The full description of the deleted cluster.</p>
    #
    #   @return [Cluster]
    #
    DeleteClusterOutput = ::Struct.new(
      :cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service to delete.
    #   			If you do not specify a cluster, the default cluster is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute service
    #   <p>The name of the service to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute force
    #   <p>If <code>true</code>, allows you to delete a service even if it wasn't scaled down to
    #   			zero tasks. It's only necessary to use this if the service uses the <code>REPLICA</code>
    #   			scheduling strategy.</p>
    #
    #   @return [Boolean]
    #
    DeleteServiceInput = ::Struct.new(
      :cluster,
      :service,
      :force,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service
    #   <p>The full description of the deleted service.</p>
    #
    #   @return [Service]
    #
    DeleteServiceOutput = ::Struct.new(
      :service,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service that the task
    #   			set found in to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute service
    #   <p>The short name or full Amazon Resource Name (ARN) of the service that hosts the task set to
    #   			delete.</p>
    #
    #   @return [String]
    #
    # @!attribute task_set
    #   <p>The task set ID or full Amazon Resource Name (ARN) of the task set to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute force
    #   <p>If <code>true</code>, you can delete a task set even if it hasn't been scaled down to
    #   			zero.</p>
    #
    #   @return [Boolean]
    #
    DeleteTaskSetInput = ::Struct.new(
      :cluster,
      :service,
      :task_set,
      :force,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_set
    #   <p>Details about the task set.</p>
    #
    #   @return [TaskSet]
    #
    DeleteTaskSetOutput = ::Struct.new(
      :task_set,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of an Amazon ECS service deployment. This is used only when a service uses the
    # 				<code>ECS</code> deployment controller type.</p>
    #
    # @!attribute id
    #   <p>The ID of the deployment.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the deployment. The following describes each state.</p>
    #   		       <dl>
    #               <dt>PRIMARY</dt>
    #               <dd>
    #   					          <p>The most recent deployment of a service.</p>
    #   				        </dd>
    #               <dt>ACTIVE</dt>
    #               <dd>
    #   					          <p>A service deployment that still has running tasks, but are in the process
    #   						of being replaced with a new <code>PRIMARY</code> deployment.</p>
    #   				        </dd>
    #               <dt>INACTIVE</dt>
    #               <dd>
    #   					          <p>A deployment that has been completely replaced.</p>
    #   				        </dd>
    #            </dl>
    #
    #   @return [String]
    #
    # @!attribute task_definition
    #   <p>The most recent task definition that was specified for the tasks in the service to
    #   			use.</p>
    #
    #   @return [String]
    #
    # @!attribute desired_count
    #   <p>The most recent desired count of tasks that was specified for the service to deploy or
    #   			maintain.</p>
    #
    #   @return [Integer]
    #
    # @!attribute pending_count
    #   <p>The number of tasks in the deployment that are in the <code>PENDING</code>
    #   			status.</p>
    #
    #   @return [Integer]
    #
    # @!attribute running_count
    #   <p>The number of tasks in the deployment that are in the <code>RUNNING</code>
    #   			status.</p>
    #
    #   @return [Integer]
    #
    # @!attribute failed_tasks
    #   <p>The number of consecutively failed tasks in the deployment. A task is considered a
    #   			failure if the service scheduler can't launch the task, the task doesn't transition to a
    #   				<code>RUNNING</code> state, or if it fails any of its defined health checks and is
    #   			stopped.</p>
    #   		       <note>
    #   			         <p>Once a service deployment has one or more successfully running tasks, the failed
    #   				task count resets to zero and stops being evaluated.</p>
    #   		       </note>
    #
    #   @return [Integer]
    #
    # @!attribute created_at
    #   <p>The Unix timestamp for the time when the service deployment was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_at
    #   <p>The Unix timestamp for the time when the service deployment was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute capacity_provider_strategy
    #   <p>The capacity provider strategy that the deployment is using.</p>
    #
    #   @return [Array<CapacityProviderStrategyItem>]
    #
    # @!attribute launch_type
    #   <p>The launch type the tasks in the service are using. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html">Amazon ECS
    #   				Launch Types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   Enum, one of: ["EC2", "FARGATE", "EXTERNAL"]
    #
    #   @return [String]
    #
    # @!attribute platform_version
    #   <p>The platform version that your tasks in the service run on. A platform version is only
    #   			specified for tasks using the Fargate launch type. If one isn't specified,
    #   			the <code>LATEST</code> platform version is used. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html">Fargate Platform Versions</a> in the
    #   			<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute platform_family
    #   <p>The operating system that your tasks in the service, or tasks are running on. A
    #   			platform family is specified only for tasks using the Fargate launch type. </p>
    #   		       <p> All tasks that run as part of this service must use the same
    #   				<code>platformFamily</code> value as the service, for example, <code>
    #   			LINUX.</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute network_configuration
    #   <p>The VPC subnet and security group configuration for tasks that receive their own
    #               elastic network interface by using the <code>awsvpc</code> networking mode.</p>
    #
    #   @return [NetworkConfiguration]
    #
    # @!attribute rollout_state
    #   <note>
    #   			         <p>The <code>rolloutState</code> of a service is only returned for services that use
    #   				the rolling update (<code>ECS</code>) deployment type that aren't behind a
    #   				Classic Load Balancer.</p>
    #   		       </note>
    #   		       <p>The rollout state of the deployment. When a service deployment is started, it begins
    #   			in an <code>IN_PROGRESS</code> state. When the service reaches a steady state, the
    #   			deployment transitions to a <code>COMPLETED</code> state. If the service fails to reach
    #   			a steady state and circuit breaker is enabled, the deployment transitions to a
    #   				<code>FAILED</code> state. A deployment in <code>FAILED</code> state doesn't launch
    #   			any new tasks. For more information, see <a>DeploymentCircuitBreaker</a>.</p>
    #
    #   Enum, one of: ["COMPLETED", "FAILED", "IN_PROGRESS"]
    #
    #   @return [String]
    #
    # @!attribute rollout_state_reason
    #   <p>A description of the rollout state of a deployment.</p>
    #
    #   @return [String]
    #
    Deployment = ::Struct.new(
      :id,
      :status,
      :task_definition,
      :desired_count,
      :pending_count,
      :running_count,
      :failed_tasks,
      :created_at,
      :updated_at,
      :capacity_provider_strategy,
      :launch_type,
      :platform_version,
      :platform_family,
      :network_configuration,
      :rollout_state,
      :rollout_state_reason,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.desired_count ||= 0
        self.pending_count ||= 0
        self.running_count ||= 0
        self.failed_tasks ||= 0
      end
    end

    # <note>
    # 			         <p>The deployment circuit breaker can only be used for services using the rolling
    # 				update (<code>ECS</code>) deployment type that aren't behind a Classic Load Balancer.</p>
    # 		       </note>
    # 		       <p>The <b>deployment circuit breaker</b> determines whether a
    # 			service deployment will fail if the service can't reach a steady state. If enabled, a
    # 			service deployment will transition to a failed state and stop launching new tasks. You
    # 			can also configure Amazon ECS to roll back your service to the last completed deployment after a
    # 			failure. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-type-ecs.html">Rolling
    # 				update</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @!attribute enable
    #   <p>Determines whether to use the deployment circuit breaker logic for the
    #   			service.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute rollback
    #   <p>Determines whether to configure Amazon ECS to roll back the service if a service deployment
    #   			fails. If rollback is enabled, when a service deployment fails, the service is rolled
    #   			back to the last deployment that completed successfully.</p>
    #
    #   @return [Boolean]
    #
    DeploymentCircuitBreaker = ::Struct.new(
      :enable,
      :rollback,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enable ||= false
        self.rollback ||= false
      end
    end

    # <p>Optional deployment parameters that control how many tasks run during a deployment and
    # 			the ordering of stopping and starting tasks.</p>
    #
    # @!attribute deployment_circuit_breaker
    #   <note>
    #   			         <p>The deployment circuit breaker can only be used for services using the rolling
    #   				update (<code>ECS</code>) deployment type.</p>
    #   		       </note>
    #   		       <p>The <b>deployment circuit breaker</b> determines whether a
    #   			service deployment will fail if the service can't reach a steady state. If deployment
    #   			circuit breaker is enabled, a service deployment will transition to a failed state and
    #   			stop launching new tasks. If rollback is enabled, when a service deployment fails, the
    #   			service is rolled back to the last deployment that completed successfully.</p>
    #
    #   @return [DeploymentCircuitBreaker]
    #
    # @!attribute maximum_percent
    #   <p>If a service is using the rolling update (<code>ECS</code>) deployment type, the
    #   				<b>maximum percent</b> parameter represents an upper limit
    #   			on the number of tasks in a service that are allowed in the <code>RUNNING</code> or
    #   				<code>PENDING</code> state during a deployment, as a percentage of the desired
    #   			number of tasks (rounded down to the nearest integer), and while any container instances
    #   			are in the <code>DRAINING</code> state if the service contains tasks using the
    #   			EC2 launch type. This parameter enables you to define the deployment batch
    #   			size. For example, if your service has a desired number of four tasks and a maximum
    #   			percent value of 200%, the scheduler may start four new tasks before stopping the four
    #   			older tasks (provided that the cluster resources required to do this are available). The
    #   			default value for maximum percent is 200%.</p>
    #   		       <p>If a service is using the blue/green (<code>CODE_DEPLOY</code>) or
    #   				<code>EXTERNAL</code> deployment types and tasks that use the EC2
    #   			launch type, the <b>maximum percent</b> value is set to the
    #   			default value and is used to define the upper limit on the number of the tasks in the
    #   			service that remain in the <code>RUNNING</code> state while the container instances are
    #   			in the <code>DRAINING</code> state. If the tasks in the service use the
    #   			Fargate launch type, the maximum percent value is not used, although it is
    #   			returned when describing your service.</p>
    #
    #   @return [Integer]
    #
    # @!attribute minimum_healthy_percent
    #   <p>If a service is using the rolling update (<code>ECS</code>) deployment type, the
    #   				<b>minimum healthy percent</b> represents a lower limit on
    #   			the number of tasks in a service that must remain in the <code>RUNNING</code> state
    #   			during a deployment, as a percentage of the desired number of tasks (rounded up to the
    #   			nearest integer), and while any container instances are in the <code>DRAINING</code>
    #   			state if the service contains tasks using the EC2 launch type. This
    #   			parameter enables you to deploy without using additional cluster capacity. For example,
    #   			if your service has a desired number of four tasks and a minimum healthy percent of 50%,
    #   			the scheduler may stop two existing tasks to free up cluster capacity before starting
    #   			two new tasks. Tasks for services that <i>do not</i> use a load balancer
    #   			are considered healthy if they're in the <code>RUNNING</code> state; tasks for services
    #   			that <i>do</i> use a load balancer are considered healthy if they're in
    #   			the <code>RUNNING</code> state and they're reported as healthy by the load balancer. The
    #   			default value for minimum healthy percent is 100%.</p>
    #   		       <p>If a service is using the blue/green (<code>CODE_DEPLOY</code>) or
    #   				<code>EXTERNAL</code> deployment types and tasks that use the EC2
    #   			launch type, the <b>minimum healthy percent</b> value is set
    #   			to the default value and is used to define the lower limit on the number of the tasks in
    #   			the service that remain in the <code>RUNNING</code> state while the container instances
    #   			are in the <code>DRAINING</code> state. If the tasks in the service use the
    #   			Fargate launch type, the minimum healthy percent value is not used,
    #   			although it is returned when describing your service.</p>
    #
    #   @return [Integer]
    #
    DeploymentConfiguration = ::Struct.new(
      :deployment_circuit_breaker,
      :maximum_percent,
      :minimum_healthy_percent,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The deployment controller to use for the service. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html">Amazon ECS Deployment Types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @!attribute type
    #   <p>The deployment controller type to use.</p>
    #   		       <p>There are three deployment controller types available:</p>
    #   		       <dl>
    #               <dt>ECS</dt>
    #               <dd>
    #   					          <p>The rolling update (<code>ECS</code>) deployment type involves replacing
    #   						the current running version of the container with the latest version. The
    #   						number of containers Amazon ECS adds or removes from the service during a rolling
    #   						update is controlled by adjusting the minimum and maximum number of healthy
    #   						tasks allowed during a service deployment, as specified in the <a>DeploymentConfiguration</a>.</p>
    #   				        </dd>
    #               <dt>CODE_DEPLOY</dt>
    #               <dd>
    #   					          <p>The blue/green (<code>CODE_DEPLOY</code>) deployment type uses the
    #   						blue/green deployment model powered by CodeDeploy, which allows you to verify a
    #   						new deployment of a service before sending production traffic to it.</p>
    #   				        </dd>
    #               <dt>EXTERNAL</dt>
    #               <dd>
    #   					          <p>The external (<code>EXTERNAL</code>) deployment type enables you to use
    #   						any third-party deployment controller for full control over the deployment
    #   						process for an Amazon ECS service.</p>
    #   				        </dd>
    #            </dl>
    #
    #   Enum, one of: ["ECS", "CODE_DEPLOY", "EXTERNAL"]
    #
    #   @return [String]
    #
    DeploymentController = ::Struct.new(
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeploymentControllerType
    #
    module DeploymentControllerType
      # No documentation available.
      #
      ECS = "ECS"

      # No documentation available.
      #
      CODE_DEPLOY = "CODE_DEPLOY"

      # No documentation available.
      #
      EXTERNAL = "EXTERNAL"
    end

    # Includes enum constants for DeploymentRolloutState
    #
    module DeploymentRolloutState
      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"
    end

    # @!attribute cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instance to
    #   			deregister. If you do not specify a cluster, the default cluster is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute container_instance
    #   <p>The container instance ID or full ARN of the container instance to deregister.
    #   			The ARN contains the <code>arn:aws:ecs</code> namespace, followed by the Region of the container instance, the Amazon Web Services account ID of the container instance owner, the <code>container-instance</code> namespace, and then the container instance ID. For example, <code>arn:aws:ecs:region:aws_account_id:container-instance/container_instance_ID</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute force
    #   <p>Forces the container instance to be deregistered. If you have tasks running on the
    #   			container instance when you deregister it with the <code>force</code> option, these
    #   			tasks remain running until you terminate the instance or the tasks stop through some
    #   			other means, but they're orphaned (no longer monitored or accounted for by Amazon ECS). If an
    #   			orphaned task on your container instance is part of an Amazon ECS service, then the service
    #   			scheduler starts another copy of that task, on a different container instance if
    #   			possible. </p>
    #   		       <p>Any containers in orphaned service tasks that are registered with a Classic Load Balancer or an Application Load Balancer
    #   			target group are deregistered. They begin connection draining according to the settings
    #   			on the load balancer or target group.</p>
    #
    #   @return [Boolean]
    #
    DeregisterContainerInstanceInput = ::Struct.new(
      :cluster,
      :container_instance,
      :force,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute container_instance
    #   <p>The container instance that was deregistered.</p>
    #
    #   @return [ContainerInstance]
    #
    DeregisterContainerInstanceOutput = ::Struct.new(
      :container_instance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_definition
    #   <p>The <code>family</code> and <code>revision</code> (<code>family:revision</code>) or
    #   			full Amazon Resource Name (ARN) of the task definition to deregister. You must specify a
    #   				<code>revision</code>.</p>
    #
    #   @return [String]
    #
    DeregisterTaskDefinitionInput = ::Struct.new(
      :task_definition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_definition
    #   <p>The full description of the deregistered task.</p>
    #
    #   @return [TaskDefinition]
    #
    DeregisterTaskDefinitionOutput = ::Struct.new(
      :task_definition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute capacity_providers
    #   <p>The short name or full Amazon Resource Name (ARN) of one or more capacity providers. Up to
    #   				<code>100</code> capacity providers can be described in an action.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute include
    #   <p>Specifies whether or not you want to see the resource tags for the capacity provider.
    #   			If <code>TAGS</code> is specified, the tags are included in the response. If this field
    #   			is omitted, tags aren't included in the response.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_results
    #   <p>The maximum number of account setting results returned by
    #   				<code>DescribeCapacityProviders</code> in paginated output. When this parameter is
    #   			used, <code>DescribeCapacityProviders</code> only returns <code>maxResults</code>
    #   			results in a single page along with a <code>nextToken</code> response element. The
    #   			remaining results of the initial request can be seen by sending another
    #   				<code>DescribeCapacityProviders</code> request with the returned
    #   				<code>nextToken</code> value. This value can be between
    #   			1 and 10. If this
    #   			parameter is not used, then <code>DescribeCapacityProviders</code> returns up to
    #   			10 results and a <code>nextToken</code> value
    #   			if applicable.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #   				<code>DescribeCapacityProviders</code> request where <code>maxResults</code> was
    #   			used and the results exceeded the value of that parameter. Pagination continues from the
    #   			end of the previous results that returned the <code>nextToken</code> value.</p>
    #   		       <note>
    #               <p>This token should be treated as an opaque identifier that is only used to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #           </note>
    #
    #   @return [String]
    #
    DescribeCapacityProvidersInput = ::Struct.new(
      :capacity_providers,
      :include,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute capacity_providers
    #   <p>The list of capacity providers.</p>
    #
    #   @return [Array<CapacityProvider>]
    #
    # @!attribute failures
    #   <p>Any failures associated with the call.</p>
    #
    #   @return [Array<Failure>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future
    #   				<code>DescribeCapacityProviders</code> request. When the results of a
    #   				<code>DescribeCapacityProviders</code> request exceed <code>maxResults</code>, this
    #   			value can be used to retrieve the next page of results. This value is <code>null</code>
    #   			when there are no more results to return.</p>
    #
    #   @return [String]
    #
    DescribeCapacityProvidersOutput = ::Struct.new(
      :capacity_providers,
      :failures,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute clusters
    #   <p>A list of up to 100 cluster names or full cluster Amazon Resource Name (ARN) entries.
    #   			If you do not specify a cluster, the default cluster is assumed.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute include
    #   <p>Determines whether to include additional information about the clusters in the
    #   			response. If this field is omitted, this information isn't included.</p>
    #   		       <p>If <code>ATTACHMENTS</code> is specified, the attachments for the container instances
    #   			or tasks within the cluster are included.</p>
    #   		       <p>If <code>SETTINGS</code> is specified, the settings for the cluster are
    #   			included.</p>
    #   		       <p>If <code>CONFIGURATIONS</code> is specified, the configuration for the cluster is
    #   			included.</p>
    #   		       <p>If <code>STATISTICS</code> is specified, the task and service count is included,
    #   			separated by launch type.</p>
    #   		       <p>If <code>TAGS</code> is specified, the metadata tags associated with the cluster are
    #   			included.</p>
    #
    #   @return [Array<String>]
    #
    DescribeClustersInput = ::Struct.new(
      :clusters,
      :include,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute clusters
    #   <p>The list of clusters.</p>
    #
    #   @return [Array<Cluster>]
    #
    # @!attribute failures
    #   <p>Any failures associated with the call.</p>
    #
    #   @return [Array<Failure>]
    #
    DescribeClustersOutput = ::Struct.new(
      :clusters,
      :failures,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instances to
    #   			describe. If you do not specify a cluster, the default cluster is assumed. This parameter is required if the container instance
    #   			or container instances you are describing were launched in any cluster other than the
    #   			default cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute container_instances
    #   <p>A list of up to 100 container instance IDs or full Amazon Resource Name (ARN) entries.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute include
    #   <p>Specifies whether you want to see the resource tags for the container instance. If
    #   				<code>TAGS</code> is specified, the tags are included in the response. If
    #   				<code>CONTAINER_INSTANCE_HEALTH</code> is specified, the container instance health
    #   			is included in the response. If this field is omitted, tags and container instance
    #   			health status aren't included in the response.</p>
    #
    #   @return [Array<String>]
    #
    DescribeContainerInstancesInput = ::Struct.new(
      :cluster,
      :container_instances,
      :include,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute container_instances
    #   <p>The list of container instances.</p>
    #
    #   @return [Array<ContainerInstance>]
    #
    # @!attribute failures
    #   <p>Any failures associated with the call.</p>
    #
    #   @return [Array<Failure>]
    #
    DescribeContainerInstancesOutput = ::Struct.new(
      :container_instances,
      :failures,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The short name or full Amazon Resource Name (ARN)the cluster that hosts the service to describe.
    #   			If you do not specify a cluster, the default cluster is assumed. This parameter is required if the service or services you are
    #   			describing were launched in any cluster other than the default cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute services
    #   <p>A list of services to describe. You may specify up to 10 services to describe in a
    #   			single operation.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute include
    #   <p>Determines whether you want to see the resource tags for the service. If
    #   				<code>TAGS</code> is specified, the tags are included in the response. If this field
    #   			is omitted, tags aren't included in the response.</p>
    #
    #   @return [Array<String>]
    #
    DescribeServicesInput = ::Struct.new(
      :cluster,
      :services,
      :include,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute services
    #   <p>The list of services described.</p>
    #
    #   @return [Array<Service>]
    #
    # @!attribute failures
    #   <p>Any failures associated with the call.</p>
    #
    #   @return [Array<Failure>]
    #
    DescribeServicesOutput = ::Struct.new(
      :services,
      :failures,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_definition
    #   <p>The <code>family</code> for the latest <code>ACTIVE</code> revision,
    #   				<code>family</code> and <code>revision</code> (<code>family:revision</code>) for a
    #   			specific revision in the family, or full Amazon Resource Name (ARN) of the task definition to
    #   			describe.</p>
    #
    #   @return [String]
    #
    # @!attribute include
    #   <p>Determines whether to see the resource tags for the task definition. If
    #   				<code>TAGS</code> is specified, the tags are included in the response. If this field
    #   			is omitted, tags aren't included in the response.</p>
    #
    #   @return [Array<String>]
    #
    DescribeTaskDefinitionInput = ::Struct.new(
      :task_definition,
      :include,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_definition
    #   <p>The full task definition description.</p>
    #
    #   @return [TaskDefinition]
    #
    # @!attribute tags
    #   <p>The metadata that's applied to the task definition to help you categorize and organize
    #   			them. Each tag consists of a key and an optional value. You define both.</p>
    #   		       <p>The following basic restrictions apply to tags:</p>
    #           <ul>
    #               <li>
    #                   <p>Maximum number of tags per resource - 50</p>
    #               </li>
    #               <li>
    #                   <p>For each resource, each tag key must be unique, and each tag key can have only
    #                       one value.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum key length - 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>Maximum value length - 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>If your tagging schema is used across multiple services and resources,
    #                       remember that other services may have restrictions on allowed characters.
    #                       Generally allowed characters are: letters, numbers, and spaces representable in
    #                       UTF-8, and the following characters: + - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                   <p>Tag keys and values are case-sensitive.</p>
    #               </li>
    #               <li>
    #                   <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase
    #                       combination of such as a prefix for either keys or values as it is reserved for
    #                       Amazon Web Services use. You cannot edit or delete tag keys or values with this prefix. Tags with
    #                       this prefix do not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Tag>]
    #
    DescribeTaskDefinitionOutput = ::Struct.new(
      :task_definition,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service that the task
    #   			sets exist in.</p>
    #
    #   @return [String]
    #
    # @!attribute service
    #   <p>The short name or full Amazon Resource Name (ARN) of the service that the task sets exist in.</p>
    #
    #   @return [String]
    #
    # @!attribute task_sets
    #   <p>The ID or full Amazon Resource Name (ARN) of task sets to
    #   			describe.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute include
    #   <p>Specifies whether to see the resource tags for the task set. If <code>TAGS</code> is
    #   			specified, the tags are included in the response. If this field is omitted, tags aren't
    #   			included in the response.</p>
    #
    #   @return [Array<String>]
    #
    DescribeTaskSetsInput = ::Struct.new(
      :cluster,
      :service,
      :task_sets,
      :include,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_sets
    #   <p>The list of task sets described.</p>
    #
    #   @return [Array<TaskSet>]
    #
    # @!attribute failures
    #   <p>Any failures associated with the call.</p>
    #
    #   @return [Array<Failure>]
    #
    DescribeTaskSetsOutput = ::Struct.new(
      :task_sets,
      :failures,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the task or tasks to
    #   			describe. If you do not specify a cluster, the default cluster is assumed. This parameter is required if the task or tasks you
    #   			are describing were launched in any cluster other than the default cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute tasks
    #   <p>A list of up to 100 task IDs or full ARN entries.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute include
    #   <p>Specifies whether you want to see the resource tags for the task. If <code>TAGS</code>
    #   			is specified, the tags are included in the response. If this field is omitted, tags
    #   			aren't included in the response.</p>
    #
    #   @return [Array<String>]
    #
    DescribeTasksInput = ::Struct.new(
      :cluster,
      :tasks,
      :include,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tasks
    #   <p>The list of tasks.</p>
    #
    #   @return [Array<Task>]
    #
    # @!attribute failures
    #   <p>Any failures associated with the call.</p>
    #
    #   @return [Array<Failure>]
    #
    DescribeTasksOutput = ::Struct.new(
      :tasks,
      :failures,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DesiredStatus
    #
    module DesiredStatus
      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      STOPPED = "STOPPED"
    end

    # <p>An object representing a container instance host device.</p>
    #
    # @!attribute host_path
    #   <p>The path for the device on the host container instance.</p>
    #
    #   @return [String]
    #
    # @!attribute container_path
    #   <p>The path inside the container at which to expose the host device.</p>
    #
    #   @return [String]
    #
    # @!attribute permissions
    #   <p>The explicit permissions to provide to the container for the device. By default, the
    #   			container has permissions for <code>read</code>, <code>write</code>, and
    #   				<code>mknod</code> for the device.</p>
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
      READ = "read"

      # No documentation available.
      #
      WRITE = "write"

      # No documentation available.
      #
      MKNOD = "mknod"
    end

    # @!attribute container_instance
    #   <p>The container instance ID or full ARN of the container instance.
    #   			The ARN contains the <code>arn:aws:ecs</code> namespace, followed by the Region of the container instance, the Amazon Web Services account ID of the container instance owner, the <code>container-instance</code> namespace, and then the container instance ID. For example, <code>arn:aws:ecs:region:aws_account_id:container-instance/container_instance_ID</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that the container instance belongs
    #   			to.</p>
    #
    #   @return [String]
    #
    DiscoverPollEndpointInput = ::Struct.new(
      :container_instance,
      :cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint
    #   <p>The endpoint for the Amazon ECS agent to poll.</p>
    #
    #   @return [String]
    #
    # @!attribute telemetry_endpoint
    #   <p>The telemetry endpoint for the Amazon ECS agent.</p>
    #
    #   @return [String]
    #
    DiscoverPollEndpointOutput = ::Struct.new(
      :endpoint,
      :telemetry_endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This parameter is specified when you're using Docker volumes. Docker volumes are only
    # 			supported when you're using the EC2 launch type. Windows containers only
    # 			support the use of the <code>local</code> driver. To use bind mounts, specify a
    # 				<code>host</code> instead.</p>
    #
    # @!attribute scope
    #   <p>The scope for the Docker volume that determines its lifecycle. Docker volumes that are
    #   			scoped to a <code>task</code> are automatically provisioned when the task starts and
    #   			destroyed when the task stops. Docker volumes that are scoped as <code>shared</code>
    #   			persist after the task stops.</p>
    #
    #   Enum, one of: ["task", "shared"]
    #
    #   @return [String]
    #
    # @!attribute autoprovision
    #   <p>If this value is <code>true</code>, the Docker volume is created if it doesn't already
    #   			exist.</p>
    #   		       <note>
    #   			         <p>This field is only used if the <code>scope</code> is <code>shared</code>.</p>
    #   		       </note>
    #
    #   @return [Boolean]
    #
    # @!attribute driver
    #   <p>The Docker volume driver to use. The driver value must match the driver name provided
    #   			by Docker because it is used for task placement. If the driver was installed using the
    #   			Docker plugin CLI, use <code>docker plugin ls</code> to retrieve the driver name from
    #   			your container instance. If the driver was installed using another method, use Docker
    #   			plugin discovery to retrieve the driver name. For more information, see <a href="https://docs.docker.com/engine/extend/plugin_api/ plugin-discovery">Docker
    #   				plugin discovery</a>. This parameter maps to <code>Driver</code> in the
    #   			<a href="https://docs.docker.com/engine/api/v1.35/ operation/VolumeCreate">Create a volume</a> section of the <a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the
    #   				<code>xxdriver</code> option to <a href="https://docs.docker.com/engine/reference/commandline/volume_create/">docker
    #   				volume create</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute driver_opts
    #   <p>A map of Docker driver-specific options passed through. This parameter maps to
    #   				<code>DriverOpts</code> in the <a href="https://docs.docker.com/engine/api/v1.35/ operation/VolumeCreate">Create a volume</a> section of the
    #   			<a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the <code>xxopt</code> option to <a href="https://docs.docker.com/engine/reference/commandline/volume_create/">docker
    #   				volume create</a>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute labels
    #   <p>Custom metadata to add to your Docker volume. This parameter maps to
    #   				<code>Labels</code> in the <a href="https://docs.docker.com/engine/api/v1.35/ operation/VolumeCreate">Create a volume</a> section of the
    #   			<a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the <code>xxlabel</code> option to <a href="https://docs.docker.com/engine/reference/commandline/volume_create/">docker
    #   				volume create</a>.</p>
    #
    #   @return [Hash<String, String>]
    #
    DockerVolumeConfiguration = ::Struct.new(
      :scope,
      :autoprovision,
      :driver,
      :driver_opts,
      :labels,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The authorization configuration details for the Amazon EFS file system.</p>
    #
    # @!attribute access_point_id
    #   <p>The Amazon EFS access point ID to use. If an access point is specified, the root directory
    #   			value specified in the <code>EFSVolumeConfiguration</code> must either be omitted or set
    #   			to <code>/</code> which will enforce the path set on the EFS access point. If an access
    #   			point is used, transit encryption must be enabled in the
    #   				<code>EFSVolumeConfiguration</code>. For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/efs-access-points.html">Working with Amazon
    #   				EFS Access Points</a> in the <i>Amazon Elastic File System User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute iam
    #   <p>Determines whether to use the Amazon ECS task IAM role defined in a task definition when
    #   			mounting the Amazon EFS file system. If enabled, transit encryption must be enabled in the
    #   				<code>EFSVolumeConfiguration</code>. If this parameter is omitted, the default value
    #   			of <code>DISABLED</code> is used. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/efs-volumes.html efs-volume-accesspoints">Using
    #   				Amazon EFS Access Points</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
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

    # <p>This parameter is specified when you're using an Amazon Elastic File System file system for task
    # 			storage. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/efs-volumes.html">Amazon EFS Volumes</a> in the
    # 				<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @!attribute file_system_id
    #   <p>The Amazon EFS file system ID to use.</p>
    #
    #   @return [String]
    #
    # @!attribute root_directory
    #   <p>The directory within the Amazon EFS file system to mount as the root directory inside the
    #   			host. If this parameter is omitted, the root of the Amazon EFS volume will be used.
    #   			Specifying <code>/</code> will have the same effect as omitting this parameter.</p>
    #   		       <important>
    #   			         <p>If an EFS access point is specified in the <code>authorizationConfig</code>, the
    #   				root directory parameter must either be omitted or set to <code>/</code> which will
    #   				enforce the path set on the EFS access point.</p>
    #   		       </important>
    #
    #   @return [String]
    #
    # @!attribute transit_encryption
    #   <p>Determines whether to use encryption for Amazon EFS data in transit between the Amazon ECS
    #   			host and the Amazon EFS server. Transit encryption must be enabled if Amazon EFS IAM authorization
    #   			is used. If this parameter is omitted, the default value of <code>DISABLED</code> is
    #   			used. For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/encryption-in-transit.html">Encrypting Data in Transit</a> in
    #   			the <i>Amazon Elastic File System User Guide</i>.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute transit_encryption_port
    #   <p>The port to use when sending encrypted data between the Amazon ECS host and the Amazon EFS
    #   			server. If you do not specify a transit encryption port, it will use the port selection
    #   			strategy that the Amazon EFS mount helper uses. For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/efs-mount-helper.html">EFS Mount
    #   				Helper</a> in the <i>Amazon Elastic File System User Guide</i>.</p>
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

    # <p>A list of files containing the environment variables to pass to a container. You can
    # 			specify up to ten environment files. The file must have a <code>.env</code> file
    # 			extension. Each line in an environment file should contain an environment variable in
    # 				<code>VARIABLE=VALUE</code> format. Lines beginning with <code>#</code> are treated
    # 			as comments and are ignored. For more information about the environment variable file
    # 			syntax, see <a href="https://docs.docker.com/compose/env-file/">Declare default
    # 				environment variables in file</a>.</p>
    # 		       <p>If there are environment variables specified using the <code>environment</code>
    # 			parameter in a container definition, they take precedence over the variables contained
    # 			within an environment file. If multiple environment files are specified that contain the
    # 			same variable, they're processed from the top down. We recommend that you use unique
    # 			variable names. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/taskdef-envfiles.html">Specifying environment
    # 				variables</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # 		       <p>This parameter is only supported for tasks hosted on Fargate using the
    # 			following platform versions:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>Linux platform version <code>1.4.0</code> or later.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Windows platform version <code>1.0.0</code> or later.</p>
    # 			         </li>
    #          </ul>
    #
    # @!attribute value
    #   <p>The Amazon Resource Name (ARN) of the Amazon S3 object containing the environment
    #   			variable file.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The file type to use. The only supported value is <code>s3</code>.</p>
    #
    #   Enum, one of: ["s3"]
    #
    #   @return [String]
    #
    EnvironmentFile = ::Struct.new(
      :value,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EnvironmentFileType
    #
    module EnvironmentFileType
      # No documentation available.
      #
      S3 = "s3"
    end

    # <p>The amount of ephemeral storage to allocate for the task. This parameter is used to
    # 			expand the total amount of ephemeral storage available, beyond the default amount, for
    # 			tasks hosted on Fargate. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/userguide/using_data_volumes.html">Fargate task
    # 				storage</a> in the <i>Amazon ECS User Guide for Fargate</i>.</p>
    # 		       <note>
    # 			         <p>This parameter is only supported for tasks hosted on Fargate using Linux
    # 				platform version <code>1.4.0</code> or later. This parameter is not supported for
    # 				Windows containers on Fargate.</p>
    # 		       </note>
    #
    # @!attribute size_in_gi_b
    #   <p>The total amount, in GiB, of ephemeral storage to set for the task. The minimum
    #   			supported value is <code>21</code> GiB and the maximum supported value is
    #   				<code>200</code> GiB.</p>
    #
    #   @return [Integer]
    #
    EphemeralStorage = ::Struct.new(
      :size_in_gi_b,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.size_in_gi_b ||= 0
      end
    end

    # <p>The details of the execute command configuration.</p>
    #
    # @!attribute kms_key_id
    #   <p>Specify an Key Management Service key ID to encrypt the data between the local client
    #   			and the container.</p>
    #
    #   @return [String]
    #
    # @!attribute logging
    #   <p>The log setting to use for redirecting logs for your execute command results. The
    #   			following log settings are available.</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <code>NONE</code>: The execute command session is not logged.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>DEFAULT</code>: The <code>awslogs</code> configuration in the task
    #   					definition is used. If no logging parameter is specified, it defaults to this
    #   					value. If no <code>awslogs</code> log driver is configured in the task
    #   					definition, the output won't be logged.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>OVERRIDE</code>: Specify the logging details as a part of
    #   						<code>logConfiguration</code>. If the <code>OVERRIDE</code> logging option
    #   					is specified, the <code>logConfiguration</code> is required.</p>
    #   			         </li>
    #            </ul>
    #
    #   Enum, one of: ["NONE", "DEFAULT", "OVERRIDE"]
    #
    #   @return [String]
    #
    # @!attribute log_configuration
    #   <p>The log configuration for the results of the execute command actions. The logs can be
    #   			sent to CloudWatch Logs or an Amazon S3 bucket. When <code>logging=OVERRIDE</code> is
    #   			specified, a <code>logConfiguration</code> must be provided.</p>
    #
    #   @return [ExecuteCommandLogConfiguration]
    #
    ExecuteCommandConfiguration = ::Struct.new(
      :kms_key_id,
      :logging,
      :log_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The Amazon Resource Name (ARN) or short name of the cluster the task is running in.
    #   			If you do not specify a cluster, the default cluster is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute container
    #   <p>The name of the container to execute the command on. A container name only needs to be
    #   			specified for tasks containing multiple containers.</p>
    #
    #   @return [String]
    #
    # @!attribute command
    #   <p>The command to run on the container.</p>
    #
    #   @return [String]
    #
    # @!attribute interactive
    #   <p>Use this flag to run your command in interactive mode.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute task
    #   <p>The Amazon Resource Name (ARN) or ID of the task the container is part of.</p>
    #
    #   @return [String]
    #
    ExecuteCommandInput = ::Struct.new(
      :cluster,
      :container,
      :command,
      :interactive,
      :task,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.interactive ||= false
      end
    end

    # <p>The log configuration for the results of the execute command actions. The logs can be
    # 			sent to CloudWatch Logs or an Amazon S3 bucket.</p>
    #
    # @!attribute cloud_watch_log_group_name
    #   <p>The name of the CloudWatch log group to send logs to.</p>
    #   		       <note>
    #   			         <p>The CloudWatch log group must already be created.</p>
    #   		       </note>
    #
    #   @return [String]
    #
    # @!attribute cloud_watch_encryption_enabled
    #   <p>Determines whether to use encryption on the CloudWatch logs. If not specified,
    #   			encryption will be disabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute s3_bucket_name
    #   <p>The name of the S3 bucket to send logs to.</p>
    #   		       <note>
    #   			         <p>The S3 bucket must already be created.</p>
    #   		       </note>
    #
    #   @return [String]
    #
    # @!attribute s3_encryption_enabled
    #   <p>Determines whether to use encryption on the S3 logs. If not specified, encryption is
    #   			not used.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute s3_key_prefix
    #   <p>An optional folder in the S3 bucket to place logs in.</p>
    #
    #   @return [String]
    #
    ExecuteCommandLogConfiguration = ::Struct.new(
      :cloud_watch_log_group_name,
      :cloud_watch_encryption_enabled,
      :s3_bucket_name,
      :s3_encryption_enabled,
      :s3_key_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.cloud_watch_encryption_enabled ||= false
        self.s3_encryption_enabled ||= false
      end
    end

    # Includes enum constants for ExecuteCommandLogging
    #
    module ExecuteCommandLogging
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      DEFAULT = "DEFAULT"

      # No documentation available.
      #
      OVERRIDE = "OVERRIDE"
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute container_arn
    #   <p>The Amazon Resource Name (ARN) of the container.</p>
    #
    #   @return [String]
    #
    # @!attribute container_name
    #   <p>The name of the container.</p>
    #
    #   @return [String]
    #
    # @!attribute interactive
    #   <p>Determines whether the execute command session is running in interactive mode. Amazon ECS
    #   			only supports initiating interactive sessions, so you must specify <code>true</code> for
    #   			this value.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute session
    #   <p>The details of the SSM session that was created for this instance of
    #   			execute-command.</p>
    #
    #   @return [Session]
    #
    # @!attribute task_arn
    #   <p>The Amazon Resource Name (ARN) of the task.</p>
    #
    #   @return [String]
    #
    ExecuteCommandOutput = ::Struct.new(
      :cluster_arn,
      :container_arn,
      :container_name,
      :interactive,
      :session,
      :task_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.interactive ||= false
      end
    end

    # <p>The authorization configuration details for Amazon FSx for Windows File Server file system. See <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_FSxWindowsFileServerVolumeConfiguration.html">FSxWindowsFileServerVolumeConfiguration</a> in the <i>Amazon Elastic
    # 				Container Service API Reference</i>.</p>
    # 		       <p>For more information and the input format, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/wfsx-volumes.html">Amazon FSx for Windows File Server Volumes</a>
    # 			in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @!attribute credentials_parameter
    #   <p>The authorization credential option to use. The authorization credential options can
    #   			be provided using either the Amazon Resource Name (ARN) of an Secrets Manager secret or SSM
    #   			Parameter Store parameter. The ARNs refer to the stored credentials.</p>
    #
    #   @return [String]
    #
    # @!attribute domain
    #   <p>A fully qualified domain name hosted by an <a href="https://docs.aws.amazon.com/directoryservice/latest/admin-guide/directory_microsoft_ad.html">Directory Service</a> Managed Microsoft AD (Active Directory) or self-hosted AD on
    #   			Amazon EC2.</p>
    #
    #   @return [String]
    #
    FSxWindowsFileServerAuthorizationConfig = ::Struct.new(
      :credentials_parameter,
      :domain,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This parameter is specified when you're using <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/what-is.html">Amazon FSx for Windows File Server</a> file system for task
    # 			storage.</p>
    # 		       <p>For more information and the input format, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/wfsx-volumes.html">Amazon FSx for Windows File Server Volumes</a>
    # 			in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @!attribute file_system_id
    #   <p>The Amazon FSx for Windows File Server file system ID to use.</p>
    #
    #   @return [String]
    #
    # @!attribute root_directory
    #   <p>The directory within the Amazon FSx for Windows File Server file system to mount as the root directory
    #   			inside the host.</p>
    #
    #   @return [String]
    #
    # @!attribute authorization_config
    #   <p>The authorization configuration details for the Amazon FSx for Windows File Server file system.</p>
    #
    #   @return [FSxWindowsFileServerAuthorizationConfig]
    #
    FSxWindowsFileServerVolumeConfiguration = ::Struct.new(
      :file_system_id,
      :root_directory,
      :authorization_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A failed resource. For a list of common causes, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/api_failures_messages.html">API failure
    # 				reasons</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the failed resource.</p>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason for the failure.</p>
    #
    #   @return [String]
    #
    # @!attribute detail
    #   <p>The details of the failure.</p>
    #
    #   @return [String]
    #
    Failure = ::Struct.new(
      :arn,
      :reason,
      :detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The FireLens configuration for the container. This is used to specify and configure a
    # 			log router for container logs. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_firelens.html">Custom Log Routing</a>
    # 			in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @!attribute type
    #   <p>The log router to use. The valid values are <code>fluentd</code> or
    #   				<code>fluentbit</code>.</p>
    #
    #   Enum, one of: ["fluentd", "fluentbit"]
    #
    #   @return [String]
    #
    # @!attribute options
    #   <p>The options to use when configuring the log router. This field is optional and can be
    #   			used to specify a custom configuration file or to add additional metadata, such as the
    #   			task, task definition, cluster, and container instance details to the log event. If
    #   			specified, the syntax to use is
    #   				<code>"options":{"enable-ecs-log-metadata":"true|false","config-file-type:"s3|file","config-file-value":"arn:aws:s3:::mybucket/fluent.conf|filepath"}</code>.
    #   			For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_firelens.html firelens-taskdef">Creating
    #   				a Task Definition that Uses a FireLens Configuration</a> in the
    #   				<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #   		       <note>
    #   			         <p>Tasks hosted on Fargate only support the <code>file</code> configuration file
    #   				type.</p>
    #   		       </note>
    #
    #   @return [Hash<String, String>]
    #
    FirelensConfiguration = ::Struct.new(
      :type,
      :options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FirelensConfigurationType
    #
    module FirelensConfigurationType
      # No documentation available.
      #
      FLUENTD = "fluentd"

      # No documentation available.
      #
      FLUENTBIT = "fluentbit"
    end

    # <p>An object representing a container health check. Health check parameters that are
    # 			specified in a container definition override any Docker health checks that exist in the
    # 			container image (such as those specified in a parent image or from the image's
    # 			Dockerfile).</p>
    # 		       <note>
    # 			         <p>The Amazon ECS container agent only monitors and reports on the health
    # 				checks specified in the task definition. Amazon ECS does not monitor
    # 				Docker health checks that are embedded in a container image and not
    # 				specified in the container definition. Health check parameters that
    # 				are specified in a container definition override any Docker health
    # 				checks that exist in the container image.</p>
    # 		       </note>
    # 		       <p>You can view the health status of both individual containers and a task with the
    # 			DescribeTasks API operation or when viewing the task details in the console.</p>
    # 		       <p>The following describes the possible <code>healthStatus</code> values for a
    # 			container:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>
    #                   <code>HEALTHY</code>-The container health check has passed
    # 					successfully.</p>
    # 			         </li>
    #             <li>
    # 				           <p>
    #                   <code>UNHEALTHY</code>-The container health check has failed.</p>
    # 			         </li>
    #             <li>
    # 				           <p>
    #                   <code>UNKNOWN</code>-The container health check is being evaluated or
    # 					there's no container health check defined.</p>
    # 			         </li>
    #          </ul>
    # 		       <p>The following describes the possible <code>healthStatus</code> values for a task. The
    # 			container health check status of nonessential containers do not have an effect on the
    # 			health status of a task.</p>
    # 		       <ul>
    #             <li>
    # 				           <p>
    #                   <code>HEALTHY</code>-All essential containers within the task have
    # 					passed their health checks.</p>
    # 			         </li>
    #             <li>
    # 				           <p>
    #                   <code>UNHEALTHY</code>-One or more essential containers have failed
    # 					their health check.</p>
    # 			         </li>
    #             <li>
    # 				           <p>
    #                   <code>UNKNOWN</code>-The essential containers within the task are still
    # 					having their health checks evaluated or there are no container health checks
    # 					defined.</p>
    # 			         </li>
    #          </ul>
    # 		       <p>If a task is run manually, and not as part of a service, the task will continue its
    # 			lifecycle regardless of its health status. For tasks that are part of a service, if the
    # 			task reports as unhealthy then the task will be stopped and the service scheduler will
    # 			replace it.</p>
    # 		       <p>The following are notes about container health check support:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>Container health checks require version 1.17.0 or greater of the Amazon ECS
    # 					container agent. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html">Updating the
    # 						Amazon ECS Container Agent</a>.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Container health checks are supported for Fargate tasks if
    # 					you're using platform version 1.1.0 or greater. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html">Fargate
    # 						Platform Versions</a>.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Container health checks aren't supported for tasks that are part of a service
    # 					that's configured to use a Classic Load Balancer.</p>
    # 			         </li>
    #          </ul>
    #
    # @!attribute command
    #   <p>A string array representing the command that the container runs to determine if it is
    #   			healthy. The string array must start with <code>CMD</code> to execute the command
    #   			arguments directly, or <code>CMD-SHELL</code> to run the command with the container's
    #   			default shell. </p>
    #   		       <p> When you use the Amazon Web Services Management Console JSON panel, the Command Line Interface, or the APIs, enclose the list
    #   			of commands in brackets.</p>
    #   		       <p>
    #   			         <code>[ "CMD-SHELL", "curl -f http://localhost/ || exit 1" ]</code>
    #   		       </p>
    #   		       <p>You don't need to include the brackets when you use the Amazon Web Services Management Console.</p>
    #   		       <p>
    #   			         <code> "CMD-SHELL", "curl -f http://localhost/ || exit 1" </code>
    #   		       </p>
    #   		       <p>An exit code of 0 indicates success, and non-zero exit code indicates failure. For
    #   			more information, see <code>HealthCheck</code> in the <a href="https://docs.docker.com/engine/api/v1.35/ operation/ContainerCreate">Create a container</a>
    #   			section of the <a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute interval
    #   <p>The time period in seconds between each health check execution. You may specify
    #   			between 5 and 300 seconds. The default value is 30 seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute timeout
    #   <p>The time period in seconds to wait for a health check to succeed before it is
    #   			considered a failure. You may specify between 2 and 60 seconds. The default value is
    #   			5.</p>
    #
    #   @return [Integer]
    #
    # @!attribute retries
    #   <p>The number of times to retry a failed health check before the container is considered
    #   			unhealthy. You may specify between 1 and 10 retries. The default value is 3.</p>
    #
    #   @return [Integer]
    #
    # @!attribute start_period
    #   <p>The optional grace period to provide containers time to bootstrap before failed health
    #   			checks count towards the maximum number of retries. You can specify between 0 and 300
    #   			seconds. By default, the <code>startPeriod</code> is disabled.</p>
    #   		       <note>
    #   			         <p>If a health check succeeds within the <code>startPeriod</code>, then the container
    #   				is considered healthy and any subsequent failures count toward the maximum number of
    #   				retries.</p>
    #   		       </note>
    #
    #   @return [Integer]
    #
    HealthCheck = ::Struct.new(
      :command,
      :interval,
      :timeout,
      :retries,
      :start_period,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for HealthStatus
    #
    module HealthStatus
      # No documentation available.
      #
      HEALTHY = "HEALTHY"

      # No documentation available.
      #
      UNHEALTHY = "UNHEALTHY"

      # No documentation available.
      #
      UNKNOWN = "UNKNOWN"
    end

    # <p>Hostnames and IP address entries that are added to the <code>/etc/hosts</code> file of
    # 			a container via the <code>extraHosts</code> parameter of its <a>ContainerDefinition</a>. </p>
    #
    # @!attribute hostname
    #   <p>The hostname to use in the <code>/etc/hosts</code> entry.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_address
    #   <p>The IP address to use in the <code>/etc/hosts</code> entry.</p>
    #
    #   @return [String]
    #
    HostEntry = ::Struct.new(
      :hostname,
      :ip_address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details on a container instance bind mount host volume.</p>
    #
    # @!attribute source_path
    #   <p>When the <code>host</code> parameter is used, specify a <code>sourcePath</code> to
    #   			declare the path on the host container instance that's presented to the container. If
    #   			this parameter is empty, then the Docker daemon has assigned a host path for you. If the
    #   				<code>host</code> parameter contains a <code>sourcePath</code> file location, then
    #   			the data volume persists at the specified location on the host container instance until
    #   			you delete it manually. If the <code>sourcePath</code> value doesn't exist on the host
    #   			container instance, the Docker daemon creates it. If the location does exist, the
    #   			contents of the source path folder are exported.</p>
    #   		       <p>If you're using the Fargate launch type, the <code>sourcePath</code>
    #   			parameter is not supported.</p>
    #
    #   @return [String]
    #
    HostVolumeProperties = ::Struct.new(
      :source_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details on an Elastic Inference accelerator. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-inference.html">Working with Amazon Elastic Inference on
    # 				Amazon ECS</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @!attribute device_name
    #   <p>The Elastic Inference accelerator device name. The <code>deviceName</code> must also
    #   			be referenced in a container definition as a <a>ResourceRequirement</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute device_type
    #   <p>The Elastic Inference accelerator type to use.</p>
    #
    #   @return [String]
    #
    InferenceAccelerator = ::Struct.new(
      :device_name,
      :device_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details on an Elastic Inference accelerator task override. This parameter is used to
    # 			override the Elastic Inference accelerator specified in the task definition. For more
    # 			information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-inference.html">Working with Amazon
    # 				Elastic Inference on Amazon ECS</a> in the
    # 			<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @!attribute device_name
    #   <p>The Elastic Inference accelerator device name to override for the task. This parameter
    #   			must match a <code>deviceName</code> specified in the task definition.</p>
    #
    #   @return [String]
    #
    # @!attribute device_type
    #   <p>The Elastic Inference accelerator type to use.</p>
    #
    #   @return [String]
    #
    InferenceAcceleratorOverride = ::Struct.new(
      :device_name,
      :device_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing the result of a container instance health status check.</p>
    #
    # @!attribute type
    #   <p>The type of container instance health status that was verified.</p>
    #
    #   Enum, one of: ["CONTAINER_RUNTIME"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The container instance health status.</p>
    #
    #   Enum, one of: ["OK", "IMPAIRED", "INSUFFICIENT_DATA", "INITIALIZING"]
    #
    #   @return [String]
    #
    # @!attribute last_updated
    #   <p>The Unix timestamp for when the container instance health status was last
    #   			updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_status_change
    #   <p>The Unix timestamp for when the container instance health status last changed.</p>
    #
    #   @return [Time]
    #
    InstanceHealthCheckResult = ::Struct.new(
      :type,
      :status,
      :last_updated,
      :last_status_change,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InstanceHealthCheckState
    #
    module InstanceHealthCheckState
      # No documentation available.
      #
      OK = "OK"

      # No documentation available.
      #
      IMPAIRED = "IMPAIRED"

      # No documentation available.
      #
      INSUFFICIENT_DATA = "INSUFFICIENT_DATA"

      # No documentation available.
      #
      INITIALIZING = "INITIALIZING"
    end

    # Includes enum constants for InstanceHealthCheckType
    #
    module InstanceHealthCheckType
      # No documentation available.
      #
      CONTAINER_RUNTIME = "CONTAINER_RUNTIME"
    end

    # <p>The specified parameter isn't valid. Review the available parameters for the API
    # 			request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidParameterException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for IpcMode
    #
    module IpcMode
      # No documentation available.
      #
      HOST = "host"

      # No documentation available.
      #
      TASK = "task"

      # No documentation available.
      #
      NONE = "none"
    end

    # <p>The Linux capabilities for the container that are added to or dropped from the default
    # 			configuration provided by Docker. For more information about the default capabilities
    # 			and the non-default available capabilities, see <a href="https://docs.docker.com/engine/reference/run/#runtime-privilege-and-linux-capabilities">Runtime privilege and Linux capabilities</a> in the <i>Docker run
    # 				reference</i>. For more detailed information about these Linux capabilities,
    # 			see the <a href="http://man7.org/linux/man-pages/man7/capabilities.7.html">capabilities(7)</a> Linux manual page.</p>
    #
    # @!attribute add
    #   <p>The Linux capabilities for the container that have been added to the default
    #   			configuration provided by Docker. This parameter maps to <code>CapAdd</code> in the
    #   			<a href="https://docs.docker.com/engine/api/v1.35/ operation/ContainerCreate">Create a container</a> section of the <a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the
    #   				<code>--cap-add</code> option to <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker
    #   				run</a>.</p>
    #   		       <note>
    #   			         <p>Tasks launched on Fargate only support adding the <code>SYS_PTRACE</code> kernel
    #   				capability.</p>
    #   		       </note>
    #   		       <p>Valid values: <code>"ALL" | "AUDIT_CONTROL" | "AUDIT_WRITE" | "BLOCK_SUSPEND" |
    #   				"CHOWN" | "DAC_OVERRIDE" | "DAC_READ_SEARCH" | "FOWNER" | "FSETID" | "IPC_LOCK" |
    #   				"IPC_OWNER" | "KILL" | "LEASE" | "LINUX_IMMUTABLE" | "MAC_ADMIN" | "MAC_OVERRIDE" |
    #   				"MKNOD" | "NET_ADMIN" | "NET_BIND_SERVICE" | "NET_BROADCAST" | "NET_RAW" | "SETFCAP"
    #   				| "SETGID" | "SETPCAP" | "SETUID" | "SYS_ADMIN" | "SYS_BOOT" | "SYS_CHROOT" |
    #   				"SYS_MODULE" | "SYS_NICE" | "SYS_PACCT" | "SYS_PTRACE" | "SYS_RAWIO" |
    #   				"SYS_RESOURCE" | "SYS_TIME" | "SYS_TTY_CONFIG" | "SYSLOG" |
    #   			"WAKE_ALARM"</code>
    #            </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute drop
    #   <p>The Linux capabilities for the container that have been removed from the default
    #   			configuration provided by Docker. This parameter maps to <code>CapDrop</code> in the
    #   			<a href="https://docs.docker.com/engine/api/v1.35/ operation/ContainerCreate">Create a container</a> section of the <a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the
    #   				<code>--cap-drop</code> option to <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker
    #   				run</a>.</p>
    #   		       <p>Valid values: <code>"ALL" | "AUDIT_CONTROL" | "AUDIT_WRITE" | "BLOCK_SUSPEND" |
    #   				"CHOWN" | "DAC_OVERRIDE" | "DAC_READ_SEARCH" | "FOWNER" | "FSETID" | "IPC_LOCK" |
    #   				"IPC_OWNER" | "KILL" | "LEASE" | "LINUX_IMMUTABLE" | "MAC_ADMIN" | "MAC_OVERRIDE" |
    #   				"MKNOD" | "NET_ADMIN" | "NET_BIND_SERVICE" | "NET_BROADCAST" | "NET_RAW" | "SETFCAP"
    #   				| "SETGID" | "SETPCAP" | "SETUID" | "SYS_ADMIN" | "SYS_BOOT" | "SYS_CHROOT" |
    #   				"SYS_MODULE" | "SYS_NICE" | "SYS_PACCT" | "SYS_PTRACE" | "SYS_RAWIO" |
    #   				"SYS_RESOURCE" | "SYS_TIME" | "SYS_TTY_CONFIG" | "SYSLOG" |
    #   			"WAKE_ALARM"</code>
    #            </p>
    #
    #   @return [Array<String>]
    #
    KernelCapabilities = ::Struct.new(
      :add,
      :drop,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A key-value pair object.</p>
    #
    # @!attribute name
    #   <p>The name of the key-value pair. For environment variables, this is the name of the
    #   			environment variable.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the key-value pair. For environment variables, this is the value of the
    #   			environment variable.</p>
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

    # Includes enum constants for LaunchType
    #
    module LaunchType
      # No documentation available.
      #
      EC2 = "EC2"

      # No documentation available.
      #
      FARGATE = "FARGATE"

      # No documentation available.
      #
      EXTERNAL = "EXTERNAL"
    end

    # <p>The limit for the resource was exceeded.</p>
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

    # <p>Linux-specific options that are applied to the container, such as Linux <a>KernelCapabilities</a>.</p>
    #
    # @!attribute capabilities
    #   <p>The Linux capabilities for the container that are added to or dropped from the default
    #   			configuration provided by Docker.</p>
    #   		       <note>
    #   			         <p>For tasks that use the Fargate launch type,
    #   					<code>capabilities</code> is supported for all platform versions but the
    #   					<code>add</code> parameter is only supported if using platform version 1.4.0 or
    #   				later.</p>
    #   		       </note>
    #
    #   @return [KernelCapabilities]
    #
    # @!attribute devices
    #   <p>Any host devices to expose to the container. This parameter maps to
    #   				<code>Devices</code> in the <a href="https://docs.docker.com/engine/api/v1.35/ operation/ContainerCreate">Create a container</a> section of the
    #   			<a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the <code>--device</code> option to <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker run</a>.</p>
    #   		       <note>
    #   			         <p>If you're using tasks that use the Fargate launch type, the
    #   					<code>devices</code> parameter isn't supported.</p>
    #   		       </note>
    #
    #   @return [Array<Device>]
    #
    # @!attribute init_process_enabled
    #   <p>Run an <code>init</code> process inside the container that forwards signals and reaps
    #   			processes. This parameter maps to the <code>--init</code> option to <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker run</a>. This parameter requires version 1.25 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log in to your container instance and run the following command: <code>sudo docker version --format '{{.Server.APIVersion}}'</code>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute shared_memory_size
    #   <p>The value for the size (in MiB) of the <code>/dev/shm</code> volume. This parameter
    #   			maps to the <code>--shm-size</code> option to <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker
    #   				run</a>.</p>
    #   		       <note>
    #   			         <p>If you are using tasks that use the Fargate launch type, the
    #   					<code>sharedMemorySize</code> parameter is not supported.</p>
    #   		       </note>
    #
    #   @return [Integer]
    #
    # @!attribute tmpfs
    #   <p>The container path, mount options, and size (in MiB) of the tmpfs mount. This
    #   			parameter maps to the <code>--tmpfs</code> option to <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker run</a>.</p>
    #   		       <note>
    #   			         <p>If you're using tasks that use the Fargate launch type, the
    #   					<code>tmpfs</code> parameter isn't supported.</p>
    #   		       </note>
    #
    #   @return [Array<Tmpfs>]
    #
    # @!attribute max_swap
    #   <p>The total amount of swap memory (in MiB) a container can use. This parameter will be
    #   			translated to the <code>--memory-swap</code> option to <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker run</a> where the value would be the sum of
    #   			the container memory plus the <code>maxSwap</code> value.</p>
    #   		       <p>If a <code>maxSwap</code> value of <code>0</code> is specified, the container will not
    #   			use swap. Accepted values are <code>0</code> or any positive integer. If the
    #   				<code>maxSwap</code> parameter is omitted, the container will use the swap
    #   			configuration for the container instance it is running on. A <code>maxSwap</code> value
    #   			must be set for the <code>swappiness</code> parameter to be used.</p>
    #   		       <note>
    #   			         <p>If you're using tasks that use the Fargate launch type, the
    #   					<code>maxSwap</code> parameter isn't supported.</p>
    #   		       </note>
    #
    #   @return [Integer]
    #
    # @!attribute swappiness
    #   <p>This allows you to tune a container's memory swappiness behavior. A
    #   				<code>swappiness</code> value of <code>0</code> will cause swapping to not happen
    #   			unless absolutely necessary. A <code>swappiness</code> value of <code>100</code> will
    #   			cause pages to be swapped very aggressively. Accepted values are whole numbers between
    #   				<code>0</code> and <code>100</code>. If the <code>swappiness</code> parameter is not
    #   			specified, a default value of <code>60</code> is used. If a value is not specified for
    #   				<code>maxSwap</code> then this parameter is ignored. This parameter maps to the
    #   				<code>--memory-swappiness</code> option to <a href="https://docs.docker.com/engine/reference/run/ security-configuration">docker run</a>.</p>
    #   		       <note>
    #   			         <p>If you're using tasks that use the Fargate launch type, the
    #   					<code>swappiness</code> parameter isn't supported.</p>
    #   		       </note>
    #
    #   @return [Integer]
    #
    LinuxParameters = ::Struct.new(
      :capabilities,
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

    # @!attribute name
    #   <p>The name of the account setting you want to list the settings for.</p>
    #
    #   Enum, one of: ["serviceLongArnFormat", "taskLongArnFormat", "containerInstanceLongArnFormat", "awsvpcTrunking", "containerInsights"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the account settings to filter results with. You must also specify an
    #   			account setting name to use this parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute principal_arn
    #   <p>The ARN of the principal, which can be an IAM user, IAM role, or the root user. If
    #   			this field is omitted, the account settings are listed only for the authenticated
    #   			user.</p>
    #   		       <note>
    #   			         <p>Federated users assume the account setting of the root user and can't have
    #   				explicit account settings set for them.</p>
    #   		       </note>
    #
    #   @return [String]
    #
    # @!attribute effective_settings
    #   <p>Determines whether to return the effective settings. If <code>true</code>, the account
    #   			settings for the root user or the default setting for the <code>principalArn</code> are
    #   			returned. If <code>false</code>, the account settings for the <code>principalArn</code>
    #   			are returned if they're set. Otherwise, no account settings are returned.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a <code>ListAccountSettings</code>
    #   			request indicating that more results are available to fulfill the request and further
    #   			calls will be needed. If <code>maxResults</code> was provided, it's possible the number
    #   			of results to be fewer than <code>maxResults</code>.</p>
    #   		       <note>
    #               <p>This token should be treated as an opaque identifier that is only used to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of account setting results returned by
    #   				<code>ListAccountSettings</code> in paginated output. When this parameter is used,
    #   				<code>ListAccountSettings</code> only returns <code>maxResults</code> results in a
    #   			single page along with a <code>nextToken</code> response element. The remaining results
    #   			of the initial request can be seen by sending another <code>ListAccountSettings</code>
    #   			request with the returned <code>nextToken</code> value. This value can be between
    #   			1 and 10. If this
    #   			parameter isn't used, then <code>ListAccountSettings</code> returns up to
    #   			10 results and a <code>nextToken</code> value
    #   			if applicable.</p>
    #
    #   @return [Integer]
    #
    ListAccountSettingsInput = ::Struct.new(
      :name,
      :value,
      :principal_arn,
      :effective_settings,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.effective_settings ||= false
        self.max_results ||= 0
      end
    end

    # @!attribute settings
    #   <p>The account settings for the resource.</p>
    #
    #   @return [Array<Setting>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future
    #   				<code>ListAccountSettings</code> request. When the results of a
    #   				<code>ListAccountSettings</code> request exceed <code>maxResults</code>, this value
    #   			can be used to retrieve the next page of results. This value is <code>null</code> when
    #   			there are no more results to return.</p>
    #
    #   @return [String]
    #
    ListAccountSettingsOutput = ::Struct.new(
      :settings,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster to list attributes.
    #   			If you do not specify a cluster, the default cluster is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute target_type
    #   <p>The type of the target to list attributes with.</p>
    #
    #   Enum, one of: ["container-instance"]
    #
    #   @return [String]
    #
    # @!attribute attribute_name
    #   <p>The name of the attribute to filter the results with. </p>
    #
    #   @return [String]
    #
    # @!attribute attribute_value
    #   <p>The value of the attribute to filter results with. You must also specify an attribute
    #   			name to use this parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a <code>ListAttributes</code> request
    #   			indicating that more results are available to fulfill the request and further calls are
    #   			needed. If <code>maxResults</code> was provided, it's possible the number of results to
    #   			be fewer than <code>maxResults</code>.</p>
    #   		       <note>
    #               <p>This token should be treated as an opaque identifier that is only used to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of cluster results that <code>ListAttributes</code> returned in
    #   			paginated output. When this parameter is used, <code>ListAttributes</code> only returns
    #   				<code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #   			response element. The remaining results of the initial request can be seen by sending
    #   			another <code>ListAttributes</code> request with the returned <code>nextToken</code>
    #   			value. This value can be between 1 and 100. If this
    #   			parameter isn't used, then <code>ListAttributes</code> returns up to
    #   			100 results and a <code>nextToken</code> value if applicable.</p>
    #
    #   @return [Integer]
    #
    ListAttributesInput = ::Struct.new(
      :cluster,
      :target_type,
      :attribute_name,
      :attribute_value,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attributes
    #   <p>A list of attribute objects that meet the criteria of the request.</p>
    #
    #   @return [Array<Attribute>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>ListAttributes</code>
    #   			request. When the results of a <code>ListAttributes</code> request exceed
    #   				<code>maxResults</code>, this value can be used to retrieve the next page of
    #   			results. This value is <code>null</code> when there are no more results to
    #   			return.</p>
    #
    #   @return [String]
    #
    ListAttributesOutput = ::Struct.new(
      :attributes,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a <code>ListClusters</code> request
    #   			indicating that more results are available to fulfill the request and further calls are
    #   			needed. If <code>maxResults</code> was provided, it's possible the number of results to
    #   			be fewer than <code>maxResults</code>.</p>
    #   		       <note>
    #               <p>This token should be treated as an opaque identifier that is only used to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of cluster results that <code>ListClusters</code> returned in
    #   			paginated output. When this parameter is used, <code>ListClusters</code> only returns
    #   				<code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #   			response element. The remaining results of the initial request can be seen by sending
    #   			another <code>ListClusters</code> request with the returned <code>nextToken</code>
    #   			value. This value can be between 1 and 100. If this
    #   			parameter isn't used, then <code>ListClusters</code> returns up to 100
    #   			results and a <code>nextToken</code> value if applicable.</p>
    #
    #   @return [Integer]
    #
    ListClustersInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_arns
    #   <p>The list of full Amazon Resource Name (ARN) entries for each cluster that's associated with your
    #   			account.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>ListClusters</code>
    #   			request. When the results of a <code>ListClusters</code> request exceed
    #   				<code>maxResults</code>, this value can be used to retrieve the next page of
    #   			results. This value is <code>null</code> when there are no more results to
    #   			return.</p>
    #
    #   @return [String]
    #
    ListClustersOutput = ::Struct.new(
      :cluster_arns,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instances to
    #   			list. If you do not specify a cluster, the default cluster is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute filter
    #   <p>You can filter the results of a <code>ListContainerInstances</code> operation with
    #   			cluster query language statements. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html">Cluster Query Language</a> in the
    #   				<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a <code>ListContainerInstances</code>
    #   			request indicating that more results are available to fulfill the request and further
    #   			calls are needed. If <code>maxResults</code> was provided, it's possible the number of
    #   			results to be fewer than <code>maxResults</code>.</p>
    #   		       <note>
    #               <p>This token should be treated as an opaque identifier that is only used to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of container instance results that
    #   				<code>ListContainerInstances</code> returned in paginated output. When this
    #   			parameter is used, <code>ListContainerInstances</code> only returns
    #   				<code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #   			response element. The remaining results of the initial request can be seen by sending
    #   			another <code>ListContainerInstances</code> request with the returned
    #   				<code>nextToken</code> value. This value can be between 1 and
    #   			100. If this parameter isn't used, then
    #   				<code>ListContainerInstances</code> returns up to 100 results and
    #   			a <code>nextToken</code> value if applicable.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>Filters the container instances by status. For example, if you specify the
    #   				<code>DRAINING</code> status, the results include only container instances that have
    #   			been set to <code>DRAINING</code> using <a>UpdateContainerInstancesState</a>.
    #   			If you don't specify this parameter, the default is to include container instances set
    #   			to all states other than <code>INACTIVE</code>.</p>
    #
    #   Enum, one of: ["ACTIVE", "DRAINING", "REGISTERING", "DEREGISTERING", "REGISTRATION_FAILED"]
    #
    #   @return [String]
    #
    ListContainerInstancesInput = ::Struct.new(
      :cluster,
      :filter,
      :next_token,
      :max_results,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute container_instance_arns
    #   <p>The list of container instances with full ARN entries for each container instance
    #   			associated with the specified cluster.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future
    #   				<code>ListContainerInstances</code> request. When the results of a
    #   				<code>ListContainerInstances</code> request exceed <code>maxResults</code>, this
    #   			value can be used to retrieve the next page of results. This value is <code>null</code>
    #   			when there are no more results to return.</p>
    #
    #   @return [String]
    #
    ListContainerInstancesOutput = ::Struct.new(
      :container_instance_arns,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster to use when filtering the
    #   				<code>ListServices</code> results. If you do not specify a cluster, the default cluster is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a <code>ListServices</code> request
    #   			indicating that more results are available to fulfill the request and further calls will
    #   			be needed. If <code>maxResults</code> was provided, it is possible the number of results
    #   			to be fewer than <code>maxResults</code>.</p>
    #   		       <note>
    #               <p>This token should be treated as an opaque identifier that is only used to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of service results that <code>ListServices</code> returned in
    #   			paginated output. When this parameter is used, <code>ListServices</code> only returns
    #   				<code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #   			response element. The remaining results of the initial request can be seen by sending
    #   			another <code>ListServices</code> request with the returned <code>nextToken</code>
    #   			value. This value can be between 1 and 100. If
    #   			this parameter isn't used, then <code>ListServices</code> returns up to
    #   			10 results and a <code>nextToken</code> value if
    #   			applicable.</p>
    #
    #   @return [Integer]
    #
    # @!attribute launch_type
    #   <p>The launch type to use when filtering the <code>ListServices</code> results.</p>
    #
    #   Enum, one of: ["EC2", "FARGATE", "EXTERNAL"]
    #
    #   @return [String]
    #
    # @!attribute scheduling_strategy
    #   <p>The scheduling strategy to use when filtering the <code>ListServices</code>
    #   			results.</p>
    #
    #   Enum, one of: ["REPLICA", "DAEMON"]
    #
    #   @return [String]
    #
    ListServicesInput = ::Struct.new(
      :cluster,
      :next_token,
      :max_results,
      :launch_type,
      :scheduling_strategy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_arns
    #   <p>The list of full ARN entries for each service that's associated with the specified
    #   			cluster.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>ListServices</code>
    #   			request. When the results of a <code>ListServices</code> request exceed
    #   				<code>maxResults</code>, this value can be used to retrieve the next page of
    #   			results. This value is <code>null</code> when there are no more results to
    #   			return.</p>
    #
    #   @return [String]
    #
    ListServicesOutput = ::Struct.new(
      :service_arns,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource to list the tags for. Currently, the
    #   			supported resources are Amazon ECS tasks, services, task definitions, clusters, and container
    #   			instances.</p>
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
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute family_prefix
    #   <p>The <code>familyPrefix</code> is a string that's used to filter the results of
    #   				<code>ListTaskDefinitionFamilies</code>. If you specify a <code>familyPrefix</code>,
    #   			only task definition family names that begin with the <code>familyPrefix</code> string
    #   			are returned.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The task definition family status to filter the
    #   				<code>ListTaskDefinitionFamilies</code> results with. By default, both
    #   				<code>ACTIVE</code> and <code>INACTIVE</code> task definition families are listed.
    #   			If this parameter is set to <code>ACTIVE</code>, only task definition families that have
    #   			an <code>ACTIVE</code> task definition revision are returned. If this parameter is set
    #   			to <code>INACTIVE</code>, only task definition families that do not have any
    #   				<code>ACTIVE</code> task definition revisions are returned. If you paginate the
    #   			resulting output, be sure to keep the <code>status</code> value constant in each
    #   			subsequent request.</p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE", "ALL"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a
    #   				<code>ListTaskDefinitionFamilies</code> request indicating that more results are
    #   			available to fulfill the request and further calls will be needed. If
    #   				<code>maxResults</code> was provided, it is possible the number of results to be
    #   			fewer than <code>maxResults</code>.</p>
    #   		       <note>
    #               <p>This token should be treated as an opaque identifier that is only used to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of task definition family results that
    #   				<code>ListTaskDefinitionFamilies</code> returned in paginated output. When this
    #   			parameter is used, <code>ListTaskDefinitions</code> only returns <code>maxResults</code>
    #   			results in a single page along with a <code>nextToken</code> response element. The
    #   			remaining results of the initial request can be seen by sending another
    #   				<code>ListTaskDefinitionFamilies</code> request with the returned
    #   				<code>nextToken</code> value. This value can be between 1 and
    #   			100. If this parameter isn't used, then
    #   				<code>ListTaskDefinitionFamilies</code> returns up to 100 results
    #   			and a <code>nextToken</code> value if applicable.</p>
    #
    #   @return [Integer]
    #
    ListTaskDefinitionFamiliesInput = ::Struct.new(
      :family_prefix,
      :status,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute families
    #   <p>The list of task definition family names that match the
    #   				<code>ListTaskDefinitionFamilies</code> request.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future
    #   				<code>ListTaskDefinitionFamilies</code> request. When the results of a
    #   				<code>ListTaskDefinitionFamilies</code> request exceed <code>maxResults</code>, this
    #   			value can be used to retrieve the next page of results. This value is <code>null</code>
    #   			when there are no more results to return.</p>
    #
    #   @return [String]
    #
    ListTaskDefinitionFamiliesOutput = ::Struct.new(
      :families,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute family_prefix
    #   <p>The full family name to filter the <code>ListTaskDefinitions</code> results with.
    #   			Specifying a <code>familyPrefix</code> limits the listed task definitions to task
    #   			definition revisions that belong to that family.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The task definition status to filter the <code>ListTaskDefinitions</code> results
    #   			with. By default, only <code>ACTIVE</code> task definitions are listed. By setting this
    #   			parameter to <code>INACTIVE</code>, you can view task definitions that are
    #   				<code>INACTIVE</code> as long as an active task or service still references them. If
    #   			you paginate the resulting output, be sure to keep the <code>status</code> value
    #   			constant in each subsequent request.</p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute sort
    #   <p>The order to sort the results in. Valid values are <code>ASC</code> and
    #   				<code>DESC</code>. By default, (<code>ASC</code>) task definitions are listed
    #   			lexicographically by family name and in ascending numerical order by revision so that
    #   			the newest task definitions in a family are listed last. Setting this parameter to
    #   				<code>DESC</code> reverses the sort order on family name and revision. This is so
    #   			that the newest task definitions in a family are listed first.</p>
    #
    #   Enum, one of: ["ASC", "DESC"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a <code>ListTaskDefinitions</code>
    #   			request indicating that more results are available to fulfill the request and further
    #   			calls will be needed. If <code>maxResults</code> was provided, it is possible the number
    #   			of results to be fewer than <code>maxResults</code>.</p>
    #   		       <note>
    #               <p>This token should be treated as an opaque identifier that is only used to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of task definition results that <code>ListTaskDefinitions</code>
    #   			returned in paginated output. When this parameter is used,
    #   				<code>ListTaskDefinitions</code> only returns <code>maxResults</code> results in a
    #   			single page along with a <code>nextToken</code> response element. The remaining results
    #   			of the initial request can be seen by sending another <code>ListTaskDefinitions</code>
    #   			request with the returned <code>nextToken</code> value. This value can be between
    #   			1 and 100. If this parameter isn't used, then
    #   				<code>ListTaskDefinitions</code> returns up to 100 results and a
    #   				<code>nextToken</code> value if applicable.</p>
    #
    #   @return [Integer]
    #
    ListTaskDefinitionsInput = ::Struct.new(
      :family_prefix,
      :status,
      :sort,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_definition_arns
    #   <p>The list of task definition Amazon Resource Name (ARN) entries for the <code>ListTaskDefinitions</code>
    #   			request.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future
    #   				<code>ListTaskDefinitions</code> request. When the results of a
    #   				<code>ListTaskDefinitions</code> request exceed <code>maxResults</code>, this value
    #   			can be used to retrieve the next page of results. This value is <code>null</code> when
    #   			there are no more results to return.</p>
    #
    #   @return [String]
    #
    ListTaskDefinitionsOutput = ::Struct.new(
      :task_definition_arns,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster to use when filtering the
    #   				<code>ListTasks</code> results. If you do not specify a cluster, the default cluster is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute container_instance
    #   <p>The container instance ID or full ARN of the container instance to use when
    #   			filtering the <code>ListTasks</code> results. Specifying a
    #   				<code>containerInstance</code> limits the results to tasks that belong to that
    #   			container instance.</p>
    #
    #   @return [String]
    #
    # @!attribute family
    #   <p>The name of the task definition family to use when filtering the
    #   				<code>ListTasks</code> results. Specifying a <code>family</code> limits the results
    #   			to tasks that belong to that family.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a <code>ListTasks</code> request
    #   			indicating that more results are available to fulfill the request and further calls will
    #   			be needed. If <code>maxResults</code> was provided, it's possible the number of results
    #   			to be fewer than <code>maxResults</code>.</p>
    #   		       <note>
    #               <p>This token should be treated as an opaque identifier that is only used to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of task results that <code>ListTasks</code> returned in paginated
    #   			output. When this parameter is used, <code>ListTasks</code> only returns
    #   				<code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #   			response element. The remaining results of the initial request can be seen by sending
    #   			another <code>ListTasks</code> request with the returned <code>nextToken</code> value.
    #   			This value can be between 1 and 100. If this parameter
    #   			isn't used, then <code>ListTasks</code> returns up to 100 results and
    #   			a <code>nextToken</code> value if applicable.</p>
    #
    #   @return [Integer]
    #
    # @!attribute started_by
    #   <p>The <code>startedBy</code> value to filter the task results with. Specifying a
    #   				<code>startedBy</code> value limits the results to tasks that were started with that
    #   			value.</p>
    #
    #   @return [String]
    #
    # @!attribute service_name
    #   <p>The name of the service to use when filtering the <code>ListTasks</code> results.
    #   			Specifying a <code>serviceName</code> limits the results to tasks that belong to that
    #   			service.</p>
    #
    #   @return [String]
    #
    # @!attribute desired_status
    #   <p>The task desired status to use when filtering the <code>ListTasks</code> results.
    #   			Specifying a <code>desiredStatus</code> of <code>STOPPED</code> limits the results to
    #   			tasks that Amazon ECS has set the desired status to <code>STOPPED</code>. This can be useful
    #   			for debugging tasks that aren't starting properly or have died or finished. The default
    #   			status filter is <code>RUNNING</code>, which shows tasks that Amazon ECS has set the desired
    #   			status to <code>RUNNING</code>.</p>
    #   		       <note>
    #   			         <p>Although you can filter results based on a desired status of <code>PENDING</code>,
    #   				this doesn't return any results. Amazon ECS never sets the desired status of a task to
    #   				that value (only a task's <code>lastStatus</code> may have a value of
    #   					<code>PENDING</code>).</p>
    #   		       </note>
    #
    #   Enum, one of: ["RUNNING", "PENDING", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute launch_type
    #   <p>The launch type to use when filtering the <code>ListTasks</code> results.</p>
    #
    #   Enum, one of: ["EC2", "FARGATE", "EXTERNAL"]
    #
    #   @return [String]
    #
    ListTasksInput = ::Struct.new(
      :cluster,
      :container_instance,
      :family,
      :next_token,
      :max_results,
      :started_by,
      :service_name,
      :desired_status,
      :launch_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_arns
    #   <p>The list of task ARN entries for the <code>ListTasks</code> request.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future <code>ListTasks</code>
    #   			request. When the results of a <code>ListTasks</code> request exceed
    #   				<code>maxResults</code>, this value can be used to retrieve the next page of
    #   			results. This value is <code>null</code> when there are no more results to
    #   			return.</p>
    #
    #   @return [String]
    #
    ListTasksOutput = ::Struct.new(
      :task_arns,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The load balancer configuration to use with a service or task set.</p>
    # 		       <p>For specific notes and restrictions regarding the use of load balancers with services
    # 			and task sets, see the CreateService and CreateTaskSet actions.</p>
    # 		       <p>When you add, update, or remove a load balancer configuration, Amazon ECS starts a new deployment
    # 			with the updated Elastic Load Balancing configuration. This causes tasks to register to and deregister
    # 			from load balancers.</p>
    # 		       <p>We recommend that you verify this on a test environment before you update the Elastic Load Balancing
    # 			configuration. </p>
    # 		       <p>A service-linked role is required for services that use multiple target groups. For
    # 			more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html">Service-linked
    # 				roles</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @!attribute target_group_arn
    #   <p>The full Amazon Resource Name (ARN) of the Elastic Load Balancing target group or groups associated with a service or
    #   			task set.</p>
    #   		       <p>A target group ARN is only specified when using an Application Load Balancer or Network Load Balancer. If you're using a
    #   			Classic Load Balancer, omit the target group ARN.</p>
    #   		       <p>For services using the <code>ECS</code> deployment controller, you can specify one or
    #   			multiple target groups. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/register-multiple-targetgroups.html">Registering Multiple Target Groups with a Service</a> in
    #   			the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #   		       <p>For services using the <code>CODE_DEPLOY</code> deployment controller, you're required
    #   			to define two target groups for the load balancer. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-type-bluegreen.html">Blue/Green Deployment with CodeDeploy</a> in the
    #   				<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #   		       <important>
    #   			         <p>If your service's task definition uses the <code>awsvpc</code> network mode, you
    #   				must choose <code>ip</code> as the target type, not <code>instance</code>. Do this
    #   				when creating your target groups because tasks that use the <code>awsvpc</code>
    #   				network mode are associated with an elastic network interface, not an Amazon EC2
    #   				instance. This network mode is required for the Fargate launch
    #   				type.</p>
    #   		       </important>
    #
    #   @return [String]
    #
    # @!attribute load_balancer_name
    #   <p>The name of the load balancer to associate with the Amazon ECS service or task set.</p>
    #   		       <p>A load balancer name is only specified when using a Classic Load Balancer. If you are using an Application Load Balancer
    #   			or a Network Load Balancer the load balancer name parameter should be omitted.</p>
    #
    #   @return [String]
    #
    # @!attribute container_name
    #   <p>The name of the container (as it appears in a container definition) to associate with
    #   			the load balancer.</p>
    #
    #   @return [String]
    #
    # @!attribute container_port
    #   <p>The port on the container to associate with the load balancer. This port must
    #   			correspond to a <code>containerPort</code> in the task definition the tasks in the
    #   			service are using. For tasks that use the EC2 launch type, the container
    #   			instance they're launched on must allow ingress traffic on the <code>hostPort</code> of
    #   			the port mapping.</p>
    #
    #   @return [Integer]
    #
    LoadBalancer = ::Struct.new(
      :target_group_arn,
      :load_balancer_name,
      :container_name,
      :container_port,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The log configuration for the container. This parameter maps to <code>LogConfig</code>
    # 			in the <a href="https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate">Create a container</a> section of the <a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the
    # 				<code>--log-driver</code> option to <a href="https://docs.docker.com/engine/reference/commandline/run/">
    #                <code>docker
    # 					run</code>
    #             </a>.</p>
    # 		       <p>By default, containers use the same logging driver that the Docker daemon uses.
    # 			However, the container might use a different logging driver than the Docker daemon by
    # 			specifying a log driver configuration in the container definition. For more information
    # 			about the options for different supported log drivers, see <a href="https://docs.docker.com/engine/admin/logging/overview/">Configure logging
    # 				drivers</a> in the Docker documentation.</p>
    # 		       <p>Understand the following when specifying a log configuration for your
    # 			containers.</p>
    # 		       <ul>
    #             <li>
    # 				           <p>Amazon ECS currently supports a subset of the logging drivers available to the
    # 					Docker daemon (shown in the valid values below). Additional log drivers may be
    # 					available in future releases of the Amazon ECS container agent.</p>
    # 			         </li>
    #             <li>
    # 				           <p>This parameter requires version 1.18 of the Docker Remote API or greater on
    # 					your container instance.</p>
    # 			         </li>
    #             <li>
    # 				           <p>For tasks that are hosted on Amazon EC2 instances, the Amazon ECS container agent must
    # 					register the available logging drivers with the
    # 						<code>ECS_AVAILABLE_LOGGING_DRIVERS</code> environment variable before
    # 					containers placed on that instance can use these log configuration options. For
    # 					more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html">Amazon ECS container agent configuration</a> in the
    # 						<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # 			         </li>
    #             <li>
    # 				           <p>For tasks that are on Fargate, because you don't have access to the
    # 					underlying infrastructure your tasks are hosted on, any additional software
    # 					needed must be installed outside of the task. For example, the Fluentd output
    # 					aggregators or a remote host running Logstash to send Gelf logs to.</p>
    # 			         </li>
    #          </ul>
    #
    # @!attribute log_driver
    #   <p>The log driver to use for the container.</p>
    #   		       <p>For tasks on Fargate, the supported log drivers are <code>awslogs</code>,
    #   				<code>splunk</code>, and <code>awsfirelens</code>.</p>
    #   		       <p>For tasks hosted on Amazon EC2 instances, the supported log drivers are
    #   				<code>awslogs</code>, <code>fluentd</code>, <code>gelf</code>,
    #   				<code>json-file</code>, <code>journald</code>,
    #   				<code>logentries</code>,<code>syslog</code>, <code>splunk</code>, and
    #   				<code>awsfirelens</code>.</p>
    #   		       <p>For more information about using the <code>awslogs</code> log driver, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_awslogs.html">Using
    #   				the awslogs log driver</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #   		       <p>For more information about using the <code>awsfirelens</code> log driver, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_firelens.html">Custom log routing</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #   		       <note>
    #   			         <p>If you have a custom driver that isn't listed, you can fork the Amazon ECS container
    #   				agent project that's <a href="https://github.com/aws/amazon-ecs-agent">available
    #   					on GitHub</a> and customize it to work with that driver. We encourage you to
    #   				submit pull requests for changes that you would like to have included. However, we
    #   				don't currently provide support for running modified copies of this software.</p>
    #   		       </note>
    #
    #   Enum, one of: ["json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"]
    #
    #   @return [String]
    #
    # @!attribute options
    #   <p>The configuration options to send to the log driver. This parameter requires version 1.19 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log in to your container instance and run the following command: <code>sudo docker version --format '{{.Server.APIVersion}}'</code>
    #            </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute secret_options
    #   <p>The secrets to pass to the log configuration. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/specifying-sensitive-data.html">Specifying
    #   				Sensitive Data</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
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

      # No documentation available.
      #
      AWSFIRELENS = "awsfirelens"
    end

    # <p>Details about the managed agent status for the container.</p>
    #
    # @!attribute last_started_at
    #   <p>The Unix timestamp for the time when the managed agent was last started.</p>
    #
    #   @return [Time]
    #
    # @!attribute name
    #   <p>The name of the managed agent. When the execute command feature is enabled, the
    #   			managed agent name is <code>ExecuteCommandAgent</code>.</p>
    #
    #   Enum, one of: ["ExecuteCommandAgent"]
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason for why the managed agent is in the state it is in.</p>
    #
    #   @return [String]
    #
    # @!attribute last_status
    #   <p>The last known status of the managed agent.</p>
    #
    #   @return [String]
    #
    ManagedAgent = ::Struct.new(
      :last_started_at,
      :name,
      :reason,
      :last_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ManagedAgentName
    #
    module ManagedAgentName
      # No documentation available.
      #
      ExecuteCommandAgent = "ExecuteCommandAgent"
    end

    # <p>An object representing a change in state for a managed agent.</p>
    #
    # @!attribute container_name
    #   <p>The name of the container that's associated with the managed agent.</p>
    #
    #   @return [String]
    #
    # @!attribute managed_agent_name
    #   <p>The name of the managed agent.</p>
    #
    #   Enum, one of: ["ExecuteCommandAgent"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the managed agent.</p>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason for the status of the managed agent.</p>
    #
    #   @return [String]
    #
    ManagedAgentStateChange = ::Struct.new(
      :container_name,
      :managed_agent_name,
      :status,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The managed scaling settings for the Auto Scaling group capacity provider.</p>
    # 		       <p>When managed scaling is enabled, Amazon ECS manages the scale-in and scale-out actions of
    # 			the Auto Scaling group. Amazon ECS manages a target tracking scaling policy using an Amazon ECS
    # 			managed CloudWatch metric with the specified <code>targetCapacity</code> value as the target
    # 			value for the metric. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/asg-capacity-providers.html#asg-capacity-providers-managed-scaling">Using Managed Scaling</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # 		       <p>If managed scaling is disabled, the user must manage the scaling of the Auto Scaling
    # 			group.</p>
    #
    # @!attribute status
    #   <p>Determines whether to use managed scaling for the capacity provider.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute target_capacity
    #   <p>The target capacity value for the capacity provider. The specified value must be
    #   			greater than <code>0</code> and less than or equal to <code>100</code>. A value of
    #   				<code>100</code> results in the Amazon EC2 instances in your Auto Scaling group being
    #   			completely used.</p>
    #
    #   @return [Integer]
    #
    # @!attribute minimum_scaling_step_size
    #   <p>The minimum number of container instances that Amazon ECS scales in or scales out at one
    #   			time. If this parameter is omitted, the default value of <code>1</code> is used.</p>
    #
    #   @return [Integer]
    #
    # @!attribute maximum_scaling_step_size
    #   <p>The maximum number of container instances that Amazon ECS scales in or scales out at one
    #   			time. If this parameter is omitted, the default value of <code>10000</code> is
    #   			used.</p>
    #
    #   @return [Integer]
    #
    # @!attribute instance_warmup_period
    #   <p>The period of time, in seconds, after a newly launched Amazon EC2 instance can contribute
    #   			to CloudWatch metrics for Auto Scaling group. If this parameter is omitted, the default value
    #   			of <code>300</code> seconds is used.</p>
    #
    #   @return [Integer]
    #
    ManagedScaling = ::Struct.new(
      :status,
      :target_capacity,
      :minimum_scaling_step_size,
      :maximum_scaling_step_size,
      :instance_warmup_period,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ManagedScalingStatus
    #
    module ManagedScalingStatus
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Includes enum constants for ManagedTerminationProtection
    #
    module ManagedTerminationProtection
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # <p>Amazon ECS can't determine the current version of the Amazon ECS container agent on the
    # 			container instance and doesn't have enough information to proceed with an update. This
    # 			could be because the agent running on the container instance is a previous or custom
    # 			version that doesn't use our version information.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    MissingVersionException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details for a volume mount point that's used in a container definition.</p>
    #
    # @!attribute source_volume
    #   <p>The name of the volume to mount. Must be a volume name referenced in the
    #   				<code>name</code> parameter of task definition <code>volume</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute container_path
    #   <p>The path on the container to mount the host volume at.</p>
    #
    #   @return [String]
    #
    # @!attribute read_only
    #   <p>If this value is <code>true</code>, the container has read-only access to the volume.
    #   			If this value is <code>false</code>, then the container can write to the volume. The
    #   			default value is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    MountPoint = ::Struct.new(
      :source_volume,
      :container_path,
      :read_only,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details on the network bindings between a container and its host container instance.
    # 			After a task reaches the <code>RUNNING</code> status, manual and automatic host and
    # 			container port assignments are visible in the <code>networkBindings</code> section of
    # 				<a>DescribeTasks</a> API responses.</p>
    #
    # @!attribute bind_ip
    #   <p>The IP address that the container is bound to on the container instance.</p>
    #
    #   @return [String]
    #
    # @!attribute container_port
    #   <p>The port number on the container that's used with the network binding.</p>
    #
    #   @return [Integer]
    #
    # @!attribute host_port
    #   <p>The port number on the host that's used with the network binding.</p>
    #
    #   @return [Integer]
    #
    # @!attribute protocol
    #   <p>The protocol used for the network binding.</p>
    #
    #   Enum, one of: ["tcp", "udp"]
    #
    #   @return [String]
    #
    NetworkBinding = ::Struct.new(
      :bind_ip,
      :container_port,
      :host_port,
      :protocol,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing the network configuration for a task or service.</p>
    #
    # @!attribute awsvpc_configuration
    #   <p>The VPC subnets and security groups that are associated with a task.</p>
    #   		       <note>
    #   			         <p>All specified subnets and security groups must be from the same VPC.</p>
    #   		       </note>
    #
    #   @return [AwsVpcConfiguration]
    #
    NetworkConfiguration = ::Struct.new(
      :awsvpc_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing the elastic network interface for tasks that use the
    # 				<code>awsvpc</code> network mode.</p>
    #
    # @!attribute attachment_id
    #   <p>The attachment ID for the network interface.</p>
    #
    #   @return [String]
    #
    # @!attribute private_ipv4_address
    #   <p>The private IPv4 address for the network interface.</p>
    #
    #   @return [String]
    #
    # @!attribute ipv6_address
    #   <p>The private IPv6 address for the network interface.</p>
    #
    #   @return [String]
    #
    NetworkInterface = ::Struct.new(
      :attachment_id,
      :private_ipv4_address,
      :ipv6_address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for NetworkMode
    #
    module NetworkMode
      # No documentation available.
      #
      BRIDGE = "bridge"

      # No documentation available.
      #
      HOST = "host"

      # No documentation available.
      #
      AWSVPC = "awsvpc"

      # No documentation available.
      #
      NONE = "none"
    end

    # <p>There's no update available for this Amazon ECS container agent. This might be because the
    # 			agent is already running the latest version or because it's so old that there's no
    # 			update path to the current version.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NoUpdateAvailableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OSFamily
    #
    module OSFamily
      # No documentation available.
      #
      WINDOWS_SERVER_2019_FULL = "WINDOWS_SERVER_2019_FULL"

      # No documentation available.
      #
      WINDOWS_SERVER_2019_CORE = "WINDOWS_SERVER_2019_CORE"

      # No documentation available.
      #
      WINDOWS_SERVER_2016_FULL = "WINDOWS_SERVER_2016_FULL"

      # No documentation available.
      #
      WINDOWS_SERVER_2004_CORE = "WINDOWS_SERVER_2004_CORE"

      # No documentation available.
      #
      WINDOWS_SERVER_2022_CORE = "WINDOWS_SERVER_2022_CORE"

      # No documentation available.
      #
      WINDOWS_SERVER_2022_FULL = "WINDOWS_SERVER_2022_FULL"

      # No documentation available.
      #
      WINDOWS_SERVER_20H2_CORE = "WINDOWS_SERVER_20H2_CORE"

      # No documentation available.
      #
      LINUX = "LINUX"
    end

    # Includes enum constants for PidMode
    #
    module PidMode
      # No documentation available.
      #
      HOST = "host"

      # No documentation available.
      #
      TASK = "task"
    end

    # <p>An object representing a constraint on task placement. For more information, see
    # 				<a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html">Task Placement Constraints</a> in the
    # 				<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # 		       <note>
    # 			         <p>If you're using the Fargate launch type, task placement constraints
    # 				aren't supported.</p>
    # 		       </note>
    #
    # @!attribute type
    #   <p>The type of constraint. Use <code>distinctInstance</code> to ensure that each task in
    #   			a particular group is running on a different container instance. Use
    #   				<code>memberOf</code> to restrict the selection to a group of valid
    #   			candidates.</p>
    #
    #   Enum, one of: ["distinctInstance", "memberOf"]
    #
    #   @return [String]
    #
    # @!attribute expression
    #   <p>A cluster query language expression to apply to the constraint. The expression can
    #   			have a maximum length of 2000 characters. You can't specify an expression if the
    #   			constraint type is <code>distinctInstance</code>. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html">Cluster query language</a> in the
    #   				<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    PlacementConstraint = ::Struct.new(
      :type,
      :expression,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PlacementConstraintType
    #
    module PlacementConstraintType
      # No documentation available.
      #
      DISTINCT_INSTANCE = "distinctInstance"

      # No documentation available.
      #
      MEMBER_OF = "memberOf"
    end

    # <p>The task placement strategy for a task or service. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-strategies.html">Task Placement Strategies</a> in the
    # 				<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @!attribute type
    #   <p>The type of placement strategy. The <code>random</code> placement strategy randomly
    #   			places tasks on available candidates. The <code>spread</code> placement strategy spreads
    #   			placement across available candidates evenly based on the <code>field</code> parameter.
    #   			The <code>binpack</code> strategy places tasks on available candidates that have the
    #   			least available amount of the resource that's specified with the <code>field</code>
    #   			parameter. For example, if you binpack on memory, a task is placed on the instance with
    #   			the least amount of remaining memory but still enough to run the task.</p>
    #
    #   Enum, one of: ["random", "spread", "binpack"]
    #
    #   @return [String]
    #
    # @!attribute field
    #   <p>The field to apply the placement strategy against. For the <code>spread</code>
    #   			placement strategy, valid values are <code>instanceId</code> (or <code>host</code>,
    #   			which has the same effect), or any platform or custom attribute that's applied to a
    #   			container instance, such as <code>attribute:ecs.availability-zone</code>. For the
    #   				<code>binpack</code> placement strategy, valid values are <code>cpu</code> and
    #   				<code>memory</code>. For the <code>random</code> placement strategy, this field is
    #   			not used.</p>
    #
    #   @return [String]
    #
    PlacementStrategy = ::Struct.new(
      :type,
      :field,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PlacementStrategyType
    #
    module PlacementStrategyType
      # No documentation available.
      #
      RANDOM = "random"

      # No documentation available.
      #
      SPREAD = "spread"

      # No documentation available.
      #
      BINPACK = "binpack"
    end

    # <p>The devices that are available on the container instance. The only supported device
    # 			type is a GPU.</p>
    #
    # @!attribute id
    #   <p>The ID for the GPUs on the container instance. The available GPU IDs can also be
    #   			obtained on the container instance in the
    #   				<code>/var/lib/ecs/gpu/nvidia_gpu_info.json</code> file.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of device that's available on the container instance. The only supported
    #   			value is <code>GPU</code>.</p>
    #
    #   Enum, one of: ["GPU"]
    #
    #   @return [String]
    #
    PlatformDevice = ::Struct.new(
      :id,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PlatformDeviceType
    #
    module PlatformDeviceType
      # No documentation available.
      #
      GPU = "GPU"
    end

    # <p>The specified platform version doesn't satisfy the required capabilities of the task
    # 			definition.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    PlatformTaskDefinitionIncompatibilityException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified platform version doesn't exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    PlatformUnknownException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Port mappings allow containers to access ports on the host container instance to send
    # 			or receive traffic. Port mappings are specified as part of the container
    # 			definition.</p>
    # 		       <p>If you use containers in a task with the <code>awsvpc</code> or <code>host</code>
    # 			network mode, specify the exposed ports using <code>containerPort</code>. The
    # 				<code>hostPort</code> can be left blank or it must be the same value as the
    # 				<code>containerPort</code>.</p>
    # 		       <note>
    # 			         <p>You can't expose the same container port for multiple protocols. If you attempt
    # 				this, an error is returned.</p>
    # 		       </note>
    # 		       <p>After a task reaches the <code>RUNNING</code> status, manual and automatic host and
    # 			container port assignments are visible in the <code>networkBindings</code> section of
    # 				<a>DescribeTasks</a> API responses.</p>
    #
    # @!attribute container_port
    #   <p>The port number on the container that's bound to the user-specified or automatically
    #   			assigned host port.</p>
    #   		       <p>If you use containers in a task with the <code>awsvpc</code> or <code>host</code>
    #   			network mode, specify the exposed ports using <code>containerPort</code>.</p>
    #   		       <p>If you use containers in a task with the <code>bridge</code> network mode and you
    #   			specify a container port and not a host port, your container automatically receives a
    #   			host port in the ephemeral port range. For more information, see <code>hostPort</code>.
    #   			Port mappings that are automatically assigned in this way do not count toward the 100
    #   			reserved ports limit of a container instance.</p>
    #
    #   @return [Integer]
    #
    # @!attribute host_port
    #   <p>The port number on the container instance to reserve for your container.</p>
    #   		       <p>If you use containers in a task with the <code>awsvpc</code> or <code>host</code>
    #   			network mode, the <code>hostPort</code> can either be left blank or set to the same
    #   			value as the <code>containerPort</code>.</p>
    #   		       <p>If you use containers in a task with the <code>bridge</code> network mode, you can
    #   			specify a non-reserved host port for your container port mapping, or you can omit the
    #   				<code>hostPort</code> (or set it to <code>0</code>) while specifying a
    #   				<code>containerPort</code> and your container automatically receives a port in the
    #   			ephemeral port range for your container instance operating system and Docker
    #   			version.</p>
    #   		       <p>The default ephemeral port range for Docker version 1.6.0 and later is listed on the
    #   			instance under <code>/proc/sys/net/ipv4/ip_local_port_range</code>. If this kernel
    #   			parameter is unavailable, the default ephemeral port range from 49153 through 65535 is
    #   			used. Do not attempt to specify a host port in the ephemeral port range as these are
    #   			reserved for automatic assignment. In general, ports below 32768 are outside of the
    #   			ephemeral port range.</p>
    #   		       <note>
    #   			         <p>The default ephemeral port range from 49153 through 65535 is always used for
    #   				Docker versions before 1.6.0.</p>
    #   		       </note>
    #   		       <p>The default reserved ports are 22 for SSH, the Docker ports 2375 and 2376, and the
    #   			Amazon ECS container agent ports 51678-51680. Any host port that was previously specified in
    #   			a running task is also reserved while the task is running. That is, after a task stops,
    #   			the host port is released. The current reserved ports are displayed in the
    #   				<code>remainingResources</code> of <a>DescribeContainerInstances</a>
    #   			output. A container instance can have up to 100 reserved ports at a time. This number
    #   			includes the default reserved ports. Automatically assigned ports aren't included in the
    #   			100 reserved ports quota.</p>
    #
    #   @return [Integer]
    #
    # @!attribute protocol
    #   <p>The protocol used for the port mapping. Valid values are <code>tcp</code> and
    #   				<code>udp</code>. The default is <code>tcp</code>.</p>
    #
    #   Enum, one of: ["tcp", "udp"]
    #
    #   @return [String]
    #
    PortMapping = ::Struct.new(
      :container_port,
      :host_port,
      :protocol,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PropagateTags
    #
    module PropagateTags
      # No documentation available.
      #
      TASK_DEFINITION = "TASK_DEFINITION"

      # No documentation available.
      #
      SERVICE = "SERVICE"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # <p>The configuration details for the App Mesh proxy.</p>
    # 		       <p>For tasks that use the EC2 launch type, the container instances require
    # 			at least version 1.26.0 of the container agent and at least version 1.26.0-1 of the
    # 				<code>ecs-init</code> package to use a proxy configuration. If your container
    # 			instances are launched from the Amazon ECS optimized AMI version <code>20190301</code> or
    # 			later, then they contain the required versions of the container agent and
    # 				<code>ecs-init</code>. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html">Amazon ECS-optimized Linux AMI</a>
    # 		       </p>
    #
    # @!attribute type
    #   <p>The proxy type. The only supported value is <code>APPMESH</code>.</p>
    #
    #   Enum, one of: ["APPMESH"]
    #
    #   @return [String]
    #
    # @!attribute container_name
    #   <p>The name of the container that will serve as the App Mesh proxy.</p>
    #
    #   @return [String]
    #
    # @!attribute properties
    #   <p>The set of network configuration parameters to provide the Container Network Interface
    #   			(CNI) plugin, specified as key-value pairs.</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <code>IgnoredUID</code> - (Required) The user ID (UID) of the proxy
    #   					container as defined by the <code>user</code> parameter in a container
    #   					definition. This is used to ensure the proxy ignores its own traffic. If
    #   						<code>IgnoredGID</code> is specified, this field can be empty.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>IgnoredGID</code> - (Required) The group ID (GID) of the proxy
    #   					container as defined by the <code>user</code> parameter in a container
    #   					definition. This is used to ensure the proxy ignores its own traffic. If
    #   						<code>IgnoredUID</code> is specified, this field can be empty.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>AppPorts</code> - (Required) The list of ports that the
    #   					application uses. Network traffic to these ports is forwarded to the
    #   						<code>ProxyIngressPort</code> and <code>ProxyEgressPort</code>.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>ProxyIngressPort</code> - (Required) Specifies the port that
    #   					incoming traffic to the <code>AppPorts</code> is directed to.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>ProxyEgressPort</code> - (Required) Specifies the port that
    #   					outgoing traffic from the <code>AppPorts</code> is directed to.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>EgressIgnoredPorts</code> - (Required) The egress traffic going to
    #   					the specified ports is ignored and not redirected to the
    #   						<code>ProxyEgressPort</code>. It can be an empty list.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>EgressIgnoredIPs</code> - (Required) The egress traffic going to
    #   					the specified IP addresses is ignored and not redirected to the
    #   						<code>ProxyEgressPort</code>. It can be an empty list.</p>
    #   			         </li>
    #            </ul>
    #
    #   @return [Array<KeyValuePair>]
    #
    ProxyConfiguration = ::Struct.new(
      :type,
      :container_name,
      :properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ProxyConfigurationType
    #
    module ProxyConfigurationType
      # No documentation available.
      #
      APPMESH = "APPMESH"
    end

    # @!attribute name
    #   <p>The resource name for which to modify the account setting. If
    #   				<code>serviceLongArnFormat</code> is specified, the ARN for your Amazon ECS services is
    #   			affected. If <code>taskLongArnFormat</code> is specified, the ARN and resource ID for
    #   			your Amazon ECS tasks is affected. If <code>containerInstanceLongArnFormat</code> is
    #   			specified, the ARN and resource ID for your Amazon ECS container instances is affected. If
    #   				<code>awsvpcTrunking</code> is specified, the ENI limit for your Amazon ECS container
    #   			instances is affected. If <code>containerInsights</code> is specified, the default
    #   			setting for CloudWatch Container Insights for your clusters is affected.</p>
    #
    #   Enum, one of: ["serviceLongArnFormat", "taskLongArnFormat", "containerInstanceLongArnFormat", "awsvpcTrunking", "containerInsights"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The account setting value for the specified principal ARN. Accepted values are
    #   				<code>enabled</code> and <code>disabled</code>.</p>
    #
    #   @return [String]
    #
    PutAccountSettingDefaultInput = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute setting
    #   <p>The current setting for a resource.</p>
    #
    #   @return [Setting]
    #
    PutAccountSettingDefaultOutput = ::Struct.new(
      :setting,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The Amazon ECS resource name for which to modify the account setting. If
    #   				<code>serviceLongArnFormat</code> is specified, the ARN for your Amazon ECS services is
    #   			affected. If <code>taskLongArnFormat</code> is specified, the ARN and resource ID for
    #   			your Amazon ECS tasks is affected. If <code>containerInstanceLongArnFormat</code> is
    #   			specified, the ARN and resource ID for your Amazon ECS container instances is affected. If
    #   				<code>awsvpcTrunking</code> is specified, the elastic network interface (ENI) limit
    #   			for your Amazon ECS container instances is affected. If <code>containerInsights</code> is
    #   			specified, the default setting for CloudWatch Container Insights for your clusters is
    #   			affected.</p>
    #
    #   Enum, one of: ["serviceLongArnFormat", "taskLongArnFormat", "containerInstanceLongArnFormat", "awsvpcTrunking", "containerInsights"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The account setting value for the specified principal ARN. Accepted values are
    #   				<code>enabled</code> and <code>disabled</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute principal_arn
    #   <p>The ARN of the principal, which can be an IAM user, IAM role, or the root user. If you
    #   			specify the root user, it modifies the account setting for all IAM users, IAM roles, and
    #   			the root user of the account unless an IAM user or role explicitly overrides these
    #   			settings. If this field is omitted, the setting is changed only for the authenticated
    #   			user.</p>
    #   		       <note>
    #   			         <p>Federated users assume the account setting of the root user and can't have
    #   				explicit account settings set for them.</p>
    #   		       </note>
    #
    #   @return [String]
    #
    PutAccountSettingInput = ::Struct.new(
      :name,
      :value,
      :principal_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute setting
    #   <p>The current account setting for a resource.</p>
    #
    #   @return [Setting]
    #
    PutAccountSettingOutput = ::Struct.new(
      :setting,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that contains the resource to apply
    #   			attributes. If you do not specify a cluster, the default cluster is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>The attributes to apply to your resource. You can specify up to 10 custom attributes
    #   			for each resource. You can specify up to 10 attributes in a single call.</p>
    #
    #   @return [Array<Attribute>]
    #
    PutAttributesInput = ::Struct.new(
      :cluster,
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute attributes
    #   <p>The attributes applied to your resource.</p>
    #
    #   @return [Array<Attribute>]
    #
    PutAttributesOutput = ::Struct.new(
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster to modify the capacity provider
    #   			settings for. If you don't specify a cluster, the default cluster is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute capacity_providers
    #   <p>The name of one or more capacity providers to associate with the cluster.</p>
    #   		       <p>If specifying a capacity provider that uses an Auto Scaling group, the capacity
    #   			provider must already be created. New capacity providers can be created with the <a>CreateCapacityProvider</a> API operation.</p>
    #   		       <p>To use a Fargate capacity provider, specify either the <code>FARGATE</code> or
    #   				<code>FARGATE_SPOT</code> capacity providers. The Fargate capacity providers are
    #   			available to all accounts and only need to be associated with a cluster to be
    #   			used.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute default_capacity_provider_strategy
    #   <p>The capacity provider strategy to use by default for the cluster.</p>
    #   		       <p>When creating a service or running a task on a cluster, if no capacity provider or
    #   			launch type is specified then the default capacity provider strategy for the cluster is
    #   			used.</p>
    #   		       <p>A capacity provider strategy consists of one or more capacity providers along with the
    #   				<code>base</code> and <code>weight</code> to assign to them. A capacity provider
    #   			must be associated with the cluster to be used in a capacity provider strategy. The
    #   				<a>PutClusterCapacityProviders</a> API is used to associate a capacity
    #   			provider with a cluster. Only capacity providers with an <code>ACTIVE</code> or
    #   				<code>UPDATING</code> status can be used.</p>
    #   		       <p>If specifying a capacity provider that uses an Auto Scaling group, the capacity
    #   			provider must already be created. New capacity providers can be created with the <a>CreateCapacityProvider</a> API operation.</p>
    #   		       <p>To use a Fargate capacity provider, specify either the <code>FARGATE</code> or
    #   				<code>FARGATE_SPOT</code> capacity providers. The Fargate capacity providers are
    #   			available to all accounts and only need to be associated with a cluster to be
    #   			used.</p>
    #
    #   @return [Array<CapacityProviderStrategyItem>]
    #
    PutClusterCapacityProvidersInput = ::Struct.new(
      :cluster,
      :capacity_providers,
      :default_capacity_provider_strategy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>Details about the cluster.</p>
    #
    #   @return [Cluster]
    #
    PutClusterCapacityProvidersOutput = ::Struct.new(
      :cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster to register your container instance
    #   			with. If you do not specify a cluster, the default cluster is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute instance_identity_document
    #   <p>The instance identity document for the EC2 instance to register. This document can be
    #   			found by running the following command from the instance: <code>curl
    #   				http://169.254.169.254/latest/dynamic/instance-identity/document/</code>
    #   		       </p>
    #
    #   @return [String]
    #
    # @!attribute instance_identity_document_signature
    #   <p>The instance identity document signature for the EC2 instance to register. This
    #   			signature can be found by running the following command from the instance: <code>curl
    #   				http://169.254.169.254/latest/dynamic/instance-identity/signature/</code>
    #   		       </p>
    #
    #   @return [String]
    #
    # @!attribute total_resources
    #   <p>The resources available on the instance.</p>
    #
    #   @return [Array<Resource>]
    #
    # @!attribute version_info
    #   <p>The version information for the Amazon ECS container agent and Docker daemon that runs on
    #   			the container instance.</p>
    #
    #   @return [VersionInfo]
    #
    # @!attribute container_instance_arn
    #   <p>The ARN of the container instance (if it was previously registered).</p>
    #
    #   @return [String]
    #
    # @!attribute attributes
    #   <p>The container instance attributes that this container instance supports.</p>
    #
    #   @return [Array<Attribute>]
    #
    # @!attribute platform_devices
    #   <p>The devices that are available on the container instance. The only supported device
    #   			type is a GPU.</p>
    #
    #   @return [Array<PlatformDevice>]
    #
    # @!attribute tags
    #   <p>The metadata that you apply to the container instance to help you categorize and
    #   			organize them. Each tag consists of a key and an optional value. You define both.</p>
    #   		       <p>The following basic restrictions apply to tags:</p>
    #           <ul>
    #               <li>
    #                   <p>Maximum number of tags per resource - 50</p>
    #               </li>
    #               <li>
    #                   <p>For each resource, each tag key must be unique, and each tag key can have only
    #                       one value.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum key length - 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>Maximum value length - 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>If your tagging schema is used across multiple services and resources,
    #                       remember that other services may have restrictions on allowed characters.
    #                       Generally allowed characters are: letters, numbers, and spaces representable in
    #                       UTF-8, and the following characters: + - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                   <p>Tag keys and values are case-sensitive.</p>
    #               </li>
    #               <li>
    #                   <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase
    #                       combination of such as a prefix for either keys or values as it is reserved for
    #                       Amazon Web Services use. You cannot edit or delete tag keys or values with this prefix. Tags with
    #                       this prefix do not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Tag>]
    #
    RegisterContainerInstanceInput = ::Struct.new(
      :cluster,
      :instance_identity_document,
      :instance_identity_document_signature,
      :total_resources,
      :version_info,
      :container_instance_arn,
      :attributes,
      :platform_devices,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute container_instance
    #   <p>The container instance that was registered.</p>
    #
    #   @return [ContainerInstance]
    #
    RegisterContainerInstanceOutput = ::Struct.new(
      :container_instance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute family
    #   <p>You must specify a <code>family</code> for a task definition. You can use it track
    #   			multiple versions of the same task definition. The <code>family</code> is used as a name
    #   			for your task definition. Up to 255 letters (uppercase and lowercase), numbers, underscores, and hyphens are allowed.</p>
    #
    #   @return [String]
    #
    # @!attribute task_role_arn
    #   <p>The short name or full Amazon Resource Name (ARN) of the IAM role that containers in this task can
    #   			assume. All containers in this task are granted the permissions that are specified in
    #   			this role. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html">IAM Roles for
    #   				Tasks</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the task execution role that grants the Amazon ECS container agent
    #               permission to make Amazon Web Services API calls on your behalf. The task execution IAM role is required
    #               depending on the requirements of your task. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_execution_IAM_role.html">Amazon ECS task
    #                   execution IAM role</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute network_mode
    #   <p>The Docker networking mode to use for the containers in the task. The valid values are
    #                   <code>none</code>, <code>bridge</code>, <code>awsvpc</code>, and <code>host</code>.
    #               If no network mode is specified, the default is <code>bridge</code>.</p>
    #               <p>For Amazon ECS tasks on Fargate, the <code>awsvpc</code> network mode is required.
    #               For Amazon ECS tasks on Amazon EC2 Linux instances, any network mode can be used.  For Amazon ECS tasks on Amazon EC2 Windows instances, <code><default></code> or <code>awsvpc</code> can be used. If the network
    #               mode is set to <code>none</code>, you cannot specify port mappings in your container
    #               definitions, and the tasks containers do not have external connectivity. The
    #                   <code>host</code> and <code>awsvpc</code> network modes offer the highest networking
    #               performance for containers because they use the EC2 network stack instead of the
    #               virtualized network stack provided by the <code>bridge</code> mode.</p>
    #           <p>With the <code>host</code> and <code>awsvpc</code> network modes, exposed container
    #               ports are mapped directly to the corresponding host port (for the <code>host</code>
    #               network mode) or the attached elastic network interface port (for the
    #                   <code>awsvpc</code> network mode), so you cannot take advantage of dynamic host port
    #               mappings. </p>
    #               <important>
    #                           <p>When using the <code>host</code> network mode, you should not run
    #                               containers using the root user (UID 0). It is considered best practice
    #                               to use a non-root user.</p>
    #                       </important>
    #           <p>If the network mode is <code>awsvpc</code>, the task is allocated an elastic network
    #               interface, and you must specify a <a>NetworkConfiguration</a> value when you create
    #               a service or run a task with the task definition. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html">Task Networking</a> in the
    #                   <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #           <p>If the network mode is <code>host</code>, you cannot run multiple instantiations of the
    #               same task on a single container instance when port mappings are used.</p>
    #           <p>For more information, see <a href="https://docs.docker.com/engine/reference/run/ network-settings">Network
    #                   settings</a> in the <i>Docker run reference</i>.</p>
    #
    #   Enum, one of: ["bridge", "host", "awsvpc", "none"]
    #
    #   @return [String]
    #
    # @!attribute container_definitions
    #   <p>A list of container definitions in JSON format that describe the different containers
    #   			that make up your task.</p>
    #
    #   @return [Array<ContainerDefinition>]
    #
    # @!attribute volumes
    #   <p>A list of volume definitions in JSON format that containers in your task might
    #   			use.</p>
    #
    #   @return [Array<Volume>]
    #
    # @!attribute placement_constraints
    #   <p>An array of placement constraint objects to use for the task. You can specify a
    #   			maximum of 10 constraints for each task. This limit includes constraints in the task
    #   			definition and those specified at runtime.</p>
    #
    #   @return [Array<TaskDefinitionPlacementConstraint>]
    #
    # @!attribute requires_compatibilities
    #   <p>The task launch type that Amazon ECS validates the task definition against. A client
    #   			exception is returned if the task definition doesn't validate against the
    #   			compatibilities specified. If no value is specified, the parameter is omitted from the
    #   			response.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute cpu
    #   <p>The number of CPU units used by the task. It can be expressed as an integer using CPU
    #   			units (for example, <code>1024</code>) or as a string using vCPUs (for example, <code>1
    #   				vCPU</code> or <code>1 vcpu</code>) in a task definition. String values are
    #   			converted to an integer indicating the CPU units when the task definition is
    #   			registered.</p>
    #   		       <note>
    #   			         <p>Task-level CPU and memory parameters are ignored for Windows containers. We
    #   				recommend specifying container-level resources for Windows containers.</p>
    #   		       </note>
    #   		       <p>If you're using the EC2 launch type, this field is optional. Supported
    #   			values are between <code>128</code> CPU units (<code>0.125</code> vCPUs) and
    #   				<code>10240</code> CPU units (<code>10</code> vCPUs).</p>
    #   		       <p>If you're using the Fargate launch type, this field is required and you
    #   			must use one of the following values, which determines your range of supported values
    #   			for the <code>memory</code> parameter:</p>
    #   		       <p>The CPU units cannot be less than 1 vCPU when you use Windows containers on
    #   			Fargate.</p>
    #   		       <ul>
    #               <li>
    #                   <p>256 (.25 vCPU) - Available <code>memory</code> values: 512 (0.5 GB), 1024 (1 GB), 2048 (2 GB)</p>
    #               </li>
    #               <li>
    #                   <p>512 (.5 vCPU) - Available <code>memory</code> values: 1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB)</p>
    #               </li>
    #               <li>
    #                   <p>1024 (1 vCPU) - Available <code>memory</code> values: 2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB), 8192 (8 GB)</p>
    #               </li>
    #               <li>
    #                   <p>2048 (2 vCPU) - Available <code>memory</code> values: Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB)</p>
    #               </li>
    #               <li>
    #                   <p>4096 (4 vCPU) - Available <code>memory</code> values: Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB)</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute memory
    #   <p>The amount of memory (in MiB) used by the task. It can be expressed as an integer
    #   			using MiB (for example ,<code>1024</code>) or as a string using GB (for example,
    #   				<code>1GB</code> or <code>1 GB</code>) in a task definition. String values are
    #   			converted to an integer indicating the MiB when the task definition is
    #   			registered.</p>
    #   		       <note>
    #   			         <p>Task-level CPU and memory parameters are ignored for Windows containers. We
    #   				recommend specifying container-level resources for Windows containers.</p>
    #   		       </note>
    #   		       <p>If using the EC2 launch type, this field is optional.</p>
    #   		       <p>If using the Fargate launch type, this field is required and you must
    #   			use one of the following values. This determines your range of supported values for the
    #   				<code>cpu</code> parameter.</p>
    #   		       <p>The CPU units cannot be less than 1 vCPU when you use Windows containers on
    #   			Fargate.</p>
    #   		       <ul>
    #               <li>
    #                   <p>512 (0.5 GB), 1024 (1 GB), 2048 (2 GB) - Available <code>cpu</code> values: 256 (.25 vCPU)</p>
    #               </li>
    #               <li>
    #                   <p>1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB) - Available <code>cpu</code> values: 512 (.5 vCPU)</p>
    #               </li>
    #               <li>
    #                   <p>2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB), 8192 (8 GB) - Available <code>cpu</code> values: 1024 (1 vCPU)</p>
    #               </li>
    #               <li>
    #                   <p>Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB) - Available <code>cpu</code> values: 2048 (2 vCPU)</p>
    #               </li>
    #               <li>
    #                   <p>Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB) - Available <code>cpu</code> values: 4096 (4 vCPU)</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The metadata that you apply to the task definition to help you categorize and organize
    #   			them. Each tag consists of a key and an optional value. You define both of them.</p>
    #   		       <p>The following basic restrictions apply to tags:</p>
    #           <ul>
    #               <li>
    #                   <p>Maximum number of tags per resource - 50</p>
    #               </li>
    #               <li>
    #                   <p>For each resource, each tag key must be unique, and each tag key can have only
    #                       one value.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum key length - 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>Maximum value length - 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>If your tagging schema is used across multiple services and resources,
    #                       remember that other services may have restrictions on allowed characters.
    #                       Generally allowed characters are: letters, numbers, and spaces representable in
    #                       UTF-8, and the following characters: + - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                   <p>Tag keys and values are case-sensitive.</p>
    #               </li>
    #               <li>
    #                   <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase
    #                       combination of such as a prefix for either keys or values as it is reserved for
    #                       Amazon Web Services use. You cannot edit or delete tag keys or values with this prefix. Tags with
    #                       this prefix do not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute pid_mode
    #   <p>The process namespace to use for the containers in the task. The valid
    #                               values are <code>host</code> or <code>task</code>. If <code>host</code>
    #                               is specified, then all containers within the tasks that specified the
    #                                   <code>host</code> PID mode on the same container instance share the
    #                               same process namespace with the host Amazon EC2 instance. If <code>task</code> is
    #                               specified, all containers within the specified task share the same
    #                               process namespace. If no value is specified, the default is a private
    #                               namespace. For more information, see <a href="https://docs.docker.com/engine/reference/run/ pid-settings---pid">PID settings</a> in the <i>Docker run
    #                                   reference</i>.</p>
    #                           <p>If the <code>host</code> PID mode is used, be aware that there is a
    #                               heightened risk of undesired process namespace expose. For more
    #                               information, see <a href="https://docs.docker.com/engine/security/security/">Docker
    #                                   security</a>.</p>
    #            <note>
    #                                   <p>This parameter is not supported for Windows containers or tasks run on Fargate.</p>
    #                                </note>
    #
    #   Enum, one of: ["host", "task"]
    #
    #   @return [String]
    #
    # @!attribute ipc_mode
    #   <p>The IPC resource namespace to use for the containers in the task. The valid values are
    #                   <code>host</code>, <code>task</code>, or <code>none</code>. If <code>host</code> is
    #               specified, then all containers within the tasks that specified the <code>host</code> IPC
    #               mode on the same container instance share the same IPC resources with the host Amazon EC2
    #               instance. If <code>task</code> is specified, all containers within the specified task
    #               share the same IPC resources. If <code>none</code> is specified, then IPC resources
    #               within the containers of a task are private and not shared with other containers in a
    #               task or on the container instance. If no value is specified, then the IPC resource
    #               namespace sharing depends on the Docker daemon setting on the container instance. For
    #               more information, see <a href="https://docs.docker.com/engine/reference/run/ ipc-settings---ipc">IPC
    #                   settings</a> in the <i>Docker run reference</i>.</p>
    #           <p>If the <code>host</code> IPC mode is used, be aware that there is a heightened risk of
    #               undesired IPC namespace expose. For more information, see <a href="https://docs.docker.com/engine/security/security/">Docker
    #               security</a>.</p>
    #           <p>If you are setting namespaced kernel parameters using <code>systemControls</code> for
    #               the containers in the task, the following will apply to your IPC resource namespace. For
    #               more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html">System
    #                   Controls</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #           <ul>
    #               <li>
    #                   <p>For tasks that use the <code>host</code> IPC mode, IPC namespace related
    #                           <code>systemControls</code> are not supported.</p>
    #               </li>
    #               <li>
    #                   <p>For tasks that use the <code>task</code> IPC mode, IPC namespace related
    #                           <code>systemControls</code> will apply to all containers within a
    #                       task.</p>
    #               </li>
    #            </ul>
    #            <note>
    #                                   <p>This parameter is not supported for Windows containers or tasks run on Fargate.</p>
    #                                </note>
    #
    #   Enum, one of: ["host", "task", "none"]
    #
    #   @return [String]
    #
    # @!attribute proxy_configuration
    #   <p>The configuration details for the App Mesh proxy.</p>
    #   		       <p>For tasks hosted on Amazon EC2 instances, the container instances require at least version
    #   				<code>1.26.0</code> of the container agent and at least version
    #   				<code>1.26.0-1</code> of the <code>ecs-init</code> package to use a proxy
    #   			configuration. If your container instances are launched from the Amazon ECS-optimized
    #   			AMI version <code>20190301</code> or later, then they contain the required versions of
    #   			the container agent and <code>ecs-init</code>. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-ami-versions.html">Amazon ECS-optimized AMI versions</a> in the
    #   			<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [ProxyConfiguration]
    #
    # @!attribute inference_accelerators
    #   <p>The Elastic Inference accelerators to use for the containers in the task.</p>
    #
    #   @return [Array<InferenceAccelerator>]
    #
    # @!attribute ephemeral_storage
    #   <p>The amount of ephemeral storage to allocate for the task. This parameter is used to
    #   			expand the total amount of ephemeral storage available, beyond the default amount, for
    #   			tasks hosted on Fargate. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/userguide/using_data_volumes.html">Fargate task
    #   				storage</a> in the <i>Amazon ECS User Guide for Fargate</i>.</p>
    #   		       <note>
    #   			         <p>This parameter is only supported for tasks hosted on Fargate using
    #   				the following platform versions:</p>
    #   			         <ul>
    #                  <li>
    #   					             <p>Linux platform version <code>1.4.0</code> or later.</p>
    #   				           </li>
    #                  <li>
    #   					             <p>Windows platform version <code>1.0.0</code> or later.</p>
    #   				           </li>
    #               </ul>
    #   		       </note>
    #
    #   @return [EphemeralStorage]
    #
    # @!attribute runtime_platform
    #   <p>The operating system that your tasks definitions run on. A platform family is
    #   			specified only for tasks using the Fargate launch type. </p>
    #   		       <p>When you specify a task definition in a service, this value must match the
    #   				<code>runtimePlatform</code> value of the service.</p>
    #
    #   @return [RuntimePlatform]
    #
    RegisterTaskDefinitionInput = ::Struct.new(
      :family,
      :task_role_arn,
      :execution_role_arn,
      :network_mode,
      :container_definitions,
      :volumes,
      :placement_constraints,
      :requires_compatibilities,
      :cpu,
      :memory,
      :tags,
      :pid_mode,
      :ipc_mode,
      :proxy_configuration,
      :inference_accelerators,
      :ephemeral_storage,
      :runtime_platform,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_definition
    #   <p>The full description of the registered task definition.</p>
    #
    #   @return [TaskDefinition]
    #
    # @!attribute tags
    #   <p>The list of tags associated with the task definition.</p>
    #
    #   @return [Array<Tag>]
    #
    RegisterTaskDefinitionOutput = ::Struct.new(
      :task_definition,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The repository credentials for private registry authentication.</p>
    #
    # @!attribute credentials_parameter
    #   <p>The Amazon Resource Name (ARN) of the secret containing the private repository
    #   			credentials.</p>
    #   		       <note>
    #   			         <p>When you use the Amazon ECS API, CLI, or Amazon Web Services SDK, if the secret exists in the same
    #   				Region as the task that you're launching then you can use either the full ARN or the
    #   				name of the secret. When you use the Amazon Web Services Management Console, you must specify the full ARN of the
    #   				secret.</p>
    #   		       </note>
    #
    #   @return [String]
    #
    RepositoryCredentials = ::Struct.new(
      :credentials_parameter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the resources available for a container instance.</p>
    #
    # @!attribute name
    #   <p>The name of the resource, such as <code>CPU</code>, <code>MEMORY</code>,
    #   				<code>PORTS</code>, <code>PORTS_UDP</code>, or a user-defined resource.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the resource. Valid values: <code>INTEGER</code>, <code>DOUBLE</code>,
    #   				<code>LONG</code>, or <code>STRINGSET</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute double_value
    #   <p>When the <code>doubleValue</code> type is set, the value of the resource must be a
    #   			double precision floating-point type.</p>
    #
    #   @return [Float]
    #
    # @!attribute long_value
    #   <p>When the <code>longValue</code> type is set, the value of the resource must be an
    #   			extended precision floating-point type.</p>
    #
    #   @return [Integer]
    #
    # @!attribute integer_value
    #   <p>When the <code>integerValue</code> type is set, the value of the resource must be an
    #   			integer.</p>
    #
    #   @return [Integer]
    #
    # @!attribute string_set_value
    #   <p>When the <code>stringSetValue</code> type is set, the value of the resource must be a
    #   			string type.</p>
    #
    #   @return [Array<String>]
    #
    Resource = ::Struct.new(
      :name,
      :type,
      :double_value,
      :long_value,
      :integer_value,
      :string_set_value,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.double_value ||= 0
        self.long_value ||= 0
        self.integer_value ||= 0
      end
    end

    # <p>The specified resource is in-use and can't be removed.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource wasn't found.</p>
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

    # <p>The type and amount of a resource to assign to a container. The supported resource
    # 			types are GPUs and Elastic Inference accelerators. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-gpu.html">Working with
    # 				GPUs on Amazon ECS</a> or <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-inference.html">Working with
    # 				Amazon Elastic Inference on Amazon ECS</a> in the
    # 				<i>Amazon Elastic Container Service Developer Guide</i>
    #          </p>
    #
    # @!attribute value
    #   <p>The value for the specified resource type.</p>
    #   		       <p>If the <code>GPU</code> type is used, the value is the number of physical
    #   				<code>GPUs</code> the Amazon ECS container agent reserves for the container. The number
    #   			of GPUs that's reserved for all containers in a task can't exceed the number of
    #   			available GPUs on the container instance that the task is launched on.</p>
    #   		       <p>If the <code>InferenceAccelerator</code> type is used, the <code>value</code> matches
    #   			the <code>deviceName</code> for an <a>InferenceAccelerator</a> specified in a
    #   			task definition.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of resource to assign to a container. The supported values are
    #   				<code>GPU</code> or <code>InferenceAccelerator</code>.</p>
    #
    #   Enum, one of: ["GPU", "InferenceAccelerator"]
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
      INFERENCE_ACCELERATOR = "InferenceAccelerator"
    end

    # @!attribute capacity_provider_strategy
    #   <p>The capacity provider strategy to use for the task.</p>
    #   		       <p>If a <code>capacityProviderStrategy</code> is specified, the <code>launchType</code>
    #   			parameter must be omitted. If no <code>capacityProviderStrategy</code> or
    #   				<code>launchType</code> is specified, the
    #   				<code>defaultCapacityProviderStrategy</code> for the cluster is used.</p>
    #   		       <p>When you use cluster auto scaling, you must specify
    #   				<code>capacityProviderStrategy</code> and not <code>launchType</code>. </p>
    #   		       <p>A capacity provider strategy may contain a maximum of 6 capacity providers.</p>
    #
    #   @return [Array<CapacityProviderStrategyItem>]
    #
    # @!attribute cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster to run your task on.
    #   			If you do not specify a cluster, the default cluster is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute count
    #   <p>The number of instantiations of the specified task to place on your cluster. You can
    #   			specify up to 10 tasks for each call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute enable_ecs_managed_tags
    #   <p>Specifies whether to use Amazon ECS managed tags for the task. For more information, see
    #   				<a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html">Tagging Your Amazon ECS
    #   				Resources</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_execute_command
    #   <p>Determines whether to use the execute command functionality for the containers in
    #   			this task. If <code>true</code>, this enables execute command functionality on all
    #   			containers in the task.</p>
    #   		       <p>If <code>true</code>, then the task definition must have a task role, or you must
    #   			provide one as an override.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute group
    #   <p>The name of the task group to associate with the task. The default value is the family
    #   			name of the task definition (for example, <code>family:my-family-name</code>).</p>
    #
    #   @return [String]
    #
    # @!attribute launch_type
    #   <p>The infrastructure to run your standalone task on. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html">Amazon ECS
    #   				launch types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #   		       <p>The <code>FARGATE</code> launch type runs your tasks on Fargate On-Demand
    #   			infrastructure.</p>
    #   		       <note>
    #   			         <p>Fargate Spot infrastructure is available for use but a capacity provider
    #   				strategy must be used. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/userguide/fargate-capacity-providers.html">Fargate capacity providers</a> in the
    #   					<i>Amazon ECS User Guide for Fargate</i>.</p>
    #   		       </note>
    #   		       <p>The <code>EC2</code> launch type runs your tasks on Amazon EC2 instances registered to your
    #   			cluster.</p>
    #   		       <p>The <code>EXTERNAL</code> launch type runs your tasks on your on-premises server or
    #   			virtual machine (VM) capacity registered to your cluster.</p>
    #   		       <p>A task can use either a launch type or a capacity provider strategy. If a
    #   				<code>launchType</code> is specified, the <code>capacityProviderStrategy</code>
    #   			parameter must be omitted.</p>
    #   		       <p>When you use cluster auto scaling, you must specify
    #   				<code>capacityProviderStrategy</code> and not <code>launchType</code>. </p>
    #
    #   Enum, one of: ["EC2", "FARGATE", "EXTERNAL"]
    #
    #   @return [String]
    #
    # @!attribute network_configuration
    #   <p>The network configuration for the task. This parameter is required for task
    #   			definitions that use the <code>awsvpc</code> network mode to receive their own elastic
    #   			network interface, and it isn't supported for other network modes. For more information,
    #   			see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html">Task networking</a>
    #   			in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [NetworkConfiguration]
    #
    # @!attribute overrides
    #   <p>A list of container overrides in JSON format that specify the name of a container in
    #   			the specified task definition and the overrides it should receive. You can override the
    #   			default command for a container (that's specified in the task definition or Docker
    #   			image) with a <code>command</code> override. You can also override existing environment
    #   			variables (that are specified in the task definition or Docker image) on a container or
    #   			add new environment variables to it with an <code>environment</code> override.</p>
    #   		       <p>A total of 8192 characters are allowed for overrides. This limit includes the JSON
    #   			formatting characters of the override structure.</p>
    #
    #   @return [TaskOverride]
    #
    # @!attribute placement_constraints
    #   <p>An array of placement constraint objects to use for the task. You can specify up to 10
    #   			constraints for each task (including constraints in the task definition and those
    #   			specified at runtime).</p>
    #
    #   @return [Array<PlacementConstraint>]
    #
    # @!attribute placement_strategy
    #   <p>The placement strategy objects to use for the task. You can specify a maximum of 5
    #   			strategy rules for each task.</p>
    #
    #   @return [Array<PlacementStrategy>]
    #
    # @!attribute platform_version
    #   <p>The platform version the task uses. A platform version is only specified for tasks
    #   			hosted on Fargate. If one isn't specified, the <code>LATEST</code>
    #   			platform version is used. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html">Fargate platform
    #   				versions</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute propagate_tags
    #   <p>Specifies whether to propagate the tags from the task definition to the task. If no
    #   			value is specified, the tags aren't propagated. Tags can only be propagated to the task
    #   			during task creation. To add tags to a task after task creation, use the <a>TagResource</a> API action.</p>
    #   		       <note>
    #   			         <p>An error will be received if you specify the <code>SERVICE</code> option when
    #   				running a task.</p>
    #   		       </note>
    #
    #   Enum, one of: ["TASK_DEFINITION", "SERVICE", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute reference_id
    #   <p>The reference ID to use for the task. The reference ID can have a maximum length of
    #   			1024 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute started_by
    #   <p>An optional tag specified when a task is started. For example, if you automatically
    #   			trigger a task to run a batch process job, you could apply a unique identifier for that
    #   			job to your task with the <code>startedBy</code> parameter. You can then identify which
    #   			tasks belong to that job by filtering the results of a <a>ListTasks</a> call
    #   			with the <code>startedBy</code> value. Up to 36 letters (uppercase and lowercase),
    #   			numbers, hyphens (-), and underscores (_) are allowed.</p>
    #   		       <p>If a task is started by an Amazon ECS service, then the <code>startedBy</code> parameter
    #   			contains the deployment ID of the service that starts it.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The metadata that you apply to the task to help you categorize and organize them. Each
    #   			tag consists of a key and an optional value, both of which you define.</p>
    #   		       <p>The following basic restrictions apply to tags:</p>
    #           <ul>
    #               <li>
    #                   <p>Maximum number of tags per resource - 50</p>
    #               </li>
    #               <li>
    #                   <p>For each resource, each tag key must be unique, and each tag key can have only
    #                       one value.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum key length - 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>Maximum value length - 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>If your tagging schema is used across multiple services and resources,
    #                       remember that other services may have restrictions on allowed characters.
    #                       Generally allowed characters are: letters, numbers, and spaces representable in
    #                       UTF-8, and the following characters: + - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                   <p>Tag keys and values are case-sensitive.</p>
    #               </li>
    #               <li>
    #                   <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase
    #                       combination of such as a prefix for either keys or values as it is reserved for
    #                       Amazon Web Services use. You cannot edit or delete tag keys or values with this prefix. Tags with
    #                       this prefix do not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute task_definition
    #   <p>The <code>family</code> and <code>revision</code> (<code>family:revision</code>) or
    #   			full ARN of the task definition to run. If a <code>revision</code> isn't specified,
    #   			the latest <code>ACTIVE</code> revision is used.</p>
    #   		       <p>When you create an IAM policy for run-task, you can set the resource to be the latest task definition revision, or a specific revision.</p>
    #   		       <p>The full ARN value must match the value that you specified as the <code>Resource</code> of
    #   			the IAM principal's permissions policy.</p>
    #   		       <p>When you specify the policy resource as the latest task definition version (by setting the
    #   				<code>Resource</code> in the policy to
    #   				<code>arn:aws:ecs:us-east-1:111122223333:task-definition/TaskFamilyName</code>),
    #   			then set this value to
    #   				<code>arn:aws:ecs:us-east-1:111122223333:task-definition/TaskFamilyName</code>.</p>
    #   		       <p>When you specify the policy resource as a specific task definition version (by setting the
    #   				<code>Resource</code> in the policy to
    #   				<code>arn:aws:ecs:us-east-1:111122223333:task-definition/TaskFamilyName:1</code> or
    #   				<code>arn:aws:ecs:us-east-1:111122223333:task-definition/TaskFamilyName:*</code>),
    #   			then set this value to
    #   				<code>arn:aws:ecs:us-east-1:111122223333:task-definition/TaskFamilyName:1</code>.</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/security_iam_service-with-iam.html security_iam_service-with-iam-id-based-policies-resources">Policy Resources for Amazon ECS</a> in the Amazon Elastic Container Service
    #   			developer Guide.</p>
    #
    #   @return [String]
    #
    RunTaskInput = ::Struct.new(
      :capacity_provider_strategy,
      :cluster,
      :count,
      :enable_ecs_managed_tags,
      :enable_execute_command,
      :group,
      :launch_type,
      :network_configuration,
      :overrides,
      :placement_constraints,
      :placement_strategy,
      :platform_version,
      :propagate_tags,
      :reference_id,
      :started_by,
      :tags,
      :task_definition,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enable_ecs_managed_tags ||= false
        self.enable_execute_command ||= false
      end
    end

    # @!attribute tasks
    #   <p>A full description of the tasks that were run. The tasks that were successfully placed
    #   			on your cluster are described here.</p>
    #
    #   @return [Array<Task>]
    #
    # @!attribute failures
    #   <p>Any failures associated with the call.</p>
    #
    #   @return [Array<Failure>]
    #
    RunTaskOutput = ::Struct.new(
      :tasks,
      :failures,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the platform for the Amazon ECS service or task.</p>
    # 		       <p>For more informataion about <code>RuntimePlatform</code>, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html#runtime-platform">RuntimePlatform</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @!attribute cpu_architecture
    #   <p>The CPU architecture.</p>
    #   		       <p>You can run your Linux tasks on an ARM-based platform by setting the value  to <code>ARM64</code>. This option is avaiable
    #   			for tasks that run on Linuc Amazon EC2 instance or Linux containers on Fargate.</p>
    #
    #   Enum, one of: ["X86_64", "ARM64"]
    #
    #   @return [String]
    #
    # @!attribute operating_system_family
    #   <p>The operating system.</p>
    #
    #   Enum, one of: ["WINDOWS_SERVER_2019_FULL", "WINDOWS_SERVER_2019_CORE", "WINDOWS_SERVER_2016_FULL", "WINDOWS_SERVER_2004_CORE", "WINDOWS_SERVER_2022_CORE", "WINDOWS_SERVER_2022_FULL", "WINDOWS_SERVER_20H2_CORE", "LINUX"]
    #
    #   @return [String]
    #
    RuntimePlatform = ::Struct.new(
      :cpu_architecture,
      :operating_system_family,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A floating-point percentage of the desired number of tasks to place and keep running
    # 			in the task set.</p>
    #
    # @!attribute value
    #   <p>The value, specified as a percent total of a service's <code>desiredCount</code>, to
    #   			scale the task set. Accepted values are numbers between 0 and 100.</p>
    #
    #   @return [Float]
    #
    # @!attribute unit
    #   <p>The unit of measure for the scale value.</p>
    #
    #   Enum, one of: ["PERCENT"]
    #
    #   @return [String]
    #
    Scale = ::Struct.new(
      :value,
      :unit,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.value ||= 0
      end
    end

    # Includes enum constants for ScaleUnit
    #
    module ScaleUnit
      # No documentation available.
      #
      PERCENT = "PERCENT"
    end

    # Includes enum constants for SchedulingStrategy
    #
    module SchedulingStrategy
      # No documentation available.
      #
      REPLICA = "REPLICA"

      # No documentation available.
      #
      DAEMON = "DAEMON"
    end

    # Includes enum constants for Scope
    #
    module Scope
      # No documentation available.
      #
      TASK = "task"

      # No documentation available.
      #
      SHARED = "shared"
    end

    # <p>An object representing the secret to expose to your container. Secrets can be exposed
    # 			to a container in the following ways:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>To inject sensitive data into your containers as environment variables, use
    # 					the <code>secrets</code> container definition parameter.</p>
    # 			         </li>
    #             <li>
    # 				           <p>To reference sensitive information in the log configuration of a container,
    # 					use the <code>secretOptions</code> container definition parameter.</p>
    # 			         </li>
    #          </ul>
    # 		       <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/specifying-sensitive-data.html">Specifying
    # 				Sensitive Data</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @!attribute name
    #   <p>The name of the secret.</p>
    #
    #   @return [String]
    #
    # @!attribute value_from
    #   <p>The secret to expose to the container. The supported values are either the full ARN of
    #   			the Secrets Manager secret or the full ARN of the parameter in the SSM Parameter Store.</p>
    #   		       <p>For information about the require Identity and Access Management permissions, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/specifying-sensitive-data-secrets.html secrets-iam">Required IAM permissions for Amazon ECS secrets</a> (for Secrets Manager) or <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/specifying-sensitive-data-parameters.html">Required IAM permissions for Amazon ECS secrets</a> (for Systems Manager Parameter store) in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #   		       <note>
    #   			         <p>If the SSM Parameter Store parameter exists in the same Region as the task
    #   				you're launching, then you can use either the full ARN or name of the parameter. If
    #   				the parameter exists in a different Region, then the full ARN must be
    #   				specified.</p>
    #   		       </note>
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

    # <p>Details on a service within a cluster</p>
    #
    # @!attribute service_arn
    #   <p>The ARN that identifies the service. The ARN contains the <code>arn:aws:ecs</code> namespace, followed by the Region of the service, the Amazon Web Services account ID of the service owner, the <code>service</code> namespace, and then the service name. For example, <code>arn:aws:ecs:region:012345678910:service/my-service</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute service_name
    #   <p>The name of your service. Up to 255 letters (uppercase and lowercase), numbers, underscores, and hyphens are allowed. Service names must be unique within
    #   			a cluster. However, you can have similarly named services in multiple clusters within a
    #   			Region or across multiple Regions.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster that hosts the service.</p>
    #
    #   @return [String]
    #
    # @!attribute load_balancers
    #   <p>A list of Elastic Load Balancing load balancer objects. It contains the load balancer name, the
    #   			container name, and the container port to access from the load balancer. The container
    #   			name is as it appears in a container definition.</p>
    #
    #   @return [Array<LoadBalancer>]
    #
    # @!attribute service_registries
    #   <p>The details for the service discovery registries to assign to this service. For more
    #   			information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html">Service
    #   				Discovery</a>.</p>
    #
    #   @return [Array<ServiceRegistry>]
    #
    # @!attribute status
    #   <p>The status of the service. The valid values are <code>ACTIVE</code>,
    #   				<code>DRAINING</code>, or <code>INACTIVE</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute desired_count
    #   <p>The desired number of instantiations of the task definition to keep running on the
    #   			service. This value is specified when the service is created with <a>CreateService</a>, and it can be modified with <a>UpdateService</a>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute running_count
    #   <p>The number of tasks in the cluster that are in the <code>RUNNING</code> state.</p>
    #
    #   @return [Integer]
    #
    # @!attribute pending_count
    #   <p>The number of tasks in the cluster that are in the <code>PENDING</code> state.</p>
    #
    #   @return [Integer]
    #
    # @!attribute launch_type
    #   <p>The launch type the service is using. When using the DescribeServices API, this field
    #   			is omitted if the service was created using a capacity provider strategy.</p>
    #
    #   Enum, one of: ["EC2", "FARGATE", "EXTERNAL"]
    #
    #   @return [String]
    #
    # @!attribute capacity_provider_strategy
    #   <p>The capacity provider strategy the service uses. When using the DescribeServices API,
    #   			this field is omitted if the service was created using a launch type.</p>
    #
    #   @return [Array<CapacityProviderStrategyItem>]
    #
    # @!attribute platform_version
    #   <p>The platform version to run your service on. A platform version is only specified for
    #   			tasks that are hosted on Fargate. If one isn't specified, the <code>LATEST</code>
    #   			platform version is used. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html">Fargate Platform
    #   				Versions</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute platform_family
    #   <p>The operating system that your tasks in the service run on. A platform family is
    #   			specified only for tasks using the Fargate launch type. </p>
    #   		       <p> All tasks that run as part of this service must use the same
    #   				<code>platformFamily</code> value as the service (for example,
    #   			<code>LINUX</code>).</p>
    #
    #   @return [String]
    #
    # @!attribute task_definition
    #   <p>The task definition to use for tasks in the service. This value is specified when the
    #   			service is created with <a>CreateService</a>, and it can be modified with
    #   				<a>UpdateService</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_configuration
    #   <p>Optional deployment parameters that control how many tasks run during the deployment
    #   			and the ordering of stopping and starting tasks.</p>
    #
    #   @return [DeploymentConfiguration]
    #
    # @!attribute task_sets
    #   <p>Information about a set of Amazon ECS tasks in either an CodeDeploy or an <code>EXTERNAL</code>
    #   			deployment. An Amazon ECS task set includes details such as the desired number of tasks, how
    #   			many tasks are running, and whether the task set serves production traffic.</p>
    #
    #   @return [Array<TaskSet>]
    #
    # @!attribute deployments
    #   <p>The current state of deployments for the service.</p>
    #
    #   @return [Array<Deployment>]
    #
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that's associated with the service. It allows the Amazon ECS
    #   			container agent to register container instances with an Elastic Load Balancing load balancer.</p>
    #
    #   @return [String]
    #
    # @!attribute events
    #   <p>The event stream for your service. A maximum of 100 of the latest events are
    #   			displayed.</p>
    #
    #   @return [Array<ServiceEvent>]
    #
    # @!attribute created_at
    #   <p>The Unix timestamp for the time when the service was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute placement_constraints
    #   <p>The placement constraints for the tasks in the service.</p>
    #
    #   @return [Array<PlacementConstraint>]
    #
    # @!attribute placement_strategy
    #   <p>The placement strategy that determines how tasks for the service are placed.</p>
    #
    #   @return [Array<PlacementStrategy>]
    #
    # @!attribute network_configuration
    #   <p>The VPC subnet and security group configuration for tasks that receive their own
    #               elastic network interface by using the <code>awsvpc</code> networking mode.</p>
    #
    #   @return [NetworkConfiguration]
    #
    # @!attribute health_check_grace_period_seconds
    #   <p>The period of time, in seconds, that the Amazon ECS service scheduler ignores unhealthy
    #   			Elastic Load Balancing target health checks after a task has first started.</p>
    #
    #   @return [Integer]
    #
    # @!attribute scheduling_strategy
    #   <p>The scheduling strategy to use for the service. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html">Services</a>.</p>
    #   		       <p>There are two service scheduler strategies available.</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <code>REPLICA</code>-The replica scheduling strategy places and
    #   					maintains the desired number of tasks across your cluster. By default, the
    #   					service scheduler spreads tasks across Availability Zones. You can use task
    #   					placement strategies and constraints to customize task placement
    #   					decisions.</p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>DAEMON</code>-The daemon scheduling strategy deploys exactly one task on each
    #   					active container instance. This task meets all of the task placement constraints
    #   					that you specify in your cluster. The service scheduler also evaluates the task
    #   					placement constraints for running tasks. It stop tasks that don't meet the
    #   					placement constraints.</p>
    #   				           <note>
    #   					             <p>Fargate tasks don't support the <code>DAEMON</code>
    #   						scheduling strategy.</p>
    #   				           </note>
    #   			         </li>
    #            </ul>
    #
    #   Enum, one of: ["REPLICA", "DAEMON"]
    #
    #   @return [String]
    #
    # @!attribute deployment_controller
    #   <p>The deployment controller type the service is using. When using the DescribeServices
    #   			API, this field is omitted if the service uses the <code>ECS</code> deployment
    #   			controller type.</p>
    #
    #   @return [DeploymentController]
    #
    # @!attribute tags
    #   <p>The metadata that you apply to the service to help you categorize and organize them.
    #   			Each tag consists of a key and an optional value. You define bot the key and
    #   			value.</p>
    #   		       <p>The following basic restrictions apply to tags:</p>
    #           <ul>
    #               <li>
    #                   <p>Maximum number of tags per resource - 50</p>
    #               </li>
    #               <li>
    #                   <p>For each resource, each tag key must be unique, and each tag key can have only
    #                       one value.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum key length - 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>Maximum value length - 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>If your tagging schema is used across multiple services and resources,
    #                       remember that other services may have restrictions on allowed characters.
    #                       Generally allowed characters are: letters, numbers, and spaces representable in
    #                       UTF-8, and the following characters: + - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                   <p>Tag keys and values are case-sensitive.</p>
    #               </li>
    #               <li>
    #                   <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase
    #                       combination of such as a prefix for either keys or values as it is reserved for
    #                       Amazon Web Services use. You cannot edit or delete tag keys or values with this prefix. Tags with
    #                       this prefix do not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute created_by
    #   <p>The principal that created the service.</p>
    #
    #   @return [String]
    #
    # @!attribute enable_ecs_managed_tags
    #   <p>Determines whether to use Amazon ECS managed tags for the tasks in the service. For more
    #   			information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html">Tagging Your Amazon ECS
    #   				Resources</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute propagate_tags
    #   <p>Determines whether to propagate the tags from the task definition or the service to
    #   			the task. If no value is specified, the tags aren't propagated.</p>
    #
    #   Enum, one of: ["TASK_DEFINITION", "SERVICE", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute enable_execute_command
    #   <p>Determines whether the execute command functionality is enabled for the service. If
    #   				<code>true</code>, the execute command functionality is enabled for all containers
    #   			in tasks as part of the service.</p>
    #
    #   @return [Boolean]
    #
    Service = ::Struct.new(
      :service_arn,
      :service_name,
      :cluster_arn,
      :load_balancers,
      :service_registries,
      :status,
      :desired_count,
      :running_count,
      :pending_count,
      :launch_type,
      :capacity_provider_strategy,
      :platform_version,
      :platform_family,
      :task_definition,
      :deployment_configuration,
      :task_sets,
      :deployments,
      :role_arn,
      :events,
      :created_at,
      :placement_constraints,
      :placement_strategy,
      :network_configuration,
      :health_check_grace_period_seconds,
      :scheduling_strategy,
      :deployment_controller,
      :tags,
      :created_by,
      :enable_ecs_managed_tags,
      :propagate_tags,
      :enable_execute_command,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.desired_count ||= 0
        self.running_count ||= 0
        self.pending_count ||= 0
        self.enable_ecs_managed_tags ||= false
        self.enable_execute_command ||= false
      end
    end

    # <p>The details for an event that's associated with a service.</p>
    #
    # @!attribute id
    #   <p>The ID string for the event.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The Unix timestamp for the time when the event was triggered.</p>
    #
    #   @return [Time]
    #
    # @!attribute message
    #   <p>The event message.</p>
    #
    #   @return [String]
    #
    ServiceEvent = ::Struct.new(
      :id,
      :created_at,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ServiceField
    #
    module ServiceField
      # No documentation available.
      #
      TAGS = "TAGS"
    end

    # <p>The specified service isn't active. You can't update a service that's inactive. If you
    # 			have previously deleted a service, you can re-create it with <a>CreateService</a>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceNotActiveException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified service wasn't found. You can view your available services with <a>ListServices</a>. Amazon ECS services are cluster specific and Region
    # 			specific.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details for the service registry.</p>
    # 		       <p>Each service may be associated with one service registry. Multiple service registries for
    # 			each service are not supported.</p>
    # 		       <p>When you add, update, or remove the service registries configuration, Amazon ECS starts a
    # 			new deployment. New tasks are registered and deregistered to the updated service
    # 			registry configuration.</p>
    #
    # @!attribute registry_arn
    #   <p>The Amazon Resource Name (ARN) of the service registry. The currently supported service registry is
    #   			Cloud Map. For more information, see <a href="https://docs.aws.amazon.com/cloud-map/latest/api/API_CreateService.html">CreateService</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute port
    #   <p>The port value used if your service discovery service specified an SRV record. This
    #   			field might be used if both the <code>awsvpc</code> network mode and SRV records are
    #   			used.</p>
    #
    #   @return [Integer]
    #
    # @!attribute container_name
    #   <p>The container name value to be used for your service discovery service. It's already
    #   			specified in the task definition. If the task definition that your service task
    #   			specifies uses the <code>bridge</code> or <code>host</code> network mode, you must
    #   			specify a <code>containerName</code> and <code>containerPort</code> combination from the
    #   			task definition. If the task definition that your service task specifies uses the
    #   				<code>awsvpc</code> network mode and a type SRV DNS record is used, you must specify
    #   			either a <code>containerName</code> and <code>containerPort</code> combination or a
    #   				<code>port</code> value. However, you can't specify both.</p>
    #
    #   @return [String]
    #
    # @!attribute container_port
    #   <p>The port value to be used for your service discovery service. It's already specified
    #   			in the task definition. If the task definition your service task specifies uses the
    #   				<code>bridge</code> or <code>host</code> network mode, you must specify a
    #   				<code>containerName</code> and <code>containerPort</code> combination from the task
    #   			definition. If the task definition your service task specifies uses the
    #   				<code>awsvpc</code> network mode and a type SRV DNS record is used, you must specify
    #   			either a <code>containerName</code> and <code>containerPort</code> combination or a
    #   				<code>port</code> value. However, you can't specify both.</p>
    #
    #   @return [Integer]
    #
    ServiceRegistry = ::Struct.new(
      :registry_arn,
      :port,
      :container_name,
      :container_port,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details for the execute command session.</p>
    #
    # @!attribute session_id
    #   <p>The ID of the execute command session.</p>
    #
    #   @return [String]
    #
    # @!attribute stream_url
    #   <p>A URL
    #   						to the managed agent on the container that the SSM Session Manager client
    #   			uses to send commands and receive output from the container.</p>
    #
    #   @return [String]
    #
    # @!attribute token_value
    #   <p>An encrypted token value containing session and caller information. It's used to
    #   			authenticate the connection to the container.</p>
    #
    #   @return [String]
    #
    Session = ::Struct.new(
      :session_id,
      :stream_url,
      :token_value,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ECS::Types::Session "\
          "session_id=#{session_id || 'nil'}, "\
          "stream_url=#{stream_url || 'nil'}, "\
          "token_value=\"[SENSITIVE]\">"
      end
    end

    # <p>The current account setting for a resource.</p>
    #
    # @!attribute name
    #   <p>The Amazon ECS resource name.</p>
    #
    #   Enum, one of: ["serviceLongArnFormat", "taskLongArnFormat", "containerInstanceLongArnFormat", "awsvpcTrunking", "containerInsights"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>Determines whether the account setting is enabled or disabled for the specified
    #   			resource.</p>
    #
    #   @return [String]
    #
    # @!attribute principal_arn
    #   <p>The ARN of the principal. It can be an IAM user, IAM role, or the root user. If this
    #   			field is omitted, the authenticated user is assumed.</p>
    #
    #   @return [String]
    #
    Setting = ::Struct.new(
      :name,
      :value,
      :principal_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SettingName
    #
    module SettingName
      # No documentation available.
      #
      SERVICE_LONG_ARN_FORMAT = "serviceLongArnFormat"

      # No documentation available.
      #
      TASK_LONG_ARN_FORMAT = "taskLongArnFormat"

      # No documentation available.
      #
      CONTAINER_INSTANCE_LONG_ARN_FORMAT = "containerInstanceLongArnFormat"

      # No documentation available.
      #
      AWSVPC_TRUNKING = "awsvpcTrunking"

      # No documentation available.
      #
      CONTAINER_INSIGHTS = "containerInsights"
    end

    # Includes enum constants for SortOrder
    #
    module SortOrder
      # No documentation available.
      #
      ASC = "ASC"

      # No documentation available.
      #
      DESC = "DESC"
    end

    # Includes enum constants for StabilityStatus
    #
    module StabilityStatus
      # No documentation available.
      #
      STEADY_STATE = "STEADY_STATE"

      # No documentation available.
      #
      STABILIZING = "STABILIZING"
    end

    # @!attribute cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster where to start your task.
    #   			If you do not specify a cluster, the default cluster is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute container_instances
    #   <p>The container instance IDs or full ARN entries for the container instances where you
    #   			would like to place your task. You can specify up to 10 container instances.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute enable_ecs_managed_tags
    #   <p>Specifies whether to use Amazon ECS managed tags for the task. For more information, see
    #   				<a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html">Tagging Your Amazon ECS
    #   				Resources</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_execute_command
    #   <p>Whether or not the execute command functionality is enabled for the task. If
    #   				<code>true</code>, this enables execute command functionality on all containers in
    #   			the task.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute group
    #   <p>The name of the task group to associate with the task. The default value is the family
    #   			name of the task definition (for example, family:my-family-name).</p>
    #
    #   @return [String]
    #
    # @!attribute network_configuration
    #   <p>The VPC subnet and security group configuration for tasks that receive their own
    #               elastic network interface by using the <code>awsvpc</code> networking mode.</p>
    #
    #   @return [NetworkConfiguration]
    #
    # @!attribute overrides
    #   <p>A list of container overrides in JSON format that specify the name of a container in
    #   			the specified task definition and the overrides it receives. You can override the
    #   			default command for a container (that's specified in the task definition or Docker
    #   			image) with a <code>command</code> override. You can also override existing environment
    #   			variables (that are specified in the task definition or Docker image) on a container or
    #   			add new environment variables to it with an <code>environment</code> override.</p>
    #   		       <note>
    #   			         <p>A total of 8192 characters are allowed for overrides. This limit includes the JSON
    #   				formatting characters of the override structure.</p>
    #   		       </note>
    #
    #   @return [TaskOverride]
    #
    # @!attribute propagate_tags
    #   <p>Specifies whether to propagate the tags from the task definition or the service to the
    #   			task. If no value is specified, the tags aren't propagated.</p>
    #
    #   Enum, one of: ["TASK_DEFINITION", "SERVICE", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute reference_id
    #   <p>The reference ID to use for the task.</p>
    #
    #   @return [String]
    #
    # @!attribute started_by
    #   <p>An optional tag specified when a task is started. For example, if you automatically
    #   			trigger a task to run a batch process job, you could apply a unique identifier for that
    #   			job to your task with the <code>startedBy</code> parameter. You can then identify which
    #   			tasks belong to that job by filtering the results of a <a>ListTasks</a> call
    #   			with the <code>startedBy</code> value. Up to 36 letters (uppercase and lowercase),
    #   			numbers, hyphens (-), and underscores (_) are allowed.</p>
    #   		       <p>If a task is started by an Amazon ECS service, the <code>startedBy</code> parameter
    #   			contains the deployment ID of the service that starts it.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The metadata that you apply to the task to help you categorize and organize them. Each
    #   			tag consists of a key and an optional value, both of which you define.</p>
    #   		       <p>The following basic restrictions apply to tags:</p>
    #           <ul>
    #               <li>
    #                   <p>Maximum number of tags per resource - 50</p>
    #               </li>
    #               <li>
    #                   <p>For each resource, each tag key must be unique, and each tag key can have only
    #                       one value.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum key length - 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>Maximum value length - 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>If your tagging schema is used across multiple services and resources,
    #                       remember that other services may have restrictions on allowed characters.
    #                       Generally allowed characters are: letters, numbers, and spaces representable in
    #                       UTF-8, and the following characters: + - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                   <p>Tag keys and values are case-sensitive.</p>
    #               </li>
    #               <li>
    #                   <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase
    #                       combination of such as a prefix for either keys or values as it is reserved for
    #                       Amazon Web Services use. You cannot edit or delete tag keys or values with this prefix. Tags with
    #                       this prefix do not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute task_definition
    #   <p>The <code>family</code> and <code>revision</code> (<code>family:revision</code>) or
    #   			full ARN of the task definition to start. If a <code>revision</code> isn't specified,
    #   			the latest <code>ACTIVE</code> revision is used.</p>
    #
    #   @return [String]
    #
    StartTaskInput = ::Struct.new(
      :cluster,
      :container_instances,
      :enable_ecs_managed_tags,
      :enable_execute_command,
      :group,
      :network_configuration,
      :overrides,
      :propagate_tags,
      :reference_id,
      :started_by,
      :tags,
      :task_definition,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enable_ecs_managed_tags ||= false
        self.enable_execute_command ||= false
      end
    end

    # @!attribute tasks
    #   <p>A full description of the tasks that were started. Each task that was successfully
    #   			placed on your container instances is described.</p>
    #
    #   @return [Array<Task>]
    #
    # @!attribute failures
    #   <p>Any failures associated with the call.</p>
    #
    #   @return [Array<Failure>]
    #
    StartTaskOutput = ::Struct.new(
      :tasks,
      :failures,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the task to stop.
    #   			If you do not specify a cluster, the default cluster is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute task
    #   <p>The task ID or full Amazon Resource Name (ARN) of the task to stop.</p>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>An optional message specified when a task is stopped. For example, if you're using a
    #   			custom scheduler, you can use this parameter to specify the reason for stopping the task
    #   			here, and the message appears in subsequent <a>DescribeTasks</a> API
    #   			operations on this task. Up to 255 characters are allowed in this message.</p>
    #
    #   @return [String]
    #
    StopTaskInput = ::Struct.new(
      :cluster,
      :task,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task
    #   <p>The task that was stopped.</p>
    #
    #   @return [Task]
    #
    StopTaskOutput = ::Struct.new(
      :task,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The short name or full ARN of the cluster that hosts the container instance the
    #   			attachment belongs to.</p>
    #
    #   @return [String]
    #
    # @!attribute attachments
    #   <p>Any attachments associated with the state change request.</p>
    #
    #   @return [Array<AttachmentStateChange>]
    #
    SubmitAttachmentStateChangesInput = ::Struct.new(
      :cluster,
      :attachments,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute acknowledgment
    #   <p>Acknowledgement of the state change.</p>
    #
    #   @return [String]
    #
    SubmitAttachmentStateChangesOutput = ::Struct.new(
      :acknowledgment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The short name or full ARN of the cluster that hosts the container.</p>
    #
    #   @return [String]
    #
    # @!attribute task
    #   <p>The task ID or full Amazon Resource Name (ARN) of the task that hosts the container.</p>
    #
    #   @return [String]
    #
    # @!attribute container_name
    #   <p>The name of the container.</p>
    #
    #   @return [String]
    #
    # @!attribute runtime_id
    #   <p>The ID of the Docker container.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the state change request.</p>
    #
    #   @return [String]
    #
    # @!attribute exit_code
    #   <p>The exit code that's returned for the state change request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute reason
    #   <p>The reason for the state change request.</p>
    #
    #   @return [String]
    #
    # @!attribute network_bindings
    #   <p>The network bindings of the container.</p>
    #
    #   @return [Array<NetworkBinding>]
    #
    SubmitContainerStateChangeInput = ::Struct.new(
      :cluster,
      :task,
      :container_name,
      :runtime_id,
      :status,
      :exit_code,
      :reason,
      :network_bindings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute acknowledgment
    #   <p>Acknowledgement of the state change.</p>
    #
    #   @return [String]
    #
    SubmitContainerStateChangeOutput = ::Struct.new(
      :acknowledgment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the task.</p>
    #
    #   @return [String]
    #
    # @!attribute task
    #   <p>The task ID or full ARN of the task in the state change request.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the state change request.</p>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason for the state change request.</p>
    #
    #   @return [String]
    #
    # @!attribute containers
    #   <p>Any containers that's associated with the state change request.</p>
    #
    #   @return [Array<ContainerStateChange>]
    #
    # @!attribute attachments
    #   <p>Any attachments associated with the state change request.</p>
    #
    #   @return [Array<AttachmentStateChange>]
    #
    # @!attribute managed_agents
    #   <p>The details for the managed agent that's associated with the task.</p>
    #
    #   @return [Array<ManagedAgentStateChange>]
    #
    # @!attribute pull_started_at
    #   <p>The Unix timestamp for the time when the container image pull started.</p>
    #
    #   @return [Time]
    #
    # @!attribute pull_stopped_at
    #   <p>The Unix timestamp for the time when the container image pull completed.</p>
    #
    #   @return [Time]
    #
    # @!attribute execution_stopped_at
    #   <p>The Unix timestamp for the time when the task execution stopped.</p>
    #
    #   @return [Time]
    #
    SubmitTaskStateChangeInput = ::Struct.new(
      :cluster,
      :task,
      :status,
      :reason,
      :containers,
      :attachments,
      :managed_agents,
      :pull_started_at,
      :pull_stopped_at,
      :execution_stopped_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute acknowledgment
    #   <p>Acknowledgement of the state change.</p>
    #
    #   @return [String]
    #
    SubmitTaskStateChangeOutput = ::Struct.new(
      :acknowledgment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of namespaced kernel parameters to set in the container. This parameter maps to
    # 				<code>Sysctls</code> in the <a href="https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate">Create a container</a> section of the
    # 			<a href="https://docs.docker.com/engine/api/v1.35/">Docker Remote API</a> and the <code>--sysctl</code> option to <a href="https://docs.docker.com/engine/reference/run/#security-configuration">docker run</a>.</p>
    # 		       <p>We don't recommend that you specify network-related <code>systemControls</code>
    # 			parameters for multiple containers in a single task. This task also uses either the
    # 				<code>awsvpc</code> or <code>host</code> network mode. It does it for the following
    # 			reasons.</p>
    # 		       <ul>
    #             <li>
    # 				           <p>For tasks that use the <code>awsvpc</code> network mode, if you set
    # 						<code>systemControls</code> for any container, it applies to all containers
    # 					in the task. If you set different <code>systemControls</code> for multiple
    # 					containers in a single task, the container that's started last determines which
    # 						<code>systemControls</code> take effect.</p>
    # 			         </li>
    #             <li>
    # 				           <p>For tasks that use the <code>host</code> network mode, the
    # 						<code>systemControls</code> parameter applies to the container instance's
    # 					kernel parameter and that of all containers of any tasks running on that
    # 					container instance.</p>
    # 			         </li>
    #          </ul>
    #
    # @!attribute namespace
    #   <p>The namespaced kernel parameter to set a <code>value</code> for.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value for the namespaced kernel parameter that's specified in
    #   				<code>namespace</code>.</p>
    #
    #   @return [String]
    #
    SystemControl = ::Struct.new(
      :namespace,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The metadata that you apply to a resource to help you categorize and organize them.
    # 			Each tag consists of a key and an optional value. You define them.</p>
    # 		       <p>The following basic restrictions apply to tags:</p>
    #         <ul>
    #             <li>
    #                 <p>Maximum number of tags per resource - 50</p>
    #             </li>
    #             <li>
    #                 <p>For each resource, each tag key must be unique, and each tag key can have only
    #                     one value.</p>
    #             </li>
    #             <li>
    #                 <p>Maximum key length - 128 Unicode characters in UTF-8</p>
    #             </li>
    #             <li>
    #                 <p>Maximum value length - 256 Unicode characters in UTF-8</p>
    #             </li>
    #             <li>
    #                 <p>If your tagging schema is used across multiple services and resources,
    #                     remember that other services may have restrictions on allowed characters.
    #                     Generally allowed characters are: letters, numbers, and spaces representable in
    #                     UTF-8, and the following characters: + - = . _ : / @.</p>
    #             </li>
    #             <li>
    #                 <p>Tag keys and values are case-sensitive.</p>
    #             </li>
    #             <li>
    #                 <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase
    #                     combination of such as a prefix for either keys or values as it is reserved for
    #                     Amazon Web Services use. You cannot edit or delete tag keys or values with this prefix. Tags with
    #                     this prefix do not count against your tags per resource limit.</p>
    #             </li>
    #          </ul>
    #
    # @!attribute key
    #   <p>One part of a key-value pair that make up a tag. A <code>key</code> is a general label
    #   			that acts like a category for more specific tag values.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The optional part of a key-value pair that make up a tag. A <code>value</code> acts as
    #   			a descriptor within a tag category (key).</p>
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
    #   <p>The Amazon Resource Name (ARN) of the resource to add tags to. Currently, the supported resources are
    #   			Amazon ECS capacity providers, tasks, services, task definitions, clusters, and container
    #   			instances.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to add to the resource. A tag is an array of key-value pairs.</p>
    #   		       <p>The following basic restrictions apply to tags:</p>
    #           <ul>
    #               <li>
    #                   <p>Maximum number of tags per resource - 50</p>
    #               </li>
    #               <li>
    #                   <p>For each resource, each tag key must be unique, and each tag key can have only
    #                       one value.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum key length - 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>Maximum value length - 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>If your tagging schema is used across multiple services and resources,
    #                       remember that other services may have restrictions on allowed characters.
    #                       Generally allowed characters are: letters, numbers, and spaces representable in
    #                       UTF-8, and the following characters: + - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                   <p>Tag keys and values are case-sensitive.</p>
    #               </li>
    #               <li>
    #                   <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase
    #                       combination of such as a prefix for either keys or values as it is reserved for
    #                       Amazon Web Services use. You cannot edit or delete tag keys or values with this prefix. Tags with
    #                       this prefix do not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
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

    # <p>The execute command cannot run. This error can be caused by any of the following
    # 			configuration issues:</p>
    # 		       <ul>
    #             <li>
    #                <p>Incorrect IAM permissions</p>
    #             </li>
    #             <li>
    #                <p>The SSM agent is not installed or is not running</p>
    #             </li>
    #             <li>
    #                <p> There is an interface Amazon VPC endpoint for  Amazon ECS, but there is not one for for Systems Manager Session Manager</p>
    #             </li>
    #          </ul>
    # 			      <p>For information about how to troubleshoot the
    # 			issues, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-exec.html">Troubleshooting issues with ECS Exec</a> in the
    # 				<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TargetNotConnectedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified target wasn't found. You can view your available container instances
    # 			with <a>ListContainerInstances</a>. Amazon ECS container instances are
    # 			cluster-specific and Region-specific.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TargetNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TargetType
    #
    module TargetType
      # No documentation available.
      #
      CONTAINER_INSTANCE = "container-instance"
    end

    # <p>Details on a task in a cluster.</p>
    #
    # @!attribute attachments
    #   <p>The Elastic Network Adapter that's associated with the task if the task uses the
    #   				<code>awsvpc</code> network mode.</p>
    #
    #   @return [Array<Attachment>]
    #
    # @!attribute attributes
    #   <p>The attributes of the task</p>
    #
    #   @return [Array<Attribute>]
    #
    # @!attribute availability_zone
    #   <p>The Availability Zone for the task.</p>
    #
    #   @return [String]
    #
    # @!attribute capacity_provider_name
    #   <p>The capacity provider that's associated with the task.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_arn
    #   <p>The ARN of the cluster that hosts the task.</p>
    #
    #   @return [String]
    #
    # @!attribute connectivity
    #   <p>The connectivity status of a task.</p>
    #
    #   Enum, one of: ["CONNECTED", "DISCONNECTED"]
    #
    #   @return [String]
    #
    # @!attribute connectivity_at
    #   <p>The Unix timestamp for the time when the task last went into <code>CONNECTED</code>
    #   			status.</p>
    #
    #   @return [Time]
    #
    # @!attribute container_instance_arn
    #   <p>The ARN of the container instances that host the task.</p>
    #
    #   @return [String]
    #
    # @!attribute containers
    #   <p>The containers that's associated with the task.</p>
    #
    #   @return [Array<Container>]
    #
    # @!attribute cpu
    #   <p>The number of CPU units used by the task as expressed in a task definition. It can be
    #   			expressed as an integer using CPU units (for example, <code>1024</code>). It can also be
    #   			expressed as a string using vCPUs (for example, <code>1 vCPU</code> or <code>1
    #   				vcpu</code>). String values are converted to an integer that indicates the CPU units
    #   			when the task definition is registered.</p>
    #   		       <p>If you use the EC2 launch type, this field is optional. Supported values
    #   			are between <code>128</code> CPU units (<code>0.125</code> vCPUs) and <code>10240</code>
    #   			CPU units (<code>10</code> vCPUs).</p>
    #   		       <p>If you use the Fargate launch type, this field is required. You must use
    #   			one of the following values. These values determine the range of supported values for
    #   			the <code>memory</code> parameter:</p>
    #   		       <p>The CPU units cannot be less than 1 vCPU when you use Windows containers on
    #   			Fargate.</p>
    #   		       <ul>
    #               <li>
    #                   <p>256 (.25 vCPU) - Available <code>memory</code> values: 512 (0.5 GB), 1024 (1 GB), 2048 (2 GB)</p>
    #               </li>
    #               <li>
    #                   <p>512 (.5 vCPU) - Available <code>memory</code> values: 1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB)</p>
    #               </li>
    #               <li>
    #                   <p>1024 (1 vCPU) - Available <code>memory</code> values: 2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB), 8192 (8 GB)</p>
    #               </li>
    #               <li>
    #                   <p>2048 (2 vCPU) - Available <code>memory</code> values: Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB)</p>
    #               </li>
    #               <li>
    #                   <p>4096 (4 vCPU) - Available <code>memory</code> values: Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB)</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The Unix timestamp for the time when the task was created. More specifically, it's for
    #   			the time when the task entered the <code>PENDING</code> state.</p>
    #
    #   @return [Time]
    #
    # @!attribute desired_status
    #   <p>The desired status of the task. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-lifecycle.html">Task
    #   			Lifecycle</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute enable_execute_command
    #   <p>Determines whether execute command functionality is enabled for this task. If
    #   				<code>true</code>, execute command functionality is enabled on all the containers in
    #   			the task.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute execution_stopped_at
    #   <p>The Unix timestamp for the time when the task execution stopped.</p>
    #
    #   @return [Time]
    #
    # @!attribute group
    #   <p>The name of the task group that's associated with the task.</p>
    #
    #   @return [String]
    #
    # @!attribute health_status
    #   <p>The health status for the task. It's determined by the health of the essential
    #   			containers in the task. If all essential containers in the task are reporting as
    #   				<code>HEALTHY</code>, the task status also reports as <code>HEALTHY</code>. If any
    #   			essential containers in the task are reporting as <code>UNHEALTHY</code> or
    #   				<code>UNKNOWN</code>, the task status also reports as <code>UNHEALTHY</code> or
    #   				<code>UNKNOWN</code>.</p>
    #   		       <note>
    #   			         <p>The Amazon ECS container agent doesn't monitor or report on Docker health checks that
    #   				are embedded in a container image and not specified in the container definition. For
    #   				example, this includes those specified in a parent image or from the image's
    #   				Dockerfile. Health check parameters that are specified in a container definition
    #   				override any Docker health checks that are found in the container image.</p>
    #   		       </note>
    #
    #   Enum, one of: ["HEALTHY", "UNHEALTHY", "UNKNOWN"]
    #
    #   @return [String]
    #
    # @!attribute inference_accelerators
    #   <p>The Elastic Inference accelerator that's associated with the task.</p>
    #
    #   @return [Array<InferenceAccelerator>]
    #
    # @!attribute last_status
    #   <p>The last known status for the task. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-lifecycle.html">Task
    #   				Lifecycle</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_type
    #   <p>The infrastructure where your task runs on. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html">Amazon ECS
    #   				launch types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   Enum, one of: ["EC2", "FARGATE", "EXTERNAL"]
    #
    #   @return [String]
    #
    # @!attribute memory
    #   <p>The amount of memory (in MiB) that the task uses as expressed in a task definition. It
    #   			can be expressed as an integer using MiB (for example, <code>1024</code>). If it's
    #   			expressed as a string using GB (for example, <code>1GB</code> or <code>1 GB</code>),
    #   			it's converted to an integer indicating the MiB when the task definition is
    #   			registered.</p>
    #   		       <p>If you use the EC2 launch type, this field is optional.</p>
    #   		       <p>If you use the Fargate launch type, this field is required. You must use
    #   			one of the following values. The value that you choose determines the range of supported
    #   			values for the <code>cpu</code> parameter.</p>
    #   		       <ul>
    #               <li>
    #                   <p>512 (0.5 GB), 1024 (1 GB), 2048 (2 GB) - Available <code>cpu</code> values: 256 (.25 vCPU)</p>
    #               </li>
    #               <li>
    #                   <p>1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB) - Available <code>cpu</code> values: 512 (.5 vCPU)</p>
    #               </li>
    #               <li>
    #                   <p>2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB), 8192 (8 GB) - Available <code>cpu</code> values: 1024 (1 vCPU)</p>
    #               </li>
    #               <li>
    #                   <p>Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB) - Available <code>cpu</code> values: 2048 (2 vCPU)</p>
    #               </li>
    #               <li>
    #                   <p>Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB) - Available <code>cpu</code> values: 4096 (4 vCPU)</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute overrides
    #   <p>One or more container overrides.</p>
    #
    #   @return [TaskOverride]
    #
    # @!attribute platform_version
    #   <p>The platform version where your task runs on. A platform version is only specified for
    #   			tasks that use the Fargate launch type. If you didn't specify one, the
    #   				<code>LATEST</code> platform version is used. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html">Fargate Platform Versions</a> in the
    #   			<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute platform_family
    #   <p>The operating system that your tasks are running on. A platform family is specified
    #   			only for tasks that use the Fargate launch type. </p>
    #   		       <p> All tasks that run as part of this service must use the same
    #   				<code>platformFamily</code> value as the service (for example,
    #   			<code>LINUX.</code>).</p>
    #
    #   @return [String]
    #
    # @!attribute pull_started_at
    #   <p>The Unix timestamp for the time when the container image pull began.</p>
    #
    #   @return [Time]
    #
    # @!attribute pull_stopped_at
    #   <p>The Unix timestamp for the time when the container image pull completed.</p>
    #
    #   @return [Time]
    #
    # @!attribute started_at
    #   <p>The Unix timestamp for the time when the task started. More specifically, it's for the
    #   			time when the task transitioned from the <code>PENDING</code> state to the
    #   				<code>RUNNING</code> state.</p>
    #
    #   @return [Time]
    #
    # @!attribute started_by
    #   <p>The tag specified when a task is started. If an Amazon ECS service started the task, the
    #   				<code>startedBy</code> parameter contains the deployment ID of that service.</p>
    #
    #   @return [String]
    #
    # @!attribute stop_code
    #   <p>The stop code indicating why a task was stopped. The <code>stoppedReason</code> might
    #   			contain additional details.</p>
    #   		       <p>The following are valid values:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>
    #                     <code>TaskFailedToStart</code>
    #                  </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>EssentialContainerExited</code>
    #                  </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>UserInitiated</code>
    #                  </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>TerminationNotice</code>
    #                  </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>ServiceSchedulerInitiated</code>
    #                  </p>
    #   			         </li>
    #               <li>
    #   				           <p>
    #                     <code>SpotInterruption</code>
    #                  </p>
    #   			         </li>
    #            </ul>
    #
    #   Enum, one of: ["TaskFailedToStart", "EssentialContainerExited", "UserInitiated"]
    #
    #   @return [String]
    #
    # @!attribute stopped_at
    #   <p>The Unix timestamp for the time when the task was stopped. More specifically, it's for
    #   			the time when the task transitioned from the <code>RUNNING</code> state to the
    #   				<code>STOPPED</code> state.</p>
    #
    #   @return [Time]
    #
    # @!attribute stopped_reason
    #   <p>The reason that the task was stopped.</p>
    #
    #   @return [String]
    #
    # @!attribute stopping_at
    #   <p>The Unix timestamp for the time when the task stops. More specifically, it's for the
    #   			time when the task transitions from the <code>RUNNING</code> state to
    #   				<code>STOPPED</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The metadata that you apply to the task to help you categorize and organize the task.
    #   			Each tag consists of a key and an optional value. You define both the key and
    #   			value.</p>
    #   		       <p>The following basic restrictions apply to tags:</p>
    #           <ul>
    #               <li>
    #                   <p>Maximum number of tags per resource - 50</p>
    #               </li>
    #               <li>
    #                   <p>For each resource, each tag key must be unique, and each tag key can have only
    #                       one value.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum key length - 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>Maximum value length - 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>If your tagging schema is used across multiple services and resources,
    #                       remember that other services may have restrictions on allowed characters.
    #                       Generally allowed characters are: letters, numbers, and spaces representable in
    #                       UTF-8, and the following characters: + - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                   <p>Tag keys and values are case-sensitive.</p>
    #               </li>
    #               <li>
    #                   <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase
    #                       combination of such as a prefix for either keys or values as it is reserved for
    #                       Amazon Web Services use. You cannot edit or delete tag keys or values with this prefix. Tags with
    #                       this prefix do not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute task_arn
    #   <p>The Amazon Resource Name (ARN) of the task.</p>
    #
    #   @return [String]
    #
    # @!attribute task_definition_arn
    #   <p>The ARN of the task definition that creates the task.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version counter for the task. Every time a task experiences a change that starts a
    #   			CloudWatch event, the version counter is incremented. If you replicate your Amazon ECS task state
    #   			with CloudWatch Events, you can compare the version of a task reported by the Amazon ECS API
    #   			actions with the version reported in CloudWatch Events for the task (inside the
    #   				<code>detail</code> object) to verify that the version in your event stream is
    #   			current.</p>
    #
    #   @return [Integer]
    #
    # @!attribute ephemeral_storage
    #   <p>The ephemeral storage settings for the task.</p>
    #
    #   @return [EphemeralStorage]
    #
    Task = ::Struct.new(
      :attachments,
      :attributes,
      :availability_zone,
      :capacity_provider_name,
      :cluster_arn,
      :connectivity,
      :connectivity_at,
      :container_instance_arn,
      :containers,
      :cpu,
      :created_at,
      :desired_status,
      :enable_execute_command,
      :execution_stopped_at,
      :group,
      :health_status,
      :inference_accelerators,
      :last_status,
      :launch_type,
      :memory,
      :overrides,
      :platform_version,
      :platform_family,
      :pull_started_at,
      :pull_stopped_at,
      :started_at,
      :started_by,
      :stop_code,
      :stopped_at,
      :stopped_reason,
      :stopping_at,
      :tags,
      :task_arn,
      :task_definition_arn,
      :version,
      :ephemeral_storage,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enable_execute_command ||= false
        self.version ||= 0
      end
    end

    # <p>The details of a task definition which describes the container and volume definitions
    # 			of an Amazon Elastic Container Service task. You can specify which Docker images to use, the required
    # 			resources, and other configurations related to launching the task definition through an
    # 			Amazon ECS service or task.</p>
    #
    # @!attribute task_definition_arn
    #   <p>The full Amazon Resource Name (ARN) of the task definition.</p>
    #
    #   @return [String]
    #
    # @!attribute container_definitions
    #   <p>A list of container definitions in JSON format that describe the different containers
    #   			that make up your task. For more information about container definition parameters and
    #   			defaults, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html">Amazon ECS Task
    #   				Definitions</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [Array<ContainerDefinition>]
    #
    # @!attribute family
    #   <p>The name of a family that this task definition is registered to. Up to 255 characters
    #   			are allowed. Letters (both uppercase and lowercase letters), numbers, hyphens (-), and
    #   			underscores (_) are allowed.</p>
    #   		       <p>A family groups multiple versions of a task definition. Amazon ECS gives the first task
    #   			definition that you registered to a family a revision number of 1. Amazon ECS gives
    #   			sequential revision numbers to each task definition that you add.</p>
    #
    #   @return [String]
    #
    # @!attribute task_role_arn
    #   <p>The short name or full Amazon Resource Name (ARN) of the Identity and Access Management role that grants containers in the
    #   			task permission to call Amazon Web Services APIs on your behalf. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html">Amazon ECS
    #   				Task Role</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #   		       <p>IAM roles for tasks on Windows require that the <code>-EnableTaskIAMRole</code> option
    #   			is set when you launch the Amazon ECS-optimized Windows AMI. Your containers must also run some
    #   			configuration code to use the feature. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/windows_task_IAM_roles.html">Windows IAM roles
    #   				for tasks</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the task execution role that grants the Amazon ECS container agent
    #               permission to make Amazon Web Services API calls on your behalf. The task execution IAM role is required
    #               depending on the requirements of your task. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_execution_IAM_role.html">Amazon ECS task
    #                   execution IAM role</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute network_mode
    #   <p>The Docker networking mode to use for the containers in the task. The valid values are
    #                   <code>none</code>, <code>bridge</code>, <code>awsvpc</code>, and <code>host</code>.
    #               If no network mode is specified, the default is <code>bridge</code>.</p>
    #               <p>For Amazon ECS tasks on Fargate, the <code>awsvpc</code> network mode is required.
    #               For Amazon ECS tasks on Amazon EC2 Linux instances, any network mode can be used.  For Amazon ECS tasks on Amazon EC2 Windows instances, <code><default></code> or <code>awsvpc</code> can be used. If the network
    #               mode is set to <code>none</code>, you cannot specify port mappings in your container
    #               definitions, and the tasks containers do not have external connectivity. The
    #                   <code>host</code> and <code>awsvpc</code> network modes offer the highest networking
    #               performance for containers because they use the EC2 network stack instead of the
    #               virtualized network stack provided by the <code>bridge</code> mode.</p>
    #           <p>With the <code>host</code> and <code>awsvpc</code> network modes, exposed container
    #               ports are mapped directly to the corresponding host port (for the <code>host</code>
    #               network mode) or the attached elastic network interface port (for the
    #                   <code>awsvpc</code> network mode), so you cannot take advantage of dynamic host port
    #               mappings. </p>
    #               <important>
    #                           <p>When using the <code>host</code> network mode, you should not run
    #                               containers using the root user (UID 0). It is considered best practice
    #                               to use a non-root user.</p>
    #                       </important>
    #           <p>If the network mode is <code>awsvpc</code>, the task is allocated an elastic network
    #               interface, and you must specify a <a>NetworkConfiguration</a> value when you create
    #               a service or run a task with the task definition. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html">Task Networking</a> in the
    #                   <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #           <p>If the network mode is <code>host</code>, you cannot run multiple instantiations of the
    #               same task on a single container instance when port mappings are used.</p>
    #           <p>For more information, see <a href="https://docs.docker.com/engine/reference/run/ network-settings">Network
    #                   settings</a> in the <i>Docker run reference</i>.</p>
    #
    #   Enum, one of: ["bridge", "host", "awsvpc", "none"]
    #
    #   @return [String]
    #
    # @!attribute revision
    #   <p>The revision of the task in a particular family. The revision is a version number of a
    #   			task definition in a family. When you register a task definition for the first time, the
    #   			revision is <code>1</code>. Each time that you register a new revision of a task
    #   			definition in the same family, the revision value always increases by one. This is even
    #   			if you deregistered previous revisions in this family.</p>
    #
    #   @return [Integer]
    #
    # @!attribute volumes
    #   <p>The list of data volume definitions for the task. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_data_volumes.html">Using data volumes in tasks</a> in the
    #   			<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #   		       <note>
    #   			         <p>The <code>host</code> and <code>sourcePath</code> parameters aren't supported for
    #   				tasks run on Fargate.</p>
    #   		       </note>
    #
    #   @return [Array<Volume>]
    #
    # @!attribute status
    #   <p>The status of the task definition.</p>
    #
    #   Enum, one of: ["ACTIVE", "INACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute requires_attributes
    #   <p>The container instance attributes required by your task. When an Amazon EC2 instance is
    #   			registered to your cluster, the Amazon ECS container agent assigns some standard attributes
    #   			to the instance. You can apply custom attributes. These are specified as key-value pairs
    #   			using the Amazon ECS console or the <a>PutAttributes</a> API. These attributes are
    #   			used when determining task placement for tasks hosted on Amazon EC2 instances. For more
    #   			information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html attributes">Attributes</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #   		       <note>
    #   			         <p>This parameter isn't supported for tasks run on Fargate.</p>
    #   		       </note>
    #
    #   @return [Array<Attribute>]
    #
    # @!attribute placement_constraints
    #   <p>An array of placement constraint objects to use for tasks.</p>
    #   		       <note>
    #   			         <p>This parameter isn't supported for tasks run on Fargate.</p>
    #   		       </note>
    #
    #   @return [Array<TaskDefinitionPlacementConstraint>]
    #
    # @!attribute compatibilities
    #   <p>The task launch types the task definition validated against during task definition
    #   			registration. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html">Amazon ECS launch types</a>
    #   			in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute runtime_platform
    #   <p>The operating system that your task definitions are running on. A platform family is
    #   			specified only for tasks using the Fargate launch type. </p>
    #   		       <p>When you specify a task in a service, this value must match the
    #   				<code>runtimePlatform</code> value of the service.</p>
    #
    #   @return [RuntimePlatform]
    #
    # @!attribute requires_compatibilities
    #   <p>The task launch types the task definition was validated against. To determine which
    #   			task launch types the task definition is validated for, see the <a>TaskDefinition$compatibilities</a> parameter.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute cpu
    #   <p>The number of <code>cpu</code> units used by the task. If you use the EC2 launch type,
    #   			this field is optional. Any value can be used. If you use the Fargate launch type, this
    #   			field is required. You must use one of the following values. The value that you choose
    #   			determines your range of valid values for the <code>memory</code> parameter.</p>
    #   		       <p>The CPU units cannot be less than 1 vCPU when you use Windows containers on
    #   			Fargate.</p>
    #   		       <ul>
    #               <li>
    #                   <p>256 (.25 vCPU) - Available <code>memory</code> values: 512 (0.5 GB), 1024 (1 GB), 2048 (2 GB)</p>
    #               </li>
    #               <li>
    #                   <p>512 (.5 vCPU) - Available <code>memory</code> values: 1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB)</p>
    #               </li>
    #               <li>
    #                   <p>1024 (1 vCPU) - Available <code>memory</code> values: 2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB), 8192 (8 GB)</p>
    #               </li>
    #               <li>
    #                   <p>2048 (2 vCPU) - Available <code>memory</code> values: Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB)</p>
    #               </li>
    #               <li>
    #                   <p>4096 (4 vCPU) - Available <code>memory</code> values: Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB)</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute memory
    #   <p>The amount (in MiB) of memory used by the task.</p>
    #   		       <p>If your tasks runs on Amazon EC2 instances, you must specify either a task-level memory
    #   			value or a container-level memory value. This field is optional and any value can be
    #   			used. If a task-level memory value is specified, the container-level memory value is
    #   			optional. For more information regarding container-level memory and memory reservation,
    #   			see <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ContainerDefinition.html">ContainerDefinition</a>.</p>
    #   		       <p>If your tasks runs on Fargate, this field is required. You must use one of the
    #   			following values. The value you choose determines your range of valid values for the
    #   				<code>cpu</code> parameter.</p>
    #   		       <ul>
    #               <li>
    #                   <p>512 (0.5 GB), 1024 (1 GB), 2048 (2 GB) - Available <code>cpu</code> values: 256 (.25 vCPU)</p>
    #               </li>
    #               <li>
    #                   <p>1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB) - Available <code>cpu</code> values: 512 (.5 vCPU)</p>
    #               </li>
    #               <li>
    #                   <p>2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB), 8192 (8 GB) - Available <code>cpu</code> values: 1024 (1 vCPU)</p>
    #               </li>
    #               <li>
    #                   <p>Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB) - Available <code>cpu</code> values: 2048 (2 vCPU)</p>
    #               </li>
    #               <li>
    #                   <p>Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB) - Available <code>cpu</code> values: 4096 (4 vCPU)</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute inference_accelerators
    #   <p>The Elastic Inference accelerator that's associated with the task.</p>
    #
    #   @return [Array<InferenceAccelerator>]
    #
    # @!attribute pid_mode
    #   <p>The process namespace to use for the containers in the task. The valid
    #                               values are <code>host</code> or <code>task</code>. If <code>host</code>
    #                               is specified, then all containers within the tasks that specified the
    #                                   <code>host</code> PID mode on the same container instance share the
    #                               same process namespace with the host Amazon EC2 instance. If <code>task</code> is
    #                               specified, all containers within the specified task share the same
    #                               process namespace. If no value is specified, the default is a private
    #                               namespace. For more information, see <a href="https://docs.docker.com/engine/reference/run/ pid-settings---pid">PID settings</a> in the <i>Docker run
    #                                   reference</i>.</p>
    #                           <p>If the <code>host</code> PID mode is used, be aware that there is a
    #                               heightened risk of undesired process namespace expose. For more
    #                               information, see <a href="https://docs.docker.com/engine/security/security/">Docker
    #                                   security</a>.</p>
    #            <note>
    #                                   <p>This parameter is not supported for Windows containers or tasks run on Fargate.</p>
    #                                </note>
    #
    #   Enum, one of: ["host", "task"]
    #
    #   @return [String]
    #
    # @!attribute ipc_mode
    #   <p>The IPC resource namespace to use for the containers in the task. The valid values are
    #                   <code>host</code>, <code>task</code>, or <code>none</code>. If <code>host</code> is
    #               specified, then all containers within the tasks that specified the <code>host</code> IPC
    #               mode on the same container instance share the same IPC resources with the host Amazon EC2
    #               instance. If <code>task</code> is specified, all containers within the specified task
    #               share the same IPC resources. If <code>none</code> is specified, then IPC resources
    #               within the containers of a task are private and not shared with other containers in a
    #               task or on the container instance. If no value is specified, then the IPC resource
    #               namespace sharing depends on the Docker daemon setting on the container instance. For
    #               more information, see <a href="https://docs.docker.com/engine/reference/run/ ipc-settings---ipc">IPC
    #                   settings</a> in the <i>Docker run reference</i>.</p>
    #           <p>If the <code>host</code> IPC mode is used, be aware that there is a heightened risk of
    #               undesired IPC namespace expose. For more information, see <a href="https://docs.docker.com/engine/security/security/">Docker
    #               security</a>.</p>
    #           <p>If you are setting namespaced kernel parameters using <code>systemControls</code> for
    #               the containers in the task, the following will apply to your IPC resource namespace. For
    #               more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html">System
    #                   Controls</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #           <ul>
    #               <li>
    #                   <p>For tasks that use the <code>host</code> IPC mode, IPC namespace related
    #                           <code>systemControls</code> are not supported.</p>
    #               </li>
    #               <li>
    #                   <p>For tasks that use the <code>task</code> IPC mode, IPC namespace related
    #                           <code>systemControls</code> will apply to all containers within a
    #                       task.</p>
    #               </li>
    #            </ul>
    #            <note>
    #                                   <p>This parameter is not supported for Windows containers or tasks run on Fargate.</p>
    #                                </note>
    #
    #   Enum, one of: ["host", "task", "none"]
    #
    #   @return [String]
    #
    # @!attribute proxy_configuration
    #   <p>The configuration details for the App Mesh proxy.</p>
    #   		       <p>Your Amazon ECS container instances require at least version 1.26.0 of the container agent
    #   			and at least version 1.26.0-1 of the <code>ecs-init</code> package to use a proxy
    #   			configuration. If your container instances are launched from the Amazon ECS optimized AMI
    #   			version <code>20190301</code> or later, they contain the required versions of the
    #   			container agent and <code>ecs-init</code>. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html">Amazon ECS-optimized Linux AMI</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [ProxyConfiguration]
    #
    # @!attribute registered_at
    #   <p>The Unix timestamp for the time when the task definition was registered.</p>
    #
    #   @return [Time]
    #
    # @!attribute deregistered_at
    #   <p>The Unix timestamp for the time when the task definition was deregistered.</p>
    #
    #   @return [Time]
    #
    # @!attribute registered_by
    #   <p>The principal that registered the task definition.</p>
    #
    #   @return [String]
    #
    # @!attribute ephemeral_storage
    #   <p>The ephemeral storage settings to use for tasks run with the task definition.</p>
    #
    #   @return [EphemeralStorage]
    #
    TaskDefinition = ::Struct.new(
      :task_definition_arn,
      :container_definitions,
      :family,
      :task_role_arn,
      :execution_role_arn,
      :network_mode,
      :revision,
      :volumes,
      :status,
      :requires_attributes,
      :placement_constraints,
      :compatibilities,
      :runtime_platform,
      :requires_compatibilities,
      :cpu,
      :memory,
      :inference_accelerators,
      :pid_mode,
      :ipc_mode,
      :proxy_configuration,
      :registered_at,
      :deregistered_at,
      :registered_by,
      :ephemeral_storage,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.revision ||= 0
      end
    end

    # Includes enum constants for TaskDefinitionFamilyStatus
    #
    module TaskDefinitionFamilyStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      INACTIVE = "INACTIVE"

      # No documentation available.
      #
      ALL = "ALL"
    end

    # Includes enum constants for TaskDefinitionField
    #
    module TaskDefinitionField
      # No documentation available.
      #
      TAGS = "TAGS"
    end

    # <p>An object representing a constraint on task placement in the task definition. For more
    # 			information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html">Task placement constraints</a> in the
    # 				<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # 		       <note>
    # 			         <p>Task placement constraints aren't supported for tasks run on Fargate.</p>
    # 		       </note>
    #
    # @!attribute type
    #   <p>The type of constraint. The <code>MemberOf</code> constraint restricts selection to be
    #   			from a group of valid candidates.</p>
    #
    #   Enum, one of: ["memberOf"]
    #
    #   @return [String]
    #
    # @!attribute expression
    #   <p>A cluster query language expression to apply to the constraint. For more information,
    #   			see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html">Cluster query language</a> in the
    #   				<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    TaskDefinitionPlacementConstraint = ::Struct.new(
      :type,
      :expression,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TaskDefinitionPlacementConstraintType
    #
    module TaskDefinitionPlacementConstraintType
      # No documentation available.
      #
      MEMBER_OF = "memberOf"
    end

    # Includes enum constants for TaskDefinitionStatus
    #
    module TaskDefinitionStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      INACTIVE = "INACTIVE"
    end

    # Includes enum constants for TaskField
    #
    module TaskField
      # No documentation available.
      #
      TAGS = "TAGS"
    end

    # <p>The overrides that are associated with a task.</p>
    #
    # @!attribute container_overrides
    #   <p>One or more container overrides that are sent to a task.</p>
    #
    #   @return [Array<ContainerOverride>]
    #
    # @!attribute cpu
    #   <p>The cpu override for the task.</p>
    #
    #   @return [String]
    #
    # @!attribute inference_accelerator_overrides
    #   <p>The Elastic Inference accelerator override for the task.</p>
    #
    #   @return [Array<InferenceAcceleratorOverride>]
    #
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the task execution IAM role override for the task. For more
    #   			information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_execution_IAM_role.html">Amazon ECS task
    #   				execution IAM role</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute memory
    #   <p>The memory override for the task.</p>
    #
    #   @return [String]
    #
    # @!attribute task_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that containers in this task can assume. All containers
    #   			in this task are granted the permissions that are specified in this role. For more
    #   			information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html">IAM Role for Tasks</a>
    #   			in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute ephemeral_storage
    #   <p>The ephemeral storage setting override for the task.</p>
    #   		       <note>
    #   			         <p>This parameter is only supported for tasks hosted on Fargate that
    #   				use the following platform versions:</p>
    #   			         <ul>
    #                  <li>
    #   					             <p>Linux platform version <code>1.4.0</code> or later.</p>
    #   				           </li>
    #                  <li>
    #   					             <p>Windows platform version <code>1.0.0</code> or later.</p>
    #   				           </li>
    #               </ul>
    #   		       </note>
    #
    #   @return [EphemeralStorage]
    #
    TaskOverride = ::Struct.new(
      :container_overrides,
      :cpu,
      :inference_accelerator_overrides,
      :execution_role_arn,
      :memory,
      :task_role_arn,
      :ephemeral_storage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a set of Amazon ECS tasks in either an CodeDeploy or an <code>EXTERNAL</code>
    # 			deployment. An Amazon ECS task set includes details such as the desired number of tasks, how
    # 			many tasks are running, and whether the task set serves production traffic.</p>
    #
    # @!attribute id
    #   <p>The ID of the task set.</p>
    #
    #   @return [String]
    #
    # @!attribute task_set_arn
    #   <p>The Amazon Resource Name (ARN) of the task set.</p>
    #
    #   @return [String]
    #
    # @!attribute service_arn
    #   <p>The Amazon Resource Name (ARN) of the service the task set exists in.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster that the service that hosts the task set exists
    #   			in.</p>
    #
    #   @return [String]
    #
    # @!attribute started_by
    #   <p>The tag specified when a task set is started. If an CodeDeploy deployment created the task
    #   			set, the <code>startedBy</code> parameter is <code>CODE_DEPLOY</code>. If an external
    #   			deployment created the task set, the startedBy field isn't used.</p>
    #
    #   @return [String]
    #
    # @!attribute external_id
    #   <p>The external ID associated with the task set.</p>
    #   		       <p>If an CodeDeploy deployment created a task set, the <code>externalId</code> parameter
    #   			contains the CodeDeploy deployment ID.</p>
    #   		       <p>If a task set is created for an external deployment and is associated with a service
    #   			discovery registry, the <code>externalId</code> parameter contains the
    #   				<code>ECS_TASK_SET_EXTERNAL_ID</code> Cloud Map attribute.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the task set. The following describes each state.</p>
    #   		       <dl>
    #               <dt>PRIMARY</dt>
    #               <dd>
    #   					          <p>The task set is serving production traffic.</p>
    #   				        </dd>
    #               <dt>ACTIVE</dt>
    #               <dd>
    #   					          <p>The task set isn't serving production traffic.</p>
    #   				        </dd>
    #               <dt>DRAINING</dt>
    #               <dd>
    #   					          <p>The tasks in the task set are being stopped, and their corresponding
    #   						targets are being deregistered from their target group.</p>
    #   				        </dd>
    #            </dl>
    #
    #   @return [String]
    #
    # @!attribute task_definition
    #   <p>The task definition that the task set is using.</p>
    #
    #   @return [String]
    #
    # @!attribute computed_desired_count
    #   <p>The computed desired count for the task set. This is calculated by multiplying the
    #   			service's <code>desiredCount</code> by the task set's <code>scale</code> percentage. The
    #   			result is always rounded up. For example, if the computed desired count is 1.2, it
    #   			rounds up to 2 tasks.</p>
    #
    #   @return [Integer]
    #
    # @!attribute pending_count
    #   <p>The number of tasks in the task set that are in the <code>PENDING</code> status during
    #   			a deployment. A task in the <code>PENDING</code> state is preparing to enter the
    #   				<code>RUNNING</code> state. A task set enters the <code>PENDING</code> status when
    #   			it launches for the first time or when it's restarted after being in the
    #   				<code>STOPPED</code> state.</p>
    #
    #   @return [Integer]
    #
    # @!attribute running_count
    #   <p>The number of tasks in the task set that are in the <code>RUNNING</code> status during
    #   			a deployment. A task in the <code>RUNNING</code> state is running and ready for
    #   			use.</p>
    #
    #   @return [Integer]
    #
    # @!attribute created_at
    #   <p>The Unix timestamp for the time when the task set was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_at
    #   <p>The Unix timestamp for the time when the task set was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute launch_type
    #   <p>The launch type the tasks in the task set are using. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html">Amazon ECS
    #   				launch types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   Enum, one of: ["EC2", "FARGATE", "EXTERNAL"]
    #
    #   @return [String]
    #
    # @!attribute capacity_provider_strategy
    #   <p>The capacity provider strategy that are associated with the task set.</p>
    #
    #   @return [Array<CapacityProviderStrategyItem>]
    #
    # @!attribute platform_version
    #   <p>The Fargate platform version where the tasks in the task set are running. A platform
    #   			version is only specified for tasks run on Fargate. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html">Fargate platform versions</a> in the
    #   			<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute platform_family
    #   <p>The operating system that your tasks in the set are running on. A platform family is
    #   			specified only for tasks that use the Fargate launch type. </p>
    #   		       <p> All tasks in the set must have the same value.</p>
    #
    #   @return [String]
    #
    # @!attribute network_configuration
    #   <p>The network configuration for the task set.</p>
    #
    #   @return [NetworkConfiguration]
    #
    # @!attribute load_balancers
    #   <p>Details on a load balancer that are used with a task set.</p>
    #
    #   @return [Array<LoadBalancer>]
    #
    # @!attribute service_registries
    #   <p>The details for the service discovery registries to assign to this task set. For more
    #   			information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html">Service
    #   				discovery</a>.</p>
    #
    #   @return [Array<ServiceRegistry>]
    #
    # @!attribute scale
    #   <p>A floating-point percentage of your desired number of tasks to place and keep running
    #   			in the task set.</p>
    #
    #   @return [Scale]
    #
    # @!attribute stability_status
    #   <p>The stability status. This indicates whether the task set has reached a steady state.
    #   			If the following conditions are met, the task set sre in
    #   			<code>STEADY_STATE</code>:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>The task <code>runningCount</code> is equal to the
    #   						<code>computedDesiredCount</code>.</p>
    #   			         </li>
    #               <li>
    #   				           <p>The <code>pendingCount</code> is <code>0</code>.</p>
    #   			         </li>
    #               <li>
    #   				           <p>There are no tasks that are running on container instances in the
    #   						<code>DRAINING</code> status.</p>
    #   			         </li>
    #               <li>
    #   				           <p>All tasks are reporting a healthy status from the load balancers, service
    #   					discovery, and container health checks.</p>
    #   			         </li>
    #            </ul>
    #   		       <p>If any of those conditions aren't met, the stability status returns
    #   				<code>STABILIZING</code>.</p>
    #
    #   Enum, one of: ["STEADY_STATE", "STABILIZING"]
    #
    #   @return [String]
    #
    # @!attribute stability_status_at
    #   <p>The Unix timestamp for the time when the task set stability status was
    #   			retrieved.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The metadata that you apply to the task set to help you categorize and organize them.
    #   			Each tag consists of a key and an optional value. You define both.</p>
    #   		       <p>The following basic restrictions apply to tags:</p>
    #           <ul>
    #               <li>
    #                   <p>Maximum number of tags per resource - 50</p>
    #               </li>
    #               <li>
    #                   <p>For each resource, each tag key must be unique, and each tag key can have only
    #                       one value.</p>
    #               </li>
    #               <li>
    #                   <p>Maximum key length - 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>Maximum value length - 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                   <p>If your tagging schema is used across multiple services and resources,
    #                       remember that other services may have restrictions on allowed characters.
    #                       Generally allowed characters are: letters, numbers, and spaces representable in
    #                       UTF-8, and the following characters: + - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                   <p>Tag keys and values are case-sensitive.</p>
    #               </li>
    #               <li>
    #                   <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase
    #                       combination of such as a prefix for either keys or values as it is reserved for
    #                       Amazon Web Services use. You cannot edit or delete tag keys or values with this prefix. Tags with
    #                       this prefix do not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Tag>]
    #
    TaskSet = ::Struct.new(
      :id,
      :task_set_arn,
      :service_arn,
      :cluster_arn,
      :started_by,
      :external_id,
      :status,
      :task_definition,
      :computed_desired_count,
      :pending_count,
      :running_count,
      :created_at,
      :updated_at,
      :launch_type,
      :capacity_provider_strategy,
      :platform_version,
      :platform_family,
      :network_configuration,
      :load_balancers,
      :service_registries,
      :scale,
      :stability_status,
      :stability_status_at,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.computed_desired_count ||= 0
        self.pending_count ||= 0
        self.running_count ||= 0
      end
    end

    # Includes enum constants for TaskSetField
    #
    module TaskSetField
      # No documentation available.
      #
      TAGS = "TAGS"
    end

    # <p>The specified task set wasn't found. You can view your available task sets with <a>DescribeTaskSets</a>. Task sets are specific to each cluster, service and
    # 			Region.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TaskSetNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TaskStopCode
    #
    module TaskStopCode
      # No documentation available.
      #
      TASK_FAILED_TO_START = "TaskFailedToStart"

      # No documentation available.
      #
      ESSENTIAL_CONTAINER_EXITED = "EssentialContainerExited"

      # No documentation available.
      #
      USER_INITIATED = "UserInitiated"
    end

    # <p>The container path, mount options, and size of the tmpfs mount.</p>
    #
    # @!attribute container_path
    #   <p>The absolute file path where the tmpfs volume is to be mounted.</p>
    #
    #   @return [String]
    #
    # @!attribute size
    #   <p>The maximum size (in MiB) of the tmpfs volume.</p>
    #
    #   @return [Integer]
    #
    # @!attribute mount_options
    #   <p>The list of tmpfs volume mount options.</p>
    #   		       <p>Valid values: <code>"defaults" | "ro" | "rw" | "suid" | "nosuid" | "dev" | "nodev" |
    #   				"exec" | "noexec" | "sync" | "async" | "dirsync" | "remount" | "mand" | "nomand" |
    #   				"atime" | "noatime" | "diratime" | "nodiratime" | "bind" | "rbind" | "unbindable" |
    #   				"runbindable" | "private" | "rprivate" | "shared" | "rshared" | "slave" | "rslave" |
    #   				"relatime" | "norelatime" | "strictatime" | "nostrictatime" | "mode" | "uid" | "gid"
    #   				| "nr_inodes" | "nr_blocks" | "mpol"</code>
    #            </p>
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

      def initialize(*)
        super
        self.size ||= 0
      end
    end

    # Includes enum constants for TransportProtocol
    #
    module TransportProtocol
      # No documentation available.
      #
      TCP = "tcp"

      # No documentation available.
      #
      UDP = "udp"
    end

    # <p>The <code>ulimit</code> settings to pass to the container.</p>
    # 		       <p>Amazon ECS tasks hosted on Fargate use the default
    # 							resource limit values set by the operating system with the exception of
    # 							the <code>nofile</code> resource limit parameter which Fargate
    # 							overrides. The <code>nofile</code> resource limit sets a restriction on
    # 							the number of open files that a container can use. The default
    # 								<code>nofile</code> soft limit is <code>1024</code> and hard limit
    # 							is <code>4096</code>.</p>
    #
    # @!attribute name
    #   <p>The <code>type</code> of the <code>ulimit</code>.</p>
    #
    #   Enum, one of: ["core", "cpu", "data", "fsize", "locks", "memlock", "msgqueue", "nice", "nofile", "nproc", "rss", "rtprio", "rttime", "sigpending", "stack"]
    #
    #   @return [String]
    #
    # @!attribute soft_limit
    #   <p>The soft limit for the ulimit type.</p>
    #
    #   @return [Integer]
    #
    # @!attribute hard_limit
    #   <p>The hard limit for the ulimit type.</p>
    #
    #   @return [Integer]
    #
    Ulimit = ::Struct.new(
      :name,
      :soft_limit,
      :hard_limit,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.soft_limit ||= 0
        self.hard_limit ||= 0
      end
    end

    # Includes enum constants for UlimitName
    #
    module UlimitName
      # No documentation available.
      #
      CORE = "core"

      # No documentation available.
      #
      CPU = "cpu"

      # No documentation available.
      #
      DATA = "data"

      # No documentation available.
      #
      FSIZE = "fsize"

      # No documentation available.
      #
      LOCKS = "locks"

      # No documentation available.
      #
      MEMLOCK = "memlock"

      # No documentation available.
      #
      MSGQUEUE = "msgqueue"

      # No documentation available.
      #
      NICE = "nice"

      # No documentation available.
      #
      NOFILE = "nofile"

      # No documentation available.
      #
      NPROC = "nproc"

      # No documentation available.
      #
      RSS = "rss"

      # No documentation available.
      #
      RTPRIO = "rtprio"

      # No documentation available.
      #
      RTTIME = "rttime"

      # No documentation available.
      #
      SIGPENDING = "sigpending"

      # No documentation available.
      #
      STACK = "stack"
    end

    # <p>The specified task isn't supported in this Region.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnsupportedFeatureException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to delete tags from. Currently, the supported resources
    #   			are Amazon ECS capacity providers, tasks, services, task definitions, clusters, and container
    #   			instances.</p>
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

    # @!attribute name
    #   <p>The name of the capacity provider to update.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_scaling_group_provider
    #   <p>An object that represent the parameters to update for the Auto Scaling group capacity
    #   			provider.</p>
    #
    #   @return [AutoScalingGroupProviderUpdate]
    #
    UpdateCapacityProviderInput = ::Struct.new(
      :name,
      :auto_scaling_group_provider,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute capacity_provider
    #   <p>Details about the capacity provider.</p>
    #
    #   @return [CapacityProvider]
    #
    UpdateCapacityProviderOutput = ::Struct.new(
      :capacity_provider,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The name of the cluster to modify the settings for.</p>
    #
    #   @return [String]
    #
    # @!attribute settings
    #   <p>The cluster settings for your cluster.</p>
    #
    #   @return [Array<ClusterSetting>]
    #
    # @!attribute configuration
    #   <p>The execute command configuration for the cluster.</p>
    #
    #   @return [ClusterConfiguration]
    #
    UpdateClusterInput = ::Struct.new(
      :cluster,
      :settings,
      :configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>Details about the cluster.</p>
    #
    #   @return [Cluster]
    #
    UpdateClusterOutput = ::Struct.new(
      :cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The name of the cluster to modify the settings for.</p>
    #
    #   @return [String]
    #
    # @!attribute settings
    #   <p>The setting to use by default for a cluster. This parameter is used to turn on CloudWatch
    #   			Container Insights for a cluster. If this value is specified, it overrides the
    #   				<code>containerInsights</code> value set with <a>PutAccountSetting</a> or
    #   				<a>PutAccountSettingDefault</a>.</p>
    #
    #   @return [Array<ClusterSetting>]
    #
    UpdateClusterSettingsInput = ::Struct.new(
      :cluster,
      :settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>Details about the cluster</p>
    #
    #   @return [Cluster]
    #
    UpdateClusterSettingsOutput = ::Struct.new(
      :cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that your container instance is
    #   			running on. If you do not specify a cluster, the default cluster is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute container_instance
    #   <p>The container instance ID or full ARN entries for the container instance where you
    #   			would like to update the Amazon ECS container agent.</p>
    #
    #   @return [String]
    #
    UpdateContainerAgentInput = ::Struct.new(
      :cluster,
      :container_instance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute container_instance
    #   <p>The container instance that the container agent was updated for.</p>
    #
    #   @return [ContainerInstance]
    #
    UpdateContainerAgentOutput = ::Struct.new(
      :container_instance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instance to
    #   			update. If you do not specify a cluster, the default cluster is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute container_instances
    #   <p>A list of up to 10 container instance IDs or full ARN entries.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute status
    #   <p>The container instance state to update the container instance with. The only valid
    #   			values for this action are <code>ACTIVE</code> and <code>DRAINING</code>. A container
    #   			instance can only be updated to <code>DRAINING</code> status once it has reached an
    #   				<code>ACTIVE</code> state. If a container instance is in <code>REGISTERING</code>,
    #   				<code>DEREGISTERING</code>, or <code>REGISTRATION_FAILED</code> state you can
    #   			describe the container instance but can't update the container instance state.</p>
    #
    #   Enum, one of: ["ACTIVE", "DRAINING", "REGISTERING", "DEREGISTERING", "REGISTRATION_FAILED"]
    #
    #   @return [String]
    #
    UpdateContainerInstancesStateInput = ::Struct.new(
      :cluster,
      :container_instances,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute container_instances
    #   <p>The list of container instances.</p>
    #
    #   @return [Array<ContainerInstance>]
    #
    # @!attribute failures
    #   <p>Any failures associated with the call.</p>
    #
    #   @return [Array<Failure>]
    #
    UpdateContainerInstancesStateOutput = ::Struct.new(
      :container_instances,
      :failures,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There's already a current Amazon ECS container agent update in progress on the container
    # 			instance that's specified. If the container agent becomes disconnected while it's in a
    # 			transitional stage, such as <code>PENDING</code> or <code>STAGING</code>, the update
    # 			process can get stuck in that state. However, when the agent reconnects, it resumes
    # 			where it stopped previously.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UpdateInProgressException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that your service runs on.
    #   			If you do not specify a cluster, the default cluster is assumed.</p>
    #
    #   @return [String]
    #
    # @!attribute service
    #   <p>The name of the service to update.</p>
    #
    #   @return [String]
    #
    # @!attribute desired_count
    #   <p>The number of instantiations of the task to place and keep running in your
    #   			service.</p>
    #
    #   @return [Integer]
    #
    # @!attribute task_definition
    #   <p>The <code>family</code> and <code>revision</code> (<code>family:revision</code>) or
    #   			full ARN of the task definition to run in your service. If a <code>revision</code> is
    #   			not specified, the latest <code>ACTIVE</code> revision is used. If you modify the task
    #   			definition with <code>UpdateService</code>, Amazon ECS spawns a task with the new version of
    #   			the task definition and then stops an old task after the new version is running.</p>
    #
    #   @return [String]
    #
    # @!attribute capacity_provider_strategy
    #   <p>The capacity provider strategy to update the service to use.</p>
    #   		       <p>if the service uses the default capacity provider strategy for the cluster, the
    #   			service can be updated to use one or more capacity providers as opposed to the default
    #   			capacity provider strategy. However, when a service is using a capacity provider
    #   			strategy that's not the default capacity provider strategy, the service can't be updated
    #   			to use the cluster's default capacity provider strategy.</p>
    #   		       <p>A capacity provider strategy consists of one or more capacity providers along with the
    #   				<code>base</code> and <code>weight</code> to assign to them. A capacity provider
    #   			must be associated with the cluster to be used in a capacity provider strategy. The
    #   				<a>PutClusterCapacityProviders</a> API is used to associate a capacity
    #   			provider with a cluster. Only capacity providers with an <code>ACTIVE</code> or
    #   				<code>UPDATING</code> status can be used.</p>
    #   		       <p>If specifying a capacity provider that uses an Auto Scaling group, the capacity
    #   			provider must already be created. New capacity providers can be created with the <a>CreateCapacityProvider</a> API operation.</p>
    #   		       <p>To use a Fargate capacity provider, specify either the <code>FARGATE</code> or
    #   				<code>FARGATE_SPOT</code> capacity providers. The Fargate capacity providers are
    #   			available to all accounts and only need to be associated with a cluster to be
    #   			used.</p>
    #   		       <p>The <a>PutClusterCapacityProviders</a> API operation is used to update the
    #   			list of available capacity providers for a cluster after the cluster is created.</p>
    #   		       <p></p>
    #
    #   @return [Array<CapacityProviderStrategyItem>]
    #
    # @!attribute deployment_configuration
    #   <p>Optional deployment parameters that control how many tasks run during the deployment
    #   			and the ordering of stopping and starting tasks.</p>
    #
    #   @return [DeploymentConfiguration]
    #
    # @!attribute network_configuration
    #   <p>An object representing the network configuration for the service.</p>
    #
    #   @return [NetworkConfiguration]
    #
    # @!attribute placement_constraints
    #   <p>An array of task placement constraint objects to update the service to use. If no
    #   			value is specified, the existing placement constraints for the service will remain
    #   			unchanged. If this value is specified, it will override any existing placement
    #   			constraints defined for the service. To remove all existing placement constraints,
    #   			specify an empty array.</p>
    #   		       <p>You can specify a maximum of 10 constraints for each task. This limit includes
    #   			constraints in the task definition and those specified at runtime.</p>
    #
    #   @return [Array<PlacementConstraint>]
    #
    # @!attribute placement_strategy
    #   <p>The task placement strategy objects to update the service to use. If no value is
    #   			specified, the existing placement strategy for the service will remain unchanged. If
    #   			this value is specified, it will override the existing placement strategy defined for
    #   			the service. To remove an existing placement strategy, specify an empty object.</p>
    #   		       <p>You can specify a maximum of five strategy rules for each service.</p>
    #
    #   @return [Array<PlacementStrategy>]
    #
    # @!attribute platform_version
    #   <p>The platform version that your tasks in the service run on. A platform version is only
    #   			specified for tasks using the Fargate launch type. If a platform version
    #   			is not specified, the <code>LATEST</code> platform version is used. For more
    #   			information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html">Fargate Platform
    #   				Versions</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute force_new_deployment
    #   <p>Determines whether to force a new deployment of the service. By default, deployments
    #   			aren't forced. You can use this option to start a new deployment with no service
    #   			definition changes. For example, you can update a service's tasks to use a newer Docker
    #   			image with the same image/tag combination (<code>my_image:latest</code>) or to roll
    #   			Fargate tasks onto a newer platform version.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute health_check_grace_period_seconds
    #   <p>The period of time, in seconds, that the Amazon ECS service scheduler ignores unhealthy
    #   			Elastic Load Balancing target health checks after a task has first started. This is only valid if your
    #   			service is configured to use a load balancer. If your service's tasks take a while to
    #   			start and respond to Elastic Load Balancing health checks, you can specify a health check grace period of
    #   			up to 2,147,483,647 seconds. During that time, the Amazon ECS service scheduler ignores
    #   			the Elastic Load Balancing health check status. This grace period can prevent the ECS service scheduler
    #   			from marking tasks as unhealthy and stopping them before they have time to come
    #   			up.</p>
    #
    #   @return [Integer]
    #
    # @!attribute enable_execute_command
    #   <p>If <code>true</code>, this enables execute command functionality on all task
    #   			containers.</p>
    #   		       <p>If you do not want to override the value that was set when the service was created,
    #   			you can set this to <code>null</code> when performing this action.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_ecs_managed_tags
    #   <p>Determines whether to turn on Amazon ECS managed tags for the tasks in the service. For more
    #   			information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html">Tagging Your Amazon ECS
    #   				Resources</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #   		       <p>Only tasks launched after the update will reflect the update. To update the tags on
    #   			all tasks, set <code>forceNewDeployment</code> to <code>true</code>, so that Amazon ECS
    #   			starts new tasks with the updated tags.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute load_balancers
    #   <p>A list of Elastic Load Balancing load balancer objects. It contains the load balancer name, the
    #   			container name, and the container port to access from the load balancer. The container
    #   			name is as it appears in a container definition.</p>
    #   		       <p>When you add, update, or remove a load balancer configuration, Amazon ECS starts new tasks with
    #   			the updated Elastic Load Balancing configuration, and then stops the old tasks when the new tasks are
    #   			running.</p>
    #   		       <p>For services that use rolling updates, you can add, update, or remove Elastic Load Balancing target groups.
    #   			You can update from a single target group to multiple target groups and from multiple
    #   			target groups to a single target group.</p>
    #   		       <p>For services that use blue/green deployments, you can update Elastic Load Balancing target groups by using
    #   					<code>
    #                  <a href="https://docs.aws.amazon.com/codedeploy/latest/APIReference/API_CreateDeployment.html">CreateDeployment</a>
    #               </code> through CodeDeploy. Note that multiple target groups
    #   			are not supported for blue/green deployments. For more information see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/register-multiple-targetgroups.html">Register
    #   				multiple target groups with a service</a> in the
    #   				<i>Amazon Elastic Container Service Developer Guide</i>. </p>
    #   		       <p>For services that use the external deployment controller, you can add, update, or remove
    #   			load balancers by using <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateTaskSet.html">CreateTaskSet</a>.
    #   			Note that multiple target groups are not supported for external deployments. For more
    #   			information see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/register-multiple-targetgroups.html">Register
    #   				multiple target groups with a service</a> in the
    #   				<i>Amazon Elastic Container Service Developer Guide</i>. </p>
    #   		       <p>You can remove existing <code>loadBalancers</code> by passing an empty list.</p>
    #
    #   @return [Array<LoadBalancer>]
    #
    # @!attribute propagate_tags
    #   <p>Determines whether to propagate the tags from the task definition or the service to
    #   			the task. If no value is specified, the tags aren't propagated.</p>
    #   		       <p>Only tasks launched after the update will reflect the update. To update the tags on
    #   			all tasks, set <code>forceNewDeployment</code> to <code>true</code>, so that Amazon ECS
    #   			starts new tasks with the updated tags.</p>
    #
    #   Enum, one of: ["TASK_DEFINITION", "SERVICE", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute service_registries
    #   <p>The details for the service discovery registries to assign to this service. For more
    #   			information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html">Service
    #   				Discovery</a>.</p>
    #   		       <p>When you add, update, or remove the service registries configuration, Amazon ECS starts new tasks
    #   			with the updated service registries configuration, and then stops the old tasks when the
    #   			new tasks are running.</p>
    #   		       <p>You can remove existing <code>serviceRegistries</code> by passing an empty
    #   			list.</p>
    #
    #   @return [Array<ServiceRegistry>]
    #
    UpdateServiceInput = ::Struct.new(
      :cluster,
      :service,
      :desired_count,
      :task_definition,
      :capacity_provider_strategy,
      :deployment_configuration,
      :network_configuration,
      :placement_constraints,
      :placement_strategy,
      :platform_version,
      :force_new_deployment,
      :health_check_grace_period_seconds,
      :enable_execute_command,
      :enable_ecs_managed_tags,
      :load_balancers,
      :propagate_tags,
      :service_registries,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.force_new_deployment ||= false
      end
    end

    # @!attribute service
    #   <p>The full description of your service following the update call.</p>
    #
    #   @return [Service]
    #
    UpdateServiceOutput = ::Struct.new(
      :service,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service that the task
    #   			set exists in.</p>
    #
    #   @return [String]
    #
    # @!attribute service
    #   <p>The short name or full Amazon Resource Name (ARN) of the service that the task set exists in.</p>
    #
    #   @return [String]
    #
    # @!attribute primary_task_set
    #   <p>The short name or full Amazon Resource Name (ARN) of the task set to set as the primary task set in the
    #   			deployment.</p>
    #
    #   @return [String]
    #
    UpdateServicePrimaryTaskSetInput = ::Struct.new(
      :cluster,
      :service,
      :primary_task_set,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_set
    #   <p>etails about the task set.</p>
    #
    #   @return [TaskSet]
    #
    UpdateServicePrimaryTaskSetOutput = ::Struct.new(
      :task_set,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service that the task
    #   			set is found in.</p>
    #
    #   @return [String]
    #
    # @!attribute service
    #   <p>The short name or full Amazon Resource Name (ARN) of the service that the task set is found in.</p>
    #
    #   @return [String]
    #
    # @!attribute task_set
    #   <p>The short name or full Amazon Resource Name (ARN) of the task set to update.</p>
    #
    #   @return [String]
    #
    # @!attribute scale
    #   <p>A floating-point percentage of the desired number of tasks to place and keep running
    #   			in the task set.</p>
    #
    #   @return [Scale]
    #
    UpdateTaskSetInput = ::Struct.new(
      :cluster,
      :service,
      :task_set,
      :scale,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_set
    #   <p>Details about the task set.</p>
    #
    #   @return [TaskSet]
    #
    UpdateTaskSetOutput = ::Struct.new(
      :task_set,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Docker and Amazon ECS container agent version information about a container
    # 			instance.</p>
    #
    # @!attribute agent_version
    #   <p>The version number of the Amazon ECS container agent.</p>
    #
    #   @return [String]
    #
    # @!attribute agent_hash
    #   <p>The Git commit hash for the Amazon ECS container agent build on the <a href="https://github.com/aws/amazon-ecs-agent/commits/master">amazon-ecs-agent
    #   			</a> GitHub repository.</p>
    #
    #   @return [String]
    #
    # @!attribute docker_version
    #   <p>The Docker version that's running on the container instance.</p>
    #
    #   @return [String]
    #
    VersionInfo = ::Struct.new(
      :agent_version,
      :agent_hash,
      :docker_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A data volume that's used in a task definition. For tasks that use the Amazon Elastic
    # 			File System (Amazon EFS), specify an <code>efsVolumeConfiguration</code>. For Windows
    # 			tasks that use Amazon FSx for Windows File Server file system, specify a
    # 				<code>fsxWindowsFileServerVolumeConfiguration</code>. For tasks that use a Docker
    # 			volume, specify a <code>DockerVolumeConfiguration</code>. For tasks that use a bind
    # 			mount host volume, specify a <code>host</code> and optional <code>sourcePath</code>. For
    # 			more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_data_volumes.html">Using Data Volumes in
    # 				Tasks</a>.</p>
    #
    # @!attribute name
    #   <p>The name of the volume. Up to 255 letters (uppercase and lowercase), numbers, underscores, and hyphens are allowed. This name is referenced in the
    #   				<code>sourceVolume</code> parameter of container definition
    #   			<code>mountPoints</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute host
    #   <p>This parameter is specified when you use bind mount host volumes. The contents of the
    #   				<code>host</code> parameter determine whether your bind mount host volume persists
    #   			on the host container instance and where it's stored. If the <code>host</code> parameter
    #   			is empty, then the Docker daemon assigns a host path for your data volume. However, the
    #   			data isn't guaranteed to persist after the containers that are associated with it stop
    #   			running.</p>
    #   		       <p>Windows containers can mount whole directories on the same drive as
    #   				<code>$env:ProgramData</code>. Windows containers can't mount directories on a
    #   			different drive, and mount point can't be across drives. For example, you can mount
    #   				<code>C:\my\path:C:\my\path</code> and <code>D:\:D:\</code>, but not
    #   				<code>D:\my\path:C:\my\path</code> or <code>D:\:C:\my\path</code>.</p>
    #
    #   @return [HostVolumeProperties]
    #
    # @!attribute docker_volume_configuration
    #   <p>This parameter is specified when you use Docker volumes.</p>
    #   		       <p>Windows containers only support the use of the <code>local</code> driver. To use bind
    #   			mounts, specify the <code>host</code> parameter instead.</p>
    #   		       <note>
    #   			         <p>Docker volumes aren't supported by tasks run on Fargate.</p>
    #   		       </note>
    #
    #   @return [DockerVolumeConfiguration]
    #
    # @!attribute efs_volume_configuration
    #   <p>This parameter is specified when you use an Amazon Elastic File System file system for task
    #   			storage.</p>
    #
    #   @return [EFSVolumeConfiguration]
    #
    # @!attribute fsx_windows_file_server_volume_configuration
    #   <p>This parameter is specified when you use Amazon FSx for Windows File Server file system for task
    #   			storage.</p>
    #
    #   @return [FSxWindowsFileServerVolumeConfiguration]
    #
    Volume = ::Struct.new(
      :name,
      :host,
      :docker_volume_configuration,
      :efs_volume_configuration,
      :fsx_windows_file_server_volume_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details on a data volume from another container in the same task definition.</p>
    #
    # @!attribute source_container
    #   <p>The name of another container within the same task definition to mount volumes
    #   			from.</p>
    #
    #   @return [String]
    #
    # @!attribute read_only
    #   <p>If this value is <code>true</code>, the container has read-only access to the volume.
    #   			If this value is <code>false</code>, then the container can write to the volume. The
    #   			default value is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    VolumeFrom = ::Struct.new(
      :source_container,
      :read_only,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
