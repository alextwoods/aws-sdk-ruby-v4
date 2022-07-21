# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::AutoScaling
  # An API client for AutoScaling_2011_01_01
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon EC2 Auto Scaling</fullname>
  #
  #
  #
  #
  #
  #
  #
  #
  #
  #         <p>Amazon EC2 Auto Scaling is designed to automatically launch or terminate EC2 instances
  #             based on user-defined scaling policies, scheduled actions, and health checks.</p>
  #         <p>For more information about Amazon EC2 Auto Scaling, see the <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/what-is-amazon-ec2-auto-scaling.html">Amazon EC2 Auto Scaling User Guide</a>. For information about granting IAM users required
  #             permissions for calls to Amazon EC2 Auto Scaling, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/ec2-auto-scaling-api-permissions.html">Granting
  #                 IAM users required permissions for Amazon EC2 Auto Scaling resources</a> in the
  #                 <i>Amazon EC2 Auto Scaling API Reference</i>.</p>
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
    def initialize(config = AWS::SDK::AutoScaling::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Attaches one or more EC2 instances to the specified Auto Scaling group.</p>
    #         <p>When you attach instances, Amazon EC2 Auto Scaling increases the desired capacity of the group by the
    #             number of instances being attached. If the number of instances being attached plus the
    #             desired capacity of the group exceeds the maximum size of the group, the operation
    #             fails.</p>
    #         <p>If there is a Classic Load Balancer attached to your Auto Scaling group, the instances are
    #             also registered with the load balancer. If there are target groups attached to your Auto Scaling
    #             group, the instances are also registered with the target groups.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/attach-instance-asg.html">Attach EC2 instances to
    #                 your Auto Scaling group</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::AttachInstancesInput}.
    #
    # @option params [Array<String>] :instance_ids
    #   <p>The IDs of the instances. You can specify up to 20 instances.</p>
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @return [Types::AttachInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_instances(
    #     instance_ids: [
    #       'member'
    #     ],
    #     auto_scaling_group_name: 'AutoScalingGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AttachInstancesOutput
    #
    def attach_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AttachInstancesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AttachInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AttachInstances
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceLinkedRoleFailure, Errors::ResourceContentionFault]),
        data_parser: Parsers::AttachInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AttachInstances,
        stubs: @stubs,
        params_class: Params::AttachInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :attach_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attaches one or more target groups to the specified Auto Scaling group.</p>
    #         <p>This operation is used with the following load balancer types: </p>
    #         <ul>
    #             <li>
    #                 <p> Application Load Balancer - Operates at the application layer (layer 7) and
    #                     supports HTTP and HTTPS. </p>
    #             </li>
    #             <li>
    #                 <p> Network Load Balancer - Operates at the transport layer (layer 4) and
    #                     supports TCP, TLS, and UDP. </p>
    #             </li>
    #             <li>
    #                 <p> Gateway Load Balancer - Operates at the network layer (layer 3).</p>
    #             </li>
    #          </ul>
    #         <p>To describe the target groups for an Auto Scaling group, call the <a>DescribeLoadBalancerTargetGroups</a> API. To detach the target group from
    #             the Auto Scaling group, call the <a>DetachLoadBalancerTargetGroups</a> API.</p>
    #         <p>This operation is additive and does not detach existing target groups or Classic Load
    #             Balancers from the Auto Scaling group.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html">Elastic Load Balancing and
    #                 Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::AttachLoadBalancerTargetGroupsInput}.
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [Array<String>] :target_group_ar_ns
    #   <p>The Amazon Resource Names (ARN) of the target groups. You can specify up to 10 target
    #               groups. To get the ARN of a target group, use the Elastic Load Balancing <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html">DescribeTargetGroups</a> API operation.</p>
    #
    # @return [Types::AttachLoadBalancerTargetGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_load_balancer_target_groups(
    #     auto_scaling_group_name: 'AutoScalingGroupName', # required
    #     target_group_ar_ns: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AttachLoadBalancerTargetGroupsOutput
    #
    def attach_load_balancer_target_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AttachLoadBalancerTargetGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AttachLoadBalancerTargetGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AttachLoadBalancerTargetGroups
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceLinkedRoleFailure, Errors::ResourceContentionFault]),
        data_parser: Parsers::AttachLoadBalancerTargetGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AttachLoadBalancerTargetGroups,
        stubs: @stubs,
        params_class: Params::AttachLoadBalancerTargetGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :attach_load_balancer_target_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>To attach an Application Load Balancer, Network Load Balancer, or Gateway Load
    #                 Balancer, use the <a>AttachLoadBalancerTargetGroups</a> API operation
    #                 instead.</p>
    #         </note>
    #         <p>Attaches one or more Classic Load Balancers to the specified Auto Scaling group. Amazon EC2 Auto Scaling
    #             registers the running instances with these Classic Load Balancers.</p>
    #         <p>To describe the load balancers for an Auto Scaling group, call the <a>DescribeLoadBalancers</a> API. To detach the load balancer from the Auto Scaling
    #             group, call the <a>DetachLoadBalancers</a> API.</p>
    #         <p>This operation is additive and does not detach existing Classic Load Balancers or
    #             target groups from the Auto Scaling group.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html">Elastic Load Balancing and
    #                 Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::AttachLoadBalancersInput}.
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [Array<String>] :load_balancer_names
    #   <p>The names of the load balancers. You can specify up to 10 load balancers.</p>
    #
    # @return [Types::AttachLoadBalancersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_load_balancers(
    #     auto_scaling_group_name: 'AutoScalingGroupName', # required
    #     load_balancer_names: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AttachLoadBalancersOutput
    #
    def attach_load_balancers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AttachLoadBalancersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AttachLoadBalancersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AttachLoadBalancers
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceLinkedRoleFailure, Errors::ResourceContentionFault]),
        data_parser: Parsers::AttachLoadBalancers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AttachLoadBalancers,
        stubs: @stubs,
        params_class: Params::AttachLoadBalancersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :attach_load_balancers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes one or more scheduled actions for the specified Auto Scaling group.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchDeleteScheduledActionInput}.
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [Array<String>] :scheduled_action_names
    #   <p>The names of the scheduled actions to delete. The maximum number allowed is 50.
    #           </p>
    #
    # @return [Types::BatchDeleteScheduledActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_scheduled_action(
    #     auto_scaling_group_name: 'AutoScalingGroupName', # required
    #     scheduled_action_names: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchDeleteScheduledActionOutput
    #   resp.data.failed_scheduled_actions #=> Array<FailedScheduledUpdateGroupActionRequest>
    #   resp.data.failed_scheduled_actions[0] #=> Types::FailedScheduledUpdateGroupActionRequest
    #   resp.data.failed_scheduled_actions[0].scheduled_action_name #=> String
    #   resp.data.failed_scheduled_actions[0].error_code #=> String
    #   resp.data.failed_scheduled_actions[0].error_message #=> String
    #
    def batch_delete_scheduled_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchDeleteScheduledActionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchDeleteScheduledActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchDeleteScheduledAction
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceContentionFault]),
        data_parser: Parsers::BatchDeleteScheduledAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchDeleteScheduledAction,
        stubs: @stubs,
        params_class: Params::BatchDeleteScheduledActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_delete_scheduled_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates one or more scheduled scaling actions for an Auto Scaling group.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchPutScheduledUpdateGroupActionInput}.
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [Array<ScheduledUpdateGroupActionRequest>] :scheduled_update_group_actions
    #   <p>One or more scheduled actions. The maximum number allowed is 50.</p>
    #
    # @return [Types::BatchPutScheduledUpdateGroupActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_put_scheduled_update_group_action(
    #     auto_scaling_group_name: 'AutoScalingGroupName', # required
    #     scheduled_update_group_actions: [
    #       {
    #         scheduled_action_name: 'ScheduledActionName', # required
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         recurrence: 'Recurrence',
    #         min_size: 1,
    #         max_size: 1,
    #         desired_capacity: 1,
    #         time_zone: 'TimeZone'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchPutScheduledUpdateGroupActionOutput
    #   resp.data.failed_scheduled_update_group_actions #=> Array<FailedScheduledUpdateGroupActionRequest>
    #   resp.data.failed_scheduled_update_group_actions[0] #=> Types::FailedScheduledUpdateGroupActionRequest
    #   resp.data.failed_scheduled_update_group_actions[0].scheduled_action_name #=> String
    #   resp.data.failed_scheduled_update_group_actions[0].error_code #=> String
    #   resp.data.failed_scheduled_update_group_actions[0].error_message #=> String
    #
    def batch_put_scheduled_update_group_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchPutScheduledUpdateGroupActionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchPutScheduledUpdateGroupActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchPutScheduledUpdateGroupAction
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AlreadyExistsFault, Errors::LimitExceededFault, Errors::ResourceContentionFault]),
        data_parser: Parsers::BatchPutScheduledUpdateGroupAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchPutScheduledUpdateGroupAction,
        stubs: @stubs,
        params_class: Params::BatchPutScheduledUpdateGroupActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_put_scheduled_update_group_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels an instance refresh operation in progress. Cancellation does not roll back any
    #             replacements that have already been completed, but it prevents new replacements from
    #             being started. </p>
    #         <p>This operation is part of the <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html">instance refresh
    #                 feature</a> in Amazon EC2 Auto Scaling, which helps you update instances in your Auto Scaling group
    #             after you make configuration changes.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelInstanceRefreshInput}.
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @return [Types::CancelInstanceRefreshOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_instance_refresh(
    #     auto_scaling_group_name: 'AutoScalingGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelInstanceRefreshOutput
    #   resp.data.instance_refresh_id #=> String
    #
    def cancel_instance_refresh(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelInstanceRefreshInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelInstanceRefreshInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelInstanceRefresh
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededFault, Errors::ActiveInstanceRefreshNotFoundFault, Errors::ResourceContentionFault]),
        data_parser: Parsers::CancelInstanceRefresh
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelInstanceRefresh,
        stubs: @stubs,
        params_class: Params::CancelInstanceRefreshOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_instance_refresh
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Completes the lifecycle action for the specified token or instance with the specified
    #             result.</p>
    #         <p>This step is a part of the procedure for adding a lifecycle hook to an Auto Scaling
    #             group:</p>
    #         <ol>
    #             <li>
    #                 <p>(Optional) Create a launch template or launch configuration with a user data
    #                     script that runs while an instance is in a wait state due to a lifecycle
    #                     hook.</p>
    #             </li>
    #             <li>
    #                 <p>(Optional) Create a Lambda function and a rule that allows Amazon EventBridge to invoke
    #                     your Lambda function when an instance is put into a wait state due to a
    #                     lifecycle hook.</p>
    #             </li>
    #             <li>
    #                 <p>(Optional) Create a notification target and an IAM role. The target can be
    #                     either an Amazon SQS queue or an Amazon SNS topic. The role allows Amazon EC2 Auto Scaling to publish
    #                     lifecycle notifications to the target.</p>
    #             </li>
    #             <li>
    #                 <p>Create the lifecycle hook. Specify whether the hook is used when the instances
    #                     launch or terminate.</p>
    #             </li>
    #             <li>
    #                 <p>If you need more time, record the lifecycle action heartbeat to keep the
    #                     instance in a wait state.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                     <b>If you finish before the timeout period ends, send a
    #                         callback by using the <a>CompleteLifecycleAction</a> API
    #                         call.</b>
    #                 </p>
    #             </li>
    #          </ol>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html">Amazon EC2 Auto Scaling lifecycle
    #                 hooks</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CompleteLifecycleActionInput}.
    #
    # @option params [String] :lifecycle_hook_name
    #   <p>The name of the lifecycle hook.</p>
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [String] :lifecycle_action_token
    #   <p>A universally unique identifier (UUID) that identifies a specific lifecycle action
    #               associated with an instance. Amazon EC2 Auto Scaling sends this token to the notification target you
    #               specified when you created the lifecycle hook.</p>
    #
    # @option params [String] :lifecycle_action_result
    #   <p>The action for the group to take. This parameter can be either <code>CONTINUE</code>
    #               or <code>ABANDON</code>.</p>
    #
    # @option params [String] :instance_id
    #   <p>The ID of the instance.</p>
    #
    # @return [Types::CompleteLifecycleActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.complete_lifecycle_action(
    #     lifecycle_hook_name: 'LifecycleHookName', # required
    #     auto_scaling_group_name: 'AutoScalingGroupName', # required
    #     lifecycle_action_token: 'LifecycleActionToken',
    #     lifecycle_action_result: 'LifecycleActionResult', # required
    #     instance_id: 'InstanceId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CompleteLifecycleActionOutput
    #
    def complete_lifecycle_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CompleteLifecycleActionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CompleteLifecycleActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CompleteLifecycleAction
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceContentionFault]),
        data_parser: Parsers::CompleteLifecycleAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CompleteLifecycleAction,
        stubs: @stubs,
        params_class: Params::CompleteLifecycleActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :complete_lifecycle_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             <b>We strongly recommend using a launch template when calling this operation to ensure full functionality for Amazon EC2 Auto Scaling and Amazon EC2.</b>
    #          </p>
    #         <p>Creates an Auto Scaling group with the specified name and attributes. </p>
    #         <p>If you exceed your maximum limit of Auto Scaling groups, the call fails. To query this limit,
    #             call the <a>DescribeAccountLimits</a> API. For information about updating
    #             this limit, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-account-limits.html">Amazon EC2 Auto Scaling service
    #                 quotas</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #         <p>For introductory exercises for creating an Auto Scaling group, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/GettingStartedTutorial.html">Getting started with
    #                 Amazon EC2 Auto Scaling</a> and <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-register-lbs-with-asg.html">Tutorial: Set up a
    #                 scaled and load-balanced application</a> in the
    #                 <i>Amazon EC2 Auto Scaling User Guide</i>. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/AutoScalingGroup.html">Auto Scaling
    #                 groups</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #         <p>Every Auto Scaling group has three size parameters (<code>DesiredCapacity</code>,
    #                 <code>MaxSize</code>, and <code>MinSize</code>). Usually, you set these sizes based
    #             on a specific number of instances. However, if you configure a mixed instances policy
    #             that defines weights for the instance types, you must specify these sizes with the same
    #             units that you use for weighting instances.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAutoScalingGroupInput}.
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group. This name must be unique per Region per account.</p>
    #
    # @option params [String] :launch_configuration_name
    #   <p>The name of the launch configuration to use to launch instances. </p>
    #           <p>Conditional: You must specify either a launch template (<code>LaunchTemplate</code> or
    #                   <code>MixedInstancesPolicy</code>) or a launch configuration
    #                   (<code>LaunchConfigurationName</code> or <code>InstanceId</code>).</p>
    #
    # @option params [LaunchTemplateSpecification] :launch_template
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
    # @option params [MixedInstancesPolicy] :mixed_instances_policy
    #   <p>An embedded object that specifies a mixed instances policy.</p>
    #
    #
    #
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups.html">Auto Scaling
    #                   groups with multiple instance types and purchase options</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @option params [String] :instance_id
    #   <p>The ID of the instance used to base the launch configuration on. If specified, Amazon
    #               EC2 Auto Scaling uses the configuration values from the specified instance to create a
    #               new launch configuration. To get the instance ID, use the Amazon EC2 <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html">DescribeInstances</a> API operation. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-from-instance.html">Creating an Auto Scaling group using an EC2 instance</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @option params [Integer] :min_size
    #   <p>The minimum size of the group.</p>
    #
    # @option params [Integer] :max_size
    #   <p>The maximum size of the group.</p>
    #           <note>
    #               <p>With a mixed instances policy that uses instance weighting, Amazon EC2 Auto Scaling may need to
    #                   go above <code>MaxSize</code> to meet your capacity requirements. In this event,
    #                   Amazon EC2 Auto Scaling will never go above <code>MaxSize</code> by more than your largest instance
    #                   weight (weights that define how many units each instance contributes to the desired
    #                   capacity of the group).</p>
    #           </note>
    #
    # @option params [Integer] :desired_capacity
    #   <p>The desired capacity is the initial capacity of the Auto Scaling group at the time of its
    #               creation and the capacity it attempts to maintain. It can scale beyond this capacity if
    #               you configure auto scaling. This number must be greater than or equal to the minimum
    #               size of the group and less than or equal to the maximum size of the group. If you do not
    #               specify a desired capacity, the default is the minimum size of the group.</p>
    #
    # @option params [Integer] :default_cooldown
    #   <p>
    #               <i>Only needed if you use simple scaling policies.</i>
    #            </p>
    #           <p>The amount of time, in seconds, between one scaling activity ending and another one
    #               starting due to simple scaling policies. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html">Scaling cooldowns
    #                   for Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #           <p>Default: <code>300</code> seconds</p>
    #
    # @option params [Array<String>] :availability_zones
    #   <p>A list of Availability Zones where instances in the Auto Scaling group can be created. This
    #               parameter is optional if you specify one or more subnets for
    #                   <code>VPCZoneIdentifier</code>.</p>
    #           <p>Conditional: If your account supports EC2-Classic and VPC, this parameter is required
    #               to launch instances into EC2-Classic.</p>
    #
    # @option params [Array<String>] :load_balancer_names
    #   <p>A list of Classic Load Balancers associated with this Auto Scaling group. For
    #               Application Load Balancers, Network Load Balancers, and Gateway Load Balancers, specify
    #               the <code>TargetGroupARNs</code> property instead.</p>
    #
    # @option params [Array<String>] :target_group_ar_ns
    #   <p>The Amazon Resource Names (ARN) of the target groups to associate with the Auto Scaling group.
    #               Instances are registered as targets in a target group, and traffic is routed to the
    #               target group. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html">Elastic Load Balancing and
    #                   Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @option params [String] :health_check_type
    #   <p>The service to use for the health checks. The valid values are <code>EC2</code>
    #               (default) and <code>ELB</code>. If you configure an Auto Scaling group to use load balancer
    #               (ELB) health checks, it considers the instance unhealthy if it fails either the EC2
    #               status checks or the load balancer health checks. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html">Health checks
    #                   for Auto Scaling instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @option params [Integer] :health_check_grace_period
    #   <p>
    #               <i></i>
    #            </p>
    #           <p>The amount of time, in seconds, that Amazon EC2 Auto Scaling waits before checking the health status
    #               of an EC2 instance that has come into service and marking it unhealthy due to a failed
    #               Elastic Load Balancing or custom health check. This is useful if your instances do not immediately pass
    #               these health checks after they enter the <code>InService</code> state. For more
    #               information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html#health-check-grace-period">Health
    #                   check grace period</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #           <p>Default: <code>0</code> seconds</p>
    #
    # @option params [String] :placement_group
    #   <p>The name of an existing placement group into which to launch your instances. For more
    #               information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html">Placement groups</a> in the
    #                   <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
    #           <note>
    #               <p>A <i>cluster</i> placement group is a logical grouping of instances
    #                   within a single Availability Zone. You cannot specify multiple Availability Zones
    #                   and a cluster placement group. </p>
    #           </note>
    #
    # @option params [String] :vpc_zone_identifier
    #   <p>A comma-separated list of subnet IDs for a virtual private cloud (VPC) where instances
    #               in the Auto Scaling group can be created. If you specify <code>VPCZoneIdentifier</code> with
    #                   <code>AvailabilityZones</code>, the subnets that you specify for this parameter must
    #               reside in those Availability Zones.</p>
    #           <p>Conditional: If your account supports EC2-Classic and VPC, this parameter is required
    #               to launch instances into a VPC.</p>
    #
    # @option params [Array<String>] :termination_policies
    #   <p>A policy or a list of policies that are used to select the instance to terminate.
    #               These policies are executed in the order that you list them. For more information, see
    #                   <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html">Controlling which Auto Scaling
    #                   instances terminate during scale in</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @option params [Boolean] :new_instances_protected_from_scale_in
    #   <p>Indicates whether newly launched instances are protected from termination by Amazon EC2 Auto Scaling
    #               when scaling in. For more information about preventing instances from terminating on
    #               scale in, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-protection.html">Using
    #                   instance scale-in protection</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @option params [Boolean] :capacity_rebalance
    #   <p>Indicates whether Capacity Rebalancing is enabled. Otherwise, Capacity Rebalancing is
    #               disabled. When you turn on Capacity Rebalancing, Amazon EC2 Auto Scaling attempts to launch a Spot
    #               Instance whenever Amazon EC2 notifies that a Spot Instance is at an elevated risk of
    #               interruption. After launching a new instance, it then terminates an old instance. For
    #               more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-capacity-rebalancing.html">Amazon EC2 Auto Scaling
    #                   Capacity Rebalancing</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @option params [Array<LifecycleHookSpecification>] :lifecycle_hook_specification_list
    #   <p>One or more lifecycle hooks for the group, which specify actions to perform when
    #               Amazon EC2 Auto Scaling launches or terminates instances.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>One or more tags. You can tag your Auto Scaling group and propagate the tags to the Amazon EC2
    #               instances it launches. Tags are not propagated to Amazon EBS volumes. To add tags to Amazon EBS
    #               volumes, specify the tags in a launch template but use caution. If the launch template
    #               specifies an instance tag with a key that is also specified for the Auto Scaling group, Amazon EC2 Auto Scaling
    #               overrides the value of that instance tag with the value specified by the Auto Scaling group. For
    #               more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-tagging.html">Tagging Auto Scaling groups and
    #                   instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @option params [String] :service_linked_role_arn
    #   <p>The Amazon Resource Name (ARN) of the service-linked role that the Auto Scaling group uses to
    #               call other Amazon Web Services on your behalf. By default, Amazon EC2 Auto Scaling uses a service-linked role
    #               named <code>AWSServiceRoleForAutoScaling</code>, which it creates if it does not exist.
    #               For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-service-linked-role.html">Service-linked
    #                   roles</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @option params [Integer] :max_instance_lifetime
    #   <p>The maximum amount of time, in seconds, that an instance can be in service. The
    #               default is null. If specified, the value must be either 0 or a number equal to or
    #               greater than 86,400 seconds (1 day). For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-max-instance-lifetime.html">Replacing Auto Scaling instances based on maximum instance lifetime</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @option params [String] :context
    #   <p>Reserved.</p>
    #
    # @option params [String] :desired_capacity_type
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
    # @option params [Integer] :default_instance_warmup
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
    # @return [Types::CreateAutoScalingGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_auto_scaling_group(
    #     auto_scaling_group_name: 'AutoScalingGroupName', # required
    #     launch_configuration_name: 'LaunchConfigurationName',
    #     launch_template: {
    #       launch_template_id: 'LaunchTemplateId',
    #       launch_template_name: 'LaunchTemplateName',
    #       version: 'Version'
    #     },
    #     mixed_instances_policy: {
    #       launch_template: {
    #         overrides: [
    #           {
    #             instance_type: 'InstanceType',
    #             weighted_capacity: 'WeightedCapacity',
    #             instance_requirements: {
    #               v_cpu_count: {
    #                 min: 1, # required
    #                 max: 1
    #               }, # required
    #               memory_mi_b: {
    #                 min: 1, # required
    #                 max: 1
    #               }, # required
    #               cpu_manufacturers: [
    #                 'intel' # accepts ["intel", "amd", "amazon-web-services"]
    #               ],
    #               memory_gi_b_per_v_cpu: {
    #                 min: 1.0,
    #                 max: 1.0
    #               },
    #               excluded_instance_types: [
    #                 'member'
    #               ],
    #               instance_generations: [
    #                 'current' # accepts ["current", "previous"]
    #               ],
    #               spot_max_price_percentage_over_lowest_price: 1,
    #               on_demand_max_price_percentage_over_lowest_price: 1,
    #               bare_metal: 'included', # accepts ["included", "excluded", "required"]
    #               burstable_performance: 'included', # accepts ["included", "excluded", "required"]
    #               require_hibernate_support: false,
    #               network_interface_count: {
    #                 min: 1,
    #                 max: 1
    #               },
    #               local_storage: 'included', # accepts ["included", "excluded", "required"]
    #               local_storage_types: [
    #                 'hdd' # accepts ["hdd", "ssd"]
    #               ],
    #               total_local_storage_gb: {
    #                 min: 1.0,
    #                 max: 1.0
    #               },
    #               baseline_ebs_bandwidth_mbps: {
    #                 min: 1,
    #                 max: 1
    #               },
    #               accelerator_types: [
    #                 'gpu' # accepts ["gpu", "fpga", "inference"]
    #               ],
    #               accelerator_count: {
    #                 min: 1,
    #                 max: 1
    #               },
    #               accelerator_manufacturers: [
    #                 'nvidia' # accepts ["nvidia", "amd", "amazon-web-services", "xilinx"]
    #               ],
    #               accelerator_names: [
    #                 'a100' # accepts ["a100", "v100", "k80", "t4", "m60", "radeon-pro-v520", "vu9p"]
    #               ],
    #               accelerator_total_memory_mi_b: {
    #                 min: 1,
    #                 max: 1
    #               }
    #             }
    #           }
    #         ]
    #       },
    #       instances_distribution: {
    #         on_demand_allocation_strategy: 'OnDemandAllocationStrategy',
    #         on_demand_base_capacity: 1,
    #         on_demand_percentage_above_base_capacity: 1,
    #         spot_allocation_strategy: 'SpotAllocationStrategy',
    #         spot_instance_pools: 1,
    #         spot_max_price: 'SpotMaxPrice'
    #       }
    #     },
    #     instance_id: 'InstanceId',
    #     min_size: 1, # required
    #     max_size: 1, # required
    #     desired_capacity: 1,
    #     default_cooldown: 1,
    #     availability_zones: [
    #       'member'
    #     ],
    #     load_balancer_names: [
    #       'member'
    #     ],
    #     target_group_ar_ns: [
    #       'member'
    #     ],
    #     health_check_type: 'HealthCheckType',
    #     health_check_grace_period: 1,
    #     placement_group: 'PlacementGroup',
    #     vpc_zone_identifier: 'VPCZoneIdentifier',
    #     termination_policies: [
    #       'member'
    #     ],
    #     new_instances_protected_from_scale_in: false,
    #     capacity_rebalance: false,
    #     lifecycle_hook_specification_list: [
    #       {
    #         lifecycle_hook_name: 'LifecycleHookName', # required
    #         lifecycle_transition: 'LifecycleTransition', # required
    #         notification_metadata: 'NotificationMetadata',
    #         heartbeat_timeout: 1,
    #         default_result: 'DefaultResult',
    #         notification_target_arn: 'NotificationTargetARN',
    #         role_arn: 'RoleARN'
    #       }
    #     ],
    #     tags: [
    #       {
    #         resource_id: 'ResourceId',
    #         resource_type: 'ResourceType',
    #         key: 'Key', # required
    #         value: 'Value',
    #         propagate_at_launch: false
    #       }
    #     ],
    #     service_linked_role_arn: 'ServiceLinkedRoleARN',
    #     max_instance_lifetime: 1,
    #     context: 'Context',
    #     desired_capacity_type: 'DesiredCapacityType',
    #     default_instance_warmup: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAutoScalingGroupOutput
    #
    def create_auto_scaling_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAutoScalingGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAutoScalingGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAutoScalingGroup
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceLinkedRoleFailure, Errors::AlreadyExistsFault, Errors::LimitExceededFault, Errors::ResourceContentionFault]),
        data_parser: Parsers::CreateAutoScalingGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAutoScalingGroup,
        stubs: @stubs,
        params_class: Params::CreateAutoScalingGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_auto_scaling_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a launch configuration.</p>
    #         <p>If you exceed your maximum limit of launch configurations, the call fails. To query
    #             this limit, call the <a>DescribeAccountLimits</a> API. For information about
    #             updating this limit, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-account-limits.html">Amazon EC2 Auto Scaling service
    #                 quotas</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/LaunchConfiguration.html">Launch
    #                 configurations</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateLaunchConfigurationInput}.
    #
    # @option params [String] :launch_configuration_name
    #   <p>The name of the launch configuration. This name must be unique per Region per
    #               account.</p>
    #
    # @option params [String] :image_id
    #   <p>The ID of the Amazon Machine Image (AMI) that was assigned during registration. For
    #               more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html">Finding an AMI</a> in the
    #                   <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
    #           <p>If you do not specify <code>InstanceId</code>, you must specify
    #               <code>ImageId</code>.</p>
    #
    # @option params [String] :key_name
    #   <p>The name of the key pair. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html">Amazon EC2 Key Pairs</a> in the
    #                   <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
    #
    # @option params [Array<String>] :security_groups
    #   <p>A list that contains the security groups to assign to the instances in the Auto Scaling
    #               group.</p>
    #           <p>[EC2-VPC] Specify the security group IDs. For more information, see <a href="https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html">Security Groups for Your VPC</a> in the <i>Amazon Virtual Private Cloud
    #                   User Guide</i>.</p>
    #           <p>[EC2-Classic] Specify either the security group names or the security group IDs. For
    #               more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html">Amazon EC2 Security
    #                   Groups</a> in the <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
    #
    # @option params [String] :classic_link_vpc_id
    #   <p>
    #               <i>EC2-Classic retires on August 15, 2022. This parameter is not supported after
    #                   that date.</i>
    #           </p>
    #           <p>The ID of a ClassicLink-enabled VPC to link your EC2-Classic instances to. For more
    #               information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html">ClassicLink</a> in the
    #                   <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
    #
    # @option params [Array<String>] :classic_link_vpc_security_groups
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
    # @option params [String] :user_data
    #   <p>The user data to make available to the launched EC2 instances. For more information,
    #               see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html">Instance metadata and user data</a> (Linux) and <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-metadata.html">Instance metadata and
    #                   user data</a> (Windows). If you are using a command line tool, base64-encoding
    #               is performed for you, and you can load the text from a file. Otherwise, you must provide
    #               base64-encoded text. User data is limited to 16 KB.</p>
    #
    # @option params [String] :instance_id
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
    # @option params [String] :instance_type
    #   <p>Specifies the instance type of the EC2 instance.</p>
    #           <p>For information about available instance types, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#AvailableInstanceTypes">Available
    #                   Instance Types</a> in the <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
    #           <p>If you do not specify <code>InstanceId</code>, you must specify
    #                   <code>InstanceType</code>.</p>
    #
    # @option params [String] :kernel_id
    #   <p>The ID of the kernel associated with the AMI.</p>
    #
    # @option params [String] :ramdisk_id
    #   <p>The ID of the RAM disk to select.</p>
    #
    # @option params [Array<BlockDeviceMapping>] :block_device_mappings
    #   <p>A block device mapping, which specifies the block devices for the instance. You can
    #               specify virtual devices and EBS volumes. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html">Block Device
    #                   Mapping</a> in the <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
    #
    # @option params [InstanceMonitoring] :instance_monitoring
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
    # @option params [String] :spot_price
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
    # @option params [String] :iam_instance_profile
    #   <p>The name or the Amazon Resource Name (ARN) of the instance profile associated with the
    #               IAM role for the instance. The instance profile contains the IAM role.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/us-iam-role.html">IAM role for applications that run
    #                   on Amazon EC2 instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @option params [Boolean] :ebs_optimized
    #   <p>Specifies whether the launch configuration is optimized for EBS I/O
    #               (<code>true</code>) or not (<code>false</code>). The optimization provides dedicated
    #               throughput to Amazon EBS and an optimized configuration stack to provide optimal I/O
    #               performance. This optimization is not available with all instance types. Additional fees
    #               are incurred when you enable EBS optimization for an instance type that is not
    #               EBS-optimized by default. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html">Amazon EBS-optimized instances</a> in
    #               the <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
    #           <p>The default value is <code>false</code>.</p>
    #
    # @option params [Boolean] :associate_public_ip_address
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
    # @option params [String] :placement_tenancy
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
    # @option params [InstanceMetadataOptions] :metadata_options
    #   <p>The metadata options for the instances. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-config.html#launch-configurations-imds">Configuring the Instance Metadata Options</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @return [Types::CreateLaunchConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_launch_configuration(
    #     launch_configuration_name: 'LaunchConfigurationName', # required
    #     image_id: 'ImageId',
    #     key_name: 'KeyName',
    #     security_groups: [
    #       'member'
    #     ],
    #     classic_link_vpc_id: 'ClassicLinkVPCId',
    #     classic_link_vpc_security_groups: [
    #       'member'
    #     ],
    #     user_data: 'UserData',
    #     instance_id: 'InstanceId',
    #     instance_type: 'InstanceType',
    #     kernel_id: 'KernelId',
    #     ramdisk_id: 'RamdiskId',
    #     block_device_mappings: [
    #       {
    #         virtual_name: 'VirtualName',
    #         device_name: 'DeviceName', # required
    #         ebs: {
    #           snapshot_id: 'SnapshotId',
    #           volume_size: 1,
    #           volume_type: 'VolumeType',
    #           delete_on_termination: false,
    #           iops: 1,
    #           encrypted: false,
    #           throughput: 1
    #         },
    #         no_device: false
    #       }
    #     ],
    #     instance_monitoring: {
    #       enabled: false
    #     },
    #     spot_price: 'SpotPrice',
    #     iam_instance_profile: 'IamInstanceProfile',
    #     ebs_optimized: false,
    #     associate_public_ip_address: false,
    #     placement_tenancy: 'PlacementTenancy',
    #     metadata_options: {
    #       http_tokens: 'optional', # accepts ["optional", "required"]
    #       http_put_response_hop_limit: 1,
    #       http_endpoint: 'disabled' # accepts ["disabled", "enabled"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateLaunchConfigurationOutput
    #
    def create_launch_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLaunchConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLaunchConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLaunchConfiguration
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AlreadyExistsFault, Errors::LimitExceededFault, Errors::ResourceContentionFault]),
        data_parser: Parsers::CreateLaunchConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLaunchConfiguration,
        stubs: @stubs,
        params_class: Params::CreateLaunchConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_launch_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates tags for the specified Auto Scaling group.</p>
    #         <p>When you specify a tag with a key that already exists, the operation overwrites the
    #             previous tag definition, and you do not get an error message.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-tagging.html">Tagging Auto Scaling groups and
    #                 instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateOrUpdateTagsInput}.
    #
    # @option params [Array<Tag>] :tags
    #   <p>One or more tags.</p>
    #
    # @return [Types::CreateOrUpdateTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_or_update_tags(
    #     tags: [
    #       {
    #         resource_id: 'ResourceId',
    #         resource_type: 'ResourceType',
    #         key: 'Key', # required
    #         value: 'Value',
    #         propagate_at_launch: false
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateOrUpdateTagsOutput
    #
    def create_or_update_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateOrUpdateTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateOrUpdateTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateOrUpdateTags
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceInUseFault, Errors::AlreadyExistsFault, Errors::LimitExceededFault, Errors::ResourceContentionFault]),
        data_parser: Parsers::CreateOrUpdateTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateOrUpdateTags,
        stubs: @stubs,
        params_class: Params::CreateOrUpdateTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_or_update_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified Auto Scaling group.</p>
    #         <p>If the group has instances or scaling activities in progress, you must specify the
    #             option to force the deletion in order for it to succeed.</p>
    #         <p>If the group has policies, deleting the group deletes the policies, the underlying
    #             alarm actions, and any alarm that no longer has an associated action.</p>
    #         <p>To remove instances from the Auto Scaling group before deleting it, call the <a>DetachInstances</a> API with the list of instances and the option to
    #             decrement the desired capacity. This ensures that Amazon EC2 Auto Scaling does not launch replacement
    #             instances.</p>
    #         <p>To terminate all instances before deleting the Auto Scaling group, call the <a>UpdateAutoScalingGroup</a> API and set the minimum size and desired capacity
    #             of the Auto Scaling group to zero.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAutoScalingGroupInput}.
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [Boolean] :force_delete
    #   <p>Specifies that the group is to be deleted along with all instances associated with the
    #               group, without waiting for all instances to be terminated. This parameter also deletes
    #               any outstanding lifecycle actions associated with the group.</p>
    #
    # @return [Types::DeleteAutoScalingGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_auto_scaling_group(
    #     auto_scaling_group_name: 'AutoScalingGroupName', # required
    #     force_delete: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAutoScalingGroupOutput
    #
    def delete_auto_scaling_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAutoScalingGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAutoScalingGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAutoScalingGroup
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ScalingActivityInProgressFault, Errors::ResourceInUseFault, Errors::ResourceContentionFault]),
        data_parser: Parsers::DeleteAutoScalingGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAutoScalingGroup,
        stubs: @stubs,
        params_class: Params::DeleteAutoScalingGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_auto_scaling_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified launch configuration.</p>
    #         <p>The launch configuration must not be attached to an Auto Scaling group. When this call
    #             completes, the launch configuration is no longer available for use.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteLaunchConfigurationInput}.
    #
    # @option params [String] :launch_configuration_name
    #   <p>The name of the launch configuration.</p>
    #
    # @return [Types::DeleteLaunchConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_launch_configuration(
    #     launch_configuration_name: 'LaunchConfigurationName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteLaunchConfigurationOutput
    #
    def delete_launch_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLaunchConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLaunchConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLaunchConfiguration
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceInUseFault, Errors::ResourceContentionFault]),
        data_parser: Parsers::DeleteLaunchConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLaunchConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteLaunchConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_launch_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified lifecycle hook.</p>
    #         <p>If there are any outstanding lifecycle actions, they are completed first
    #                 (<code>ABANDON</code> for launching instances, <code>CONTINUE</code> for terminating
    #             instances).</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteLifecycleHookInput}.
    #
    # @option params [String] :lifecycle_hook_name
    #   <p>The name of the lifecycle hook.</p>
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @return [Types::DeleteLifecycleHookOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_lifecycle_hook(
    #     lifecycle_hook_name: 'LifecycleHookName', # required
    #     auto_scaling_group_name: 'AutoScalingGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteLifecycleHookOutput
    #
    def delete_lifecycle_hook(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLifecycleHookInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLifecycleHookInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLifecycleHook
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceContentionFault]),
        data_parser: Parsers::DeleteLifecycleHook
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLifecycleHook,
        stubs: @stubs,
        params_class: Params::DeleteLifecycleHookOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_lifecycle_hook
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified notification.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteNotificationConfigurationInput}.
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [String] :topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic.</p>
    #
    # @return [Types::DeleteNotificationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_notification_configuration(
    #     auto_scaling_group_name: 'AutoScalingGroupName', # required
    #     topic_arn: 'TopicARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteNotificationConfigurationOutput
    #
    def delete_notification_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteNotificationConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteNotificationConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteNotificationConfiguration
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceContentionFault]),
        data_parser: Parsers::DeleteNotificationConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteNotificationConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteNotificationConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_notification_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified scaling policy.</p>
    #         <p>Deleting either a step scaling policy or a simple scaling policy deletes the
    #             underlying alarm action, but does not delete the alarm, even if it no longer has an
    #             associated action.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/deleting-scaling-policy.html">Deleting a scaling
    #                 policy</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePolicyInput}.
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [String] :policy_name
    #   <p>The name or Amazon Resource Name (ARN) of the policy.</p>
    #
    # @return [Types::DeletePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_policy(
    #     auto_scaling_group_name: 'AutoScalingGroupName',
    #     policy_name: 'PolicyName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePolicyOutput
    #
    def delete_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePolicy
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceLinkedRoleFailure, Errors::ResourceContentionFault]),
        data_parser: Parsers::DeletePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePolicy,
        stubs: @stubs,
        params_class: Params::DeletePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified scheduled action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteScheduledActionInput}.
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [String] :scheduled_action_name
    #   <p>The name of the action to delete.</p>
    #
    # @return [Types::DeleteScheduledActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_scheduled_action(
    #     auto_scaling_group_name: 'AutoScalingGroupName', # required
    #     scheduled_action_name: 'ScheduledActionName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteScheduledActionOutput
    #
    def delete_scheduled_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteScheduledActionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteScheduledActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteScheduledAction
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceContentionFault]),
        data_parser: Parsers::DeleteScheduledAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteScheduledAction,
        stubs: @stubs,
        params_class: Params::DeleteScheduledActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_scheduled_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified tags.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTagsInput}.
    #
    # @option params [Array<Tag>] :tags
    #   <p>One or more tags.</p>
    #
    # @return [Types::DeleteTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tags(
    #     tags: [
    #       {
    #         resource_id: 'ResourceId',
    #         resource_type: 'ResourceType',
    #         key: 'Key', # required
    #         value: 'Value',
    #         propagate_at_launch: false
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTagsOutput
    #
    def delete_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTags
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceInUseFault, Errors::ResourceContentionFault]),
        data_parser: Parsers::DeleteTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTags,
        stubs: @stubs,
        params_class: Params::DeleteTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the warm pool for the specified Auto Scaling group.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-warm-pools.html">Warm pools for
    #                 Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteWarmPoolInput}.
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [Boolean] :force_delete
    #   <p>Specifies that the warm pool is to be deleted along with all of its associated
    #               instances, without waiting for all instances to be terminated. This parameter also
    #               deletes any outstanding lifecycle actions associated with the warm pool
    #               instances.</p>
    #
    # @return [Types::DeleteWarmPoolOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_warm_pool(
    #     auto_scaling_group_name: 'AutoScalingGroupName', # required
    #     force_delete: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteWarmPoolOutput
    #
    def delete_warm_pool(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteWarmPoolInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteWarmPoolInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteWarmPool
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ScalingActivityInProgressFault, Errors::ResourceInUseFault, Errors::LimitExceededFault, Errors::ResourceContentionFault]),
        data_parser: Parsers::DeleteWarmPool
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteWarmPool,
        stubs: @stubs,
        params_class: Params::DeleteWarmPoolOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_warm_pool
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the current Amazon EC2 Auto Scaling resource quotas for your account.</p>
    #         <p>When you establish an Amazon Web Services account, the account has initial quotas on the maximum
    #             number of Auto Scaling groups and launch configurations that you can create in a given Region.
    #             For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-account-limits.html">Amazon EC2 Auto Scaling service
    #                 quotas</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAccountLimitsInput}.
    #
    # @return [Types::DescribeAccountLimitsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_limits()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAccountLimitsOutput
    #   resp.data.max_number_of_auto_scaling_groups #=> Integer
    #   resp.data.max_number_of_launch_configurations #=> Integer
    #   resp.data.number_of_auto_scaling_groups #=> Integer
    #   resp.data.number_of_launch_configurations #=> Integer
    #
    def describe_account_limits(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAccountLimitsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAccountLimitsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAccountLimits
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceContentionFault]),
        data_parser: Parsers::DescribeAccountLimits
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAccountLimits,
        stubs: @stubs,
        params_class: Params::DescribeAccountLimitsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_account_limits
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the available adjustment types for step scaling and simple scaling
    #             policies.</p>
    #         <p>The following adjustment types are supported:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                     <code>ChangeInCapacity</code>
    #                 </p>
    #             </li>
    #             <li>
    #                 <p>
    #                     <code>ExactCapacity</code>
    #                 </p>
    #             </li>
    #             <li>
    #                 <p>
    #                     <code>PercentChangeInCapacity</code>
    #                 </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DescribeAdjustmentTypesInput}.
    #
    # @return [Types::DescribeAdjustmentTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_adjustment_types()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAdjustmentTypesOutput
    #   resp.data.adjustment_types #=> Array<AdjustmentType>
    #   resp.data.adjustment_types[0] #=> Types::AdjustmentType
    #   resp.data.adjustment_types[0].adjustment_type #=> String
    #
    def describe_adjustment_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAdjustmentTypesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAdjustmentTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAdjustmentTypes
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceContentionFault]),
        data_parser: Parsers::DescribeAdjustmentTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAdjustmentTypes,
        stubs: @stubs,
        params_class: Params::DescribeAdjustmentTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_adjustment_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the Auto Scaling groups in the account and Region.</p>
    #         <p>If you specify Auto Scaling group names, the output includes information for only the
    #             specified Auto Scaling groups. If you specify filters, the output includes information for only
    #             those Auto Scaling groups that meet the filter criteria. If you do not specify group names or
    #             filters, the output includes information for all Auto Scaling groups. </p>
    #         <p>This operation also returns information about instances in Auto Scaling groups. To retrieve
    #             information about the instances in a warm pool, you must call the <a>DescribeWarmPool</a> API. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAutoScalingGroupsInput}.
    #
    # @option params [Array<String>] :auto_scaling_group_names
    #   <p>The names of the Auto Scaling groups. By default, you can only specify up to 50 names. You can
    #               optionally increase this limit using the <code>MaxRecords</code> parameter.</p>
    #           <p>If you omit this parameter, all Auto Scaling groups are described.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>50</code> and the maximum value is <code>100</code>.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>One or more filters to limit the results based on specific tags.
    #               </p>
    #
    # @return [Types::DescribeAutoScalingGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_auto_scaling_groups(
    #     auto_scaling_group_names: [
    #       'member'
    #     ],
    #     next_token: 'NextToken',
    #     max_records: 1,
    #     filters: [
    #       {
    #         name: 'Name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAutoScalingGroupsOutput
    #   resp.data.auto_scaling_groups #=> Array<AutoScalingGroup>
    #   resp.data.auto_scaling_groups[0] #=> Types::AutoScalingGroup
    #   resp.data.auto_scaling_groups[0].auto_scaling_group_name #=> String
    #   resp.data.auto_scaling_groups[0].auto_scaling_group_arn #=> String
    #   resp.data.auto_scaling_groups[0].launch_configuration_name #=> String
    #   resp.data.auto_scaling_groups[0].launch_template #=> Types::LaunchTemplateSpecification
    #   resp.data.auto_scaling_groups[0].launch_template.launch_template_id #=> String
    #   resp.data.auto_scaling_groups[0].launch_template.launch_template_name #=> String
    #   resp.data.auto_scaling_groups[0].launch_template.version #=> String
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy #=> Types::MixedInstancesPolicy
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template #=> Types::LaunchTemplate
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.launch_template_specification #=> Types::LaunchTemplateSpecification
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides #=> Array<LaunchTemplateOverrides>
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0] #=> Types::LaunchTemplateOverrides
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_type #=> String
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].weighted_capacity #=> String
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].launch_template_specification #=> Types::LaunchTemplateSpecification
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements #=> Types::InstanceRequirements
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.v_cpu_count #=> Types::VCpuCountRequest
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.v_cpu_count.min #=> Integer
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.v_cpu_count.max #=> Integer
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.memory_mi_b #=> Types::MemoryMiBRequest
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.memory_mi_b.min #=> Integer
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.memory_mi_b.max #=> Integer
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.cpu_manufacturers #=> Array<String>
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.cpu_manufacturers[0] #=> String, one of ["intel", "amd", "amazon-web-services"]
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.memory_gi_b_per_v_cpu #=> Types::MemoryGiBPerVCpuRequest
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.memory_gi_b_per_v_cpu.min #=> Float
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.memory_gi_b_per_v_cpu.max #=> Float
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.excluded_instance_types #=> Array<String>
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.excluded_instance_types[0] #=> String
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.instance_generations #=> Array<String>
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.instance_generations[0] #=> String, one of ["current", "previous"]
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.spot_max_price_percentage_over_lowest_price #=> Integer
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.on_demand_max_price_percentage_over_lowest_price #=> Integer
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.bare_metal #=> String, one of ["included", "excluded", "required"]
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.burstable_performance #=> String, one of ["included", "excluded", "required"]
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.require_hibernate_support #=> Boolean
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.network_interface_count #=> Types::NetworkInterfaceCountRequest
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.network_interface_count.min #=> Integer
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.network_interface_count.max #=> Integer
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.local_storage #=> String, one of ["included", "excluded", "required"]
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.local_storage_types #=> Array<String>
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.local_storage_types[0] #=> String, one of ["hdd", "ssd"]
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.total_local_storage_gb #=> Types::TotalLocalStorageGBRequest
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.total_local_storage_gb.min #=> Float
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.total_local_storage_gb.max #=> Float
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.baseline_ebs_bandwidth_mbps #=> Types::BaselineEbsBandwidthMbpsRequest
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.baseline_ebs_bandwidth_mbps.min #=> Integer
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.baseline_ebs_bandwidth_mbps.max #=> Integer
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_types #=> Array<String>
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_types[0] #=> String, one of ["gpu", "fpga", "inference"]
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_count #=> Types::AcceleratorCountRequest
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_count.min #=> Integer
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_count.max #=> Integer
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_manufacturers #=> Array<String>
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_manufacturers[0] #=> String, one of ["nvidia", "amd", "amazon-web-services", "xilinx"]
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_names #=> Array<String>
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_names[0] #=> String, one of ["a100", "v100", "k80", "t4", "m60", "radeon-pro-v520", "vu9p"]
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_total_memory_mi_b #=> Types::AcceleratorTotalMemoryMiBRequest
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_total_memory_mi_b.min #=> Integer
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_total_memory_mi_b.max #=> Integer
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.instances_distribution #=> Types::InstancesDistribution
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.instances_distribution.on_demand_allocation_strategy #=> String
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.instances_distribution.on_demand_base_capacity #=> Integer
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.instances_distribution.on_demand_percentage_above_base_capacity #=> Integer
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.instances_distribution.spot_allocation_strategy #=> String
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.instances_distribution.spot_instance_pools #=> Integer
    #   resp.data.auto_scaling_groups[0].mixed_instances_policy.instances_distribution.spot_max_price #=> String
    #   resp.data.auto_scaling_groups[0].min_size #=> Integer
    #   resp.data.auto_scaling_groups[0].max_size #=> Integer
    #   resp.data.auto_scaling_groups[0].desired_capacity #=> Integer
    #   resp.data.auto_scaling_groups[0].predicted_capacity #=> Integer
    #   resp.data.auto_scaling_groups[0].default_cooldown #=> Integer
    #   resp.data.auto_scaling_groups[0].availability_zones #=> Array<String>
    #   resp.data.auto_scaling_groups[0].availability_zones[0] #=> String
    #   resp.data.auto_scaling_groups[0].load_balancer_names #=> Array<String>
    #   resp.data.auto_scaling_groups[0].load_balancer_names[0] #=> String
    #   resp.data.auto_scaling_groups[0].target_group_ar_ns #=> Array<String>
    #   resp.data.auto_scaling_groups[0].target_group_ar_ns[0] #=> String
    #   resp.data.auto_scaling_groups[0].health_check_type #=> String
    #   resp.data.auto_scaling_groups[0].health_check_grace_period #=> Integer
    #   resp.data.auto_scaling_groups[0].instances #=> Array<Instance>
    #   resp.data.auto_scaling_groups[0].instances[0] #=> Types::Instance
    #   resp.data.auto_scaling_groups[0].instances[0].instance_id #=> String
    #   resp.data.auto_scaling_groups[0].instances[0].instance_type #=> String
    #   resp.data.auto_scaling_groups[0].instances[0].availability_zone #=> String
    #   resp.data.auto_scaling_groups[0].instances[0].lifecycle_state #=> String, one of ["Pending", "Pending:Wait", "Pending:Proceed", "Quarantined", "InService", "Terminating", "Terminating:Wait", "Terminating:Proceed", "Terminated", "Detaching", "Detached", "EnteringStandby", "Standby", "Warmed:Pending", "Warmed:Pending:Wait", "Warmed:Pending:Proceed", "Warmed:Terminating", "Warmed:Terminating:Wait", "Warmed:Terminating:Proceed", "Warmed:Terminated", "Warmed:Stopped", "Warmed:Running", "Warmed:Hibernated"]
    #   resp.data.auto_scaling_groups[0].instances[0].health_status #=> String
    #   resp.data.auto_scaling_groups[0].instances[0].launch_configuration_name #=> String
    #   resp.data.auto_scaling_groups[0].instances[0].launch_template #=> Types::LaunchTemplateSpecification
    #   resp.data.auto_scaling_groups[0].instances[0].protected_from_scale_in #=> Boolean
    #   resp.data.auto_scaling_groups[0].instances[0].weighted_capacity #=> String
    #   resp.data.auto_scaling_groups[0].created_time #=> Time
    #   resp.data.auto_scaling_groups[0].suspended_processes #=> Array<SuspendedProcess>
    #   resp.data.auto_scaling_groups[0].suspended_processes[0] #=> Types::SuspendedProcess
    #   resp.data.auto_scaling_groups[0].suspended_processes[0].process_name #=> String
    #   resp.data.auto_scaling_groups[0].suspended_processes[0].suspension_reason #=> String
    #   resp.data.auto_scaling_groups[0].placement_group #=> String
    #   resp.data.auto_scaling_groups[0].vpc_zone_identifier #=> String
    #   resp.data.auto_scaling_groups[0].enabled_metrics #=> Array<EnabledMetric>
    #   resp.data.auto_scaling_groups[0].enabled_metrics[0] #=> Types::EnabledMetric
    #   resp.data.auto_scaling_groups[0].enabled_metrics[0].metric #=> String
    #   resp.data.auto_scaling_groups[0].enabled_metrics[0].granularity #=> String
    #   resp.data.auto_scaling_groups[0].status #=> String
    #   resp.data.auto_scaling_groups[0].tags #=> Array<TagDescription>
    #   resp.data.auto_scaling_groups[0].tags[0] #=> Types::TagDescription
    #   resp.data.auto_scaling_groups[0].tags[0].resource_id #=> String
    #   resp.data.auto_scaling_groups[0].tags[0].resource_type #=> String
    #   resp.data.auto_scaling_groups[0].tags[0].key #=> String
    #   resp.data.auto_scaling_groups[0].tags[0].value #=> String
    #   resp.data.auto_scaling_groups[0].tags[0].propagate_at_launch #=> Boolean
    #   resp.data.auto_scaling_groups[0].termination_policies #=> Array<String>
    #   resp.data.auto_scaling_groups[0].termination_policies[0] #=> String
    #   resp.data.auto_scaling_groups[0].new_instances_protected_from_scale_in #=> Boolean
    #   resp.data.auto_scaling_groups[0].service_linked_role_arn #=> String
    #   resp.data.auto_scaling_groups[0].max_instance_lifetime #=> Integer
    #   resp.data.auto_scaling_groups[0].capacity_rebalance #=> Boolean
    #   resp.data.auto_scaling_groups[0].warm_pool_configuration #=> Types::WarmPoolConfiguration
    #   resp.data.auto_scaling_groups[0].warm_pool_configuration.max_group_prepared_capacity #=> Integer
    #   resp.data.auto_scaling_groups[0].warm_pool_configuration.min_size #=> Integer
    #   resp.data.auto_scaling_groups[0].warm_pool_configuration.pool_state #=> String, one of ["Stopped", "Running", "Hibernated"]
    #   resp.data.auto_scaling_groups[0].warm_pool_configuration.status #=> String, one of ["PendingDelete"]
    #   resp.data.auto_scaling_groups[0].warm_pool_configuration.instance_reuse_policy #=> Types::InstanceReusePolicy
    #   resp.data.auto_scaling_groups[0].warm_pool_configuration.instance_reuse_policy.reuse_on_scale_in #=> Boolean
    #   resp.data.auto_scaling_groups[0].warm_pool_size #=> Integer
    #   resp.data.auto_scaling_groups[0].context #=> String
    #   resp.data.auto_scaling_groups[0].desired_capacity_type #=> String
    #   resp.data.auto_scaling_groups[0].default_instance_warmup #=> Integer
    #   resp.data.next_token #=> String
    #
    def describe_auto_scaling_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAutoScalingGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAutoScalingGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAutoScalingGroups
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextToken, Errors::ResourceContentionFault]),
        data_parser: Parsers::DescribeAutoScalingGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAutoScalingGroups,
        stubs: @stubs,
        params_class: Params::DescribeAutoScalingGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_auto_scaling_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the Auto Scaling instances in the account and Region.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAutoScalingInstancesInput}.
    #
    # @option params [Array<String>] :instance_ids
    #   <p>The IDs of the instances. If you omit this parameter, all Auto Scaling instances are
    #               described. If you specify an ID that does not exist, it is ignored with no error.</p>
    #           <p>Array Members: Maximum number of 50 items.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>50</code> and the maximum value is <code>50</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    #
    # @return [Types::DescribeAutoScalingInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_auto_scaling_instances(
    #     instance_ids: [
    #       'member'
    #     ],
    #     max_records: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAutoScalingInstancesOutput
    #   resp.data.auto_scaling_instances #=> Array<AutoScalingInstanceDetails>
    #   resp.data.auto_scaling_instances[0] #=> Types::AutoScalingInstanceDetails
    #   resp.data.auto_scaling_instances[0].instance_id #=> String
    #   resp.data.auto_scaling_instances[0].instance_type #=> String
    #   resp.data.auto_scaling_instances[0].auto_scaling_group_name #=> String
    #   resp.data.auto_scaling_instances[0].availability_zone #=> String
    #   resp.data.auto_scaling_instances[0].lifecycle_state #=> String
    #   resp.data.auto_scaling_instances[0].health_status #=> String
    #   resp.data.auto_scaling_instances[0].launch_configuration_name #=> String
    #   resp.data.auto_scaling_instances[0].launch_template #=> Types::LaunchTemplateSpecification
    #   resp.data.auto_scaling_instances[0].launch_template.launch_template_id #=> String
    #   resp.data.auto_scaling_instances[0].launch_template.launch_template_name #=> String
    #   resp.data.auto_scaling_instances[0].launch_template.version #=> String
    #   resp.data.auto_scaling_instances[0].protected_from_scale_in #=> Boolean
    #   resp.data.auto_scaling_instances[0].weighted_capacity #=> String
    #   resp.data.next_token #=> String
    #
    def describe_auto_scaling_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAutoScalingInstancesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAutoScalingInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAutoScalingInstances
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextToken, Errors::ResourceContentionFault]),
        data_parser: Parsers::DescribeAutoScalingInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAutoScalingInstances,
        stubs: @stubs,
        params_class: Params::DescribeAutoScalingInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_auto_scaling_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the notification types that are supported by Amazon EC2 Auto Scaling.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAutoScalingNotificationTypesInput}.
    #
    # @return [Types::DescribeAutoScalingNotificationTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_auto_scaling_notification_types()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAutoScalingNotificationTypesOutput
    #   resp.data.auto_scaling_notification_types #=> Array<String>
    #   resp.data.auto_scaling_notification_types[0] #=> String
    #
    def describe_auto_scaling_notification_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAutoScalingNotificationTypesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAutoScalingNotificationTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAutoScalingNotificationTypes
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceContentionFault]),
        data_parser: Parsers::DescribeAutoScalingNotificationTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAutoScalingNotificationTypes,
        stubs: @stubs,
        params_class: Params::DescribeAutoScalingNotificationTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_auto_scaling_notification_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the instance refreshes for the specified Auto Scaling group.</p>
    #         <p>This operation is part of the <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html">instance refresh
    #                 feature</a> in Amazon EC2 Auto Scaling, which helps you update instances in your Auto Scaling group
    #             after you make configuration changes.</p>
    #         <p>To help you determine the status of an instance refresh, this operation returns
    #             information about the instance refreshes you previously initiated, including their
    #             status, end time, the percentage of the instance refresh that is complete, and the
    #             number of instances remaining to update before the instance refresh is complete.</p>
    #         <p>The following are the possible statuses: </p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>Pending</code> - The request was created, but the operation has not
    #                     started.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>InProgress</code> - The operation is in progress.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>Successful</code> - The operation completed successfully.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>Failed</code> - The operation failed to complete. You can troubleshoot
    #                     using the status reason and the scaling activities. </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>Cancelling</code> - An ongoing operation is being cancelled.
    #                     Cancellation does not roll back any replacements that have already been
    #                     completed, but it prevents new replacements from being started. </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>Cancelled</code> - The operation is cancelled. </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DescribeInstanceRefreshesInput}.
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [Array<String>] :instance_refresh_ids
    #   <p>One or more instance refresh IDs.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>50</code> and the maximum value is <code>100</code>.</p>
    #
    # @return [Types::DescribeInstanceRefreshesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance_refreshes(
    #     auto_scaling_group_name: 'AutoScalingGroupName', # required
    #     instance_refresh_ids: [
    #       'member'
    #     ],
    #     next_token: 'NextToken',
    #     max_records: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeInstanceRefreshesOutput
    #   resp.data.instance_refreshes #=> Array<InstanceRefresh>
    #   resp.data.instance_refreshes[0] #=> Types::InstanceRefresh
    #   resp.data.instance_refreshes[0].instance_refresh_id #=> String
    #   resp.data.instance_refreshes[0].auto_scaling_group_name #=> String
    #   resp.data.instance_refreshes[0].status #=> String, one of ["Pending", "InProgress", "Successful", "Failed", "Cancelling", "Cancelled"]
    #   resp.data.instance_refreshes[0].status_reason #=> String
    #   resp.data.instance_refreshes[0].start_time #=> Time
    #   resp.data.instance_refreshes[0].end_time #=> Time
    #   resp.data.instance_refreshes[0].percentage_complete #=> Integer
    #   resp.data.instance_refreshes[0].instances_to_update #=> Integer
    #   resp.data.instance_refreshes[0].progress_details #=> Types::InstanceRefreshProgressDetails
    #   resp.data.instance_refreshes[0].progress_details.live_pool_progress #=> Types::InstanceRefreshLivePoolProgress
    #   resp.data.instance_refreshes[0].progress_details.live_pool_progress.percentage_complete #=> Integer
    #   resp.data.instance_refreshes[0].progress_details.live_pool_progress.instances_to_update #=> Integer
    #   resp.data.instance_refreshes[0].progress_details.warm_pool_progress #=> Types::InstanceRefreshWarmPoolProgress
    #   resp.data.instance_refreshes[0].progress_details.warm_pool_progress.percentage_complete #=> Integer
    #   resp.data.instance_refreshes[0].progress_details.warm_pool_progress.instances_to_update #=> Integer
    #   resp.data.instance_refreshes[0].preferences #=> Types::RefreshPreferences
    #   resp.data.instance_refreshes[0].preferences.min_healthy_percentage #=> Integer
    #   resp.data.instance_refreshes[0].preferences.instance_warmup #=> Integer
    #   resp.data.instance_refreshes[0].preferences.checkpoint_percentages #=> Array<Integer>
    #   resp.data.instance_refreshes[0].preferences.checkpoint_percentages[0] #=> Integer
    #   resp.data.instance_refreshes[0].preferences.checkpoint_delay #=> Integer
    #   resp.data.instance_refreshes[0].preferences.skip_matching #=> Boolean
    #   resp.data.instance_refreshes[0].desired_configuration #=> Types::DesiredConfiguration
    #   resp.data.instance_refreshes[0].desired_configuration.launch_template #=> Types::LaunchTemplateSpecification
    #   resp.data.instance_refreshes[0].desired_configuration.launch_template.launch_template_id #=> String
    #   resp.data.instance_refreshes[0].desired_configuration.launch_template.launch_template_name #=> String
    #   resp.data.instance_refreshes[0].desired_configuration.launch_template.version #=> String
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy #=> Types::MixedInstancesPolicy
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template #=> Types::LaunchTemplate
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.launch_template_specification #=> Types::LaunchTemplateSpecification
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides #=> Array<LaunchTemplateOverrides>
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0] #=> Types::LaunchTemplateOverrides
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_type #=> String
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].weighted_capacity #=> String
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].launch_template_specification #=> Types::LaunchTemplateSpecification
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements #=> Types::InstanceRequirements
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.v_cpu_count #=> Types::VCpuCountRequest
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.v_cpu_count.min #=> Integer
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.v_cpu_count.max #=> Integer
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.memory_mi_b #=> Types::MemoryMiBRequest
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.memory_mi_b.min #=> Integer
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.memory_mi_b.max #=> Integer
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.cpu_manufacturers #=> Array<String>
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.cpu_manufacturers[0] #=> String, one of ["intel", "amd", "amazon-web-services"]
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.memory_gi_b_per_v_cpu #=> Types::MemoryGiBPerVCpuRequest
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.memory_gi_b_per_v_cpu.min #=> Float
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.memory_gi_b_per_v_cpu.max #=> Float
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.excluded_instance_types #=> Array<String>
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.excluded_instance_types[0] #=> String
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.instance_generations #=> Array<String>
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.instance_generations[0] #=> String, one of ["current", "previous"]
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.spot_max_price_percentage_over_lowest_price #=> Integer
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.on_demand_max_price_percentage_over_lowest_price #=> Integer
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.bare_metal #=> String, one of ["included", "excluded", "required"]
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.burstable_performance #=> String, one of ["included", "excluded", "required"]
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.require_hibernate_support #=> Boolean
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.network_interface_count #=> Types::NetworkInterfaceCountRequest
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.network_interface_count.min #=> Integer
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.network_interface_count.max #=> Integer
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.local_storage #=> String, one of ["included", "excluded", "required"]
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.local_storage_types #=> Array<String>
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.local_storage_types[0] #=> String, one of ["hdd", "ssd"]
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.total_local_storage_gb #=> Types::TotalLocalStorageGBRequest
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.total_local_storage_gb.min #=> Float
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.total_local_storage_gb.max #=> Float
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.baseline_ebs_bandwidth_mbps #=> Types::BaselineEbsBandwidthMbpsRequest
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.baseline_ebs_bandwidth_mbps.min #=> Integer
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.baseline_ebs_bandwidth_mbps.max #=> Integer
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_types #=> Array<String>
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_types[0] #=> String, one of ["gpu", "fpga", "inference"]
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_count #=> Types::AcceleratorCountRequest
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_count.min #=> Integer
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_count.max #=> Integer
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_manufacturers #=> Array<String>
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_manufacturers[0] #=> String, one of ["nvidia", "amd", "amazon-web-services", "xilinx"]
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_names #=> Array<String>
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_names[0] #=> String, one of ["a100", "v100", "k80", "t4", "m60", "radeon-pro-v520", "vu9p"]
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_total_memory_mi_b #=> Types::AcceleratorTotalMemoryMiBRequest
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_total_memory_mi_b.min #=> Integer
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_total_memory_mi_b.max #=> Integer
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.instances_distribution #=> Types::InstancesDistribution
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.instances_distribution.on_demand_allocation_strategy #=> String
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.instances_distribution.on_demand_base_capacity #=> Integer
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.instances_distribution.on_demand_percentage_above_base_capacity #=> Integer
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.instances_distribution.spot_allocation_strategy #=> String
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.instances_distribution.spot_instance_pools #=> Integer
    #   resp.data.instance_refreshes[0].desired_configuration.mixed_instances_policy.instances_distribution.spot_max_price #=> String
    #   resp.data.next_token #=> String
    #
    def describe_instance_refreshes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeInstanceRefreshesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeInstanceRefreshesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeInstanceRefreshes
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextToken, Errors::ResourceContentionFault]),
        data_parser: Parsers::DescribeInstanceRefreshes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeInstanceRefreshes,
        stubs: @stubs,
        params_class: Params::DescribeInstanceRefreshesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_instance_refreshes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the launch configurations in the account and Region.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLaunchConfigurationsInput}.
    #
    # @option params [Array<String>] :launch_configuration_names
    #   <p>The launch configuration names. If you omit this parameter, all launch configurations
    #               are described.</p>
    #           <p>Array Members: Maximum number of 50 items.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>50</code> and the maximum value is <code>100</code>.</p>
    #
    # @return [Types::DescribeLaunchConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_launch_configurations(
    #     launch_configuration_names: [
    #       'member'
    #     ],
    #     next_token: 'NextToken',
    #     max_records: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLaunchConfigurationsOutput
    #   resp.data.launch_configurations #=> Array<LaunchConfiguration>
    #   resp.data.launch_configurations[0] #=> Types::LaunchConfiguration
    #   resp.data.launch_configurations[0].launch_configuration_name #=> String
    #   resp.data.launch_configurations[0].launch_configuration_arn #=> String
    #   resp.data.launch_configurations[0].image_id #=> String
    #   resp.data.launch_configurations[0].key_name #=> String
    #   resp.data.launch_configurations[0].security_groups #=> Array<String>
    #   resp.data.launch_configurations[0].security_groups[0] #=> String
    #   resp.data.launch_configurations[0].classic_link_vpc_id #=> String
    #   resp.data.launch_configurations[0].classic_link_vpc_security_groups #=> Array<String>
    #   resp.data.launch_configurations[0].classic_link_vpc_security_groups[0] #=> String
    #   resp.data.launch_configurations[0].user_data #=> String
    #   resp.data.launch_configurations[0].instance_type #=> String
    #   resp.data.launch_configurations[0].kernel_id #=> String
    #   resp.data.launch_configurations[0].ramdisk_id #=> String
    #   resp.data.launch_configurations[0].block_device_mappings #=> Array<BlockDeviceMapping>
    #   resp.data.launch_configurations[0].block_device_mappings[0] #=> Types::BlockDeviceMapping
    #   resp.data.launch_configurations[0].block_device_mappings[0].virtual_name #=> String
    #   resp.data.launch_configurations[0].block_device_mappings[0].device_name #=> String
    #   resp.data.launch_configurations[0].block_device_mappings[0].ebs #=> Types::Ebs
    #   resp.data.launch_configurations[0].block_device_mappings[0].ebs.snapshot_id #=> String
    #   resp.data.launch_configurations[0].block_device_mappings[0].ebs.volume_size #=> Integer
    #   resp.data.launch_configurations[0].block_device_mappings[0].ebs.volume_type #=> String
    #   resp.data.launch_configurations[0].block_device_mappings[0].ebs.delete_on_termination #=> Boolean
    #   resp.data.launch_configurations[0].block_device_mappings[0].ebs.iops #=> Integer
    #   resp.data.launch_configurations[0].block_device_mappings[0].ebs.encrypted #=> Boolean
    #   resp.data.launch_configurations[0].block_device_mappings[0].ebs.throughput #=> Integer
    #   resp.data.launch_configurations[0].block_device_mappings[0].no_device #=> Boolean
    #   resp.data.launch_configurations[0].instance_monitoring #=> Types::InstanceMonitoring
    #   resp.data.launch_configurations[0].instance_monitoring.enabled #=> Boolean
    #   resp.data.launch_configurations[0].spot_price #=> String
    #   resp.data.launch_configurations[0].iam_instance_profile #=> String
    #   resp.data.launch_configurations[0].created_time #=> Time
    #   resp.data.launch_configurations[0].ebs_optimized #=> Boolean
    #   resp.data.launch_configurations[0].associate_public_ip_address #=> Boolean
    #   resp.data.launch_configurations[0].placement_tenancy #=> String
    #   resp.data.launch_configurations[0].metadata_options #=> Types::InstanceMetadataOptions
    #   resp.data.launch_configurations[0].metadata_options.http_tokens #=> String, one of ["optional", "required"]
    #   resp.data.launch_configurations[0].metadata_options.http_put_response_hop_limit #=> Integer
    #   resp.data.launch_configurations[0].metadata_options.http_endpoint #=> String, one of ["disabled", "enabled"]
    #   resp.data.next_token #=> String
    #
    def describe_launch_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLaunchConfigurationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLaunchConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLaunchConfigurations
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextToken, Errors::ResourceContentionFault]),
        data_parser: Parsers::DescribeLaunchConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLaunchConfigurations,
        stubs: @stubs,
        params_class: Params::DescribeLaunchConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_launch_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the available types of lifecycle hooks.</p>
    #         <p>The following hook types are supported:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                     <code>autoscaling:EC2_INSTANCE_LAUNCHING</code>
    #                 </p>
    #             </li>
    #             <li>
    #                 <p>
    #                     <code>autoscaling:EC2_INSTANCE_TERMINATING</code>
    #                 </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DescribeLifecycleHookTypesInput}.
    #
    # @return [Types::DescribeLifecycleHookTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_lifecycle_hook_types()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLifecycleHookTypesOutput
    #   resp.data.lifecycle_hook_types #=> Array<String>
    #   resp.data.lifecycle_hook_types[0] #=> String
    #
    def describe_lifecycle_hook_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLifecycleHookTypesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLifecycleHookTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLifecycleHookTypes
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceContentionFault]),
        data_parser: Parsers::DescribeLifecycleHookTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLifecycleHookTypes,
        stubs: @stubs,
        params_class: Params::DescribeLifecycleHookTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_lifecycle_hook_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the lifecycle hooks for the specified Auto Scaling group.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLifecycleHooksInput}.
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [Array<String>] :lifecycle_hook_names
    #   <p>The names of one or more lifecycle hooks. If you omit this parameter, all lifecycle
    #               hooks are described.</p>
    #
    # @return [Types::DescribeLifecycleHooksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_lifecycle_hooks(
    #     auto_scaling_group_name: 'AutoScalingGroupName', # required
    #     lifecycle_hook_names: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLifecycleHooksOutput
    #   resp.data.lifecycle_hooks #=> Array<LifecycleHook>
    #   resp.data.lifecycle_hooks[0] #=> Types::LifecycleHook
    #   resp.data.lifecycle_hooks[0].lifecycle_hook_name #=> String
    #   resp.data.lifecycle_hooks[0].auto_scaling_group_name #=> String
    #   resp.data.lifecycle_hooks[0].lifecycle_transition #=> String
    #   resp.data.lifecycle_hooks[0].notification_target_arn #=> String
    #   resp.data.lifecycle_hooks[0].role_arn #=> String
    #   resp.data.lifecycle_hooks[0].notification_metadata #=> String
    #   resp.data.lifecycle_hooks[0].heartbeat_timeout #=> Integer
    #   resp.data.lifecycle_hooks[0].global_timeout #=> Integer
    #   resp.data.lifecycle_hooks[0].default_result #=> String
    #
    def describe_lifecycle_hooks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLifecycleHooksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLifecycleHooksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLifecycleHooks
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceContentionFault]),
        data_parser: Parsers::DescribeLifecycleHooks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLifecycleHooks,
        stubs: @stubs,
        params_class: Params::DescribeLifecycleHooksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_lifecycle_hooks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the load balancer target groups for the specified Auto Scaling
    #             group.</p>
    #         <p>To determine the availability of registered instances, use the <code>State</code>
    #             element in the response. When you attach a target group to an Auto Scaling group, the initial
    #                 <code>State</code> value is <code>Adding</code>. The state transitions to
    #                 <code>Added</code> after all Auto Scaling instances are registered with the target group. If
    #             Elastic Load Balancing health checks are enabled for the Auto Scaling group, the state transitions to
    #                 <code>InService</code> after at least one Auto Scaling instance passes the health check.
    #             When the target group is in the <code>InService</code> state, Amazon EC2 Auto Scaling can terminate and
    #             replace any instances that are reported as unhealthy. If no registered instances pass
    #             the health checks, the target group doesn't enter the <code>InService</code> state. </p>
    #         <p>Target groups also have an <code>InService</code> state if you attach them in the
    #                 <a>CreateAutoScalingGroup</a> API call. If your target group state is
    #                 <code>InService</code>, but it is not working properly, check the scaling activities
    #             by calling <a>DescribeScalingActivities</a> and take any corrective actions
    #             necessary.</p>
    #         <p>For help with failed health checks, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ts-as-healthchecks.html">Troubleshooting Amazon EC2 Auto Scaling:
    #                 Health checks</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>. For more
    #             information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html">Elastic Load Balancing and
    #                 Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLoadBalancerTargetGroupsInput}.
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>100</code> and the maximum value is <code>100</code>.</p>
    #
    # @return [Types::DescribeLoadBalancerTargetGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_load_balancer_target_groups(
    #     auto_scaling_group_name: 'AutoScalingGroupName', # required
    #     next_token: 'NextToken',
    #     max_records: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLoadBalancerTargetGroupsOutput
    #   resp.data.load_balancer_target_groups #=> Array<LoadBalancerTargetGroupState>
    #   resp.data.load_balancer_target_groups[0] #=> Types::LoadBalancerTargetGroupState
    #   resp.data.load_balancer_target_groups[0].load_balancer_target_group_arn #=> String
    #   resp.data.load_balancer_target_groups[0].state #=> String
    #   resp.data.next_token #=> String
    #
    def describe_load_balancer_target_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLoadBalancerTargetGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLoadBalancerTargetGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLoadBalancerTargetGroups
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextToken, Errors::ResourceContentionFault]),
        data_parser: Parsers::DescribeLoadBalancerTargetGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLoadBalancerTargetGroups,
        stubs: @stubs,
        params_class: Params::DescribeLoadBalancerTargetGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_load_balancer_target_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the load balancers for the specified Auto Scaling group.</p>
    #         <p>This operation describes only Classic Load Balancers. If you have Application Load
    #             Balancers, Network Load Balancers, or Gateway Load Balancers, use the <a>DescribeLoadBalancerTargetGroups</a> API instead.</p>
    #         <p>To determine the availability of registered instances, use the <code>State</code>
    #             element in the response. When you attach a load balancer to an Auto Scaling group, the initial
    #                 <code>State</code> value is <code>Adding</code>. The state transitions to
    #                 <code>Added</code> after all Auto Scaling instances are registered with the load balancer.
    #             If Elastic Load Balancing health checks are enabled for the Auto Scaling group, the state transitions to
    #                 <code>InService</code> after at least one Auto Scaling instance passes the health check.
    #             When the load balancer is in the <code>InService</code> state, Amazon EC2 Auto Scaling can terminate
    #             and replace any instances that are reported as unhealthy. If no registered instances
    #             pass the health checks, the load balancer doesn't enter the <code>InService</code>
    #             state. </p>
    #         <p>Load balancers also have an <code>InService</code> state if you attach them in the
    #                 <a>CreateAutoScalingGroup</a> API call. If your load balancer state is
    #                 <code>InService</code>, but it is not working properly, check the scaling activities
    #             by calling <a>DescribeScalingActivities</a> and take any corrective actions
    #             necessary.</p>
    #         <p>For help with failed health checks, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ts-as-healthchecks.html">Troubleshooting Amazon EC2 Auto Scaling:
    #                 Health checks</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>. For more
    #             information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html">Elastic Load Balancing and
    #                 Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLoadBalancersInput}.
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>100</code> and the maximum value is <code>100</code>.</p>
    #
    # @return [Types::DescribeLoadBalancersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_load_balancers(
    #     auto_scaling_group_name: 'AutoScalingGroupName', # required
    #     next_token: 'NextToken',
    #     max_records: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLoadBalancersOutput
    #   resp.data.load_balancers #=> Array<LoadBalancerState>
    #   resp.data.load_balancers[0] #=> Types::LoadBalancerState
    #   resp.data.load_balancers[0].load_balancer_name #=> String
    #   resp.data.load_balancers[0].state #=> String
    #   resp.data.next_token #=> String
    #
    def describe_load_balancers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLoadBalancersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLoadBalancersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLoadBalancers
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextToken, Errors::ResourceContentionFault]),
        data_parser: Parsers::DescribeLoadBalancers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLoadBalancers,
        stubs: @stubs,
        params_class: Params::DescribeLoadBalancersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_load_balancers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the available CloudWatch metrics for Amazon EC2 Auto Scaling.</p>
    #         <p>The <code>GroupStandbyInstances</code> metric is not returned by default. You must
    #             explicitly request this metric when calling the <a>EnableMetricsCollection</a> API.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeMetricCollectionTypesInput}.
    #
    # @return [Types::DescribeMetricCollectionTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_metric_collection_types()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeMetricCollectionTypesOutput
    #   resp.data.metrics #=> Array<MetricCollectionType>
    #   resp.data.metrics[0] #=> Types::MetricCollectionType
    #   resp.data.metrics[0].metric #=> String
    #   resp.data.granularities #=> Array<MetricGranularityType>
    #   resp.data.granularities[0] #=> Types::MetricGranularityType
    #   resp.data.granularities[0].granularity #=> String
    #
    def describe_metric_collection_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeMetricCollectionTypesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeMetricCollectionTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeMetricCollectionTypes
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceContentionFault]),
        data_parser: Parsers::DescribeMetricCollectionTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeMetricCollectionTypes,
        stubs: @stubs,
        params_class: Params::DescribeMetricCollectionTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_metric_collection_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the Amazon SNS notifications that are configured for one or more
    #             Auto Scaling groups.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeNotificationConfigurationsInput}.
    #
    # @option params [Array<String>] :auto_scaling_group_names
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>50</code> and the maximum value is <code>100</code>.</p>
    #
    # @return [Types::DescribeNotificationConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_notification_configurations(
    #     auto_scaling_group_names: [
    #       'member'
    #     ],
    #     next_token: 'NextToken',
    #     max_records: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeNotificationConfigurationsOutput
    #   resp.data.notification_configurations #=> Array<NotificationConfiguration>
    #   resp.data.notification_configurations[0] #=> Types::NotificationConfiguration
    #   resp.data.notification_configurations[0].auto_scaling_group_name #=> String
    #   resp.data.notification_configurations[0].topic_arn #=> String
    #   resp.data.notification_configurations[0].notification_type #=> String
    #   resp.data.next_token #=> String
    #
    def describe_notification_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeNotificationConfigurationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeNotificationConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeNotificationConfigurations
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextToken, Errors::ResourceContentionFault]),
        data_parser: Parsers::DescribeNotificationConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeNotificationConfigurations,
        stubs: @stubs,
        params_class: Params::DescribeNotificationConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_notification_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the scaling policies in the account and Region.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePoliciesInput}.
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [Array<String>] :policy_names
    #   <p>The names of one or more policies. If you omit this parameter, all policies are
    #               described. If a group name is provided, the results are limited to that group. If you
    #               specify an unknown policy name, it is ignored with no error.</p>
    #           <p>Array Members: Maximum number of 50 items.</p>
    #
    # @option params [Array<String>] :policy_types
    #   <p>One or more policy types. The valid values are <code>SimpleScaling</code>,
    #                   <code>StepScaling</code>, <code>TargetTrackingScaling</code>, and
    #                   <code>PredictiveScaling</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of items to be returned with each call. The default value is
    #                   <code>50</code> and the maximum value is <code>100</code>.</p>
    #
    # @return [Types::DescribePoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_policies(
    #     auto_scaling_group_name: 'AutoScalingGroupName',
    #     policy_names: [
    #       'member'
    #     ],
    #     policy_types: [
    #       'member'
    #     ],
    #     next_token: 'NextToken',
    #     max_records: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePoliciesOutput
    #   resp.data.scaling_policies #=> Array<ScalingPolicy>
    #   resp.data.scaling_policies[0] #=> Types::ScalingPolicy
    #   resp.data.scaling_policies[0].auto_scaling_group_name #=> String
    #   resp.data.scaling_policies[0].policy_name #=> String
    #   resp.data.scaling_policies[0].policy_arn #=> String
    #   resp.data.scaling_policies[0].policy_type #=> String
    #   resp.data.scaling_policies[0].adjustment_type #=> String
    #   resp.data.scaling_policies[0].min_adjustment_step #=> Integer
    #   resp.data.scaling_policies[0].min_adjustment_magnitude #=> Integer
    #   resp.data.scaling_policies[0].scaling_adjustment #=> Integer
    #   resp.data.scaling_policies[0].cooldown #=> Integer
    #   resp.data.scaling_policies[0].step_adjustments #=> Array<StepAdjustment>
    #   resp.data.scaling_policies[0].step_adjustments[0] #=> Types::StepAdjustment
    #   resp.data.scaling_policies[0].step_adjustments[0].metric_interval_lower_bound #=> Float
    #   resp.data.scaling_policies[0].step_adjustments[0].metric_interval_upper_bound #=> Float
    #   resp.data.scaling_policies[0].step_adjustments[0].scaling_adjustment #=> Integer
    #   resp.data.scaling_policies[0].metric_aggregation_type #=> String
    #   resp.data.scaling_policies[0].estimated_instance_warmup #=> Integer
    #   resp.data.scaling_policies[0].alarms #=> Array<Alarm>
    #   resp.data.scaling_policies[0].alarms[0] #=> Types::Alarm
    #   resp.data.scaling_policies[0].alarms[0].alarm_name #=> String
    #   resp.data.scaling_policies[0].alarms[0].alarm_arn #=> String
    #   resp.data.scaling_policies[0].target_tracking_configuration #=> Types::TargetTrackingConfiguration
    #   resp.data.scaling_policies[0].target_tracking_configuration.predefined_metric_specification #=> Types::PredefinedMetricSpecification
    #   resp.data.scaling_policies[0].target_tracking_configuration.predefined_metric_specification.predefined_metric_type #=> String, one of ["ASGAverageCPUUtilization", "ASGAverageNetworkIn", "ASGAverageNetworkOut", "ALBRequestCountPerTarget"]
    #   resp.data.scaling_policies[0].target_tracking_configuration.predefined_metric_specification.resource_label #=> String
    #   resp.data.scaling_policies[0].target_tracking_configuration.customized_metric_specification #=> Types::CustomizedMetricSpecification
    #   resp.data.scaling_policies[0].target_tracking_configuration.customized_metric_specification.metric_name #=> String
    #   resp.data.scaling_policies[0].target_tracking_configuration.customized_metric_specification.namespace #=> String
    #   resp.data.scaling_policies[0].target_tracking_configuration.customized_metric_specification.dimensions #=> Array<MetricDimension>
    #   resp.data.scaling_policies[0].target_tracking_configuration.customized_metric_specification.dimensions[0] #=> Types::MetricDimension
    #   resp.data.scaling_policies[0].target_tracking_configuration.customized_metric_specification.dimensions[0].name #=> String
    #   resp.data.scaling_policies[0].target_tracking_configuration.customized_metric_specification.dimensions[0].value #=> String
    #   resp.data.scaling_policies[0].target_tracking_configuration.customized_metric_specification.statistic #=> String, one of ["Average", "Minimum", "Maximum", "SampleCount", "Sum"]
    #   resp.data.scaling_policies[0].target_tracking_configuration.customized_metric_specification.unit #=> String
    #   resp.data.scaling_policies[0].target_tracking_configuration.target_value #=> Float
    #   resp.data.scaling_policies[0].target_tracking_configuration.disable_scale_in #=> Boolean
    #   resp.data.scaling_policies[0].enabled #=> Boolean
    #   resp.data.scaling_policies[0].predictive_scaling_configuration #=> Types::PredictiveScalingConfiguration
    #   resp.data.scaling_policies[0].predictive_scaling_configuration.metric_specifications #=> Array<PredictiveScalingMetricSpecification>
    #   resp.data.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0] #=> Types::PredictiveScalingMetricSpecification
    #   resp.data.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].target_value #=> Float
    #   resp.data.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].predefined_metric_pair_specification #=> Types::PredictiveScalingPredefinedMetricPair
    #   resp.data.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].predefined_metric_pair_specification.predefined_metric_type #=> String, one of ["ASGCPUUtilization", "ASGNetworkIn", "ASGNetworkOut", "ALBRequestCount"]
    #   resp.data.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].predefined_metric_pair_specification.resource_label #=> String
    #   resp.data.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].predefined_scaling_metric_specification #=> Types::PredictiveScalingPredefinedScalingMetric
    #   resp.data.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].predefined_scaling_metric_specification.predefined_metric_type #=> String, one of ["ASGAverageCPUUtilization", "ASGAverageNetworkIn", "ASGAverageNetworkOut", "ALBRequestCountPerTarget"]
    #   resp.data.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].predefined_scaling_metric_specification.resource_label #=> String
    #   resp.data.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].predefined_load_metric_specification #=> Types::PredictiveScalingPredefinedLoadMetric
    #   resp.data.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].predefined_load_metric_specification.predefined_metric_type #=> String, one of ["ASGTotalCPUUtilization", "ASGTotalNetworkIn", "ASGTotalNetworkOut", "ALBTargetGroupRequestCount"]
    #   resp.data.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].predefined_load_metric_specification.resource_label #=> String
    #   resp.data.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_scaling_metric_specification #=> Types::PredictiveScalingCustomizedScalingMetric
    #   resp.data.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_scaling_metric_specification.metric_data_queries #=> Array<MetricDataQuery>
    #   resp.data.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_scaling_metric_specification.metric_data_queries[0] #=> Types::MetricDataQuery
    #   resp.data.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_scaling_metric_specification.metric_data_queries[0].id #=> String
    #   resp.data.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_scaling_metric_specification.metric_data_queries[0].expression #=> String
    #   resp.data.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_scaling_metric_specification.metric_data_queries[0].metric_stat #=> Types::MetricStat
    #   resp.data.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_scaling_metric_specification.metric_data_queries[0].metric_stat.metric #=> Types::Metric
    #   resp.data.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_scaling_metric_specification.metric_data_queries[0].metric_stat.metric.namespace #=> String
    #   resp.data.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_scaling_metric_specification.metric_data_queries[0].metric_stat.metric.metric_name #=> String
    #   resp.data.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_scaling_metric_specification.metric_data_queries[0].metric_stat.metric.dimensions #=> Array<MetricDimension>
    #   resp.data.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_scaling_metric_specification.metric_data_queries[0].metric_stat.stat #=> String
    #   resp.data.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_scaling_metric_specification.metric_data_queries[0].metric_stat.unit #=> String
    #   resp.data.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_scaling_metric_specification.metric_data_queries[0].label #=> String
    #   resp.data.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_scaling_metric_specification.metric_data_queries[0].return_data #=> Boolean
    #   resp.data.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_load_metric_specification #=> Types::PredictiveScalingCustomizedLoadMetric
    #   resp.data.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_load_metric_specification.metric_data_queries #=> Array<MetricDataQuery>
    #   resp.data.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_capacity_metric_specification #=> Types::PredictiveScalingCustomizedCapacityMetric
    #   resp.data.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_capacity_metric_specification.metric_data_queries #=> Array<MetricDataQuery>
    #   resp.data.scaling_policies[0].predictive_scaling_configuration.mode #=> String, one of ["ForecastAndScale", "ForecastOnly"]
    #   resp.data.scaling_policies[0].predictive_scaling_configuration.scheduling_buffer_time #=> Integer
    #   resp.data.scaling_policies[0].predictive_scaling_configuration.max_capacity_breach_behavior #=> String, one of ["HonorMaxCapacity", "IncreaseMaxCapacity"]
    #   resp.data.scaling_policies[0].predictive_scaling_configuration.max_capacity_buffer #=> Integer
    #   resp.data.next_token #=> String
    #
    def describe_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePoliciesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePolicies
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextToken, Errors::ServiceLinkedRoleFailure, Errors::ResourceContentionFault]),
        data_parser: Parsers::DescribePolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePolicies,
        stubs: @stubs,
        params_class: Params::DescribePoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_policies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the scaling activities in the account and Region.</p>
    #         <p>When scaling events occur, you see a record of the scaling activity in the scaling
    #             activities. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-verify-scaling-activity.html">Verifying a scaling
    #                 activity for an Auto Scaling group</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #         <p>If the scaling event succeeds, the value of the <code>StatusCode</code> element in the
    #             response is <code>Successful</code>. If an attempt to launch instances failed, the
    #                 <code>StatusCode</code> value is <code>Failed</code> or <code>Cancelled</code> and
    #             the <code>StatusMessage</code> element in the response indicates the cause of the
    #             failure. For help interpreting the <code>StatusMessage</code>, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/CHAP_Troubleshooting.html">Troubleshooting Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeScalingActivitiesInput}.
    #
    # @option params [Array<String>] :activity_ids
    #   <p>The activity IDs of the desired scaling activities. If you omit this parameter, all
    #               activities for the past six weeks are described. If unknown activities are requested,
    #               they are ignored with no error. If you specify an Auto Scaling group, the results are limited to
    #               that group.</p>
    #           <p>Array Members: Maximum number of 50 IDs.</p>
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [Boolean] :include_deleted_groups
    #   <p>Indicates whether to include scaling activity from deleted Auto Scaling groups.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>100</code> and the maximum value is <code>100</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    #
    # @return [Types::DescribeScalingActivitiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scaling_activities(
    #     activity_ids: [
    #       'member'
    #     ],
    #     auto_scaling_group_name: 'AutoScalingGroupName',
    #     include_deleted_groups: false,
    #     max_records: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeScalingActivitiesOutput
    #   resp.data.activities #=> Array<Activity>
    #   resp.data.activities[0] #=> Types::Activity
    #   resp.data.activities[0].activity_id #=> String
    #   resp.data.activities[0].auto_scaling_group_name #=> String
    #   resp.data.activities[0].description #=> String
    #   resp.data.activities[0].cause #=> String
    #   resp.data.activities[0].start_time #=> Time
    #   resp.data.activities[0].end_time #=> Time
    #   resp.data.activities[0].status_code #=> String, one of ["PendingSpotBidPlacement", "WaitingForSpotInstanceRequestId", "WaitingForSpotInstanceId", "WaitingForInstanceId", "PreInService", "InProgress", "WaitingForELBConnectionDraining", "MidLifecycleAction", "WaitingForInstanceWarmup", "Successful", "Failed", "Cancelled"]
    #   resp.data.activities[0].status_message #=> String
    #   resp.data.activities[0].progress #=> Integer
    #   resp.data.activities[0].details #=> String
    #   resp.data.activities[0].auto_scaling_group_state #=> String
    #   resp.data.activities[0].auto_scaling_group_arn #=> String
    #   resp.data.next_token #=> String
    #
    def describe_scaling_activities(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeScalingActivitiesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeScalingActivitiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeScalingActivities
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextToken, Errors::ResourceContentionFault]),
        data_parser: Parsers::DescribeScalingActivities
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeScalingActivities,
        stubs: @stubs,
        params_class: Params::DescribeScalingActivitiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_scaling_activities
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the scaling process types for use with the <a>ResumeProcesses</a>
    #             and <a>SuspendProcesses</a> APIs.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeScalingProcessTypesInput}.
    #
    # @return [Types::DescribeScalingProcessTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scaling_process_types()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeScalingProcessTypesOutput
    #   resp.data.processes #=> Array<ProcessType>
    #   resp.data.processes[0] #=> Types::ProcessType
    #   resp.data.processes[0].process_name #=> String
    #
    def describe_scaling_process_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeScalingProcessTypesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeScalingProcessTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeScalingProcessTypes
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceContentionFault]),
        data_parser: Parsers::DescribeScalingProcessTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeScalingProcessTypes,
        stubs: @stubs,
        params_class: Params::DescribeScalingProcessTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_scaling_process_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the scheduled actions that haven't run or that have not reached
    #             their end time.</p>
    #         <p>To describe the scaling activities for scheduled actions that have already run, call
    #             the <a>DescribeScalingActivities</a> API.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeScheduledActionsInput}.
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [Array<String>] :scheduled_action_names
    #   <p>The names of one or more scheduled actions. If you omit this parameter, all scheduled
    #               actions are described. If you specify an unknown scheduled action, it is ignored with no
    #               error.</p>
    #           <p>Array Members: Maximum number of 50 actions.</p>
    #
    # @option params [Time] :start_time
    #   <p>The earliest scheduled start time to return. If scheduled action names are provided,
    #               this parameter is ignored.</p>
    #
    # @option params [Time] :end_time
    #   <p>The latest scheduled start time to return. If scheduled action names are provided,
    #               this parameter is ignored.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>50</code> and the maximum value is <code>100</code>.</p>
    #
    # @return [Types::DescribeScheduledActionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scheduled_actions(
    #     auto_scaling_group_name: 'AutoScalingGroupName',
    #     scheduled_action_names: [
    #       'member'
    #     ],
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     next_token: 'NextToken',
    #     max_records: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeScheduledActionsOutput
    #   resp.data.scheduled_update_group_actions #=> Array<ScheduledUpdateGroupAction>
    #   resp.data.scheduled_update_group_actions[0] #=> Types::ScheduledUpdateGroupAction
    #   resp.data.scheduled_update_group_actions[0].auto_scaling_group_name #=> String
    #   resp.data.scheduled_update_group_actions[0].scheduled_action_name #=> String
    #   resp.data.scheduled_update_group_actions[0].scheduled_action_arn #=> String
    #   resp.data.scheduled_update_group_actions[0].time #=> Time
    #   resp.data.scheduled_update_group_actions[0].start_time #=> Time
    #   resp.data.scheduled_update_group_actions[0].end_time #=> Time
    #   resp.data.scheduled_update_group_actions[0].recurrence #=> String
    #   resp.data.scheduled_update_group_actions[0].min_size #=> Integer
    #   resp.data.scheduled_update_group_actions[0].max_size #=> Integer
    #   resp.data.scheduled_update_group_actions[0].desired_capacity #=> Integer
    #   resp.data.scheduled_update_group_actions[0].time_zone #=> String
    #   resp.data.next_token #=> String
    #
    def describe_scheduled_actions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeScheduledActionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeScheduledActionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeScheduledActions
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextToken, Errors::ResourceContentionFault]),
        data_parser: Parsers::DescribeScheduledActions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeScheduledActions,
        stubs: @stubs,
        params_class: Params::DescribeScheduledActionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_scheduled_actions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified tags.</p>
    #         <p>You can use filters to limit the results. For example, you can query for the tags for
    #             a specific Auto Scaling group. You can specify multiple values for a filter. A tag must match at
    #             least one of the specified values for it to be included in the results.</p>
    #         <p>You can also specify multiple filters. The result includes information for a
    #             particular tag only if it matches all the filters. If there's no match, no special
    #             message is returned.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-tagging.html">Tagging Auto Scaling groups and
    #                 instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTagsInput}.
    #
    # @option params [Array<Filter>] :filters
    #   <p>One or more filters to scope the tags to return. The maximum number of filters per
    #               filter type (for example, <code>auto-scaling-group</code>) is 1000.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return. (You received this token from a
    #               previous call.)</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of items to return with this call. The default value is
    #                   <code>50</code> and the maximum value is <code>100</code>.</p>
    #
    # @return [Types::DescribeTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tags(
    #     filters: [
    #       {
    #         name: 'Name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     next_token: 'NextToken',
    #     max_records: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTagsOutput
    #   resp.data.tags #=> Array<TagDescription>
    #   resp.data.tags[0] #=> Types::TagDescription
    #   resp.data.tags[0].resource_id #=> String
    #   resp.data.tags[0].resource_type #=> String
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.tags[0].propagate_at_launch #=> Boolean
    #   resp.data.next_token #=> String
    #
    def describe_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTags
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextToken, Errors::ResourceContentionFault]),
        data_parser: Parsers::DescribeTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTags,
        stubs: @stubs,
        params_class: Params::DescribeTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the termination policies supported by Amazon EC2 Auto Scaling.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html">Controlling which Auto Scaling
    #                 instances terminate during scale in</a> in the
    #                 <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTerminationPolicyTypesInput}.
    #
    # @return [Types::DescribeTerminationPolicyTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_termination_policy_types()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTerminationPolicyTypesOutput
    #   resp.data.termination_policy_types #=> Array<String>
    #   resp.data.termination_policy_types[0] #=> String
    #
    def describe_termination_policy_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTerminationPolicyTypesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTerminationPolicyTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTerminationPolicyTypes
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceContentionFault]),
        data_parser: Parsers::DescribeTerminationPolicyTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTerminationPolicyTypes,
        stubs: @stubs,
        params_class: Params::DescribeTerminationPolicyTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_termination_policy_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a warm pool and its instances.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-warm-pools.html">Warm pools for
    #                 Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeWarmPoolInput}.
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of instances to return with this call. The maximum value is
    #                   <code>50</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of instances to return. (You received this token from a
    #               previous call.)</p>
    #
    # @return [Types::DescribeWarmPoolOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_warm_pool(
    #     auto_scaling_group_name: 'AutoScalingGroupName', # required
    #     max_records: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeWarmPoolOutput
    #   resp.data.warm_pool_configuration #=> Types::WarmPoolConfiguration
    #   resp.data.warm_pool_configuration.max_group_prepared_capacity #=> Integer
    #   resp.data.warm_pool_configuration.min_size #=> Integer
    #   resp.data.warm_pool_configuration.pool_state #=> String, one of ["Stopped", "Running", "Hibernated"]
    #   resp.data.warm_pool_configuration.status #=> String, one of ["PendingDelete"]
    #   resp.data.warm_pool_configuration.instance_reuse_policy #=> Types::InstanceReusePolicy
    #   resp.data.warm_pool_configuration.instance_reuse_policy.reuse_on_scale_in #=> Boolean
    #   resp.data.instances #=> Array<Instance>
    #   resp.data.instances[0] #=> Types::Instance
    #   resp.data.instances[0].instance_id #=> String
    #   resp.data.instances[0].instance_type #=> String
    #   resp.data.instances[0].availability_zone #=> String
    #   resp.data.instances[0].lifecycle_state #=> String, one of ["Pending", "Pending:Wait", "Pending:Proceed", "Quarantined", "InService", "Terminating", "Terminating:Wait", "Terminating:Proceed", "Terminated", "Detaching", "Detached", "EnteringStandby", "Standby", "Warmed:Pending", "Warmed:Pending:Wait", "Warmed:Pending:Proceed", "Warmed:Terminating", "Warmed:Terminating:Wait", "Warmed:Terminating:Proceed", "Warmed:Terminated", "Warmed:Stopped", "Warmed:Running", "Warmed:Hibernated"]
    #   resp.data.instances[0].health_status #=> String
    #   resp.data.instances[0].launch_configuration_name #=> String
    #   resp.data.instances[0].launch_template #=> Types::LaunchTemplateSpecification
    #   resp.data.instances[0].launch_template.launch_template_id #=> String
    #   resp.data.instances[0].launch_template.launch_template_name #=> String
    #   resp.data.instances[0].launch_template.version #=> String
    #   resp.data.instances[0].protected_from_scale_in #=> Boolean
    #   resp.data.instances[0].weighted_capacity #=> String
    #   resp.data.next_token #=> String
    #
    def describe_warm_pool(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeWarmPoolInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeWarmPoolInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeWarmPool
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextToken, Errors::LimitExceededFault, Errors::ResourceContentionFault]),
        data_parser: Parsers::DescribeWarmPool
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeWarmPool,
        stubs: @stubs,
        params_class: Params::DescribeWarmPoolOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_warm_pool
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes one or more instances from the specified Auto Scaling group.</p>
    #         <p>After the instances are detached, you can manage them independent of the Auto Scaling
    #             group.</p>
    #         <p>If you do not specify the option to decrement the desired capacity, Amazon EC2 Auto Scaling launches
    #             instances to replace the ones that are detached.</p>
    #         <p>If there is a Classic Load Balancer attached to the Auto Scaling group, the instances are
    #             deregistered from the load balancer. If there are target groups attached to the Auto Scaling
    #             group, the instances are deregistered from the target groups.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/detach-instance-asg.html">Detach EC2 instances from
    #                 your Auto Scaling group</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DetachInstancesInput}.
    #
    # @option params [Array<String>] :instance_ids
    #   <p>The IDs of the instances. You can specify up to 20 instances.</p>
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [Boolean] :should_decrement_desired_capacity
    #   <p>Indicates whether the Auto Scaling group decrements the desired capacity value by the number
    #               of instances detached.</p>
    #
    # @return [Types::DetachInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_instances(
    #     instance_ids: [
    #       'member'
    #     ],
    #     auto_scaling_group_name: 'AutoScalingGroupName', # required
    #     should_decrement_desired_capacity: false # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetachInstancesOutput
    #   resp.data.activities #=> Array<Activity>
    #   resp.data.activities[0] #=> Types::Activity
    #   resp.data.activities[0].activity_id #=> String
    #   resp.data.activities[0].auto_scaling_group_name #=> String
    #   resp.data.activities[0].description #=> String
    #   resp.data.activities[0].cause #=> String
    #   resp.data.activities[0].start_time #=> Time
    #   resp.data.activities[0].end_time #=> Time
    #   resp.data.activities[0].status_code #=> String, one of ["PendingSpotBidPlacement", "WaitingForSpotInstanceRequestId", "WaitingForSpotInstanceId", "WaitingForInstanceId", "PreInService", "InProgress", "WaitingForELBConnectionDraining", "MidLifecycleAction", "WaitingForInstanceWarmup", "Successful", "Failed", "Cancelled"]
    #   resp.data.activities[0].status_message #=> String
    #   resp.data.activities[0].progress #=> Integer
    #   resp.data.activities[0].details #=> String
    #   resp.data.activities[0].auto_scaling_group_state #=> String
    #   resp.data.activities[0].auto_scaling_group_arn #=> String
    #
    def detach_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetachInstancesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetachInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetachInstances
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceContentionFault]),
        data_parser: Parsers::DetachInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetachInstances,
        stubs: @stubs,
        params_class: Params::DetachInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detach_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Detaches one or more target groups from the specified Auto Scaling group.</p>
    #
    # @param [Hash] params
    #   See {Types::DetachLoadBalancerTargetGroupsInput}.
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [Array<String>] :target_group_ar_ns
    #   <p>The Amazon Resource Names (ARN) of the target groups. You can specify up to 10 target
    #               groups.</p>
    #
    # @return [Types::DetachLoadBalancerTargetGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_load_balancer_target_groups(
    #     auto_scaling_group_name: 'AutoScalingGroupName', # required
    #     target_group_ar_ns: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetachLoadBalancerTargetGroupsOutput
    #
    def detach_load_balancer_target_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetachLoadBalancerTargetGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetachLoadBalancerTargetGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetachLoadBalancerTargetGroups
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceContentionFault]),
        data_parser: Parsers::DetachLoadBalancerTargetGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetachLoadBalancerTargetGroups,
        stubs: @stubs,
        params_class: Params::DetachLoadBalancerTargetGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detach_load_balancer_target_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Detaches one or more Classic Load Balancers from the specified Auto Scaling group.</p>
    #         <p>This operation detaches only Classic Load Balancers. If you have Application Load
    #             Balancers, Network Load Balancers, or Gateway Load Balancers, use the <a>DetachLoadBalancerTargetGroups</a> API instead.</p>
    #         <p>When you detach a load balancer, it enters the <code>Removing</code> state while
    #             deregistering the instances in the group. When all instances are deregistered, then you
    #             can no longer describe the load balancer using the <a>DescribeLoadBalancers</a> API call. The instances remain running.</p>
    #
    # @param [Hash] params
    #   See {Types::DetachLoadBalancersInput}.
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [Array<String>] :load_balancer_names
    #   <p>The names of the load balancers. You can specify up to 10 load balancers.</p>
    #
    # @return [Types::DetachLoadBalancersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_load_balancers(
    #     auto_scaling_group_name: 'AutoScalingGroupName', # required
    #     load_balancer_names: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetachLoadBalancersOutput
    #
    def detach_load_balancers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetachLoadBalancersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetachLoadBalancersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetachLoadBalancers
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceContentionFault]),
        data_parser: Parsers::DetachLoadBalancers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetachLoadBalancers,
        stubs: @stubs,
        params_class: Params::DetachLoadBalancersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detach_load_balancers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables group metrics for the specified Auto Scaling group.</p>
    #
    # @param [Hash] params
    #   See {Types::DisableMetricsCollectionInput}.
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [Array<String>] :metrics
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
    # @return [Types::DisableMetricsCollectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_metrics_collection(
    #     auto_scaling_group_name: 'AutoScalingGroupName', # required
    #     metrics: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisableMetricsCollectionOutput
    #
    def disable_metrics_collection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableMetricsCollectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisableMetricsCollectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisableMetricsCollection
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceContentionFault]),
        data_parser: Parsers::DisableMetricsCollection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisableMetricsCollection,
        stubs: @stubs,
        params_class: Params::DisableMetricsCollectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disable_metrics_collection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables group metrics for the specified Auto Scaling group. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-monitoring.html">Monitoring CloudWatch metrics for your Auto Scaling groups and instances</a> in the
    #                 <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableMetricsCollectionInput}.
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [Array<String>] :metrics
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
    # @option params [String] :granularity
    #   <p>The granularity to associate with the metrics to collect. The only valid value is
    #                   <code>1Minute</code>.</p>
    #
    # @return [Types::EnableMetricsCollectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_metrics_collection(
    #     auto_scaling_group_name: 'AutoScalingGroupName', # required
    #     metrics: [
    #       'member'
    #     ],
    #     granularity: 'Granularity' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnableMetricsCollectionOutput
    #
    def enable_metrics_collection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableMetricsCollectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableMetricsCollectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableMetricsCollection
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceContentionFault]),
        data_parser: Parsers::EnableMetricsCollection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EnableMetricsCollection,
        stubs: @stubs,
        params_class: Params::EnableMetricsCollectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enable_metrics_collection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Moves the specified instances into the standby state.</p>
    #         <p>If you choose to decrement the desired capacity of the Auto Scaling group, the instances can
    #             enter standby as long as the desired capacity of the Auto Scaling group after the instances are
    #             placed into standby is equal to or greater than the minimum capacity of the
    #             group.</p>
    #         <p>If you choose not to decrement the desired capacity of the Auto Scaling group, the Auto Scaling group
    #             launches new instances to replace the instances on standby.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-enter-exit-standby.html">Temporarily removing
    #                 instances from your Auto Scaling group</a> in the
    #             <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::EnterStandbyInput}.
    #
    # @option params [Array<String>] :instance_ids
    #   <p>The IDs of the instances. You can specify up to 20 instances.</p>
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [Boolean] :should_decrement_desired_capacity
    #   <p>Indicates whether to decrement the desired capacity of the Auto Scaling group by the number of
    #               instances moved to <code>Standby</code> mode.</p>
    #
    # @return [Types::EnterStandbyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enter_standby(
    #     instance_ids: [
    #       'member'
    #     ],
    #     auto_scaling_group_name: 'AutoScalingGroupName', # required
    #     should_decrement_desired_capacity: false # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnterStandbyOutput
    #   resp.data.activities #=> Array<Activity>
    #   resp.data.activities[0] #=> Types::Activity
    #   resp.data.activities[0].activity_id #=> String
    #   resp.data.activities[0].auto_scaling_group_name #=> String
    #   resp.data.activities[0].description #=> String
    #   resp.data.activities[0].cause #=> String
    #   resp.data.activities[0].start_time #=> Time
    #   resp.data.activities[0].end_time #=> Time
    #   resp.data.activities[0].status_code #=> String, one of ["PendingSpotBidPlacement", "WaitingForSpotInstanceRequestId", "WaitingForSpotInstanceId", "WaitingForInstanceId", "PreInService", "InProgress", "WaitingForELBConnectionDraining", "MidLifecycleAction", "WaitingForInstanceWarmup", "Successful", "Failed", "Cancelled"]
    #   resp.data.activities[0].status_message #=> String
    #   resp.data.activities[0].progress #=> Integer
    #   resp.data.activities[0].details #=> String
    #   resp.data.activities[0].auto_scaling_group_state #=> String
    #   resp.data.activities[0].auto_scaling_group_arn #=> String
    #
    def enter_standby(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnterStandbyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnterStandbyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnterStandby
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceContentionFault]),
        data_parser: Parsers::EnterStandby
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EnterStandby,
        stubs: @stubs,
        params_class: Params::EnterStandbyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enter_standby
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Executes the specified policy. This can be useful for testing the design of your
    #             scaling policy.</p>
    #
    # @param [Hash] params
    #   See {Types::ExecutePolicyInput}.
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [String] :policy_name
    #   <p>The name or ARN of the policy.</p>
    #
    # @option params [Boolean] :honor_cooldown
    #   <p>Indicates whether Amazon EC2 Auto Scaling waits for the cooldown period to complete before executing
    #               the policy.</p>
    #           <p>Valid only if the policy type is <code>SimpleScaling</code>. For more information, see
    #                   <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html">Scaling
    #                   cooldowns for Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @option params [Float] :metric_value
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
    # @option params [Float] :breach_threshold
    #   <p>The breach threshold for the alarm.</p>
    #           <p>Required if the policy type is <code>StepScaling</code> and not supported
    #               otherwise.</p>
    #
    # @return [Types::ExecutePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_policy(
    #     auto_scaling_group_name: 'AutoScalingGroupName',
    #     policy_name: 'PolicyName', # required
    #     honor_cooldown: false,
    #     metric_value: 1.0,
    #     breach_threshold: 1.0
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExecutePolicyOutput
    #
    def execute_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExecutePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExecutePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExecutePolicy
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ScalingActivityInProgressFault, Errors::ResourceContentionFault]),
        data_parser: Parsers::ExecutePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ExecutePolicy,
        stubs: @stubs,
        params_class: Params::ExecutePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :execute_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Moves the specified instances out of the standby state.</p>
    #         <p>After you put the instances back in service, the desired capacity is
    #             incremented.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-enter-exit-standby.html">Temporarily removing
    #                 instances from your Auto Scaling group</a> in the
    #             <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ExitStandbyInput}.
    #
    # @option params [Array<String>] :instance_ids
    #   <p>The IDs of the instances. You can specify up to 20 instances.</p>
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @return [Types::ExitStandbyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.exit_standby(
    #     instance_ids: [
    #       'member'
    #     ],
    #     auto_scaling_group_name: 'AutoScalingGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExitStandbyOutput
    #   resp.data.activities #=> Array<Activity>
    #   resp.data.activities[0] #=> Types::Activity
    #   resp.data.activities[0].activity_id #=> String
    #   resp.data.activities[0].auto_scaling_group_name #=> String
    #   resp.data.activities[0].description #=> String
    #   resp.data.activities[0].cause #=> String
    #   resp.data.activities[0].start_time #=> Time
    #   resp.data.activities[0].end_time #=> Time
    #   resp.data.activities[0].status_code #=> String, one of ["PendingSpotBidPlacement", "WaitingForSpotInstanceRequestId", "WaitingForSpotInstanceId", "WaitingForInstanceId", "PreInService", "InProgress", "WaitingForELBConnectionDraining", "MidLifecycleAction", "WaitingForInstanceWarmup", "Successful", "Failed", "Cancelled"]
    #   resp.data.activities[0].status_message #=> String
    #   resp.data.activities[0].progress #=> Integer
    #   resp.data.activities[0].details #=> String
    #   resp.data.activities[0].auto_scaling_group_state #=> String
    #   resp.data.activities[0].auto_scaling_group_arn #=> String
    #
    def exit_standby(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExitStandbyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExitStandbyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExitStandby
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceContentionFault]),
        data_parser: Parsers::ExitStandby
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ExitStandby,
        stubs: @stubs,
        params_class: Params::ExitStandbyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :exit_standby
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the forecast data for a predictive scaling policy.</p>
    #         <p>Load forecasts are predictions of the hourly load values using historical load data
    #             from CloudWatch and an analysis of historical trends. Capacity forecasts are represented as
    #             predicted values for the minimum capacity that is needed on an hourly basis, based on
    #             the hourly load forecast.</p>
    #         <p>A minimum of 24 hours of data is required to create the initial forecasts. However,
    #             having a full 14 days of historical data results in more accurate forecasts.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-predictive-scaling.html">Predictive
    #                 scaling for Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPredictiveScalingForecastInput}.
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [String] :policy_name
    #   <p>The name of the policy.</p>
    #
    # @option params [Time] :start_time
    #   <p>The inclusive start time of the time range for the forecast data to get. At most, the
    #               date and time can be one year before the current date and time.</p>
    #
    # @option params [Time] :end_time
    #   <p>The exclusive end time of the time range for the forecast data to get. The maximum
    #               time duration between the start and end time is 30 days. </p>
    #           <p>Although this parameter can accept a date and time that is more than two days in the
    #               future, the availability of forecast data has limits. Amazon EC2 Auto Scaling only issues forecasts for
    #               periods of two days in advance.</p>
    #
    # @return [Types::GetPredictiveScalingForecastOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_predictive_scaling_forecast(
    #     auto_scaling_group_name: 'AutoScalingGroupName', # required
    #     policy_name: 'PolicyName', # required
    #     start_time: Time.now, # required
    #     end_time: Time.now # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPredictiveScalingForecastOutput
    #   resp.data.load_forecast #=> Array<LoadForecast>
    #   resp.data.load_forecast[0] #=> Types::LoadForecast
    #   resp.data.load_forecast[0].timestamps #=> Array<Time>
    #   resp.data.load_forecast[0].timestamps[0] #=> Time
    #   resp.data.load_forecast[0].values #=> Array<Float>
    #   resp.data.load_forecast[0].values[0] #=> Float
    #   resp.data.load_forecast[0].metric_specification #=> Types::PredictiveScalingMetricSpecification
    #   resp.data.load_forecast[0].metric_specification.target_value #=> Float
    #   resp.data.load_forecast[0].metric_specification.predefined_metric_pair_specification #=> Types::PredictiveScalingPredefinedMetricPair
    #   resp.data.load_forecast[0].metric_specification.predefined_metric_pair_specification.predefined_metric_type #=> String, one of ["ASGCPUUtilization", "ASGNetworkIn", "ASGNetworkOut", "ALBRequestCount"]
    #   resp.data.load_forecast[0].metric_specification.predefined_metric_pair_specification.resource_label #=> String
    #   resp.data.load_forecast[0].metric_specification.predefined_scaling_metric_specification #=> Types::PredictiveScalingPredefinedScalingMetric
    #   resp.data.load_forecast[0].metric_specification.predefined_scaling_metric_specification.predefined_metric_type #=> String, one of ["ASGAverageCPUUtilization", "ASGAverageNetworkIn", "ASGAverageNetworkOut", "ALBRequestCountPerTarget"]
    #   resp.data.load_forecast[0].metric_specification.predefined_scaling_metric_specification.resource_label #=> String
    #   resp.data.load_forecast[0].metric_specification.predefined_load_metric_specification #=> Types::PredictiveScalingPredefinedLoadMetric
    #   resp.data.load_forecast[0].metric_specification.predefined_load_metric_specification.predefined_metric_type #=> String, one of ["ASGTotalCPUUtilization", "ASGTotalNetworkIn", "ASGTotalNetworkOut", "ALBTargetGroupRequestCount"]
    #   resp.data.load_forecast[0].metric_specification.predefined_load_metric_specification.resource_label #=> String
    #   resp.data.load_forecast[0].metric_specification.customized_scaling_metric_specification #=> Types::PredictiveScalingCustomizedScalingMetric
    #   resp.data.load_forecast[0].metric_specification.customized_scaling_metric_specification.metric_data_queries #=> Array<MetricDataQuery>
    #   resp.data.load_forecast[0].metric_specification.customized_scaling_metric_specification.metric_data_queries[0] #=> Types::MetricDataQuery
    #   resp.data.load_forecast[0].metric_specification.customized_scaling_metric_specification.metric_data_queries[0].id #=> String
    #   resp.data.load_forecast[0].metric_specification.customized_scaling_metric_specification.metric_data_queries[0].expression #=> String
    #   resp.data.load_forecast[0].metric_specification.customized_scaling_metric_specification.metric_data_queries[0].metric_stat #=> Types::MetricStat
    #   resp.data.load_forecast[0].metric_specification.customized_scaling_metric_specification.metric_data_queries[0].metric_stat.metric #=> Types::Metric
    #   resp.data.load_forecast[0].metric_specification.customized_scaling_metric_specification.metric_data_queries[0].metric_stat.metric.namespace #=> String
    #   resp.data.load_forecast[0].metric_specification.customized_scaling_metric_specification.metric_data_queries[0].metric_stat.metric.metric_name #=> String
    #   resp.data.load_forecast[0].metric_specification.customized_scaling_metric_specification.metric_data_queries[0].metric_stat.metric.dimensions #=> Array<MetricDimension>
    #   resp.data.load_forecast[0].metric_specification.customized_scaling_metric_specification.metric_data_queries[0].metric_stat.metric.dimensions[0] #=> Types::MetricDimension
    #   resp.data.load_forecast[0].metric_specification.customized_scaling_metric_specification.metric_data_queries[0].metric_stat.metric.dimensions[0].name #=> String
    #   resp.data.load_forecast[0].metric_specification.customized_scaling_metric_specification.metric_data_queries[0].metric_stat.metric.dimensions[0].value #=> String
    #   resp.data.load_forecast[0].metric_specification.customized_scaling_metric_specification.metric_data_queries[0].metric_stat.stat #=> String
    #   resp.data.load_forecast[0].metric_specification.customized_scaling_metric_specification.metric_data_queries[0].metric_stat.unit #=> String
    #   resp.data.load_forecast[0].metric_specification.customized_scaling_metric_specification.metric_data_queries[0].label #=> String
    #   resp.data.load_forecast[0].metric_specification.customized_scaling_metric_specification.metric_data_queries[0].return_data #=> Boolean
    #   resp.data.load_forecast[0].metric_specification.customized_load_metric_specification #=> Types::PredictiveScalingCustomizedLoadMetric
    #   resp.data.load_forecast[0].metric_specification.customized_load_metric_specification.metric_data_queries #=> Array<MetricDataQuery>
    #   resp.data.load_forecast[0].metric_specification.customized_capacity_metric_specification #=> Types::PredictiveScalingCustomizedCapacityMetric
    #   resp.data.load_forecast[0].metric_specification.customized_capacity_metric_specification.metric_data_queries #=> Array<MetricDataQuery>
    #   resp.data.capacity_forecast #=> Types::CapacityForecast
    #   resp.data.capacity_forecast.timestamps #=> Array<Time>
    #   resp.data.capacity_forecast.values #=> Array<Float>
    #   resp.data.update_time #=> Time
    #
    def get_predictive_scaling_forecast(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPredictiveScalingForecastInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPredictiveScalingForecastInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPredictiveScalingForecast
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceContentionFault]),
        data_parser: Parsers::GetPredictiveScalingForecast
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPredictiveScalingForecast,
        stubs: @stubs,
        params_class: Params::GetPredictiveScalingForecastOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_predictive_scaling_forecast
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates a lifecycle hook for the specified Auto Scaling group.</p>
    #         <p>Lifecycle hooks let you create solutions that are aware of events in the Auto Scaling instance
    #             lifecycle, and then perform a custom action on instances when the corresponding
    #             lifecycle event occurs.</p>
    #         <p>This step is a part of the procedure for adding a lifecycle hook to an Auto Scaling
    #             group:</p>
    #         <ol>
    #             <li>
    #                 <p>(Optional) Create a launch template or launch configuration with a user data
    #                     script that runs while an instance is in a wait state due to a lifecycle
    #                     hook.</p>
    #             </li>
    #             <li>
    #                 <p>(Optional) Create a Lambda function and a rule that allows Amazon EventBridge to invoke
    #                     your Lambda function when an instance is put into a wait state due to a
    #                     lifecycle hook.</p>
    #             </li>
    #             <li>
    #                 <p>(Optional) Create a notification target and an IAM role. The target can be
    #                     either an Amazon SQS queue or an Amazon SNS topic. The role allows Amazon EC2 Auto Scaling to publish
    #                     lifecycle notifications to the target.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                     <b>Create the lifecycle hook. Specify whether the hook is
    #                         used when the instances launch or terminate.</b>
    #                 </p>
    #             </li>
    #             <li>
    #                 <p>If you need more time, record the lifecycle action heartbeat to keep the
    #                     instance in a wait state using the <a>RecordLifecycleActionHeartbeat</a> API call.</p>
    #             </li>
    #             <li>
    #                 <p>If you finish before the timeout period ends, send a callback by using the
    #                         <a>CompleteLifecycleAction</a> API call.</p>
    #             </li>
    #          </ol>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html">Amazon EC2 Auto Scaling lifecycle
    #                 hooks</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #         <p>If you exceed your maximum limit of lifecycle hooks, which by default is 50 per Auto Scaling
    #             group, the call fails.</p>
    #         <p>You can view the lifecycle hooks for an Auto Scaling group using the <a>DescribeLifecycleHooks</a> API call. If you are no longer using a lifecycle
    #             hook, you can delete it by calling the <a>DeleteLifecycleHook</a> API.</p>
    #
    # @param [Hash] params
    #   See {Types::PutLifecycleHookInput}.
    #
    # @option params [String] :lifecycle_hook_name
    #   <p>The name of the lifecycle hook.</p>
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [String] :lifecycle_transition
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
    # @option params [String] :role_arn
    #   <p>The ARN of the IAM role that allows the Auto Scaling group to publish to the specified
    #               notification target.</p>
    #           <p>Valid only if the notification target is an Amazon SNS topic or an Amazon SQS queue. Required
    #               for new lifecycle hooks, but optional when updating existing hooks.</p>
    #
    # @option params [String] :notification_target_arn
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
    # @option params [String] :notification_metadata
    #   <p>Additional information that you want to include any time Amazon EC2 Auto Scaling sends a message to
    #               the notification target.</p>
    #
    # @option params [Integer] :heartbeat_timeout
    #   <p>The maximum time, in seconds, that can elapse before the lifecycle hook times out. The
    #               range is from <code>30</code> to <code>7200</code> seconds. The default value is
    #                   <code>3600</code> seconds (1 hour).</p>
    #           <p>If the lifecycle hook times out, Amazon EC2 Auto Scaling performs the action that you specified in
    #               the <code>DefaultResult</code> parameter. You can prevent the lifecycle hook from timing
    #               out by calling the <a>RecordLifecycleActionHeartbeat</a> API.</p>
    #
    # @option params [String] :default_result
    #   <p>Defines the action the Auto Scaling group should take when the lifecycle hook timeout elapses
    #               or if an unexpected failure occurs. This parameter can be either <code>CONTINUE</code>
    #               or <code>ABANDON</code>. The default value is <code>ABANDON</code>.</p>
    #
    # @return [Types::PutLifecycleHookOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_lifecycle_hook(
    #     lifecycle_hook_name: 'LifecycleHookName', # required
    #     auto_scaling_group_name: 'AutoScalingGroupName', # required
    #     lifecycle_transition: 'LifecycleTransition',
    #     role_arn: 'RoleARN',
    #     notification_target_arn: 'NotificationTargetARN',
    #     notification_metadata: 'NotificationMetadata',
    #     heartbeat_timeout: 1,
    #     default_result: 'DefaultResult'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutLifecycleHookOutput
    #
    def put_lifecycle_hook(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutLifecycleHookInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutLifecycleHookInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutLifecycleHook
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededFault, Errors::ResourceContentionFault]),
        data_parser: Parsers::PutLifecycleHook
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutLifecycleHook,
        stubs: @stubs,
        params_class: Params::PutLifecycleHookOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_lifecycle_hook
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Configures an Auto Scaling group to send notifications when specified events take place.
    #             Subscribers to the specified topic can have messages delivered to an endpoint such as a
    #             web server or an email address.</p>
    #         <p>This configuration overwrites any existing configuration.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ASGettingNotifications.html">Getting Amazon SNS
    #                 notifications when your Auto Scaling group scales</a> in the
    #                 <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #         <p>If you exceed your maximum limit of SNS topics, which is 10 per Auto Scaling group, the call
    #             fails.</p>
    #
    # @param [Hash] params
    #   See {Types::PutNotificationConfigurationInput}.
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [String] :topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic.</p>
    #
    # @option params [Array<String>] :notification_types
    #   <p>The type of event that causes the notification to be sent. To query the notification
    #               types supported by Amazon EC2 Auto Scaling, call the <a>DescribeAutoScalingNotificationTypes</a> API.</p>
    #
    # @return [Types::PutNotificationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_notification_configuration(
    #     auto_scaling_group_name: 'AutoScalingGroupName', # required
    #     topic_arn: 'TopicARN', # required
    #     notification_types: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutNotificationConfigurationOutput
    #
    def put_notification_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutNotificationConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutNotificationConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutNotificationConfiguration
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceLinkedRoleFailure, Errors::LimitExceededFault, Errors::ResourceContentionFault]),
        data_parser: Parsers::PutNotificationConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutNotificationConfiguration,
        stubs: @stubs,
        params_class: Params::PutNotificationConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_notification_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates a scaling policy for an Auto Scaling group. Scaling policies are used to
    #             scale an Auto Scaling group based on configurable metrics. If no policies are defined, the
    #             dynamic scaling and predictive scaling features are not used. </p>
    #         <p>For more information about using dynamic scaling, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-target-tracking.html">Target tracking
    #                 scaling policies</a> and <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html">Step and simple scaling
    #                 policies</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #         <p>For more information about using predictive scaling, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-predictive-scaling.html">Predictive
    #                 scaling for Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #         <p>You can view the scaling policies for an Auto Scaling group using the <a>DescribePolicies</a> API call. If you are no longer using a scaling policy,
    #             you can delete it by calling the <a>DeletePolicy</a> API.</p>
    #
    # @param [Hash] params
    #   See {Types::PutScalingPolicyInput}.
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [String] :policy_name
    #   <p>The name of the policy.</p>
    #
    # @option params [String] :policy_type
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
    # @option params [String] :adjustment_type
    #   <p>Specifies how the scaling adjustment is interpreted (for example, an absolute number
    #               or a percentage). The valid values are <code>ChangeInCapacity</code>,
    #                   <code>ExactCapacity</code>, and <code>PercentChangeInCapacity</code>.</p>
    #           <p>Required if the policy type is <code>StepScaling</code> or <code>SimpleScaling</code>.
    #               For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html#as-scaling-adjustment">Scaling adjustment types</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @option params [Integer] :min_adjustment_step
    #   <p>Available for backward compatibility. Use <code>MinAdjustmentMagnitude</code>
    #               instead.</p>
    #
    # @option params [Integer] :min_adjustment_magnitude
    #   <p>The minimum value to scale by when the adjustment type is
    #                   <code>PercentChangeInCapacity</code>. For example, suppose that you create a step
    #               scaling policy to scale out an Auto Scaling group by 25 percent and you specify a
    #                   <code>MinAdjustmentMagnitude</code> of 2. If the group has 4 instances and the
    #               scaling policy is performed, 25 percent of 4 is 1. However, because you specified a
    #                   <code>MinAdjustmentMagnitude</code> of 2, Amazon EC2 Auto Scaling scales out the group by 2
    #               instances.</p>
    #           <p>Valid only if the policy type is <code>StepScaling</code> or
    #                   <code>SimpleScaling</code>. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html#as-scaling-adjustment">Scaling adjustment types</a> in the <i>Amazon EC2 Auto Scaling User
    #               Guide</i>.</p>
    #           <note>
    #               <p>Some Auto Scaling groups use instance weights. In this case, set the
    #                       <code>MinAdjustmentMagnitude</code> to a value that is at least as large as your
    #                   largest instance weight.</p>
    #           </note>
    #
    # @option params [Integer] :scaling_adjustment
    #   <p>The amount by which to scale, based on the specified adjustment type. A positive value
    #               adds to the current capacity while a negative number removes from the current capacity.
    #               For exact capacity, you must specify a positive value.</p>
    #           <p>Required if the policy type is <code>SimpleScaling</code>. (Not used with any other
    #               policy type.) </p>
    #
    # @option params [Integer] :cooldown
    #   <p>A cooldown period, in seconds, that applies to a specific simple scaling policy. When
    #               a cooldown period is specified here, it overrides the default cooldown.</p>
    #           <p>Valid only if the policy type is <code>SimpleScaling</code>. For more information, see
    #                   <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html">Scaling
    #                   cooldowns for Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #           <p>Default: None</p>
    #
    # @option params [String] :metric_aggregation_type
    #   <p>The aggregation type for the CloudWatch metrics. The valid values are <code>Minimum</code>,
    #                   <code>Maximum</code>, and <code>Average</code>. If the aggregation type is null, the
    #               value is treated as <code>Average</code>.</p>
    #           <p>Valid only if the policy type is <code>StepScaling</code>.</p>
    #
    # @option params [Array<StepAdjustment>] :step_adjustments
    #   <p>A set of adjustments that enable you to scale based on the size of the alarm
    #               breach.</p>
    #           <p>Required if the policy type is <code>StepScaling</code>. (Not used with any other
    #               policy type.) </p>
    #
    # @option params [Integer] :estimated_instance_warmup
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
    # @option params [TargetTrackingConfiguration] :target_tracking_configuration
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
    # @option params [Boolean] :enabled
    #   <p>Indicates whether the scaling policy is enabled or disabled. The default is enabled.
    #               For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-enable-disable-scaling-policy.html">Disabling a
    #                   scaling policy for an Auto Scaling group</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @option params [PredictiveScalingConfiguration] :predictive_scaling_configuration
    #   <p>A predictive scaling policy. Provides support for predefined and custom
    #               metrics.</p>
    #           <p>Predefined metrics include CPU utilization, network in/out, and the Application Load
    #               Balancer request count.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_PredictiveScalingConfiguration.html">PredictiveScalingConfiguration</a> in the <i>Amazon EC2 Auto Scaling API
    #                   Reference</i>.</p>
    #           <p>Required if the policy type is <code>PredictiveScaling</code>.</p>
    #
    # @return [Types::PutScalingPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_scaling_policy(
    #     auto_scaling_group_name: 'AutoScalingGroupName', # required
    #     policy_name: 'PolicyName', # required
    #     policy_type: 'PolicyType',
    #     adjustment_type: 'AdjustmentType',
    #     min_adjustment_step: 1,
    #     min_adjustment_magnitude: 1,
    #     scaling_adjustment: 1,
    #     cooldown: 1,
    #     metric_aggregation_type: 'MetricAggregationType',
    #     step_adjustments: [
    #       {
    #         metric_interval_lower_bound: 1.0,
    #         metric_interval_upper_bound: 1.0,
    #         scaling_adjustment: 1 # required
    #       }
    #     ],
    #     estimated_instance_warmup: 1,
    #     target_tracking_configuration: {
    #       predefined_metric_specification: {
    #         predefined_metric_type: 'ASGAverageCPUUtilization', # required - accepts ["ASGAverageCPUUtilization", "ASGAverageNetworkIn", "ASGAverageNetworkOut", "ALBRequestCountPerTarget"]
    #         resource_label: 'ResourceLabel'
    #       },
    #       customized_metric_specification: {
    #         metric_name: 'MetricName', # required
    #         namespace: 'Namespace', # required
    #         dimensions: [
    #           {
    #             name: 'Name', # required
    #             value: 'Value' # required
    #           }
    #         ],
    #         statistic: 'Average', # required - accepts ["Average", "Minimum", "Maximum", "SampleCount", "Sum"]
    #         unit: 'Unit'
    #       },
    #       target_value: 1.0, # required
    #       disable_scale_in: false
    #     },
    #     enabled: false,
    #     predictive_scaling_configuration: {
    #       metric_specifications: [
    #         {
    #           target_value: 1.0, # required
    #           predefined_metric_pair_specification: {
    #             predefined_metric_type: 'ASGCPUUtilization', # required - accepts ["ASGCPUUtilization", "ASGNetworkIn", "ASGNetworkOut", "ALBRequestCount"]
    #             resource_label: 'ResourceLabel'
    #           },
    #           predefined_scaling_metric_specification: {
    #             predefined_metric_type: 'ASGAverageCPUUtilization', # required - accepts ["ASGAverageCPUUtilization", "ASGAverageNetworkIn", "ASGAverageNetworkOut", "ALBRequestCountPerTarget"]
    #             resource_label: 'ResourceLabel'
    #           },
    #           predefined_load_metric_specification: {
    #             predefined_metric_type: 'ASGTotalCPUUtilization', # required - accepts ["ASGTotalCPUUtilization", "ASGTotalNetworkIn", "ASGTotalNetworkOut", "ALBTargetGroupRequestCount"]
    #             resource_label: 'ResourceLabel'
    #           },
    #           customized_scaling_metric_specification: {
    #             metric_data_queries: [
    #               {
    #                 id: 'Id', # required
    #                 expression: 'Expression',
    #                 metric_stat: {
    #                   metric: {
    #                     namespace: 'Namespace', # required
    #                     metric_name: 'MetricName', # required
    #                   }, # required
    #                   stat: 'Stat', # required
    #                   unit: 'Unit'
    #                 },
    #                 label: 'Label',
    #                 return_data: false
    #               }
    #             ] # required
    #           },
    #           customized_load_metric_specification: {
    #           },
    #           customized_capacity_metric_specification: {
    #           }
    #         }
    #       ], # required
    #       mode: 'ForecastAndScale', # accepts ["ForecastAndScale", "ForecastOnly"]
    #       scheduling_buffer_time: 1,
    #       max_capacity_breach_behavior: 'HonorMaxCapacity', # accepts ["HonorMaxCapacity", "IncreaseMaxCapacity"]
    #       max_capacity_buffer: 1
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutScalingPolicyOutput
    #   resp.data.policy_arn #=> String
    #   resp.data.alarms #=> Array<Alarm>
    #   resp.data.alarms[0] #=> Types::Alarm
    #   resp.data.alarms[0].alarm_name #=> String
    #   resp.data.alarms[0].alarm_arn #=> String
    #
    def put_scaling_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutScalingPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutScalingPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutScalingPolicy
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceLinkedRoleFailure, Errors::LimitExceededFault, Errors::ResourceContentionFault]),
        data_parser: Parsers::PutScalingPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutScalingPolicy,
        stubs: @stubs,
        params_class: Params::PutScalingPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_scaling_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates a scheduled scaling action for an Auto Scaling group.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/schedule_time.html">Scheduled scaling</a> in the
    #                 <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #         <p>You can view the scheduled actions for an Auto Scaling group using the <a>DescribeScheduledActions</a> API call. If you are no longer using a
    #             scheduled action, you can delete it by calling the <a>DeleteScheduledAction</a> API.</p>
    #
    # @param [Hash] params
    #   See {Types::PutScheduledUpdateGroupActionInput}.
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [String] :scheduled_action_name
    #   <p>The name of this scaling action.</p>
    #
    # @option params [Time] :time
    #   <p>This parameter is no longer used.</p>
    #
    # @option params [Time] :start_time
    #   <p>The date and time for this action to start, in YYYY-MM-DDThh:mm:ssZ format in UTC/GMT
    #               only and in quotes (for example, <code>"2019-06-01T00:00:00Z"</code>).</p>
    #           <p>If you specify <code>Recurrence</code> and <code>StartTime</code>, Amazon EC2 Auto Scaling performs
    #               the action at this time, and then performs the action based on the specified
    #               recurrence.</p>
    #           <p>If you try to schedule your action in the past, Amazon EC2 Auto Scaling returns an error
    #               message.</p>
    #
    # @option params [Time] :end_time
    #   <p>The date and time for the recurring schedule to end, in UTC.</p>
    #
    # @option params [String] :recurrence
    #   <p>The recurring schedule for this action. This format consists of five fields separated
    #               by white spaces: [Minute] [Hour] [Day_of_Month] [Month_of_Year] [Day_of_Week]. The value
    #               must be in quotes (for example, <code>"30 0 1 1,6,12 *"</code>). For more information
    #               about this format, see <a href="http://crontab.org">Crontab</a>.</p>
    #           <p>When <code>StartTime</code> and <code>EndTime</code> are specified with
    #                   <code>Recurrence</code>, they form the boundaries of when the recurring action
    #               starts and stops.</p>
    #           <p>Cron expressions use Universal Coordinated Time (UTC) by default.</p>
    #
    # @option params [Integer] :min_size
    #   <p>The minimum size of the Auto Scaling group.</p>
    #
    # @option params [Integer] :max_size
    #   <p>The maximum size of the Auto Scaling group.</p>
    #
    # @option params [Integer] :desired_capacity
    #   <p>The desired capacity is the initial capacity of the Auto Scaling group after the scheduled
    #               action runs and the capacity it attempts to maintain. It can scale beyond this capacity
    #               if you add more scaling conditions. </p>
    #
    # @option params [String] :time_zone
    #   <p>Specifies the time zone for a cron expression. If a time zone is not provided, UTC is
    #               used by default. </p>
    #           <p>Valid values are the canonical names of the IANA time zones, derived from the IANA
    #               Time Zone Database (such as <code>Etc/GMT+9</code> or <code>Pacific/Tahiti</code>). For
    #               more information, see <a href="https://en.wikipedia.org/wiki/List_of_tz_database_time_zones">https://en.wikipedia.org/wiki/List_of_tz_database_time_zones</a>.</p>
    #
    # @return [Types::PutScheduledUpdateGroupActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_scheduled_update_group_action(
    #     auto_scaling_group_name: 'AutoScalingGroupName', # required
    #     scheduled_action_name: 'ScheduledActionName', # required
    #     time: Time.now,
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     recurrence: 'Recurrence',
    #     min_size: 1,
    #     max_size: 1,
    #     desired_capacity: 1,
    #     time_zone: 'TimeZone'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutScheduledUpdateGroupActionOutput
    #
    def put_scheduled_update_group_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutScheduledUpdateGroupActionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutScheduledUpdateGroupActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutScheduledUpdateGroupAction
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AlreadyExistsFault, Errors::LimitExceededFault, Errors::ResourceContentionFault]),
        data_parser: Parsers::PutScheduledUpdateGroupAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutScheduledUpdateGroupAction,
        stubs: @stubs,
        params_class: Params::PutScheduledUpdateGroupActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_scheduled_update_group_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates a warm pool for the specified Auto Scaling group. A warm pool is a pool of
    #             pre-initialized EC2 instances that sits alongside the Auto Scaling group. Whenever your
    #             application needs to scale out, the Auto Scaling group can draw on the warm pool to meet its new
    #             desired capacity. For more information and example configurations, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-warm-pools.html">Warm pools for
    #                 Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #         <p>This operation must be called from the Region in which the Auto Scaling group was created.
    #             This operation cannot be called on an Auto Scaling group that has a mixed instances policy or a
    #             launch template or launch configuration that requests Spot Instances.</p>
    #         <p>You can view the instances in the warm pool using the <a>DescribeWarmPool</a> API call. If you are no longer using a warm pool, you can delete it by calling the
    #                 <a>DeleteWarmPool</a> API.</p>
    #
    # @param [Hash] params
    #   See {Types::PutWarmPoolInput}.
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [Integer] :max_group_prepared_capacity
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
    # @option params [Integer] :min_size
    #   <p>Specifies the minimum number of instances to maintain in the warm pool. This helps you
    #               to ensure that there is always a certain number of warmed instances available to handle
    #               traffic spikes. Defaults to 0 if not specified.</p>
    #
    # @option params [String] :pool_state
    #   <p>Sets the instance state to transition to after the lifecycle actions are complete.
    #               Default is <code>Stopped</code>.</p>
    #
    # @option params [InstanceReusePolicy] :instance_reuse_policy
    #   <p>Indicates whether instances in the Auto Scaling group can be returned to the warm pool on
    #               scale in. The default is to terminate instances in the Auto Scaling group when the group scales
    #               in.</p>
    #
    # @return [Types::PutWarmPoolOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_warm_pool(
    #     auto_scaling_group_name: 'AutoScalingGroupName', # required
    #     max_group_prepared_capacity: 1,
    #     min_size: 1,
    #     pool_state: 'Stopped', # accepts ["Stopped", "Running", "Hibernated"]
    #     instance_reuse_policy: {
    #       reuse_on_scale_in: false
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutWarmPoolOutput
    #
    def put_warm_pool(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutWarmPoolInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutWarmPoolInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutWarmPool
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededFault, Errors::ResourceContentionFault]),
        data_parser: Parsers::PutWarmPool
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutWarmPool,
        stubs: @stubs,
        params_class: Params::PutWarmPoolOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_warm_pool
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Records a heartbeat for the lifecycle action associated with the specified token or
    #             instance. This extends the timeout by the length of time defined using the <a>PutLifecycleHook</a> API call.</p>
    #         <p>This step is a part of the procedure for adding a lifecycle hook to an Auto Scaling
    #             group:</p>
    #         <ol>
    #             <li>
    #                 <p>(Optional) Create a launch template or launch configuration with a user data
    #                     script that runs while an instance is in a wait state due to a lifecycle
    #                     hook.</p>
    #             </li>
    #             <li>
    #                 <p>(Optional) Create a Lambda function and a rule that allows Amazon EventBridge to invoke
    #                     your Lambda function when an instance is put into a wait state due to a
    #                     lifecycle hook.</p>
    #             </li>
    #             <li>
    #                 <p>(Optional) Create a notification target and an IAM role. The target can be
    #                     either an Amazon SQS queue or an Amazon SNS topic. The role allows Amazon EC2 Auto Scaling to publish
    #                     lifecycle notifications to the target.</p>
    #             </li>
    #             <li>
    #                 <p>Create the lifecycle hook. Specify whether the hook is used when the instances
    #                     launch or terminate.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                     <b>If you need more time, record the lifecycle action
    #                         heartbeat to keep the instance in a wait state.</b>
    #                 </p>
    #             </li>
    #             <li>
    #                 <p>If you finish before the timeout period ends, send a callback by using the
    #                         <a>CompleteLifecycleAction</a> API call.</p>
    #             </li>
    #          </ol>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html">Amazon EC2 Auto Scaling lifecycle
    #                 hooks</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::RecordLifecycleActionHeartbeatInput}.
    #
    # @option params [String] :lifecycle_hook_name
    #   <p>The name of the lifecycle hook.</p>
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [String] :lifecycle_action_token
    #   <p>A token that uniquely identifies a specific lifecycle action associated with an
    #               instance. Amazon EC2 Auto Scaling sends this token to the notification target that you specified when
    #               you created the lifecycle hook.</p>
    #
    # @option params [String] :instance_id
    #   <p>The ID of the instance.</p>
    #
    # @return [Types::RecordLifecycleActionHeartbeatOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.record_lifecycle_action_heartbeat(
    #     lifecycle_hook_name: 'LifecycleHookName', # required
    #     auto_scaling_group_name: 'AutoScalingGroupName', # required
    #     lifecycle_action_token: 'LifecycleActionToken',
    #     instance_id: 'InstanceId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RecordLifecycleActionHeartbeatOutput
    #
    def record_lifecycle_action_heartbeat(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RecordLifecycleActionHeartbeatInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RecordLifecycleActionHeartbeatInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RecordLifecycleActionHeartbeat
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceContentionFault]),
        data_parser: Parsers::RecordLifecycleActionHeartbeat
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RecordLifecycleActionHeartbeat,
        stubs: @stubs,
        params_class: Params::RecordLifecycleActionHeartbeatOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :record_lifecycle_action_heartbeat
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Resumes the specified suspended auto scaling processes, or all suspended process, for
    #             the specified Auto Scaling group.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html">Suspending and
    #                 resuming scaling processes</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ResumeProcessesInput}.
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [Array<String>] :scaling_processes
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
    # @return [Types::ResumeProcessesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resume_processes(
    #     auto_scaling_group_name: 'AutoScalingGroupName', # required
    #     scaling_processes: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ResumeProcessesOutput
    #
    def resume_processes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ResumeProcessesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ResumeProcessesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ResumeProcesses
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceInUseFault, Errors::ResourceContentionFault]),
        data_parser: Parsers::ResumeProcesses
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ResumeProcesses,
        stubs: @stubs,
        params_class: Params::ResumeProcessesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :resume_processes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the size of the specified Auto Scaling group.</p>
    #         <p>If a scale-in activity occurs as a result of a new <code>DesiredCapacity</code> value
    #             that is lower than the current size of the group, the Auto Scaling group uses its termination
    #             policy to determine which instances to terminate. </p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-manual-scaling.html">Manual scaling</a> in the
    #                 <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::SetDesiredCapacityInput}.
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [Integer] :desired_capacity
    #   <p>The desired capacity is the initial capacity of the Auto Scaling group after this operation
    #               completes and the capacity it attempts to maintain.</p>
    #
    # @option params [Boolean] :honor_cooldown
    #   <p>Indicates whether Amazon EC2 Auto Scaling waits for the cooldown period to complete before initiating
    #               a scaling activity to set your Auto Scaling group to its new capacity. By default, Amazon EC2 Auto Scaling does
    #               not honor the cooldown period during manual scaling activities.</p>
    #
    # @return [Types::SetDesiredCapacityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_desired_capacity(
    #     auto_scaling_group_name: 'AutoScalingGroupName', # required
    #     desired_capacity: 1, # required
    #     honor_cooldown: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetDesiredCapacityOutput
    #
    def set_desired_capacity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetDesiredCapacityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetDesiredCapacityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetDesiredCapacity
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ScalingActivityInProgressFault, Errors::ResourceContentionFault]),
        data_parser: Parsers::SetDesiredCapacity
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetDesiredCapacity,
        stubs: @stubs,
        params_class: Params::SetDesiredCapacityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_desired_capacity
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the health status of the specified instance.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html">Health checks for Auto Scaling
    #                 instances</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::SetInstanceHealthInput}.
    #
    # @option params [String] :instance_id
    #   <p>The ID of the instance.</p>
    #
    # @option params [String] :health_status
    #   <p>The health status of the instance. Set to <code>Healthy</code> to have the instance
    #               remain in service. Set to <code>Unhealthy</code> to have the instance be out of service.
    #               Amazon EC2 Auto Scaling terminates and replaces the unhealthy instance.</p>
    #
    # @option params [Boolean] :should_respect_grace_period
    #   <p>If the Auto Scaling group of the specified instance has a <code>HealthCheckGracePeriod</code>
    #               specified for the group, by default, this call respects the grace period. Set this to
    #                   <code>False</code>, to have the call not respect the grace period associated with
    #               the group.</p>
    #
    #           <p>For more information about the health check grace
    #               period, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_CreateAutoScalingGroup.html">CreateAutoScalingGroup</a> in the <i>Amazon EC2 Auto Scaling API
    #               Reference</i>.</p>
    #
    # @return [Types::SetInstanceHealthOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_instance_health(
    #     instance_id: 'InstanceId', # required
    #     health_status: 'HealthStatus', # required
    #     should_respect_grace_period: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetInstanceHealthOutput
    #
    def set_instance_health(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetInstanceHealthInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetInstanceHealthInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetInstanceHealth
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceContentionFault]),
        data_parser: Parsers::SetInstanceHealth
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetInstanceHealth,
        stubs: @stubs,
        params_class: Params::SetInstanceHealthOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_instance_health
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the instance protection settings of the specified instances. This operation
    #             cannot be called on instances in a warm pool.</p>
    #         <p>For more information about preventing instances that are part of an Auto Scaling group from
    #             terminating on scale in, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-protection.html">Using
    #                 instance scale-in protection</a> in the
    #             <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #         <p>If you exceed your maximum limit of instance IDs, which is 50 per Auto Scaling group, the call
    #             fails.</p>
    #
    # @param [Hash] params
    #   See {Types::SetInstanceProtectionInput}.
    #
    # @option params [Array<String>] :instance_ids
    #   <p>One or more instance IDs. You can specify up to 50 instances.</p>
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [Boolean] :protected_from_scale_in
    #   <p>Indicates whether the instance is protected from termination by Amazon EC2 Auto Scaling when scaling
    #               in.</p>
    #
    # @return [Types::SetInstanceProtectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_instance_protection(
    #     instance_ids: [
    #       'member'
    #     ], # required
    #     auto_scaling_group_name: 'AutoScalingGroupName', # required
    #     protected_from_scale_in: false # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetInstanceProtectionOutput
    #
    def set_instance_protection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetInstanceProtectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetInstanceProtectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetInstanceProtection
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededFault, Errors::ResourceContentionFault]),
        data_parser: Parsers::SetInstanceProtection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetInstanceProtection,
        stubs: @stubs,
        params_class: Params::SetInstanceProtectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_instance_protection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts a new instance refresh operation. An instance refresh performs a rolling
    #             replacement of all or some instances in an Auto Scaling group. Each instance is terminated first
    #             and then replaced, which temporarily reduces the capacity available within your Auto Scaling
    #             group.</p>
    #         <p>This operation is part of the <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html">instance refresh
    #                 feature</a> in Amazon EC2 Auto Scaling, which helps you update instances in your Auto Scaling group.
    #             This feature is helpful, for example, when you have a new AMI or a new user data script.
    #             You just need to create a new launch template that specifies the new AMI or user data
    #             script. Then start an instance refresh to immediately begin the process of updating
    #             instances in the group. </p>
    #         <p>If the call succeeds, it creates a new instance refresh request with a unique ID that
    #             you can use to track its progress. To query its status, call the <a>DescribeInstanceRefreshes</a> API. To describe the instance refreshes that
    #             have already run, call the <a>DescribeInstanceRefreshes</a> API. To cancel an
    #             instance refresh operation in progress, use the <a>CancelInstanceRefresh</a>
    #             API. </p>
    #
    # @param [Hash] params
    #   See {Types::StartInstanceRefreshInput}.
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [String] :strategy
    #   <p>The strategy to use for the instance refresh. The only valid value is
    #                   <code>Rolling</code>.</p>
    #           <p>A rolling update helps you update your instances gradually. A rolling update can fail
    #               due to failed health checks or if instances are on standby or are protected from scale
    #               in. If the rolling update process fails, any instances that are replaced are not rolled
    #               back to their previous configuration. </p>
    #
    # @option params [DesiredConfiguration] :desired_configuration
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
    # @option params [RefreshPreferences] :preferences
    #   <p>Set of preferences associated with the instance refresh request. If not provided, the
    #               default values are used.</p>
    #
    # @return [Types::StartInstanceRefreshOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_instance_refresh(
    #     auto_scaling_group_name: 'AutoScalingGroupName', # required
    #     strategy: 'Rolling', # accepts ["Rolling"]
    #     desired_configuration: {
    #       launch_template: {
    #         launch_template_id: 'LaunchTemplateId',
    #         launch_template_name: 'LaunchTemplateName',
    #         version: 'Version'
    #       },
    #       mixed_instances_policy: {
    #         launch_template: {
    #           overrides: [
    #             {
    #               instance_type: 'InstanceType',
    #               weighted_capacity: 'WeightedCapacity',
    #               instance_requirements: {
    #                 v_cpu_count: {
    #                   min: 1, # required
    #                   max: 1
    #                 }, # required
    #                 memory_mi_b: {
    #                   min: 1, # required
    #                   max: 1
    #                 }, # required
    #                 cpu_manufacturers: [
    #                   'intel' # accepts ["intel", "amd", "amazon-web-services"]
    #                 ],
    #                 memory_gi_b_per_v_cpu: {
    #                   min: 1.0,
    #                   max: 1.0
    #                 },
    #                 excluded_instance_types: [
    #                   'member'
    #                 ],
    #                 instance_generations: [
    #                   'current' # accepts ["current", "previous"]
    #                 ],
    #                 spot_max_price_percentage_over_lowest_price: 1,
    #                 on_demand_max_price_percentage_over_lowest_price: 1,
    #                 bare_metal: 'included', # accepts ["included", "excluded", "required"]
    #                 burstable_performance: 'included', # accepts ["included", "excluded", "required"]
    #                 require_hibernate_support: false,
    #                 network_interface_count: {
    #                   min: 1,
    #                   max: 1
    #                 },
    #                 local_storage: 'included', # accepts ["included", "excluded", "required"]
    #                 local_storage_types: [
    #                   'hdd' # accepts ["hdd", "ssd"]
    #                 ],
    #                 total_local_storage_gb: {
    #                   min: 1.0,
    #                   max: 1.0
    #                 },
    #                 baseline_ebs_bandwidth_mbps: {
    #                   min: 1,
    #                   max: 1
    #                 },
    #                 accelerator_types: [
    #                   'gpu' # accepts ["gpu", "fpga", "inference"]
    #                 ],
    #                 accelerator_count: {
    #                   min: 1,
    #                   max: 1
    #                 },
    #                 accelerator_manufacturers: [
    #                   'nvidia' # accepts ["nvidia", "amd", "amazon-web-services", "xilinx"]
    #                 ],
    #                 accelerator_names: [
    #                   'a100' # accepts ["a100", "v100", "k80", "t4", "m60", "radeon-pro-v520", "vu9p"]
    #                 ],
    #                 accelerator_total_memory_mi_b: {
    #                   min: 1,
    #                   max: 1
    #                 }
    #               }
    #             }
    #           ]
    #         },
    #         instances_distribution: {
    #           on_demand_allocation_strategy: 'OnDemandAllocationStrategy',
    #           on_demand_base_capacity: 1,
    #           on_demand_percentage_above_base_capacity: 1,
    #           spot_allocation_strategy: 'SpotAllocationStrategy',
    #           spot_instance_pools: 1,
    #           spot_max_price: 'SpotMaxPrice'
    #         }
    #       }
    #     },
    #     preferences: {
    #       min_healthy_percentage: 1,
    #       instance_warmup: 1,
    #       checkpoint_percentages: [
    #         1
    #       ],
    #       checkpoint_delay: 1,
    #       skip_matching: false
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartInstanceRefreshOutput
    #   resp.data.instance_refresh_id #=> String
    #
    def start_instance_refresh(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartInstanceRefreshInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartInstanceRefreshInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartInstanceRefresh
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededFault, Errors::ResourceContentionFault, Errors::InstanceRefreshInProgressFault]),
        data_parser: Parsers::StartInstanceRefresh
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartInstanceRefresh,
        stubs: @stubs,
        params_class: Params::StartInstanceRefreshOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_instance_refresh
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Suspends the specified auto scaling processes, or all processes, for the specified
    #             Auto Scaling group.</p>
    #         <p>If you suspend either the <code>Launch</code> or <code>Terminate</code> process types,
    #             it can prevent other process types from functioning properly. For more information, see
    #                 <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html">Suspending and
    #                 resuming scaling processes</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #         <p>To resume processes that have been suspended, call the <a>ResumeProcesses</a> API.</p>
    #
    # @param [Hash] params
    #   See {Types::SuspendProcessesInput}.
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [Array<String>] :scaling_processes
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
    # @return [Types::SuspendProcessesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.suspend_processes(
    #     auto_scaling_group_name: 'AutoScalingGroupName', # required
    #     scaling_processes: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SuspendProcessesOutput
    #
    def suspend_processes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SuspendProcessesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SuspendProcessesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SuspendProcesses
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceInUseFault, Errors::ResourceContentionFault]),
        data_parser: Parsers::SuspendProcesses
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SuspendProcesses,
        stubs: @stubs,
        params_class: Params::SuspendProcessesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :suspend_processes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Terminates the specified instance and optionally adjusts the desired group size. This
    #             operation cannot be called on instances in a warm pool.</p>
    #         <p>This call simply makes a termination request. The instance is not terminated
    #             immediately. When an instance is terminated, the instance status changes to
    #                 <code>terminated</code>. You can't connect to or start an instance after you've
    #             terminated it.</p>
    #         <p>If you do not specify the option to decrement the desired capacity, Amazon EC2 Auto Scaling launches
    #             instances to replace the ones that are terminated. </p>
    #         <p>By default, Amazon EC2 Auto Scaling balances instances across all Availability Zones. If you
    #             decrement the desired capacity, your Auto Scaling group can become unbalanced between
    #             Availability Zones. Amazon EC2 Auto Scaling tries to rebalance the group, and rebalancing might
    #             terminate instances in other zones. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/auto-scaling-benefits.html#AutoScalingBehavior.InstanceUsage">Rebalancing activities</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::TerminateInstanceInAutoScalingGroupInput}.
    #
    # @option params [String] :instance_id
    #   <p>The ID of the instance.</p>
    #
    # @option params [Boolean] :should_decrement_desired_capacity
    #   <p>Indicates whether terminating the instance also decrements the size of the Auto Scaling
    #               group.</p>
    #
    # @return [Types::TerminateInstanceInAutoScalingGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.terminate_instance_in_auto_scaling_group(
    #     instance_id: 'InstanceId', # required
    #     should_decrement_desired_capacity: false # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TerminateInstanceInAutoScalingGroupOutput
    #   resp.data.activity #=> Types::Activity
    #   resp.data.activity.activity_id #=> String
    #   resp.data.activity.auto_scaling_group_name #=> String
    #   resp.data.activity.description #=> String
    #   resp.data.activity.cause #=> String
    #   resp.data.activity.start_time #=> Time
    #   resp.data.activity.end_time #=> Time
    #   resp.data.activity.status_code #=> String, one of ["PendingSpotBidPlacement", "WaitingForSpotInstanceRequestId", "WaitingForSpotInstanceId", "WaitingForInstanceId", "PreInService", "InProgress", "WaitingForELBConnectionDraining", "MidLifecycleAction", "WaitingForInstanceWarmup", "Successful", "Failed", "Cancelled"]
    #   resp.data.activity.status_message #=> String
    #   resp.data.activity.progress #=> Integer
    #   resp.data.activity.details #=> String
    #   resp.data.activity.auto_scaling_group_state #=> String
    #   resp.data.activity.auto_scaling_group_arn #=> String
    #
    def terminate_instance_in_auto_scaling_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TerminateInstanceInAutoScalingGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TerminateInstanceInAutoScalingGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TerminateInstanceInAutoScalingGroup
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ScalingActivityInProgressFault, Errors::ResourceContentionFault]),
        data_parser: Parsers::TerminateInstanceInAutoScalingGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TerminateInstanceInAutoScalingGroup,
        stubs: @stubs,
        params_class: Params::TerminateInstanceInAutoScalingGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :terminate_instance_in_auto_scaling_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             <b>We strongly recommend that all Auto Scaling groups use launch templates to ensure full functionality for Amazon EC2 Auto Scaling and Amazon EC2.</b>
    #          </p>
    #         <p>Updates the configuration for the specified Auto Scaling group.</p>
    #         <p>To update an Auto Scaling group, specify the name of the group and the parameter that you want
    #             to change. Any parameters that you don't specify are not changed by this update request.
    #             The new settings take effect on any scaling activities after this call returns.
    #             </p>
    #         <p>If you associate a new launch configuration or template with an Auto Scaling group, all new
    #             instances will get the updated configuration. Existing instances continue to run with
    #             the configuration that they were originally launched with. When you update a group to
    #             specify a mixed instances policy instead of a launch configuration or template, existing
    #             instances may be replaced to match the new purchasing options that you specified in the
    #             policy. For example, if the group currently has 100% On-Demand capacity and the policy
    #             specifies 50% Spot capacity, this means that half of your instances will be gradually
    #             terminated and relaunched as Spot Instances. When replacing instances, Amazon EC2 Auto Scaling launches
    #             new instances before terminating the old ones, so that updating your group does not
    #             compromise the performance or availability of your application.</p>
    #         <p>Note the following about changing <code>DesiredCapacity</code>, <code>MaxSize</code>,
    #             or <code>MinSize</code>:</p>
    #         <ul>
    #             <li>
    #                 <p>If a scale-in activity occurs as a result of a new
    #                         <code>DesiredCapacity</code> value that is lower than the current size of
    #                     the group, the Auto Scaling group uses its termination policy to determine which
    #                     instances to terminate.</p>
    #             </li>
    #             <li>
    #                 <p>If you specify a new value for <code>MinSize</code> without specifying a value
    #                     for <code>DesiredCapacity</code>, and the new <code>MinSize</code> is larger
    #                     than the current size of the group, this sets the group's
    #                         <code>DesiredCapacity</code> to the new <code>MinSize</code> value.</p>
    #             </li>
    #             <li>
    #                 <p>If you specify a new value for <code>MaxSize</code> without specifying a value
    #                     for <code>DesiredCapacity</code>, and the new <code>MaxSize</code> is smaller
    #                     than the current size of the group, this sets the group's
    #                         <code>DesiredCapacity</code> to the new <code>MaxSize</code> value.</p>
    #             </li>
    #          </ul>
    #         <p>To see which parameters have been set, call the <a>DescribeAutoScalingGroups</a> API. To view the scaling policies for an Auto Scaling
    #             group, call the <a>DescribePolicies</a> API. If the group has scaling
    #             policies, you can update them by calling the <a>PutScalingPolicy</a>
    #             API.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAutoScalingGroupInput}.
    #
    # @option params [String] :auto_scaling_group_name
    #   <p>The name of the Auto Scaling group.</p>
    #
    # @option params [String] :launch_configuration_name
    #   <p>The name of the launch configuration. If you specify
    #                   <code>LaunchConfigurationName</code> in your update request, you can't specify
    #                   <code>LaunchTemplate</code> or <code>MixedInstancesPolicy</code>.</p>
    #
    # @option params [LaunchTemplateSpecification] :launch_template
    #   <p>The launch template and version to use to specify the updates. If you specify
    #                   <code>LaunchTemplate</code> in your update request, you can't specify
    #                   <code>LaunchConfigurationName</code> or <code>MixedInstancesPolicy</code>.</p>
    #
    # @option params [MixedInstancesPolicy] :mixed_instances_policy
    #   <p>An embedded object that specifies a mixed instances policy. For more information, see
    #                   <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups.html">Auto Scaling
    #                   groups with multiple instance types and purchase options</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @option params [Integer] :min_size
    #   <p>The minimum size of the Auto Scaling group.</p>
    #
    # @option params [Integer] :max_size
    #   <p>The maximum size of the Auto Scaling group.</p>
    #           <note>
    #               <p>With a mixed instances policy that uses instance weighting, Amazon EC2 Auto Scaling may need to
    #                   go above <code>MaxSize</code> to meet your capacity requirements. In this event,
    #                   Amazon EC2 Auto Scaling will never go above <code>MaxSize</code> by more than your largest instance
    #                   weight (weights that define how many units each instance contributes to the desired
    #                   capacity of the group).</p>
    #           </note>
    #
    # @option params [Integer] :desired_capacity
    #   <p>The desired capacity is the initial capacity of the Auto Scaling group after this operation
    #               completes and the capacity it attempts to maintain. This number must be greater than or
    #               equal to the minimum size of the group and less than or equal to the maximum size of the
    #               group.</p>
    #
    # @option params [Integer] :default_cooldown
    #   <p>
    #               <i>Only needed if you use simple scaling policies.</i>
    #            </p>
    #           <p>The amount of time, in seconds, between one scaling activity ending and another one
    #               starting due to simple scaling policies. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html">Scaling cooldowns
    #                   for Amazon EC2 Auto Scaling</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @option params [Array<String>] :availability_zones
    #   <p>One or more Availability Zones for the group.</p>
    #
    # @option params [String] :health_check_type
    #   <p>The service to use for the health checks. The valid values are <code>EC2</code> and
    #                   <code>ELB</code>. If you configure an Auto Scaling group to use <code>ELB</code> health
    #               checks, it considers the instance unhealthy if it fails either the EC2 status checks or
    #               the load balancer health checks.</p>
    #
    # @option params [Integer] :health_check_grace_period
    #   <p>The amount of time, in seconds, that Amazon EC2 Auto Scaling waits before checking the health status
    #               of an EC2 instance that has come into service and marking it unhealthy due to a failed
    #               Elastic Load Balancing or custom health check. This is useful if your instances do not immediately pass
    #               these health checks after they enter the <code>InService</code> state. For more
    #               information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html#health-check-grace-period">Health
    #                   check grace period</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @option params [String] :placement_group
    #   <p>The name of an existing placement group into which to launch your instances. For more
    #               information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html">Placement groups</a> in the
    #                   <i>Amazon EC2 User Guide for Linux Instances</i>.</p>
    #           <note>
    #               <p>A <i>cluster</i> placement group is a logical grouping of instances
    #                   within a single Availability Zone. You cannot specify multiple Availability Zones
    #                   and a cluster placement group. </p>
    #           </note>
    #
    # @option params [String] :vpc_zone_identifier
    #   <p>A comma-separated list of subnet IDs for a virtual private cloud (VPC). If you specify
    #                   <code>VPCZoneIdentifier</code> with <code>AvailabilityZones</code>, the subnets that
    #               you specify for this parameter must reside in those Availability Zones.</p>
    #
    # @option params [Array<String>] :termination_policies
    #   <p>A policy or a list of policies that are used to select the instances to terminate. The
    #               policies are executed in the order that you list them. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html">Controlling which Auto Scaling instances terminate during scale in</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @option params [Boolean] :new_instances_protected_from_scale_in
    #   <p>Indicates whether newly launched instances are protected from termination by Amazon EC2 Auto Scaling
    #               when scaling in. For more information about preventing instances from terminating on
    #               scale in, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-protection.html">Using
    #                   instance scale-in protection</a> in the
    #               <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @option params [String] :service_linked_role_arn
    #   <p>The Amazon Resource Name (ARN) of the service-linked role that the Auto Scaling group uses to
    #               call other Amazon Web Services on your behalf. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-service-linked-role.html">Service-linked
    #                   roles</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @option params [Integer] :max_instance_lifetime
    #   <p>The maximum amount of time, in seconds, that an instance can be in service. The
    #               default is null. If specified, the value must be either 0 or a number equal to or
    #               greater than 86,400 seconds (1 day). To clear a previously set value, specify a new
    #               value of 0. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-max-instance-lifetime.html">Replacing Auto Scaling
    #                   instances based on maximum instance lifetime</a> in the
    #                   <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @option params [Boolean] :capacity_rebalance
    #   <p>Enables or disables Capacity Rebalancing. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-capacity-rebalancing.html">Amazon EC2 Auto Scaling
    #                   Capacity Rebalancing</a> in the <i>Amazon EC2 Auto Scaling User Guide</i>.</p>
    #
    # @option params [String] :context
    #   <p>Reserved.</p>
    #
    # @option params [String] :desired_capacity_type
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
    # @option params [Integer] :default_instance_warmup
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
    # @return [Types::UpdateAutoScalingGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_auto_scaling_group(
    #     auto_scaling_group_name: 'AutoScalingGroupName', # required
    #     launch_configuration_name: 'LaunchConfigurationName',
    #     launch_template: {
    #       launch_template_id: 'LaunchTemplateId',
    #       launch_template_name: 'LaunchTemplateName',
    #       version: 'Version'
    #     },
    #     mixed_instances_policy: {
    #       launch_template: {
    #         overrides: [
    #           {
    #             instance_type: 'InstanceType',
    #             weighted_capacity: 'WeightedCapacity',
    #             instance_requirements: {
    #               v_cpu_count: {
    #                 min: 1, # required
    #                 max: 1
    #               }, # required
    #               memory_mi_b: {
    #                 min: 1, # required
    #                 max: 1
    #               }, # required
    #               cpu_manufacturers: [
    #                 'intel' # accepts ["intel", "amd", "amazon-web-services"]
    #               ],
    #               memory_gi_b_per_v_cpu: {
    #                 min: 1.0,
    #                 max: 1.0
    #               },
    #               excluded_instance_types: [
    #                 'member'
    #               ],
    #               instance_generations: [
    #                 'current' # accepts ["current", "previous"]
    #               ],
    #               spot_max_price_percentage_over_lowest_price: 1,
    #               on_demand_max_price_percentage_over_lowest_price: 1,
    #               bare_metal: 'included', # accepts ["included", "excluded", "required"]
    #               burstable_performance: 'included', # accepts ["included", "excluded", "required"]
    #               require_hibernate_support: false,
    #               network_interface_count: {
    #                 min: 1,
    #                 max: 1
    #               },
    #               local_storage: 'included', # accepts ["included", "excluded", "required"]
    #               local_storage_types: [
    #                 'hdd' # accepts ["hdd", "ssd"]
    #               ],
    #               total_local_storage_gb: {
    #                 min: 1.0,
    #                 max: 1.0
    #               },
    #               baseline_ebs_bandwidth_mbps: {
    #                 min: 1,
    #                 max: 1
    #               },
    #               accelerator_types: [
    #                 'gpu' # accepts ["gpu", "fpga", "inference"]
    #               ],
    #               accelerator_count: {
    #                 min: 1,
    #                 max: 1
    #               },
    #               accelerator_manufacturers: [
    #                 'nvidia' # accepts ["nvidia", "amd", "amazon-web-services", "xilinx"]
    #               ],
    #               accelerator_names: [
    #                 'a100' # accepts ["a100", "v100", "k80", "t4", "m60", "radeon-pro-v520", "vu9p"]
    #               ],
    #               accelerator_total_memory_mi_b: {
    #                 min: 1,
    #                 max: 1
    #               }
    #             }
    #           }
    #         ]
    #       },
    #       instances_distribution: {
    #         on_demand_allocation_strategy: 'OnDemandAllocationStrategy',
    #         on_demand_base_capacity: 1,
    #         on_demand_percentage_above_base_capacity: 1,
    #         spot_allocation_strategy: 'SpotAllocationStrategy',
    #         spot_instance_pools: 1,
    #         spot_max_price: 'SpotMaxPrice'
    #       }
    #     },
    #     min_size: 1,
    #     max_size: 1,
    #     desired_capacity: 1,
    #     default_cooldown: 1,
    #     availability_zones: [
    #       'member'
    #     ],
    #     health_check_type: 'HealthCheckType',
    #     health_check_grace_period: 1,
    #     placement_group: 'PlacementGroup',
    #     vpc_zone_identifier: 'VPCZoneIdentifier',
    #     termination_policies: [
    #       'member'
    #     ],
    #     new_instances_protected_from_scale_in: false,
    #     service_linked_role_arn: 'ServiceLinkedRoleARN',
    #     max_instance_lifetime: 1,
    #     capacity_rebalance: false,
    #     context: 'Context',
    #     desired_capacity_type: 'DesiredCapacityType',
    #     default_instance_warmup: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAutoScalingGroupOutput
    #
    def update_auto_scaling_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAutoScalingGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAutoScalingGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAutoScalingGroup
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ScalingActivityInProgressFault, Errors::ServiceLinkedRoleFailure, Errors::ResourceContentionFault]),
        data_parser: Parsers::UpdateAutoScalingGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAutoScalingGroup,
        stubs: @stubs,
        params_class: Params::UpdateAutoScalingGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_auto_scaling_group
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
