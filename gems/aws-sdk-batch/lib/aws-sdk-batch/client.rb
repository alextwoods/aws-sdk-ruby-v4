# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::Batch
  # An API client for AWSBatchV20160810
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Batch</fullname>
  #          <p>Using Batch, you can run batch computing workloads on the Amazon Web Services Cloud. Batch computing is a common means for
  #    developers, scientists, and engineers to access large amounts of compute resources. Batch uses the advantages of
  #    this computing workload to remove the undifferentiated heavy lifting of configuring and managing required
  #    infrastructure. At the same time, it also adopts a familiar batch computing software approach. Given these
  #    advantages, Batch can help you to efficiently provision resources in response to jobs submitted, thus effectively
  #    helping you to eliminate capacity constraints, reduce compute costs, and deliver your results more quickly.</p>
  #          <p>As a fully managed service, Batch can run batch computing workloads of any scale. Batch automatically
  #    provisions compute resources and optimizes workload distribution based on the quantity and scale of your specific
  #    workloads. With Batch, there's no need to install or manage batch computing software. This means that you can focus
  #    your time and energy on analyzing results and solving your specific problems.</p>
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
    def initialize(config = AWS::SDK::Batch::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Cancels a job in an Batch job queue. Jobs that are in the <code>SUBMITTED</code>, <code>PENDING</code>, or
    #     <code>RUNNABLE</code> state are canceled. Jobs that have progressed to <code>STARTING</code> or <code>RUNNING</code>
    #    aren't canceled, but the API operation still succeeds, even if no job is canceled. These jobs must be terminated with
    #    the <a>TerminateJob</a> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The Batch job ID of the job to cancel.</p>
    #
    # @option params [String] :reason
    #   <p>A message to attach to the job that explains the reason for canceling it. This message is returned by future
    #       <a>DescribeJobs</a> operations on the job. This message is also recorded in the Batch activity
    #      logs.</p>
    #
    # @return [Types::CancelJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_job(
    #     job_id: 'jobId', # required
    #     reason: 'reason' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelJobOutput
    #
    def cancel_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientException, Errors::ServerException]),
        data_parser: Parsers::CancelJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelJob,
        stubs: @stubs,
        params_class: Params::CancelJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Batch compute environment. You can create <code>MANAGED</code> or <code>UNMANAGED</code> compute
    #    environments. <code>MANAGED</code> compute environments can use Amazon EC2 or Fargate resources.
    #     <code>UNMANAGED</code> compute environments can only use EC2 resources.</p>
    #          <p>In a managed compute environment, Batch manages the capacity and instance types of the compute resources
    #    within the environment. This is based on the compute resource specification that you define or the <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html">launch template</a> that you
    #    specify when you create the compute environment. Either, you can choose to use EC2 On-Demand Instances and EC2 Spot
    #    Instances. Or, you can use Fargate and Fargate Spot capacity in your managed compute environment. You can
    #    optionally set a maximum price so that Spot Instances only launch when the Spot Instance price is less than a
    #    specified percentage of the On-Demand price.</p>
    #          <note>
    #             <p>Multi-node parallel jobs aren't supported on Spot Instances.</p>
    #          </note>
    #          <p>In an unmanaged compute environment, you can manage your own EC2 compute resources and have a lot of flexibility
    #    with how you configure your compute resources. For example, you can use custom AMIs. However, you must verify that
    #    each of your AMIs meet the Amazon ECS container instance AMI specification. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/container_instance_AMIs.html">container instance AMIs</a> in the
    #     <i>Amazon Elastic Container Service Developer Guide</i>. After you created your unmanaged compute environment, you can use the <a>DescribeComputeEnvironments</a> operation to find the Amazon ECS cluster that's associated with it. Then, launch
    #    your container instances into that Amazon ECS cluster. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_container_instance.html">Launching an Amazon ECS container instance</a> in the
    #     <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #          <note>
    #             <p>Batch doesn't automatically upgrade the AMIs in a compute environment after it's created. For example, it
    #     also doesn't update the AMIs in your compute environment when a newer version of the Amazon ECS optimized AMI is
    #     available. You're responsible for the management of the guest operating system. This includes any updates and
    #     security patches. You're also responsible for any additional application software or utilities that you install on
    #     the compute resources. There are two ways to use a new AMI for your Batch jobs. The original method is to complete
    #     these steps:</p>
    #             <ol>
    #                <li>
    #                   <p>Create a new compute environment with the new AMI.</p>
    #                </li>
    #                <li>
    #                   <p>Add the compute environment to an existing job queue.</p>
    #                </li>
    #                <li>
    #                   <p>Remove the earlier compute environment from your job queue.</p>
    #                </li>
    #                <li>
    #                   <p>Delete the earlier compute environment.</p>
    #                </li>
    #             </ol>
    #             <p>In April 2022, Batch added enhanced support for updating compute environments. For more information, see
    #      <a href="https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html">Updating compute
    #      environments</a>. To use the enhanced updating of compute environments to update AMIs, follow these
    #     rules:</p>
    #             <ul>
    #                <li>
    #                   <p>Either do not set the service role (<code>serviceRole</code>) parameter or set it to the <b>AWSBatchServiceRole</b> service-linked role.</p>
    #                </li>
    #                <li>
    #                   <p>Set the allocation strategy (<code>allocationStrategy</code>) parameter to <code>BEST_FIT_PROGRESSIVE</code>
    #       or <code>SPOT_CAPACITY_OPTIMIZED</code>.</p>
    #                </li>
    #                <li>
    #                   <p>Set the update to latest image version (<code>updateToLatestImageVersion</code>) parameter to
    #        <code>true</code>.</p>
    #                </li>
    #                <li>
    #                   <p>Do not specify an AMI ID in <code>imageId</code>, <code>imageIdOverride</code> (in <a href="https://docs.aws.amazon.com/batch/latest/APIReference/API_Ec2Configuration.html">
    #                         <code>ec2Configuration</code>
    #                      </a>), or in the launch template (<code>launchTemplate</code>). In that case
    #       Batch will select the latest Amazon ECS optimized AMI supported by Batch at the time the infrastructure update is
    #       initiated. Alternatively you can specify the AMI ID in the <code>imageId</code> or <code>imageIdOverride</code>
    #       parameters, or the launch template identified by the <code>LaunchTemplate</code> properties. Changing any of these
    #       properties will trigger an infrastructure update. If the AMI ID is specified in the launch template, it can not be
    #       replaced by specifying an AMI ID in either the <code>imageId</code> or <code>imageIdOverride</code> parameters. It
    #       can only be replaced by specifying a different launch template, or if the launch template version is set to
    #        <code>$Default</code> or <code>$Latest</code>, by setting either a new default version for the launch template
    #       (if <code>$Default</code>)or by adding a new version to the launch template (if <code>$Latest</code>).</p>
    #                </li>
    #             </ul>
    #             <p>If these rules are followed, any update that triggers an infrastructure update will cause the AMI ID to be
    #     re-selected. If the <code>version</code> setting in the launch template (<code>launchTemplate</code>) is set to
    #      <code>$Latest</code> or <code>$Default</code>, the latest or default version of the launch template will be
    #     evaluated up at the time of the infrastructure update, even if the <code>launchTemplate</code> was not
    #     updated.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateComputeEnvironmentInput}.
    #
    # @option params [String] :compute_environment_name
    #   <p>The name for your compute environment. It can be up to 128 letters long. It can contain uppercase and
    #    lowercase letters, numbers, hyphens (-), and underscores (_).</p>
    #
    # @option params [String] :type
    #   <p>The type of the compute environment: <code>MANAGED</code> or <code>UNMANAGED</code>. For more information, see
    #       <a href="https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html">Compute Environments</a> in the
    #       <i>Batch User Guide</i>.</p>
    #
    # @option params [String] :state
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
    # @option params [Integer] :unmanagedv_cpus
    #   <p>The maximum number of vCPUs for an unmanaged compute environment. This parameter is only used for fair share
    #      scheduling to reserve vCPU capacity for new share identifiers. If this parameter isn't provided for a fair share job
    #      queue, no vCPU capacity is reserved.</p>
    #            <note>
    #               <p>This parameter is only supported when the <code>type</code> parameter is set to <code>UNMANAGED</code>.</p>
    #            </note>
    #
    # @option params [ComputeResource] :compute_resources
    #   <p>Details about the compute resources managed by the compute environment. This parameter is required for managed
    #      compute environments. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html">Compute Environments</a> in the <i>Batch User Guide</i>.</p>
    #
    # @option params [String] :service_role
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
    #      of <code>/foo/</code> then you would specify <code>/foo/bar</code> as the role name. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-friendly-names">Friendly names
    #       and paths</a> in the <i>IAM User Guide</i>.</p>
    #            <note>
    #               <p>Depending on how you created your Batch service role, its ARN might contain the <code>service-role</code>
    #       path prefix. When you only specify the name of the service role, Batch assumes that your ARN doesn't use the
    #        <code>service-role</code> path prefix. Because of this, we recommend that you specify the full ARN of your service
    #       role when you create compute environments.</p>
    #            </note>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags that you apply to the compute environment to help you categorize and organize your resources. Each tag
    #      consists of a key and an optional value. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services Resources</a> in <i>Amazon Web Services General
    #       Reference</i>.</p>
    #            <p>These tags can be updated or removed using the <a href="https://docs.aws.amazon.com/batch/latest/APIReference/API_TagResource.html">TagResource</a> and <a href="https://docs.aws.amazon.com/batch/latest/APIReference/API_UntagResource.html">UntagResource</a> API operations. These tags don't
    #      propagate to the underlying compute resources.</p>
    #
    # @return [Types::CreateComputeEnvironmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_compute_environment(
    #     compute_environment_name: 'computeEnvironmentName', # required
    #     type: 'MANAGED', # required - accepts ["MANAGED", "UNMANAGED"]
    #     state: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #     unmanagedv_cpus: 1,
    #     compute_resources: {
    #       type: 'EC2', # required - accepts ["EC2", "SPOT", "FARGATE", "FARGATE_SPOT"]
    #       allocation_strategy: 'BEST_FIT', # accepts ["BEST_FIT", "BEST_FIT_PROGRESSIVE", "SPOT_CAPACITY_OPTIMIZED"]
    #       minv_cpus: 1,
    #       maxv_cpus: 1, # required
    #       desiredv_cpus: 1,
    #       instance_types: [
    #         'member'
    #       ],
    #       image_id: 'imageId',
    #       ec2_key_pair: 'ec2KeyPair',
    #       instance_role: 'instanceRole',
    #       tags: {
    #         'key' => 'value'
    #       },
    #       placement_group: 'placementGroup',
    #       bid_percentage: 1,
    #       spot_iam_fleet_role: 'spotIamFleetRole',
    #       launch_template: {
    #         launch_template_id: 'launchTemplateId',
    #         launch_template_name: 'launchTemplateName',
    #         version: 'version'
    #       },
    #       ec2_configuration: [
    #         {
    #           image_type: 'imageType', # required
    #           image_id_override: 'imageIdOverride'
    #         }
    #       ]
    #     },
    #     service_role: 'serviceRole',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateComputeEnvironmentOutput
    #   resp.data.compute_environment_name #=> String
    #   resp.data.compute_environment_arn #=> String
    #
    def create_compute_environment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateComputeEnvironmentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateComputeEnvironmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateComputeEnvironment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientException, Errors::ServerException]),
        data_parser: Parsers::CreateComputeEnvironment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateComputeEnvironment,
        stubs: @stubs,
        params_class: Params::CreateComputeEnvironmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_compute_environment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Batch job queue. When you create a job queue, you associate one or more compute environments to the
    #    queue and assign an order of preference for the compute environments.</p>
    #          <p>You also set a priority to the job queue that determines the order that the Batch scheduler places jobs onto
    #    its associated compute environments. For example, if a compute environment is associated with more than one job
    #    queue, the job queue with a higher priority is given preference for scheduling jobs to that compute
    #    environment.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateJobQueueInput}.
    #
    # @option params [String] :job_queue_name
    #   <p>The name of the job queue. It can be up to 128 letters long. It can contain uppercase and lowercase letters,
    #      numbers, hyphens (-), and underscores (_).</p>
    #
    # @option params [String] :state
    #   <p>The state of the job queue. If the job queue state is <code>ENABLED</code>, it is able to accept jobs. If the
    #      job queue state is <code>DISABLED</code>, new jobs can't be added to the queue, but jobs already in the queue can
    #      finish.</p>
    #
    # @option params [String] :scheduling_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the fair share scheduling policy. If this parameter is specified, the job queue uses a fair
    #      share scheduling policy. If this parameter isn't specified, the job queue uses a first in, first out (FIFO)
    #      scheduling policy. After a job queue is created, you can replace but can't remove the fair share scheduling policy.
    #      The format is
    #        <code>aws:<i>Partition</i>:batch:<i>Region</i>:<i>Account</i>:scheduling-policy/<i>Name</i>
    #               </code>.
    #      An example is
    #      <code>aws:aws:batch:us-west-2:012345678910:scheduling-policy/MySchedulingPolicy</code>.</p>
    #
    # @option params [Integer] :priority
    #   <p>The priority of the job queue. Job queues with a higher priority (or a higher integer value for the
    #       <code>priority</code> parameter) are evaluated first when associated with the same compute environment. Priority is
    #      determined in descending order. For example, a job queue with a priority value of <code>10</code> is given scheduling
    #      preference over a job queue with a priority value of <code>1</code>. All of the compute environments must be either
    #      EC2 (<code>EC2</code> or <code>SPOT</code>) or Fargate (<code>FARGATE</code> or <code>FARGATE_SPOT</code>); EC2 and
    #      Fargate compute environments can't be mixed.</p>
    #
    # @option params [Array<ComputeEnvironmentOrder>] :compute_environment_order
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
    # @option params [Hash<String, String>] :tags
    #   <p>The tags that you apply to the job queue to help you categorize and organize your resources. Each tag consists
    #      of a key and an optional value. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/using-tags.html">Tagging your Batch resources</a> in <i>Batch User Guide</i>.</p>
    #
    # @return [Types::CreateJobQueueOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_job_queue(
    #     job_queue_name: 'jobQueueName', # required
    #     state: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #     scheduling_policy_arn: 'schedulingPolicyArn',
    #     priority: 1, # required
    #     compute_environment_order: [
    #       {
    #         order: 1, # required
    #         compute_environment: 'computeEnvironment' # required
    #       }
    #     ], # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateJobQueueOutput
    #   resp.data.job_queue_name #=> String
    #   resp.data.job_queue_arn #=> String
    #
    def create_job_queue(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateJobQueueInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateJobQueueInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateJobQueue
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientException, Errors::ServerException]),
        data_parser: Parsers::CreateJobQueue
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateJobQueue,
        stubs: @stubs,
        params_class: Params::CreateJobQueueOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_job_queue
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Batch scheduling policy.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSchedulingPolicyInput}.
    #
    # @option params [String] :name
    #   <p>The name of the scheduling policy. It can be up to 128 letters long. It can contain uppercase and lowercase
    #      letters, numbers, hyphens (-), and underscores (_).</p>
    #
    # @option params [FairsharePolicy] :fairshare_policy
    #   <p>The fair share policy of the scheduling policy.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags that you apply to the scheduling policy to help you categorize and organize your resources. Each tag
    #      consists of a key and an optional value. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services Resources</a> in <i>Amazon Web Services General
    #       Reference</i>.</p>
    #            <p>These tags can be updated or removed using the <a href="https://docs.aws.amazon.com/batch/latest/APIReference/API_TagResource.html">TagResource</a> and <a href="https://docs.aws.amazon.com/batch/latest/APIReference/API_UntagResource.html">UntagResource</a> API operations.</p>
    #
    # @return [Types::CreateSchedulingPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_scheduling_policy(
    #     name: 'name', # required
    #     fairshare_policy: {
    #       share_decay_seconds: 1,
    #       compute_reservation: 1,
    #       share_distribution: [
    #         {
    #           share_identifier: 'shareIdentifier', # required
    #           weight_factor: 1.0
    #         }
    #       ]
    #     },
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSchedulingPolicyOutput
    #   resp.data.name #=> String
    #   resp.data.arn #=> String
    #
    def create_scheduling_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSchedulingPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSchedulingPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSchedulingPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientException, Errors::ServerException]),
        data_parser: Parsers::CreateSchedulingPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSchedulingPolicy,
        stubs: @stubs,
        params_class: Params::CreateSchedulingPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_scheduling_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an Batch compute environment.</p>
    #          <p>Before you can delete a compute environment, you must set its state to <code>DISABLED</code> with the <a>UpdateComputeEnvironment</a> API operation and disassociate it from any job queues with the <a>UpdateJobQueue</a> API operation. Compute environments that use Fargate resources must terminate all
    #    active jobs on that compute environment before deleting the compute environment. If this isn't done, the compute
    #    environment enters an invalid state.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteComputeEnvironmentInput}.
    #
    # @option params [String] :compute_environment
    #   <p>The name or Amazon Resource Name (ARN) of the compute environment to delete.</p>
    #
    # @return [Types::DeleteComputeEnvironmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_compute_environment(
    #     compute_environment: 'computeEnvironment' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteComputeEnvironmentOutput
    #
    def delete_compute_environment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteComputeEnvironmentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteComputeEnvironmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteComputeEnvironment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientException, Errors::ServerException]),
        data_parser: Parsers::DeleteComputeEnvironment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteComputeEnvironment,
        stubs: @stubs,
        params_class: Params::DeleteComputeEnvironmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_compute_environment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified job queue. You must first disable submissions for a queue with the <a>UpdateJobQueue</a> operation. All jobs in the queue are eventually terminated when you delete a job queue.
    #    The jobs are terminated at a rate of about 16 jobs each second.</p>
    #          <p>It's not necessary to disassociate compute environments from a queue before submitting a
    #     <code>DeleteJobQueue</code> request.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteJobQueueInput}.
    #
    # @option params [String] :job_queue
    #   <p>The short name or full Amazon Resource Name (ARN) of the queue to delete.</p>
    #
    # @return [Types::DeleteJobQueueOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_job_queue(
    #     job_queue: 'jobQueue' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteJobQueueOutput
    #
    def delete_job_queue(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteJobQueueInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteJobQueueInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteJobQueue
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientException, Errors::ServerException]),
        data_parser: Parsers::DeleteJobQueue
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteJobQueue,
        stubs: @stubs,
        params_class: Params::DeleteJobQueueOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_job_queue
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified scheduling policy.</p>
    #          <p>You can't delete a scheduling policy that's used in any job queues.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSchedulingPolicyInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the scheduling policy to delete.</p>
    #
    # @return [Types::DeleteSchedulingPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_scheduling_policy(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSchedulingPolicyOutput
    #
    def delete_scheduling_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSchedulingPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSchedulingPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSchedulingPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientException, Errors::ServerException]),
        data_parser: Parsers::DeleteSchedulingPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSchedulingPolicy,
        stubs: @stubs,
        params_class: Params::DeleteSchedulingPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_scheduling_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deregisters an Batch job definition. Job definitions are permanently deleted after 180 days.</p>
    #
    # @param [Hash] params
    #   See {Types::DeregisterJobDefinitionInput}.
    #
    # @option params [String] :job_definition
    #   <p>The name and revision (<code>name:revision</code>) or full Amazon Resource Name (ARN) of the job definition to deregister.</p>
    #
    # @return [Types::DeregisterJobDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_job_definition(
    #     job_definition: 'jobDefinition' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeregisterJobDefinitionOutput
    #
    def deregister_job_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeregisterJobDefinitionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeregisterJobDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeregisterJobDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientException, Errors::ServerException]),
        data_parser: Parsers::DeregisterJobDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeregisterJobDefinition,
        stubs: @stubs,
        params_class: Params::DeregisterJobDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deregister_job_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes one or more of your compute environments.</p>
    #          <p>If you're using an unmanaged compute environment, you can use the <code>DescribeComputeEnvironment</code>
    #    operation to determine the <code>ecsClusterArn</code> that you launch your Amazon ECS container instances
    #    into.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeComputeEnvironmentsInput}.
    #
    # @option params [Array<String>] :compute_environments
    #   <p>A list of up to 100 compute environment names or full Amazon Resource Name (ARN) entries.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of cluster results returned by <code>DescribeComputeEnvironments</code> in paginated output.
    #      When this parameter is used, <code>DescribeComputeEnvironments</code> only returns <code>maxResults</code> results in
    #      a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can
    #      be seen by sending another <code>DescribeComputeEnvironments</code> request with the returned <code>nextToken</code>
    #      value. This value can be between 1 and 100. If this parameter isn't used, then
    #       <code>DescribeComputeEnvironments</code> returns up to 100 results and a <code>nextToken</code>
    #      value if applicable.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated <code>DescribeComputeEnvironments</code>
    #      request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination
    #      continues from the end of the previous results that returned the <code>nextToken</code> value. This value is
    #       <code>null</code> when there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that's only used to
    #    retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #
    # @return [Types::DescribeComputeEnvironmentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_compute_environments(
    #     compute_environments: [
    #       'member'
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeComputeEnvironmentsOutput
    #   resp.data.compute_environments #=> Array<ComputeEnvironmentDetail>
    #   resp.data.compute_environments[0] #=> Types::ComputeEnvironmentDetail
    #   resp.data.compute_environments[0].compute_environment_name #=> String
    #   resp.data.compute_environments[0].compute_environment_arn #=> String
    #   resp.data.compute_environments[0].unmanagedv_cpus #=> Integer
    #   resp.data.compute_environments[0].ecs_cluster_arn #=> String
    #   resp.data.compute_environments[0].tags #=> Hash<String, String>
    #   resp.data.compute_environments[0].tags['key'] #=> String
    #   resp.data.compute_environments[0].type #=> String, one of ["MANAGED", "UNMANAGED"]
    #   resp.data.compute_environments[0].state #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.compute_environments[0].status #=> String, one of ["CREATING", "UPDATING", "DELETING", "DELETED", "VALID", "INVALID"]
    #   resp.data.compute_environments[0].status_reason #=> String
    #   resp.data.compute_environments[0].compute_resources #=> Types::ComputeResource
    #   resp.data.compute_environments[0].compute_resources.type #=> String, one of ["EC2", "SPOT", "FARGATE", "FARGATE_SPOT"]
    #   resp.data.compute_environments[0].compute_resources.allocation_strategy #=> String, one of ["BEST_FIT", "BEST_FIT_PROGRESSIVE", "SPOT_CAPACITY_OPTIMIZED"]
    #   resp.data.compute_environments[0].compute_resources.minv_cpus #=> Integer
    #   resp.data.compute_environments[0].compute_resources.maxv_cpus #=> Integer
    #   resp.data.compute_environments[0].compute_resources.desiredv_cpus #=> Integer
    #   resp.data.compute_environments[0].compute_resources.instance_types #=> Array<String>
    #   resp.data.compute_environments[0].compute_resources.instance_types[0] #=> String
    #   resp.data.compute_environments[0].compute_resources.image_id #=> String
    #   resp.data.compute_environments[0].compute_resources.subnets #=> Array<String>
    #   resp.data.compute_environments[0].compute_resources.security_group_ids #=> Array<String>
    #   resp.data.compute_environments[0].compute_resources.ec2_key_pair #=> String
    #   resp.data.compute_environments[0].compute_resources.instance_role #=> String
    #   resp.data.compute_environments[0].compute_resources.tags #=> Hash<String, String>
    #   resp.data.compute_environments[0].compute_resources.tags['key'] #=> String
    #   resp.data.compute_environments[0].compute_resources.placement_group #=> String
    #   resp.data.compute_environments[0].compute_resources.bid_percentage #=> Integer
    #   resp.data.compute_environments[0].compute_resources.spot_iam_fleet_role #=> String
    #   resp.data.compute_environments[0].compute_resources.launch_template #=> Types::LaunchTemplateSpecification
    #   resp.data.compute_environments[0].compute_resources.launch_template.launch_template_id #=> String
    #   resp.data.compute_environments[0].compute_resources.launch_template.launch_template_name #=> String
    #   resp.data.compute_environments[0].compute_resources.launch_template.version #=> String
    #   resp.data.compute_environments[0].compute_resources.ec2_configuration #=> Array<Ec2Configuration>
    #   resp.data.compute_environments[0].compute_resources.ec2_configuration[0] #=> Types::Ec2Configuration
    #   resp.data.compute_environments[0].compute_resources.ec2_configuration[0].image_type #=> String
    #   resp.data.compute_environments[0].compute_resources.ec2_configuration[0].image_id_override #=> String
    #   resp.data.compute_environments[0].service_role #=> String
    #   resp.data.compute_environments[0].update_policy #=> Types::UpdatePolicy
    #   resp.data.compute_environments[0].update_policy.terminate_jobs_on_update #=> Boolean
    #   resp.data.compute_environments[0].update_policy.job_execution_timeout_minutes #=> Integer
    #   resp.data.next_token #=> String
    #
    def describe_compute_environments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeComputeEnvironmentsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeComputeEnvironmentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeComputeEnvironments
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientException, Errors::ServerException]),
        data_parser: Parsers::DescribeComputeEnvironments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeComputeEnvironments,
        stubs: @stubs,
        params_class: Params::DescribeComputeEnvironmentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_compute_environments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a list of job definitions. You can specify a <code>status</code> (such as <code>ACTIVE</code>) to only
    #    return job definitions that match that status.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeJobDefinitionsInput}.
    #
    # @option params [Array<String>] :job_definitions
    #   <p>A list of up to 100 job definitions. Each entry in the list can either be an ARN in the format
    #       <code>arn:aws:batch:${Region}:${Account}:job-definition/${JobDefinitionName}:${Revision}</code> or a short version
    #      using the form <code>${JobDefinitionName}:${Revision}</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned by <code>DescribeJobDefinitions</code> in paginated output. When this
    #      parameter is used, <code>DescribeJobDefinitions</code> only returns <code>maxResults</code> results in a single page
    #      and a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending
    #      another <code>DescribeJobDefinitions</code> request with the returned <code>nextToken</code> value. This value can be
    #      between 1 and 100. If this parameter isn't used, then
    #       <code>DescribeJobDefinitions</code> returns up to 100 results and a <code>nextToken</code> value
    #      if applicable.</p>
    #
    # @option params [String] :job_definition_name
    #   <p>The name of the job definition to describe.</p>
    #
    # @option params [String] :status
    #   <p>The status used to filter job definitions.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated <code>DescribeJobDefinitions</code> request
    #      where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues
    #      from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code>
    #      when there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that's only used to
    #    retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #
    # @return [Types::DescribeJobDefinitionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_job_definitions(
    #     job_definitions: [
    #       'member'
    #     ],
    #     max_results: 1,
    #     job_definition_name: 'jobDefinitionName',
    #     status: 'status',
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeJobDefinitionsOutput
    #   resp.data.job_definitions #=> Array<JobDefinition>
    #   resp.data.job_definitions[0] #=> Types::JobDefinition
    #   resp.data.job_definitions[0].job_definition_name #=> String
    #   resp.data.job_definitions[0].job_definition_arn #=> String
    #   resp.data.job_definitions[0].revision #=> Integer
    #   resp.data.job_definitions[0].status #=> String
    #   resp.data.job_definitions[0].type #=> String
    #   resp.data.job_definitions[0].scheduling_priority #=> Integer
    #   resp.data.job_definitions[0].parameters #=> Hash<String, String>
    #   resp.data.job_definitions[0].parameters['key'] #=> String
    #   resp.data.job_definitions[0].retry_strategy #=> Types::RetryStrategy
    #   resp.data.job_definitions[0].retry_strategy.attempts #=> Integer
    #   resp.data.job_definitions[0].retry_strategy.evaluate_on_exit #=> Array<EvaluateOnExit>
    #   resp.data.job_definitions[0].retry_strategy.evaluate_on_exit[0] #=> Types::EvaluateOnExit
    #   resp.data.job_definitions[0].retry_strategy.evaluate_on_exit[0].on_status_reason #=> String
    #   resp.data.job_definitions[0].retry_strategy.evaluate_on_exit[0].on_reason #=> String
    #   resp.data.job_definitions[0].retry_strategy.evaluate_on_exit[0].on_exit_code #=> String
    #   resp.data.job_definitions[0].retry_strategy.evaluate_on_exit[0].action #=> String, one of ["RETRY", "EXIT"]
    #   resp.data.job_definitions[0].container_properties #=> Types::ContainerProperties
    #   resp.data.job_definitions[0].container_properties.image #=> String
    #   resp.data.job_definitions[0].container_properties.vcpus #=> Integer
    #   resp.data.job_definitions[0].container_properties.memory #=> Integer
    #   resp.data.job_definitions[0].container_properties.command #=> Array<String>
    #   resp.data.job_definitions[0].container_properties.command[0] #=> String
    #   resp.data.job_definitions[0].container_properties.job_role_arn #=> String
    #   resp.data.job_definitions[0].container_properties.execution_role_arn #=> String
    #   resp.data.job_definitions[0].container_properties.volumes #=> Array<Volume>
    #   resp.data.job_definitions[0].container_properties.volumes[0] #=> Types::Volume
    #   resp.data.job_definitions[0].container_properties.volumes[0].host #=> Types::Host
    #   resp.data.job_definitions[0].container_properties.volumes[0].host.source_path #=> String
    #   resp.data.job_definitions[0].container_properties.volumes[0].name #=> String
    #   resp.data.job_definitions[0].container_properties.volumes[0].efs_volume_configuration #=> Types::EFSVolumeConfiguration
    #   resp.data.job_definitions[0].container_properties.volumes[0].efs_volume_configuration.file_system_id #=> String
    #   resp.data.job_definitions[0].container_properties.volumes[0].efs_volume_configuration.root_directory #=> String
    #   resp.data.job_definitions[0].container_properties.volumes[0].efs_volume_configuration.transit_encryption #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.job_definitions[0].container_properties.volumes[0].efs_volume_configuration.transit_encryption_port #=> Integer
    #   resp.data.job_definitions[0].container_properties.volumes[0].efs_volume_configuration.authorization_config #=> Types::EFSAuthorizationConfig
    #   resp.data.job_definitions[0].container_properties.volumes[0].efs_volume_configuration.authorization_config.access_point_id #=> String
    #   resp.data.job_definitions[0].container_properties.volumes[0].efs_volume_configuration.authorization_config.iam #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.job_definitions[0].container_properties.environment #=> Array<KeyValuePair>
    #   resp.data.job_definitions[0].container_properties.environment[0] #=> Types::KeyValuePair
    #   resp.data.job_definitions[0].container_properties.environment[0].name #=> String
    #   resp.data.job_definitions[0].container_properties.environment[0].value #=> String
    #   resp.data.job_definitions[0].container_properties.mount_points #=> Array<MountPoint>
    #   resp.data.job_definitions[0].container_properties.mount_points[0] #=> Types::MountPoint
    #   resp.data.job_definitions[0].container_properties.mount_points[0].container_path #=> String
    #   resp.data.job_definitions[0].container_properties.mount_points[0].read_only #=> Boolean
    #   resp.data.job_definitions[0].container_properties.mount_points[0].source_volume #=> String
    #   resp.data.job_definitions[0].container_properties.readonly_root_filesystem #=> Boolean
    #   resp.data.job_definitions[0].container_properties.privileged #=> Boolean
    #   resp.data.job_definitions[0].container_properties.ulimits #=> Array<Ulimit>
    #   resp.data.job_definitions[0].container_properties.ulimits[0] #=> Types::Ulimit
    #   resp.data.job_definitions[0].container_properties.ulimits[0].hard_limit #=> Integer
    #   resp.data.job_definitions[0].container_properties.ulimits[0].name #=> String
    #   resp.data.job_definitions[0].container_properties.ulimits[0].soft_limit #=> Integer
    #   resp.data.job_definitions[0].container_properties.user #=> String
    #   resp.data.job_definitions[0].container_properties.instance_type #=> String
    #   resp.data.job_definitions[0].container_properties.resource_requirements #=> Array<ResourceRequirement>
    #   resp.data.job_definitions[0].container_properties.resource_requirements[0] #=> Types::ResourceRequirement
    #   resp.data.job_definitions[0].container_properties.resource_requirements[0].value #=> String
    #   resp.data.job_definitions[0].container_properties.resource_requirements[0].type #=> String, one of ["GPU", "VCPU", "MEMORY"]
    #   resp.data.job_definitions[0].container_properties.linux_parameters #=> Types::LinuxParameters
    #   resp.data.job_definitions[0].container_properties.linux_parameters.devices #=> Array<Device>
    #   resp.data.job_definitions[0].container_properties.linux_parameters.devices[0] #=> Types::Device
    #   resp.data.job_definitions[0].container_properties.linux_parameters.devices[0].host_path #=> String
    #   resp.data.job_definitions[0].container_properties.linux_parameters.devices[0].container_path #=> String
    #   resp.data.job_definitions[0].container_properties.linux_parameters.devices[0].permissions #=> Array<String>
    #   resp.data.job_definitions[0].container_properties.linux_parameters.devices[0].permissions[0] #=> String, one of ["READ", "WRITE", "MKNOD"]
    #   resp.data.job_definitions[0].container_properties.linux_parameters.init_process_enabled #=> Boolean
    #   resp.data.job_definitions[0].container_properties.linux_parameters.shared_memory_size #=> Integer
    #   resp.data.job_definitions[0].container_properties.linux_parameters.tmpfs #=> Array<Tmpfs>
    #   resp.data.job_definitions[0].container_properties.linux_parameters.tmpfs[0] #=> Types::Tmpfs
    #   resp.data.job_definitions[0].container_properties.linux_parameters.tmpfs[0].container_path #=> String
    #   resp.data.job_definitions[0].container_properties.linux_parameters.tmpfs[0].size #=> Integer
    #   resp.data.job_definitions[0].container_properties.linux_parameters.tmpfs[0].mount_options #=> Array<String>
    #   resp.data.job_definitions[0].container_properties.linux_parameters.max_swap #=> Integer
    #   resp.data.job_definitions[0].container_properties.linux_parameters.swappiness #=> Integer
    #   resp.data.job_definitions[0].container_properties.log_configuration #=> Types::LogConfiguration
    #   resp.data.job_definitions[0].container_properties.log_configuration.log_driver #=> String, one of ["json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk"]
    #   resp.data.job_definitions[0].container_properties.log_configuration.options #=> Hash<String, String>
    #   resp.data.job_definitions[0].container_properties.log_configuration.options['key'] #=> String
    #   resp.data.job_definitions[0].container_properties.log_configuration.secret_options #=> Array<Secret>
    #   resp.data.job_definitions[0].container_properties.log_configuration.secret_options[0] #=> Types::Secret
    #   resp.data.job_definitions[0].container_properties.log_configuration.secret_options[0].name #=> String
    #   resp.data.job_definitions[0].container_properties.log_configuration.secret_options[0].value_from #=> String
    #   resp.data.job_definitions[0].container_properties.secrets #=> Array<Secret>
    #   resp.data.job_definitions[0].container_properties.network_configuration #=> Types::NetworkConfiguration
    #   resp.data.job_definitions[0].container_properties.network_configuration.assign_public_ip #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.job_definitions[0].container_properties.fargate_platform_configuration #=> Types::FargatePlatformConfiguration
    #   resp.data.job_definitions[0].container_properties.fargate_platform_configuration.platform_version #=> String
    #   resp.data.job_definitions[0].timeout #=> Types::JobTimeout
    #   resp.data.job_definitions[0].timeout.attempt_duration_seconds #=> Integer
    #   resp.data.job_definitions[0].node_properties #=> Types::NodeProperties
    #   resp.data.job_definitions[0].node_properties.num_nodes #=> Integer
    #   resp.data.job_definitions[0].node_properties.main_node #=> Integer
    #   resp.data.job_definitions[0].node_properties.node_range_properties #=> Array<NodeRangeProperty>
    #   resp.data.job_definitions[0].node_properties.node_range_properties[0] #=> Types::NodeRangeProperty
    #   resp.data.job_definitions[0].node_properties.node_range_properties[0].target_nodes #=> String
    #   resp.data.job_definitions[0].node_properties.node_range_properties[0].container #=> Types::ContainerProperties
    #   resp.data.job_definitions[0].tags #=> Hash<String, String>
    #   resp.data.job_definitions[0].tags['key'] #=> String
    #   resp.data.job_definitions[0].propagate_tags #=> Boolean
    #   resp.data.job_definitions[0].platform_capabilities #=> Array<String>
    #   resp.data.job_definitions[0].platform_capabilities[0] #=> String, one of ["EC2", "FARGATE"]
    #   resp.data.next_token #=> String
    #
    def describe_job_definitions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeJobDefinitionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeJobDefinitionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeJobDefinitions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientException, Errors::ServerException]),
        data_parser: Parsers::DescribeJobDefinitions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeJobDefinitions,
        stubs: @stubs,
        params_class: Params::DescribeJobDefinitionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_job_definitions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes one or more of your job queues.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeJobQueuesInput}.
    #
    # @option params [Array<String>] :job_queues
    #   <p>A list of up to 100 queue names or full queue Amazon Resource Name (ARN) entries.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned by <code>DescribeJobQueues</code> in paginated output. When this
    #      parameter is used, <code>DescribeJobQueues</code> only returns <code>maxResults</code> results in a single page and a
    #       <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another
    #       <code>DescribeJobQueues</code> request with the returned <code>nextToken</code> value. This value can be between
    #      1 and 100. If this parameter isn't used, then <code>DescribeJobQueues</code> returns up
    #      to 100 results and a <code>nextToken</code> value if applicable.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated <code>DescribeJobQueues</code> request where
    #       <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the
    #      end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when
    #      there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that's only used to
    #    retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #
    # @return [Types::DescribeJobQueuesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_job_queues(
    #     job_queues: [
    #       'member'
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeJobQueuesOutput
    #   resp.data.job_queues #=> Array<JobQueueDetail>
    #   resp.data.job_queues[0] #=> Types::JobQueueDetail
    #   resp.data.job_queues[0].job_queue_name #=> String
    #   resp.data.job_queues[0].job_queue_arn #=> String
    #   resp.data.job_queues[0].state #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.job_queues[0].scheduling_policy_arn #=> String
    #   resp.data.job_queues[0].status #=> String, one of ["CREATING", "UPDATING", "DELETING", "DELETED", "VALID", "INVALID"]
    #   resp.data.job_queues[0].status_reason #=> String
    #   resp.data.job_queues[0].priority #=> Integer
    #   resp.data.job_queues[0].compute_environment_order #=> Array<ComputeEnvironmentOrder>
    #   resp.data.job_queues[0].compute_environment_order[0] #=> Types::ComputeEnvironmentOrder
    #   resp.data.job_queues[0].compute_environment_order[0].order #=> Integer
    #   resp.data.job_queues[0].compute_environment_order[0].compute_environment #=> String
    #   resp.data.job_queues[0].tags #=> Hash<String, String>
    #   resp.data.job_queues[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def describe_job_queues(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeJobQueuesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeJobQueuesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeJobQueues
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientException, Errors::ServerException]),
        data_parser: Parsers::DescribeJobQueues
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeJobQueues,
        stubs: @stubs,
        params_class: Params::DescribeJobQueuesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_job_queues
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a list of Batch jobs.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeJobsInput}.
    #
    # @option params [Array<String>] :jobs
    #   <p>A list of up to 100 job IDs.</p>
    #
    # @return [Types::DescribeJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_jobs(
    #     jobs: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeJobsOutput
    #   resp.data.jobs #=> Array<JobDetail>
    #   resp.data.jobs[0] #=> Types::JobDetail
    #   resp.data.jobs[0].job_arn #=> String
    #   resp.data.jobs[0].job_name #=> String
    #   resp.data.jobs[0].job_id #=> String
    #   resp.data.jobs[0].job_queue #=> String
    #   resp.data.jobs[0].status #=> String, one of ["SUBMITTED", "PENDING", "RUNNABLE", "STARTING", "RUNNING", "SUCCEEDED", "FAILED"]
    #   resp.data.jobs[0].share_identifier #=> String
    #   resp.data.jobs[0].scheduling_priority #=> Integer
    #   resp.data.jobs[0].attempts #=> Array<AttemptDetail>
    #   resp.data.jobs[0].attempts[0] #=> Types::AttemptDetail
    #   resp.data.jobs[0].attempts[0].container #=> Types::AttemptContainerDetail
    #   resp.data.jobs[0].attempts[0].container.container_instance_arn #=> String
    #   resp.data.jobs[0].attempts[0].container.task_arn #=> String
    #   resp.data.jobs[0].attempts[0].container.exit_code #=> Integer
    #   resp.data.jobs[0].attempts[0].container.reason #=> String
    #   resp.data.jobs[0].attempts[0].container.log_stream_name #=> String
    #   resp.data.jobs[0].attempts[0].container.network_interfaces #=> Array<NetworkInterface>
    #   resp.data.jobs[0].attempts[0].container.network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.jobs[0].attempts[0].container.network_interfaces[0].attachment_id #=> String
    #   resp.data.jobs[0].attempts[0].container.network_interfaces[0].ipv6_address #=> String
    #   resp.data.jobs[0].attempts[0].container.network_interfaces[0].private_ipv4_address #=> String
    #   resp.data.jobs[0].attempts[0].started_at #=> Integer
    #   resp.data.jobs[0].attempts[0].stopped_at #=> Integer
    #   resp.data.jobs[0].attempts[0].status_reason #=> String
    #   resp.data.jobs[0].status_reason #=> String
    #   resp.data.jobs[0].created_at #=> Integer
    #   resp.data.jobs[0].retry_strategy #=> Types::RetryStrategy
    #   resp.data.jobs[0].retry_strategy.attempts #=> Integer
    #   resp.data.jobs[0].retry_strategy.evaluate_on_exit #=> Array<EvaluateOnExit>
    #   resp.data.jobs[0].retry_strategy.evaluate_on_exit[0] #=> Types::EvaluateOnExit
    #   resp.data.jobs[0].retry_strategy.evaluate_on_exit[0].on_status_reason #=> String
    #   resp.data.jobs[0].retry_strategy.evaluate_on_exit[0].on_reason #=> String
    #   resp.data.jobs[0].retry_strategy.evaluate_on_exit[0].on_exit_code #=> String
    #   resp.data.jobs[0].retry_strategy.evaluate_on_exit[0].action #=> String, one of ["RETRY", "EXIT"]
    #   resp.data.jobs[0].started_at #=> Integer
    #   resp.data.jobs[0].stopped_at #=> Integer
    #   resp.data.jobs[0].depends_on #=> Array<JobDependency>
    #   resp.data.jobs[0].depends_on[0] #=> Types::JobDependency
    #   resp.data.jobs[0].depends_on[0].job_id #=> String
    #   resp.data.jobs[0].depends_on[0].type #=> String, one of ["N_TO_N", "SEQUENTIAL"]
    #   resp.data.jobs[0].job_definition #=> String
    #   resp.data.jobs[0].parameters #=> Hash<String, String>
    #   resp.data.jobs[0].parameters['key'] #=> String
    #   resp.data.jobs[0].container #=> Types::ContainerDetail
    #   resp.data.jobs[0].container.image #=> String
    #   resp.data.jobs[0].container.vcpus #=> Integer
    #   resp.data.jobs[0].container.memory #=> Integer
    #   resp.data.jobs[0].container.command #=> Array<String>
    #   resp.data.jobs[0].container.command[0] #=> String
    #   resp.data.jobs[0].container.job_role_arn #=> String
    #   resp.data.jobs[0].container.execution_role_arn #=> String
    #   resp.data.jobs[0].container.volumes #=> Array<Volume>
    #   resp.data.jobs[0].container.volumes[0] #=> Types::Volume
    #   resp.data.jobs[0].container.volumes[0].host #=> Types::Host
    #   resp.data.jobs[0].container.volumes[0].host.source_path #=> String
    #   resp.data.jobs[0].container.volumes[0].name #=> String
    #   resp.data.jobs[0].container.volumes[0].efs_volume_configuration #=> Types::EFSVolumeConfiguration
    #   resp.data.jobs[0].container.volumes[0].efs_volume_configuration.file_system_id #=> String
    #   resp.data.jobs[0].container.volumes[0].efs_volume_configuration.root_directory #=> String
    #   resp.data.jobs[0].container.volumes[0].efs_volume_configuration.transit_encryption #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.jobs[0].container.volumes[0].efs_volume_configuration.transit_encryption_port #=> Integer
    #   resp.data.jobs[0].container.volumes[0].efs_volume_configuration.authorization_config #=> Types::EFSAuthorizationConfig
    #   resp.data.jobs[0].container.volumes[0].efs_volume_configuration.authorization_config.access_point_id #=> String
    #   resp.data.jobs[0].container.volumes[0].efs_volume_configuration.authorization_config.iam #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.jobs[0].container.environment #=> Array<KeyValuePair>
    #   resp.data.jobs[0].container.environment[0] #=> Types::KeyValuePair
    #   resp.data.jobs[0].container.environment[0].name #=> String
    #   resp.data.jobs[0].container.environment[0].value #=> String
    #   resp.data.jobs[0].container.mount_points #=> Array<MountPoint>
    #   resp.data.jobs[0].container.mount_points[0] #=> Types::MountPoint
    #   resp.data.jobs[0].container.mount_points[0].container_path #=> String
    #   resp.data.jobs[0].container.mount_points[0].read_only #=> Boolean
    #   resp.data.jobs[0].container.mount_points[0].source_volume #=> String
    #   resp.data.jobs[0].container.readonly_root_filesystem #=> Boolean
    #   resp.data.jobs[0].container.ulimits #=> Array<Ulimit>
    #   resp.data.jobs[0].container.ulimits[0] #=> Types::Ulimit
    #   resp.data.jobs[0].container.ulimits[0].hard_limit #=> Integer
    #   resp.data.jobs[0].container.ulimits[0].name #=> String
    #   resp.data.jobs[0].container.ulimits[0].soft_limit #=> Integer
    #   resp.data.jobs[0].container.privileged #=> Boolean
    #   resp.data.jobs[0].container.user #=> String
    #   resp.data.jobs[0].container.exit_code #=> Integer
    #   resp.data.jobs[0].container.reason #=> String
    #   resp.data.jobs[0].container.container_instance_arn #=> String
    #   resp.data.jobs[0].container.task_arn #=> String
    #   resp.data.jobs[0].container.log_stream_name #=> String
    #   resp.data.jobs[0].container.instance_type #=> String
    #   resp.data.jobs[0].container.network_interfaces #=> Array<NetworkInterface>
    #   resp.data.jobs[0].container.resource_requirements #=> Array<ResourceRequirement>
    #   resp.data.jobs[0].container.resource_requirements[0] #=> Types::ResourceRequirement
    #   resp.data.jobs[0].container.resource_requirements[0].value #=> String
    #   resp.data.jobs[0].container.resource_requirements[0].type #=> String, one of ["GPU", "VCPU", "MEMORY"]
    #   resp.data.jobs[0].container.linux_parameters #=> Types::LinuxParameters
    #   resp.data.jobs[0].container.linux_parameters.devices #=> Array<Device>
    #   resp.data.jobs[0].container.linux_parameters.devices[0] #=> Types::Device
    #   resp.data.jobs[0].container.linux_parameters.devices[0].host_path #=> String
    #   resp.data.jobs[0].container.linux_parameters.devices[0].container_path #=> String
    #   resp.data.jobs[0].container.linux_parameters.devices[0].permissions #=> Array<String>
    #   resp.data.jobs[0].container.linux_parameters.devices[0].permissions[0] #=> String, one of ["READ", "WRITE", "MKNOD"]
    #   resp.data.jobs[0].container.linux_parameters.init_process_enabled #=> Boolean
    #   resp.data.jobs[0].container.linux_parameters.shared_memory_size #=> Integer
    #   resp.data.jobs[0].container.linux_parameters.tmpfs #=> Array<Tmpfs>
    #   resp.data.jobs[0].container.linux_parameters.tmpfs[0] #=> Types::Tmpfs
    #   resp.data.jobs[0].container.linux_parameters.tmpfs[0].container_path #=> String
    #   resp.data.jobs[0].container.linux_parameters.tmpfs[0].size #=> Integer
    #   resp.data.jobs[0].container.linux_parameters.tmpfs[0].mount_options #=> Array<String>
    #   resp.data.jobs[0].container.linux_parameters.max_swap #=> Integer
    #   resp.data.jobs[0].container.linux_parameters.swappiness #=> Integer
    #   resp.data.jobs[0].container.log_configuration #=> Types::LogConfiguration
    #   resp.data.jobs[0].container.log_configuration.log_driver #=> String, one of ["json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk"]
    #   resp.data.jobs[0].container.log_configuration.options #=> Hash<String, String>
    #   resp.data.jobs[0].container.log_configuration.options['key'] #=> String
    #   resp.data.jobs[0].container.log_configuration.secret_options #=> Array<Secret>
    #   resp.data.jobs[0].container.log_configuration.secret_options[0] #=> Types::Secret
    #   resp.data.jobs[0].container.log_configuration.secret_options[0].name #=> String
    #   resp.data.jobs[0].container.log_configuration.secret_options[0].value_from #=> String
    #   resp.data.jobs[0].container.secrets #=> Array<Secret>
    #   resp.data.jobs[0].container.network_configuration #=> Types::NetworkConfiguration
    #   resp.data.jobs[0].container.network_configuration.assign_public_ip #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.jobs[0].container.fargate_platform_configuration #=> Types::FargatePlatformConfiguration
    #   resp.data.jobs[0].container.fargate_platform_configuration.platform_version #=> String
    #   resp.data.jobs[0].node_details #=> Types::NodeDetails
    #   resp.data.jobs[0].node_details.node_index #=> Integer
    #   resp.data.jobs[0].node_details.is_main_node #=> Boolean
    #   resp.data.jobs[0].node_properties #=> Types::NodeProperties
    #   resp.data.jobs[0].node_properties.num_nodes #=> Integer
    #   resp.data.jobs[0].node_properties.main_node #=> Integer
    #   resp.data.jobs[0].node_properties.node_range_properties #=> Array<NodeRangeProperty>
    #   resp.data.jobs[0].node_properties.node_range_properties[0] #=> Types::NodeRangeProperty
    #   resp.data.jobs[0].node_properties.node_range_properties[0].target_nodes #=> String
    #   resp.data.jobs[0].node_properties.node_range_properties[0].container #=> Types::ContainerProperties
    #   resp.data.jobs[0].node_properties.node_range_properties[0].container.image #=> String
    #   resp.data.jobs[0].node_properties.node_range_properties[0].container.vcpus #=> Integer
    #   resp.data.jobs[0].node_properties.node_range_properties[0].container.memory #=> Integer
    #   resp.data.jobs[0].node_properties.node_range_properties[0].container.command #=> Array<String>
    #   resp.data.jobs[0].node_properties.node_range_properties[0].container.job_role_arn #=> String
    #   resp.data.jobs[0].node_properties.node_range_properties[0].container.execution_role_arn #=> String
    #   resp.data.jobs[0].node_properties.node_range_properties[0].container.volumes #=> Array<Volume>
    #   resp.data.jobs[0].node_properties.node_range_properties[0].container.environment #=> Array<KeyValuePair>
    #   resp.data.jobs[0].node_properties.node_range_properties[0].container.mount_points #=> Array<MountPoint>
    #   resp.data.jobs[0].node_properties.node_range_properties[0].container.readonly_root_filesystem #=> Boolean
    #   resp.data.jobs[0].node_properties.node_range_properties[0].container.privileged #=> Boolean
    #   resp.data.jobs[0].node_properties.node_range_properties[0].container.ulimits #=> Array<Ulimit>
    #   resp.data.jobs[0].node_properties.node_range_properties[0].container.user #=> String
    #   resp.data.jobs[0].node_properties.node_range_properties[0].container.instance_type #=> String
    #   resp.data.jobs[0].node_properties.node_range_properties[0].container.resource_requirements #=> Array<ResourceRequirement>
    #   resp.data.jobs[0].node_properties.node_range_properties[0].container.linux_parameters #=> Types::LinuxParameters
    #   resp.data.jobs[0].node_properties.node_range_properties[0].container.log_configuration #=> Types::LogConfiguration
    #   resp.data.jobs[0].node_properties.node_range_properties[0].container.secrets #=> Array<Secret>
    #   resp.data.jobs[0].node_properties.node_range_properties[0].container.network_configuration #=> Types::NetworkConfiguration
    #   resp.data.jobs[0].node_properties.node_range_properties[0].container.fargate_platform_configuration #=> Types::FargatePlatformConfiguration
    #   resp.data.jobs[0].array_properties #=> Types::ArrayPropertiesDetail
    #   resp.data.jobs[0].array_properties.status_summary #=> Hash<String, Integer>
    #   resp.data.jobs[0].array_properties.status_summary['key'] #=> Integer
    #   resp.data.jobs[0].array_properties.size #=> Integer
    #   resp.data.jobs[0].array_properties.index #=> Integer
    #   resp.data.jobs[0].timeout #=> Types::JobTimeout
    #   resp.data.jobs[0].timeout.attempt_duration_seconds #=> Integer
    #   resp.data.jobs[0].tags #=> Hash<String, String>
    #   resp.data.jobs[0].tags['key'] #=> String
    #   resp.data.jobs[0].propagate_tags #=> Boolean
    #   resp.data.jobs[0].platform_capabilities #=> Array<String>
    #   resp.data.jobs[0].platform_capabilities[0] #=> String, one of ["EC2", "FARGATE"]
    #
    def describe_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeJobsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientException, Errors::ServerException]),
        data_parser: Parsers::DescribeJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeJobs,
        stubs: @stubs,
        params_class: Params::DescribeJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes one or more of your scheduling policies.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSchedulingPoliciesInput}.
    #
    # @option params [Array<String>] :arns
    #   <p>A list of up to 100 scheduling policy Amazon Resource Name (ARN) entries.</p>
    #
    # @return [Types::DescribeSchedulingPoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scheduling_policies(
    #     arns: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSchedulingPoliciesOutput
    #   resp.data.scheduling_policies #=> Array<SchedulingPolicyDetail>
    #   resp.data.scheduling_policies[0] #=> Types::SchedulingPolicyDetail
    #   resp.data.scheduling_policies[0].name #=> String
    #   resp.data.scheduling_policies[0].arn #=> String
    #   resp.data.scheduling_policies[0].fairshare_policy #=> Types::FairsharePolicy
    #   resp.data.scheduling_policies[0].fairshare_policy.share_decay_seconds #=> Integer
    #   resp.data.scheduling_policies[0].fairshare_policy.compute_reservation #=> Integer
    #   resp.data.scheduling_policies[0].fairshare_policy.share_distribution #=> Array<ShareAttributes>
    #   resp.data.scheduling_policies[0].fairshare_policy.share_distribution[0] #=> Types::ShareAttributes
    #   resp.data.scheduling_policies[0].fairshare_policy.share_distribution[0].share_identifier #=> String
    #   resp.data.scheduling_policies[0].fairshare_policy.share_distribution[0].weight_factor #=> Float
    #   resp.data.scheduling_policies[0].tags #=> Hash<String, String>
    #   resp.data.scheduling_policies[0].tags['key'] #=> String
    #
    def describe_scheduling_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSchedulingPoliciesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSchedulingPoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSchedulingPolicies
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientException, Errors::ServerException]),
        data_parser: Parsers::DescribeSchedulingPolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSchedulingPolicies,
        stubs: @stubs,
        params_class: Params::DescribeSchedulingPoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_scheduling_policies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of Batch jobs.</p>
    #          <p>You must specify only one of the following items:</p>
    #          <ul>
    #             <li>
    #                <p>A job queue ID to return a list of jobs in that job queue</p>
    #             </li>
    #             <li>
    #                <p>A multi-node parallel job ID to return a list of nodes for that job</p>
    #             </li>
    #             <li>
    #                <p>An array job ID to return a list of the children for that job</p>
    #             </li>
    #          </ul>
    #          <p>You can filter the results by job status with the <code>jobStatus</code> parameter. If you don't specify a
    #    status, only <code>RUNNING</code> jobs are returned.</p>
    #
    # @param [Hash] params
    #   See {Types::ListJobsInput}.
    #
    # @option params [String] :job_queue
    #   <p>The name or full Amazon Resource Name (ARN) of the job queue used to list jobs.</p>
    #
    # @option params [String] :array_job_id
    #   <p>The job ID for an array job. Specifying an array job ID with this parameter lists all child jobs from within the
    #      specified array.</p>
    #
    # @option params [String] :multi_node_job_id
    #   <p>The job ID for a multi-node parallel job. Specifying a multi-node parallel job ID with this parameter lists all
    #      nodes that are associated with the specified job.</p>
    #
    # @option params [String] :job_status
    #   <p>The job status used to filter jobs in the specified queue. If the <code>filters</code> parameter is specified,
    #      the <code>jobStatus</code> parameter is ignored and jobs with any status are returned. If you don't specify a status,
    #      only <code>RUNNING</code> jobs are returned.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned by <code>ListJobs</code> in paginated output. When this parameter is
    #      used, <code>ListJobs</code> only returns <code>maxResults</code> results in a single page and a
    #       <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another
    #       <code>ListJobs</code> request with the returned <code>nextToken</code> value. This value can be between
    #      1 and 100. If this parameter isn't used, then <code>ListJobs</code> returns up to
    #      100 results and a <code>nextToken</code> value if applicable.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated <code>ListJobs</code> request where
    #       <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the
    #      end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when
    #      there are no more results to return.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that's only used to
    #    retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #
    # @option params [Array<KeyValuesPair>] :filters
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
    # @return [Types::ListJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_jobs(
    #     job_queue: 'jobQueue',
    #     array_job_id: 'arrayJobId',
    #     multi_node_job_id: 'multiNodeJobId',
    #     job_status: 'SUBMITTED', # accepts ["SUBMITTED", "PENDING", "RUNNABLE", "STARTING", "RUNNING", "SUCCEEDED", "FAILED"]
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     filters: [
    #       {
    #         name: 'name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListJobsOutput
    #   resp.data.job_summary_list #=> Array<JobSummary>
    #   resp.data.job_summary_list[0] #=> Types::JobSummary
    #   resp.data.job_summary_list[0].job_arn #=> String
    #   resp.data.job_summary_list[0].job_id #=> String
    #   resp.data.job_summary_list[0].job_name #=> String
    #   resp.data.job_summary_list[0].created_at #=> Integer
    #   resp.data.job_summary_list[0].status #=> String, one of ["SUBMITTED", "PENDING", "RUNNABLE", "STARTING", "RUNNING", "SUCCEEDED", "FAILED"]
    #   resp.data.job_summary_list[0].status_reason #=> String
    #   resp.data.job_summary_list[0].started_at #=> Integer
    #   resp.data.job_summary_list[0].stopped_at #=> Integer
    #   resp.data.job_summary_list[0].container #=> Types::ContainerSummary
    #   resp.data.job_summary_list[0].container.exit_code #=> Integer
    #   resp.data.job_summary_list[0].container.reason #=> String
    #   resp.data.job_summary_list[0].array_properties #=> Types::ArrayPropertiesSummary
    #   resp.data.job_summary_list[0].array_properties.size #=> Integer
    #   resp.data.job_summary_list[0].array_properties.index #=> Integer
    #   resp.data.job_summary_list[0].node_properties #=> Types::NodePropertiesSummary
    #   resp.data.job_summary_list[0].node_properties.is_main_node #=> Boolean
    #   resp.data.job_summary_list[0].node_properties.num_nodes #=> Integer
    #   resp.data.job_summary_list[0].node_properties.node_index #=> Integer
    #   resp.data.job_summary_list[0].job_definition #=> String
    #   resp.data.next_token #=> String
    #
    def list_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListJobsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientException, Errors::ServerException]),
        data_parser: Parsers::ListJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListJobs,
        stubs: @stubs,
        params_class: Params::ListJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of Batch scheduling policies.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSchedulingPoliciesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that's returned by <code>ListSchedulingPolicies</code> in paginated output. When
    #      this parameter is used, <code>ListSchedulingPolicies</code> only returns <code>maxResults</code> results in a single
    #      page and a <code>nextToken</code> response element. You can see the remaining results of the initial request by
    #      sending another <code>ListSchedulingPolicies</code> request with the returned <code>nextToken</code> value. This
    #      value can be between 1 and 100. If this parameter isn't used,
    #       <code>ListSchedulingPolicies</code> returns up to 100 results and a <code>nextToken</code> value
    #      if applicable.</p>
    #
    # @option params [String] :next_token
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
    # @return [Types::ListSchedulingPoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_scheduling_policies(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSchedulingPoliciesOutput
    #   resp.data.scheduling_policies #=> Array<SchedulingPolicyListingDetail>
    #   resp.data.scheduling_policies[0] #=> Types::SchedulingPolicyListingDetail
    #   resp.data.scheduling_policies[0].arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_scheduling_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSchedulingPoliciesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSchedulingPoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSchedulingPolicies
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientException, Errors::ServerException]),
        data_parser: Parsers::ListSchedulingPolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSchedulingPolicies,
        stubs: @stubs,
        params_class: Params::ListSchedulingPoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_scheduling_policies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags for an Batch resource. Batch resources that support tags are compute environments, jobs, job definitions, job queues,
    #  and scheduling policies. ARNs for child jobs of array and multi-node parallel (MNP) jobs are not supported.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource that tags are listed for. Batch resources that support tags are compute environments, jobs, job definitions, job queues,
    #    and scheduling policies. ARNs for child jobs of array and multi-node parallel (MNP) jobs are not supported.</p>
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
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def list_tags_for_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsForResourceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsForResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTagsForResource
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientException, Errors::ServerException]),
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

    # <p>Registers an Batch job definition.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterJobDefinitionInput}.
    #
    # @option params [String] :job_definition_name
    #   <p>The name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and
    #      lowercase letters, numbers, hyphens (-), and underscores (_).</p>
    #
    # @option params [String] :type
    #   <p>The type of job definition. For more information about multi-node parallel jobs, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/multi-node-job-def.html">Creating a multi-node parallel job definition</a> in the
    #       <i>Batch User Guide</i>.</p>
    #            <note>
    #               <p>If the job is run on Fargate resources, then <code>multinode</code> isn't supported.</p>
    #            </note>
    #
    # @option params [Hash<String, String>] :parameters
    #   <p>Default parameter substitution placeholders to set in the job definition. Parameters are specified as a
    #      key-value pair mapping. Parameters in a <code>SubmitJob</code> request override any corresponding parameter defaults
    #      from the job definition.</p>
    #
    # @option params [Integer] :scheduling_priority
    #   <p>The scheduling priority for jobs that are submitted with this job definition. This will only affect jobs in job
    #      queues with a fair share policy. Jobs with a higher scheduling priority will be scheduled before jobs with a lower
    #      scheduling priority.</p>
    #            <p>The minimum supported value is 0 and the maximum supported value is 9999.</p>
    #
    # @option params [ContainerProperties] :container_properties
    #   <p>An object with various properties specific to single-node container-based jobs. If the job definition's
    #       <code>type</code> parameter is <code>container</code>, then you must specify either <code>containerProperties</code>
    #      or <code>nodeProperties</code>.</p>
    #            <note>
    #               <p>If the job runs on Fargate resources, then you must not specify <code>nodeProperties</code>; use only
    #        <code>containerProperties</code>.</p>
    #            </note>
    #
    # @option params [NodeProperties] :node_properties
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
    # @option params [RetryStrategy] :retry_strategy
    #   <p>The retry strategy to use for failed jobs that are submitted with this job definition. Any retry strategy that's
    #      specified during a <a>SubmitJob</a> operation overrides the retry strategy defined here. If a job is
    #      terminated due to a timeout, it isn't retried.</p>
    #
    # @option params [Boolean] :propagate_tags
    #   <p>Specifies whether to propagate the tags from the job or job definition to the corresponding Amazon ECS task. If no
    #      value is specified, the tags are not propagated. Tags can only be propagated to the tasks during task creation. For
    #      tags with the same name, job tags are given priority over job definitions tags. If the total number of combined tags
    #      from the job and job definition is over 50, the job is moved to the <code>FAILED</code> state.</p>
    #
    # @option params [JobTimeout] :timeout
    #   <p>The timeout configuration for jobs that are submitted with this job definition, after which Batch terminates
    #      your jobs if they have not finished. If a job is terminated due to a timeout, it isn't retried. The minimum value for
    #      the timeout is 60 seconds. Any timeout configuration that's specified during a <a>SubmitJob</a> operation
    #      overrides the timeout configuration defined here. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/job_timeouts.html">Job Timeouts</a> in the <i>Batch User Guide</i>.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags that you apply to the job definition to help you categorize and organize your resources. Each tag
    #      consists of a key and an optional value. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/using-tags.html">Tagging Amazon Web Services Resources</a> in <i>Batch User Guide</i>.</p>
    #
    # @option params [Array<String>] :platform_capabilities
    #   <p>The platform capabilities required by the job definition. If no value is specified, it defaults to
    #       <code>EC2</code>. To run the job on Fargate resources, specify <code>FARGATE</code>.</p>
    #
    # @return [Types::RegisterJobDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_job_definition(
    #     job_definition_name: 'jobDefinitionName', # required
    #     type: 'container', # required - accepts ["container", "multinode"]
    #     parameters: {
    #       'key' => 'value'
    #     },
    #     scheduling_priority: 1,
    #     container_properties: {
    #       image: 'image',
    #       vcpus: 1,
    #       memory: 1,
    #       command: [
    #         'member'
    #       ],
    #       job_role_arn: 'jobRoleArn',
    #       execution_role_arn: 'executionRoleArn',
    #       volumes: [
    #         {
    #           host: {
    #             source_path: 'sourcePath'
    #           },
    #           name: 'name',
    #           efs_volume_configuration: {
    #             file_system_id: 'fileSystemId', # required
    #             root_directory: 'rootDirectory',
    #             transit_encryption: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #             transit_encryption_port: 1,
    #             authorization_config: {
    #               access_point_id: 'accessPointId',
    #               iam: 'ENABLED' # accepts ["ENABLED", "DISABLED"]
    #             }
    #           }
    #         }
    #       ],
    #       environment: [
    #         {
    #           name: 'name',
    #           value: 'value'
    #         }
    #       ],
    #       mount_points: [
    #         {
    #           container_path: 'containerPath',
    #           read_only: false,
    #           source_volume: 'sourceVolume'
    #         }
    #       ],
    #       readonly_root_filesystem: false,
    #       privileged: false,
    #       ulimits: [
    #         {
    #           hard_limit: 1, # required
    #           name: 'name', # required
    #           soft_limit: 1 # required
    #         }
    #       ],
    #       user: 'user',
    #       instance_type: 'instanceType',
    #       resource_requirements: [
    #         {
    #           value: 'value', # required
    #           type: 'GPU' # required - accepts ["GPU", "VCPU", "MEMORY"]
    #         }
    #       ],
    #       linux_parameters: {
    #         devices: [
    #           {
    #             host_path: 'hostPath', # required
    #             container_path: 'containerPath',
    #             permissions: [
    #               'READ' # accepts ["READ", "WRITE", "MKNOD"]
    #             ]
    #           }
    #         ],
    #         init_process_enabled: false,
    #         shared_memory_size: 1,
    #         tmpfs: [
    #           {
    #             container_path: 'containerPath', # required
    #             size: 1, # required
    #           }
    #         ],
    #         max_swap: 1,
    #         swappiness: 1
    #       },
    #       log_configuration: {
    #         log_driver: 'json-file', # required - accepts ["json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk"]
    #         options: {
    #           'key' => 'value'
    #         },
    #         secret_options: [
    #           {
    #             name: 'name', # required
    #             value_from: 'valueFrom' # required
    #           }
    #         ]
    #       },
    #       network_configuration: {
    #         assign_public_ip: 'ENABLED' # accepts ["ENABLED", "DISABLED"]
    #       },
    #       fargate_platform_configuration: {
    #         platform_version: 'platformVersion'
    #       }
    #     },
    #     node_properties: {
    #       num_nodes: 1, # required
    #       main_node: 1, # required
    #       node_range_properties: [
    #         {
    #           target_nodes: 'targetNodes', # required
    #         }
    #       ] # required
    #     },
    #     retry_strategy: {
    #       attempts: 1,
    #       evaluate_on_exit: [
    #         {
    #           on_status_reason: 'onStatusReason',
    #           on_reason: 'onReason',
    #           on_exit_code: 'onExitCode',
    #           action: 'RETRY' # required - accepts ["RETRY", "EXIT"]
    #         }
    #       ]
    #     },
    #     propagate_tags: false,
    #     timeout: {
    #       attempt_duration_seconds: 1
    #     },
    #     tags: {
    #       'key' => 'value'
    #     },
    #     platform_capabilities: [
    #       'EC2' # accepts ["EC2", "FARGATE"]
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterJobDefinitionOutput
    #   resp.data.job_definition_name #=> String
    #   resp.data.job_definition_arn #=> String
    #   resp.data.revision #=> Integer
    #
    def register_job_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterJobDefinitionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterJobDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterJobDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientException, Errors::ServerException]),
        data_parser: Parsers::RegisterJobDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterJobDefinition,
        stubs: @stubs,
        params_class: Params::RegisterJobDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_job_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Submits an Batch job from a job definition. Parameters that are specified during <a>SubmitJob</a>
    #    override parameters defined in the job definition. vCPU and memory requirements that are specified in the
    #     <code>resourceRequirements</code> objects in the job definition are the exception. They can't be overridden this way
    #    using the <code>memory</code> and <code>vcpus</code> parameters. Rather, you must specify updates to job definition
    #    parameters in a <code>resourceRequirements</code> object that's included in the <code>containerOverrides</code>
    #    parameter.</p>
    #          <note>
    #             <p>Job queues with a scheduling policy are limited to 500 active fair share identifiers at a time. </p>
    #          </note>
    #          <important>
    #             <p>Jobs that run on Fargate resources can't be guaranteed to run for more than 14 days. This is because, after 14
    #     days, Fargate resources might become unavailable and job might be terminated.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::SubmitJobInput}.
    #
    # @option params [String] :job_name
    #   <p>The name of the job. It can be up to 128 letters long. The first character must be alphanumeric, can contain
    #      uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).</p>
    #
    # @option params [String] :job_queue
    #   <p>The job queue where the job is submitted. You can specify either the name or the Amazon Resource Name (ARN) of the queue.</p>
    #
    # @option params [String] :share_identifier
    #   <p>The share identifier for the job. If the job queue does not have a scheduling policy, then this parameter must
    #      not be specified. If the job queue has a scheduling policy, then this parameter must be specified.</p>
    #
    # @option params [Integer] :scheduling_priority_override
    #   <p>The scheduling priority for the job. This will only affect jobs in job queues with a fair share policy. Jobs
    #      with a higher scheduling priority will be scheduled before jobs with a lower scheduling priority. This will override
    #      any scheduling priority in the job definition.</p>
    #            <p>The minimum supported value is 0 and the maximum supported value is 9999.</p>
    #
    # @option params [ArrayProperties] :array_properties
    #   <p>The array properties for the submitted job, such as the size of the array. The array size can be between 2 and
    #      10,000. If you specify array properties for a job, it becomes an array job. For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/array_jobs.html">Array Jobs</a> in the
    #      <i>Batch User Guide</i>.</p>
    #
    # @option params [Array<JobDependency>] :depends_on
    #   <p>A list of dependencies for the job. A job can depend upon a maximum of 20 jobs. You can specify a
    #       <code>SEQUENTIAL</code> type dependency without specifying a job ID for array jobs so that each child array job
    #      completes sequentially, starting at index 0. You can also specify an <code>N_TO_N</code> type dependency with a job
    #      ID for array jobs. In that case, each index child of this job must wait for the corresponding index child of each
    #      dependency to complete before it can begin.</p>
    #
    # @option params [String] :job_definition
    #   <p>The job definition used by this job. This value can be one of <code>name</code>, <code>name:revision</code>, or
    #      the Amazon Resource Name (ARN) for the job definition. If <code>name</code> is specified without a revision then the latest active
    #      revision is used.</p>
    #
    # @option params [Hash<String, String>] :parameters
    #   <p>Additional parameters passed to the job that replace parameter substitution placeholders that are set in the job
    #      definition. Parameters are specified as a key and value pair mapping. Parameters in a <code>SubmitJob</code> request
    #      override any corresponding parameter defaults from the job definition.</p>
    #
    # @option params [ContainerOverrides] :container_overrides
    #   <p>A list of container overrides in the JSON format that specify the name of a container in the specified job
    #      definition and the overrides it receives. You can override the default command for a container, which is specified in
    #      the job definition or the Docker image, with a <code>command</code> override. You can also override
    #      existing environment variables on a container or add new environment variables to it with an <code>environment</code>
    #      override.</p>
    #
    # @option params [NodeOverrides] :node_overrides
    #   <p>A list of node overrides in JSON format that specify the node range to target and the container overrides for
    #      that node range.</p>
    #            <note>
    #               <p>This parameter isn't applicable to jobs that are running on Fargate resources; use
    #        <code>containerOverrides</code> instead.</p>
    #            </note>
    #
    # @option params [RetryStrategy] :retry_strategy
    #   <p>The retry strategy to use for failed jobs from this <a>SubmitJob</a> operation. When a retry strategy
    #      is specified here, it overrides the retry strategy defined in the job definition.</p>
    #
    # @option params [Boolean] :propagate_tags
    #   <p>Specifies whether to propagate the tags from the job or job definition to the corresponding Amazon ECS task. If no
    #      value is specified, the tags aren't propagated. Tags can only be propagated to the tasks during task creation. For
    #      tags with the same name, job tags are given priority over job definitions tags. If the total number of combined tags
    #      from the job and job definition is over 50, the job is moved to the <code>FAILED</code> state. When specified, this
    #      overrides the tag propagation setting in the job definition.</p>
    #
    # @option params [JobTimeout] :timeout
    #   <p>The timeout configuration for this <a>SubmitJob</a> operation. You can specify a timeout duration
    #      after which Batch terminates your jobs if they haven't finished. If a job is terminated due to a timeout, it isn't
    #      retried. The minimum value for the timeout is 60 seconds. This configuration overrides any timeout configuration
    #      specified in the job definition. For array jobs, child jobs have the same timeout configuration as the parent job.
    #      For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/job_timeouts.html">Job
    #       Timeouts</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags that you apply to the job request to help you categorize and organize your resources. Each tag consists
    #      of a key and an optional value. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services Resources</a> in <i>Amazon Web Services General
    #       Reference</i>.</p>
    #
    # @return [Types::SubmitJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.submit_job(
    #     job_name: 'jobName', # required
    #     job_queue: 'jobQueue', # required
    #     share_identifier: 'shareIdentifier',
    #     scheduling_priority_override: 1,
    #     array_properties: {
    #       size: 1
    #     },
    #     depends_on: [
    #       {
    #         job_id: 'jobId',
    #         type: 'N_TO_N' # accepts ["N_TO_N", "SEQUENTIAL"]
    #       }
    #     ],
    #     job_definition: 'jobDefinition', # required
    #     parameters: {
    #       'key' => 'value'
    #     },
    #     container_overrides: {
    #       vcpus: 1,
    #       memory: 1,
    #       command: [
    #         'member'
    #       ],
    #       instance_type: 'instanceType',
    #       environment: [
    #         {
    #           name: 'name',
    #           value: 'value'
    #         }
    #       ],
    #       resource_requirements: [
    #         {
    #           value: 'value', # required
    #           type: 'GPU' # required - accepts ["GPU", "VCPU", "MEMORY"]
    #         }
    #       ]
    #     },
    #     node_overrides: {
    #       num_nodes: 1,
    #       node_property_overrides: [
    #         {
    #           target_nodes: 'targetNodes', # required
    #         }
    #       ]
    #     },
    #     retry_strategy: {
    #       attempts: 1,
    #       evaluate_on_exit: [
    #         {
    #           on_status_reason: 'onStatusReason',
    #           on_reason: 'onReason',
    #           on_exit_code: 'onExitCode',
    #           action: 'RETRY' # required - accepts ["RETRY", "EXIT"]
    #         }
    #       ]
    #     },
    #     propagate_tags: false,
    #     timeout: {
    #       attempt_duration_seconds: 1
    #     },
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SubmitJobOutput
    #   resp.data.job_arn #=> String
    #   resp.data.job_name #=> String
    #   resp.data.job_id #=> String
    #
    def submit_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SubmitJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SubmitJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SubmitJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientException, Errors::ServerException]),
        data_parser: Parsers::SubmitJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SubmitJob,
        stubs: @stubs,
        params_class: Params::SubmitJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :submit_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates the specified tags to a resource with the specified <code>resourceArn</code>. If existing tags on a
    #    resource aren't specified in the request parameters, they aren't changed. When a resource is deleted, the tags that
    #    are associated with that resource are deleted as well. Batch resources that support tags are compute environments, jobs, job definitions, job queues,
    #  and scheduling policies. ARNs for child jobs of array and multi-node parallel (MNP) jobs are not supported.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that tags are added to. Batch resources that support tags are compute environments, jobs, job definitions, job queues,
    #    and scheduling policies. ARNs for child jobs of array and multi-node parallel (MNP) jobs are not supported.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags that you apply to the resource to help you categorize and organize your resources. Each tag consists of
    #      a key and an optional value. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services Resources</a> in <i>Amazon Web Services General
    #       Reference</i>.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tags: {
    #       'key' => 'value'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TagResourceOutput
    #
    def tag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagResourceInput.build(params)
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientException, Errors::ServerException]),
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

    # <p>Terminates a job in a job queue. Jobs that are in the <code>STARTING</code> or <code>RUNNING</code> state are
    #    terminated, which causes them to transition to <code>FAILED</code>. Jobs that have not progressed to the
    #     <code>STARTING</code> state are cancelled.</p>
    #
    # @param [Hash] params
    #   See {Types::TerminateJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The Batch job ID of the job to terminate.</p>
    #
    # @option params [String] :reason
    #   <p>A message to attach to the job that explains the reason for canceling it. This message is returned by future
    #       <a>DescribeJobs</a> operations on the job. This message is also recorded in the Batch activity
    #      logs.</p>
    #
    # @return [Types::TerminateJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.terminate_job(
    #     job_id: 'jobId', # required
    #     reason: 'reason' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TerminateJobOutput
    #
    def terminate_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TerminateJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TerminateJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TerminateJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientException, Errors::ServerException]),
        data_parser: Parsers::TerminateJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TerminateJob,
        stubs: @stubs,
        params_class: Params::TerminateJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :terminate_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes specified tags from an Batch resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource from which to delete tags. Batch resources that support tags are compute environments, jobs, job definitions, job queues,
    #    and scheduling policies. ARNs for child jobs of array and multi-node parallel (MNP) jobs are not supported.</p>
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
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagResource
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientException, Errors::ServerException]),
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

    # <p>Updates an Batch compute environment.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateComputeEnvironmentInput}.
    #
    # @option params [String] :compute_environment
    #   <p>The name or full Amazon Resource Name (ARN) of the compute environment to update.</p>
    #
    # @option params [String] :state
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
    # @option params [Integer] :unmanagedv_cpus
    #   <p>The maximum number of vCPUs expected to be used for an unmanaged compute environment. Do not specify this
    #      parameter for a managed compute environment. This parameter is only used for fair share scheduling to reserve vCPU
    #      capacity for new share identifiers. If this parameter is not provided for a fair share job queue, no vCPU capacity
    #      will be reserved.</p>
    #
    # @option params [ComputeResourceUpdate] :compute_resources
    #   <p>Details of the compute resources managed by the compute environment. Required for a managed compute environment.
    #      For more information, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html">Compute
    #       Environments</a> in the <i>Batch User Guide</i>.</p>
    #
    # @option params [String] :service_role
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
    # @option params [UpdatePolicy] :update_policy
    #   <p>Specifies the updated infrastructure update policy for the compute environment. For more information about
    #      infrastructure updates, see <a href="https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html">Updating
    #       compute environments</a> in the <i>Batch User Guide</i>.</p>
    #
    # @return [Types::UpdateComputeEnvironmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_compute_environment(
    #     compute_environment: 'computeEnvironment', # required
    #     state: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #     unmanagedv_cpus: 1,
    #     compute_resources: {
    #       minv_cpus: 1,
    #       maxv_cpus: 1,
    #       desiredv_cpus: 1,
    #       subnets: [
    #         'member'
    #       ],
    #       allocation_strategy: 'BEST_FIT_PROGRESSIVE', # accepts ["BEST_FIT_PROGRESSIVE", "SPOT_CAPACITY_OPTIMIZED"]
    #       ec2_key_pair: 'ec2KeyPair',
    #       instance_role: 'instanceRole',
    #       tags: {
    #         'key' => 'value'
    #       },
    #       placement_group: 'placementGroup',
    #       bid_percentage: 1,
    #       launch_template: {
    #         launch_template_id: 'launchTemplateId',
    #         launch_template_name: 'launchTemplateName',
    #         version: 'version'
    #       },
    #       ec2_configuration: [
    #         {
    #           image_type: 'imageType', # required
    #           image_id_override: 'imageIdOverride'
    #         }
    #       ],
    #       update_to_latest_image_version: false,
    #       type: 'EC2', # accepts ["EC2", "SPOT", "FARGATE", "FARGATE_SPOT"]
    #       image_id: 'imageId'
    #     },
    #     service_role: 'serviceRole',
    #     update_policy: {
    #       terminate_jobs_on_update: false,
    #       job_execution_timeout_minutes: 1
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateComputeEnvironmentOutput
    #   resp.data.compute_environment_name #=> String
    #   resp.data.compute_environment_arn #=> String
    #
    def update_compute_environment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateComputeEnvironmentInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateComputeEnvironmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateComputeEnvironment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientException, Errors::ServerException]),
        data_parser: Parsers::UpdateComputeEnvironment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateComputeEnvironment,
        stubs: @stubs,
        params_class: Params::UpdateComputeEnvironmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_compute_environment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a job queue.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateJobQueueInput}.
    #
    # @option params [String] :job_queue
    #   <p>The name or the Amazon Resource Name (ARN) of the job queue.</p>
    #
    # @option params [String] :state
    #   <p>Describes the queue's ability to accept new jobs. If the job queue state is <code>ENABLED</code>, it can accept
    #      jobs. If the job queue state is <code>DISABLED</code>, new jobs can't be added to the queue, but jobs already in the
    #      queue can finish.</p>
    #
    # @option params [String] :scheduling_policy_arn
    #   <p>Amazon Resource Name (ARN) of the fair share scheduling policy. Once a job queue is created, the fair share scheduling policy can
    #      be replaced but not removed. The format is
    #        <code>aws:<i>Partition</i>:batch:<i>Region</i>:<i>Account</i>:scheduling-policy/<i>Name</i>
    #               </code>.
    #      For example,
    #      <code>aws:aws:batch:us-west-2:012345678910:scheduling-policy/MySchedulingPolicy</code>.</p>
    #
    # @option params [Integer] :priority
    #   <p>The priority of the job queue. Job queues with a higher priority (or a higher integer value for the
    #       <code>priority</code> parameter) are evaluated first when associated with the same compute environment. Priority is
    #      determined in descending order. For example, a job queue with a priority value of <code>10</code> is given scheduling
    #      preference over a job queue with a priority value of <code>1</code>. All of the compute environments must be either
    #      EC2 (<code>EC2</code> or <code>SPOT</code>) or Fargate (<code>FARGATE</code> or <code>FARGATE_SPOT</code>). EC2 and
    #      Fargate compute environments can't be mixed.</p>
    #
    # @option params [Array<ComputeEnvironmentOrder>] :compute_environment_order
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
    # @return [Types::UpdateJobQueueOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_job_queue(
    #     job_queue: 'jobQueue', # required
    #     state: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #     scheduling_policy_arn: 'schedulingPolicyArn',
    #     priority: 1,
    #     compute_environment_order: [
    #       {
    #         order: 1, # required
    #         compute_environment: 'computeEnvironment' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateJobQueueOutput
    #   resp.data.job_queue_name #=> String
    #   resp.data.job_queue_arn #=> String
    #
    def update_job_queue(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateJobQueueInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateJobQueueInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateJobQueue
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientException, Errors::ServerException]),
        data_parser: Parsers::UpdateJobQueue
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateJobQueue,
        stubs: @stubs,
        params_class: Params::UpdateJobQueueOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_job_queue
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a scheduling policy.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSchedulingPolicyInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the scheduling policy to update.</p>
    #
    # @option params [FairsharePolicy] :fairshare_policy
    #   <p>The fair share policy.</p>
    #
    # @return [Types::UpdateSchedulingPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_scheduling_policy(
    #     arn: 'arn', # required
    #     fairshare_policy: {
    #       share_decay_seconds: 1,
    #       compute_reservation: 1,
    #       share_distribution: [
    #         {
    #           share_identifier: 'shareIdentifier', # required
    #           weight_factor: 1.0
    #         }
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSchedulingPolicyOutput
    #
    def update_scheduling_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSchedulingPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSchedulingPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSchedulingPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientException, Errors::ServerException]),
        data_parser: Parsers::UpdateSchedulingPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSchedulingPolicy,
        stubs: @stubs,
        params_class: Params::UpdateSchedulingPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_scheduling_policy
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
