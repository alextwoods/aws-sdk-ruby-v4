# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::SnowDeviceManagement
  # An API client for SnowDeviceManagement
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon Web Services Snow Device Management documentation.</p>
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
    def initialize(config = AWS::SDK::SnowDeviceManagement::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Sends a cancel request for a specified task. You can cancel a task only if it's still in a
    #         <code>QUEUED</code> state. Tasks that are already running can't be cancelled.</p>
    #          <note>
    #             <p>A task might still run if it's processed from the queue before the
    #           <code>CancelTask</code> operation changes the task's state.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CancelTaskInput}.
    #
    # @option params [String] :task_id
    #   <p>The ID of the task that you are attempting to cancel. You can retrieve a task ID by using
    #         the <code>ListTasks</code> operation.</p>
    #
    # @return [Types::CancelTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_task(
    #     task_id: 'taskId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelTaskOutput
    #   resp.data.task_id #=> String
    #
    def cancel_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelTaskInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelTask
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException]),
        data_parser: Parsers::CancelTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelTask,
        stubs: @stubs,
        params_class: Params::CancelTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Instructs one or more devices to start a task, such as unlocking or rebooting.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateTaskInput}.
    #
    # @option params [Array<String>] :targets
    #   <p>A list of managed device IDs.</p>
    #
    # @option params [Command] :command
    #   <p>The task to be performed. Only one task is executed on a device at a time.</p>
    #
    # @option params [String] :description
    #   <p>A description of the task and its targets.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Optional metadata that you assign to a resource. You can use tags to categorize a resource
    #         in different ways, such as by purpose, owner, or environment. </p>
    #
    # @option params [String] :client_token
    #   <p>A token ensuring that the action is called only once with the specified details.</p>
    #
    # @return [Types::CreateTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_task(
    #     targets: [
    #       'member'
    #     ], # required
    #     command: {
    #       # One of:
    #       unlock: { },
    #       reboot: { }
    #     }, # required
    #     description: 'description',
    #     tags: {
    #       'key' => 'value'
    #     },
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateTaskOutput
    #   resp.data.task_id #=> String
    #   resp.data.task_arn #=> String
    #
    def create_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTaskInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTask
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException, Errors::AccessDeniedException, Errors::ValidationException]),
        data_parser: Parsers::CreateTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateTask,
        stubs: @stubs,
        params_class: Params::CreateTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Checks device-specific information, such as the device type, software version, IP
    #       addresses, and lock status.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDeviceInput}.
    #
    # @option params [String] :managed_device_id
    #   <p>The ID of the device that you are checking the information of.</p>
    #
    # @return [Types::DescribeDeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_device(
    #     managed_device_id: 'managedDeviceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDeviceOutput
    #   resp.data.last_reached_out_at #=> Time
    #   resp.data.last_updated_at #=> Time
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.managed_device_id #=> String
    #   resp.data.managed_device_arn #=> String
    #   resp.data.device_type #=> String
    #   resp.data.associated_with_job #=> String
    #   resp.data.device_state #=> String, one of ["UNLOCKED", "LOCKED", "UNLOCKING"]
    #   resp.data.physical_network_interfaces #=> Array<PhysicalNetworkInterface>
    #   resp.data.physical_network_interfaces[0] #=> Types::PhysicalNetworkInterface
    #   resp.data.physical_network_interfaces[0].physical_network_interface_id #=> String
    #   resp.data.physical_network_interfaces[0].physical_connector_type #=> String, one of ["RJ45", "SFP_PLUS", "QSFP", "RJ45_2", "WIFI"]
    #   resp.data.physical_network_interfaces[0].ip_address_assignment #=> String, one of ["DHCP", "STATIC"]
    #   resp.data.physical_network_interfaces[0].ip_address #=> String
    #   resp.data.physical_network_interfaces[0].netmask #=> String
    #   resp.data.physical_network_interfaces[0].default_gateway #=> String
    #   resp.data.physical_network_interfaces[0].mac_address #=> String
    #   resp.data.device_capacities #=> Array<Capacity>
    #   resp.data.device_capacities[0] #=> Types::Capacity
    #   resp.data.device_capacities[0].name #=> String
    #   resp.data.device_capacities[0].unit #=> String
    #   resp.data.device_capacities[0].total #=> Integer
    #   resp.data.device_capacities[0].used #=> Integer
    #   resp.data.device_capacities[0].available #=> Integer
    #   resp.data.software #=> Types::SoftwareInformation
    #   resp.data.software.installed_version #=> String
    #   resp.data.software.installing_version #=> String
    #   resp.data.software.install_state #=> String
    #
    def describe_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDeviceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDevice
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException]),
        data_parser: Parsers::DescribeDevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDevice,
        stubs: @stubs,
        params_class: Params::DescribeDeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Checks the current state of the Amazon EC2 instances. The output is similar to
    #         <code>describeDevice</code>, but the results are sourced from the device cache in the
    #       Amazon Web Services Cloud and include a subset of the available fields. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDeviceEc2InstancesInput}.
    #
    # @option params [String] :managed_device_id
    #   <p>The ID of the managed device.</p>
    #
    # @option params [Array<String>] :instance_ids
    #   <p>A list of instance IDs associated with the managed device.</p>
    #
    # @return [Types::DescribeDeviceEc2InstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_device_ec2_instances(
    #     managed_device_id: 'managedDeviceId', # required
    #     instance_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDeviceEc2InstancesOutput
    #   resp.data.instances #=> Array<InstanceSummary>
    #   resp.data.instances[0] #=> Types::InstanceSummary
    #   resp.data.instances[0].instance #=> Types::Instance
    #   resp.data.instances[0].instance.image_id #=> String
    #   resp.data.instances[0].instance.ami_launch_index #=> Integer
    #   resp.data.instances[0].instance.instance_id #=> String
    #   resp.data.instances[0].instance.state #=> Types::InstanceState
    #   resp.data.instances[0].instance.state.code #=> Integer
    #   resp.data.instances[0].instance.state.name #=> String, one of ["PENDING", "RUNNING", "SHUTTING_DOWN", "TERMINATED", "STOPPING", "STOPPED"]
    #   resp.data.instances[0].instance.instance_type #=> String
    #   resp.data.instances[0].instance.private_ip_address #=> String
    #   resp.data.instances[0].instance.public_ip_address #=> String
    #   resp.data.instances[0].instance.created_at #=> Time
    #   resp.data.instances[0].instance.updated_at #=> Time
    #   resp.data.instances[0].instance.block_device_mappings #=> Array<InstanceBlockDeviceMapping>
    #   resp.data.instances[0].instance.block_device_mappings[0] #=> Types::InstanceBlockDeviceMapping
    #   resp.data.instances[0].instance.block_device_mappings[0].device_name #=> String
    #   resp.data.instances[0].instance.block_device_mappings[0].ebs #=> Types::EbsInstanceBlockDevice
    #   resp.data.instances[0].instance.block_device_mappings[0].ebs.attach_time #=> Time
    #   resp.data.instances[0].instance.block_device_mappings[0].ebs.delete_on_termination #=> Boolean
    #   resp.data.instances[0].instance.block_device_mappings[0].ebs.status #=> String, one of ["ATTACHING", "ATTACHED", "DETACHING", "DETACHED"]
    #   resp.data.instances[0].instance.block_device_mappings[0].ebs.volume_id #=> String
    #   resp.data.instances[0].instance.security_groups #=> Array<SecurityGroupIdentifier>
    #   resp.data.instances[0].instance.security_groups[0] #=> Types::SecurityGroupIdentifier
    #   resp.data.instances[0].instance.security_groups[0].group_id #=> String
    #   resp.data.instances[0].instance.security_groups[0].group_name #=> String
    #   resp.data.instances[0].instance.cpu_options #=> Types::CpuOptions
    #   resp.data.instances[0].instance.cpu_options.core_count #=> Integer
    #   resp.data.instances[0].instance.cpu_options.threads_per_core #=> Integer
    #   resp.data.instances[0].instance.root_device_name #=> String
    #   resp.data.instances[0].last_updated_at #=> Time
    #
    def describe_device_ec2_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDeviceEc2InstancesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDeviceEc2InstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDeviceEc2Instances
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException]),
        data_parser: Parsers::DescribeDeviceEc2Instances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDeviceEc2Instances,
        stubs: @stubs,
        params_class: Params::DescribeDeviceEc2InstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_device_ec2_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Checks the status of a remote task running on one or more target devices.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeExecutionInput}.
    #
    # @option params [String] :task_id
    #   <p>The ID of the task that the action is describing.</p>
    #
    # @option params [String] :managed_device_id
    #   <p>The ID of the managed device.</p>
    #
    # @return [Types::DescribeExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_execution(
    #     task_id: 'taskId', # required
    #     managed_device_id: 'managedDeviceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeExecutionOutput
    #   resp.data.task_id #=> String
    #   resp.data.execution_id #=> String
    #   resp.data.managed_device_id #=> String
    #   resp.data.state #=> String, one of ["QUEUED", "IN_PROGRESS", "CANCELED", "FAILED", "SUCCEEDED", "REJECTED", "TIMED_OUT"]
    #   resp.data.started_at #=> Time
    #   resp.data.last_updated_at #=> Time
    #
    def describe_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeExecutionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeExecution
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException]),
        data_parser: Parsers::DescribeExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeExecution,
        stubs: @stubs,
        params_class: Params::DescribeExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Checks the metadata for a given task on a device. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTaskInput}.
    #
    # @option params [String] :task_id
    #   <p>The ID of the task to be described.</p>
    #
    # @return [Types::DescribeTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_task(
    #     task_id: 'taskId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTaskOutput
    #   resp.data.task_id #=> String
    #   resp.data.task_arn #=> String
    #   resp.data.targets #=> Array<String>
    #   resp.data.targets[0] #=> String
    #   resp.data.state #=> String, one of ["IN_PROGRESS", "CANCELED", "COMPLETED"]
    #   resp.data.created_at #=> Time
    #   resp.data.last_updated_at #=> Time
    #   resp.data.completed_at #=> Time
    #   resp.data.description #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def describe_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTaskInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTask
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException]),
        data_parser: Parsers::DescribeTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTask,
        stubs: @stubs,
        params_class: Params::DescribeTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the Amazon Web Services resources available for a device. Currently, Amazon EC2 instances are the only supported resource type.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDeviceResourcesInput}.
    #
    # @option params [String] :managed_device_id
    #   <p>The ID of the managed device that you are listing the resources of.</p>
    #
    # @option params [String] :type
    #   <p>A structure used to filter the results by type of resource.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of resources per page.</p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token to continue to the next page of results.</p>
    #
    # @return [Types::ListDeviceResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_device_resources(
    #     managed_device_id: 'managedDeviceId', # required
    #     type: 'type',
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDeviceResourcesOutput
    #   resp.data.resources #=> Array<ResourceSummary>
    #   resp.data.resources[0] #=> Types::ResourceSummary
    #   resp.data.resources[0].resource_type #=> String
    #   resp.data.resources[0].arn #=> String
    #   resp.data.resources[0].id #=> String
    #   resp.data.next_token #=> String
    #
    def list_device_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDeviceResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDeviceResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDeviceResources
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException]),
        data_parser: Parsers::ListDeviceResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDeviceResources,
        stubs: @stubs,
        params_class: Params::ListDeviceResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_device_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of all devices on your Amazon Web Services account that have Amazon Web Services Snow Device Management
    #       enabled in the Amazon Web Services Region where the command is run.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDevicesInput}.
    #
    # @option params [String] :job_id
    #   <p>The ID of the job used to order the device.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of devices to list per page.</p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token to continue to the next page of results.</p>
    #
    # @return [Types::ListDevicesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_devices(
    #     job_id: 'jobId',
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDevicesOutput
    #   resp.data.devices #=> Array<DeviceSummary>
    #   resp.data.devices[0] #=> Types::DeviceSummary
    #   resp.data.devices[0].managed_device_id #=> String
    #   resp.data.devices[0].managed_device_arn #=> String
    #   resp.data.devices[0].associated_with_job #=> String
    #   resp.data.devices[0].tags #=> Hash<String, String>
    #   resp.data.devices[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_devices(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDevicesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDevicesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDevices
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException]),
        data_parser: Parsers::ListDevices
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDevices,
        stubs: @stubs,
        params_class: Params::ListDevicesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_devices
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the status of tasks for one or more target devices.</p>
    #
    # @param [Hash] params
    #   See {Types::ListExecutionsInput}.
    #
    # @option params [String] :task_id
    #   <p>The ID of the task.</p>
    #
    # @option params [String] :state
    #   <p>A structure used to filter the tasks by their current state.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of tasks to list per page.</p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token to continue to the next page of tasks.</p>
    #
    # @return [Types::ListExecutionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_executions(
    #     task_id: 'taskId', # required
    #     state: 'QUEUED', # accepts ["QUEUED", "IN_PROGRESS", "CANCELED", "FAILED", "SUCCEEDED", "REJECTED", "TIMED_OUT"]
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListExecutionsOutput
    #   resp.data.executions #=> Array<ExecutionSummary>
    #   resp.data.executions[0] #=> Types::ExecutionSummary
    #   resp.data.executions[0].task_id #=> String
    #   resp.data.executions[0].execution_id #=> String
    #   resp.data.executions[0].managed_device_id #=> String
    #   resp.data.executions[0].state #=> String, one of ["QUEUED", "IN_PROGRESS", "CANCELED", "FAILED", "SUCCEEDED", "REJECTED", "TIMED_OUT"]
    #   resp.data.next_token #=> String
    #
    def list_executions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListExecutionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListExecutionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListExecutions
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException]),
        data_parser: Parsers::ListExecutions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListExecutions,
        stubs: @stubs,
        params_class: Params::ListExecutionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_executions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of tags for a managed device or task.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the device or task.</p>
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
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>Returns a list of tasks that can be filtered by state.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTasksInput}.
    #
    # @option params [String] :state
    #   <p>A structure used to filter the list of tasks.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of tasks per page.</p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token to continue to the next page of tasks.</p>
    #
    # @return [Types::ListTasksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tasks(
    #     state: 'IN_PROGRESS', # accepts ["IN_PROGRESS", "CANCELED", "COMPLETED"]
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTasksOutput
    #   resp.data.tasks #=> Array<TaskSummary>
    #   resp.data.tasks[0] #=> Types::TaskSummary
    #   resp.data.tasks[0].task_id #=> String
    #   resp.data.tasks[0].task_arn #=> String
    #   resp.data.tasks[0].state #=> String, one of ["IN_PROGRESS", "CANCELED", "COMPLETED"]
    #   resp.data.tasks[0].tags #=> Hash<String, String>
    #   resp.data.tasks[0].tags['key'] #=> String
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
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ValidationException]),
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

    # <p>Adds or replaces tags on a device or task.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the device or task.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Optional metadata that you assign to a resource. You can use tags to categorize a resource
    #         in different ways, such as by purpose, owner, or environment.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>Removes a tag from a device or task.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the device or task.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>Optional metadata that you assign to a resource. You can use tags to categorize a resource
    #         in different ways, such as by purpose, owner, or environment.</p>
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
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
