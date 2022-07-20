# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::ECS
  # An API client for AmazonEC2ContainerServiceV20141113
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon Elastic Container Service</fullname>
  # 		       <p>Amazon Elastic Container Service (Amazon ECS) is a highly scalable, fast, container management service. It makes
  # 			it easy to run, stop, and manage Docker containers on a cluster. You can host your
  # 			cluster on a serverless infrastructure that's managed by Amazon ECS by launching your
  # 			services or tasks on Fargate. For more control, you can host your tasks on a cluster
  # 			of Amazon Elastic Compute Cloud (Amazon EC2) instances that you manage.</p>
  # 		       <p>Amazon ECS makes it easy to launch and stop container-based applications with simple API
  # 			calls. This makes it easy to get the state of your cluster from a centralized service,
  # 			and gives you access to many familiar Amazon EC2 features.</p>
  # 		       <p>You can use Amazon ECS to schedule the placement of containers across your cluster based on
  # 			your resource needs, isolation policies, and availability requirements. With Amazon ECS, you
  # 			don't need to operate your own cluster management and configuration management systems.
  # 			You also don't need to worry about scaling your management infrastructure.</p>
  #
  class Client
    include Hearth::ClientStubs

    @middleware = Hearth::MiddlewareBuilder.new

    def self.middleware
      @middleware
    end

    # @param [Config] config
    #   An instance of {Config}
    #
    def initialize(config = AWS::SDK::ECS::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a new capacity provider. Capacity providers are associated with an Amazon ECS
    # 			cluster and are used in capacity provider strategies to facilitate cluster auto
    # 			scaling.</p>
    # 		       <p>Only capacity providers that use an Auto Scaling group can be created. Amazon ECS tasks on
    # 			Fargate use the <code>FARGATE</code> and <code>FARGATE_SPOT</code> capacity providers.
    # 			These providers are available to all accounts in the Amazon Web Services Regions that Fargate
    # 			supports.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateCapacityProviderInput}.
    #
    # @option params [String] :name
    #   <p>The name of the capacity provider. Up to 255 characters are allowed. They include
    #   			letters (both upper and lowercase letters), numbers, underscores (_), and hyphens (-).
    #   			The name can't be prefixed with "<code>aws</code>", "<code>ecs</code>", or
    #   				"<code>fargate</code>".</p>
    #
    # @option params [AutoScalingGroupProvider] :auto_scaling_group_provider
    #   <p>The details of the Auto Scaling group for the capacity provider.</p>
    #
    # @option params [Array<Tag>] :tags
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
    # @return [Types::CreateCapacityProviderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_capacity_provider(
    #     name: 'name', # required
    #     auto_scaling_group_provider: {
    #       auto_scaling_group_arn: 'autoScalingGroupArn', # required
    #       managed_scaling: {
    #         status: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #         target_capacity: 1,
    #         minimum_scaling_step_size: 1,
    #         maximum_scaling_step_size: 1,
    #         instance_warmup_period: 1
    #       },
    #       managed_termination_protection: 'ENABLED' # accepts ["ENABLED", "DISABLED"]
    #     }, # required
    #     tags: [
    #       {
    #         key: 'key',
    #         value: 'value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateCapacityProviderOutput
    #   resp.data.capacity_provider #=> Types::CapacityProvider
    #   resp.data.capacity_provider.capacity_provider_arn #=> String
    #   resp.data.capacity_provider.name #=> String
    #   resp.data.capacity_provider.status #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.capacity_provider.auto_scaling_group_provider #=> Types::AutoScalingGroupProvider
    #   resp.data.capacity_provider.auto_scaling_group_provider.auto_scaling_group_arn #=> String
    #   resp.data.capacity_provider.auto_scaling_group_provider.managed_scaling #=> Types::ManagedScaling
    #   resp.data.capacity_provider.auto_scaling_group_provider.managed_scaling.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.capacity_provider.auto_scaling_group_provider.managed_scaling.target_capacity #=> Integer
    #   resp.data.capacity_provider.auto_scaling_group_provider.managed_scaling.minimum_scaling_step_size #=> Integer
    #   resp.data.capacity_provider.auto_scaling_group_provider.managed_scaling.maximum_scaling_step_size #=> Integer
    #   resp.data.capacity_provider.auto_scaling_group_provider.managed_scaling.instance_warmup_period #=> Integer
    #   resp.data.capacity_provider.auto_scaling_group_provider.managed_termination_protection #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.capacity_provider.update_status #=> String, one of ["DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED"]
    #   resp.data.capacity_provider.update_status_reason #=> String
    #   resp.data.capacity_provider.tags #=> Array<Tag>
    #   resp.data.capacity_provider.tags[0] #=> Types::Tag
    #   resp.data.capacity_provider.tags[0].key #=> String
    #   resp.data.capacity_provider.tags[0].value #=> String
    #
    def create_capacity_provider(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCapacityProviderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCapacityProviderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCapacityProvider
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServerException, Errors::UpdateInProgressException, Errors::InvalidParameterException, Errors::LimitExceededException, Errors::ClientException]),
        data_parser: Parsers::CreateCapacityProvider
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCapacityProvider,
        stubs: @stubs,
        params_class: Params::CreateCapacityProviderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_capacity_provider
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new Amazon ECS cluster. By default, your account receives a <code>default</code>
    # 			cluster when you launch your first container instance. However, you can create your own
    # 			cluster with a unique name with the <code>CreateCluster</code> action.</p>
    # 		       <note>
    # 			         <p>When you call the <a>CreateCluster</a> API operation, Amazon ECS attempts to
    # 				create the Amazon ECS service-linked role for your account. This is so that it can manage
    # 				required resources in other Amazon Web Services services on your behalf. However, if the IAM user
    # 				that makes the call doesn't have permissions to create the service-linked role, it
    # 				isn't created. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html">Using
    # 					Service-Linked Roles for Amazon ECS</a> in the
    # 					<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::CreateClusterInput}.
    #
    # @option params [String] :cluster_name
    #   <p>The name of your cluster. If you don't specify a name for your cluster, you create a
    #   			cluster that's named <code>default</code>. Up to 255 letters (uppercase and lowercase), numbers, underscores, and hyphens are allowed. </p>
    #
    # @option params [Array<Tag>] :tags
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
    # @option params [Array<ClusterSetting>] :settings
    #   <p>The setting to use when creating a cluster. This parameter is used to turn on CloudWatch
    #   			Container Insights for a cluster. If this value is specified, it overrides the
    #   				<code>containerInsights</code> value set with <a>PutAccountSetting</a> or
    #   				<a>PutAccountSettingDefault</a>.</p>
    #
    # @option params [ClusterConfiguration] :configuration
    #   <p>The <code>execute</code> command configuration for the cluster.</p>
    #
    # @option params [Array<String>] :capacity_providers
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
    # @option params [Array<CapacityProviderStrategyItem>] :default_capacity_provider_strategy
    #   <p>The capacity provider strategy to set as the default for the cluster. After a default
    #   			capacity provider strategy is set for a cluster, when you call the <a>RunTask</a> or <a>CreateService</a> APIs with no capacity
    #   			provider strategy or launch type specified, the default capacity provider strategy for
    #   			the cluster is used.</p>
    #   		       <p>If a default capacity provider strategy isn't defined for a cluster when it was
    #   			created, it can be defined later with the <a>PutClusterCapacityProviders</a>
    #   			API operation.</p>
    #
    # @return [Types::CreateClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster(
    #     cluster_name: 'clusterName',
    #     tags: [
    #       {
    #         key: 'key',
    #         value: 'value'
    #       }
    #     ],
    #     settings: [
    #       {
    #         name: 'containerInsights', # accepts ["containerInsights"]
    #         value: 'value'
    #       }
    #     ],
    #     configuration: {
    #       execute_command_configuration: {
    #         kms_key_id: 'kmsKeyId',
    #         logging: 'NONE', # accepts ["NONE", "DEFAULT", "OVERRIDE"]
    #         log_configuration: {
    #           cloud_watch_log_group_name: 'cloudWatchLogGroupName',
    #           cloud_watch_encryption_enabled: false,
    #           s3_bucket_name: 's3BucketName',
    #           s3_encryption_enabled: false,
    #           s3_key_prefix: 's3KeyPrefix'
    #         }
    #       }
    #     },
    #     capacity_providers: [
    #       'member'
    #     ],
    #     default_capacity_provider_strategy: [
    #       {
    #         capacity_provider: 'capacityProvider', # required
    #         weight: 1,
    #         base: 1
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateClusterOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.cluster_arn #=> String
    #   resp.data.cluster.cluster_name #=> String
    #   resp.data.cluster.configuration #=> Types::ClusterConfiguration
    #   resp.data.cluster.configuration.execute_command_configuration #=> Types::ExecuteCommandConfiguration
    #   resp.data.cluster.configuration.execute_command_configuration.kms_key_id #=> String
    #   resp.data.cluster.configuration.execute_command_configuration.logging #=> String, one of ["NONE", "DEFAULT", "OVERRIDE"]
    #   resp.data.cluster.configuration.execute_command_configuration.log_configuration #=> Types::ExecuteCommandLogConfiguration
    #   resp.data.cluster.configuration.execute_command_configuration.log_configuration.cloud_watch_log_group_name #=> String
    #   resp.data.cluster.configuration.execute_command_configuration.log_configuration.cloud_watch_encryption_enabled #=> Boolean
    #   resp.data.cluster.configuration.execute_command_configuration.log_configuration.s3_bucket_name #=> String
    #   resp.data.cluster.configuration.execute_command_configuration.log_configuration.s3_encryption_enabled #=> Boolean
    #   resp.data.cluster.configuration.execute_command_configuration.log_configuration.s3_key_prefix #=> String
    #   resp.data.cluster.status #=> String
    #   resp.data.cluster.registered_container_instances_count #=> Integer
    #   resp.data.cluster.running_tasks_count #=> Integer
    #   resp.data.cluster.pending_tasks_count #=> Integer
    #   resp.data.cluster.active_services_count #=> Integer
    #   resp.data.cluster.statistics #=> Array<KeyValuePair>
    #   resp.data.cluster.statistics[0] #=> Types::KeyValuePair
    #   resp.data.cluster.statistics[0].name #=> String
    #   resp.data.cluster.statistics[0].value #=> String
    #   resp.data.cluster.tags #=> Array<Tag>
    #   resp.data.cluster.tags[0] #=> Types::Tag
    #   resp.data.cluster.tags[0].key #=> String
    #   resp.data.cluster.tags[0].value #=> String
    #   resp.data.cluster.settings #=> Array<ClusterSetting>
    #   resp.data.cluster.settings[0] #=> Types::ClusterSetting
    #   resp.data.cluster.settings[0].name #=> String, one of ["containerInsights"]
    #   resp.data.cluster.settings[0].value #=> String
    #   resp.data.cluster.capacity_providers #=> Array<String>
    #   resp.data.cluster.capacity_providers[0] #=> String
    #   resp.data.cluster.default_capacity_provider_strategy #=> Array<CapacityProviderStrategyItem>
    #   resp.data.cluster.default_capacity_provider_strategy[0] #=> Types::CapacityProviderStrategyItem
    #   resp.data.cluster.default_capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.data.cluster.default_capacity_provider_strategy[0].weight #=> Integer
    #   resp.data.cluster.default_capacity_provider_strategy[0].base #=> Integer
    #   resp.data.cluster.attachments #=> Array<Attachment>
    #   resp.data.cluster.attachments[0] #=> Types::Attachment
    #   resp.data.cluster.attachments[0].id #=> String
    #   resp.data.cluster.attachments[0].type #=> String
    #   resp.data.cluster.attachments[0].status #=> String
    #   resp.data.cluster.attachments[0].details #=> Array<KeyValuePair>
    #   resp.data.cluster.attachments_status #=> String
    #
    def create_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateClusterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCluster
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::CreateCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCluster,
        stubs: @stubs,
        params_class: Params::CreateClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Runs and maintains your desired number of tasks from a specified task definition. If
    # 			the number of tasks running in a service drops below the <code>desiredCount</code>,
    # 			Amazon ECS runs another copy of the task in the specified cluster. To update an existing
    # 			service, see the UpdateService action.</p>
    # 		       <p>In addition to maintaining the desired count of tasks in your service, you can
    # 			optionally run your service behind one or more load balancers. The load balancers
    # 			distribute traffic across the tasks that are associated with the service. For more
    # 			information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-load-balancing.html">Service Load Balancing</a> in the
    # 				<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # 		       <p>Tasks for services that don't use a load balancer are considered healthy if they're in
    # 			the <code>RUNNING</code> state. Tasks for services that use a load balancer are
    # 			considered healthy if they're in the <code>RUNNING</code> state and are reported as healthy by the load balancer.</p>
    # 		       <p>There are two service scheduler strategies available:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>
    #                   <code>REPLICA</code> - The replica scheduling strategy places and
    # 					maintains your desired number of tasks across your cluster. By default, the
    # 					service scheduler spreads tasks across Availability Zones. You can use task
    # 					placement strategies and constraints to customize task placement decisions. For
    # 					more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html">Service Scheduler Concepts</a> in the
    # 						<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # 			         </li>
    #             <li>
    # 				           <p>
    #                   <code>DAEMON</code> - The daemon scheduling strategy deploys exactly one
    # 					task on each active container instance that meets all of the task placement
    # 					constraints that you specify in your cluster. The service scheduler also
    # 					evaluates the task placement constraints for running tasks. It also stops tasks
    # 					that don't meet the placement constraints. When using this strategy, you don't
    # 					need to specify a desired number of tasks, a task placement strategy, or use
    # 					Service Auto Scaling policies. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html">Service Scheduler Concepts</a> in the
    # 						<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # 			         </li>
    #          </ul>
    # 		       <p>You can optionally specify a deployment configuration for your service. The deployment
    # 			is initiated by changing properties. For example, the deployment might be initiated by
    # 			the task definition or by your desired count of a service. This is done with an <a>UpdateService</a> operation. The default value for a replica service for
    # 				<code>minimumHealthyPercent</code> is 100%. The default value for a daemon service
    # 			for <code>minimumHealthyPercent</code> is 0%.</p>
    # 		       <p>If a service uses the <code>ECS</code> deployment controller, the minimum healthy
    # 			percent represents a lower limit on the number of tasks in a service that must remain in
    # 			the <code>RUNNING</code> state during a deployment. Specifically, it represents it as a
    # 			percentage of your desired number of tasks (rounded up to the nearest integer). This
    # 			happens when any of your container instances are in the <code>DRAINING</code> state if
    # 			the service contains tasks using the EC2 launch type. Using this
    # 			parameter, you can deploy without using additional cluster capacity. For example, if you
    # 			set your service to have desired number of four tasks and a minimum healthy percent of
    # 			50%, the scheduler might stop two existing tasks to free up cluster capacity before
    # 			starting two new tasks. If they're in the <code>RUNNING</code> state, tasks for services
    # 			that don't use a load balancer are considered healthy . If they're in the
    # 				<code>RUNNING</code> state and reported as healthy by the load balancer, tasks for
    # 			services that <i>do</i> use a load balancer are considered healthy . The
    # 			default value for minimum healthy percent is 100%.</p>
    # 		       <p>If a service uses the <code>ECS</code> deployment controller, the <b>maximum percent</b> parameter represents an upper limit on the
    # 			number of tasks in a service that are allowed in the <code>RUNNING</code> or
    # 				<code>PENDING</code> state during a deployment. Specifically, it represents it as a
    # 			percentage of the desired number of tasks (rounded down to the nearest integer). This
    # 			happens when any of your container instances are in the <code>DRAINING</code> state if
    # 			the service contains tasks using the EC2 launch type. Using this
    # 			parameter, you can define the deployment batch size. For example, if your service has a
    # 			desired number of four tasks and a maximum percent value of 200%, the scheduler may
    # 			start four new tasks before stopping the four older tasks (provided that the cluster
    # 			resources required to do this are available). The default value for maximum percent is
    # 			200%.</p>
    # 		       <p>If a service uses either the <code>CODE_DEPLOY</code> or <code>EXTERNAL</code>
    # 			deployment controller types and tasks that use the EC2 launch type, the
    # 				<b>minimum healthy percent</b> and <b>maximum percent</b> values are used only to define the lower and upper limit
    # 			on the number of the tasks in the service that remain in the <code>RUNNING</code> state.
    # 			This is while the container instances are in the <code>DRAINING</code> state. If the
    # 			tasks in the service use the Fargate launch type, the minimum healthy
    # 			percent and maximum percent values aren't used. This is the case even if they're
    # 			currently visible when describing your service.</p>
    # 		       <p>When creating a service that uses the <code>EXTERNAL</code> deployment controller, you
    # 			can specify only parameters that aren't controlled at the task set level. The only
    # 			required parameter is the service name. You control your services using the <a>CreateTaskSet</a> operation. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html">Amazon ECS Deployment Types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # 		       <p>When the service scheduler launches new tasks, it determines task placement in your
    # 			cluster using the following logic:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>Determine which of the container instances in your cluster can support the
    # 					task definition of your service. For example, they have the required CPU,
    # 					memory, ports, and container instance attributes.</p>
    # 			         </li>
    #             <li>
    # 				           <p>By default, the service scheduler attempts to balance tasks across
    # 					Availability Zones in this manner. This is the case even if you can choose a
    # 					different placement strategy with the <code>placementStrategy</code>
    # 					parameter.</p>
    # 				           <ul>
    #                   <li>
    # 						               <p>Sort the valid container instances, giving priority to instances that
    # 							have the fewest number of running tasks for this service in their
    # 							respective Availability Zone. For example, if zone A has one running
    # 							service task and zones B and C each have zero, valid container instances
    # 							in either zone B or C are considered optimal for placement.</p>
    # 					             </li>
    #                   <li>
    # 						               <p>Place the new service task on a valid container instance in an optimal
    # 							Availability Zone based on the previous steps, favoring container
    # 							instances with the fewest number of running tasks for this
    # 							service.</p>
    # 					             </li>
    #                </ul>
    # 			         </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateServiceInput}.
    #
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that you run your service on.
    #   			If you do not specify a cluster, the default cluster is assumed.</p>
    #
    # @option params [String] :service_name
    #   <p>The name of your service. Up to 255 letters (uppercase and lowercase), numbers, underscores, and hyphens are allowed. Service names must be unique within
    #   			a cluster, but you can have similarly named services in multiple clusters within a
    #   			Region or across multiple Regions.</p>
    #
    # @option params [String] :task_definition
    #   <p>The <code>family</code> and <code>revision</code> (<code>family:revision</code>) or
    #   			full ARN of the task definition to run in your service. If a <code>revision</code>
    #   			isn't specified, the latest <code>ACTIVE</code> revision is used.</p>
    #   		       <p>A task definition must be specified if the service uses either the <code>ECS</code> or
    #   				<code>CODE_DEPLOY</code> deployment controllers.</p>
    #
    # @option params [Array<LoadBalancer>] :load_balancers
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
    # @option params [Array<ServiceRegistry>] :service_registries
    #   <p>The details of the service discovery registry to associate with this service. For more
    #   			information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html">Service
    #   				discovery</a>.</p>
    #   		       <note>
    #   			         <p>Each service may be associated with one service registry. Multiple service
    #   				registries for each service isn't supported.</p>
    #   		       </note>
    #
    # @option params [Integer] :desired_count
    #   <p>The number of instantiations of the specified task definition to place and keep
    #   			running on your cluster.</p>
    #   		       <p>This is required if <code>schedulingStrategy</code> is <code>REPLICA</code> or isn't
    #   			specified. If <code>schedulingStrategy</code> is <code>DAEMON</code> then this isn't
    #   			required.</p>
    #
    # @option params [String] :client_token
    #   <p>An identifier that you provide to ensure the idempotency of the request. It must be
    #   			unique and is case sensitive. Up to 32 ASCII characters are allowed.</p>
    #
    # @option params [String] :launch_type
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
    # @option params [Array<CapacityProviderStrategyItem>] :capacity_provider_strategy
    #   <p>The capacity provider strategy to use for the service.</p>
    #   		       <p>If a <code>capacityProviderStrategy</code> is specified, the <code>launchType</code>
    #   			parameter must be omitted. If no <code>capacityProviderStrategy</code> or
    #   				<code>launchType</code> is specified, the
    #   				<code>defaultCapacityProviderStrategy</code> for the cluster is used.</p>
    #   		       <p>A capacity provider strategy may contain a maximum of 6 capacity providers.</p>
    #
    # @option params [String] :platform_version
    #   <p>The platform version that your tasks in the service are running on. A platform version
    #   			is specified only for tasks using the Fargate launch type. If one isn't
    #   			specified, the <code>LATEST</code> platform version is used. For more information, see
    #   				<a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html">Fargate platform
    #   				versions</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @option params [String] :role
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
    #   				<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-friendly-names">Friendly names and paths</a> in the <i>IAM User Guide</i>.</p>
    #
    # @option params [DeploymentConfiguration] :deployment_configuration
    #   <p>Optional deployment parameters that control how many tasks run during the deployment
    #   			and the ordering of stopping and starting tasks.</p>
    #
    # @option params [Array<PlacementConstraint>] :placement_constraints
    #   <p>An array of placement constraint objects to use for tasks in your service. You can
    #   			specify a maximum of 10 constraints for each task. This limit includes constraints in
    #   			the task definition and those specified at runtime.</p>
    #
    # @option params [Array<PlacementStrategy>] :placement_strategy
    #   <p>The placement strategy objects to use for tasks in your service. You can specify a
    #   			maximum of 5 strategy rules for each service.</p>
    #
    # @option params [NetworkConfiguration] :network_configuration
    #   <p>The network configuration for the service. This parameter is required for task
    #   			definitions that use the <code>awsvpc</code> network mode to receive their own elastic
    #   			network interface, and it isn't supported for other network modes. For more information,
    #   			see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html">Task networking</a>
    #   			in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @option params [Integer] :health_check_grace_period_seconds
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
    # @option params [String] :scheduling_strategy
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
    # @option params [DeploymentController] :deployment_controller
    #   <p>The deployment controller to use for the service. If no deployment controller is
    #   			specified, the default value of <code>ECS</code> is used.</p>
    #
    # @option params [Array<Tag>] :tags
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
    # @option params [Boolean] :enable_ecs_managed_tags
    #   <p>Specifies whether to turn on Amazon ECS managed tags for the tasks within the service. For
    #   			more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html">Tagging Your Amazon ECS
    #   				Resources</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @option params [String] :propagate_tags
    #   <p>Specifies whether to propagate the tags from the task definition to the task. If no
    #   			value is specified, the tags aren't propagated. Tags can only be propagated to the task
    #   			during task creation. To add tags to a task after task creation, use the <a>TagResource</a> API action.</p>
    #
    # @option params [Boolean] :enable_execute_command
    #   <p>Determines whether the execute command functionality is enabled for the service. If
    #   				<code>true</code>, this enables execute command functionality on all containers in
    #   			the service tasks.</p>
    #
    # @return [Types::CreateServiceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_service(
    #     cluster: 'cluster',
    #     service_name: 'serviceName', # required
    #     task_definition: 'taskDefinition',
    #     load_balancers: [
    #       {
    #         target_group_arn: 'targetGroupArn',
    #         load_balancer_name: 'loadBalancerName',
    #         container_name: 'containerName',
    #         container_port: 1
    #       }
    #     ],
    #     service_registries: [
    #       {
    #         registry_arn: 'registryArn',
    #         port: 1,
    #         container_name: 'containerName',
    #         container_port: 1
    #       }
    #     ],
    #     desired_count: 1,
    #     client_token: 'clientToken',
    #     launch_type: 'EC2', # accepts ["EC2", "FARGATE", "EXTERNAL"]
    #     capacity_provider_strategy: [
    #       {
    #         capacity_provider: 'capacityProvider', # required
    #         weight: 1,
    #         base: 1
    #       }
    #     ],
    #     platform_version: 'platformVersion',
    #     role: 'role',
    #     deployment_configuration: {
    #       deployment_circuit_breaker: {
    #         enable: false, # required
    #         rollback: false # required
    #       },
    #       maximum_percent: 1,
    #       minimum_healthy_percent: 1
    #     },
    #     placement_constraints: [
    #       {
    #         type: 'distinctInstance', # accepts ["distinctInstance", "memberOf"]
    #         expression: 'expression'
    #       }
    #     ],
    #     placement_strategy: [
    #       {
    #         type: 'random', # accepts ["random", "spread", "binpack"]
    #         field: 'field'
    #       }
    #     ],
    #     network_configuration: {
    #       awsvpc_configuration: {
    #         subnets: [
    #           'member'
    #         ], # required
    #         assign_public_ip: 'ENABLED' # accepts ["ENABLED", "DISABLED"]
    #       }
    #     },
    #     health_check_grace_period_seconds: 1,
    #     scheduling_strategy: 'REPLICA', # accepts ["REPLICA", "DAEMON"]
    #     deployment_controller: {
    #       type: 'ECS' # required - accepts ["ECS", "CODE_DEPLOY", "EXTERNAL"]
    #     },
    #     tags: [
    #       {
    #         key: 'key',
    #         value: 'value'
    #       }
    #     ],
    #     enable_ecs_managed_tags: false,
    #     propagate_tags: 'TASK_DEFINITION', # accepts ["TASK_DEFINITION", "SERVICE", "NONE"]
    #     enable_execute_command: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateServiceOutput
    #   resp.data.service #=> Types::Service
    #   resp.data.service.service_arn #=> String
    #   resp.data.service.service_name #=> String
    #   resp.data.service.cluster_arn #=> String
    #   resp.data.service.load_balancers #=> Array<LoadBalancer>
    #   resp.data.service.load_balancers[0] #=> Types::LoadBalancer
    #   resp.data.service.load_balancers[0].target_group_arn #=> String
    #   resp.data.service.load_balancers[0].load_balancer_name #=> String
    #   resp.data.service.load_balancers[0].container_name #=> String
    #   resp.data.service.load_balancers[0].container_port #=> Integer
    #   resp.data.service.service_registries #=> Array<ServiceRegistry>
    #   resp.data.service.service_registries[0] #=> Types::ServiceRegistry
    #   resp.data.service.service_registries[0].registry_arn #=> String
    #   resp.data.service.service_registries[0].port #=> Integer
    #   resp.data.service.service_registries[0].container_name #=> String
    #   resp.data.service.service_registries[0].container_port #=> Integer
    #   resp.data.service.status #=> String
    #   resp.data.service.desired_count #=> Integer
    #   resp.data.service.running_count #=> Integer
    #   resp.data.service.pending_count #=> Integer
    #   resp.data.service.launch_type #=> String, one of ["EC2", "FARGATE", "EXTERNAL"]
    #   resp.data.service.capacity_provider_strategy #=> Array<CapacityProviderStrategyItem>
    #   resp.data.service.capacity_provider_strategy[0] #=> Types::CapacityProviderStrategyItem
    #   resp.data.service.capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.data.service.capacity_provider_strategy[0].weight #=> Integer
    #   resp.data.service.capacity_provider_strategy[0].base #=> Integer
    #   resp.data.service.platform_version #=> String
    #   resp.data.service.platform_family #=> String
    #   resp.data.service.task_definition #=> String
    #   resp.data.service.deployment_configuration #=> Types::DeploymentConfiguration
    #   resp.data.service.deployment_configuration.deployment_circuit_breaker #=> Types::DeploymentCircuitBreaker
    #   resp.data.service.deployment_configuration.deployment_circuit_breaker.enable #=> Boolean
    #   resp.data.service.deployment_configuration.deployment_circuit_breaker.rollback #=> Boolean
    #   resp.data.service.deployment_configuration.maximum_percent #=> Integer
    #   resp.data.service.deployment_configuration.minimum_healthy_percent #=> Integer
    #   resp.data.service.task_sets #=> Array<TaskSet>
    #   resp.data.service.task_sets[0] #=> Types::TaskSet
    #   resp.data.service.task_sets[0].id #=> String
    #   resp.data.service.task_sets[0].task_set_arn #=> String
    #   resp.data.service.task_sets[0].service_arn #=> String
    #   resp.data.service.task_sets[0].cluster_arn #=> String
    #   resp.data.service.task_sets[0].started_by #=> String
    #   resp.data.service.task_sets[0].external_id #=> String
    #   resp.data.service.task_sets[0].status #=> String
    #   resp.data.service.task_sets[0].task_definition #=> String
    #   resp.data.service.task_sets[0].computed_desired_count #=> Integer
    #   resp.data.service.task_sets[0].pending_count #=> Integer
    #   resp.data.service.task_sets[0].running_count #=> Integer
    #   resp.data.service.task_sets[0].created_at #=> Time
    #   resp.data.service.task_sets[0].updated_at #=> Time
    #   resp.data.service.task_sets[0].launch_type #=> String, one of ["EC2", "FARGATE", "EXTERNAL"]
    #   resp.data.service.task_sets[0].capacity_provider_strategy #=> Array<CapacityProviderStrategyItem>
    #   resp.data.service.task_sets[0].platform_version #=> String
    #   resp.data.service.task_sets[0].platform_family #=> String
    #   resp.data.service.task_sets[0].network_configuration #=> Types::NetworkConfiguration
    #   resp.data.service.task_sets[0].network_configuration.awsvpc_configuration #=> Types::AwsVpcConfiguration
    #   resp.data.service.task_sets[0].network_configuration.awsvpc_configuration.subnets #=> Array<String>
    #   resp.data.service.task_sets[0].network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.data.service.task_sets[0].network_configuration.awsvpc_configuration.security_groups #=> Array<String>
    #   resp.data.service.task_sets[0].network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.service.task_sets[0].load_balancers #=> Array<LoadBalancer>
    #   resp.data.service.task_sets[0].service_registries #=> Array<ServiceRegistry>
    #   resp.data.service.task_sets[0].scale #=> Types::Scale
    #   resp.data.service.task_sets[0].scale.value #=> Float
    #   resp.data.service.task_sets[0].scale.unit #=> String, one of ["PERCENT"]
    #   resp.data.service.task_sets[0].stability_status #=> String, one of ["STEADY_STATE", "STABILIZING"]
    #   resp.data.service.task_sets[0].stability_status_at #=> Time
    #   resp.data.service.task_sets[0].tags #=> Array<Tag>
    #   resp.data.service.task_sets[0].tags[0] #=> Types::Tag
    #   resp.data.service.task_sets[0].tags[0].key #=> String
    #   resp.data.service.task_sets[0].tags[0].value #=> String
    #   resp.data.service.deployments #=> Array<Deployment>
    #   resp.data.service.deployments[0] #=> Types::Deployment
    #   resp.data.service.deployments[0].id #=> String
    #   resp.data.service.deployments[0].status #=> String
    #   resp.data.service.deployments[0].task_definition #=> String
    #   resp.data.service.deployments[0].desired_count #=> Integer
    #   resp.data.service.deployments[0].pending_count #=> Integer
    #   resp.data.service.deployments[0].running_count #=> Integer
    #   resp.data.service.deployments[0].failed_tasks #=> Integer
    #   resp.data.service.deployments[0].created_at #=> Time
    #   resp.data.service.deployments[0].updated_at #=> Time
    #   resp.data.service.deployments[0].capacity_provider_strategy #=> Array<CapacityProviderStrategyItem>
    #   resp.data.service.deployments[0].launch_type #=> String, one of ["EC2", "FARGATE", "EXTERNAL"]
    #   resp.data.service.deployments[0].platform_version #=> String
    #   resp.data.service.deployments[0].platform_family #=> String
    #   resp.data.service.deployments[0].network_configuration #=> Types::NetworkConfiguration
    #   resp.data.service.deployments[0].rollout_state #=> String, one of ["COMPLETED", "FAILED", "IN_PROGRESS"]
    #   resp.data.service.deployments[0].rollout_state_reason #=> String
    #   resp.data.service.role_arn #=> String
    #   resp.data.service.events #=> Array<ServiceEvent>
    #   resp.data.service.events[0] #=> Types::ServiceEvent
    #   resp.data.service.events[0].id #=> String
    #   resp.data.service.events[0].created_at #=> Time
    #   resp.data.service.events[0].message #=> String
    #   resp.data.service.created_at #=> Time
    #   resp.data.service.placement_constraints #=> Array<PlacementConstraint>
    #   resp.data.service.placement_constraints[0] #=> Types::PlacementConstraint
    #   resp.data.service.placement_constraints[0].type #=> String, one of ["distinctInstance", "memberOf"]
    #   resp.data.service.placement_constraints[0].expression #=> String
    #   resp.data.service.placement_strategy #=> Array<PlacementStrategy>
    #   resp.data.service.placement_strategy[0] #=> Types::PlacementStrategy
    #   resp.data.service.placement_strategy[0].type #=> String, one of ["random", "spread", "binpack"]
    #   resp.data.service.placement_strategy[0].field #=> String
    #   resp.data.service.network_configuration #=> Types::NetworkConfiguration
    #   resp.data.service.health_check_grace_period_seconds #=> Integer
    #   resp.data.service.scheduling_strategy #=> String, one of ["REPLICA", "DAEMON"]
    #   resp.data.service.deployment_controller #=> Types::DeploymentController
    #   resp.data.service.deployment_controller.type #=> String, one of ["ECS", "CODE_DEPLOY", "EXTERNAL"]
    #   resp.data.service.tags #=> Array<Tag>
    #   resp.data.service.created_by #=> String
    #   resp.data.service.enable_ecs_managed_tags #=> Boolean
    #   resp.data.service.propagate_tags #=> String, one of ["TASK_DEFINITION", "SERVICE", "NONE"]
    #   resp.data.service.enable_execute_command #=> Boolean
    #
    def create_service(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateServiceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateServiceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateService
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ClusterNotFoundException, Errors::ServerException, Errors::InvalidParameterException, Errors::PlatformUnknownException, Errors::UnsupportedFeatureException, Errors::ClientException, Errors::PlatformTaskDefinitionIncompatibilityException]),
        data_parser: Parsers::CreateService
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateService,
        stubs: @stubs,
        params_class: Params::CreateServiceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_service
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create a task set in the specified cluster and service. This is used when a service
    # 			uses the <code>EXTERNAL</code> deployment controller type. For more information, see
    # 				<a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html">Amazon ECS Deployment
    # 				Types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateTaskSetInput}.
    #
    # @option params [String] :service
    #   <p>The short name or full Amazon Resource Name (ARN) of the service to create the task set in.</p>
    #
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service to create the
    #   			task set in.</p>
    #
    # @option params [String] :external_id
    #   <p>An optional non-unique tag that identifies this task set in external systems. If the
    #   			task set is associated with a service discovery registry, the tasks in this task set
    #   			will have the <code>ECS_TASK_SET_EXTERNAL_ID</code> Cloud Map attribute set to the provided
    #   			value.</p>
    #
    # @option params [String] :task_definition
    #   <p>The task definition for the tasks in the task set to use.</p>
    #
    # @option params [NetworkConfiguration] :network_configuration
    #   <p>An object representing the network configuration for a task set.</p>
    #
    # @option params [Array<LoadBalancer>] :load_balancers
    #   <p>A load balancer object representing the load balancer to use with the task set. The
    #   			supported load balancer types are either an Application Load Balancer or a Network Load Balancer.</p>
    #
    # @option params [Array<ServiceRegistry>] :service_registries
    #   <p>The details of the service discovery registries to assign to this task set. For more
    #   			information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html">Service
    #   				Discovery</a>.</p>
    #
    # @option params [String] :launch_type
    #   <p>The launch type that new tasks in the task set uses. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html">Amazon ECS
    #   				Launch Types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #   		       <p>If a <code>launchType</code> is specified, the <code>capacityProviderStrategy</code>
    #   			parameter must be omitted.</p>
    #
    # @option params [Array<CapacityProviderStrategyItem>] :capacity_provider_strategy
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
    # @option params [String] :platform_version
    #   <p>The platform version that the tasks in the task set uses. A platform version is
    #   			specified only for tasks using the Fargate launch type. If one isn't
    #   			specified, the <code>LATEST</code> platform version is used.</p>
    #
    # @option params [Scale] :scale
    #   <p>A floating-point percentage of the desired number of tasks to place and keep running
    #   			in the task set.</p>
    #
    # @option params [String] :client_token
    #   <p>The identifier that you provide to ensure the idempotency of the request. It's case
    #   			sensitive and must be unique. It can be up to 32 ASCII characters are allowed.</p>
    #
    # @option params [Array<Tag>] :tags
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
    # @return [Types::CreateTaskSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_task_set(
    #     service: 'service', # required
    #     cluster: 'cluster', # required
    #     external_id: 'externalId',
    #     task_definition: 'taskDefinition', # required
    #     network_configuration: {
    #       awsvpc_configuration: {
    #         subnets: [
    #           'member'
    #         ], # required
    #         assign_public_ip: 'ENABLED' # accepts ["ENABLED", "DISABLED"]
    #       }
    #     },
    #     load_balancers: [
    #       {
    #         target_group_arn: 'targetGroupArn',
    #         load_balancer_name: 'loadBalancerName',
    #         container_name: 'containerName',
    #         container_port: 1
    #       }
    #     ],
    #     service_registries: [
    #       {
    #         registry_arn: 'registryArn',
    #         port: 1,
    #         container_name: 'containerName',
    #         container_port: 1
    #       }
    #     ],
    #     launch_type: 'EC2', # accepts ["EC2", "FARGATE", "EXTERNAL"]
    #     capacity_provider_strategy: [
    #       {
    #         capacity_provider: 'capacityProvider', # required
    #         weight: 1,
    #         base: 1
    #       }
    #     ],
    #     platform_version: 'platformVersion',
    #     scale: {
    #       value: 1.0,
    #       unit: 'PERCENT' # accepts ["PERCENT"]
    #     },
    #     client_token: 'clientToken',
    #     tags: [
    #       {
    #         key: 'key',
    #         value: 'value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateTaskSetOutput
    #   resp.data.task_set #=> Types::TaskSet
    #   resp.data.task_set.id #=> String
    #   resp.data.task_set.task_set_arn #=> String
    #   resp.data.task_set.service_arn #=> String
    #   resp.data.task_set.cluster_arn #=> String
    #   resp.data.task_set.started_by #=> String
    #   resp.data.task_set.external_id #=> String
    #   resp.data.task_set.status #=> String
    #   resp.data.task_set.task_definition #=> String
    #   resp.data.task_set.computed_desired_count #=> Integer
    #   resp.data.task_set.pending_count #=> Integer
    #   resp.data.task_set.running_count #=> Integer
    #   resp.data.task_set.created_at #=> Time
    #   resp.data.task_set.updated_at #=> Time
    #   resp.data.task_set.launch_type #=> String, one of ["EC2", "FARGATE", "EXTERNAL"]
    #   resp.data.task_set.capacity_provider_strategy #=> Array<CapacityProviderStrategyItem>
    #   resp.data.task_set.capacity_provider_strategy[0] #=> Types::CapacityProviderStrategyItem
    #   resp.data.task_set.capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.data.task_set.capacity_provider_strategy[0].weight #=> Integer
    #   resp.data.task_set.capacity_provider_strategy[0].base #=> Integer
    #   resp.data.task_set.platform_version #=> String
    #   resp.data.task_set.platform_family #=> String
    #   resp.data.task_set.network_configuration #=> Types::NetworkConfiguration
    #   resp.data.task_set.network_configuration.awsvpc_configuration #=> Types::AwsVpcConfiguration
    #   resp.data.task_set.network_configuration.awsvpc_configuration.subnets #=> Array<String>
    #   resp.data.task_set.network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.data.task_set.network_configuration.awsvpc_configuration.security_groups #=> Array<String>
    #   resp.data.task_set.network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.task_set.load_balancers #=> Array<LoadBalancer>
    #   resp.data.task_set.load_balancers[0] #=> Types::LoadBalancer
    #   resp.data.task_set.load_balancers[0].target_group_arn #=> String
    #   resp.data.task_set.load_balancers[0].load_balancer_name #=> String
    #   resp.data.task_set.load_balancers[0].container_name #=> String
    #   resp.data.task_set.load_balancers[0].container_port #=> Integer
    #   resp.data.task_set.service_registries #=> Array<ServiceRegistry>
    #   resp.data.task_set.service_registries[0] #=> Types::ServiceRegistry
    #   resp.data.task_set.service_registries[0].registry_arn #=> String
    #   resp.data.task_set.service_registries[0].port #=> Integer
    #   resp.data.task_set.service_registries[0].container_name #=> String
    #   resp.data.task_set.service_registries[0].container_port #=> Integer
    #   resp.data.task_set.scale #=> Types::Scale
    #   resp.data.task_set.scale.value #=> Float
    #   resp.data.task_set.scale.unit #=> String, one of ["PERCENT"]
    #   resp.data.task_set.stability_status #=> String, one of ["STEADY_STATE", "STABILIZING"]
    #   resp.data.task_set.stability_status_at #=> Time
    #   resp.data.task_set.tags #=> Array<Tag>
    #   resp.data.task_set.tags[0] #=> Types::Tag
    #   resp.data.task_set.tags[0].key #=> String
    #   resp.data.task_set.tags[0].value #=> String
    #
    def create_task_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTaskSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTaskSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTaskSet
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceNotFoundException, Errors::AccessDeniedException, Errors::ClusterNotFoundException, Errors::ServiceNotActiveException, Errors::ServerException, Errors::InvalidParameterException, Errors::PlatformUnknownException, Errors::UnsupportedFeatureException, Errors::ClientException, Errors::PlatformTaskDefinitionIncompatibilityException]),
        data_parser: Parsers::CreateTaskSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateTaskSet,
        stubs: @stubs,
        params_class: Params::CreateTaskSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_task_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables an account setting for a specified IAM user, IAM role, or the root user for
    # 			an account.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAccountSettingInput}.
    #
    # @option params [String] :name
    #   <p>The resource name to disable the account setting for. If
    #   				<code>serviceLongArnFormat</code> is specified, the ARN for your Amazon ECS services is
    #   			affected. If <code>taskLongArnFormat</code> is specified, the ARN and resource ID for
    #   			your Amazon ECS tasks is affected. If <code>containerInstanceLongArnFormat</code> is
    #   			specified, the ARN and resource ID for your Amazon ECS container instances is affected. If
    #   				<code>awsvpcTrunking</code> is specified, the ENI limit for your Amazon ECS container
    #   			instances is affected.</p>
    #
    # @option params [String] :principal_arn
    #   <p>The Amazon Resource Name (ARN) of the principal. It can be an IAM user, IAM role, or
    #   			the root user. If you specify the root user, it disables the account setting for all IAM
    #   			users, IAM roles, and the root user of the account unless an IAM user or role explicitly
    #   			overrides these settings. If this field is omitted, the setting is changed only for the
    #   			authenticated user.</p>
    #
    # @return [Types::DeleteAccountSettingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_account_setting(
    #     name: 'serviceLongArnFormat', # required - accepts ["serviceLongArnFormat", "taskLongArnFormat", "containerInstanceLongArnFormat", "awsvpcTrunking", "containerInsights"]
    #     principal_arn: 'principalArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAccountSettingOutput
    #   resp.data.setting #=> Types::Setting
    #   resp.data.setting.name #=> String, one of ["serviceLongArnFormat", "taskLongArnFormat", "containerInstanceLongArnFormat", "awsvpcTrunking", "containerInsights"]
    #   resp.data.setting.value #=> String
    #   resp.data.setting.principal_arn #=> String
    #
    def delete_account_setting(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAccountSettingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAccountSettingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAccountSetting
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::DeleteAccountSetting
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAccountSetting,
        stubs: @stubs,
        params_class: Params::DeleteAccountSettingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_account_setting
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes one or more custom attributes from an Amazon ECS resource.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAttributesInput}.
    #
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that contains the resource to delete
    #   			attributes. If you do not specify a cluster, the default cluster is assumed.</p>
    #
    # @option params [Array<Attribute>] :attributes
    #   <p>The attributes to delete from your resource. You can specify up to 10 attributes for
    #   			each request. For custom attributes, specify the attribute name and target ID, but don't
    #   			specify the value. If you specify the target ID using the short form, you must also
    #   			specify the target type.</p>
    #
    # @return [Types::DeleteAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_attributes(
    #     cluster: 'cluster',
    #     attributes: [
    #       {
    #         name: 'name', # required
    #         value: 'value',
    #         target_type: 'container-instance', # accepts ["container-instance"]
    #         target_id: 'targetId'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAttributesOutput
    #   resp.data.attributes #=> Array<Attribute>
    #   resp.data.attributes[0] #=> Types::Attribute
    #   resp.data.attributes[0].name #=> String
    #   resp.data.attributes[0].value #=> String
    #   resp.data.attributes[0].target_type #=> String, one of ["container-instance"]
    #   resp.data.attributes[0].target_id #=> String
    #
    def delete_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAttributesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAttributes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterNotFoundException, Errors::TargetNotFoundException, Errors::InvalidParameterException]),
        data_parser: Parsers::DeleteAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAttributes,
        stubs: @stubs,
        params_class: Params::DeleteAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified capacity provider.</p>
    # 		       <note>
    # 			         <p>The <code>FARGATE</code> and <code>FARGATE_SPOT</code> capacity providers are
    # 				reserved and can't be deleted. You can disassociate them from a cluster using either
    # 				the <a>PutClusterCapacityProviders</a> API or by deleting the
    # 				cluster.</p>
    # 		       </note>
    # 		       <p>Prior to a capacity provider being deleted, the capacity provider must be removed from
    # 			the capacity provider strategy from all services. The <a>UpdateService</a>
    # 			API can be used to remove a capacity provider from a service's capacity provider
    # 			strategy. When updating a service, the <code>forceNewDeployment</code> option can be
    # 			used to ensure that any tasks using the Amazon EC2 instance capacity provided by the capacity
    # 			provider are transitioned to use the capacity from the remaining capacity providers.
    # 			Only capacity providers that aren't associated with a cluster can be deleted. To remove
    # 			a capacity provider from a cluster, you can either use <a>PutClusterCapacityProviders</a> or delete the cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteCapacityProviderInput}.
    #
    # @option params [String] :capacity_provider
    #   <p>The short name or full Amazon Resource Name (ARN) of the capacity provider to delete.</p>
    #
    # @return [Types::DeleteCapacityProviderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_capacity_provider(
    #     capacity_provider: 'capacityProvider' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCapacityProviderOutput
    #   resp.data.capacity_provider #=> Types::CapacityProvider
    #   resp.data.capacity_provider.capacity_provider_arn #=> String
    #   resp.data.capacity_provider.name #=> String
    #   resp.data.capacity_provider.status #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.capacity_provider.auto_scaling_group_provider #=> Types::AutoScalingGroupProvider
    #   resp.data.capacity_provider.auto_scaling_group_provider.auto_scaling_group_arn #=> String
    #   resp.data.capacity_provider.auto_scaling_group_provider.managed_scaling #=> Types::ManagedScaling
    #   resp.data.capacity_provider.auto_scaling_group_provider.managed_scaling.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.capacity_provider.auto_scaling_group_provider.managed_scaling.target_capacity #=> Integer
    #   resp.data.capacity_provider.auto_scaling_group_provider.managed_scaling.minimum_scaling_step_size #=> Integer
    #   resp.data.capacity_provider.auto_scaling_group_provider.managed_scaling.maximum_scaling_step_size #=> Integer
    #   resp.data.capacity_provider.auto_scaling_group_provider.managed_scaling.instance_warmup_period #=> Integer
    #   resp.data.capacity_provider.auto_scaling_group_provider.managed_termination_protection #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.capacity_provider.update_status #=> String, one of ["DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED"]
    #   resp.data.capacity_provider.update_status_reason #=> String
    #   resp.data.capacity_provider.tags #=> Array<Tag>
    #   resp.data.capacity_provider.tags[0] #=> Types::Tag
    #   resp.data.capacity_provider.tags[0].key #=> String
    #   resp.data.capacity_provider.tags[0].value #=> String
    #
    def delete_capacity_provider(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCapacityProviderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCapacityProviderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCapacityProvider
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::DeleteCapacityProvider
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCapacityProvider,
        stubs: @stubs,
        params_class: Params::DeleteCapacityProviderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_capacity_provider
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified cluster. The cluster transitions to the <code>INACTIVE</code>
    # 			state. Clusters with an <code>INACTIVE</code> status might remain discoverable in your
    # 			account for a period of time. However, this behavior is subject to change in the future.
    # 			We don't recommend that you rely on <code>INACTIVE</code> clusters persisting.</p>
    # 		       <p>You must deregister all container instances from this cluster before you may delete
    # 			it. You can list the container instances in a cluster with <a>ListContainerInstances</a> and deregister them with <a>DeregisterContainerInstance</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteClusterInput}.
    #
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster to delete.</p>
    #
    # @return [Types::DeleteClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cluster(
    #     cluster: 'cluster' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteClusterOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.cluster_arn #=> String
    #   resp.data.cluster.cluster_name #=> String
    #   resp.data.cluster.configuration #=> Types::ClusterConfiguration
    #   resp.data.cluster.configuration.execute_command_configuration #=> Types::ExecuteCommandConfiguration
    #   resp.data.cluster.configuration.execute_command_configuration.kms_key_id #=> String
    #   resp.data.cluster.configuration.execute_command_configuration.logging #=> String, one of ["NONE", "DEFAULT", "OVERRIDE"]
    #   resp.data.cluster.configuration.execute_command_configuration.log_configuration #=> Types::ExecuteCommandLogConfiguration
    #   resp.data.cluster.configuration.execute_command_configuration.log_configuration.cloud_watch_log_group_name #=> String
    #   resp.data.cluster.configuration.execute_command_configuration.log_configuration.cloud_watch_encryption_enabled #=> Boolean
    #   resp.data.cluster.configuration.execute_command_configuration.log_configuration.s3_bucket_name #=> String
    #   resp.data.cluster.configuration.execute_command_configuration.log_configuration.s3_encryption_enabled #=> Boolean
    #   resp.data.cluster.configuration.execute_command_configuration.log_configuration.s3_key_prefix #=> String
    #   resp.data.cluster.status #=> String
    #   resp.data.cluster.registered_container_instances_count #=> Integer
    #   resp.data.cluster.running_tasks_count #=> Integer
    #   resp.data.cluster.pending_tasks_count #=> Integer
    #   resp.data.cluster.active_services_count #=> Integer
    #   resp.data.cluster.statistics #=> Array<KeyValuePair>
    #   resp.data.cluster.statistics[0] #=> Types::KeyValuePair
    #   resp.data.cluster.statistics[0].name #=> String
    #   resp.data.cluster.statistics[0].value #=> String
    #   resp.data.cluster.tags #=> Array<Tag>
    #   resp.data.cluster.tags[0] #=> Types::Tag
    #   resp.data.cluster.tags[0].key #=> String
    #   resp.data.cluster.tags[0].value #=> String
    #   resp.data.cluster.settings #=> Array<ClusterSetting>
    #   resp.data.cluster.settings[0] #=> Types::ClusterSetting
    #   resp.data.cluster.settings[0].name #=> String, one of ["containerInsights"]
    #   resp.data.cluster.settings[0].value #=> String
    #   resp.data.cluster.capacity_providers #=> Array<String>
    #   resp.data.cluster.capacity_providers[0] #=> String
    #   resp.data.cluster.default_capacity_provider_strategy #=> Array<CapacityProviderStrategyItem>
    #   resp.data.cluster.default_capacity_provider_strategy[0] #=> Types::CapacityProviderStrategyItem
    #   resp.data.cluster.default_capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.data.cluster.default_capacity_provider_strategy[0].weight #=> Integer
    #   resp.data.cluster.default_capacity_provider_strategy[0].base #=> Integer
    #   resp.data.cluster.attachments #=> Array<Attachment>
    #   resp.data.cluster.attachments[0] #=> Types::Attachment
    #   resp.data.cluster.attachments[0].id #=> String
    #   resp.data.cluster.attachments[0].type #=> String
    #   resp.data.cluster.attachments[0].status #=> String
    #   resp.data.cluster.attachments[0].details #=> Array<KeyValuePair>
    #   resp.data.cluster.attachments_status #=> String
    #
    def delete_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteClusterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCluster
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterContainsServicesException, Errors::ClusterNotFoundException, Errors::ClusterContainsTasksException, Errors::ServerException, Errors::UpdateInProgressException, Errors::ClusterContainsContainerInstancesException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::DeleteCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCluster,
        stubs: @stubs,
        params_class: Params::DeleteClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a specified service within a cluster. You can delete a service if you have no
    # 			running tasks in it and the desired task count is zero. If the service is actively
    # 			maintaining tasks, you can't delete it, and you must update the service to a desired
    # 			task count of zero. For more information, see <a>UpdateService</a>.</p>
    # 		       <note>
    # 			         <p>When you delete a service, if there are still running tasks that require cleanup,
    # 				the service status moves from <code>ACTIVE</code> to <code>DRAINING</code>, and the
    # 				service is no longer visible in the console or in the <a>ListServices</a>
    # 				API operation. After all tasks have transitioned to either <code>STOPPING</code> or
    # 					<code>STOPPED</code> status, the service status moves from <code>DRAINING</code>
    # 				to <code>INACTIVE</code>. Services in the <code>DRAINING</code> or
    # 					<code>INACTIVE</code> status can still be viewed with the <a>DescribeServices</a> API operation. However, in the future,
    # 					<code>INACTIVE</code> services may be cleaned up and purged from Amazon ECS record
    # 				keeping, and <a>DescribeServices</a> calls on those services return a
    # 					<code>ServiceNotFoundException</code> error.</p>
    # 		       </note>
    # 		       <important>
    # 			         <p>If you attempt to create a new service with the same name as an existing service
    # 				in either <code>ACTIVE</code> or <code>DRAINING</code> status, you receive an
    # 				error.</p>
    # 		       </important>
    #
    # @param [Hash] params
    #   See {Types::DeleteServiceInput}.
    #
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service to delete.
    #   			If you do not specify a cluster, the default cluster is assumed.</p>
    #
    # @option params [String] :service
    #   <p>The name of the service to delete.</p>
    #
    # @option params [Boolean] :force
    #   <p>If <code>true</code>, allows you to delete a service even if it wasn't scaled down to
    #   			zero tasks. It's only necessary to use this if the service uses the <code>REPLICA</code>
    #   			scheduling strategy.</p>
    #
    # @return [Types::DeleteServiceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service(
    #     cluster: 'cluster',
    #     service: 'service', # required
    #     force: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteServiceOutput
    #   resp.data.service #=> Types::Service
    #   resp.data.service.service_arn #=> String
    #   resp.data.service.service_name #=> String
    #   resp.data.service.cluster_arn #=> String
    #   resp.data.service.load_balancers #=> Array<LoadBalancer>
    #   resp.data.service.load_balancers[0] #=> Types::LoadBalancer
    #   resp.data.service.load_balancers[0].target_group_arn #=> String
    #   resp.data.service.load_balancers[0].load_balancer_name #=> String
    #   resp.data.service.load_balancers[0].container_name #=> String
    #   resp.data.service.load_balancers[0].container_port #=> Integer
    #   resp.data.service.service_registries #=> Array<ServiceRegistry>
    #   resp.data.service.service_registries[0] #=> Types::ServiceRegistry
    #   resp.data.service.service_registries[0].registry_arn #=> String
    #   resp.data.service.service_registries[0].port #=> Integer
    #   resp.data.service.service_registries[0].container_name #=> String
    #   resp.data.service.service_registries[0].container_port #=> Integer
    #   resp.data.service.status #=> String
    #   resp.data.service.desired_count #=> Integer
    #   resp.data.service.running_count #=> Integer
    #   resp.data.service.pending_count #=> Integer
    #   resp.data.service.launch_type #=> String, one of ["EC2", "FARGATE", "EXTERNAL"]
    #   resp.data.service.capacity_provider_strategy #=> Array<CapacityProviderStrategyItem>
    #   resp.data.service.capacity_provider_strategy[0] #=> Types::CapacityProviderStrategyItem
    #   resp.data.service.capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.data.service.capacity_provider_strategy[0].weight #=> Integer
    #   resp.data.service.capacity_provider_strategy[0].base #=> Integer
    #   resp.data.service.platform_version #=> String
    #   resp.data.service.platform_family #=> String
    #   resp.data.service.task_definition #=> String
    #   resp.data.service.deployment_configuration #=> Types::DeploymentConfiguration
    #   resp.data.service.deployment_configuration.deployment_circuit_breaker #=> Types::DeploymentCircuitBreaker
    #   resp.data.service.deployment_configuration.deployment_circuit_breaker.enable #=> Boolean
    #   resp.data.service.deployment_configuration.deployment_circuit_breaker.rollback #=> Boolean
    #   resp.data.service.deployment_configuration.maximum_percent #=> Integer
    #   resp.data.service.deployment_configuration.minimum_healthy_percent #=> Integer
    #   resp.data.service.task_sets #=> Array<TaskSet>
    #   resp.data.service.task_sets[0] #=> Types::TaskSet
    #   resp.data.service.task_sets[0].id #=> String
    #   resp.data.service.task_sets[0].task_set_arn #=> String
    #   resp.data.service.task_sets[0].service_arn #=> String
    #   resp.data.service.task_sets[0].cluster_arn #=> String
    #   resp.data.service.task_sets[0].started_by #=> String
    #   resp.data.service.task_sets[0].external_id #=> String
    #   resp.data.service.task_sets[0].status #=> String
    #   resp.data.service.task_sets[0].task_definition #=> String
    #   resp.data.service.task_sets[0].computed_desired_count #=> Integer
    #   resp.data.service.task_sets[0].pending_count #=> Integer
    #   resp.data.service.task_sets[0].running_count #=> Integer
    #   resp.data.service.task_sets[0].created_at #=> Time
    #   resp.data.service.task_sets[0].updated_at #=> Time
    #   resp.data.service.task_sets[0].launch_type #=> String, one of ["EC2", "FARGATE", "EXTERNAL"]
    #   resp.data.service.task_sets[0].capacity_provider_strategy #=> Array<CapacityProviderStrategyItem>
    #   resp.data.service.task_sets[0].platform_version #=> String
    #   resp.data.service.task_sets[0].platform_family #=> String
    #   resp.data.service.task_sets[0].network_configuration #=> Types::NetworkConfiguration
    #   resp.data.service.task_sets[0].network_configuration.awsvpc_configuration #=> Types::AwsVpcConfiguration
    #   resp.data.service.task_sets[0].network_configuration.awsvpc_configuration.subnets #=> Array<String>
    #   resp.data.service.task_sets[0].network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.data.service.task_sets[0].network_configuration.awsvpc_configuration.security_groups #=> Array<String>
    #   resp.data.service.task_sets[0].network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.service.task_sets[0].load_balancers #=> Array<LoadBalancer>
    #   resp.data.service.task_sets[0].service_registries #=> Array<ServiceRegistry>
    #   resp.data.service.task_sets[0].scale #=> Types::Scale
    #   resp.data.service.task_sets[0].scale.value #=> Float
    #   resp.data.service.task_sets[0].scale.unit #=> String, one of ["PERCENT"]
    #   resp.data.service.task_sets[0].stability_status #=> String, one of ["STEADY_STATE", "STABILIZING"]
    #   resp.data.service.task_sets[0].stability_status_at #=> Time
    #   resp.data.service.task_sets[0].tags #=> Array<Tag>
    #   resp.data.service.task_sets[0].tags[0] #=> Types::Tag
    #   resp.data.service.task_sets[0].tags[0].key #=> String
    #   resp.data.service.task_sets[0].tags[0].value #=> String
    #   resp.data.service.deployments #=> Array<Deployment>
    #   resp.data.service.deployments[0] #=> Types::Deployment
    #   resp.data.service.deployments[0].id #=> String
    #   resp.data.service.deployments[0].status #=> String
    #   resp.data.service.deployments[0].task_definition #=> String
    #   resp.data.service.deployments[0].desired_count #=> Integer
    #   resp.data.service.deployments[0].pending_count #=> Integer
    #   resp.data.service.deployments[0].running_count #=> Integer
    #   resp.data.service.deployments[0].failed_tasks #=> Integer
    #   resp.data.service.deployments[0].created_at #=> Time
    #   resp.data.service.deployments[0].updated_at #=> Time
    #   resp.data.service.deployments[0].capacity_provider_strategy #=> Array<CapacityProviderStrategyItem>
    #   resp.data.service.deployments[0].launch_type #=> String, one of ["EC2", "FARGATE", "EXTERNAL"]
    #   resp.data.service.deployments[0].platform_version #=> String
    #   resp.data.service.deployments[0].platform_family #=> String
    #   resp.data.service.deployments[0].network_configuration #=> Types::NetworkConfiguration
    #   resp.data.service.deployments[0].rollout_state #=> String, one of ["COMPLETED", "FAILED", "IN_PROGRESS"]
    #   resp.data.service.deployments[0].rollout_state_reason #=> String
    #   resp.data.service.role_arn #=> String
    #   resp.data.service.events #=> Array<ServiceEvent>
    #   resp.data.service.events[0] #=> Types::ServiceEvent
    #   resp.data.service.events[0].id #=> String
    #   resp.data.service.events[0].created_at #=> Time
    #   resp.data.service.events[0].message #=> String
    #   resp.data.service.created_at #=> Time
    #   resp.data.service.placement_constraints #=> Array<PlacementConstraint>
    #   resp.data.service.placement_constraints[0] #=> Types::PlacementConstraint
    #   resp.data.service.placement_constraints[0].type #=> String, one of ["distinctInstance", "memberOf"]
    #   resp.data.service.placement_constraints[0].expression #=> String
    #   resp.data.service.placement_strategy #=> Array<PlacementStrategy>
    #   resp.data.service.placement_strategy[0] #=> Types::PlacementStrategy
    #   resp.data.service.placement_strategy[0].type #=> String, one of ["random", "spread", "binpack"]
    #   resp.data.service.placement_strategy[0].field #=> String
    #   resp.data.service.network_configuration #=> Types::NetworkConfiguration
    #   resp.data.service.health_check_grace_period_seconds #=> Integer
    #   resp.data.service.scheduling_strategy #=> String, one of ["REPLICA", "DAEMON"]
    #   resp.data.service.deployment_controller #=> Types::DeploymentController
    #   resp.data.service.deployment_controller.type #=> String, one of ["ECS", "CODE_DEPLOY", "EXTERNAL"]
    #   resp.data.service.tags #=> Array<Tag>
    #   resp.data.service.created_by #=> String
    #   resp.data.service.enable_ecs_managed_tags #=> Boolean
    #   resp.data.service.propagate_tags #=> String, one of ["TASK_DEFINITION", "SERVICE", "NONE"]
    #   resp.data.service.enable_execute_command #=> Boolean
    #
    def delete_service(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteServiceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteServiceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteService
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceNotFoundException, Errors::ClusterNotFoundException, Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::DeleteService
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteService,
        stubs: @stubs,
        params_class: Params::DeleteServiceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_service
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a specified task set within a service. This is used when a service uses the
    # 				<code>EXTERNAL</code> deployment controller type. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html">Amazon ECS Deployment Types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTaskSetInput}.
    #
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service that the task
    #   			set found in to delete.</p>
    #
    # @option params [String] :service
    #   <p>The short name or full Amazon Resource Name (ARN) of the service that hosts the task set to
    #   			delete.</p>
    #
    # @option params [String] :task_set
    #   <p>The task set ID or full Amazon Resource Name (ARN) of the task set to delete.</p>
    #
    # @option params [Boolean] :force
    #   <p>If <code>true</code>, you can delete a task set even if it hasn't been scaled down to
    #   			zero.</p>
    #
    # @return [Types::DeleteTaskSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_task_set(
    #     cluster: 'cluster', # required
    #     service: 'service', # required
    #     task_set: 'taskSet', # required
    #     force: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTaskSetOutput
    #   resp.data.task_set #=> Types::TaskSet
    #   resp.data.task_set.id #=> String
    #   resp.data.task_set.task_set_arn #=> String
    #   resp.data.task_set.service_arn #=> String
    #   resp.data.task_set.cluster_arn #=> String
    #   resp.data.task_set.started_by #=> String
    #   resp.data.task_set.external_id #=> String
    #   resp.data.task_set.status #=> String
    #   resp.data.task_set.task_definition #=> String
    #   resp.data.task_set.computed_desired_count #=> Integer
    #   resp.data.task_set.pending_count #=> Integer
    #   resp.data.task_set.running_count #=> Integer
    #   resp.data.task_set.created_at #=> Time
    #   resp.data.task_set.updated_at #=> Time
    #   resp.data.task_set.launch_type #=> String, one of ["EC2", "FARGATE", "EXTERNAL"]
    #   resp.data.task_set.capacity_provider_strategy #=> Array<CapacityProviderStrategyItem>
    #   resp.data.task_set.capacity_provider_strategy[0] #=> Types::CapacityProviderStrategyItem
    #   resp.data.task_set.capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.data.task_set.capacity_provider_strategy[0].weight #=> Integer
    #   resp.data.task_set.capacity_provider_strategy[0].base #=> Integer
    #   resp.data.task_set.platform_version #=> String
    #   resp.data.task_set.platform_family #=> String
    #   resp.data.task_set.network_configuration #=> Types::NetworkConfiguration
    #   resp.data.task_set.network_configuration.awsvpc_configuration #=> Types::AwsVpcConfiguration
    #   resp.data.task_set.network_configuration.awsvpc_configuration.subnets #=> Array<String>
    #   resp.data.task_set.network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.data.task_set.network_configuration.awsvpc_configuration.security_groups #=> Array<String>
    #   resp.data.task_set.network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.task_set.load_balancers #=> Array<LoadBalancer>
    #   resp.data.task_set.load_balancers[0] #=> Types::LoadBalancer
    #   resp.data.task_set.load_balancers[0].target_group_arn #=> String
    #   resp.data.task_set.load_balancers[0].load_balancer_name #=> String
    #   resp.data.task_set.load_balancers[0].container_name #=> String
    #   resp.data.task_set.load_balancers[0].container_port #=> Integer
    #   resp.data.task_set.service_registries #=> Array<ServiceRegistry>
    #   resp.data.task_set.service_registries[0] #=> Types::ServiceRegistry
    #   resp.data.task_set.service_registries[0].registry_arn #=> String
    #   resp.data.task_set.service_registries[0].port #=> Integer
    #   resp.data.task_set.service_registries[0].container_name #=> String
    #   resp.data.task_set.service_registries[0].container_port #=> Integer
    #   resp.data.task_set.scale #=> Types::Scale
    #   resp.data.task_set.scale.value #=> Float
    #   resp.data.task_set.scale.unit #=> String, one of ["PERCENT"]
    #   resp.data.task_set.stability_status #=> String, one of ["STEADY_STATE", "STABILIZING"]
    #   resp.data.task_set.stability_status_at #=> Time
    #   resp.data.task_set.tags #=> Array<Tag>
    #   resp.data.task_set.tags[0] #=> Types::Tag
    #   resp.data.task_set.tags[0].key #=> String
    #   resp.data.task_set.tags[0].value #=> String
    #
    def delete_task_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTaskSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTaskSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTaskSet
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceNotFoundException, Errors::AccessDeniedException, Errors::ClusterNotFoundException, Errors::TaskSetNotFoundException, Errors::ServiceNotActiveException, Errors::ServerException, Errors::InvalidParameterException, Errors::UnsupportedFeatureException, Errors::ClientException]),
        data_parser: Parsers::DeleteTaskSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTaskSet,
        stubs: @stubs,
        params_class: Params::DeleteTaskSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_task_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deregisters an Amazon ECS container instance from the specified cluster. This instance is
    # 			no longer available to run tasks.</p>
    # 		       <p>If you intend to use the container instance for some other purpose after
    # 			deregistration, we recommend that you stop all of the tasks running on the container
    # 			instance before deregistration. That prevents any orphaned tasks from consuming
    # 			resources.</p>
    # 		       <p>Deregistering a container instance removes the instance from a cluster, but it doesn't
    # 			terminate the EC2 instance. If you are finished using the instance, be sure to terminate
    # 			it in the Amazon EC2 console to stop billing.</p>
    # 		       <note>
    # 			         <p>If you terminate a running container instance, Amazon ECS automatically deregisters the
    # 				instance from your cluster (stopped container instances or instances with
    # 				disconnected agents aren't automatically deregistered when terminated).</p>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::DeregisterContainerInstanceInput}.
    #
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instance to
    #   			deregister. If you do not specify a cluster, the default cluster is assumed.</p>
    #
    # @option params [String] :container_instance
    #   <p>The container instance ID or full ARN of the container instance to deregister.
    #   			The ARN contains the <code>arn:aws:ecs</code> namespace, followed by the Region of the container instance, the Amazon Web Services account ID of the container instance owner, the <code>container-instance</code> namespace, and then the container instance ID. For example, <code>arn:aws:ecs:region:aws_account_id:container-instance/container_instance_ID</code>.</p>
    #
    # @option params [Boolean] :force
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
    # @return [Types::DeregisterContainerInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_container_instance(
    #     cluster: 'cluster',
    #     container_instance: 'containerInstance', # required
    #     force: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeregisterContainerInstanceOutput
    #   resp.data.container_instance #=> Types::ContainerInstance
    #   resp.data.container_instance.container_instance_arn #=> String
    #   resp.data.container_instance.ec2_instance_id #=> String
    #   resp.data.container_instance.capacity_provider_name #=> String
    #   resp.data.container_instance.version #=> Integer
    #   resp.data.container_instance.version_info #=> Types::VersionInfo
    #   resp.data.container_instance.version_info.agent_version #=> String
    #   resp.data.container_instance.version_info.agent_hash #=> String
    #   resp.data.container_instance.version_info.docker_version #=> String
    #   resp.data.container_instance.remaining_resources #=> Array<Resource>
    #   resp.data.container_instance.remaining_resources[0] #=> Types::Resource
    #   resp.data.container_instance.remaining_resources[0].name #=> String
    #   resp.data.container_instance.remaining_resources[0].type #=> String
    #   resp.data.container_instance.remaining_resources[0].double_value #=> Float
    #   resp.data.container_instance.remaining_resources[0].long_value #=> Integer
    #   resp.data.container_instance.remaining_resources[0].integer_value #=> Integer
    #   resp.data.container_instance.remaining_resources[0].string_set_value #=> Array<String>
    #   resp.data.container_instance.remaining_resources[0].string_set_value[0] #=> String
    #   resp.data.container_instance.registered_resources #=> Array<Resource>
    #   resp.data.container_instance.status #=> String
    #   resp.data.container_instance.status_reason #=> String
    #   resp.data.container_instance.agent_connected #=> Boolean
    #   resp.data.container_instance.running_tasks_count #=> Integer
    #   resp.data.container_instance.pending_tasks_count #=> Integer
    #   resp.data.container_instance.agent_update_status #=> String, one of ["PENDING", "STAGING", "STAGED", "UPDATING", "UPDATED", "FAILED"]
    #   resp.data.container_instance.attributes #=> Array<Attribute>
    #   resp.data.container_instance.attributes[0] #=> Types::Attribute
    #   resp.data.container_instance.attributes[0].name #=> String
    #   resp.data.container_instance.attributes[0].value #=> String
    #   resp.data.container_instance.attributes[0].target_type #=> String, one of ["container-instance"]
    #   resp.data.container_instance.attributes[0].target_id #=> String
    #   resp.data.container_instance.registered_at #=> Time
    #   resp.data.container_instance.attachments #=> Array<Attachment>
    #   resp.data.container_instance.attachments[0] #=> Types::Attachment
    #   resp.data.container_instance.attachments[0].id #=> String
    #   resp.data.container_instance.attachments[0].type #=> String
    #   resp.data.container_instance.attachments[0].status #=> String
    #   resp.data.container_instance.attachments[0].details #=> Array<KeyValuePair>
    #   resp.data.container_instance.attachments[0].details[0] #=> Types::KeyValuePair
    #   resp.data.container_instance.attachments[0].details[0].name #=> String
    #   resp.data.container_instance.attachments[0].details[0].value #=> String
    #   resp.data.container_instance.tags #=> Array<Tag>
    #   resp.data.container_instance.tags[0] #=> Types::Tag
    #   resp.data.container_instance.tags[0].key #=> String
    #   resp.data.container_instance.tags[0].value #=> String
    #   resp.data.container_instance.health_status #=> Types::ContainerInstanceHealthStatus
    #   resp.data.container_instance.health_status.overall_status #=> String, one of ["OK", "IMPAIRED", "INSUFFICIENT_DATA", "INITIALIZING"]
    #   resp.data.container_instance.health_status.details #=> Array<InstanceHealthCheckResult>
    #   resp.data.container_instance.health_status.details[0] #=> Types::InstanceHealthCheckResult
    #   resp.data.container_instance.health_status.details[0].type #=> String, one of ["CONTAINER_RUNTIME"]
    #   resp.data.container_instance.health_status.details[0].status #=> String, one of ["OK", "IMPAIRED", "INSUFFICIENT_DATA", "INITIALIZING"]
    #   resp.data.container_instance.health_status.details[0].last_updated #=> Time
    #   resp.data.container_instance.health_status.details[0].last_status_change #=> Time
    #
    def deregister_container_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeregisterContainerInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeregisterContainerInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeregisterContainerInstance
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterNotFoundException, Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::DeregisterContainerInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeregisterContainerInstance,
        stubs: @stubs,
        params_class: Params::DeregisterContainerInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deregister_container_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deregisters the specified task definition by family and revision. Upon deregistration,
    # 			the task definition is marked as <code>INACTIVE</code>. Existing tasks and services that
    # 			reference an <code>INACTIVE</code> task definition continue to run without disruption.
    # 			Existing services that reference an <code>INACTIVE</code> task definition can still
    # 			scale up or down by modifying the service's desired count.</p>
    # 		       <p>You can't use an <code>INACTIVE</code> task definition to run new tasks or create new
    # 			services, and you can't update an existing service to reference an <code>INACTIVE</code>
    # 			task definition. However, there may be up to a 10-minute window following deregistration
    # 			where these restrictions have not yet taken effect.</p>
    # 		       <note>
    # 			         <p>At this time, <code>INACTIVE</code> task definitions remain discoverable in your
    # 				account indefinitely. However, this behavior is subject to change in the future. We
    # 				don't recommend that you rely on <code>INACTIVE</code> task definitions persisting
    # 				beyond the lifecycle of any associated tasks and services.</p>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::DeregisterTaskDefinitionInput}.
    #
    # @option params [String] :task_definition
    #   <p>The <code>family</code> and <code>revision</code> (<code>family:revision</code>) or
    #   			full Amazon Resource Name (ARN) of the task definition to deregister. You must specify a
    #   				<code>revision</code>.</p>
    #
    # @return [Types::DeregisterTaskDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_task_definition(
    #     task_definition: 'taskDefinition' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeregisterTaskDefinitionOutput
    #   resp.data.task_definition #=> Types::TaskDefinition
    #   resp.data.task_definition.task_definition_arn #=> String
    #   resp.data.task_definition.container_definitions #=> Array<ContainerDefinition>
    #   resp.data.task_definition.container_definitions[0] #=> Types::ContainerDefinition
    #   resp.data.task_definition.container_definitions[0].name #=> String
    #   resp.data.task_definition.container_definitions[0].image #=> String
    #   resp.data.task_definition.container_definitions[0].repository_credentials #=> Types::RepositoryCredentials
    #   resp.data.task_definition.container_definitions[0].repository_credentials.credentials_parameter #=> String
    #   resp.data.task_definition.container_definitions[0].cpu #=> Integer
    #   resp.data.task_definition.container_definitions[0].memory #=> Integer
    #   resp.data.task_definition.container_definitions[0].memory_reservation #=> Integer
    #   resp.data.task_definition.container_definitions[0].links #=> Array<String>
    #   resp.data.task_definition.container_definitions[0].links[0] #=> String
    #   resp.data.task_definition.container_definitions[0].port_mappings #=> Array<PortMapping>
    #   resp.data.task_definition.container_definitions[0].port_mappings[0] #=> Types::PortMapping
    #   resp.data.task_definition.container_definitions[0].port_mappings[0].container_port #=> Integer
    #   resp.data.task_definition.container_definitions[0].port_mappings[0].host_port #=> Integer
    #   resp.data.task_definition.container_definitions[0].port_mappings[0].protocol #=> String, one of ["tcp", "udp"]
    #   resp.data.task_definition.container_definitions[0].essential #=> Boolean
    #   resp.data.task_definition.container_definitions[0].entry_point #=> Array<String>
    #   resp.data.task_definition.container_definitions[0].command #=> Array<String>
    #   resp.data.task_definition.container_definitions[0].environment #=> Array<KeyValuePair>
    #   resp.data.task_definition.container_definitions[0].environment[0] #=> Types::KeyValuePair
    #   resp.data.task_definition.container_definitions[0].environment[0].name #=> String
    #   resp.data.task_definition.container_definitions[0].environment[0].value #=> String
    #   resp.data.task_definition.container_definitions[0].environment_files #=> Array<EnvironmentFile>
    #   resp.data.task_definition.container_definitions[0].environment_files[0] #=> Types::EnvironmentFile
    #   resp.data.task_definition.container_definitions[0].environment_files[0].value #=> String
    #   resp.data.task_definition.container_definitions[0].environment_files[0].type #=> String, one of ["s3"]
    #   resp.data.task_definition.container_definitions[0].mount_points #=> Array<MountPoint>
    #   resp.data.task_definition.container_definitions[0].mount_points[0] #=> Types::MountPoint
    #   resp.data.task_definition.container_definitions[0].mount_points[0].source_volume #=> String
    #   resp.data.task_definition.container_definitions[0].mount_points[0].container_path #=> String
    #   resp.data.task_definition.container_definitions[0].mount_points[0].read_only #=> Boolean
    #   resp.data.task_definition.container_definitions[0].volumes_from #=> Array<VolumeFrom>
    #   resp.data.task_definition.container_definitions[0].volumes_from[0] #=> Types::VolumeFrom
    #   resp.data.task_definition.container_definitions[0].volumes_from[0].source_container #=> String
    #   resp.data.task_definition.container_definitions[0].volumes_from[0].read_only #=> Boolean
    #   resp.data.task_definition.container_definitions[0].linux_parameters #=> Types::LinuxParameters
    #   resp.data.task_definition.container_definitions[0].linux_parameters.capabilities #=> Types::KernelCapabilities
    #   resp.data.task_definition.container_definitions[0].linux_parameters.capabilities.add #=> Array<String>
    #   resp.data.task_definition.container_definitions[0].linux_parameters.capabilities.drop #=> Array<String>
    #   resp.data.task_definition.container_definitions[0].linux_parameters.devices #=> Array<Device>
    #   resp.data.task_definition.container_definitions[0].linux_parameters.devices[0] #=> Types::Device
    #   resp.data.task_definition.container_definitions[0].linux_parameters.devices[0].host_path #=> String
    #   resp.data.task_definition.container_definitions[0].linux_parameters.devices[0].container_path #=> String
    #   resp.data.task_definition.container_definitions[0].linux_parameters.devices[0].permissions #=> Array<String>
    #   resp.data.task_definition.container_definitions[0].linux_parameters.devices[0].permissions[0] #=> String, one of ["read", "write", "mknod"]
    #   resp.data.task_definition.container_definitions[0].linux_parameters.init_process_enabled #=> Boolean
    #   resp.data.task_definition.container_definitions[0].linux_parameters.shared_memory_size #=> Integer
    #   resp.data.task_definition.container_definitions[0].linux_parameters.tmpfs #=> Array<Tmpfs>
    #   resp.data.task_definition.container_definitions[0].linux_parameters.tmpfs[0] #=> Types::Tmpfs
    #   resp.data.task_definition.container_definitions[0].linux_parameters.tmpfs[0].container_path #=> String
    #   resp.data.task_definition.container_definitions[0].linux_parameters.tmpfs[0].size #=> Integer
    #   resp.data.task_definition.container_definitions[0].linux_parameters.tmpfs[0].mount_options #=> Array<String>
    #   resp.data.task_definition.container_definitions[0].linux_parameters.max_swap #=> Integer
    #   resp.data.task_definition.container_definitions[0].linux_parameters.swappiness #=> Integer
    #   resp.data.task_definition.container_definitions[0].secrets #=> Array<Secret>
    #   resp.data.task_definition.container_definitions[0].secrets[0] #=> Types::Secret
    #   resp.data.task_definition.container_definitions[0].secrets[0].name #=> String
    #   resp.data.task_definition.container_definitions[0].secrets[0].value_from #=> String
    #   resp.data.task_definition.container_definitions[0].depends_on #=> Array<ContainerDependency>
    #   resp.data.task_definition.container_definitions[0].depends_on[0] #=> Types::ContainerDependency
    #   resp.data.task_definition.container_definitions[0].depends_on[0].container_name #=> String
    #   resp.data.task_definition.container_definitions[0].depends_on[0].condition #=> String, one of ["START", "COMPLETE", "SUCCESS", "HEALTHY"]
    #   resp.data.task_definition.container_definitions[0].start_timeout #=> Integer
    #   resp.data.task_definition.container_definitions[0].stop_timeout #=> Integer
    #   resp.data.task_definition.container_definitions[0].hostname #=> String
    #   resp.data.task_definition.container_definitions[0].user #=> String
    #   resp.data.task_definition.container_definitions[0].working_directory #=> String
    #   resp.data.task_definition.container_definitions[0].disable_networking #=> Boolean
    #   resp.data.task_definition.container_definitions[0].privileged #=> Boolean
    #   resp.data.task_definition.container_definitions[0].readonly_root_filesystem #=> Boolean
    #   resp.data.task_definition.container_definitions[0].dns_servers #=> Array<String>
    #   resp.data.task_definition.container_definitions[0].dns_search_domains #=> Array<String>
    #   resp.data.task_definition.container_definitions[0].extra_hosts #=> Array<HostEntry>
    #   resp.data.task_definition.container_definitions[0].extra_hosts[0] #=> Types::HostEntry
    #   resp.data.task_definition.container_definitions[0].extra_hosts[0].hostname #=> String
    #   resp.data.task_definition.container_definitions[0].extra_hosts[0].ip_address #=> String
    #   resp.data.task_definition.container_definitions[0].docker_security_options #=> Array<String>
    #   resp.data.task_definition.container_definitions[0].interactive #=> Boolean
    #   resp.data.task_definition.container_definitions[0].pseudo_terminal #=> Boolean
    #   resp.data.task_definition.container_definitions[0].docker_labels #=> Hash<String, String>
    #   resp.data.task_definition.container_definitions[0].docker_labels['key'] #=> String
    #   resp.data.task_definition.container_definitions[0].ulimits #=> Array<Ulimit>
    #   resp.data.task_definition.container_definitions[0].ulimits[0] #=> Types::Ulimit
    #   resp.data.task_definition.container_definitions[0].ulimits[0].name #=> String, one of ["core", "cpu", "data", "fsize", "locks", "memlock", "msgqueue", "nice", "nofile", "nproc", "rss", "rtprio", "rttime", "sigpending", "stack"]
    #   resp.data.task_definition.container_definitions[0].ulimits[0].soft_limit #=> Integer
    #   resp.data.task_definition.container_definitions[0].ulimits[0].hard_limit #=> Integer
    #   resp.data.task_definition.container_definitions[0].log_configuration #=> Types::LogConfiguration
    #   resp.data.task_definition.container_definitions[0].log_configuration.log_driver #=> String, one of ["json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"]
    #   resp.data.task_definition.container_definitions[0].log_configuration.options #=> Hash<String, String>
    #   resp.data.task_definition.container_definitions[0].log_configuration.options['key'] #=> String
    #   resp.data.task_definition.container_definitions[0].log_configuration.secret_options #=> Array<Secret>
    #   resp.data.task_definition.container_definitions[0].health_check #=> Types::HealthCheck
    #   resp.data.task_definition.container_definitions[0].health_check.command #=> Array<String>
    #   resp.data.task_definition.container_definitions[0].health_check.interval #=> Integer
    #   resp.data.task_definition.container_definitions[0].health_check.timeout #=> Integer
    #   resp.data.task_definition.container_definitions[0].health_check.retries #=> Integer
    #   resp.data.task_definition.container_definitions[0].health_check.start_period #=> Integer
    #   resp.data.task_definition.container_definitions[0].system_controls #=> Array<SystemControl>
    #   resp.data.task_definition.container_definitions[0].system_controls[0] #=> Types::SystemControl
    #   resp.data.task_definition.container_definitions[0].system_controls[0].namespace #=> String
    #   resp.data.task_definition.container_definitions[0].system_controls[0].value #=> String
    #   resp.data.task_definition.container_definitions[0].resource_requirements #=> Array<ResourceRequirement>
    #   resp.data.task_definition.container_definitions[0].resource_requirements[0] #=> Types::ResourceRequirement
    #   resp.data.task_definition.container_definitions[0].resource_requirements[0].value #=> String
    #   resp.data.task_definition.container_definitions[0].resource_requirements[0].type #=> String, one of ["GPU", "InferenceAccelerator"]
    #   resp.data.task_definition.container_definitions[0].firelens_configuration #=> Types::FirelensConfiguration
    #   resp.data.task_definition.container_definitions[0].firelens_configuration.type #=> String, one of ["fluentd", "fluentbit"]
    #   resp.data.task_definition.container_definitions[0].firelens_configuration.options #=> Hash<String, String>
    #   resp.data.task_definition.container_definitions[0].firelens_configuration.options['key'] #=> String
    #   resp.data.task_definition.family #=> String
    #   resp.data.task_definition.task_role_arn #=> String
    #   resp.data.task_definition.execution_role_arn #=> String
    #   resp.data.task_definition.network_mode #=> String, one of ["bridge", "host", "awsvpc", "none"]
    #   resp.data.task_definition.revision #=> Integer
    #   resp.data.task_definition.volumes #=> Array<Volume>
    #   resp.data.task_definition.volumes[0] #=> Types::Volume
    #   resp.data.task_definition.volumes[0].name #=> String
    #   resp.data.task_definition.volumes[0].host #=> Types::HostVolumeProperties
    #   resp.data.task_definition.volumes[0].host.source_path #=> String
    #   resp.data.task_definition.volumes[0].docker_volume_configuration #=> Types::DockerVolumeConfiguration
    #   resp.data.task_definition.volumes[0].docker_volume_configuration.scope #=> String, one of ["task", "shared"]
    #   resp.data.task_definition.volumes[0].docker_volume_configuration.autoprovision #=> Boolean
    #   resp.data.task_definition.volumes[0].docker_volume_configuration.driver #=> String
    #   resp.data.task_definition.volumes[0].docker_volume_configuration.driver_opts #=> Hash<String, String>
    #   resp.data.task_definition.volumes[0].docker_volume_configuration.driver_opts['key'] #=> String
    #   resp.data.task_definition.volumes[0].docker_volume_configuration.labels #=> Hash<String, String>
    #   resp.data.task_definition.volumes[0].efs_volume_configuration #=> Types::EFSVolumeConfiguration
    #   resp.data.task_definition.volumes[0].efs_volume_configuration.file_system_id #=> String
    #   resp.data.task_definition.volumes[0].efs_volume_configuration.root_directory #=> String
    #   resp.data.task_definition.volumes[0].efs_volume_configuration.transit_encryption #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.task_definition.volumes[0].efs_volume_configuration.transit_encryption_port #=> Integer
    #   resp.data.task_definition.volumes[0].efs_volume_configuration.authorization_config #=> Types::EFSAuthorizationConfig
    #   resp.data.task_definition.volumes[0].efs_volume_configuration.authorization_config.access_point_id #=> String
    #   resp.data.task_definition.volumes[0].efs_volume_configuration.authorization_config.iam #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.task_definition.volumes[0].fsx_windows_file_server_volume_configuration #=> Types::FSxWindowsFileServerVolumeConfiguration
    #   resp.data.task_definition.volumes[0].fsx_windows_file_server_volume_configuration.file_system_id #=> String
    #   resp.data.task_definition.volumes[0].fsx_windows_file_server_volume_configuration.root_directory #=> String
    #   resp.data.task_definition.volumes[0].fsx_windows_file_server_volume_configuration.authorization_config #=> Types::FSxWindowsFileServerAuthorizationConfig
    #   resp.data.task_definition.volumes[0].fsx_windows_file_server_volume_configuration.authorization_config.credentials_parameter #=> String
    #   resp.data.task_definition.volumes[0].fsx_windows_file_server_volume_configuration.authorization_config.domain #=> String
    #   resp.data.task_definition.status #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.task_definition.requires_attributes #=> Array<Attribute>
    #   resp.data.task_definition.requires_attributes[0] #=> Types::Attribute
    #   resp.data.task_definition.requires_attributes[0].name #=> String
    #   resp.data.task_definition.requires_attributes[0].value #=> String
    #   resp.data.task_definition.requires_attributes[0].target_type #=> String, one of ["container-instance"]
    #   resp.data.task_definition.requires_attributes[0].target_id #=> String
    #   resp.data.task_definition.placement_constraints #=> Array<TaskDefinitionPlacementConstraint>
    #   resp.data.task_definition.placement_constraints[0] #=> Types::TaskDefinitionPlacementConstraint
    #   resp.data.task_definition.placement_constraints[0].type #=> String, one of ["memberOf"]
    #   resp.data.task_definition.placement_constraints[0].expression #=> String
    #   resp.data.task_definition.compatibilities #=> Array<String>
    #   resp.data.task_definition.compatibilities[0] #=> String, one of ["EC2", "FARGATE", "EXTERNAL"]
    #   resp.data.task_definition.runtime_platform #=> Types::RuntimePlatform
    #   resp.data.task_definition.runtime_platform.cpu_architecture #=> String, one of ["X86_64", "ARM64"]
    #   resp.data.task_definition.runtime_platform.operating_system_family #=> String, one of ["WINDOWS_SERVER_2019_FULL", "WINDOWS_SERVER_2019_CORE", "WINDOWS_SERVER_2016_FULL", "WINDOWS_SERVER_2004_CORE", "WINDOWS_SERVER_2022_CORE", "WINDOWS_SERVER_2022_FULL", "WINDOWS_SERVER_20H2_CORE", "LINUX"]
    #   resp.data.task_definition.requires_compatibilities #=> Array<String>
    #   resp.data.task_definition.cpu #=> String
    #   resp.data.task_definition.memory #=> String
    #   resp.data.task_definition.inference_accelerators #=> Array<InferenceAccelerator>
    #   resp.data.task_definition.inference_accelerators[0] #=> Types::InferenceAccelerator
    #   resp.data.task_definition.inference_accelerators[0].device_name #=> String
    #   resp.data.task_definition.inference_accelerators[0].device_type #=> String
    #   resp.data.task_definition.pid_mode #=> String, one of ["host", "task"]
    #   resp.data.task_definition.ipc_mode #=> String, one of ["host", "task", "none"]
    #   resp.data.task_definition.proxy_configuration #=> Types::ProxyConfiguration
    #   resp.data.task_definition.proxy_configuration.type #=> String, one of ["APPMESH"]
    #   resp.data.task_definition.proxy_configuration.container_name #=> String
    #   resp.data.task_definition.proxy_configuration.properties #=> Array<KeyValuePair>
    #   resp.data.task_definition.registered_at #=> Time
    #   resp.data.task_definition.deregistered_at #=> Time
    #   resp.data.task_definition.registered_by #=> String
    #   resp.data.task_definition.ephemeral_storage #=> Types::EphemeralStorage
    #   resp.data.task_definition.ephemeral_storage.size_in_gi_b #=> Integer
    #
    def deregister_task_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeregisterTaskDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeregisterTaskDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeregisterTaskDefinition
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::DeregisterTaskDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeregisterTaskDefinition,
        stubs: @stubs,
        params_class: Params::DeregisterTaskDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deregister_task_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes one or more of your capacity providers.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCapacityProvidersInput}.
    #
    # @option params [Array<String>] :capacity_providers
    #   <p>The short name or full Amazon Resource Name (ARN) of one or more capacity providers. Up to
    #   				<code>100</code> capacity providers can be described in an action.</p>
    #
    # @option params [Array<String>] :include
    #   <p>Specifies whether or not you want to see the resource tags for the capacity provider.
    #   			If <code>TAGS</code> is specified, the tags are included in the response. If this field
    #   			is omitted, tags aren't included in the response.</p>
    #
    # @option params [Integer] :max_results
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
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #   				<code>DescribeCapacityProviders</code> request where <code>maxResults</code> was
    #   			used and the results exceeded the value of that parameter. Pagination continues from the
    #   			end of the previous results that returned the <code>nextToken</code> value.</p>
    #   		       <note>
    #               <p>This token should be treated as an opaque identifier that is only used to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #           </note>
    #
    # @return [Types::DescribeCapacityProvidersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_capacity_providers(
    #     capacity_providers: [
    #       'member'
    #     ],
    #     include: [
    #       'TAGS' # accepts ["TAGS"]
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCapacityProvidersOutput
    #   resp.data.capacity_providers #=> Array<CapacityProvider>
    #   resp.data.capacity_providers[0] #=> Types::CapacityProvider
    #   resp.data.capacity_providers[0].capacity_provider_arn #=> String
    #   resp.data.capacity_providers[0].name #=> String
    #   resp.data.capacity_providers[0].status #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.capacity_providers[0].auto_scaling_group_provider #=> Types::AutoScalingGroupProvider
    #   resp.data.capacity_providers[0].auto_scaling_group_provider.auto_scaling_group_arn #=> String
    #   resp.data.capacity_providers[0].auto_scaling_group_provider.managed_scaling #=> Types::ManagedScaling
    #   resp.data.capacity_providers[0].auto_scaling_group_provider.managed_scaling.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.capacity_providers[0].auto_scaling_group_provider.managed_scaling.target_capacity #=> Integer
    #   resp.data.capacity_providers[0].auto_scaling_group_provider.managed_scaling.minimum_scaling_step_size #=> Integer
    #   resp.data.capacity_providers[0].auto_scaling_group_provider.managed_scaling.maximum_scaling_step_size #=> Integer
    #   resp.data.capacity_providers[0].auto_scaling_group_provider.managed_scaling.instance_warmup_period #=> Integer
    #   resp.data.capacity_providers[0].auto_scaling_group_provider.managed_termination_protection #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.capacity_providers[0].update_status #=> String, one of ["DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED"]
    #   resp.data.capacity_providers[0].update_status_reason #=> String
    #   resp.data.capacity_providers[0].tags #=> Array<Tag>
    #   resp.data.capacity_providers[0].tags[0] #=> Types::Tag
    #   resp.data.capacity_providers[0].tags[0].key #=> String
    #   resp.data.capacity_providers[0].tags[0].value #=> String
    #   resp.data.failures #=> Array<Failure>
    #   resp.data.failures[0] #=> Types::Failure
    #   resp.data.failures[0].arn #=> String
    #   resp.data.failures[0].reason #=> String
    #   resp.data.failures[0].detail #=> String
    #   resp.data.next_token #=> String
    #
    def describe_capacity_providers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCapacityProvidersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCapacityProvidersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCapacityProviders
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::DescribeCapacityProviders
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCapacityProviders,
        stubs: @stubs,
        params_class: Params::DescribeCapacityProvidersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_capacity_providers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes one or more of your clusters.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeClustersInput}.
    #
    # @option params [Array<String>] :clusters
    #   <p>A list of up to 100 cluster names or full cluster Amazon Resource Name (ARN) entries.
    #   			If you do not specify a cluster, the default cluster is assumed.</p>
    #
    # @option params [Array<String>] :include
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
    # @return [Types::DescribeClustersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_clusters(
    #     clusters: [
    #       'member'
    #     ],
    #     include: [
    #       'ATTACHMENTS' # accepts ["ATTACHMENTS", "CONFIGURATIONS", "SETTINGS", "STATISTICS", "TAGS"]
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeClustersOutput
    #   resp.data.clusters #=> Array<Cluster>
    #   resp.data.clusters[0] #=> Types::Cluster
    #   resp.data.clusters[0].cluster_arn #=> String
    #   resp.data.clusters[0].cluster_name #=> String
    #   resp.data.clusters[0].configuration #=> Types::ClusterConfiguration
    #   resp.data.clusters[0].configuration.execute_command_configuration #=> Types::ExecuteCommandConfiguration
    #   resp.data.clusters[0].configuration.execute_command_configuration.kms_key_id #=> String
    #   resp.data.clusters[0].configuration.execute_command_configuration.logging #=> String, one of ["NONE", "DEFAULT", "OVERRIDE"]
    #   resp.data.clusters[0].configuration.execute_command_configuration.log_configuration #=> Types::ExecuteCommandLogConfiguration
    #   resp.data.clusters[0].configuration.execute_command_configuration.log_configuration.cloud_watch_log_group_name #=> String
    #   resp.data.clusters[0].configuration.execute_command_configuration.log_configuration.cloud_watch_encryption_enabled #=> Boolean
    #   resp.data.clusters[0].configuration.execute_command_configuration.log_configuration.s3_bucket_name #=> String
    #   resp.data.clusters[0].configuration.execute_command_configuration.log_configuration.s3_encryption_enabled #=> Boolean
    #   resp.data.clusters[0].configuration.execute_command_configuration.log_configuration.s3_key_prefix #=> String
    #   resp.data.clusters[0].status #=> String
    #   resp.data.clusters[0].registered_container_instances_count #=> Integer
    #   resp.data.clusters[0].running_tasks_count #=> Integer
    #   resp.data.clusters[0].pending_tasks_count #=> Integer
    #   resp.data.clusters[0].active_services_count #=> Integer
    #   resp.data.clusters[0].statistics #=> Array<KeyValuePair>
    #   resp.data.clusters[0].statistics[0] #=> Types::KeyValuePair
    #   resp.data.clusters[0].statistics[0].name #=> String
    #   resp.data.clusters[0].statistics[0].value #=> String
    #   resp.data.clusters[0].tags #=> Array<Tag>
    #   resp.data.clusters[0].tags[0] #=> Types::Tag
    #   resp.data.clusters[0].tags[0].key #=> String
    #   resp.data.clusters[0].tags[0].value #=> String
    #   resp.data.clusters[0].settings #=> Array<ClusterSetting>
    #   resp.data.clusters[0].settings[0] #=> Types::ClusterSetting
    #   resp.data.clusters[0].settings[0].name #=> String, one of ["containerInsights"]
    #   resp.data.clusters[0].settings[0].value #=> String
    #   resp.data.clusters[0].capacity_providers #=> Array<String>
    #   resp.data.clusters[0].capacity_providers[0] #=> String
    #   resp.data.clusters[0].default_capacity_provider_strategy #=> Array<CapacityProviderStrategyItem>
    #   resp.data.clusters[0].default_capacity_provider_strategy[0] #=> Types::CapacityProviderStrategyItem
    #   resp.data.clusters[0].default_capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.data.clusters[0].default_capacity_provider_strategy[0].weight #=> Integer
    #   resp.data.clusters[0].default_capacity_provider_strategy[0].base #=> Integer
    #   resp.data.clusters[0].attachments #=> Array<Attachment>
    #   resp.data.clusters[0].attachments[0] #=> Types::Attachment
    #   resp.data.clusters[0].attachments[0].id #=> String
    #   resp.data.clusters[0].attachments[0].type #=> String
    #   resp.data.clusters[0].attachments[0].status #=> String
    #   resp.data.clusters[0].attachments[0].details #=> Array<KeyValuePair>
    #   resp.data.clusters[0].attachments_status #=> String
    #   resp.data.failures #=> Array<Failure>
    #   resp.data.failures[0] #=> Types::Failure
    #   resp.data.failures[0].arn #=> String
    #   resp.data.failures[0].reason #=> String
    #   resp.data.failures[0].detail #=> String
    #
    def describe_clusters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeClustersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeClustersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeClusters
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::DescribeClusters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeClusters,
        stubs: @stubs,
        params_class: Params::DescribeClustersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_clusters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes one or more container instances. Returns metadata about each container
    # 			instance requested.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeContainerInstancesInput}.
    #
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instances to
    #   			describe. If you do not specify a cluster, the default cluster is assumed. This parameter is required if the container instance
    #   			or container instances you are describing were launched in any cluster other than the
    #   			default cluster.</p>
    #
    # @option params [Array<String>] :container_instances
    #   <p>A list of up to 100 container instance IDs or full Amazon Resource Name (ARN) entries.</p>
    #
    # @option params [Array<String>] :include
    #   <p>Specifies whether you want to see the resource tags for the container instance. If
    #   				<code>TAGS</code> is specified, the tags are included in the response. If
    #   				<code>CONTAINER_INSTANCE_HEALTH</code> is specified, the container instance health
    #   			is included in the response. If this field is omitted, tags and container instance
    #   			health status aren't included in the response.</p>
    #
    # @return [Types::DescribeContainerInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_container_instances(
    #     cluster: 'cluster',
    #     container_instances: [
    #       'member'
    #     ], # required
    #     include: [
    #       'TAGS' # accepts ["TAGS", "CONTAINER_INSTANCE_HEALTH"]
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeContainerInstancesOutput
    #   resp.data.container_instances #=> Array<ContainerInstance>
    #   resp.data.container_instances[0] #=> Types::ContainerInstance
    #   resp.data.container_instances[0].container_instance_arn #=> String
    #   resp.data.container_instances[0].ec2_instance_id #=> String
    #   resp.data.container_instances[0].capacity_provider_name #=> String
    #   resp.data.container_instances[0].version #=> Integer
    #   resp.data.container_instances[0].version_info #=> Types::VersionInfo
    #   resp.data.container_instances[0].version_info.agent_version #=> String
    #   resp.data.container_instances[0].version_info.agent_hash #=> String
    #   resp.data.container_instances[0].version_info.docker_version #=> String
    #   resp.data.container_instances[0].remaining_resources #=> Array<Resource>
    #   resp.data.container_instances[0].remaining_resources[0] #=> Types::Resource
    #   resp.data.container_instances[0].remaining_resources[0].name #=> String
    #   resp.data.container_instances[0].remaining_resources[0].type #=> String
    #   resp.data.container_instances[0].remaining_resources[0].double_value #=> Float
    #   resp.data.container_instances[0].remaining_resources[0].long_value #=> Integer
    #   resp.data.container_instances[0].remaining_resources[0].integer_value #=> Integer
    #   resp.data.container_instances[0].remaining_resources[0].string_set_value #=> Array<String>
    #   resp.data.container_instances[0].remaining_resources[0].string_set_value[0] #=> String
    #   resp.data.container_instances[0].registered_resources #=> Array<Resource>
    #   resp.data.container_instances[0].status #=> String
    #   resp.data.container_instances[0].status_reason #=> String
    #   resp.data.container_instances[0].agent_connected #=> Boolean
    #   resp.data.container_instances[0].running_tasks_count #=> Integer
    #   resp.data.container_instances[0].pending_tasks_count #=> Integer
    #   resp.data.container_instances[0].agent_update_status #=> String, one of ["PENDING", "STAGING", "STAGED", "UPDATING", "UPDATED", "FAILED"]
    #   resp.data.container_instances[0].attributes #=> Array<Attribute>
    #   resp.data.container_instances[0].attributes[0] #=> Types::Attribute
    #   resp.data.container_instances[0].attributes[0].name #=> String
    #   resp.data.container_instances[0].attributes[0].value #=> String
    #   resp.data.container_instances[0].attributes[0].target_type #=> String, one of ["container-instance"]
    #   resp.data.container_instances[0].attributes[0].target_id #=> String
    #   resp.data.container_instances[0].registered_at #=> Time
    #   resp.data.container_instances[0].attachments #=> Array<Attachment>
    #   resp.data.container_instances[0].attachments[0] #=> Types::Attachment
    #   resp.data.container_instances[0].attachments[0].id #=> String
    #   resp.data.container_instances[0].attachments[0].type #=> String
    #   resp.data.container_instances[0].attachments[0].status #=> String
    #   resp.data.container_instances[0].attachments[0].details #=> Array<KeyValuePair>
    #   resp.data.container_instances[0].attachments[0].details[0] #=> Types::KeyValuePair
    #   resp.data.container_instances[0].attachments[0].details[0].name #=> String
    #   resp.data.container_instances[0].attachments[0].details[0].value #=> String
    #   resp.data.container_instances[0].tags #=> Array<Tag>
    #   resp.data.container_instances[0].tags[0] #=> Types::Tag
    #   resp.data.container_instances[0].tags[0].key #=> String
    #   resp.data.container_instances[0].tags[0].value #=> String
    #   resp.data.container_instances[0].health_status #=> Types::ContainerInstanceHealthStatus
    #   resp.data.container_instances[0].health_status.overall_status #=> String, one of ["OK", "IMPAIRED", "INSUFFICIENT_DATA", "INITIALIZING"]
    #   resp.data.container_instances[0].health_status.details #=> Array<InstanceHealthCheckResult>
    #   resp.data.container_instances[0].health_status.details[0] #=> Types::InstanceHealthCheckResult
    #   resp.data.container_instances[0].health_status.details[0].type #=> String, one of ["CONTAINER_RUNTIME"]
    #   resp.data.container_instances[0].health_status.details[0].status #=> String, one of ["OK", "IMPAIRED", "INSUFFICIENT_DATA", "INITIALIZING"]
    #   resp.data.container_instances[0].health_status.details[0].last_updated #=> Time
    #   resp.data.container_instances[0].health_status.details[0].last_status_change #=> Time
    #   resp.data.failures #=> Array<Failure>
    #   resp.data.failures[0] #=> Types::Failure
    #   resp.data.failures[0].arn #=> String
    #   resp.data.failures[0].reason #=> String
    #   resp.data.failures[0].detail #=> String
    #
    def describe_container_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeContainerInstancesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeContainerInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeContainerInstances
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterNotFoundException, Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::DescribeContainerInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeContainerInstances,
        stubs: @stubs,
        params_class: Params::DescribeContainerInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_container_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified services running in your cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeServicesInput}.
    #
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN)the cluster that hosts the service to describe.
    #   			If you do not specify a cluster, the default cluster is assumed. This parameter is required if the service or services you are
    #   			describing were launched in any cluster other than the default cluster.</p>
    #
    # @option params [Array<String>] :services
    #   <p>A list of services to describe. You may specify up to 10 services to describe in a
    #   			single operation.</p>
    #
    # @option params [Array<String>] :include
    #   <p>Determines whether you want to see the resource tags for the service. If
    #   				<code>TAGS</code> is specified, the tags are included in the response. If this field
    #   			is omitted, tags aren't included in the response.</p>
    #
    # @return [Types::DescribeServicesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_services(
    #     cluster: 'cluster',
    #     services: [
    #       'member'
    #     ], # required
    #     include: [
    #       'TAGS' # accepts ["TAGS"]
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeServicesOutput
    #   resp.data.services #=> Array<Service>
    #   resp.data.services[0] #=> Types::Service
    #   resp.data.services[0].service_arn #=> String
    #   resp.data.services[0].service_name #=> String
    #   resp.data.services[0].cluster_arn #=> String
    #   resp.data.services[0].load_balancers #=> Array<LoadBalancer>
    #   resp.data.services[0].load_balancers[0] #=> Types::LoadBalancer
    #   resp.data.services[0].load_balancers[0].target_group_arn #=> String
    #   resp.data.services[0].load_balancers[0].load_balancer_name #=> String
    #   resp.data.services[0].load_balancers[0].container_name #=> String
    #   resp.data.services[0].load_balancers[0].container_port #=> Integer
    #   resp.data.services[0].service_registries #=> Array<ServiceRegistry>
    #   resp.data.services[0].service_registries[0] #=> Types::ServiceRegistry
    #   resp.data.services[0].service_registries[0].registry_arn #=> String
    #   resp.data.services[0].service_registries[0].port #=> Integer
    #   resp.data.services[0].service_registries[0].container_name #=> String
    #   resp.data.services[0].service_registries[0].container_port #=> Integer
    #   resp.data.services[0].status #=> String
    #   resp.data.services[0].desired_count #=> Integer
    #   resp.data.services[0].running_count #=> Integer
    #   resp.data.services[0].pending_count #=> Integer
    #   resp.data.services[0].launch_type #=> String, one of ["EC2", "FARGATE", "EXTERNAL"]
    #   resp.data.services[0].capacity_provider_strategy #=> Array<CapacityProviderStrategyItem>
    #   resp.data.services[0].capacity_provider_strategy[0] #=> Types::CapacityProviderStrategyItem
    #   resp.data.services[0].capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.data.services[0].capacity_provider_strategy[0].weight #=> Integer
    #   resp.data.services[0].capacity_provider_strategy[0].base #=> Integer
    #   resp.data.services[0].platform_version #=> String
    #   resp.data.services[0].platform_family #=> String
    #   resp.data.services[0].task_definition #=> String
    #   resp.data.services[0].deployment_configuration #=> Types::DeploymentConfiguration
    #   resp.data.services[0].deployment_configuration.deployment_circuit_breaker #=> Types::DeploymentCircuitBreaker
    #   resp.data.services[0].deployment_configuration.deployment_circuit_breaker.enable #=> Boolean
    #   resp.data.services[0].deployment_configuration.deployment_circuit_breaker.rollback #=> Boolean
    #   resp.data.services[0].deployment_configuration.maximum_percent #=> Integer
    #   resp.data.services[0].deployment_configuration.minimum_healthy_percent #=> Integer
    #   resp.data.services[0].task_sets #=> Array<TaskSet>
    #   resp.data.services[0].task_sets[0] #=> Types::TaskSet
    #   resp.data.services[0].task_sets[0].id #=> String
    #   resp.data.services[0].task_sets[0].task_set_arn #=> String
    #   resp.data.services[0].task_sets[0].service_arn #=> String
    #   resp.data.services[0].task_sets[0].cluster_arn #=> String
    #   resp.data.services[0].task_sets[0].started_by #=> String
    #   resp.data.services[0].task_sets[0].external_id #=> String
    #   resp.data.services[0].task_sets[0].status #=> String
    #   resp.data.services[0].task_sets[0].task_definition #=> String
    #   resp.data.services[0].task_sets[0].computed_desired_count #=> Integer
    #   resp.data.services[0].task_sets[0].pending_count #=> Integer
    #   resp.data.services[0].task_sets[0].running_count #=> Integer
    #   resp.data.services[0].task_sets[0].created_at #=> Time
    #   resp.data.services[0].task_sets[0].updated_at #=> Time
    #   resp.data.services[0].task_sets[0].launch_type #=> String, one of ["EC2", "FARGATE", "EXTERNAL"]
    #   resp.data.services[0].task_sets[0].capacity_provider_strategy #=> Array<CapacityProviderStrategyItem>
    #   resp.data.services[0].task_sets[0].platform_version #=> String
    #   resp.data.services[0].task_sets[0].platform_family #=> String
    #   resp.data.services[0].task_sets[0].network_configuration #=> Types::NetworkConfiguration
    #   resp.data.services[0].task_sets[0].network_configuration.awsvpc_configuration #=> Types::AwsVpcConfiguration
    #   resp.data.services[0].task_sets[0].network_configuration.awsvpc_configuration.subnets #=> Array<String>
    #   resp.data.services[0].task_sets[0].network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.data.services[0].task_sets[0].network_configuration.awsvpc_configuration.security_groups #=> Array<String>
    #   resp.data.services[0].task_sets[0].network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.services[0].task_sets[0].load_balancers #=> Array<LoadBalancer>
    #   resp.data.services[0].task_sets[0].service_registries #=> Array<ServiceRegistry>
    #   resp.data.services[0].task_sets[0].scale #=> Types::Scale
    #   resp.data.services[0].task_sets[0].scale.value #=> Float
    #   resp.data.services[0].task_sets[0].scale.unit #=> String, one of ["PERCENT"]
    #   resp.data.services[0].task_sets[0].stability_status #=> String, one of ["STEADY_STATE", "STABILIZING"]
    #   resp.data.services[0].task_sets[0].stability_status_at #=> Time
    #   resp.data.services[0].task_sets[0].tags #=> Array<Tag>
    #   resp.data.services[0].task_sets[0].tags[0] #=> Types::Tag
    #   resp.data.services[0].task_sets[0].tags[0].key #=> String
    #   resp.data.services[0].task_sets[0].tags[0].value #=> String
    #   resp.data.services[0].deployments #=> Array<Deployment>
    #   resp.data.services[0].deployments[0] #=> Types::Deployment
    #   resp.data.services[0].deployments[0].id #=> String
    #   resp.data.services[0].deployments[0].status #=> String
    #   resp.data.services[0].deployments[0].task_definition #=> String
    #   resp.data.services[0].deployments[0].desired_count #=> Integer
    #   resp.data.services[0].deployments[0].pending_count #=> Integer
    #   resp.data.services[0].deployments[0].running_count #=> Integer
    #   resp.data.services[0].deployments[0].failed_tasks #=> Integer
    #   resp.data.services[0].deployments[0].created_at #=> Time
    #   resp.data.services[0].deployments[0].updated_at #=> Time
    #   resp.data.services[0].deployments[0].capacity_provider_strategy #=> Array<CapacityProviderStrategyItem>
    #   resp.data.services[0].deployments[0].launch_type #=> String, one of ["EC2", "FARGATE", "EXTERNAL"]
    #   resp.data.services[0].deployments[0].platform_version #=> String
    #   resp.data.services[0].deployments[0].platform_family #=> String
    #   resp.data.services[0].deployments[0].network_configuration #=> Types::NetworkConfiguration
    #   resp.data.services[0].deployments[0].rollout_state #=> String, one of ["COMPLETED", "FAILED", "IN_PROGRESS"]
    #   resp.data.services[0].deployments[0].rollout_state_reason #=> String
    #   resp.data.services[0].role_arn #=> String
    #   resp.data.services[0].events #=> Array<ServiceEvent>
    #   resp.data.services[0].events[0] #=> Types::ServiceEvent
    #   resp.data.services[0].events[0].id #=> String
    #   resp.data.services[0].events[0].created_at #=> Time
    #   resp.data.services[0].events[0].message #=> String
    #   resp.data.services[0].created_at #=> Time
    #   resp.data.services[0].placement_constraints #=> Array<PlacementConstraint>
    #   resp.data.services[0].placement_constraints[0] #=> Types::PlacementConstraint
    #   resp.data.services[0].placement_constraints[0].type #=> String, one of ["distinctInstance", "memberOf"]
    #   resp.data.services[0].placement_constraints[0].expression #=> String
    #   resp.data.services[0].placement_strategy #=> Array<PlacementStrategy>
    #   resp.data.services[0].placement_strategy[0] #=> Types::PlacementStrategy
    #   resp.data.services[0].placement_strategy[0].type #=> String, one of ["random", "spread", "binpack"]
    #   resp.data.services[0].placement_strategy[0].field #=> String
    #   resp.data.services[0].network_configuration #=> Types::NetworkConfiguration
    #   resp.data.services[0].health_check_grace_period_seconds #=> Integer
    #   resp.data.services[0].scheduling_strategy #=> String, one of ["REPLICA", "DAEMON"]
    #   resp.data.services[0].deployment_controller #=> Types::DeploymentController
    #   resp.data.services[0].deployment_controller.type #=> String, one of ["ECS", "CODE_DEPLOY", "EXTERNAL"]
    #   resp.data.services[0].tags #=> Array<Tag>
    #   resp.data.services[0].created_by #=> String
    #   resp.data.services[0].enable_ecs_managed_tags #=> Boolean
    #   resp.data.services[0].propagate_tags #=> String, one of ["TASK_DEFINITION", "SERVICE", "NONE"]
    #   resp.data.services[0].enable_execute_command #=> Boolean
    #   resp.data.failures #=> Array<Failure>
    #   resp.data.failures[0] #=> Types::Failure
    #   resp.data.failures[0].arn #=> String
    #   resp.data.failures[0].reason #=> String
    #   resp.data.failures[0].detail #=> String
    #
    def describe_services(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeServicesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeServicesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeServices
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterNotFoundException, Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::DescribeServices
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeServices,
        stubs: @stubs,
        params_class: Params::DescribeServicesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_services
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a task definition. You can specify a <code>family</code> and
    # 				<code>revision</code> to find information about a specific task definition, or you
    # 			can simply specify the family to find the latest <code>ACTIVE</code> revision in that
    # 			family.</p>
    # 		       <note>
    # 			         <p>You can only describe <code>INACTIVE</code> task definitions while an active task
    # 				or service references them.</p>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeTaskDefinitionInput}.
    #
    # @option params [String] :task_definition
    #   <p>The <code>family</code> for the latest <code>ACTIVE</code> revision,
    #   				<code>family</code> and <code>revision</code> (<code>family:revision</code>) for a
    #   			specific revision in the family, or full Amazon Resource Name (ARN) of the task definition to
    #   			describe.</p>
    #
    # @option params [Array<String>] :include
    #   <p>Determines whether to see the resource tags for the task definition. If
    #   				<code>TAGS</code> is specified, the tags are included in the response. If this field
    #   			is omitted, tags aren't included in the response.</p>
    #
    # @return [Types::DescribeTaskDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_task_definition(
    #     task_definition: 'taskDefinition', # required
    #     include: [
    #       'TAGS' # accepts ["TAGS"]
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTaskDefinitionOutput
    #   resp.data.task_definition #=> Types::TaskDefinition
    #   resp.data.task_definition.task_definition_arn #=> String
    #   resp.data.task_definition.container_definitions #=> Array<ContainerDefinition>
    #   resp.data.task_definition.container_definitions[0] #=> Types::ContainerDefinition
    #   resp.data.task_definition.container_definitions[0].name #=> String
    #   resp.data.task_definition.container_definitions[0].image #=> String
    #   resp.data.task_definition.container_definitions[0].repository_credentials #=> Types::RepositoryCredentials
    #   resp.data.task_definition.container_definitions[0].repository_credentials.credentials_parameter #=> String
    #   resp.data.task_definition.container_definitions[0].cpu #=> Integer
    #   resp.data.task_definition.container_definitions[0].memory #=> Integer
    #   resp.data.task_definition.container_definitions[0].memory_reservation #=> Integer
    #   resp.data.task_definition.container_definitions[0].links #=> Array<String>
    #   resp.data.task_definition.container_definitions[0].links[0] #=> String
    #   resp.data.task_definition.container_definitions[0].port_mappings #=> Array<PortMapping>
    #   resp.data.task_definition.container_definitions[0].port_mappings[0] #=> Types::PortMapping
    #   resp.data.task_definition.container_definitions[0].port_mappings[0].container_port #=> Integer
    #   resp.data.task_definition.container_definitions[0].port_mappings[0].host_port #=> Integer
    #   resp.data.task_definition.container_definitions[0].port_mappings[0].protocol #=> String, one of ["tcp", "udp"]
    #   resp.data.task_definition.container_definitions[0].essential #=> Boolean
    #   resp.data.task_definition.container_definitions[0].entry_point #=> Array<String>
    #   resp.data.task_definition.container_definitions[0].command #=> Array<String>
    #   resp.data.task_definition.container_definitions[0].environment #=> Array<KeyValuePair>
    #   resp.data.task_definition.container_definitions[0].environment[0] #=> Types::KeyValuePair
    #   resp.data.task_definition.container_definitions[0].environment[0].name #=> String
    #   resp.data.task_definition.container_definitions[0].environment[0].value #=> String
    #   resp.data.task_definition.container_definitions[0].environment_files #=> Array<EnvironmentFile>
    #   resp.data.task_definition.container_definitions[0].environment_files[0] #=> Types::EnvironmentFile
    #   resp.data.task_definition.container_definitions[0].environment_files[0].value #=> String
    #   resp.data.task_definition.container_definitions[0].environment_files[0].type #=> String, one of ["s3"]
    #   resp.data.task_definition.container_definitions[0].mount_points #=> Array<MountPoint>
    #   resp.data.task_definition.container_definitions[0].mount_points[0] #=> Types::MountPoint
    #   resp.data.task_definition.container_definitions[0].mount_points[0].source_volume #=> String
    #   resp.data.task_definition.container_definitions[0].mount_points[0].container_path #=> String
    #   resp.data.task_definition.container_definitions[0].mount_points[0].read_only #=> Boolean
    #   resp.data.task_definition.container_definitions[0].volumes_from #=> Array<VolumeFrom>
    #   resp.data.task_definition.container_definitions[0].volumes_from[0] #=> Types::VolumeFrom
    #   resp.data.task_definition.container_definitions[0].volumes_from[0].source_container #=> String
    #   resp.data.task_definition.container_definitions[0].volumes_from[0].read_only #=> Boolean
    #   resp.data.task_definition.container_definitions[0].linux_parameters #=> Types::LinuxParameters
    #   resp.data.task_definition.container_definitions[0].linux_parameters.capabilities #=> Types::KernelCapabilities
    #   resp.data.task_definition.container_definitions[0].linux_parameters.capabilities.add #=> Array<String>
    #   resp.data.task_definition.container_definitions[0].linux_parameters.capabilities.drop #=> Array<String>
    #   resp.data.task_definition.container_definitions[0].linux_parameters.devices #=> Array<Device>
    #   resp.data.task_definition.container_definitions[0].linux_parameters.devices[0] #=> Types::Device
    #   resp.data.task_definition.container_definitions[0].linux_parameters.devices[0].host_path #=> String
    #   resp.data.task_definition.container_definitions[0].linux_parameters.devices[0].container_path #=> String
    #   resp.data.task_definition.container_definitions[0].linux_parameters.devices[0].permissions #=> Array<String>
    #   resp.data.task_definition.container_definitions[0].linux_parameters.devices[0].permissions[0] #=> String, one of ["read", "write", "mknod"]
    #   resp.data.task_definition.container_definitions[0].linux_parameters.init_process_enabled #=> Boolean
    #   resp.data.task_definition.container_definitions[0].linux_parameters.shared_memory_size #=> Integer
    #   resp.data.task_definition.container_definitions[0].linux_parameters.tmpfs #=> Array<Tmpfs>
    #   resp.data.task_definition.container_definitions[0].linux_parameters.tmpfs[0] #=> Types::Tmpfs
    #   resp.data.task_definition.container_definitions[0].linux_parameters.tmpfs[0].container_path #=> String
    #   resp.data.task_definition.container_definitions[0].linux_parameters.tmpfs[0].size #=> Integer
    #   resp.data.task_definition.container_definitions[0].linux_parameters.tmpfs[0].mount_options #=> Array<String>
    #   resp.data.task_definition.container_definitions[0].linux_parameters.max_swap #=> Integer
    #   resp.data.task_definition.container_definitions[0].linux_parameters.swappiness #=> Integer
    #   resp.data.task_definition.container_definitions[0].secrets #=> Array<Secret>
    #   resp.data.task_definition.container_definitions[0].secrets[0] #=> Types::Secret
    #   resp.data.task_definition.container_definitions[0].secrets[0].name #=> String
    #   resp.data.task_definition.container_definitions[0].secrets[0].value_from #=> String
    #   resp.data.task_definition.container_definitions[0].depends_on #=> Array<ContainerDependency>
    #   resp.data.task_definition.container_definitions[0].depends_on[0] #=> Types::ContainerDependency
    #   resp.data.task_definition.container_definitions[0].depends_on[0].container_name #=> String
    #   resp.data.task_definition.container_definitions[0].depends_on[0].condition #=> String, one of ["START", "COMPLETE", "SUCCESS", "HEALTHY"]
    #   resp.data.task_definition.container_definitions[0].start_timeout #=> Integer
    #   resp.data.task_definition.container_definitions[0].stop_timeout #=> Integer
    #   resp.data.task_definition.container_definitions[0].hostname #=> String
    #   resp.data.task_definition.container_definitions[0].user #=> String
    #   resp.data.task_definition.container_definitions[0].working_directory #=> String
    #   resp.data.task_definition.container_definitions[0].disable_networking #=> Boolean
    #   resp.data.task_definition.container_definitions[0].privileged #=> Boolean
    #   resp.data.task_definition.container_definitions[0].readonly_root_filesystem #=> Boolean
    #   resp.data.task_definition.container_definitions[0].dns_servers #=> Array<String>
    #   resp.data.task_definition.container_definitions[0].dns_search_domains #=> Array<String>
    #   resp.data.task_definition.container_definitions[0].extra_hosts #=> Array<HostEntry>
    #   resp.data.task_definition.container_definitions[0].extra_hosts[0] #=> Types::HostEntry
    #   resp.data.task_definition.container_definitions[0].extra_hosts[0].hostname #=> String
    #   resp.data.task_definition.container_definitions[0].extra_hosts[0].ip_address #=> String
    #   resp.data.task_definition.container_definitions[0].docker_security_options #=> Array<String>
    #   resp.data.task_definition.container_definitions[0].interactive #=> Boolean
    #   resp.data.task_definition.container_definitions[0].pseudo_terminal #=> Boolean
    #   resp.data.task_definition.container_definitions[0].docker_labels #=> Hash<String, String>
    #   resp.data.task_definition.container_definitions[0].docker_labels['key'] #=> String
    #   resp.data.task_definition.container_definitions[0].ulimits #=> Array<Ulimit>
    #   resp.data.task_definition.container_definitions[0].ulimits[0] #=> Types::Ulimit
    #   resp.data.task_definition.container_definitions[0].ulimits[0].name #=> String, one of ["core", "cpu", "data", "fsize", "locks", "memlock", "msgqueue", "nice", "nofile", "nproc", "rss", "rtprio", "rttime", "sigpending", "stack"]
    #   resp.data.task_definition.container_definitions[0].ulimits[0].soft_limit #=> Integer
    #   resp.data.task_definition.container_definitions[0].ulimits[0].hard_limit #=> Integer
    #   resp.data.task_definition.container_definitions[0].log_configuration #=> Types::LogConfiguration
    #   resp.data.task_definition.container_definitions[0].log_configuration.log_driver #=> String, one of ["json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"]
    #   resp.data.task_definition.container_definitions[0].log_configuration.options #=> Hash<String, String>
    #   resp.data.task_definition.container_definitions[0].log_configuration.options['key'] #=> String
    #   resp.data.task_definition.container_definitions[0].log_configuration.secret_options #=> Array<Secret>
    #   resp.data.task_definition.container_definitions[0].health_check #=> Types::HealthCheck
    #   resp.data.task_definition.container_definitions[0].health_check.command #=> Array<String>
    #   resp.data.task_definition.container_definitions[0].health_check.interval #=> Integer
    #   resp.data.task_definition.container_definitions[0].health_check.timeout #=> Integer
    #   resp.data.task_definition.container_definitions[0].health_check.retries #=> Integer
    #   resp.data.task_definition.container_definitions[0].health_check.start_period #=> Integer
    #   resp.data.task_definition.container_definitions[0].system_controls #=> Array<SystemControl>
    #   resp.data.task_definition.container_definitions[0].system_controls[0] #=> Types::SystemControl
    #   resp.data.task_definition.container_definitions[0].system_controls[0].namespace #=> String
    #   resp.data.task_definition.container_definitions[0].system_controls[0].value #=> String
    #   resp.data.task_definition.container_definitions[0].resource_requirements #=> Array<ResourceRequirement>
    #   resp.data.task_definition.container_definitions[0].resource_requirements[0] #=> Types::ResourceRequirement
    #   resp.data.task_definition.container_definitions[0].resource_requirements[0].value #=> String
    #   resp.data.task_definition.container_definitions[0].resource_requirements[0].type #=> String, one of ["GPU", "InferenceAccelerator"]
    #   resp.data.task_definition.container_definitions[0].firelens_configuration #=> Types::FirelensConfiguration
    #   resp.data.task_definition.container_definitions[0].firelens_configuration.type #=> String, one of ["fluentd", "fluentbit"]
    #   resp.data.task_definition.container_definitions[0].firelens_configuration.options #=> Hash<String, String>
    #   resp.data.task_definition.container_definitions[0].firelens_configuration.options['key'] #=> String
    #   resp.data.task_definition.family #=> String
    #   resp.data.task_definition.task_role_arn #=> String
    #   resp.data.task_definition.execution_role_arn #=> String
    #   resp.data.task_definition.network_mode #=> String, one of ["bridge", "host", "awsvpc", "none"]
    #   resp.data.task_definition.revision #=> Integer
    #   resp.data.task_definition.volumes #=> Array<Volume>
    #   resp.data.task_definition.volumes[0] #=> Types::Volume
    #   resp.data.task_definition.volumes[0].name #=> String
    #   resp.data.task_definition.volumes[0].host #=> Types::HostVolumeProperties
    #   resp.data.task_definition.volumes[0].host.source_path #=> String
    #   resp.data.task_definition.volumes[0].docker_volume_configuration #=> Types::DockerVolumeConfiguration
    #   resp.data.task_definition.volumes[0].docker_volume_configuration.scope #=> String, one of ["task", "shared"]
    #   resp.data.task_definition.volumes[0].docker_volume_configuration.autoprovision #=> Boolean
    #   resp.data.task_definition.volumes[0].docker_volume_configuration.driver #=> String
    #   resp.data.task_definition.volumes[0].docker_volume_configuration.driver_opts #=> Hash<String, String>
    #   resp.data.task_definition.volumes[0].docker_volume_configuration.driver_opts['key'] #=> String
    #   resp.data.task_definition.volumes[0].docker_volume_configuration.labels #=> Hash<String, String>
    #   resp.data.task_definition.volumes[0].efs_volume_configuration #=> Types::EFSVolumeConfiguration
    #   resp.data.task_definition.volumes[0].efs_volume_configuration.file_system_id #=> String
    #   resp.data.task_definition.volumes[0].efs_volume_configuration.root_directory #=> String
    #   resp.data.task_definition.volumes[0].efs_volume_configuration.transit_encryption #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.task_definition.volumes[0].efs_volume_configuration.transit_encryption_port #=> Integer
    #   resp.data.task_definition.volumes[0].efs_volume_configuration.authorization_config #=> Types::EFSAuthorizationConfig
    #   resp.data.task_definition.volumes[0].efs_volume_configuration.authorization_config.access_point_id #=> String
    #   resp.data.task_definition.volumes[0].efs_volume_configuration.authorization_config.iam #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.task_definition.volumes[0].fsx_windows_file_server_volume_configuration #=> Types::FSxWindowsFileServerVolumeConfiguration
    #   resp.data.task_definition.volumes[0].fsx_windows_file_server_volume_configuration.file_system_id #=> String
    #   resp.data.task_definition.volumes[0].fsx_windows_file_server_volume_configuration.root_directory #=> String
    #   resp.data.task_definition.volumes[0].fsx_windows_file_server_volume_configuration.authorization_config #=> Types::FSxWindowsFileServerAuthorizationConfig
    #   resp.data.task_definition.volumes[0].fsx_windows_file_server_volume_configuration.authorization_config.credentials_parameter #=> String
    #   resp.data.task_definition.volumes[0].fsx_windows_file_server_volume_configuration.authorization_config.domain #=> String
    #   resp.data.task_definition.status #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.task_definition.requires_attributes #=> Array<Attribute>
    #   resp.data.task_definition.requires_attributes[0] #=> Types::Attribute
    #   resp.data.task_definition.requires_attributes[0].name #=> String
    #   resp.data.task_definition.requires_attributes[0].value #=> String
    #   resp.data.task_definition.requires_attributes[0].target_type #=> String, one of ["container-instance"]
    #   resp.data.task_definition.requires_attributes[0].target_id #=> String
    #   resp.data.task_definition.placement_constraints #=> Array<TaskDefinitionPlacementConstraint>
    #   resp.data.task_definition.placement_constraints[0] #=> Types::TaskDefinitionPlacementConstraint
    #   resp.data.task_definition.placement_constraints[0].type #=> String, one of ["memberOf"]
    #   resp.data.task_definition.placement_constraints[0].expression #=> String
    #   resp.data.task_definition.compatibilities #=> Array<String>
    #   resp.data.task_definition.compatibilities[0] #=> String, one of ["EC2", "FARGATE", "EXTERNAL"]
    #   resp.data.task_definition.runtime_platform #=> Types::RuntimePlatform
    #   resp.data.task_definition.runtime_platform.cpu_architecture #=> String, one of ["X86_64", "ARM64"]
    #   resp.data.task_definition.runtime_platform.operating_system_family #=> String, one of ["WINDOWS_SERVER_2019_FULL", "WINDOWS_SERVER_2019_CORE", "WINDOWS_SERVER_2016_FULL", "WINDOWS_SERVER_2004_CORE", "WINDOWS_SERVER_2022_CORE", "WINDOWS_SERVER_2022_FULL", "WINDOWS_SERVER_20H2_CORE", "LINUX"]
    #   resp.data.task_definition.requires_compatibilities #=> Array<String>
    #   resp.data.task_definition.cpu #=> String
    #   resp.data.task_definition.memory #=> String
    #   resp.data.task_definition.inference_accelerators #=> Array<InferenceAccelerator>
    #   resp.data.task_definition.inference_accelerators[0] #=> Types::InferenceAccelerator
    #   resp.data.task_definition.inference_accelerators[0].device_name #=> String
    #   resp.data.task_definition.inference_accelerators[0].device_type #=> String
    #   resp.data.task_definition.pid_mode #=> String, one of ["host", "task"]
    #   resp.data.task_definition.ipc_mode #=> String, one of ["host", "task", "none"]
    #   resp.data.task_definition.proxy_configuration #=> Types::ProxyConfiguration
    #   resp.data.task_definition.proxy_configuration.type #=> String, one of ["APPMESH"]
    #   resp.data.task_definition.proxy_configuration.container_name #=> String
    #   resp.data.task_definition.proxy_configuration.properties #=> Array<KeyValuePair>
    #   resp.data.task_definition.registered_at #=> Time
    #   resp.data.task_definition.deregistered_at #=> Time
    #   resp.data.task_definition.registered_by #=> String
    #   resp.data.task_definition.ephemeral_storage #=> Types::EphemeralStorage
    #   resp.data.task_definition.ephemeral_storage.size_in_gi_b #=> Integer
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def describe_task_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTaskDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTaskDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTaskDefinition
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::DescribeTaskDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTaskDefinition,
        stubs: @stubs,
        params_class: Params::DescribeTaskDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_task_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the task sets in the specified cluster and service. This is used when a
    # 			service uses the <code>EXTERNAL</code> deployment controller type. For more information,
    # 			see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html">Amazon ECS Deployment
    # 				Types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTaskSetsInput}.
    #
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service that the task
    #   			sets exist in.</p>
    #
    # @option params [String] :service
    #   <p>The short name or full Amazon Resource Name (ARN) of the service that the task sets exist in.</p>
    #
    # @option params [Array<String>] :task_sets
    #   <p>The ID or full Amazon Resource Name (ARN) of task sets to
    #   			describe.</p>
    #
    # @option params [Array<String>] :include
    #   <p>Specifies whether to see the resource tags for the task set. If <code>TAGS</code> is
    #   			specified, the tags are included in the response. If this field is omitted, tags aren't
    #   			included in the response.</p>
    #
    # @return [Types::DescribeTaskSetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_task_sets(
    #     cluster: 'cluster', # required
    #     service: 'service', # required
    #     task_sets: [
    #       'member'
    #     ],
    #     include: [
    #       'TAGS' # accepts ["TAGS"]
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTaskSetsOutput
    #   resp.data.task_sets #=> Array<TaskSet>
    #   resp.data.task_sets[0] #=> Types::TaskSet
    #   resp.data.task_sets[0].id #=> String
    #   resp.data.task_sets[0].task_set_arn #=> String
    #   resp.data.task_sets[0].service_arn #=> String
    #   resp.data.task_sets[0].cluster_arn #=> String
    #   resp.data.task_sets[0].started_by #=> String
    #   resp.data.task_sets[0].external_id #=> String
    #   resp.data.task_sets[0].status #=> String
    #   resp.data.task_sets[0].task_definition #=> String
    #   resp.data.task_sets[0].computed_desired_count #=> Integer
    #   resp.data.task_sets[0].pending_count #=> Integer
    #   resp.data.task_sets[0].running_count #=> Integer
    #   resp.data.task_sets[0].created_at #=> Time
    #   resp.data.task_sets[0].updated_at #=> Time
    #   resp.data.task_sets[0].launch_type #=> String, one of ["EC2", "FARGATE", "EXTERNAL"]
    #   resp.data.task_sets[0].capacity_provider_strategy #=> Array<CapacityProviderStrategyItem>
    #   resp.data.task_sets[0].capacity_provider_strategy[0] #=> Types::CapacityProviderStrategyItem
    #   resp.data.task_sets[0].capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.data.task_sets[0].capacity_provider_strategy[0].weight #=> Integer
    #   resp.data.task_sets[0].capacity_provider_strategy[0].base #=> Integer
    #   resp.data.task_sets[0].platform_version #=> String
    #   resp.data.task_sets[0].platform_family #=> String
    #   resp.data.task_sets[0].network_configuration #=> Types::NetworkConfiguration
    #   resp.data.task_sets[0].network_configuration.awsvpc_configuration #=> Types::AwsVpcConfiguration
    #   resp.data.task_sets[0].network_configuration.awsvpc_configuration.subnets #=> Array<String>
    #   resp.data.task_sets[0].network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.data.task_sets[0].network_configuration.awsvpc_configuration.security_groups #=> Array<String>
    #   resp.data.task_sets[0].network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.task_sets[0].load_balancers #=> Array<LoadBalancer>
    #   resp.data.task_sets[0].load_balancers[0] #=> Types::LoadBalancer
    #   resp.data.task_sets[0].load_balancers[0].target_group_arn #=> String
    #   resp.data.task_sets[0].load_balancers[0].load_balancer_name #=> String
    #   resp.data.task_sets[0].load_balancers[0].container_name #=> String
    #   resp.data.task_sets[0].load_balancers[0].container_port #=> Integer
    #   resp.data.task_sets[0].service_registries #=> Array<ServiceRegistry>
    #   resp.data.task_sets[0].service_registries[0] #=> Types::ServiceRegistry
    #   resp.data.task_sets[0].service_registries[0].registry_arn #=> String
    #   resp.data.task_sets[0].service_registries[0].port #=> Integer
    #   resp.data.task_sets[0].service_registries[0].container_name #=> String
    #   resp.data.task_sets[0].service_registries[0].container_port #=> Integer
    #   resp.data.task_sets[0].scale #=> Types::Scale
    #   resp.data.task_sets[0].scale.value #=> Float
    #   resp.data.task_sets[0].scale.unit #=> String, one of ["PERCENT"]
    #   resp.data.task_sets[0].stability_status #=> String, one of ["STEADY_STATE", "STABILIZING"]
    #   resp.data.task_sets[0].stability_status_at #=> Time
    #   resp.data.task_sets[0].tags #=> Array<Tag>
    #   resp.data.task_sets[0].tags[0] #=> Types::Tag
    #   resp.data.task_sets[0].tags[0].key #=> String
    #   resp.data.task_sets[0].tags[0].value #=> String
    #   resp.data.failures #=> Array<Failure>
    #   resp.data.failures[0] #=> Types::Failure
    #   resp.data.failures[0].arn #=> String
    #   resp.data.failures[0].reason #=> String
    #   resp.data.failures[0].detail #=> String
    #
    def describe_task_sets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTaskSetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTaskSetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTaskSets
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceNotFoundException, Errors::AccessDeniedException, Errors::ClusterNotFoundException, Errors::ServiceNotActiveException, Errors::ServerException, Errors::InvalidParameterException, Errors::UnsupportedFeatureException, Errors::ClientException]),
        data_parser: Parsers::DescribeTaskSets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTaskSets,
        stubs: @stubs,
        params_class: Params::DescribeTaskSetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_task_sets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a specified task or tasks.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTasksInput}.
    #
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the task or tasks to
    #   			describe. If you do not specify a cluster, the default cluster is assumed. This parameter is required if the task or tasks you
    #   			are describing were launched in any cluster other than the default cluster.</p>
    #
    # @option params [Array<String>] :tasks
    #   <p>A list of up to 100 task IDs or full ARN entries.</p>
    #
    # @option params [Array<String>] :include
    #   <p>Specifies whether you want to see the resource tags for the task. If <code>TAGS</code>
    #   			is specified, the tags are included in the response. If this field is omitted, tags
    #   			aren't included in the response.</p>
    #
    # @return [Types::DescribeTasksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tasks(
    #     cluster: 'cluster',
    #     tasks: [
    #       'member'
    #     ], # required
    #     include: [
    #       'TAGS' # accepts ["TAGS"]
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTasksOutput
    #   resp.data.tasks #=> Array<Task>
    #   resp.data.tasks[0] #=> Types::Task
    #   resp.data.tasks[0].attachments #=> Array<Attachment>
    #   resp.data.tasks[0].attachments[0] #=> Types::Attachment
    #   resp.data.tasks[0].attachments[0].id #=> String
    #   resp.data.tasks[0].attachments[0].type #=> String
    #   resp.data.tasks[0].attachments[0].status #=> String
    #   resp.data.tasks[0].attachments[0].details #=> Array<KeyValuePair>
    #   resp.data.tasks[0].attachments[0].details[0] #=> Types::KeyValuePair
    #   resp.data.tasks[0].attachments[0].details[0].name #=> String
    #   resp.data.tasks[0].attachments[0].details[0].value #=> String
    #   resp.data.tasks[0].attributes #=> Array<Attribute>
    #   resp.data.tasks[0].attributes[0] #=> Types::Attribute
    #   resp.data.tasks[0].attributes[0].name #=> String
    #   resp.data.tasks[0].attributes[0].value #=> String
    #   resp.data.tasks[0].attributes[0].target_type #=> String, one of ["container-instance"]
    #   resp.data.tasks[0].attributes[0].target_id #=> String
    #   resp.data.tasks[0].availability_zone #=> String
    #   resp.data.tasks[0].capacity_provider_name #=> String
    #   resp.data.tasks[0].cluster_arn #=> String
    #   resp.data.tasks[0].connectivity #=> String, one of ["CONNECTED", "DISCONNECTED"]
    #   resp.data.tasks[0].connectivity_at #=> Time
    #   resp.data.tasks[0].container_instance_arn #=> String
    #   resp.data.tasks[0].containers #=> Array<Container>
    #   resp.data.tasks[0].containers[0] #=> Types::Container
    #   resp.data.tasks[0].containers[0].container_arn #=> String
    #   resp.data.tasks[0].containers[0].task_arn #=> String
    #   resp.data.tasks[0].containers[0].name #=> String
    #   resp.data.tasks[0].containers[0].image #=> String
    #   resp.data.tasks[0].containers[0].image_digest #=> String
    #   resp.data.tasks[0].containers[0].runtime_id #=> String
    #   resp.data.tasks[0].containers[0].last_status #=> String
    #   resp.data.tasks[0].containers[0].exit_code #=> Integer
    #   resp.data.tasks[0].containers[0].reason #=> String
    #   resp.data.tasks[0].containers[0].network_bindings #=> Array<NetworkBinding>
    #   resp.data.tasks[0].containers[0].network_bindings[0] #=> Types::NetworkBinding
    #   resp.data.tasks[0].containers[0].network_bindings[0].bind_ip #=> String
    #   resp.data.tasks[0].containers[0].network_bindings[0].container_port #=> Integer
    #   resp.data.tasks[0].containers[0].network_bindings[0].host_port #=> Integer
    #   resp.data.tasks[0].containers[0].network_bindings[0].protocol #=> String, one of ["tcp", "udp"]
    #   resp.data.tasks[0].containers[0].network_interfaces #=> Array<NetworkInterface>
    #   resp.data.tasks[0].containers[0].network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.tasks[0].containers[0].network_interfaces[0].attachment_id #=> String
    #   resp.data.tasks[0].containers[0].network_interfaces[0].private_ipv4_address #=> String
    #   resp.data.tasks[0].containers[0].network_interfaces[0].ipv6_address #=> String
    #   resp.data.tasks[0].containers[0].health_status #=> String, one of ["HEALTHY", "UNHEALTHY", "UNKNOWN"]
    #   resp.data.tasks[0].containers[0].managed_agents #=> Array<ManagedAgent>
    #   resp.data.tasks[0].containers[0].managed_agents[0] #=> Types::ManagedAgent
    #   resp.data.tasks[0].containers[0].managed_agents[0].last_started_at #=> Time
    #   resp.data.tasks[0].containers[0].managed_agents[0].name #=> String, one of ["ExecuteCommandAgent"]
    #   resp.data.tasks[0].containers[0].managed_agents[0].reason #=> String
    #   resp.data.tasks[0].containers[0].managed_agents[0].last_status #=> String
    #   resp.data.tasks[0].containers[0].cpu #=> String
    #   resp.data.tasks[0].containers[0].memory #=> String
    #   resp.data.tasks[0].containers[0].memory_reservation #=> String
    #   resp.data.tasks[0].containers[0].gpu_ids #=> Array<String>
    #   resp.data.tasks[0].containers[0].gpu_ids[0] #=> String
    #   resp.data.tasks[0].cpu #=> String
    #   resp.data.tasks[0].created_at #=> Time
    #   resp.data.tasks[0].desired_status #=> String
    #   resp.data.tasks[0].enable_execute_command #=> Boolean
    #   resp.data.tasks[0].execution_stopped_at #=> Time
    #   resp.data.tasks[0].group #=> String
    #   resp.data.tasks[0].health_status #=> String, one of ["HEALTHY", "UNHEALTHY", "UNKNOWN"]
    #   resp.data.tasks[0].inference_accelerators #=> Array<InferenceAccelerator>
    #   resp.data.tasks[0].inference_accelerators[0] #=> Types::InferenceAccelerator
    #   resp.data.tasks[0].inference_accelerators[0].device_name #=> String
    #   resp.data.tasks[0].inference_accelerators[0].device_type #=> String
    #   resp.data.tasks[0].last_status #=> String
    #   resp.data.tasks[0].launch_type #=> String, one of ["EC2", "FARGATE", "EXTERNAL"]
    #   resp.data.tasks[0].memory #=> String
    #   resp.data.tasks[0].overrides #=> Types::TaskOverride
    #   resp.data.tasks[0].overrides.container_overrides #=> Array<ContainerOverride>
    #   resp.data.tasks[0].overrides.container_overrides[0] #=> Types::ContainerOverride
    #   resp.data.tasks[0].overrides.container_overrides[0].name #=> String
    #   resp.data.tasks[0].overrides.container_overrides[0].command #=> Array<String>
    #   resp.data.tasks[0].overrides.container_overrides[0].command[0] #=> String
    #   resp.data.tasks[0].overrides.container_overrides[0].environment #=> Array<KeyValuePair>
    #   resp.data.tasks[0].overrides.container_overrides[0].environment_files #=> Array<EnvironmentFile>
    #   resp.data.tasks[0].overrides.container_overrides[0].environment_files[0] #=> Types::EnvironmentFile
    #   resp.data.tasks[0].overrides.container_overrides[0].environment_files[0].value #=> String
    #   resp.data.tasks[0].overrides.container_overrides[0].environment_files[0].type #=> String, one of ["s3"]
    #   resp.data.tasks[0].overrides.container_overrides[0].cpu #=> Integer
    #   resp.data.tasks[0].overrides.container_overrides[0].memory #=> Integer
    #   resp.data.tasks[0].overrides.container_overrides[0].memory_reservation #=> Integer
    #   resp.data.tasks[0].overrides.container_overrides[0].resource_requirements #=> Array<ResourceRequirement>
    #   resp.data.tasks[0].overrides.container_overrides[0].resource_requirements[0] #=> Types::ResourceRequirement
    #   resp.data.tasks[0].overrides.container_overrides[0].resource_requirements[0].value #=> String
    #   resp.data.tasks[0].overrides.container_overrides[0].resource_requirements[0].type #=> String, one of ["GPU", "InferenceAccelerator"]
    #   resp.data.tasks[0].overrides.cpu #=> String
    #   resp.data.tasks[0].overrides.inference_accelerator_overrides #=> Array<InferenceAcceleratorOverride>
    #   resp.data.tasks[0].overrides.inference_accelerator_overrides[0] #=> Types::InferenceAcceleratorOverride
    #   resp.data.tasks[0].overrides.inference_accelerator_overrides[0].device_name #=> String
    #   resp.data.tasks[0].overrides.inference_accelerator_overrides[0].device_type #=> String
    #   resp.data.tasks[0].overrides.execution_role_arn #=> String
    #   resp.data.tasks[0].overrides.memory #=> String
    #   resp.data.tasks[0].overrides.task_role_arn #=> String
    #   resp.data.tasks[0].overrides.ephemeral_storage #=> Types::EphemeralStorage
    #   resp.data.tasks[0].overrides.ephemeral_storage.size_in_gi_b #=> Integer
    #   resp.data.tasks[0].platform_version #=> String
    #   resp.data.tasks[0].platform_family #=> String
    #   resp.data.tasks[0].pull_started_at #=> Time
    #   resp.data.tasks[0].pull_stopped_at #=> Time
    #   resp.data.tasks[0].started_at #=> Time
    #   resp.data.tasks[0].started_by #=> String
    #   resp.data.tasks[0].stop_code #=> String, one of ["TaskFailedToStart", "EssentialContainerExited", "UserInitiated"]
    #   resp.data.tasks[0].stopped_at #=> Time
    #   resp.data.tasks[0].stopped_reason #=> String
    #   resp.data.tasks[0].stopping_at #=> Time
    #   resp.data.tasks[0].tags #=> Array<Tag>
    #   resp.data.tasks[0].tags[0] #=> Types::Tag
    #   resp.data.tasks[0].tags[0].key #=> String
    #   resp.data.tasks[0].tags[0].value #=> String
    #   resp.data.tasks[0].task_arn #=> String
    #   resp.data.tasks[0].task_definition_arn #=> String
    #   resp.data.tasks[0].version #=> Integer
    #   resp.data.tasks[0].ephemeral_storage #=> Types::EphemeralStorage
    #   resp.data.failures #=> Array<Failure>
    #   resp.data.failures[0] #=> Types::Failure
    #   resp.data.failures[0].arn #=> String
    #   resp.data.failures[0].reason #=> String
    #   resp.data.failures[0].detail #=> String
    #
    def describe_tasks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTasksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTasksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTasks
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterNotFoundException, Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::DescribeTasks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTasks,
        stubs: @stubs,
        params_class: Params::DescribeTasksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_tasks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent.</p>
    #          </note>
    # 		       <p>Returns an endpoint for the Amazon ECS agent to poll for updates.</p>
    #
    # @param [Hash] params
    #   See {Types::DiscoverPollEndpointInput}.
    #
    # @option params [String] :container_instance
    #   <p>The container instance ID or full ARN of the container instance.
    #   			The ARN contains the <code>arn:aws:ecs</code> namespace, followed by the Region of the container instance, the Amazon Web Services account ID of the container instance owner, the <code>container-instance</code> namespace, and then the container instance ID. For example, <code>arn:aws:ecs:region:aws_account_id:container-instance/container_instance_ID</code>.</p>
    #
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that the container instance belongs
    #   			to.</p>
    #
    # @return [Types::DiscoverPollEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.discover_poll_endpoint(
    #     container_instance: 'containerInstance',
    #     cluster: 'cluster'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DiscoverPollEndpointOutput
    #   resp.data.endpoint #=> String
    #   resp.data.telemetry_endpoint #=> String
    #
    def discover_poll_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DiscoverPollEndpointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DiscoverPollEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DiscoverPollEndpoint
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServerException, Errors::ClientException]),
        data_parser: Parsers::DiscoverPollEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DiscoverPollEndpoint,
        stubs: @stubs,
        params_class: Params::DiscoverPollEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :discover_poll_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Runs a command remotely on a container within a task.</p>
    #
    # @param [Hash] params
    #   See {Types::ExecuteCommandInput}.
    #
    # @option params [String] :cluster
    #   <p>The Amazon Resource Name (ARN) or short name of the cluster the task is running in.
    #   			If you do not specify a cluster, the default cluster is assumed.</p>
    #
    # @option params [String] :container
    #   <p>The name of the container to execute the command on. A container name only needs to be
    #   			specified for tasks containing multiple containers.</p>
    #
    # @option params [String] :command
    #   <p>The command to run on the container.</p>
    #
    # @option params [Boolean] :interactive
    #   <p>Use this flag to run your command in interactive mode.</p>
    #
    # @option params [String] :task
    #   <p>The Amazon Resource Name (ARN) or ID of the task the container is part of.</p>
    #
    # @return [Types::ExecuteCommandOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_command(
    #     cluster: 'cluster',
    #     container: 'container',
    #     command: 'command', # required
    #     interactive: false, # required
    #     task: 'task' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExecuteCommandOutput
    #   resp.data.cluster_arn #=> String
    #   resp.data.container_arn #=> String
    #   resp.data.container_name #=> String
    #   resp.data.interactive #=> Boolean
    #   resp.data.session #=> Types::Session
    #   resp.data.session.session_id #=> String
    #   resp.data.session.stream_url #=> String
    #   resp.data.session.token_value #=> String
    #   resp.data.task_arn #=> String
    #
    def execute_command(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExecuteCommandInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExecuteCommandInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExecuteCommand
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ClusterNotFoundException, Errors::TargetNotConnectedException, Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::ExecuteCommand
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ExecuteCommand,
        stubs: @stubs,
        params_class: Params::ExecuteCommandOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :execute_command
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the account settings for a specified principal.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAccountSettingsInput}.
    #
    # @option params [String] :name
    #   <p>The name of the account setting you want to list the settings for.</p>
    #
    # @option params [String] :value
    #   <p>The value of the account settings to filter results with. You must also specify an
    #   			account setting name to use this parameter.</p>
    #
    # @option params [String] :principal_arn
    #   <p>The ARN of the principal, which can be an IAM user, IAM role, or the root user. If
    #   			this field is omitted, the account settings are listed only for the authenticated
    #   			user.</p>
    #   		       <note>
    #   			         <p>Federated users assume the account setting of the root user and can't have
    #   				explicit account settings set for them.</p>
    #   		       </note>
    #
    # @option params [Boolean] :effective_settings
    #   <p>Determines whether to return the effective settings. If <code>true</code>, the account
    #   			settings for the root user or the default setting for the <code>principalArn</code> are
    #   			returned. If <code>false</code>, the account settings for the <code>principalArn</code>
    #   			are returned if they're set. Otherwise, no account settings are returned.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a <code>ListAccountSettings</code>
    #   			request indicating that more results are available to fulfill the request and further
    #   			calls will be needed. If <code>maxResults</code> was provided, it's possible the number
    #   			of results to be fewer than <code>maxResults</code>.</p>
    #   		       <note>
    #               <p>This token should be treated as an opaque identifier that is only used to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #           </note>
    #
    # @option params [Integer] :max_results
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
    # @return [Types::ListAccountSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_account_settings(
    #     name: 'serviceLongArnFormat', # accepts ["serviceLongArnFormat", "taskLongArnFormat", "containerInstanceLongArnFormat", "awsvpcTrunking", "containerInsights"]
    #     value: 'value',
    #     principal_arn: 'principalArn',
    #     effective_settings: false,
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAccountSettingsOutput
    #   resp.data.settings #=> Array<Setting>
    #   resp.data.settings[0] #=> Types::Setting
    #   resp.data.settings[0].name #=> String, one of ["serviceLongArnFormat", "taskLongArnFormat", "containerInstanceLongArnFormat", "awsvpcTrunking", "containerInsights"]
    #   resp.data.settings[0].value #=> String
    #   resp.data.settings[0].principal_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_account_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAccountSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAccountSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAccountSettings
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::ListAccountSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAccountSettings,
        stubs: @stubs,
        params_class: Params::ListAccountSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_account_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the attributes for Amazon ECS resources within a specified target type and cluster.
    # 			When you specify a target type and cluster, <code>ListAttributes</code> returns a list
    # 			of attribute objects, one for each attribute on each resource. You can filter the list
    # 			of results to a single attribute name to only return results that have that name. You
    # 			can also filter the results by attribute name and value. You can do this, for example,
    # 			to see which container instances in a cluster are running a Linux AMI
    # 				(<code>ecs.os-type=linux</code>). </p>
    #
    # @param [Hash] params
    #   See {Types::ListAttributesInput}.
    #
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster to list attributes.
    #   			If you do not specify a cluster, the default cluster is assumed.</p>
    #
    # @option params [String] :target_type
    #   <p>The type of the target to list attributes with.</p>
    #
    # @option params [String] :attribute_name
    #   <p>The name of the attribute to filter the results with. </p>
    #
    # @option params [String] :attribute_value
    #   <p>The value of the attribute to filter results with. You must also specify an attribute
    #   			name to use this parameter.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a <code>ListAttributes</code> request
    #   			indicating that more results are available to fulfill the request and further calls are
    #   			needed. If <code>maxResults</code> was provided, it's possible the number of results to
    #   			be fewer than <code>maxResults</code>.</p>
    #   		       <note>
    #               <p>This token should be treated as an opaque identifier that is only used to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #           </note>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of cluster results that <code>ListAttributes</code> returned in
    #   			paginated output. When this parameter is used, <code>ListAttributes</code> only returns
    #   				<code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #   			response element. The remaining results of the initial request can be seen by sending
    #   			another <code>ListAttributes</code> request with the returned <code>nextToken</code>
    #   			value. This value can be between 1 and 100. If this
    #   			parameter isn't used, then <code>ListAttributes</code> returns up to
    #   			100 results and a <code>nextToken</code> value if applicable.</p>
    #
    # @return [Types::ListAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_attributes(
    #     cluster: 'cluster',
    #     target_type: 'container-instance', # required - accepts ["container-instance"]
    #     attribute_name: 'attributeName',
    #     attribute_value: 'attributeValue',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAttributesOutput
    #   resp.data.attributes #=> Array<Attribute>
    #   resp.data.attributes[0] #=> Types::Attribute
    #   resp.data.attributes[0].name #=> String
    #   resp.data.attributes[0].value #=> String
    #   resp.data.attributes[0].target_type #=> String, one of ["container-instance"]
    #   resp.data.attributes[0].target_id #=> String
    #   resp.data.next_token #=> String
    #
    def list_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAttributesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAttributes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterNotFoundException, Errors::InvalidParameterException]),
        data_parser: Parsers::ListAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAttributes,
        stubs: @stubs,
        params_class: Params::ListAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of existing clusters.</p>
    #
    # @param [Hash] params
    #   See {Types::ListClustersInput}.
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a <code>ListClusters</code> request
    #   			indicating that more results are available to fulfill the request and further calls are
    #   			needed. If <code>maxResults</code> was provided, it's possible the number of results to
    #   			be fewer than <code>maxResults</code>.</p>
    #   		       <note>
    #               <p>This token should be treated as an opaque identifier that is only used to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #           </note>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of cluster results that <code>ListClusters</code> returned in
    #   			paginated output. When this parameter is used, <code>ListClusters</code> only returns
    #   				<code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #   			response element. The remaining results of the initial request can be seen by sending
    #   			another <code>ListClusters</code> request with the returned <code>nextToken</code>
    #   			value. This value can be between 1 and 100. If this
    #   			parameter isn't used, then <code>ListClusters</code> returns up to 100
    #   			results and a <code>nextToken</code> value if applicable.</p>
    #
    # @return [Types::ListClustersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_clusters(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListClustersOutput
    #   resp.data.cluster_arns #=> Array<String>
    #   resp.data.cluster_arns[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_clusters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListClustersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListClustersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListClusters
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::ListClusters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListClusters,
        stubs: @stubs,
        params_class: Params::ListClustersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_clusters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of container instances in a specified cluster. You can filter the
    # 			results of a <code>ListContainerInstances</code> operation with cluster query language
    # 			statements inside the <code>filter</code> parameter. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html">Cluster Query Language</a> in the
    # 				<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListContainerInstancesInput}.
    #
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instances to
    #   			list. If you do not specify a cluster, the default cluster is assumed.</p>
    #
    # @option params [String] :filter
    #   <p>You can filter the results of a <code>ListContainerInstances</code> operation with
    #   			cluster query language statements. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html">Cluster Query Language</a> in the
    #   				<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a <code>ListContainerInstances</code>
    #   			request indicating that more results are available to fulfill the request and further
    #   			calls are needed. If <code>maxResults</code> was provided, it's possible the number of
    #   			results to be fewer than <code>maxResults</code>.</p>
    #   		       <note>
    #               <p>This token should be treated as an opaque identifier that is only used to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #           </note>
    #
    # @option params [Integer] :max_results
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
    # @option params [String] :status
    #   <p>Filters the container instances by status. For example, if you specify the
    #   				<code>DRAINING</code> status, the results include only container instances that have
    #   			been set to <code>DRAINING</code> using <a>UpdateContainerInstancesState</a>.
    #   			If you don't specify this parameter, the default is to include container instances set
    #   			to all states other than <code>INACTIVE</code>.</p>
    #
    # @return [Types::ListContainerInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_container_instances(
    #     cluster: 'cluster',
    #     filter: 'filter',
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     status: 'ACTIVE' # accepts ["ACTIVE", "DRAINING", "REGISTERING", "DEREGISTERING", "REGISTRATION_FAILED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListContainerInstancesOutput
    #   resp.data.container_instance_arns #=> Array<String>
    #   resp.data.container_instance_arns[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_container_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListContainerInstancesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListContainerInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListContainerInstances
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterNotFoundException, Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::ListContainerInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListContainerInstances,
        stubs: @stubs,
        params_class: Params::ListContainerInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_container_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of services. You can filter the results by cluster, launch type, and
    # 			scheduling strategy.</p>
    #
    # @param [Hash] params
    #   See {Types::ListServicesInput}.
    #
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster to use when filtering the
    #   				<code>ListServices</code> results. If you do not specify a cluster, the default cluster is assumed.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a <code>ListServices</code> request
    #   			indicating that more results are available to fulfill the request and further calls will
    #   			be needed. If <code>maxResults</code> was provided, it is possible the number of results
    #   			to be fewer than <code>maxResults</code>.</p>
    #   		       <note>
    #               <p>This token should be treated as an opaque identifier that is only used to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #           </note>
    #
    # @option params [Integer] :max_results
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
    # @option params [String] :launch_type
    #   <p>The launch type to use when filtering the <code>ListServices</code> results.</p>
    #
    # @option params [String] :scheduling_strategy
    #   <p>The scheduling strategy to use when filtering the <code>ListServices</code>
    #   			results.</p>
    #
    # @return [Types::ListServicesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_services(
    #     cluster: 'cluster',
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     launch_type: 'EC2', # accepts ["EC2", "FARGATE", "EXTERNAL"]
    #     scheduling_strategy: 'REPLICA' # accepts ["REPLICA", "DAEMON"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListServicesOutput
    #   resp.data.service_arns #=> Array<String>
    #   resp.data.service_arns[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_services(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListServicesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListServicesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListServices
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterNotFoundException, Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::ListServices
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListServices,
        stubs: @stubs,
        params_class: Params::ListServicesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_services
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List the tags for an Amazon ECS resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource to list the tags for. Currently, the
    #   			supported resources are Amazon ECS tasks, services, task definitions, clusters, and container
    #   			instances.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'resourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def list_tags_for_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsForResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsForResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTagsForResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterNotFoundException, Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::ListTagsForResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTagsForResource,
        stubs: @stubs,
        params_class: Params::ListTagsForResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tags_for_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of task definition families that are registered to your account. This
    # 			list includes task definition families that no longer have any <code>ACTIVE</code> task
    # 			definition revisions.</p>
    # 		       <p>You can filter out task definition families that don't contain any <code>ACTIVE</code>
    # 			task definition revisions by setting the <code>status</code> parameter to
    # 				<code>ACTIVE</code>. You can also filter the results with the
    # 				<code>familyPrefix</code> parameter.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTaskDefinitionFamiliesInput}.
    #
    # @option params [String] :family_prefix
    #   <p>The <code>familyPrefix</code> is a string that's used to filter the results of
    #   				<code>ListTaskDefinitionFamilies</code>. If you specify a <code>familyPrefix</code>,
    #   			only task definition family names that begin with the <code>familyPrefix</code> string
    #   			are returned.</p>
    #
    # @option params [String] :status
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
    # @option params [String] :next_token
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
    # @option params [Integer] :max_results
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
    # @return [Types::ListTaskDefinitionFamiliesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_task_definition_families(
    #     family_prefix: 'familyPrefix',
    #     status: 'ACTIVE', # accepts ["ACTIVE", "INACTIVE", "ALL"]
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTaskDefinitionFamiliesOutput
    #   resp.data.families #=> Array<String>
    #   resp.data.families[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_task_definition_families(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTaskDefinitionFamiliesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTaskDefinitionFamiliesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTaskDefinitionFamilies
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::ListTaskDefinitionFamilies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTaskDefinitionFamilies,
        stubs: @stubs,
        params_class: Params::ListTaskDefinitionFamiliesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_task_definition_families
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of task definitions that are registered to your account. You can filter
    # 			the results by family name with the <code>familyPrefix</code> parameter or by status
    # 			with the <code>status</code> parameter.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTaskDefinitionsInput}.
    #
    # @option params [String] :family_prefix
    #   <p>The full family name to filter the <code>ListTaskDefinitions</code> results with.
    #   			Specifying a <code>familyPrefix</code> limits the listed task definitions to task
    #   			definition revisions that belong to that family.</p>
    #
    # @option params [String] :status
    #   <p>The task definition status to filter the <code>ListTaskDefinitions</code> results
    #   			with. By default, only <code>ACTIVE</code> task definitions are listed. By setting this
    #   			parameter to <code>INACTIVE</code>, you can view task definitions that are
    #   				<code>INACTIVE</code> as long as an active task or service still references them. If
    #   			you paginate the resulting output, be sure to keep the <code>status</code> value
    #   			constant in each subsequent request.</p>
    #
    # @option params [String] :sort
    #   <p>The order to sort the results in. Valid values are <code>ASC</code> and
    #   				<code>DESC</code>. By default, (<code>ASC</code>) task definitions are listed
    #   			lexicographically by family name and in ascending numerical order by revision so that
    #   			the newest task definitions in a family are listed last. Setting this parameter to
    #   				<code>DESC</code> reverses the sort order on family name and revision. This is so
    #   			that the newest task definitions in a family are listed first.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a <code>ListTaskDefinitions</code>
    #   			request indicating that more results are available to fulfill the request and further
    #   			calls will be needed. If <code>maxResults</code> was provided, it is possible the number
    #   			of results to be fewer than <code>maxResults</code>.</p>
    #   		       <note>
    #               <p>This token should be treated as an opaque identifier that is only used to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #           </note>
    #
    # @option params [Integer] :max_results
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
    # @return [Types::ListTaskDefinitionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_task_definitions(
    #     family_prefix: 'familyPrefix',
    #     status: 'ACTIVE', # accepts ["ACTIVE", "INACTIVE"]
    #     sort: 'ASC', # accepts ["ASC", "DESC"]
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTaskDefinitionsOutput
    #   resp.data.task_definition_arns #=> Array<String>
    #   resp.data.task_definition_arns[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_task_definitions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTaskDefinitionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTaskDefinitionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTaskDefinitions
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::ListTaskDefinitions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTaskDefinitions,
        stubs: @stubs,
        params_class: Params::ListTaskDefinitionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_task_definitions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of tasks. You can filter the results by cluster, task definition
    # 			family, container instance, launch type, what IAM principal started the task, or by the
    # 			desired status of the task.</p>
    # 		       <p>Recently stopped tasks might appear in the returned results. Currently, stopped tasks
    # 			appear in the returned results for at least one hour.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTasksInput}.
    #
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster to use when filtering the
    #   				<code>ListTasks</code> results. If you do not specify a cluster, the default cluster is assumed.</p>
    #
    # @option params [String] :container_instance
    #   <p>The container instance ID or full ARN of the container instance to use when
    #   			filtering the <code>ListTasks</code> results. Specifying a
    #   				<code>containerInstance</code> limits the results to tasks that belong to that
    #   			container instance.</p>
    #
    # @option params [String] :family
    #   <p>The name of the task definition family to use when filtering the
    #   				<code>ListTasks</code> results. Specifying a <code>family</code> limits the results
    #   			to tasks that belong to that family.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a <code>ListTasks</code> request
    #   			indicating that more results are available to fulfill the request and further calls will
    #   			be needed. If <code>maxResults</code> was provided, it's possible the number of results
    #   			to be fewer than <code>maxResults</code>.</p>
    #   		       <note>
    #               <p>This token should be treated as an opaque identifier that is only used to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #           </note>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of task results that <code>ListTasks</code> returned in paginated
    #   			output. When this parameter is used, <code>ListTasks</code> only returns
    #   				<code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #   			response element. The remaining results of the initial request can be seen by sending
    #   			another <code>ListTasks</code> request with the returned <code>nextToken</code> value.
    #   			This value can be between 1 and 100. If this parameter
    #   			isn't used, then <code>ListTasks</code> returns up to 100 results and
    #   			a <code>nextToken</code> value if applicable.</p>
    #
    # @option params [String] :started_by
    #   <p>The <code>startedBy</code> value to filter the task results with. Specifying a
    #   				<code>startedBy</code> value limits the results to tasks that were started with that
    #   			value.</p>
    #
    # @option params [String] :service_name
    #   <p>The name of the service to use when filtering the <code>ListTasks</code> results.
    #   			Specifying a <code>serviceName</code> limits the results to tasks that belong to that
    #   			service.</p>
    #
    # @option params [String] :desired_status
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
    # @option params [String] :launch_type
    #   <p>The launch type to use when filtering the <code>ListTasks</code> results.</p>
    #
    # @return [Types::ListTasksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tasks(
    #     cluster: 'cluster',
    #     container_instance: 'containerInstance',
    #     family: 'family',
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     started_by: 'startedBy',
    #     service_name: 'serviceName',
    #     desired_status: 'RUNNING', # accepts ["RUNNING", "PENDING", "STOPPED"]
    #     launch_type: 'EC2' # accepts ["EC2", "FARGATE", "EXTERNAL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTasksOutput
    #   resp.data.task_arns #=> Array<String>
    #   resp.data.task_arns[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_tasks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTasksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTasksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTasks
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceNotFoundException, Errors::ClusterNotFoundException, Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::ListTasks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTasks,
        stubs: @stubs,
        params_class: Params::ListTasksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tasks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies an account setting. Account settings are set on a per-Region basis.</p>
    # 		       <p>If you change the account setting for the root user, the default settings for all of
    # 			the IAM users and roles that no individual account setting was specified are reset for.
    # 			For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-account-settings.html">Account
    # 				Settings</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # 		       <p>When <code>serviceLongArnFormat</code>, <code>taskLongArnFormat</code>, or
    # 				<code>containerInstanceLongArnFormat</code> are specified, the Amazon Resource Name
    # 			(ARN) and resource ID format of the resource type for a specified IAM user, IAM role, or
    # 			the root user for an account is affected. The opt-in and opt-out account setting must be
    # 			set for each Amazon ECS resource separately. The ARN and resource ID format of a resource is
    # 			defined by the opt-in status of the IAM user or role that created the resource. You must
    # 			turn on this setting to use Amazon ECS features such as resource tagging.</p>
    # 		       <p>When <code>awsvpcTrunking</code> is specified, the elastic network interface (ENI)
    # 			limit for any new container instances that support the feature is changed. If
    # 				<code>awsvpcTrunking</code> is enabled, any new container instances that support the
    # 			feature are launched have the increased ENI limits available to them. For more
    # 			information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/container-instance-eni.html">Elastic Network
    # 				Interface Trunking</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # 		       <p>When <code>containerInsights</code> is specified, the default setting indicating
    # 			whether CloudWatch Container Insights is enabled for your clusters is changed. If
    # 				<code>containerInsights</code> is enabled, any new clusters that are created will
    # 			have Container Insights enabled unless you disable it during cluster creation. For more
    # 			information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cloudwatch-container-insights.html">CloudWatch
    # 				Container Insights</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutAccountSettingInput}.
    #
    # @option params [String] :name
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
    # @option params [String] :value
    #   <p>The account setting value for the specified principal ARN. Accepted values are
    #   				<code>enabled</code> and <code>disabled</code>.</p>
    #
    # @option params [String] :principal_arn
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
    # @return [Types::PutAccountSettingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_account_setting(
    #     name: 'serviceLongArnFormat', # required - accepts ["serviceLongArnFormat", "taskLongArnFormat", "containerInstanceLongArnFormat", "awsvpcTrunking", "containerInsights"]
    #     value: 'value', # required
    #     principal_arn: 'principalArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutAccountSettingOutput
    #   resp.data.setting #=> Types::Setting
    #   resp.data.setting.name #=> String, one of ["serviceLongArnFormat", "taskLongArnFormat", "containerInstanceLongArnFormat", "awsvpcTrunking", "containerInsights"]
    #   resp.data.setting.value #=> String
    #   resp.data.setting.principal_arn #=> String
    #
    def put_account_setting(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutAccountSettingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutAccountSettingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutAccountSetting
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::PutAccountSetting
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutAccountSetting,
        stubs: @stubs,
        params_class: Params::PutAccountSettingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_account_setting
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies an account setting for all IAM users on an account for whom no individual
    # 			account setting has been specified. Account settings are set on a per-Region
    # 			basis.</p>
    #
    # @param [Hash] params
    #   See {Types::PutAccountSettingDefaultInput}.
    #
    # @option params [String] :name
    #   <p>The resource name for which to modify the account setting. If
    #   				<code>serviceLongArnFormat</code> is specified, the ARN for your Amazon ECS services is
    #   			affected. If <code>taskLongArnFormat</code> is specified, the ARN and resource ID for
    #   			your Amazon ECS tasks is affected. If <code>containerInstanceLongArnFormat</code> is
    #   			specified, the ARN and resource ID for your Amazon ECS container instances is affected. If
    #   				<code>awsvpcTrunking</code> is specified, the ENI limit for your Amazon ECS container
    #   			instances is affected. If <code>containerInsights</code> is specified, the default
    #   			setting for CloudWatch Container Insights for your clusters is affected.</p>
    #
    # @option params [String] :value
    #   <p>The account setting value for the specified principal ARN. Accepted values are
    #   				<code>enabled</code> and <code>disabled</code>.</p>
    #
    # @return [Types::PutAccountSettingDefaultOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_account_setting_default(
    #     name: 'serviceLongArnFormat', # required - accepts ["serviceLongArnFormat", "taskLongArnFormat", "containerInstanceLongArnFormat", "awsvpcTrunking", "containerInsights"]
    #     value: 'value' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutAccountSettingDefaultOutput
    #   resp.data.setting #=> Types::Setting
    #   resp.data.setting.name #=> String, one of ["serviceLongArnFormat", "taskLongArnFormat", "containerInstanceLongArnFormat", "awsvpcTrunking", "containerInsights"]
    #   resp.data.setting.value #=> String
    #   resp.data.setting.principal_arn #=> String
    #
    def put_account_setting_default(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutAccountSettingDefaultInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutAccountSettingDefaultInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutAccountSettingDefault
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::PutAccountSettingDefault
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutAccountSettingDefault,
        stubs: @stubs,
        params_class: Params::PutAccountSettingDefaultOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_account_setting_default
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create or update an attribute on an Amazon ECS resource. If the attribute doesn't exist,
    # 			it's created. If the attribute exists, its value is replaced with the specified value.
    # 			To delete an attribute, use <a>DeleteAttributes</a>. For more information,
    # 			see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html#attributes">Attributes</a> in the
    # 			<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutAttributesInput}.
    #
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that contains the resource to apply
    #   			attributes. If you do not specify a cluster, the default cluster is assumed.</p>
    #
    # @option params [Array<Attribute>] :attributes
    #   <p>The attributes to apply to your resource. You can specify up to 10 custom attributes
    #   			for each resource. You can specify up to 10 attributes in a single call.</p>
    #
    # @return [Types::PutAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_attributes(
    #     cluster: 'cluster',
    #     attributes: [
    #       {
    #         name: 'name', # required
    #         value: 'value',
    #         target_type: 'container-instance', # accepts ["container-instance"]
    #         target_id: 'targetId'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutAttributesOutput
    #   resp.data.attributes #=> Array<Attribute>
    #   resp.data.attributes[0] #=> Types::Attribute
    #   resp.data.attributes[0].name #=> String
    #   resp.data.attributes[0].value #=> String
    #   resp.data.attributes[0].target_type #=> String, one of ["container-instance"]
    #   resp.data.attributes[0].target_id #=> String
    #
    def put_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutAttributesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutAttributes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterNotFoundException, Errors::TargetNotFoundException, Errors::AttributeLimitExceededException, Errors::InvalidParameterException]),
        data_parser: Parsers::PutAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutAttributes,
        stubs: @stubs,
        params_class: Params::PutAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the available capacity providers and the default capacity provider strategy
    # 			for a cluster.</p>
    # 		       <p>You must specify both the available capacity providers and a default capacity provider
    # 			strategy for the cluster. If the specified cluster has existing capacity providers
    # 			associated with it, you must specify all existing capacity providers in addition to any
    # 			new ones you want to add. Any existing capacity providers that are associated with a
    # 			cluster that are omitted from a <a>PutClusterCapacityProviders</a> API call
    # 			will be disassociated with the cluster. You can only disassociate an existing capacity
    # 			provider from a cluster if it's not being used by any existing tasks.</p>
    # 		       <p>When creating a service or running a task on a cluster, if no capacity provider or
    # 			launch type is specified, then the cluster's default capacity provider strategy is used.
    # 			We recommend that you define a default capacity provider strategy for your cluster.
    # 			However, you must specify an empty array (<code>[]</code>) to bypass defining a default
    # 			strategy.</p>
    #
    # @param [Hash] params
    #   See {Types::PutClusterCapacityProvidersInput}.
    #
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster to modify the capacity provider
    #   			settings for. If you don't specify a cluster, the default cluster is assumed.</p>
    #
    # @option params [Array<String>] :capacity_providers
    #   <p>The name of one or more capacity providers to associate with the cluster.</p>
    #   		       <p>If specifying a capacity provider that uses an Auto Scaling group, the capacity
    #   			provider must already be created. New capacity providers can be created with the <a>CreateCapacityProvider</a> API operation.</p>
    #   		       <p>To use a Fargate capacity provider, specify either the <code>FARGATE</code> or
    #   				<code>FARGATE_SPOT</code> capacity providers. The Fargate capacity providers are
    #   			available to all accounts and only need to be associated with a cluster to be
    #   			used.</p>
    #
    # @option params [Array<CapacityProviderStrategyItem>] :default_capacity_provider_strategy
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
    # @return [Types::PutClusterCapacityProvidersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_cluster_capacity_providers(
    #     cluster: 'cluster', # required
    #     capacity_providers: [
    #       'member'
    #     ], # required
    #     default_capacity_provider_strategy: [
    #       {
    #         capacity_provider: 'capacityProvider', # required
    #         weight: 1,
    #         base: 1
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutClusterCapacityProvidersOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.cluster_arn #=> String
    #   resp.data.cluster.cluster_name #=> String
    #   resp.data.cluster.configuration #=> Types::ClusterConfiguration
    #   resp.data.cluster.configuration.execute_command_configuration #=> Types::ExecuteCommandConfiguration
    #   resp.data.cluster.configuration.execute_command_configuration.kms_key_id #=> String
    #   resp.data.cluster.configuration.execute_command_configuration.logging #=> String, one of ["NONE", "DEFAULT", "OVERRIDE"]
    #   resp.data.cluster.configuration.execute_command_configuration.log_configuration #=> Types::ExecuteCommandLogConfiguration
    #   resp.data.cluster.configuration.execute_command_configuration.log_configuration.cloud_watch_log_group_name #=> String
    #   resp.data.cluster.configuration.execute_command_configuration.log_configuration.cloud_watch_encryption_enabled #=> Boolean
    #   resp.data.cluster.configuration.execute_command_configuration.log_configuration.s3_bucket_name #=> String
    #   resp.data.cluster.configuration.execute_command_configuration.log_configuration.s3_encryption_enabled #=> Boolean
    #   resp.data.cluster.configuration.execute_command_configuration.log_configuration.s3_key_prefix #=> String
    #   resp.data.cluster.status #=> String
    #   resp.data.cluster.registered_container_instances_count #=> Integer
    #   resp.data.cluster.running_tasks_count #=> Integer
    #   resp.data.cluster.pending_tasks_count #=> Integer
    #   resp.data.cluster.active_services_count #=> Integer
    #   resp.data.cluster.statistics #=> Array<KeyValuePair>
    #   resp.data.cluster.statistics[0] #=> Types::KeyValuePair
    #   resp.data.cluster.statistics[0].name #=> String
    #   resp.data.cluster.statistics[0].value #=> String
    #   resp.data.cluster.tags #=> Array<Tag>
    #   resp.data.cluster.tags[0] #=> Types::Tag
    #   resp.data.cluster.tags[0].key #=> String
    #   resp.data.cluster.tags[0].value #=> String
    #   resp.data.cluster.settings #=> Array<ClusterSetting>
    #   resp.data.cluster.settings[0] #=> Types::ClusterSetting
    #   resp.data.cluster.settings[0].name #=> String, one of ["containerInsights"]
    #   resp.data.cluster.settings[0].value #=> String
    #   resp.data.cluster.capacity_providers #=> Array<String>
    #   resp.data.cluster.capacity_providers[0] #=> String
    #   resp.data.cluster.default_capacity_provider_strategy #=> Array<CapacityProviderStrategyItem>
    #   resp.data.cluster.default_capacity_provider_strategy[0] #=> Types::CapacityProviderStrategyItem
    #   resp.data.cluster.default_capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.data.cluster.default_capacity_provider_strategy[0].weight #=> Integer
    #   resp.data.cluster.default_capacity_provider_strategy[0].base #=> Integer
    #   resp.data.cluster.attachments #=> Array<Attachment>
    #   resp.data.cluster.attachments[0] #=> Types::Attachment
    #   resp.data.cluster.attachments[0].id #=> String
    #   resp.data.cluster.attachments[0].type #=> String
    #   resp.data.cluster.attachments[0].status #=> String
    #   resp.data.cluster.attachments[0].details #=> Array<KeyValuePair>
    #   resp.data.cluster.attachments_status #=> String
    #
    def put_cluster_capacity_providers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutClusterCapacityProvidersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutClusterCapacityProvidersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutClusterCapacityProviders
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterNotFoundException, Errors::ResourceInUseException, Errors::ServerException, Errors::UpdateInProgressException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::PutClusterCapacityProviders
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutClusterCapacityProviders,
        stubs: @stubs,
        params_class: Params::PutClusterCapacityProvidersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_cluster_capacity_providers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent.</p>
    #          </note>
    # 		       <p>Registers an EC2 instance into the specified cluster. This instance becomes available
    # 			to place containers on.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterContainerInstanceInput}.
    #
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster to register your container instance
    #   			with. If you do not specify a cluster, the default cluster is assumed.</p>
    #
    # @option params [String] :instance_identity_document
    #   <p>The instance identity document for the EC2 instance to register. This document can be
    #   			found by running the following command from the instance: <code>curl
    #   				http://169.254.169.254/latest/dynamic/instance-identity/document/</code>
    #   		       </p>
    #
    # @option params [String] :instance_identity_document_signature
    #   <p>The instance identity document signature for the EC2 instance to register. This
    #   			signature can be found by running the following command from the instance: <code>curl
    #   				http://169.254.169.254/latest/dynamic/instance-identity/signature/</code>
    #   		       </p>
    #
    # @option params [Array<Resource>] :total_resources
    #   <p>The resources available on the instance.</p>
    #
    # @option params [VersionInfo] :version_info
    #   <p>The version information for the Amazon ECS container agent and Docker daemon that runs on
    #   			the container instance.</p>
    #
    # @option params [String] :container_instance_arn
    #   <p>The ARN of the container instance (if it was previously registered).</p>
    #
    # @option params [Array<Attribute>] :attributes
    #   <p>The container instance attributes that this container instance supports.</p>
    #
    # @option params [Array<PlatformDevice>] :platform_devices
    #   <p>The devices that are available on the container instance. The only supported device
    #   			type is a GPU.</p>
    #
    # @option params [Array<Tag>] :tags
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
    # @return [Types::RegisterContainerInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_container_instance(
    #     cluster: 'cluster',
    #     instance_identity_document: 'instanceIdentityDocument',
    #     instance_identity_document_signature: 'instanceIdentityDocumentSignature',
    #     total_resources: [
    #       {
    #         name: 'name',
    #         type: 'type',
    #         double_value: 1.0,
    #         long_value: 1,
    #         integer_value: 1,
    #         string_set_value: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     version_info: {
    #       agent_version: 'agentVersion',
    #       agent_hash: 'agentHash',
    #       docker_version: 'dockerVersion'
    #     },
    #     container_instance_arn: 'containerInstanceArn',
    #     attributes: [
    #       {
    #         name: 'name', # required
    #         value: 'value',
    #         target_type: 'container-instance', # accepts ["container-instance"]
    #         target_id: 'targetId'
    #       }
    #     ],
    #     platform_devices: [
    #       {
    #         id: 'id', # required
    #         type: 'GPU' # required - accepts ["GPU"]
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: 'key',
    #         value: 'value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterContainerInstanceOutput
    #   resp.data.container_instance #=> Types::ContainerInstance
    #   resp.data.container_instance.container_instance_arn #=> String
    #   resp.data.container_instance.ec2_instance_id #=> String
    #   resp.data.container_instance.capacity_provider_name #=> String
    #   resp.data.container_instance.version #=> Integer
    #   resp.data.container_instance.version_info #=> Types::VersionInfo
    #   resp.data.container_instance.version_info.agent_version #=> String
    #   resp.data.container_instance.version_info.agent_hash #=> String
    #   resp.data.container_instance.version_info.docker_version #=> String
    #   resp.data.container_instance.remaining_resources #=> Array<Resource>
    #   resp.data.container_instance.remaining_resources[0] #=> Types::Resource
    #   resp.data.container_instance.remaining_resources[0].name #=> String
    #   resp.data.container_instance.remaining_resources[0].type #=> String
    #   resp.data.container_instance.remaining_resources[0].double_value #=> Float
    #   resp.data.container_instance.remaining_resources[0].long_value #=> Integer
    #   resp.data.container_instance.remaining_resources[0].integer_value #=> Integer
    #   resp.data.container_instance.remaining_resources[0].string_set_value #=> Array<String>
    #   resp.data.container_instance.remaining_resources[0].string_set_value[0] #=> String
    #   resp.data.container_instance.registered_resources #=> Array<Resource>
    #   resp.data.container_instance.status #=> String
    #   resp.data.container_instance.status_reason #=> String
    #   resp.data.container_instance.agent_connected #=> Boolean
    #   resp.data.container_instance.running_tasks_count #=> Integer
    #   resp.data.container_instance.pending_tasks_count #=> Integer
    #   resp.data.container_instance.agent_update_status #=> String, one of ["PENDING", "STAGING", "STAGED", "UPDATING", "UPDATED", "FAILED"]
    #   resp.data.container_instance.attributes #=> Array<Attribute>
    #   resp.data.container_instance.attributes[0] #=> Types::Attribute
    #   resp.data.container_instance.attributes[0].name #=> String
    #   resp.data.container_instance.attributes[0].value #=> String
    #   resp.data.container_instance.attributes[0].target_type #=> String, one of ["container-instance"]
    #   resp.data.container_instance.attributes[0].target_id #=> String
    #   resp.data.container_instance.registered_at #=> Time
    #   resp.data.container_instance.attachments #=> Array<Attachment>
    #   resp.data.container_instance.attachments[0] #=> Types::Attachment
    #   resp.data.container_instance.attachments[0].id #=> String
    #   resp.data.container_instance.attachments[0].type #=> String
    #   resp.data.container_instance.attachments[0].status #=> String
    #   resp.data.container_instance.attachments[0].details #=> Array<KeyValuePair>
    #   resp.data.container_instance.attachments[0].details[0] #=> Types::KeyValuePair
    #   resp.data.container_instance.attachments[0].details[0].name #=> String
    #   resp.data.container_instance.attachments[0].details[0].value #=> String
    #   resp.data.container_instance.tags #=> Array<Tag>
    #   resp.data.container_instance.tags[0] #=> Types::Tag
    #   resp.data.container_instance.tags[0].key #=> String
    #   resp.data.container_instance.tags[0].value #=> String
    #   resp.data.container_instance.health_status #=> Types::ContainerInstanceHealthStatus
    #   resp.data.container_instance.health_status.overall_status #=> String, one of ["OK", "IMPAIRED", "INSUFFICIENT_DATA", "INITIALIZING"]
    #   resp.data.container_instance.health_status.details #=> Array<InstanceHealthCheckResult>
    #   resp.data.container_instance.health_status.details[0] #=> Types::InstanceHealthCheckResult
    #   resp.data.container_instance.health_status.details[0].type #=> String, one of ["CONTAINER_RUNTIME"]
    #   resp.data.container_instance.health_status.details[0].status #=> String, one of ["OK", "IMPAIRED", "INSUFFICIENT_DATA", "INITIALIZING"]
    #   resp.data.container_instance.health_status.details[0].last_updated #=> Time
    #   resp.data.container_instance.health_status.details[0].last_status_change #=> Time
    #
    def register_container_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterContainerInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterContainerInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterContainerInstance
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::RegisterContainerInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterContainerInstance,
        stubs: @stubs,
        params_class: Params::RegisterContainerInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_container_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers a new task definition from the supplied <code>family</code> and
    # 				<code>containerDefinitions</code>. Optionally, you can add data volumes to your
    # 			containers with the <code>volumes</code> parameter. For more information about task
    # 			definition parameters and defaults, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html">Amazon ECS Task
    # 				Definitions</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # 		       <p>You can specify an IAM role for your task with the <code>taskRoleArn</code> parameter.
    # 			When you specify an IAM role for a task, its containers can then use the latest versions
    # 			of the CLI or SDKs to make API requests to the Amazon Web Services services that are specified in
    # 			the IAM policy that's associated with the role. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html">IAM
    # 				Roles for Tasks</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # 		       <p>You can specify a Docker networking mode for the containers in your task definition
    # 			with the <code>networkMode</code> parameter. The available network modes correspond to
    # 			those described in <a href="https://docs.docker.com/engine/reference/run/#/network-settings">Network
    # 				settings</a> in the Docker run reference. If you specify the <code>awsvpc</code>
    # 			network mode, the task is allocated an elastic network interface, and you must specify a
    # 				<a>NetworkConfiguration</a> when you create a service or run a task with
    # 			the task definition. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html">Task Networking</a>
    # 			in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterTaskDefinitionInput}.
    #
    # @option params [String] :family
    #   <p>You must specify a <code>family</code> for a task definition. You can use it track
    #   			multiple versions of the same task definition. The <code>family</code> is used as a name
    #   			for your task definition. Up to 255 letters (uppercase and lowercase), numbers, underscores, and hyphens are allowed.</p>
    #
    # @option params [String] :task_role_arn
    #   <p>The short name or full Amazon Resource Name (ARN) of the IAM role that containers in this task can
    #   			assume. All containers in this task are granted the permissions that are specified in
    #   			this role. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html">IAM Roles for
    #   				Tasks</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @option params [String] :execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the task execution role that grants the Amazon ECS container agent
    #               permission to make Amazon Web Services API calls on your behalf. The task execution IAM role is required
    #               depending on the requirements of your task. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_execution_IAM_role.html">Amazon ECS task
    #                   execution IAM role</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @option params [String] :network_mode
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
    #           <p>For more information, see <a href="https://docs.docker.com/engine/reference/run/#network-settings">Network
    #                   settings</a> in the <i>Docker run reference</i>.</p>
    #
    # @option params [Array<ContainerDefinition>] :container_definitions
    #   <p>A list of container definitions in JSON format that describe the different containers
    #   			that make up your task.</p>
    #
    # @option params [Array<Volume>] :volumes
    #   <p>A list of volume definitions in JSON format that containers in your task might
    #   			use.</p>
    #
    # @option params [Array<TaskDefinitionPlacementConstraint>] :placement_constraints
    #   <p>An array of placement constraint objects to use for the task. You can specify a
    #   			maximum of 10 constraints for each task. This limit includes constraints in the task
    #   			definition and those specified at runtime.</p>
    #
    # @option params [Array<String>] :requires_compatibilities
    #   <p>The task launch type that Amazon ECS validates the task definition against. A client
    #   			exception is returned if the task definition doesn't validate against the
    #   			compatibilities specified. If no value is specified, the parameter is omitted from the
    #   			response.</p>
    #
    # @option params [String] :cpu
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
    # @option params [String] :memory
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
    # @option params [Array<Tag>] :tags
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
    # @option params [String] :pid_mode
    #   <p>The process namespace to use for the containers in the task. The valid
    #                               values are <code>host</code> or <code>task</code>. If <code>host</code>
    #                               is specified, then all containers within the tasks that specified the
    #                                   <code>host</code> PID mode on the same container instance share the
    #                               same process namespace with the host Amazon EC2 instance. If <code>task</code> is
    #                               specified, all containers within the specified task share the same
    #                               process namespace. If no value is specified, the default is a private
    #                               namespace. For more information, see <a href="https://docs.docker.com/engine/reference/run/#pid-settings---pid">PID settings</a> in the <i>Docker run
    #                                   reference</i>.</p>
    #                           <p>If the <code>host</code> PID mode is used, be aware that there is a
    #                               heightened risk of undesired process namespace expose. For more
    #                               information, see <a href="https://docs.docker.com/engine/security/security/">Docker
    #                                   security</a>.</p>
    #            <note>
    #                                   <p>This parameter is not supported for Windows containers or tasks run on Fargate.</p>
    #                                </note>
    #
    # @option params [String] :ipc_mode
    #   <p>The IPC resource namespace to use for the containers in the task. The valid values are
    #                   <code>host</code>, <code>task</code>, or <code>none</code>. If <code>host</code> is
    #               specified, then all containers within the tasks that specified the <code>host</code> IPC
    #               mode on the same container instance share the same IPC resources with the host Amazon EC2
    #               instance. If <code>task</code> is specified, all containers within the specified task
    #               share the same IPC resources. If <code>none</code> is specified, then IPC resources
    #               within the containers of a task are private and not shared with other containers in a
    #               task or on the container instance. If no value is specified, then the IPC resource
    #               namespace sharing depends on the Docker daemon setting on the container instance. For
    #               more information, see <a href="https://docs.docker.com/engine/reference/run/#ipc-settings---ipc">IPC
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
    # @option params [ProxyConfiguration] :proxy_configuration
    #   <p>The configuration details for the App Mesh proxy.</p>
    #   		       <p>For tasks hosted on Amazon EC2 instances, the container instances require at least version
    #   				<code>1.26.0</code> of the container agent and at least version
    #   				<code>1.26.0-1</code> of the <code>ecs-init</code> package to use a proxy
    #   			configuration. If your container instances are launched from the Amazon ECS-optimized
    #   			AMI version <code>20190301</code> or later, then they contain the required versions of
    #   			the container agent and <code>ecs-init</code>. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-ami-versions.html">Amazon ECS-optimized AMI versions</a> in the
    #   			<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @option params [Array<InferenceAccelerator>] :inference_accelerators
    #   <p>The Elastic Inference accelerators to use for the containers in the task.</p>
    #
    # @option params [EphemeralStorage] :ephemeral_storage
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
    # @option params [RuntimePlatform] :runtime_platform
    #   <p>The operating system that your tasks definitions run on. A platform family is
    #   			specified only for tasks using the Fargate launch type. </p>
    #   		       <p>When you specify a task definition in a service, this value must match the
    #   				<code>runtimePlatform</code> value of the service.</p>
    #
    # @return [Types::RegisterTaskDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_task_definition(
    #     family: 'family', # required
    #     task_role_arn: 'taskRoleArn',
    #     execution_role_arn: 'executionRoleArn',
    #     network_mode: 'bridge', # accepts ["bridge", "host", "awsvpc", "none"]
    #     container_definitions: [
    #       {
    #         name: 'name',
    #         image: 'image',
    #         repository_credentials: {
    #           credentials_parameter: 'credentialsParameter' # required
    #         },
    #         cpu: 1,
    #         memory: 1,
    #         memory_reservation: 1,
    #         links: [
    #           'member'
    #         ],
    #         port_mappings: [
    #           {
    #             container_port: 1,
    #             host_port: 1,
    #             protocol: 'tcp' # accepts ["tcp", "udp"]
    #           }
    #         ],
    #         essential: false,
    #         environment: [
    #           {
    #             name: 'name',
    #             value: 'value'
    #           }
    #         ],
    #         environment_files: [
    #           {
    #             value: 'value', # required
    #             type: 's3' # required - accepts ["s3"]
    #           }
    #         ],
    #         mount_points: [
    #           {
    #             source_volume: 'sourceVolume',
    #             container_path: 'containerPath',
    #             read_only: false
    #           }
    #         ],
    #         volumes_from: [
    #           {
    #             source_container: 'sourceContainer',
    #             read_only: false
    #           }
    #         ],
    #         linux_parameters: {
    #           capabilities: {
    #           },
    #           devices: [
    #             {
    #               host_path: 'hostPath', # required
    #               container_path: 'containerPath',
    #               permissions: [
    #                 'read' # accepts ["read", "write", "mknod"]
    #               ]
    #             }
    #           ],
    #           init_process_enabled: false,
    #           shared_memory_size: 1,
    #           tmpfs: [
    #             {
    #               container_path: 'containerPath', # required
    #               size: 1, # required
    #             }
    #           ],
    #           max_swap: 1,
    #           swappiness: 1
    #         },
    #         secrets: [
    #           {
    #             name: 'name', # required
    #             value_from: 'valueFrom' # required
    #           }
    #         ],
    #         depends_on: [
    #           {
    #             container_name: 'containerName', # required
    #             condition: 'START' # required - accepts ["START", "COMPLETE", "SUCCESS", "HEALTHY"]
    #           }
    #         ],
    #         start_timeout: 1,
    #         stop_timeout: 1,
    #         hostname: 'hostname',
    #         user: 'user',
    #         working_directory: 'workingDirectory',
    #         disable_networking: false,
    #         privileged: false,
    #         readonly_root_filesystem: false,
    #         extra_hosts: [
    #           {
    #             hostname: 'hostname', # required
    #             ip_address: 'ipAddress' # required
    #           }
    #         ],
    #         interactive: false,
    #         pseudo_terminal: false,
    #         docker_labels: {
    #           'key' => 'value'
    #         },
    #         ulimits: [
    #           {
    #             name: 'core', # required - accepts ["core", "cpu", "data", "fsize", "locks", "memlock", "msgqueue", "nice", "nofile", "nproc", "rss", "rtprio", "rttime", "sigpending", "stack"]
    #             soft_limit: 1, # required
    #             hard_limit: 1 # required
    #           }
    #         ],
    #         log_configuration: {
    #           log_driver: 'json-file', # required - accepts ["json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"]
    #           options: {
    #             'key' => 'value'
    #           },
    #         },
    #         health_check: {
    #           interval: 1,
    #           timeout: 1,
    #           retries: 1,
    #           start_period: 1
    #         },
    #         system_controls: [
    #           {
    #             namespace: 'namespace',
    #             value: 'value'
    #           }
    #         ],
    #         resource_requirements: [
    #           {
    #             value: 'value', # required
    #             type: 'GPU' # required - accepts ["GPU", "InferenceAccelerator"]
    #           }
    #         ],
    #         firelens_configuration: {
    #           type: 'fluentd', # required - accepts ["fluentd", "fluentbit"]
    #           options: {
    #             'key' => 'value'
    #           }
    #         }
    #       }
    #     ], # required
    #     volumes: [
    #       {
    #         name: 'name',
    #         host: {
    #           source_path: 'sourcePath'
    #         },
    #         docker_volume_configuration: {
    #           scope: 'task', # accepts ["task", "shared"]
    #           autoprovision: false,
    #           driver: 'driver',
    #           driver_opts: {
    #             'key' => 'value'
    #           },
    #         },
    #         efs_volume_configuration: {
    #           file_system_id: 'fileSystemId', # required
    #           root_directory: 'rootDirectory',
    #           transit_encryption: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #           transit_encryption_port: 1,
    #           authorization_config: {
    #             access_point_id: 'accessPointId',
    #             iam: 'ENABLED' # accepts ["ENABLED", "DISABLED"]
    #           }
    #         },
    #         fsx_windows_file_server_volume_configuration: {
    #           file_system_id: 'fileSystemId', # required
    #           root_directory: 'rootDirectory', # required
    #           authorization_config: {
    #             credentials_parameter: 'credentialsParameter', # required
    #             domain: 'domain' # required
    #           } # required
    #         }
    #       }
    #     ],
    #     placement_constraints: [
    #       {
    #         type: 'memberOf', # accepts ["memberOf"]
    #         expression: 'expression'
    #       }
    #     ],
    #     requires_compatibilities: [
    #       'EC2' # accepts ["EC2", "FARGATE", "EXTERNAL"]
    #     ],
    #     cpu: 'cpu',
    #     memory: 'memory',
    #     tags: [
    #       {
    #         key: 'key',
    #         value: 'value'
    #       }
    #     ],
    #     pid_mode: 'host', # accepts ["host", "task"]
    #     ipc_mode: 'host', # accepts ["host", "task", "none"]
    #     proxy_configuration: {
    #       type: 'APPMESH', # accepts ["APPMESH"]
    #       container_name: 'containerName', # required
    #     },
    #     inference_accelerators: [
    #       {
    #         device_name: 'deviceName', # required
    #         device_type: 'deviceType' # required
    #       }
    #     ],
    #     ephemeral_storage: {
    #       size_in_gi_b: 1 # required
    #     },
    #     runtime_platform: {
    #       cpu_architecture: 'X86_64', # accepts ["X86_64", "ARM64"]
    #       operating_system_family: 'WINDOWS_SERVER_2019_FULL' # accepts ["WINDOWS_SERVER_2019_FULL", "WINDOWS_SERVER_2019_CORE", "WINDOWS_SERVER_2016_FULL", "WINDOWS_SERVER_2004_CORE", "WINDOWS_SERVER_2022_CORE", "WINDOWS_SERVER_2022_FULL", "WINDOWS_SERVER_20H2_CORE", "LINUX"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterTaskDefinitionOutput
    #   resp.data.task_definition #=> Types::TaskDefinition
    #   resp.data.task_definition.task_definition_arn #=> String
    #   resp.data.task_definition.container_definitions #=> Array<ContainerDefinition>
    #   resp.data.task_definition.container_definitions[0] #=> Types::ContainerDefinition
    #   resp.data.task_definition.container_definitions[0].name #=> String
    #   resp.data.task_definition.container_definitions[0].image #=> String
    #   resp.data.task_definition.container_definitions[0].repository_credentials #=> Types::RepositoryCredentials
    #   resp.data.task_definition.container_definitions[0].repository_credentials.credentials_parameter #=> String
    #   resp.data.task_definition.container_definitions[0].cpu #=> Integer
    #   resp.data.task_definition.container_definitions[0].memory #=> Integer
    #   resp.data.task_definition.container_definitions[0].memory_reservation #=> Integer
    #   resp.data.task_definition.container_definitions[0].links #=> Array<String>
    #   resp.data.task_definition.container_definitions[0].links[0] #=> String
    #   resp.data.task_definition.container_definitions[0].port_mappings #=> Array<PortMapping>
    #   resp.data.task_definition.container_definitions[0].port_mappings[0] #=> Types::PortMapping
    #   resp.data.task_definition.container_definitions[0].port_mappings[0].container_port #=> Integer
    #   resp.data.task_definition.container_definitions[0].port_mappings[0].host_port #=> Integer
    #   resp.data.task_definition.container_definitions[0].port_mappings[0].protocol #=> String, one of ["tcp", "udp"]
    #   resp.data.task_definition.container_definitions[0].essential #=> Boolean
    #   resp.data.task_definition.container_definitions[0].entry_point #=> Array<String>
    #   resp.data.task_definition.container_definitions[0].command #=> Array<String>
    #   resp.data.task_definition.container_definitions[0].environment #=> Array<KeyValuePair>
    #   resp.data.task_definition.container_definitions[0].environment[0] #=> Types::KeyValuePair
    #   resp.data.task_definition.container_definitions[0].environment[0].name #=> String
    #   resp.data.task_definition.container_definitions[0].environment[0].value #=> String
    #   resp.data.task_definition.container_definitions[0].environment_files #=> Array<EnvironmentFile>
    #   resp.data.task_definition.container_definitions[0].environment_files[0] #=> Types::EnvironmentFile
    #   resp.data.task_definition.container_definitions[0].environment_files[0].value #=> String
    #   resp.data.task_definition.container_definitions[0].environment_files[0].type #=> String, one of ["s3"]
    #   resp.data.task_definition.container_definitions[0].mount_points #=> Array<MountPoint>
    #   resp.data.task_definition.container_definitions[0].mount_points[0] #=> Types::MountPoint
    #   resp.data.task_definition.container_definitions[0].mount_points[0].source_volume #=> String
    #   resp.data.task_definition.container_definitions[0].mount_points[0].container_path #=> String
    #   resp.data.task_definition.container_definitions[0].mount_points[0].read_only #=> Boolean
    #   resp.data.task_definition.container_definitions[0].volumes_from #=> Array<VolumeFrom>
    #   resp.data.task_definition.container_definitions[0].volumes_from[0] #=> Types::VolumeFrom
    #   resp.data.task_definition.container_definitions[0].volumes_from[0].source_container #=> String
    #   resp.data.task_definition.container_definitions[0].volumes_from[0].read_only #=> Boolean
    #   resp.data.task_definition.container_definitions[0].linux_parameters #=> Types::LinuxParameters
    #   resp.data.task_definition.container_definitions[0].linux_parameters.capabilities #=> Types::KernelCapabilities
    #   resp.data.task_definition.container_definitions[0].linux_parameters.capabilities.add #=> Array<String>
    #   resp.data.task_definition.container_definitions[0].linux_parameters.capabilities.drop #=> Array<String>
    #   resp.data.task_definition.container_definitions[0].linux_parameters.devices #=> Array<Device>
    #   resp.data.task_definition.container_definitions[0].linux_parameters.devices[0] #=> Types::Device
    #   resp.data.task_definition.container_definitions[0].linux_parameters.devices[0].host_path #=> String
    #   resp.data.task_definition.container_definitions[0].linux_parameters.devices[0].container_path #=> String
    #   resp.data.task_definition.container_definitions[0].linux_parameters.devices[0].permissions #=> Array<String>
    #   resp.data.task_definition.container_definitions[0].linux_parameters.devices[0].permissions[0] #=> String, one of ["read", "write", "mknod"]
    #   resp.data.task_definition.container_definitions[0].linux_parameters.init_process_enabled #=> Boolean
    #   resp.data.task_definition.container_definitions[0].linux_parameters.shared_memory_size #=> Integer
    #   resp.data.task_definition.container_definitions[0].linux_parameters.tmpfs #=> Array<Tmpfs>
    #   resp.data.task_definition.container_definitions[0].linux_parameters.tmpfs[0] #=> Types::Tmpfs
    #   resp.data.task_definition.container_definitions[0].linux_parameters.tmpfs[0].container_path #=> String
    #   resp.data.task_definition.container_definitions[0].linux_parameters.tmpfs[0].size #=> Integer
    #   resp.data.task_definition.container_definitions[0].linux_parameters.tmpfs[0].mount_options #=> Array<String>
    #   resp.data.task_definition.container_definitions[0].linux_parameters.max_swap #=> Integer
    #   resp.data.task_definition.container_definitions[0].linux_parameters.swappiness #=> Integer
    #   resp.data.task_definition.container_definitions[0].secrets #=> Array<Secret>
    #   resp.data.task_definition.container_definitions[0].secrets[0] #=> Types::Secret
    #   resp.data.task_definition.container_definitions[0].secrets[0].name #=> String
    #   resp.data.task_definition.container_definitions[0].secrets[0].value_from #=> String
    #   resp.data.task_definition.container_definitions[0].depends_on #=> Array<ContainerDependency>
    #   resp.data.task_definition.container_definitions[0].depends_on[0] #=> Types::ContainerDependency
    #   resp.data.task_definition.container_definitions[0].depends_on[0].container_name #=> String
    #   resp.data.task_definition.container_definitions[0].depends_on[0].condition #=> String, one of ["START", "COMPLETE", "SUCCESS", "HEALTHY"]
    #   resp.data.task_definition.container_definitions[0].start_timeout #=> Integer
    #   resp.data.task_definition.container_definitions[0].stop_timeout #=> Integer
    #   resp.data.task_definition.container_definitions[0].hostname #=> String
    #   resp.data.task_definition.container_definitions[0].user #=> String
    #   resp.data.task_definition.container_definitions[0].working_directory #=> String
    #   resp.data.task_definition.container_definitions[0].disable_networking #=> Boolean
    #   resp.data.task_definition.container_definitions[0].privileged #=> Boolean
    #   resp.data.task_definition.container_definitions[0].readonly_root_filesystem #=> Boolean
    #   resp.data.task_definition.container_definitions[0].dns_servers #=> Array<String>
    #   resp.data.task_definition.container_definitions[0].dns_search_domains #=> Array<String>
    #   resp.data.task_definition.container_definitions[0].extra_hosts #=> Array<HostEntry>
    #   resp.data.task_definition.container_definitions[0].extra_hosts[0] #=> Types::HostEntry
    #   resp.data.task_definition.container_definitions[0].extra_hosts[0].hostname #=> String
    #   resp.data.task_definition.container_definitions[0].extra_hosts[0].ip_address #=> String
    #   resp.data.task_definition.container_definitions[0].docker_security_options #=> Array<String>
    #   resp.data.task_definition.container_definitions[0].interactive #=> Boolean
    #   resp.data.task_definition.container_definitions[0].pseudo_terminal #=> Boolean
    #   resp.data.task_definition.container_definitions[0].docker_labels #=> Hash<String, String>
    #   resp.data.task_definition.container_definitions[0].docker_labels['key'] #=> String
    #   resp.data.task_definition.container_definitions[0].ulimits #=> Array<Ulimit>
    #   resp.data.task_definition.container_definitions[0].ulimits[0] #=> Types::Ulimit
    #   resp.data.task_definition.container_definitions[0].ulimits[0].name #=> String, one of ["core", "cpu", "data", "fsize", "locks", "memlock", "msgqueue", "nice", "nofile", "nproc", "rss", "rtprio", "rttime", "sigpending", "stack"]
    #   resp.data.task_definition.container_definitions[0].ulimits[0].soft_limit #=> Integer
    #   resp.data.task_definition.container_definitions[0].ulimits[0].hard_limit #=> Integer
    #   resp.data.task_definition.container_definitions[0].log_configuration #=> Types::LogConfiguration
    #   resp.data.task_definition.container_definitions[0].log_configuration.log_driver #=> String, one of ["json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"]
    #   resp.data.task_definition.container_definitions[0].log_configuration.options #=> Hash<String, String>
    #   resp.data.task_definition.container_definitions[0].log_configuration.options['key'] #=> String
    #   resp.data.task_definition.container_definitions[0].log_configuration.secret_options #=> Array<Secret>
    #   resp.data.task_definition.container_definitions[0].health_check #=> Types::HealthCheck
    #   resp.data.task_definition.container_definitions[0].health_check.command #=> Array<String>
    #   resp.data.task_definition.container_definitions[0].health_check.interval #=> Integer
    #   resp.data.task_definition.container_definitions[0].health_check.timeout #=> Integer
    #   resp.data.task_definition.container_definitions[0].health_check.retries #=> Integer
    #   resp.data.task_definition.container_definitions[0].health_check.start_period #=> Integer
    #   resp.data.task_definition.container_definitions[0].system_controls #=> Array<SystemControl>
    #   resp.data.task_definition.container_definitions[0].system_controls[0] #=> Types::SystemControl
    #   resp.data.task_definition.container_definitions[0].system_controls[0].namespace #=> String
    #   resp.data.task_definition.container_definitions[0].system_controls[0].value #=> String
    #   resp.data.task_definition.container_definitions[0].resource_requirements #=> Array<ResourceRequirement>
    #   resp.data.task_definition.container_definitions[0].resource_requirements[0] #=> Types::ResourceRequirement
    #   resp.data.task_definition.container_definitions[0].resource_requirements[0].value #=> String
    #   resp.data.task_definition.container_definitions[0].resource_requirements[0].type #=> String, one of ["GPU", "InferenceAccelerator"]
    #   resp.data.task_definition.container_definitions[0].firelens_configuration #=> Types::FirelensConfiguration
    #   resp.data.task_definition.container_definitions[0].firelens_configuration.type #=> String, one of ["fluentd", "fluentbit"]
    #   resp.data.task_definition.container_definitions[0].firelens_configuration.options #=> Hash<String, String>
    #   resp.data.task_definition.container_definitions[0].firelens_configuration.options['key'] #=> String
    #   resp.data.task_definition.family #=> String
    #   resp.data.task_definition.task_role_arn #=> String
    #   resp.data.task_definition.execution_role_arn #=> String
    #   resp.data.task_definition.network_mode #=> String, one of ["bridge", "host", "awsvpc", "none"]
    #   resp.data.task_definition.revision #=> Integer
    #   resp.data.task_definition.volumes #=> Array<Volume>
    #   resp.data.task_definition.volumes[0] #=> Types::Volume
    #   resp.data.task_definition.volumes[0].name #=> String
    #   resp.data.task_definition.volumes[0].host #=> Types::HostVolumeProperties
    #   resp.data.task_definition.volumes[0].host.source_path #=> String
    #   resp.data.task_definition.volumes[0].docker_volume_configuration #=> Types::DockerVolumeConfiguration
    #   resp.data.task_definition.volumes[0].docker_volume_configuration.scope #=> String, one of ["task", "shared"]
    #   resp.data.task_definition.volumes[0].docker_volume_configuration.autoprovision #=> Boolean
    #   resp.data.task_definition.volumes[0].docker_volume_configuration.driver #=> String
    #   resp.data.task_definition.volumes[0].docker_volume_configuration.driver_opts #=> Hash<String, String>
    #   resp.data.task_definition.volumes[0].docker_volume_configuration.driver_opts['key'] #=> String
    #   resp.data.task_definition.volumes[0].docker_volume_configuration.labels #=> Hash<String, String>
    #   resp.data.task_definition.volumes[0].efs_volume_configuration #=> Types::EFSVolumeConfiguration
    #   resp.data.task_definition.volumes[0].efs_volume_configuration.file_system_id #=> String
    #   resp.data.task_definition.volumes[0].efs_volume_configuration.root_directory #=> String
    #   resp.data.task_definition.volumes[0].efs_volume_configuration.transit_encryption #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.task_definition.volumes[0].efs_volume_configuration.transit_encryption_port #=> Integer
    #   resp.data.task_definition.volumes[0].efs_volume_configuration.authorization_config #=> Types::EFSAuthorizationConfig
    #   resp.data.task_definition.volumes[0].efs_volume_configuration.authorization_config.access_point_id #=> String
    #   resp.data.task_definition.volumes[0].efs_volume_configuration.authorization_config.iam #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.task_definition.volumes[0].fsx_windows_file_server_volume_configuration #=> Types::FSxWindowsFileServerVolumeConfiguration
    #   resp.data.task_definition.volumes[0].fsx_windows_file_server_volume_configuration.file_system_id #=> String
    #   resp.data.task_definition.volumes[0].fsx_windows_file_server_volume_configuration.root_directory #=> String
    #   resp.data.task_definition.volumes[0].fsx_windows_file_server_volume_configuration.authorization_config #=> Types::FSxWindowsFileServerAuthorizationConfig
    #   resp.data.task_definition.volumes[0].fsx_windows_file_server_volume_configuration.authorization_config.credentials_parameter #=> String
    #   resp.data.task_definition.volumes[0].fsx_windows_file_server_volume_configuration.authorization_config.domain #=> String
    #   resp.data.task_definition.status #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.task_definition.requires_attributes #=> Array<Attribute>
    #   resp.data.task_definition.requires_attributes[0] #=> Types::Attribute
    #   resp.data.task_definition.requires_attributes[0].name #=> String
    #   resp.data.task_definition.requires_attributes[0].value #=> String
    #   resp.data.task_definition.requires_attributes[0].target_type #=> String, one of ["container-instance"]
    #   resp.data.task_definition.requires_attributes[0].target_id #=> String
    #   resp.data.task_definition.placement_constraints #=> Array<TaskDefinitionPlacementConstraint>
    #   resp.data.task_definition.placement_constraints[0] #=> Types::TaskDefinitionPlacementConstraint
    #   resp.data.task_definition.placement_constraints[0].type #=> String, one of ["memberOf"]
    #   resp.data.task_definition.placement_constraints[0].expression #=> String
    #   resp.data.task_definition.compatibilities #=> Array<String>
    #   resp.data.task_definition.compatibilities[0] #=> String, one of ["EC2", "FARGATE", "EXTERNAL"]
    #   resp.data.task_definition.runtime_platform #=> Types::RuntimePlatform
    #   resp.data.task_definition.runtime_platform.cpu_architecture #=> String, one of ["X86_64", "ARM64"]
    #   resp.data.task_definition.runtime_platform.operating_system_family #=> String, one of ["WINDOWS_SERVER_2019_FULL", "WINDOWS_SERVER_2019_CORE", "WINDOWS_SERVER_2016_FULL", "WINDOWS_SERVER_2004_CORE", "WINDOWS_SERVER_2022_CORE", "WINDOWS_SERVER_2022_FULL", "WINDOWS_SERVER_20H2_CORE", "LINUX"]
    #   resp.data.task_definition.requires_compatibilities #=> Array<String>
    #   resp.data.task_definition.cpu #=> String
    #   resp.data.task_definition.memory #=> String
    #   resp.data.task_definition.inference_accelerators #=> Array<InferenceAccelerator>
    #   resp.data.task_definition.inference_accelerators[0] #=> Types::InferenceAccelerator
    #   resp.data.task_definition.inference_accelerators[0].device_name #=> String
    #   resp.data.task_definition.inference_accelerators[0].device_type #=> String
    #   resp.data.task_definition.pid_mode #=> String, one of ["host", "task"]
    #   resp.data.task_definition.ipc_mode #=> String, one of ["host", "task", "none"]
    #   resp.data.task_definition.proxy_configuration #=> Types::ProxyConfiguration
    #   resp.data.task_definition.proxy_configuration.type #=> String, one of ["APPMESH"]
    #   resp.data.task_definition.proxy_configuration.container_name #=> String
    #   resp.data.task_definition.proxy_configuration.properties #=> Array<KeyValuePair>
    #   resp.data.task_definition.registered_at #=> Time
    #   resp.data.task_definition.deregistered_at #=> Time
    #   resp.data.task_definition.registered_by #=> String
    #   resp.data.task_definition.ephemeral_storage #=> Types::EphemeralStorage
    #   resp.data.task_definition.ephemeral_storage.size_in_gi_b #=> Integer
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def register_task_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterTaskDefinitionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterTaskDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterTaskDefinition
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::RegisterTaskDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterTaskDefinition,
        stubs: @stubs,
        params_class: Params::RegisterTaskDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_task_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts a new task using the specified task definition.</p>
    # 		       <p>You can allow Amazon ECS to place tasks for you, or you can customize how Amazon ECS places
    # 			tasks using placement constraints and placement strategies. For more information, see
    # 				<a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html">Scheduling Tasks</a> in the
    # 				<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # 		       <p>Alternatively, you can use <a>StartTask</a> to use your own scheduler or
    # 			place tasks manually on specific container instances.</p>
    # 		       <p>The Amazon ECS API follows an eventual consistency model. This is because of the distributed
    # 			nature of the system supporting the API. This means that the result of an API command
    # 			you run that affects your Amazon ECS resources might not be immediately visible to all
    # 			subsequent commands you run. Keep this in mind when you carry out an API command that
    # 			immediately follows a previous API command.</p>
    # 		       <p>To manage eventual consistency, you can do the following:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>Confirm the state of the resource before you run a command to modify it. Run
    # 					the DescribeTasks command using an exponential backoff algorithm to ensure that
    # 					you allow enough time for the previous command to propagate through the system.
    # 					To do this, run the DescribeTasks command repeatedly, starting with a couple of
    # 					seconds of wait time and increasing gradually up to five minutes of wait
    # 					time.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Add wait time between subsequent commands, even if the DescribeTasks command
    # 					returns an accurate response. Apply an exponential backoff algorithm starting
    # 					with a couple of seconds of wait time, and increase gradually up to about five
    # 					minutes of wait time.</p>
    # 			         </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::RunTaskInput}.
    #
    # @option params [Array<CapacityProviderStrategyItem>] :capacity_provider_strategy
    #   <p>The capacity provider strategy to use for the task.</p>
    #   		       <p>If a <code>capacityProviderStrategy</code> is specified, the <code>launchType</code>
    #   			parameter must be omitted. If no <code>capacityProviderStrategy</code> or
    #   				<code>launchType</code> is specified, the
    #   				<code>defaultCapacityProviderStrategy</code> for the cluster is used.</p>
    #   		       <p>When you use cluster auto scaling, you must specify
    #   				<code>capacityProviderStrategy</code> and not <code>launchType</code>. </p>
    #   		       <p>A capacity provider strategy may contain a maximum of 6 capacity providers.</p>
    #
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster to run your task on.
    #   			If you do not specify a cluster, the default cluster is assumed.</p>
    #
    # @option params [Integer] :count
    #   <p>The number of instantiations of the specified task to place on your cluster. You can
    #   			specify up to 10 tasks for each call.</p>
    #
    # @option params [Boolean] :enable_ecs_managed_tags
    #   <p>Specifies whether to use Amazon ECS managed tags for the task. For more information, see
    #   				<a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html">Tagging Your Amazon ECS
    #   				Resources</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @option params [Boolean] :enable_execute_command
    #   <p>Determines whether to use the execute command functionality for the containers in
    #   			this task. If <code>true</code>, this enables execute command functionality on all
    #   			containers in the task.</p>
    #   		       <p>If <code>true</code>, then the task definition must have a task role, or you must
    #   			provide one as an override.</p>
    #
    # @option params [String] :group
    #   <p>The name of the task group to associate with the task. The default value is the family
    #   			name of the task definition (for example, <code>family:my-family-name</code>).</p>
    #
    # @option params [String] :launch_type
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
    # @option params [NetworkConfiguration] :network_configuration
    #   <p>The network configuration for the task. This parameter is required for task
    #   			definitions that use the <code>awsvpc</code> network mode to receive their own elastic
    #   			network interface, and it isn't supported for other network modes. For more information,
    #   			see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html">Task networking</a>
    #   			in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @option params [TaskOverride] :overrides
    #   <p>A list of container overrides in JSON format that specify the name of a container in
    #   			the specified task definition and the overrides it should receive. You can override the
    #   			default command for a container (that's specified in the task definition or Docker
    #   			image) with a <code>command</code> override. You can also override existing environment
    #   			variables (that are specified in the task definition or Docker image) on a container or
    #   			add new environment variables to it with an <code>environment</code> override.</p>
    #   		       <p>A total of 8192 characters are allowed for overrides. This limit includes the JSON
    #   			formatting characters of the override structure.</p>
    #
    # @option params [Array<PlacementConstraint>] :placement_constraints
    #   <p>An array of placement constraint objects to use for the task. You can specify up to 10
    #   			constraints for each task (including constraints in the task definition and those
    #   			specified at runtime).</p>
    #
    # @option params [Array<PlacementStrategy>] :placement_strategy
    #   <p>The placement strategy objects to use for the task. You can specify a maximum of 5
    #   			strategy rules for each task.</p>
    #
    # @option params [String] :platform_version
    #   <p>The platform version the task uses. A platform version is only specified for tasks
    #   			hosted on Fargate. If one isn't specified, the <code>LATEST</code>
    #   			platform version is used. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html">Fargate platform
    #   				versions</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @option params [String] :propagate_tags
    #   <p>Specifies whether to propagate the tags from the task definition to the task. If no
    #   			value is specified, the tags aren't propagated. Tags can only be propagated to the task
    #   			during task creation. To add tags to a task after task creation, use the <a>TagResource</a> API action.</p>
    #   		       <note>
    #   			         <p>An error will be received if you specify the <code>SERVICE</code> option when
    #   				running a task.</p>
    #   		       </note>
    #
    # @option params [String] :reference_id
    #   <p>The reference ID to use for the task. The reference ID can have a maximum length of
    #   			1024 characters.</p>
    #
    # @option params [String] :started_by
    #   <p>An optional tag specified when a task is started. For example, if you automatically
    #   			trigger a task to run a batch process job, you could apply a unique identifier for that
    #   			job to your task with the <code>startedBy</code> parameter. You can then identify which
    #   			tasks belong to that job by filtering the results of a <a>ListTasks</a> call
    #   			with the <code>startedBy</code> value. Up to 36 letters (uppercase and lowercase),
    #   			numbers, hyphens (-), and underscores (_) are allowed.</p>
    #   		       <p>If a task is started by an Amazon ECS service, then the <code>startedBy</code> parameter
    #   			contains the deployment ID of the service that starts it.</p>
    #
    # @option params [Array<Tag>] :tags
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
    # @option params [String] :task_definition
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
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-resources">Policy Resources for Amazon ECS</a> in the Amazon Elastic Container Service
    #   			developer Guide.</p>
    #
    # @return [Types::RunTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.run_task(
    #     capacity_provider_strategy: [
    #       {
    #         capacity_provider: 'capacityProvider', # required
    #         weight: 1,
    #         base: 1
    #       }
    #     ],
    #     cluster: 'cluster',
    #     count: 1,
    #     enable_ecs_managed_tags: false,
    #     enable_execute_command: false,
    #     group: 'group',
    #     launch_type: 'EC2', # accepts ["EC2", "FARGATE", "EXTERNAL"]
    #     network_configuration: {
    #       awsvpc_configuration: {
    #         subnets: [
    #           'member'
    #         ], # required
    #         assign_public_ip: 'ENABLED' # accepts ["ENABLED", "DISABLED"]
    #       }
    #     },
    #     overrides: {
    #       container_overrides: [
    #         {
    #           name: 'name',
    #           environment: [
    #             {
    #               name: 'name',
    #               value: 'value'
    #             }
    #           ],
    #           environment_files: [
    #             {
    #               value: 'value', # required
    #               type: 's3' # required - accepts ["s3"]
    #             }
    #           ],
    #           cpu: 1,
    #           memory: 1,
    #           memory_reservation: 1,
    #           resource_requirements: [
    #             {
    #               value: 'value', # required
    #               type: 'GPU' # required - accepts ["GPU", "InferenceAccelerator"]
    #             }
    #           ]
    #         }
    #       ],
    #       cpu: 'cpu',
    #       inference_accelerator_overrides: [
    #         {
    #           device_name: 'deviceName',
    #           device_type: 'deviceType'
    #         }
    #       ],
    #       execution_role_arn: 'executionRoleArn',
    #       memory: 'memory',
    #       task_role_arn: 'taskRoleArn',
    #       ephemeral_storage: {
    #         size_in_gi_b: 1 # required
    #       }
    #     },
    #     placement_constraints: [
    #       {
    #         type: 'distinctInstance', # accepts ["distinctInstance", "memberOf"]
    #         expression: 'expression'
    #       }
    #     ],
    #     placement_strategy: [
    #       {
    #         type: 'random', # accepts ["random", "spread", "binpack"]
    #         field: 'field'
    #       }
    #     ],
    #     platform_version: 'platformVersion',
    #     propagate_tags: 'TASK_DEFINITION', # accepts ["TASK_DEFINITION", "SERVICE", "NONE"]
    #     reference_id: 'referenceId',
    #     started_by: 'startedBy',
    #     tags: [
    #       {
    #         key: 'key',
    #         value: 'value'
    #       }
    #     ],
    #     task_definition: 'taskDefinition' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RunTaskOutput
    #   resp.data.tasks #=> Array<Task>
    #   resp.data.tasks[0] #=> Types::Task
    #   resp.data.tasks[0].attachments #=> Array<Attachment>
    #   resp.data.tasks[0].attachments[0] #=> Types::Attachment
    #   resp.data.tasks[0].attachments[0].id #=> String
    #   resp.data.tasks[0].attachments[0].type #=> String
    #   resp.data.tasks[0].attachments[0].status #=> String
    #   resp.data.tasks[0].attachments[0].details #=> Array<KeyValuePair>
    #   resp.data.tasks[0].attachments[0].details[0] #=> Types::KeyValuePair
    #   resp.data.tasks[0].attachments[0].details[0].name #=> String
    #   resp.data.tasks[0].attachments[0].details[0].value #=> String
    #   resp.data.tasks[0].attributes #=> Array<Attribute>
    #   resp.data.tasks[0].attributes[0] #=> Types::Attribute
    #   resp.data.tasks[0].attributes[0].name #=> String
    #   resp.data.tasks[0].attributes[0].value #=> String
    #   resp.data.tasks[0].attributes[0].target_type #=> String, one of ["container-instance"]
    #   resp.data.tasks[0].attributes[0].target_id #=> String
    #   resp.data.tasks[0].availability_zone #=> String
    #   resp.data.tasks[0].capacity_provider_name #=> String
    #   resp.data.tasks[0].cluster_arn #=> String
    #   resp.data.tasks[0].connectivity #=> String, one of ["CONNECTED", "DISCONNECTED"]
    #   resp.data.tasks[0].connectivity_at #=> Time
    #   resp.data.tasks[0].container_instance_arn #=> String
    #   resp.data.tasks[0].containers #=> Array<Container>
    #   resp.data.tasks[0].containers[0] #=> Types::Container
    #   resp.data.tasks[0].containers[0].container_arn #=> String
    #   resp.data.tasks[0].containers[0].task_arn #=> String
    #   resp.data.tasks[0].containers[0].name #=> String
    #   resp.data.tasks[0].containers[0].image #=> String
    #   resp.data.tasks[0].containers[0].image_digest #=> String
    #   resp.data.tasks[0].containers[0].runtime_id #=> String
    #   resp.data.tasks[0].containers[0].last_status #=> String
    #   resp.data.tasks[0].containers[0].exit_code #=> Integer
    #   resp.data.tasks[0].containers[0].reason #=> String
    #   resp.data.tasks[0].containers[0].network_bindings #=> Array<NetworkBinding>
    #   resp.data.tasks[0].containers[0].network_bindings[0] #=> Types::NetworkBinding
    #   resp.data.tasks[0].containers[0].network_bindings[0].bind_ip #=> String
    #   resp.data.tasks[0].containers[0].network_bindings[0].container_port #=> Integer
    #   resp.data.tasks[0].containers[0].network_bindings[0].host_port #=> Integer
    #   resp.data.tasks[0].containers[0].network_bindings[0].protocol #=> String, one of ["tcp", "udp"]
    #   resp.data.tasks[0].containers[0].network_interfaces #=> Array<NetworkInterface>
    #   resp.data.tasks[0].containers[0].network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.tasks[0].containers[0].network_interfaces[0].attachment_id #=> String
    #   resp.data.tasks[0].containers[0].network_interfaces[0].private_ipv4_address #=> String
    #   resp.data.tasks[0].containers[0].network_interfaces[0].ipv6_address #=> String
    #   resp.data.tasks[0].containers[0].health_status #=> String, one of ["HEALTHY", "UNHEALTHY", "UNKNOWN"]
    #   resp.data.tasks[0].containers[0].managed_agents #=> Array<ManagedAgent>
    #   resp.data.tasks[0].containers[0].managed_agents[0] #=> Types::ManagedAgent
    #   resp.data.tasks[0].containers[0].managed_agents[0].last_started_at #=> Time
    #   resp.data.tasks[0].containers[0].managed_agents[0].name #=> String, one of ["ExecuteCommandAgent"]
    #   resp.data.tasks[0].containers[0].managed_agents[0].reason #=> String
    #   resp.data.tasks[0].containers[0].managed_agents[0].last_status #=> String
    #   resp.data.tasks[0].containers[0].cpu #=> String
    #   resp.data.tasks[0].containers[0].memory #=> String
    #   resp.data.tasks[0].containers[0].memory_reservation #=> String
    #   resp.data.tasks[0].containers[0].gpu_ids #=> Array<String>
    #   resp.data.tasks[0].containers[0].gpu_ids[0] #=> String
    #   resp.data.tasks[0].cpu #=> String
    #   resp.data.tasks[0].created_at #=> Time
    #   resp.data.tasks[0].desired_status #=> String
    #   resp.data.tasks[0].enable_execute_command #=> Boolean
    #   resp.data.tasks[0].execution_stopped_at #=> Time
    #   resp.data.tasks[0].group #=> String
    #   resp.data.tasks[0].health_status #=> String, one of ["HEALTHY", "UNHEALTHY", "UNKNOWN"]
    #   resp.data.tasks[0].inference_accelerators #=> Array<InferenceAccelerator>
    #   resp.data.tasks[0].inference_accelerators[0] #=> Types::InferenceAccelerator
    #   resp.data.tasks[0].inference_accelerators[0].device_name #=> String
    #   resp.data.tasks[0].inference_accelerators[0].device_type #=> String
    #   resp.data.tasks[0].last_status #=> String
    #   resp.data.tasks[0].launch_type #=> String, one of ["EC2", "FARGATE", "EXTERNAL"]
    #   resp.data.tasks[0].memory #=> String
    #   resp.data.tasks[0].overrides #=> Types::TaskOverride
    #   resp.data.tasks[0].overrides.container_overrides #=> Array<ContainerOverride>
    #   resp.data.tasks[0].overrides.container_overrides[0] #=> Types::ContainerOverride
    #   resp.data.tasks[0].overrides.container_overrides[0].name #=> String
    #   resp.data.tasks[0].overrides.container_overrides[0].command #=> Array<String>
    #   resp.data.tasks[0].overrides.container_overrides[0].command[0] #=> String
    #   resp.data.tasks[0].overrides.container_overrides[0].environment #=> Array<KeyValuePair>
    #   resp.data.tasks[0].overrides.container_overrides[0].environment_files #=> Array<EnvironmentFile>
    #   resp.data.tasks[0].overrides.container_overrides[0].environment_files[0] #=> Types::EnvironmentFile
    #   resp.data.tasks[0].overrides.container_overrides[0].environment_files[0].value #=> String
    #   resp.data.tasks[0].overrides.container_overrides[0].environment_files[0].type #=> String, one of ["s3"]
    #   resp.data.tasks[0].overrides.container_overrides[0].cpu #=> Integer
    #   resp.data.tasks[0].overrides.container_overrides[0].memory #=> Integer
    #   resp.data.tasks[0].overrides.container_overrides[0].memory_reservation #=> Integer
    #   resp.data.tasks[0].overrides.container_overrides[0].resource_requirements #=> Array<ResourceRequirement>
    #   resp.data.tasks[0].overrides.container_overrides[0].resource_requirements[0] #=> Types::ResourceRequirement
    #   resp.data.tasks[0].overrides.container_overrides[0].resource_requirements[0].value #=> String
    #   resp.data.tasks[0].overrides.container_overrides[0].resource_requirements[0].type #=> String, one of ["GPU", "InferenceAccelerator"]
    #   resp.data.tasks[0].overrides.cpu #=> String
    #   resp.data.tasks[0].overrides.inference_accelerator_overrides #=> Array<InferenceAcceleratorOverride>
    #   resp.data.tasks[0].overrides.inference_accelerator_overrides[0] #=> Types::InferenceAcceleratorOverride
    #   resp.data.tasks[0].overrides.inference_accelerator_overrides[0].device_name #=> String
    #   resp.data.tasks[0].overrides.inference_accelerator_overrides[0].device_type #=> String
    #   resp.data.tasks[0].overrides.execution_role_arn #=> String
    #   resp.data.tasks[0].overrides.memory #=> String
    #   resp.data.tasks[0].overrides.task_role_arn #=> String
    #   resp.data.tasks[0].overrides.ephemeral_storage #=> Types::EphemeralStorage
    #   resp.data.tasks[0].overrides.ephemeral_storage.size_in_gi_b #=> Integer
    #   resp.data.tasks[0].platform_version #=> String
    #   resp.data.tasks[0].platform_family #=> String
    #   resp.data.tasks[0].pull_started_at #=> Time
    #   resp.data.tasks[0].pull_stopped_at #=> Time
    #   resp.data.tasks[0].started_at #=> Time
    #   resp.data.tasks[0].started_by #=> String
    #   resp.data.tasks[0].stop_code #=> String, one of ["TaskFailedToStart", "EssentialContainerExited", "UserInitiated"]
    #   resp.data.tasks[0].stopped_at #=> Time
    #   resp.data.tasks[0].stopped_reason #=> String
    #   resp.data.tasks[0].stopping_at #=> Time
    #   resp.data.tasks[0].tags #=> Array<Tag>
    #   resp.data.tasks[0].tags[0] #=> Types::Tag
    #   resp.data.tasks[0].tags[0].key #=> String
    #   resp.data.tasks[0].tags[0].value #=> String
    #   resp.data.tasks[0].task_arn #=> String
    #   resp.data.tasks[0].task_definition_arn #=> String
    #   resp.data.tasks[0].version #=> Integer
    #   resp.data.tasks[0].ephemeral_storage #=> Types::EphemeralStorage
    #   resp.data.failures #=> Array<Failure>
    #   resp.data.failures[0] #=> Types::Failure
    #   resp.data.failures[0].arn #=> String
    #   resp.data.failures[0].reason #=> String
    #   resp.data.failures[0].detail #=> String
    #
    def run_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RunTaskInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RunTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RunTask
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::BlockedException, Errors::ClusterNotFoundException, Errors::ServerException, Errors::InvalidParameterException, Errors::PlatformUnknownException, Errors::UnsupportedFeatureException, Errors::ClientException, Errors::PlatformTaskDefinitionIncompatibilityException]),
        data_parser: Parsers::RunTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RunTask,
        stubs: @stubs,
        params_class: Params::RunTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :run_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts a new task from the specified task definition on the specified container
    # 			instance or instances.</p>
    # 		       <p>Alternatively, you can use <a>RunTask</a> to place tasks for you. For more
    # 			information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html">Scheduling Tasks</a> in the
    # 				<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::StartTaskInput}.
    #
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster where to start your task.
    #   			If you do not specify a cluster, the default cluster is assumed.</p>
    #
    # @option params [Array<String>] :container_instances
    #   <p>The container instance IDs or full ARN entries for the container instances where you
    #   			would like to place your task. You can specify up to 10 container instances.</p>
    #
    # @option params [Boolean] :enable_ecs_managed_tags
    #   <p>Specifies whether to use Amazon ECS managed tags for the task. For more information, see
    #   				<a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html">Tagging Your Amazon ECS
    #   				Resources</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @option params [Boolean] :enable_execute_command
    #   <p>Whether or not the execute command functionality is enabled for the task. If
    #   				<code>true</code>, this enables execute command functionality on all containers in
    #   			the task.</p>
    #
    # @option params [String] :group
    #   <p>The name of the task group to associate with the task. The default value is the family
    #   			name of the task definition (for example, family:my-family-name).</p>
    #
    # @option params [NetworkConfiguration] :network_configuration
    #   <p>The VPC subnet and security group configuration for tasks that receive their own
    #               elastic network interface by using the <code>awsvpc</code> networking mode.</p>
    #
    # @option params [TaskOverride] :overrides
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
    # @option params [String] :propagate_tags
    #   <p>Specifies whether to propagate the tags from the task definition or the service to the
    #   			task. If no value is specified, the tags aren't propagated.</p>
    #
    # @option params [String] :reference_id
    #   <p>The reference ID to use for the task.</p>
    #
    # @option params [String] :started_by
    #   <p>An optional tag specified when a task is started. For example, if you automatically
    #   			trigger a task to run a batch process job, you could apply a unique identifier for that
    #   			job to your task with the <code>startedBy</code> parameter. You can then identify which
    #   			tasks belong to that job by filtering the results of a <a>ListTasks</a> call
    #   			with the <code>startedBy</code> value. Up to 36 letters (uppercase and lowercase),
    #   			numbers, hyphens (-), and underscores (_) are allowed.</p>
    #   		       <p>If a task is started by an Amazon ECS service, the <code>startedBy</code> parameter
    #   			contains the deployment ID of the service that starts it.</p>
    #
    # @option params [Array<Tag>] :tags
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
    # @option params [String] :task_definition
    #   <p>The <code>family</code> and <code>revision</code> (<code>family:revision</code>) or
    #   			full ARN of the task definition to start. If a <code>revision</code> isn't specified,
    #   			the latest <code>ACTIVE</code> revision is used.</p>
    #
    # @return [Types::StartTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_task(
    #     cluster: 'cluster',
    #     container_instances: [
    #       'member'
    #     ], # required
    #     enable_ecs_managed_tags: false,
    #     enable_execute_command: false,
    #     group: 'group',
    #     network_configuration: {
    #       awsvpc_configuration: {
    #         assign_public_ip: 'ENABLED' # accepts ["ENABLED", "DISABLED"]
    #       }
    #     },
    #     overrides: {
    #       container_overrides: [
    #         {
    #           name: 'name',
    #           environment: [
    #             {
    #               name: 'name',
    #               value: 'value'
    #             }
    #           ],
    #           environment_files: [
    #             {
    #               value: 'value', # required
    #               type: 's3' # required - accepts ["s3"]
    #             }
    #           ],
    #           cpu: 1,
    #           memory: 1,
    #           memory_reservation: 1,
    #           resource_requirements: [
    #             {
    #               value: 'value', # required
    #               type: 'GPU' # required - accepts ["GPU", "InferenceAccelerator"]
    #             }
    #           ]
    #         }
    #       ],
    #       cpu: 'cpu',
    #       inference_accelerator_overrides: [
    #         {
    #           device_name: 'deviceName',
    #           device_type: 'deviceType'
    #         }
    #       ],
    #       execution_role_arn: 'executionRoleArn',
    #       memory: 'memory',
    #       task_role_arn: 'taskRoleArn',
    #       ephemeral_storage: {
    #         size_in_gi_b: 1 # required
    #       }
    #     },
    #     propagate_tags: 'TASK_DEFINITION', # accepts ["TASK_DEFINITION", "SERVICE", "NONE"]
    #     reference_id: 'referenceId',
    #     started_by: 'startedBy',
    #     tags: [
    #       {
    #         key: 'key',
    #         value: 'value'
    #       }
    #     ],
    #     task_definition: 'taskDefinition' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartTaskOutput
    #   resp.data.tasks #=> Array<Task>
    #   resp.data.tasks[0] #=> Types::Task
    #   resp.data.tasks[0].attachments #=> Array<Attachment>
    #   resp.data.tasks[0].attachments[0] #=> Types::Attachment
    #   resp.data.tasks[0].attachments[0].id #=> String
    #   resp.data.tasks[0].attachments[0].type #=> String
    #   resp.data.tasks[0].attachments[0].status #=> String
    #   resp.data.tasks[0].attachments[0].details #=> Array<KeyValuePair>
    #   resp.data.tasks[0].attachments[0].details[0] #=> Types::KeyValuePair
    #   resp.data.tasks[0].attachments[0].details[0].name #=> String
    #   resp.data.tasks[0].attachments[0].details[0].value #=> String
    #   resp.data.tasks[0].attributes #=> Array<Attribute>
    #   resp.data.tasks[0].attributes[0] #=> Types::Attribute
    #   resp.data.tasks[0].attributes[0].name #=> String
    #   resp.data.tasks[0].attributes[0].value #=> String
    #   resp.data.tasks[0].attributes[0].target_type #=> String, one of ["container-instance"]
    #   resp.data.tasks[0].attributes[0].target_id #=> String
    #   resp.data.tasks[0].availability_zone #=> String
    #   resp.data.tasks[0].capacity_provider_name #=> String
    #   resp.data.tasks[0].cluster_arn #=> String
    #   resp.data.tasks[0].connectivity #=> String, one of ["CONNECTED", "DISCONNECTED"]
    #   resp.data.tasks[0].connectivity_at #=> Time
    #   resp.data.tasks[0].container_instance_arn #=> String
    #   resp.data.tasks[0].containers #=> Array<Container>
    #   resp.data.tasks[0].containers[0] #=> Types::Container
    #   resp.data.tasks[0].containers[0].container_arn #=> String
    #   resp.data.tasks[0].containers[0].task_arn #=> String
    #   resp.data.tasks[0].containers[0].name #=> String
    #   resp.data.tasks[0].containers[0].image #=> String
    #   resp.data.tasks[0].containers[0].image_digest #=> String
    #   resp.data.tasks[0].containers[0].runtime_id #=> String
    #   resp.data.tasks[0].containers[0].last_status #=> String
    #   resp.data.tasks[0].containers[0].exit_code #=> Integer
    #   resp.data.tasks[0].containers[0].reason #=> String
    #   resp.data.tasks[0].containers[0].network_bindings #=> Array<NetworkBinding>
    #   resp.data.tasks[0].containers[0].network_bindings[0] #=> Types::NetworkBinding
    #   resp.data.tasks[0].containers[0].network_bindings[0].bind_ip #=> String
    #   resp.data.tasks[0].containers[0].network_bindings[0].container_port #=> Integer
    #   resp.data.tasks[0].containers[0].network_bindings[0].host_port #=> Integer
    #   resp.data.tasks[0].containers[0].network_bindings[0].protocol #=> String, one of ["tcp", "udp"]
    #   resp.data.tasks[0].containers[0].network_interfaces #=> Array<NetworkInterface>
    #   resp.data.tasks[0].containers[0].network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.tasks[0].containers[0].network_interfaces[0].attachment_id #=> String
    #   resp.data.tasks[0].containers[0].network_interfaces[0].private_ipv4_address #=> String
    #   resp.data.tasks[0].containers[0].network_interfaces[0].ipv6_address #=> String
    #   resp.data.tasks[0].containers[0].health_status #=> String, one of ["HEALTHY", "UNHEALTHY", "UNKNOWN"]
    #   resp.data.tasks[0].containers[0].managed_agents #=> Array<ManagedAgent>
    #   resp.data.tasks[0].containers[0].managed_agents[0] #=> Types::ManagedAgent
    #   resp.data.tasks[0].containers[0].managed_agents[0].last_started_at #=> Time
    #   resp.data.tasks[0].containers[0].managed_agents[0].name #=> String, one of ["ExecuteCommandAgent"]
    #   resp.data.tasks[0].containers[0].managed_agents[0].reason #=> String
    #   resp.data.tasks[0].containers[0].managed_agents[0].last_status #=> String
    #   resp.data.tasks[0].containers[0].cpu #=> String
    #   resp.data.tasks[0].containers[0].memory #=> String
    #   resp.data.tasks[0].containers[0].memory_reservation #=> String
    #   resp.data.tasks[0].containers[0].gpu_ids #=> Array<String>
    #   resp.data.tasks[0].containers[0].gpu_ids[0] #=> String
    #   resp.data.tasks[0].cpu #=> String
    #   resp.data.tasks[0].created_at #=> Time
    #   resp.data.tasks[0].desired_status #=> String
    #   resp.data.tasks[0].enable_execute_command #=> Boolean
    #   resp.data.tasks[0].execution_stopped_at #=> Time
    #   resp.data.tasks[0].group #=> String
    #   resp.data.tasks[0].health_status #=> String, one of ["HEALTHY", "UNHEALTHY", "UNKNOWN"]
    #   resp.data.tasks[0].inference_accelerators #=> Array<InferenceAccelerator>
    #   resp.data.tasks[0].inference_accelerators[0] #=> Types::InferenceAccelerator
    #   resp.data.tasks[0].inference_accelerators[0].device_name #=> String
    #   resp.data.tasks[0].inference_accelerators[0].device_type #=> String
    #   resp.data.tasks[0].last_status #=> String
    #   resp.data.tasks[0].launch_type #=> String, one of ["EC2", "FARGATE", "EXTERNAL"]
    #   resp.data.tasks[0].memory #=> String
    #   resp.data.tasks[0].overrides #=> Types::TaskOverride
    #   resp.data.tasks[0].overrides.container_overrides #=> Array<ContainerOverride>
    #   resp.data.tasks[0].overrides.container_overrides[0] #=> Types::ContainerOverride
    #   resp.data.tasks[0].overrides.container_overrides[0].name #=> String
    #   resp.data.tasks[0].overrides.container_overrides[0].command #=> Array<String>
    #   resp.data.tasks[0].overrides.container_overrides[0].command[0] #=> String
    #   resp.data.tasks[0].overrides.container_overrides[0].environment #=> Array<KeyValuePair>
    #   resp.data.tasks[0].overrides.container_overrides[0].environment_files #=> Array<EnvironmentFile>
    #   resp.data.tasks[0].overrides.container_overrides[0].environment_files[0] #=> Types::EnvironmentFile
    #   resp.data.tasks[0].overrides.container_overrides[0].environment_files[0].value #=> String
    #   resp.data.tasks[0].overrides.container_overrides[0].environment_files[0].type #=> String, one of ["s3"]
    #   resp.data.tasks[0].overrides.container_overrides[0].cpu #=> Integer
    #   resp.data.tasks[0].overrides.container_overrides[0].memory #=> Integer
    #   resp.data.tasks[0].overrides.container_overrides[0].memory_reservation #=> Integer
    #   resp.data.tasks[0].overrides.container_overrides[0].resource_requirements #=> Array<ResourceRequirement>
    #   resp.data.tasks[0].overrides.container_overrides[0].resource_requirements[0] #=> Types::ResourceRequirement
    #   resp.data.tasks[0].overrides.container_overrides[0].resource_requirements[0].value #=> String
    #   resp.data.tasks[0].overrides.container_overrides[0].resource_requirements[0].type #=> String, one of ["GPU", "InferenceAccelerator"]
    #   resp.data.tasks[0].overrides.cpu #=> String
    #   resp.data.tasks[0].overrides.inference_accelerator_overrides #=> Array<InferenceAcceleratorOverride>
    #   resp.data.tasks[0].overrides.inference_accelerator_overrides[0] #=> Types::InferenceAcceleratorOverride
    #   resp.data.tasks[0].overrides.inference_accelerator_overrides[0].device_name #=> String
    #   resp.data.tasks[0].overrides.inference_accelerator_overrides[0].device_type #=> String
    #   resp.data.tasks[0].overrides.execution_role_arn #=> String
    #   resp.data.tasks[0].overrides.memory #=> String
    #   resp.data.tasks[0].overrides.task_role_arn #=> String
    #   resp.data.tasks[0].overrides.ephemeral_storage #=> Types::EphemeralStorage
    #   resp.data.tasks[0].overrides.ephemeral_storage.size_in_gi_b #=> Integer
    #   resp.data.tasks[0].platform_version #=> String
    #   resp.data.tasks[0].platform_family #=> String
    #   resp.data.tasks[0].pull_started_at #=> Time
    #   resp.data.tasks[0].pull_stopped_at #=> Time
    #   resp.data.tasks[0].started_at #=> Time
    #   resp.data.tasks[0].started_by #=> String
    #   resp.data.tasks[0].stop_code #=> String, one of ["TaskFailedToStart", "EssentialContainerExited", "UserInitiated"]
    #   resp.data.tasks[0].stopped_at #=> Time
    #   resp.data.tasks[0].stopped_reason #=> String
    #   resp.data.tasks[0].stopping_at #=> Time
    #   resp.data.tasks[0].tags #=> Array<Tag>
    #   resp.data.tasks[0].tags[0] #=> Types::Tag
    #   resp.data.tasks[0].tags[0].key #=> String
    #   resp.data.tasks[0].tags[0].value #=> String
    #   resp.data.tasks[0].task_arn #=> String
    #   resp.data.tasks[0].task_definition_arn #=> String
    #   resp.data.tasks[0].version #=> Integer
    #   resp.data.tasks[0].ephemeral_storage #=> Types::EphemeralStorage
    #   resp.data.failures #=> Array<Failure>
    #   resp.data.failures[0] #=> Types::Failure
    #   resp.data.failures[0].arn #=> String
    #   resp.data.failures[0].reason #=> String
    #   resp.data.failures[0].detail #=> String
    #
    def start_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartTaskInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartTask
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterNotFoundException, Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::StartTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartTask,
        stubs: @stubs,
        params_class: Params::StartTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops a running task. Any tags associated with the task will be deleted.</p>
    # 		       <p>When <a>StopTask</a> is called on a task, the equivalent of <code>docker
    # 				stop</code> is issued to the containers running in the task. This results in a
    # 				<code>SIGTERM</code> value and a default 30-second timeout, after which the
    # 				<code>SIGKILL</code> value is sent and the containers are forcibly stopped. If the
    # 			container handles the <code>SIGTERM</code> value gracefully and exits within 30 seconds
    # 			from receiving it, no <code>SIGKILL</code> value is sent.</p>
    # 		       <note>
    # 			         <p>The default 30-second timeout can be configured on the Amazon ECS container agent with
    # 				the <code>ECS_CONTAINER_STOP_TIMEOUT</code> variable. For more information, see
    # 					<a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html">Amazon ECS Container Agent Configuration</a> in the
    # 					<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::StopTaskInput}.
    #
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the task to stop.
    #   			If you do not specify a cluster, the default cluster is assumed.</p>
    #
    # @option params [String] :task
    #   <p>The task ID or full Amazon Resource Name (ARN) of the task to stop.</p>
    #
    # @option params [String] :reason
    #   <p>An optional message specified when a task is stopped. For example, if you're using a
    #   			custom scheduler, you can use this parameter to specify the reason for stopping the task
    #   			here, and the message appears in subsequent <a>DescribeTasks</a> API
    #   			operations on this task. Up to 255 characters are allowed in this message.</p>
    #
    # @return [Types::StopTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_task(
    #     cluster: 'cluster',
    #     task: 'task', # required
    #     reason: 'reason'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopTaskOutput
    #   resp.data.task #=> Types::Task
    #   resp.data.task.attachments #=> Array<Attachment>
    #   resp.data.task.attachments[0] #=> Types::Attachment
    #   resp.data.task.attachments[0].id #=> String
    #   resp.data.task.attachments[0].type #=> String
    #   resp.data.task.attachments[0].status #=> String
    #   resp.data.task.attachments[0].details #=> Array<KeyValuePair>
    #   resp.data.task.attachments[0].details[0] #=> Types::KeyValuePair
    #   resp.data.task.attachments[0].details[0].name #=> String
    #   resp.data.task.attachments[0].details[0].value #=> String
    #   resp.data.task.attributes #=> Array<Attribute>
    #   resp.data.task.attributes[0] #=> Types::Attribute
    #   resp.data.task.attributes[0].name #=> String
    #   resp.data.task.attributes[0].value #=> String
    #   resp.data.task.attributes[0].target_type #=> String, one of ["container-instance"]
    #   resp.data.task.attributes[0].target_id #=> String
    #   resp.data.task.availability_zone #=> String
    #   resp.data.task.capacity_provider_name #=> String
    #   resp.data.task.cluster_arn #=> String
    #   resp.data.task.connectivity #=> String, one of ["CONNECTED", "DISCONNECTED"]
    #   resp.data.task.connectivity_at #=> Time
    #   resp.data.task.container_instance_arn #=> String
    #   resp.data.task.containers #=> Array<Container>
    #   resp.data.task.containers[0] #=> Types::Container
    #   resp.data.task.containers[0].container_arn #=> String
    #   resp.data.task.containers[0].task_arn #=> String
    #   resp.data.task.containers[0].name #=> String
    #   resp.data.task.containers[0].image #=> String
    #   resp.data.task.containers[0].image_digest #=> String
    #   resp.data.task.containers[0].runtime_id #=> String
    #   resp.data.task.containers[0].last_status #=> String
    #   resp.data.task.containers[0].exit_code #=> Integer
    #   resp.data.task.containers[0].reason #=> String
    #   resp.data.task.containers[0].network_bindings #=> Array<NetworkBinding>
    #   resp.data.task.containers[0].network_bindings[0] #=> Types::NetworkBinding
    #   resp.data.task.containers[0].network_bindings[0].bind_ip #=> String
    #   resp.data.task.containers[0].network_bindings[0].container_port #=> Integer
    #   resp.data.task.containers[0].network_bindings[0].host_port #=> Integer
    #   resp.data.task.containers[0].network_bindings[0].protocol #=> String, one of ["tcp", "udp"]
    #   resp.data.task.containers[0].network_interfaces #=> Array<NetworkInterface>
    #   resp.data.task.containers[0].network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.task.containers[0].network_interfaces[0].attachment_id #=> String
    #   resp.data.task.containers[0].network_interfaces[0].private_ipv4_address #=> String
    #   resp.data.task.containers[0].network_interfaces[0].ipv6_address #=> String
    #   resp.data.task.containers[0].health_status #=> String, one of ["HEALTHY", "UNHEALTHY", "UNKNOWN"]
    #   resp.data.task.containers[0].managed_agents #=> Array<ManagedAgent>
    #   resp.data.task.containers[0].managed_agents[0] #=> Types::ManagedAgent
    #   resp.data.task.containers[0].managed_agents[0].last_started_at #=> Time
    #   resp.data.task.containers[0].managed_agents[0].name #=> String, one of ["ExecuteCommandAgent"]
    #   resp.data.task.containers[0].managed_agents[0].reason #=> String
    #   resp.data.task.containers[0].managed_agents[0].last_status #=> String
    #   resp.data.task.containers[0].cpu #=> String
    #   resp.data.task.containers[0].memory #=> String
    #   resp.data.task.containers[0].memory_reservation #=> String
    #   resp.data.task.containers[0].gpu_ids #=> Array<String>
    #   resp.data.task.containers[0].gpu_ids[0] #=> String
    #   resp.data.task.cpu #=> String
    #   resp.data.task.created_at #=> Time
    #   resp.data.task.desired_status #=> String
    #   resp.data.task.enable_execute_command #=> Boolean
    #   resp.data.task.execution_stopped_at #=> Time
    #   resp.data.task.group #=> String
    #   resp.data.task.health_status #=> String, one of ["HEALTHY", "UNHEALTHY", "UNKNOWN"]
    #   resp.data.task.inference_accelerators #=> Array<InferenceAccelerator>
    #   resp.data.task.inference_accelerators[0] #=> Types::InferenceAccelerator
    #   resp.data.task.inference_accelerators[0].device_name #=> String
    #   resp.data.task.inference_accelerators[0].device_type #=> String
    #   resp.data.task.last_status #=> String
    #   resp.data.task.launch_type #=> String, one of ["EC2", "FARGATE", "EXTERNAL"]
    #   resp.data.task.memory #=> String
    #   resp.data.task.overrides #=> Types::TaskOverride
    #   resp.data.task.overrides.container_overrides #=> Array<ContainerOverride>
    #   resp.data.task.overrides.container_overrides[0] #=> Types::ContainerOverride
    #   resp.data.task.overrides.container_overrides[0].name #=> String
    #   resp.data.task.overrides.container_overrides[0].command #=> Array<String>
    #   resp.data.task.overrides.container_overrides[0].command[0] #=> String
    #   resp.data.task.overrides.container_overrides[0].environment #=> Array<KeyValuePair>
    #   resp.data.task.overrides.container_overrides[0].environment_files #=> Array<EnvironmentFile>
    #   resp.data.task.overrides.container_overrides[0].environment_files[0] #=> Types::EnvironmentFile
    #   resp.data.task.overrides.container_overrides[0].environment_files[0].value #=> String
    #   resp.data.task.overrides.container_overrides[0].environment_files[0].type #=> String, one of ["s3"]
    #   resp.data.task.overrides.container_overrides[0].cpu #=> Integer
    #   resp.data.task.overrides.container_overrides[0].memory #=> Integer
    #   resp.data.task.overrides.container_overrides[0].memory_reservation #=> Integer
    #   resp.data.task.overrides.container_overrides[0].resource_requirements #=> Array<ResourceRequirement>
    #   resp.data.task.overrides.container_overrides[0].resource_requirements[0] #=> Types::ResourceRequirement
    #   resp.data.task.overrides.container_overrides[0].resource_requirements[0].value #=> String
    #   resp.data.task.overrides.container_overrides[0].resource_requirements[0].type #=> String, one of ["GPU", "InferenceAccelerator"]
    #   resp.data.task.overrides.cpu #=> String
    #   resp.data.task.overrides.inference_accelerator_overrides #=> Array<InferenceAcceleratorOverride>
    #   resp.data.task.overrides.inference_accelerator_overrides[0] #=> Types::InferenceAcceleratorOverride
    #   resp.data.task.overrides.inference_accelerator_overrides[0].device_name #=> String
    #   resp.data.task.overrides.inference_accelerator_overrides[0].device_type #=> String
    #   resp.data.task.overrides.execution_role_arn #=> String
    #   resp.data.task.overrides.memory #=> String
    #   resp.data.task.overrides.task_role_arn #=> String
    #   resp.data.task.overrides.ephemeral_storage #=> Types::EphemeralStorage
    #   resp.data.task.overrides.ephemeral_storage.size_in_gi_b #=> Integer
    #   resp.data.task.platform_version #=> String
    #   resp.data.task.platform_family #=> String
    #   resp.data.task.pull_started_at #=> Time
    #   resp.data.task.pull_stopped_at #=> Time
    #   resp.data.task.started_at #=> Time
    #   resp.data.task.started_by #=> String
    #   resp.data.task.stop_code #=> String, one of ["TaskFailedToStart", "EssentialContainerExited", "UserInitiated"]
    #   resp.data.task.stopped_at #=> Time
    #   resp.data.task.stopped_reason #=> String
    #   resp.data.task.stopping_at #=> Time
    #   resp.data.task.tags #=> Array<Tag>
    #   resp.data.task.tags[0] #=> Types::Tag
    #   resp.data.task.tags[0].key #=> String
    #   resp.data.task.tags[0].value #=> String
    #   resp.data.task.task_arn #=> String
    #   resp.data.task.task_definition_arn #=> String
    #   resp.data.task.version #=> Integer
    #   resp.data.task.ephemeral_storage #=> Types::EphemeralStorage
    #
    def stop_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopTaskInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopTask
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterNotFoundException, Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::StopTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopTask,
        stubs: @stubs,
        params_class: Params::StopTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent.</p>
    #          </note>
    # 		       <p>Sent to acknowledge that an attachment changed states.</p>
    #
    # @param [Hash] params
    #   See {Types::SubmitAttachmentStateChangesInput}.
    #
    # @option params [String] :cluster
    #   <p>The short name or full ARN of the cluster that hosts the container instance the
    #   			attachment belongs to.</p>
    #
    # @option params [Array<AttachmentStateChange>] :attachments
    #   <p>Any attachments associated with the state change request.</p>
    #
    # @return [Types::SubmitAttachmentStateChangesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.submit_attachment_state_changes(
    #     cluster: 'cluster',
    #     attachments: [
    #       {
    #         attachment_arn: 'attachmentArn', # required
    #         status: 'status' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SubmitAttachmentStateChangesOutput
    #   resp.data.acknowledgment #=> String
    #
    def submit_attachment_state_changes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SubmitAttachmentStateChangesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SubmitAttachmentStateChangesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SubmitAttachmentStateChanges
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::SubmitAttachmentStateChanges
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SubmitAttachmentStateChanges,
        stubs: @stubs,
        params_class: Params::SubmitAttachmentStateChangesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :submit_attachment_state_changes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent.</p>
    #          </note>
    # 		       <p>Sent to acknowledge that a container changed states.</p>
    #
    # @param [Hash] params
    #   See {Types::SubmitContainerStateChangeInput}.
    #
    # @option params [String] :cluster
    #   <p>The short name or full ARN of the cluster that hosts the container.</p>
    #
    # @option params [String] :task
    #   <p>The task ID or full Amazon Resource Name (ARN) of the task that hosts the container.</p>
    #
    # @option params [String] :container_name
    #   <p>The name of the container.</p>
    #
    # @option params [String] :runtime_id
    #   <p>The ID of the Docker container.</p>
    #
    # @option params [String] :status
    #   <p>The status of the state change request.</p>
    #
    # @option params [Integer] :exit_code
    #   <p>The exit code that's returned for the state change request.</p>
    #
    # @option params [String] :reason
    #   <p>The reason for the state change request.</p>
    #
    # @option params [Array<NetworkBinding>] :network_bindings
    #   <p>The network bindings of the container.</p>
    #
    # @return [Types::SubmitContainerStateChangeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.submit_container_state_change(
    #     cluster: 'cluster',
    #     task: 'task',
    #     container_name: 'containerName',
    #     runtime_id: 'runtimeId',
    #     status: 'status',
    #     exit_code: 1,
    #     reason: 'reason',
    #     network_bindings: [
    #       {
    #         bind_ip: 'bindIP',
    #         container_port: 1,
    #         host_port: 1,
    #         protocol: 'tcp' # accepts ["tcp", "udp"]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SubmitContainerStateChangeOutput
    #   resp.data.acknowledgment #=> String
    #
    def submit_container_state_change(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SubmitContainerStateChangeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SubmitContainerStateChangeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SubmitContainerStateChange
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ServerException, Errors::ClientException]),
        data_parser: Parsers::SubmitContainerStateChange
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SubmitContainerStateChange,
        stubs: @stubs,
        params_class: Params::SubmitContainerStateChangeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :submit_container_state_change
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent.</p>
    #          </note>
    # 		       <p>Sent to acknowledge that a task changed states.</p>
    #
    # @param [Hash] params
    #   See {Types::SubmitTaskStateChangeInput}.
    #
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the task.</p>
    #
    # @option params [String] :task
    #   <p>The task ID or full ARN of the task in the state change request.</p>
    #
    # @option params [String] :status
    #   <p>The status of the state change request.</p>
    #
    # @option params [String] :reason
    #   <p>The reason for the state change request.</p>
    #
    # @option params [Array<ContainerStateChange>] :containers
    #   <p>Any containers that's associated with the state change request.</p>
    #
    # @option params [Array<AttachmentStateChange>] :attachments
    #   <p>Any attachments associated with the state change request.</p>
    #
    # @option params [Array<ManagedAgentStateChange>] :managed_agents
    #   <p>The details for the managed agent that's associated with the task.</p>
    #
    # @option params [Time] :pull_started_at
    #   <p>The Unix timestamp for the time when the container image pull started.</p>
    #
    # @option params [Time] :pull_stopped_at
    #   <p>The Unix timestamp for the time when the container image pull completed.</p>
    #
    # @option params [Time] :execution_stopped_at
    #   <p>The Unix timestamp for the time when the task execution stopped.</p>
    #
    # @return [Types::SubmitTaskStateChangeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.submit_task_state_change(
    #     cluster: 'cluster',
    #     task: 'task',
    #     status: 'status',
    #     reason: 'reason',
    #     containers: [
    #       {
    #         container_name: 'containerName',
    #         image_digest: 'imageDigest',
    #         runtime_id: 'runtimeId',
    #         exit_code: 1,
    #         network_bindings: [
    #           {
    #             bind_ip: 'bindIP',
    #             container_port: 1,
    #             host_port: 1,
    #             protocol: 'tcp' # accepts ["tcp", "udp"]
    #           }
    #         ],
    #         reason: 'reason',
    #         status: 'status'
    #       }
    #     ],
    #     attachments: [
    #       {
    #         attachment_arn: 'attachmentArn', # required
    #         status: 'status' # required
    #       }
    #     ],
    #     managed_agents: [
    #       {
    #         container_name: 'containerName', # required
    #         managed_agent_name: 'ExecuteCommandAgent', # required - accepts ["ExecuteCommandAgent"]
    #         status: 'status', # required
    #         reason: 'reason'
    #       }
    #     ],
    #     pull_started_at: Time.now,
    #     pull_stopped_at: Time.now,
    #     execution_stopped_at: Time.now
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SubmitTaskStateChangeOutput
    #   resp.data.acknowledgment #=> String
    #
    def submit_task_state_change(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SubmitTaskStateChangeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SubmitTaskStateChangeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SubmitTaskStateChange
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::SubmitTaskStateChange
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SubmitTaskStateChange,
        stubs: @stubs,
        params_class: Params::SubmitTaskStateChangeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :submit_task_state_change
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates the specified tags to a resource with the specified
    # 				<code>resourceArn</code>. If existing tags on a resource aren't specified in the
    # 			request parameters, they aren't changed. When a resource is deleted, the tags that are
    # 			associated with that resource are deleted as well.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to add tags to. Currently, the supported resources are
    #   			Amazon ECS capacity providers, tasks, services, task definitions, clusters, and container
    #   			instances.</p>
    #
    # @option params [Array<Tag>] :tags
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
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tags: [
    #       {
    #         key: 'key',
    #         value: 'value'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TagResourceOutput
    #
    def tag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ClusterNotFoundException, Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::TagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TagResource,
        stubs: @stubs,
        params_class: Params::TagResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :tag_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes specified tags from a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to delete tags from. Currently, the supported resources
    #   			are Amazon ECS capacity providers, tasks, services, task definitions, clusters, and container
    #   			instances.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to be removed.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UntagResourceOutput
    #
    def untag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ClusterNotFoundException, Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::UntagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UntagResource,
        stubs: @stubs,
        params_class: Params::UntagResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :untag_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the parameters for a capacity provider.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateCapacityProviderInput}.
    #
    # @option params [String] :name
    #   <p>The name of the capacity provider to update.</p>
    #
    # @option params [AutoScalingGroupProviderUpdate] :auto_scaling_group_provider
    #   <p>An object that represent the parameters to update for the Auto Scaling group capacity
    #   			provider.</p>
    #
    # @return [Types::UpdateCapacityProviderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_capacity_provider(
    #     name: 'name', # required
    #     auto_scaling_group_provider: {
    #       managed_scaling: {
    #         status: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #         target_capacity: 1,
    #         minimum_scaling_step_size: 1,
    #         maximum_scaling_step_size: 1,
    #         instance_warmup_period: 1
    #       },
    #       managed_termination_protection: 'ENABLED' # accepts ["ENABLED", "DISABLED"]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateCapacityProviderOutput
    #   resp.data.capacity_provider #=> Types::CapacityProvider
    #   resp.data.capacity_provider.capacity_provider_arn #=> String
    #   resp.data.capacity_provider.name #=> String
    #   resp.data.capacity_provider.status #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.capacity_provider.auto_scaling_group_provider #=> Types::AutoScalingGroupProvider
    #   resp.data.capacity_provider.auto_scaling_group_provider.auto_scaling_group_arn #=> String
    #   resp.data.capacity_provider.auto_scaling_group_provider.managed_scaling #=> Types::ManagedScaling
    #   resp.data.capacity_provider.auto_scaling_group_provider.managed_scaling.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.capacity_provider.auto_scaling_group_provider.managed_scaling.target_capacity #=> Integer
    #   resp.data.capacity_provider.auto_scaling_group_provider.managed_scaling.minimum_scaling_step_size #=> Integer
    #   resp.data.capacity_provider.auto_scaling_group_provider.managed_scaling.maximum_scaling_step_size #=> Integer
    #   resp.data.capacity_provider.auto_scaling_group_provider.managed_scaling.instance_warmup_period #=> Integer
    #   resp.data.capacity_provider.auto_scaling_group_provider.managed_termination_protection #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.capacity_provider.update_status #=> String, one of ["DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED"]
    #   resp.data.capacity_provider.update_status_reason #=> String
    #   resp.data.capacity_provider.tags #=> Array<Tag>
    #   resp.data.capacity_provider.tags[0] #=> Types::Tag
    #   resp.data.capacity_provider.tags[0].key #=> String
    #   resp.data.capacity_provider.tags[0].value #=> String
    #
    def update_capacity_provider(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateCapacityProviderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateCapacityProviderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateCapacityProvider
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::UpdateCapacityProvider
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateCapacityProvider,
        stubs: @stubs,
        params_class: Params::UpdateCapacityProviderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_capacity_provider
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateClusterInput}.
    #
    # @option params [String] :cluster
    #   <p>The name of the cluster to modify the settings for.</p>
    #
    # @option params [Array<ClusterSetting>] :settings
    #   <p>The cluster settings for your cluster.</p>
    #
    # @option params [ClusterConfiguration] :configuration
    #   <p>The execute command configuration for the cluster.</p>
    #
    # @return [Types::UpdateClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cluster(
    #     cluster: 'cluster', # required
    #     settings: [
    #       {
    #         name: 'containerInsights', # accepts ["containerInsights"]
    #         value: 'value'
    #       }
    #     ],
    #     configuration: {
    #       execute_command_configuration: {
    #         kms_key_id: 'kmsKeyId',
    #         logging: 'NONE', # accepts ["NONE", "DEFAULT", "OVERRIDE"]
    #         log_configuration: {
    #           cloud_watch_log_group_name: 'cloudWatchLogGroupName',
    #           cloud_watch_encryption_enabled: false,
    #           s3_bucket_name: 's3BucketName',
    #           s3_encryption_enabled: false,
    #           s3_key_prefix: 's3KeyPrefix'
    #         }
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateClusterOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.cluster_arn #=> String
    #   resp.data.cluster.cluster_name #=> String
    #   resp.data.cluster.configuration #=> Types::ClusterConfiguration
    #   resp.data.cluster.configuration.execute_command_configuration #=> Types::ExecuteCommandConfiguration
    #   resp.data.cluster.configuration.execute_command_configuration.kms_key_id #=> String
    #   resp.data.cluster.configuration.execute_command_configuration.logging #=> String, one of ["NONE", "DEFAULT", "OVERRIDE"]
    #   resp.data.cluster.configuration.execute_command_configuration.log_configuration #=> Types::ExecuteCommandLogConfiguration
    #   resp.data.cluster.configuration.execute_command_configuration.log_configuration.cloud_watch_log_group_name #=> String
    #   resp.data.cluster.configuration.execute_command_configuration.log_configuration.cloud_watch_encryption_enabled #=> Boolean
    #   resp.data.cluster.configuration.execute_command_configuration.log_configuration.s3_bucket_name #=> String
    #   resp.data.cluster.configuration.execute_command_configuration.log_configuration.s3_encryption_enabled #=> Boolean
    #   resp.data.cluster.configuration.execute_command_configuration.log_configuration.s3_key_prefix #=> String
    #   resp.data.cluster.status #=> String
    #   resp.data.cluster.registered_container_instances_count #=> Integer
    #   resp.data.cluster.running_tasks_count #=> Integer
    #   resp.data.cluster.pending_tasks_count #=> Integer
    #   resp.data.cluster.active_services_count #=> Integer
    #   resp.data.cluster.statistics #=> Array<KeyValuePair>
    #   resp.data.cluster.statistics[0] #=> Types::KeyValuePair
    #   resp.data.cluster.statistics[0].name #=> String
    #   resp.data.cluster.statistics[0].value #=> String
    #   resp.data.cluster.tags #=> Array<Tag>
    #   resp.data.cluster.tags[0] #=> Types::Tag
    #   resp.data.cluster.tags[0].key #=> String
    #   resp.data.cluster.tags[0].value #=> String
    #   resp.data.cluster.settings #=> Array<ClusterSetting>
    #   resp.data.cluster.settings[0] #=> Types::ClusterSetting
    #   resp.data.cluster.settings[0].name #=> String, one of ["containerInsights"]
    #   resp.data.cluster.settings[0].value #=> String
    #   resp.data.cluster.capacity_providers #=> Array<String>
    #   resp.data.cluster.capacity_providers[0] #=> String
    #   resp.data.cluster.default_capacity_provider_strategy #=> Array<CapacityProviderStrategyItem>
    #   resp.data.cluster.default_capacity_provider_strategy[0] #=> Types::CapacityProviderStrategyItem
    #   resp.data.cluster.default_capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.data.cluster.default_capacity_provider_strategy[0].weight #=> Integer
    #   resp.data.cluster.default_capacity_provider_strategy[0].base #=> Integer
    #   resp.data.cluster.attachments #=> Array<Attachment>
    #   resp.data.cluster.attachments[0] #=> Types::Attachment
    #   resp.data.cluster.attachments[0].id #=> String
    #   resp.data.cluster.attachments[0].type #=> String
    #   resp.data.cluster.attachments[0].status #=> String
    #   resp.data.cluster.attachments[0].details #=> Array<KeyValuePair>
    #   resp.data.cluster.attachments_status #=> String
    #
    def update_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateClusterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateCluster
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterNotFoundException, Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::UpdateCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateCluster,
        stubs: @stubs,
        params_class: Params::UpdateClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the settings to use for a cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateClusterSettingsInput}.
    #
    # @option params [String] :cluster
    #   <p>The name of the cluster to modify the settings for.</p>
    #
    # @option params [Array<ClusterSetting>] :settings
    #   <p>The setting to use by default for a cluster. This parameter is used to turn on CloudWatch
    #   			Container Insights for a cluster. If this value is specified, it overrides the
    #   				<code>containerInsights</code> value set with <a>PutAccountSetting</a> or
    #   				<a>PutAccountSettingDefault</a>.</p>
    #
    # @return [Types::UpdateClusterSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cluster_settings(
    #     cluster: 'cluster', # required
    #     settings: [
    #       {
    #         name: 'containerInsights', # accepts ["containerInsights"]
    #         value: 'value'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateClusterSettingsOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.cluster_arn #=> String
    #   resp.data.cluster.cluster_name #=> String
    #   resp.data.cluster.configuration #=> Types::ClusterConfiguration
    #   resp.data.cluster.configuration.execute_command_configuration #=> Types::ExecuteCommandConfiguration
    #   resp.data.cluster.configuration.execute_command_configuration.kms_key_id #=> String
    #   resp.data.cluster.configuration.execute_command_configuration.logging #=> String, one of ["NONE", "DEFAULT", "OVERRIDE"]
    #   resp.data.cluster.configuration.execute_command_configuration.log_configuration #=> Types::ExecuteCommandLogConfiguration
    #   resp.data.cluster.configuration.execute_command_configuration.log_configuration.cloud_watch_log_group_name #=> String
    #   resp.data.cluster.configuration.execute_command_configuration.log_configuration.cloud_watch_encryption_enabled #=> Boolean
    #   resp.data.cluster.configuration.execute_command_configuration.log_configuration.s3_bucket_name #=> String
    #   resp.data.cluster.configuration.execute_command_configuration.log_configuration.s3_encryption_enabled #=> Boolean
    #   resp.data.cluster.configuration.execute_command_configuration.log_configuration.s3_key_prefix #=> String
    #   resp.data.cluster.status #=> String
    #   resp.data.cluster.registered_container_instances_count #=> Integer
    #   resp.data.cluster.running_tasks_count #=> Integer
    #   resp.data.cluster.pending_tasks_count #=> Integer
    #   resp.data.cluster.active_services_count #=> Integer
    #   resp.data.cluster.statistics #=> Array<KeyValuePair>
    #   resp.data.cluster.statistics[0] #=> Types::KeyValuePair
    #   resp.data.cluster.statistics[0].name #=> String
    #   resp.data.cluster.statistics[0].value #=> String
    #   resp.data.cluster.tags #=> Array<Tag>
    #   resp.data.cluster.tags[0] #=> Types::Tag
    #   resp.data.cluster.tags[0].key #=> String
    #   resp.data.cluster.tags[0].value #=> String
    #   resp.data.cluster.settings #=> Array<ClusterSetting>
    #   resp.data.cluster.settings[0] #=> Types::ClusterSetting
    #   resp.data.cluster.settings[0].name #=> String, one of ["containerInsights"]
    #   resp.data.cluster.settings[0].value #=> String
    #   resp.data.cluster.capacity_providers #=> Array<String>
    #   resp.data.cluster.capacity_providers[0] #=> String
    #   resp.data.cluster.default_capacity_provider_strategy #=> Array<CapacityProviderStrategyItem>
    #   resp.data.cluster.default_capacity_provider_strategy[0] #=> Types::CapacityProviderStrategyItem
    #   resp.data.cluster.default_capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.data.cluster.default_capacity_provider_strategy[0].weight #=> Integer
    #   resp.data.cluster.default_capacity_provider_strategy[0].base #=> Integer
    #   resp.data.cluster.attachments #=> Array<Attachment>
    #   resp.data.cluster.attachments[0] #=> Types::Attachment
    #   resp.data.cluster.attachments[0].id #=> String
    #   resp.data.cluster.attachments[0].type #=> String
    #   resp.data.cluster.attachments[0].status #=> String
    #   resp.data.cluster.attachments[0].details #=> Array<KeyValuePair>
    #   resp.data.cluster.attachments_status #=> String
    #
    def update_cluster_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateClusterSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateClusterSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateClusterSettings
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterNotFoundException, Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::UpdateClusterSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateClusterSettings,
        stubs: @stubs,
        params_class: Params::UpdateClusterSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_cluster_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the Amazon ECS container agent on a specified container instance. Updating the
    # 			Amazon ECS container agent doesn't interrupt running tasks or services on the container
    # 			instance. The process for updating the agent differs depending on whether your container
    # 			instance was launched with the Amazon ECS-optimized AMI or another operating system.</p>
    # 		       <note>
    # 			         <p>The <code>UpdateContainerAgent</code> API isn't supported for container instances
    # 				using the Amazon ECS-optimized Amazon Linux 2 (arm64) AMI. To update the container agent,
    # 				you can update the <code>ecs-init</code> package. This updates the agent. For more
    # 				information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/agent-update-ecs-ami.html">Updating the
    # 					Amazon ECS container agent</a> in the
    # 				<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # 		       </note>
    # 		       <p>The <code>UpdateContainerAgent</code> API requires an Amazon ECS-optimized AMI or Amazon
    # 			Linux AMI with the <code>ecs-init</code> service installed and running. For help
    # 			updating the Amazon ECS container agent on other operating systems, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html#manually_update_agent">Manually updating the Amazon ECS container agent</a> in the
    # 				<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateContainerAgentInput}.
    #
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that your container instance is
    #   			running on. If you do not specify a cluster, the default cluster is assumed.</p>
    #
    # @option params [String] :container_instance
    #   <p>The container instance ID or full ARN entries for the container instance where you
    #   			would like to update the Amazon ECS container agent.</p>
    #
    # @return [Types::UpdateContainerAgentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_container_agent(
    #     cluster: 'cluster',
    #     container_instance: 'containerInstance' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateContainerAgentOutput
    #   resp.data.container_instance #=> Types::ContainerInstance
    #   resp.data.container_instance.container_instance_arn #=> String
    #   resp.data.container_instance.ec2_instance_id #=> String
    #   resp.data.container_instance.capacity_provider_name #=> String
    #   resp.data.container_instance.version #=> Integer
    #   resp.data.container_instance.version_info #=> Types::VersionInfo
    #   resp.data.container_instance.version_info.agent_version #=> String
    #   resp.data.container_instance.version_info.agent_hash #=> String
    #   resp.data.container_instance.version_info.docker_version #=> String
    #   resp.data.container_instance.remaining_resources #=> Array<Resource>
    #   resp.data.container_instance.remaining_resources[0] #=> Types::Resource
    #   resp.data.container_instance.remaining_resources[0].name #=> String
    #   resp.data.container_instance.remaining_resources[0].type #=> String
    #   resp.data.container_instance.remaining_resources[0].double_value #=> Float
    #   resp.data.container_instance.remaining_resources[0].long_value #=> Integer
    #   resp.data.container_instance.remaining_resources[0].integer_value #=> Integer
    #   resp.data.container_instance.remaining_resources[0].string_set_value #=> Array<String>
    #   resp.data.container_instance.remaining_resources[0].string_set_value[0] #=> String
    #   resp.data.container_instance.registered_resources #=> Array<Resource>
    #   resp.data.container_instance.status #=> String
    #   resp.data.container_instance.status_reason #=> String
    #   resp.data.container_instance.agent_connected #=> Boolean
    #   resp.data.container_instance.running_tasks_count #=> Integer
    #   resp.data.container_instance.pending_tasks_count #=> Integer
    #   resp.data.container_instance.agent_update_status #=> String, one of ["PENDING", "STAGING", "STAGED", "UPDATING", "UPDATED", "FAILED"]
    #   resp.data.container_instance.attributes #=> Array<Attribute>
    #   resp.data.container_instance.attributes[0] #=> Types::Attribute
    #   resp.data.container_instance.attributes[0].name #=> String
    #   resp.data.container_instance.attributes[0].value #=> String
    #   resp.data.container_instance.attributes[0].target_type #=> String, one of ["container-instance"]
    #   resp.data.container_instance.attributes[0].target_id #=> String
    #   resp.data.container_instance.registered_at #=> Time
    #   resp.data.container_instance.attachments #=> Array<Attachment>
    #   resp.data.container_instance.attachments[0] #=> Types::Attachment
    #   resp.data.container_instance.attachments[0].id #=> String
    #   resp.data.container_instance.attachments[0].type #=> String
    #   resp.data.container_instance.attachments[0].status #=> String
    #   resp.data.container_instance.attachments[0].details #=> Array<KeyValuePair>
    #   resp.data.container_instance.attachments[0].details[0] #=> Types::KeyValuePair
    #   resp.data.container_instance.attachments[0].details[0].name #=> String
    #   resp.data.container_instance.attachments[0].details[0].value #=> String
    #   resp.data.container_instance.tags #=> Array<Tag>
    #   resp.data.container_instance.tags[0] #=> Types::Tag
    #   resp.data.container_instance.tags[0].key #=> String
    #   resp.data.container_instance.tags[0].value #=> String
    #   resp.data.container_instance.health_status #=> Types::ContainerInstanceHealthStatus
    #   resp.data.container_instance.health_status.overall_status #=> String, one of ["OK", "IMPAIRED", "INSUFFICIENT_DATA", "INITIALIZING"]
    #   resp.data.container_instance.health_status.details #=> Array<InstanceHealthCheckResult>
    #   resp.data.container_instance.health_status.details[0] #=> Types::InstanceHealthCheckResult
    #   resp.data.container_instance.health_status.details[0].type #=> String, one of ["CONTAINER_RUNTIME"]
    #   resp.data.container_instance.health_status.details[0].status #=> String, one of ["OK", "IMPAIRED", "INSUFFICIENT_DATA", "INITIALIZING"]
    #   resp.data.container_instance.health_status.details[0].last_updated #=> Time
    #   resp.data.container_instance.health_status.details[0].last_status_change #=> Time
    #
    def update_container_agent(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateContainerAgentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateContainerAgentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateContainerAgent
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterNotFoundException, Errors::MissingVersionException, Errors::NoUpdateAvailableException, Errors::ServerException, Errors::UpdateInProgressException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::UpdateContainerAgent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateContainerAgent,
        stubs: @stubs,
        params_class: Params::UpdateContainerAgentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_container_agent
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the status of an Amazon ECS container instance.</p>
    # 		       <p>Once a container instance has reached an <code>ACTIVE</code> state, you can change the
    # 			status of a container instance to <code>DRAINING</code> to manually remove an instance
    # 			from a cluster, for example to perform system updates, update the Docker daemon, or
    # 			scale down the cluster size.</p>
    # 		       <important>
    # 			         <p>A container instance can't be changed to <code>DRAINING</code> until it has
    # 				reached an <code>ACTIVE</code> status. If the instance is in any other status, an
    # 				error will be received.</p>
    # 		       </important>
    # 		       <p>When you set a container instance to <code>DRAINING</code>, Amazon ECS prevents new tasks
    # 			from being scheduled for placement on the container instance and replacement service
    # 			tasks are started on other container instances in the cluster if the resources are
    # 			available. Service tasks on the container instance that are in the <code>PENDING</code>
    # 			state are stopped immediately.</p>
    # 		       <p>Service tasks on the container instance that are in the <code>RUNNING</code> state are
    # 			stopped and replaced according to the service's deployment configuration parameters,
    # 				<code>minimumHealthyPercent</code> and <code>maximumPercent</code>. You can change
    # 			the deployment configuration of your service using <a>UpdateService</a>.</p>
    # 		       <ul>
    #             <li>
    # 				           <p>If <code>minimumHealthyPercent</code> is below 100%, the scheduler can ignore
    # 						<code>desiredCount</code> temporarily during task replacement. For example,
    # 						<code>desiredCount</code> is four tasks, a minimum of 50% allows the
    # 					scheduler to stop two existing tasks before starting two new tasks. If the
    # 					minimum is 100%, the service scheduler can't remove existing tasks until the
    # 					replacement tasks are considered healthy. Tasks for services that do not use a
    # 					load balancer are considered healthy if they're in the <code>RUNNING</code>
    # 					state. Tasks for services that use a load balancer are considered healthy if
    # 					they're in the <code>RUNNING</code> state and are reported as healthy by the
    # 					load balancer.</p>
    # 			         </li>
    #             <li>
    # 				           <p>The <code>maximumPercent</code> parameter represents an upper limit on the
    # 					number of running tasks during task replacement. You can use this to define the
    # 					replacement batch size. For example, if <code>desiredCount</code> is four tasks,
    # 					a maximum of 200% starts four new tasks before stopping the four tasks to be
    # 					drained, provided that the cluster resources required to do this are available.
    # 					If the maximum is 100%, then replacement tasks can't start until the draining
    # 					tasks have stopped.</p>
    # 			         </li>
    #          </ul>
    # 		       <p>Any <code>PENDING</code> or <code>RUNNING</code> tasks that do not belong to a service
    # 			aren't affected. You must wait for them to finish or stop them manually.</p>
    # 		       <p>A container instance has completed draining when it has no more <code>RUNNING</code>
    # 			tasks. You can verify this using <a>ListTasks</a>.</p>
    # 		       <p>When a container instance has been drained, you can set a container instance to
    # 				<code>ACTIVE</code> status and once it has reached that status the Amazon ECS scheduler
    # 			can begin scheduling tasks on the instance again.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateContainerInstancesStateInput}.
    #
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instance to
    #   			update. If you do not specify a cluster, the default cluster is assumed.</p>
    #
    # @option params [Array<String>] :container_instances
    #   <p>A list of up to 10 container instance IDs or full ARN entries.</p>
    #
    # @option params [String] :status
    #   <p>The container instance state to update the container instance with. The only valid
    #   			values for this action are <code>ACTIVE</code> and <code>DRAINING</code>. A container
    #   			instance can only be updated to <code>DRAINING</code> status once it has reached an
    #   				<code>ACTIVE</code> state. If a container instance is in <code>REGISTERING</code>,
    #   				<code>DEREGISTERING</code>, or <code>REGISTRATION_FAILED</code> state you can
    #   			describe the container instance but can't update the container instance state.</p>
    #
    # @return [Types::UpdateContainerInstancesStateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_container_instances_state(
    #     cluster: 'cluster',
    #     container_instances: [
    #       'member'
    #     ], # required
    #     status: 'ACTIVE' # required - accepts ["ACTIVE", "DRAINING", "REGISTERING", "DEREGISTERING", "REGISTRATION_FAILED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateContainerInstancesStateOutput
    #   resp.data.container_instances #=> Array<ContainerInstance>
    #   resp.data.container_instances[0] #=> Types::ContainerInstance
    #   resp.data.container_instances[0].container_instance_arn #=> String
    #   resp.data.container_instances[0].ec2_instance_id #=> String
    #   resp.data.container_instances[0].capacity_provider_name #=> String
    #   resp.data.container_instances[0].version #=> Integer
    #   resp.data.container_instances[0].version_info #=> Types::VersionInfo
    #   resp.data.container_instances[0].version_info.agent_version #=> String
    #   resp.data.container_instances[0].version_info.agent_hash #=> String
    #   resp.data.container_instances[0].version_info.docker_version #=> String
    #   resp.data.container_instances[0].remaining_resources #=> Array<Resource>
    #   resp.data.container_instances[0].remaining_resources[0] #=> Types::Resource
    #   resp.data.container_instances[0].remaining_resources[0].name #=> String
    #   resp.data.container_instances[0].remaining_resources[0].type #=> String
    #   resp.data.container_instances[0].remaining_resources[0].double_value #=> Float
    #   resp.data.container_instances[0].remaining_resources[0].long_value #=> Integer
    #   resp.data.container_instances[0].remaining_resources[0].integer_value #=> Integer
    #   resp.data.container_instances[0].remaining_resources[0].string_set_value #=> Array<String>
    #   resp.data.container_instances[0].remaining_resources[0].string_set_value[0] #=> String
    #   resp.data.container_instances[0].registered_resources #=> Array<Resource>
    #   resp.data.container_instances[0].status #=> String
    #   resp.data.container_instances[0].status_reason #=> String
    #   resp.data.container_instances[0].agent_connected #=> Boolean
    #   resp.data.container_instances[0].running_tasks_count #=> Integer
    #   resp.data.container_instances[0].pending_tasks_count #=> Integer
    #   resp.data.container_instances[0].agent_update_status #=> String, one of ["PENDING", "STAGING", "STAGED", "UPDATING", "UPDATED", "FAILED"]
    #   resp.data.container_instances[0].attributes #=> Array<Attribute>
    #   resp.data.container_instances[0].attributes[0] #=> Types::Attribute
    #   resp.data.container_instances[0].attributes[0].name #=> String
    #   resp.data.container_instances[0].attributes[0].value #=> String
    #   resp.data.container_instances[0].attributes[0].target_type #=> String, one of ["container-instance"]
    #   resp.data.container_instances[0].attributes[0].target_id #=> String
    #   resp.data.container_instances[0].registered_at #=> Time
    #   resp.data.container_instances[0].attachments #=> Array<Attachment>
    #   resp.data.container_instances[0].attachments[0] #=> Types::Attachment
    #   resp.data.container_instances[0].attachments[0].id #=> String
    #   resp.data.container_instances[0].attachments[0].type #=> String
    #   resp.data.container_instances[0].attachments[0].status #=> String
    #   resp.data.container_instances[0].attachments[0].details #=> Array<KeyValuePair>
    #   resp.data.container_instances[0].attachments[0].details[0] #=> Types::KeyValuePair
    #   resp.data.container_instances[0].attachments[0].details[0].name #=> String
    #   resp.data.container_instances[0].attachments[0].details[0].value #=> String
    #   resp.data.container_instances[0].tags #=> Array<Tag>
    #   resp.data.container_instances[0].tags[0] #=> Types::Tag
    #   resp.data.container_instances[0].tags[0].key #=> String
    #   resp.data.container_instances[0].tags[0].value #=> String
    #   resp.data.container_instances[0].health_status #=> Types::ContainerInstanceHealthStatus
    #   resp.data.container_instances[0].health_status.overall_status #=> String, one of ["OK", "IMPAIRED", "INSUFFICIENT_DATA", "INITIALIZING"]
    #   resp.data.container_instances[0].health_status.details #=> Array<InstanceHealthCheckResult>
    #   resp.data.container_instances[0].health_status.details[0] #=> Types::InstanceHealthCheckResult
    #   resp.data.container_instances[0].health_status.details[0].type #=> String, one of ["CONTAINER_RUNTIME"]
    #   resp.data.container_instances[0].health_status.details[0].status #=> String, one of ["OK", "IMPAIRED", "INSUFFICIENT_DATA", "INITIALIZING"]
    #   resp.data.container_instances[0].health_status.details[0].last_updated #=> Time
    #   resp.data.container_instances[0].health_status.details[0].last_status_change #=> Time
    #   resp.data.failures #=> Array<Failure>
    #   resp.data.failures[0] #=> Types::Failure
    #   resp.data.failures[0].arn #=> String
    #   resp.data.failures[0].reason #=> String
    #   resp.data.failures[0].detail #=> String
    #
    def update_container_instances_state(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateContainerInstancesStateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateContainerInstancesStateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateContainerInstancesState
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClusterNotFoundException, Errors::ServerException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::UpdateContainerInstancesState
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateContainerInstancesState,
        stubs: @stubs,
        params_class: Params::UpdateContainerInstancesStateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_container_instances_state
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <important>
    # 			         <p>Updating the task placement strategies and constraints on an Amazon ECS service remains
    # 				in preview and is a Beta Service as defined by and subject to the Beta Service
    # 				Participation Service Terms located at <a href="https://aws.amazon.com/service-terms">https://aws.amazon.com/service-terms</a> ("Beta Terms"). These Beta Terms
    # 				apply to your participation in this preview.</p>
    # 		       </important>
    # 		       <p>Modifies the parameters of a service.</p>
    # 		       <p>For services using the rolling update (<code>ECS</code>) you can update the desired count,
    # 			deployment configuration, network configuration, load balancers, service registries,
    # 			enable ECS managed tags option, propagate tags option, task placement constraints and
    # 			strategies, and task definition. When you update any of these parameters, Amazon ECS starts
    # 			new tasks with the new configuration. </p>
    # 		       <p>For services using the blue/green (<code>CODE_DEPLOY</code>) deployment controller, only the
    # 			desired count, deployment configuration, health check grace period, task placement
    # 			constraints and strategies, enable ECS managed tags option, and propagate tags can be
    # 			updated using this API. If the network configuration, platform version, task definition,
    # 			or load balancer need to be updated, create a new CodeDeploy deployment. For more
    # 			information, see <a href="https://docs.aws.amazon.com/codedeploy/latest/APIReference/API_CreateDeployment.html">CreateDeployment</a> in the <i>CodeDeploy API Reference</i>.</p>
    # 		       <p>For services using an external deployment controller, you can update only the desired count,
    # 			task placement constraints and strategies, health check grace period, enable ECS managed
    # 			tags option, and propagate tags option, using this API. If the launch type, load
    # 			balancer, network configuration, platform version, or task definition need to be
    # 			updated, create a new task set For more information, see <a>CreateTaskSet</a>.</p>
    # 		       <p>You can add to or subtract from the number of instantiations of a task definition in a
    # 			service by specifying the cluster that the service is running in and a new
    # 				<code>desiredCount</code> parameter.</p>
    # 		       <p>If you have updated the Docker image of your application, you can create a new task
    # 			definition with that image and deploy it to your service. The service scheduler uses the
    # 			minimum healthy percent and maximum percent parameters (in the service's deployment
    # 			configuration) to determine the deployment strategy.</p>
    # 		       <note>
    # 			         <p>If your updated Docker image uses the same tag as what is in the existing task
    # 				definition for your service (for example, <code>my_image:latest</code>), you don't
    # 				need to create a new revision of your task definition. You can update the service
    # 				using the <code>forceNewDeployment</code> option. The new tasks launched by the
    # 				deployment pull the current image/tag combination from your repository when they
    # 				start.</p>
    # 		       </note>
    # 		       <p>You can also update the deployment configuration of a service. When a deployment is
    # 			triggered by updating the task definition of a service, the service scheduler uses the
    # 			deployment configuration parameters, <code>minimumHealthyPercent</code> and
    # 				<code>maximumPercent</code>, to determine the deployment strategy.</p>
    # 		       <ul>
    #             <li>
    # 				           <p>If <code>minimumHealthyPercent</code> is below 100%, the scheduler can ignore
    # 						<code>desiredCount</code> temporarily during a deployment. For example, if
    # 						<code>desiredCount</code> is four tasks, a minimum of 50% allows the
    # 					scheduler to stop two existing tasks before starting two new tasks. Tasks for
    # 					services that don't use a load balancer are considered healthy if they're in the
    # 						<code>RUNNING</code> state. Tasks for services that use a load balancer are
    # 					considered healthy if they're in the <code>RUNNING</code> state and are reported
    # 					as healthy by the load balancer.</p>
    # 			         </li>
    #             <li>
    # 				           <p>The <code>maximumPercent</code> parameter represents an upper limit on the
    # 					number of running tasks during a deployment. You can use it to define the
    # 					deployment batch size. For example, if <code>desiredCount</code> is four tasks,
    # 					a maximum of 200% starts four new tasks before stopping the four older tasks
    # 					(provided that the cluster resources required to do this are available).</p>
    # 			         </li>
    #          </ul>
    # 		       <p>When <a>UpdateService</a> stops a task during a deployment, the equivalent
    # 			of <code>docker stop</code> is issued to the containers running in the task. This
    # 			results in a <code>SIGTERM</code> and a 30-second timeout. After this,
    # 				<code>SIGKILL</code> is sent and the containers are forcibly stopped. If the
    # 			container handles the <code>SIGTERM</code> gracefully and exits within 30 seconds from
    # 			receiving it, no <code>SIGKILL</code> is sent.</p>
    # 		       <p>When the service scheduler launches new tasks, it determines task placement in your
    # 			cluster with the following logic.</p>
    # 		       <ul>
    #             <li>
    # 				           <p>Determine which of the container instances in your cluster can support your
    # 					service's task definition. For example, they have the required CPU, memory,
    # 					ports, and container instance attributes.</p>
    # 			         </li>
    #             <li>
    # 				           <p>By default, the service scheduler attempts to balance tasks across
    # 					Availability Zones in this manner even though you can choose a different
    # 					placement strategy.</p>
    # 				           <ul>
    #                   <li>
    # 						               <p>Sort the valid container instances by the fewest number of running
    # 							tasks for this service in the same Availability Zone as the instance.
    # 							For example, if zone A has one running service task and zones B and C
    # 							each have zero, valid container instances in either zone B or C are
    # 							considered optimal for placement.</p>
    # 					             </li>
    #                   <li>
    # 						               <p>Place the new service task on a valid container instance in an optimal
    # 							Availability Zone (based on the previous steps), favoring container
    # 							instances with the fewest number of running tasks for this
    # 							service.</p>
    # 					             </li>
    #                </ul>
    # 			         </li>
    #          </ul>
    # 		
    # 		       <p>When the service scheduler stops running tasks, it attempts to maintain balance across
    # 			the Availability Zones in your cluster using the following logic: </p>
    # 		       <ul>
    #             <li>
    # 				           <p>Sort the container instances by the largest number of running tasks for this
    # 					service in the same Availability Zone as the instance. For example, if zone A
    # 					has one running service task and zones B and C each have two, container
    # 					instances in either zone B or C are considered optimal for termination.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Stop the task on a container instance in an optimal Availability Zone (based
    # 					on the previous steps), favoring container instances with the largest number of
    # 					running tasks for this service.</p>
    # 			         </li>
    #          </ul>
    # 		       <note>
    # 		          <p>You must have a service-linked role when you update any of the following service properties.
    # 			If you specified a custom IAM role when you created the service, Amazon ECS automatically
    # 			replaces the <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_Service.html#ECS-Type-Service-roleArn">roleARN</a> associated with the service with the ARN of your service-linked
    # 			role. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html">Service-linked
    # 				roles</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # 		          <ul>
    #                <li>
    # 				              <p>
    #                      <code>loadBalancers,</code>
    #                   </p>
    # 			            </li>
    #                <li>
    # 				              <p>
    #                      <code>serviceRegistries</code>
    #                   </p>
    # 			            </li>
    #             </ul>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateServiceInput}.
    #
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that your service runs on.
    #   			If you do not specify a cluster, the default cluster is assumed.</p>
    #
    # @option params [String] :service
    #   <p>The name of the service to update.</p>
    #
    # @option params [Integer] :desired_count
    #   <p>The number of instantiations of the task to place and keep running in your
    #   			service.</p>
    #
    # @option params [String] :task_definition
    #   <p>The <code>family</code> and <code>revision</code> (<code>family:revision</code>) or
    #   			full ARN of the task definition to run in your service. If a <code>revision</code> is
    #   			not specified, the latest <code>ACTIVE</code> revision is used. If you modify the task
    #   			definition with <code>UpdateService</code>, Amazon ECS spawns a task with the new version of
    #   			the task definition and then stops an old task after the new version is running.</p>
    #
    # @option params [Array<CapacityProviderStrategyItem>] :capacity_provider_strategy
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
    # @option params [DeploymentConfiguration] :deployment_configuration
    #   <p>Optional deployment parameters that control how many tasks run during the deployment
    #   			and the ordering of stopping and starting tasks.</p>
    #
    # @option params [NetworkConfiguration] :network_configuration
    #   <p>An object representing the network configuration for the service.</p>
    #
    # @option params [Array<PlacementConstraint>] :placement_constraints
    #   <p>An array of task placement constraint objects to update the service to use. If no
    #   			value is specified, the existing placement constraints for the service will remain
    #   			unchanged. If this value is specified, it will override any existing placement
    #   			constraints defined for the service. To remove all existing placement constraints,
    #   			specify an empty array.</p>
    #   		       <p>You can specify a maximum of 10 constraints for each task. This limit includes
    #   			constraints in the task definition and those specified at runtime.</p>
    #
    # @option params [Array<PlacementStrategy>] :placement_strategy
    #   <p>The task placement strategy objects to update the service to use. If no value is
    #   			specified, the existing placement strategy for the service will remain unchanged. If
    #   			this value is specified, it will override the existing placement strategy defined for
    #   			the service. To remove an existing placement strategy, specify an empty object.</p>
    #   		       <p>You can specify a maximum of five strategy rules for each service.</p>
    #
    # @option params [String] :platform_version
    #   <p>The platform version that your tasks in the service run on. A platform version is only
    #   			specified for tasks using the Fargate launch type. If a platform version
    #   			is not specified, the <code>LATEST</code> platform version is used. For more
    #   			information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html">Fargate Platform
    #   				Versions</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @option params [Boolean] :force_new_deployment
    #   <p>Determines whether to force a new deployment of the service. By default, deployments
    #   			aren't forced. You can use this option to start a new deployment with no service
    #   			definition changes. For example, you can update a service's tasks to use a newer Docker
    #   			image with the same image/tag combination (<code>my_image:latest</code>) or to roll
    #   			Fargate tasks onto a newer platform version.</p>
    #
    # @option params [Integer] :health_check_grace_period_seconds
    #   <p>The period of time, in seconds, that the Amazon ECS service scheduler ignores unhealthy
    #   			Elastic Load Balancing target health checks after a task has first started. This is only valid if your
    #   			service is configured to use a load balancer. If your service's tasks take a while to
    #   			start and respond to Elastic Load Balancing health checks, you can specify a health check grace period of
    #   			up to 2,147,483,647 seconds. During that time, the Amazon ECS service scheduler ignores
    #   			the Elastic Load Balancing health check status. This grace period can prevent the ECS service scheduler
    #   			from marking tasks as unhealthy and stopping them before they have time to come
    #   			up.</p>
    #
    # @option params [Boolean] :enable_execute_command
    #   <p>If <code>true</code>, this enables execute command functionality on all task
    #   			containers.</p>
    #   		       <p>If you do not want to override the value that was set when the service was created,
    #   			you can set this to <code>null</code> when performing this action.</p>
    #
    # @option params [Boolean] :enable_ecs_managed_tags
    #   <p>Determines whether to turn on Amazon ECS managed tags for the tasks in the service. For more
    #   			information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html">Tagging Your Amazon ECS
    #   				Resources</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #   		       <p>Only tasks launched after the update will reflect the update. To update the tags on
    #   			all tasks, set <code>forceNewDeployment</code> to <code>true</code>, so that Amazon ECS
    #   			starts new tasks with the updated tags.</p>
    #
    # @option params [Array<LoadBalancer>] :load_balancers
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
    # @option params [String] :propagate_tags
    #   <p>Determines whether to propagate the tags from the task definition or the service to
    #   			the task. If no value is specified, the tags aren't propagated.</p>
    #   		       <p>Only tasks launched after the update will reflect the update. To update the tags on
    #   			all tasks, set <code>forceNewDeployment</code> to <code>true</code>, so that Amazon ECS
    #   			starts new tasks with the updated tags.</p>
    #
    # @option params [Array<ServiceRegistry>] :service_registries
    #   <p>The details for the service discovery registries to assign to this service. For more
    #   			information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html">Service
    #   				Discovery</a>.</p>
    #   		       <p>When you add, update, or remove the service registries configuration, Amazon ECS starts new tasks
    #   			with the updated service registries configuration, and then stops the old tasks when the
    #   			new tasks are running.</p>
    #   		       <p>You can remove existing <code>serviceRegistries</code> by passing an empty
    #   			list.</p>
    #
    # @return [Types::UpdateServiceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service(
    #     cluster: 'cluster',
    #     service: 'service', # required
    #     desired_count: 1,
    #     task_definition: 'taskDefinition',
    #     capacity_provider_strategy: [
    #       {
    #         capacity_provider: 'capacityProvider', # required
    #         weight: 1,
    #         base: 1
    #       }
    #     ],
    #     deployment_configuration: {
    #       deployment_circuit_breaker: {
    #         enable: false, # required
    #         rollback: false # required
    #       },
    #       maximum_percent: 1,
    #       minimum_healthy_percent: 1
    #     },
    #     network_configuration: {
    #       awsvpc_configuration: {
    #         subnets: [
    #           'member'
    #         ], # required
    #         assign_public_ip: 'ENABLED' # accepts ["ENABLED", "DISABLED"]
    #       }
    #     },
    #     placement_constraints: [
    #       {
    #         type: 'distinctInstance', # accepts ["distinctInstance", "memberOf"]
    #         expression: 'expression'
    #       }
    #     ],
    #     placement_strategy: [
    #       {
    #         type: 'random', # accepts ["random", "spread", "binpack"]
    #         field: 'field'
    #       }
    #     ],
    #     platform_version: 'platformVersion',
    #     force_new_deployment: false,
    #     health_check_grace_period_seconds: 1,
    #     enable_execute_command: false,
    #     enable_ecs_managed_tags: false,
    #     load_balancers: [
    #       {
    #         target_group_arn: 'targetGroupArn',
    #         load_balancer_name: 'loadBalancerName',
    #         container_name: 'containerName',
    #         container_port: 1
    #       }
    #     ],
    #     propagate_tags: 'TASK_DEFINITION', # accepts ["TASK_DEFINITION", "SERVICE", "NONE"]
    #     service_registries: [
    #       {
    #         registry_arn: 'registryArn',
    #         port: 1,
    #         container_name: 'containerName',
    #         container_port: 1
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateServiceOutput
    #   resp.data.service #=> Types::Service
    #   resp.data.service.service_arn #=> String
    #   resp.data.service.service_name #=> String
    #   resp.data.service.cluster_arn #=> String
    #   resp.data.service.load_balancers #=> Array<LoadBalancer>
    #   resp.data.service.load_balancers[0] #=> Types::LoadBalancer
    #   resp.data.service.load_balancers[0].target_group_arn #=> String
    #   resp.data.service.load_balancers[0].load_balancer_name #=> String
    #   resp.data.service.load_balancers[0].container_name #=> String
    #   resp.data.service.load_balancers[0].container_port #=> Integer
    #   resp.data.service.service_registries #=> Array<ServiceRegistry>
    #   resp.data.service.service_registries[0] #=> Types::ServiceRegistry
    #   resp.data.service.service_registries[0].registry_arn #=> String
    #   resp.data.service.service_registries[0].port #=> Integer
    #   resp.data.service.service_registries[0].container_name #=> String
    #   resp.data.service.service_registries[0].container_port #=> Integer
    #   resp.data.service.status #=> String
    #   resp.data.service.desired_count #=> Integer
    #   resp.data.service.running_count #=> Integer
    #   resp.data.service.pending_count #=> Integer
    #   resp.data.service.launch_type #=> String, one of ["EC2", "FARGATE", "EXTERNAL"]
    #   resp.data.service.capacity_provider_strategy #=> Array<CapacityProviderStrategyItem>
    #   resp.data.service.capacity_provider_strategy[0] #=> Types::CapacityProviderStrategyItem
    #   resp.data.service.capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.data.service.capacity_provider_strategy[0].weight #=> Integer
    #   resp.data.service.capacity_provider_strategy[0].base #=> Integer
    #   resp.data.service.platform_version #=> String
    #   resp.data.service.platform_family #=> String
    #   resp.data.service.task_definition #=> String
    #   resp.data.service.deployment_configuration #=> Types::DeploymentConfiguration
    #   resp.data.service.deployment_configuration.deployment_circuit_breaker #=> Types::DeploymentCircuitBreaker
    #   resp.data.service.deployment_configuration.deployment_circuit_breaker.enable #=> Boolean
    #   resp.data.service.deployment_configuration.deployment_circuit_breaker.rollback #=> Boolean
    #   resp.data.service.deployment_configuration.maximum_percent #=> Integer
    #   resp.data.service.deployment_configuration.minimum_healthy_percent #=> Integer
    #   resp.data.service.task_sets #=> Array<TaskSet>
    #   resp.data.service.task_sets[0] #=> Types::TaskSet
    #   resp.data.service.task_sets[0].id #=> String
    #   resp.data.service.task_sets[0].task_set_arn #=> String
    #   resp.data.service.task_sets[0].service_arn #=> String
    #   resp.data.service.task_sets[0].cluster_arn #=> String
    #   resp.data.service.task_sets[0].started_by #=> String
    #   resp.data.service.task_sets[0].external_id #=> String
    #   resp.data.service.task_sets[0].status #=> String
    #   resp.data.service.task_sets[0].task_definition #=> String
    #   resp.data.service.task_sets[0].computed_desired_count #=> Integer
    #   resp.data.service.task_sets[0].pending_count #=> Integer
    #   resp.data.service.task_sets[0].running_count #=> Integer
    #   resp.data.service.task_sets[0].created_at #=> Time
    #   resp.data.service.task_sets[0].updated_at #=> Time
    #   resp.data.service.task_sets[0].launch_type #=> String, one of ["EC2", "FARGATE", "EXTERNAL"]
    #   resp.data.service.task_sets[0].capacity_provider_strategy #=> Array<CapacityProviderStrategyItem>
    #   resp.data.service.task_sets[0].platform_version #=> String
    #   resp.data.service.task_sets[0].platform_family #=> String
    #   resp.data.service.task_sets[0].network_configuration #=> Types::NetworkConfiguration
    #   resp.data.service.task_sets[0].network_configuration.awsvpc_configuration #=> Types::AwsVpcConfiguration
    #   resp.data.service.task_sets[0].network_configuration.awsvpc_configuration.subnets #=> Array<String>
    #   resp.data.service.task_sets[0].network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.data.service.task_sets[0].network_configuration.awsvpc_configuration.security_groups #=> Array<String>
    #   resp.data.service.task_sets[0].network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.service.task_sets[0].load_balancers #=> Array<LoadBalancer>
    #   resp.data.service.task_sets[0].service_registries #=> Array<ServiceRegistry>
    #   resp.data.service.task_sets[0].scale #=> Types::Scale
    #   resp.data.service.task_sets[0].scale.value #=> Float
    #   resp.data.service.task_sets[0].scale.unit #=> String, one of ["PERCENT"]
    #   resp.data.service.task_sets[0].stability_status #=> String, one of ["STEADY_STATE", "STABILIZING"]
    #   resp.data.service.task_sets[0].stability_status_at #=> Time
    #   resp.data.service.task_sets[0].tags #=> Array<Tag>
    #   resp.data.service.task_sets[0].tags[0] #=> Types::Tag
    #   resp.data.service.task_sets[0].tags[0].key #=> String
    #   resp.data.service.task_sets[0].tags[0].value #=> String
    #   resp.data.service.deployments #=> Array<Deployment>
    #   resp.data.service.deployments[0] #=> Types::Deployment
    #   resp.data.service.deployments[0].id #=> String
    #   resp.data.service.deployments[0].status #=> String
    #   resp.data.service.deployments[0].task_definition #=> String
    #   resp.data.service.deployments[0].desired_count #=> Integer
    #   resp.data.service.deployments[0].pending_count #=> Integer
    #   resp.data.service.deployments[0].running_count #=> Integer
    #   resp.data.service.deployments[0].failed_tasks #=> Integer
    #   resp.data.service.deployments[0].created_at #=> Time
    #   resp.data.service.deployments[0].updated_at #=> Time
    #   resp.data.service.deployments[0].capacity_provider_strategy #=> Array<CapacityProviderStrategyItem>
    #   resp.data.service.deployments[0].launch_type #=> String, one of ["EC2", "FARGATE", "EXTERNAL"]
    #   resp.data.service.deployments[0].platform_version #=> String
    #   resp.data.service.deployments[0].platform_family #=> String
    #   resp.data.service.deployments[0].network_configuration #=> Types::NetworkConfiguration
    #   resp.data.service.deployments[0].rollout_state #=> String, one of ["COMPLETED", "FAILED", "IN_PROGRESS"]
    #   resp.data.service.deployments[0].rollout_state_reason #=> String
    #   resp.data.service.role_arn #=> String
    #   resp.data.service.events #=> Array<ServiceEvent>
    #   resp.data.service.events[0] #=> Types::ServiceEvent
    #   resp.data.service.events[0].id #=> String
    #   resp.data.service.events[0].created_at #=> Time
    #   resp.data.service.events[0].message #=> String
    #   resp.data.service.created_at #=> Time
    #   resp.data.service.placement_constraints #=> Array<PlacementConstraint>
    #   resp.data.service.placement_constraints[0] #=> Types::PlacementConstraint
    #   resp.data.service.placement_constraints[0].type #=> String, one of ["distinctInstance", "memberOf"]
    #   resp.data.service.placement_constraints[0].expression #=> String
    #   resp.data.service.placement_strategy #=> Array<PlacementStrategy>
    #   resp.data.service.placement_strategy[0] #=> Types::PlacementStrategy
    #   resp.data.service.placement_strategy[0].type #=> String, one of ["random", "spread", "binpack"]
    #   resp.data.service.placement_strategy[0].field #=> String
    #   resp.data.service.network_configuration #=> Types::NetworkConfiguration
    #   resp.data.service.health_check_grace_period_seconds #=> Integer
    #   resp.data.service.scheduling_strategy #=> String, one of ["REPLICA", "DAEMON"]
    #   resp.data.service.deployment_controller #=> Types::DeploymentController
    #   resp.data.service.deployment_controller.type #=> String, one of ["ECS", "CODE_DEPLOY", "EXTERNAL"]
    #   resp.data.service.tags #=> Array<Tag>
    #   resp.data.service.created_by #=> String
    #   resp.data.service.enable_ecs_managed_tags #=> Boolean
    #   resp.data.service.propagate_tags #=> String, one of ["TASK_DEFINITION", "SERVICE", "NONE"]
    #   resp.data.service.enable_execute_command #=> Boolean
    #
    def update_service(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateServiceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateServiceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateService
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceNotFoundException, Errors::AccessDeniedException, Errors::ClusterNotFoundException, Errors::ServiceNotActiveException, Errors::ServerException, Errors::InvalidParameterException, Errors::PlatformUnknownException, Errors::ClientException, Errors::PlatformTaskDefinitionIncompatibilityException]),
        data_parser: Parsers::UpdateService
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateService,
        stubs: @stubs,
        params_class: Params::UpdateServiceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_service
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies which task set in a service is the primary task set. Any parameters that are
    # 			updated on the primary task set in a service will transition to the service. This is
    # 			used when a service uses the <code>EXTERNAL</code> deployment controller type. For more
    # 			information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html">Amazon ECS Deployment
    # 				Types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateServicePrimaryTaskSetInput}.
    #
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service that the task
    #   			set exists in.</p>
    #
    # @option params [String] :service
    #   <p>The short name or full Amazon Resource Name (ARN) of the service that the task set exists in.</p>
    #
    # @option params [String] :primary_task_set
    #   <p>The short name or full Amazon Resource Name (ARN) of the task set to set as the primary task set in the
    #   			deployment.</p>
    #
    # @return [Types::UpdateServicePrimaryTaskSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service_primary_task_set(
    #     cluster: 'cluster', # required
    #     service: 'service', # required
    #     primary_task_set: 'primaryTaskSet' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateServicePrimaryTaskSetOutput
    #   resp.data.task_set #=> Types::TaskSet
    #   resp.data.task_set.id #=> String
    #   resp.data.task_set.task_set_arn #=> String
    #   resp.data.task_set.service_arn #=> String
    #   resp.data.task_set.cluster_arn #=> String
    #   resp.data.task_set.started_by #=> String
    #   resp.data.task_set.external_id #=> String
    #   resp.data.task_set.status #=> String
    #   resp.data.task_set.task_definition #=> String
    #   resp.data.task_set.computed_desired_count #=> Integer
    #   resp.data.task_set.pending_count #=> Integer
    #   resp.data.task_set.running_count #=> Integer
    #   resp.data.task_set.created_at #=> Time
    #   resp.data.task_set.updated_at #=> Time
    #   resp.data.task_set.launch_type #=> String, one of ["EC2", "FARGATE", "EXTERNAL"]
    #   resp.data.task_set.capacity_provider_strategy #=> Array<CapacityProviderStrategyItem>
    #   resp.data.task_set.capacity_provider_strategy[0] #=> Types::CapacityProviderStrategyItem
    #   resp.data.task_set.capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.data.task_set.capacity_provider_strategy[0].weight #=> Integer
    #   resp.data.task_set.capacity_provider_strategy[0].base #=> Integer
    #   resp.data.task_set.platform_version #=> String
    #   resp.data.task_set.platform_family #=> String
    #   resp.data.task_set.network_configuration #=> Types::NetworkConfiguration
    #   resp.data.task_set.network_configuration.awsvpc_configuration #=> Types::AwsVpcConfiguration
    #   resp.data.task_set.network_configuration.awsvpc_configuration.subnets #=> Array<String>
    #   resp.data.task_set.network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.data.task_set.network_configuration.awsvpc_configuration.security_groups #=> Array<String>
    #   resp.data.task_set.network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.task_set.load_balancers #=> Array<LoadBalancer>
    #   resp.data.task_set.load_balancers[0] #=> Types::LoadBalancer
    #   resp.data.task_set.load_balancers[0].target_group_arn #=> String
    #   resp.data.task_set.load_balancers[0].load_balancer_name #=> String
    #   resp.data.task_set.load_balancers[0].container_name #=> String
    #   resp.data.task_set.load_balancers[0].container_port #=> Integer
    #   resp.data.task_set.service_registries #=> Array<ServiceRegistry>
    #   resp.data.task_set.service_registries[0] #=> Types::ServiceRegistry
    #   resp.data.task_set.service_registries[0].registry_arn #=> String
    #   resp.data.task_set.service_registries[0].port #=> Integer
    #   resp.data.task_set.service_registries[0].container_name #=> String
    #   resp.data.task_set.service_registries[0].container_port #=> Integer
    #   resp.data.task_set.scale #=> Types::Scale
    #   resp.data.task_set.scale.value #=> Float
    #   resp.data.task_set.scale.unit #=> String, one of ["PERCENT"]
    #   resp.data.task_set.stability_status #=> String, one of ["STEADY_STATE", "STABILIZING"]
    #   resp.data.task_set.stability_status_at #=> Time
    #   resp.data.task_set.tags #=> Array<Tag>
    #   resp.data.task_set.tags[0] #=> Types::Tag
    #   resp.data.task_set.tags[0].key #=> String
    #   resp.data.task_set.tags[0].value #=> String
    #
    def update_service_primary_task_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateServicePrimaryTaskSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateServicePrimaryTaskSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateServicePrimaryTaskSet
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceNotFoundException, Errors::AccessDeniedException, Errors::ClusterNotFoundException, Errors::TaskSetNotFoundException, Errors::ServiceNotActiveException, Errors::ServerException, Errors::InvalidParameterException, Errors::UnsupportedFeatureException, Errors::ClientException]),
        data_parser: Parsers::UpdateServicePrimaryTaskSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateServicePrimaryTaskSet,
        stubs: @stubs,
        params_class: Params::UpdateServicePrimaryTaskSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_service_primary_task_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies a task set. This is used when a service uses the <code>EXTERNAL</code>
    # 			deployment controller type. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html">Amazon ECS Deployment
    # 				Types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateTaskSetInput}.
    #
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service that the task
    #   			set is found in.</p>
    #
    # @option params [String] :service
    #   <p>The short name or full Amazon Resource Name (ARN) of the service that the task set is found in.</p>
    #
    # @option params [String] :task_set
    #   <p>The short name or full Amazon Resource Name (ARN) of the task set to update.</p>
    #
    # @option params [Scale] :scale
    #   <p>A floating-point percentage of the desired number of tasks to place and keep running
    #   			in the task set.</p>
    #
    # @return [Types::UpdateTaskSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_task_set(
    #     cluster: 'cluster', # required
    #     service: 'service', # required
    #     task_set: 'taskSet', # required
    #     scale: {
    #       value: 1.0,
    #       unit: 'PERCENT' # accepts ["PERCENT"]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateTaskSetOutput
    #   resp.data.task_set #=> Types::TaskSet
    #   resp.data.task_set.id #=> String
    #   resp.data.task_set.task_set_arn #=> String
    #   resp.data.task_set.service_arn #=> String
    #   resp.data.task_set.cluster_arn #=> String
    #   resp.data.task_set.started_by #=> String
    #   resp.data.task_set.external_id #=> String
    #   resp.data.task_set.status #=> String
    #   resp.data.task_set.task_definition #=> String
    #   resp.data.task_set.computed_desired_count #=> Integer
    #   resp.data.task_set.pending_count #=> Integer
    #   resp.data.task_set.running_count #=> Integer
    #   resp.data.task_set.created_at #=> Time
    #   resp.data.task_set.updated_at #=> Time
    #   resp.data.task_set.launch_type #=> String, one of ["EC2", "FARGATE", "EXTERNAL"]
    #   resp.data.task_set.capacity_provider_strategy #=> Array<CapacityProviderStrategyItem>
    #   resp.data.task_set.capacity_provider_strategy[0] #=> Types::CapacityProviderStrategyItem
    #   resp.data.task_set.capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.data.task_set.capacity_provider_strategy[0].weight #=> Integer
    #   resp.data.task_set.capacity_provider_strategy[0].base #=> Integer
    #   resp.data.task_set.platform_version #=> String
    #   resp.data.task_set.platform_family #=> String
    #   resp.data.task_set.network_configuration #=> Types::NetworkConfiguration
    #   resp.data.task_set.network_configuration.awsvpc_configuration #=> Types::AwsVpcConfiguration
    #   resp.data.task_set.network_configuration.awsvpc_configuration.subnets #=> Array<String>
    #   resp.data.task_set.network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.data.task_set.network_configuration.awsvpc_configuration.security_groups #=> Array<String>
    #   resp.data.task_set.network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.task_set.load_balancers #=> Array<LoadBalancer>
    #   resp.data.task_set.load_balancers[0] #=> Types::LoadBalancer
    #   resp.data.task_set.load_balancers[0].target_group_arn #=> String
    #   resp.data.task_set.load_balancers[0].load_balancer_name #=> String
    #   resp.data.task_set.load_balancers[0].container_name #=> String
    #   resp.data.task_set.load_balancers[0].container_port #=> Integer
    #   resp.data.task_set.service_registries #=> Array<ServiceRegistry>
    #   resp.data.task_set.service_registries[0] #=> Types::ServiceRegistry
    #   resp.data.task_set.service_registries[0].registry_arn #=> String
    #   resp.data.task_set.service_registries[0].port #=> Integer
    #   resp.data.task_set.service_registries[0].container_name #=> String
    #   resp.data.task_set.service_registries[0].container_port #=> Integer
    #   resp.data.task_set.scale #=> Types::Scale
    #   resp.data.task_set.scale.value #=> Float
    #   resp.data.task_set.scale.unit #=> String, one of ["PERCENT"]
    #   resp.data.task_set.stability_status #=> String, one of ["STEADY_STATE", "STABILIZING"]
    #   resp.data.task_set.stability_status_at #=> Time
    #   resp.data.task_set.tags #=> Array<Tag>
    #   resp.data.task_set.tags[0] #=> Types::Tag
    #   resp.data.task_set.tags[0].key #=> String
    #   resp.data.task_set.tags[0].value #=> String
    #
    def update_task_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateTaskSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateTaskSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTaskSet
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceNotFoundException, Errors::AccessDeniedException, Errors::ClusterNotFoundException, Errors::TaskSetNotFoundException, Errors::ServiceNotActiveException, Errors::ServerException, Errors::InvalidParameterException, Errors::UnsupportedFeatureException, Errors::ClientException]),
        data_parser: Parsers::UpdateTaskSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateTaskSet,
        stubs: @stubs,
        params_class: Params::UpdateTaskSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_task_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
